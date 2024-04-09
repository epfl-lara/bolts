; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13560 () Bool)

(assert start!13560)

(declare-fun b!124522 () Bool)

(declare-fun b_free!2837 () Bool)

(declare-fun b_next!2837 () Bool)

(assert (=> b!124522 (= b_free!2837 (not b_next!2837))))

(declare-fun tp!10912 () Bool)

(declare-fun b_and!7665 () Bool)

(assert (=> b!124522 (= tp!10912 b_and!7665)))

(declare-fun b!124506 () Bool)

(declare-fun b_free!2839 () Bool)

(declare-fun b_next!2839 () Bool)

(assert (=> b!124506 (= b_free!2839 (not b_next!2839))))

(declare-fun tp!10911 () Bool)

(declare-fun b_and!7667 () Bool)

(assert (=> b!124506 (= tp!10911 b_and!7667)))

(declare-fun e!81403 () Bool)

(declare-fun e!81402 () Bool)

(declare-datatypes ((V!3427 0))(
  ( (V!3428 (val!1462 Int)) )
))
(declare-datatypes ((array!4684 0))(
  ( (array!4685 (arr!2218 (Array (_ BitVec 32) (_ BitVec 64))) (size!2481 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1074 0))(
  ( (ValueCellFull!1074 (v!3105 V!3427)) (EmptyCell!1074) )
))
(declare-datatypes ((array!4686 0))(
  ( (array!4687 (arr!2219 (Array (_ BitVec 32) ValueCell!1074)) (size!2482 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1056 0))(
  ( (LongMapFixedSize!1057 (defaultEntry!2764 Int) (mask!7010 (_ BitVec 32)) (extraKeys!2549 (_ BitVec 32)) (zeroValue!2629 V!3427) (minValue!2629 V!3427) (_size!577 (_ BitVec 32)) (_keys!4493 array!4684) (_values!2747 array!4686) (_vacant!577 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1056)

(declare-fun tp_is_empty!2835 () Bool)

(declare-fun array_inv!1357 (array!4684) Bool)

(declare-fun array_inv!1358 (array!4686) Bool)

(assert (=> b!124506 (= e!81402 (and tp!10911 tp_is_empty!2835 (array_inv!1357 (_keys!4493 newMap!16)) (array_inv!1358 (_values!2747 newMap!16)) e!81403))))

(declare-fun b!124508 () Bool)

(declare-fun res!60343 () Bool)

(declare-fun e!81397 () Bool)

(assert (=> b!124508 (=> (not res!60343) (not e!81397))))

(declare-datatypes ((Cell!848 0))(
  ( (Cell!849 (v!3106 LongMapFixedSize!1056)) )
))
(declare-datatypes ((LongMap!848 0))(
  ( (LongMap!849 (underlying!435 Cell!848)) )
))
(declare-fun thiss!992 () LongMap!848)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!124508 (= res!60343 (validMask!0 (mask!7010 (v!3106 (underlying!435 thiss!992)))))))

(declare-fun b!124509 () Bool)

(declare-fun e!81408 () Bool)

(declare-fun mapRes!4474 () Bool)

(assert (=> b!124509 (= e!81403 (and e!81408 mapRes!4474))))

(declare-fun condMapEmpty!4473 () Bool)

(declare-fun mapDefault!4473 () ValueCell!1074)

(assert (=> b!124509 (= condMapEmpty!4473 (= (arr!2219 (_values!2747 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1074)) mapDefault!4473)))))

(declare-fun mapIsEmpty!4473 () Bool)

(assert (=> mapIsEmpty!4473 mapRes!4474))

(declare-fun b!124510 () Bool)

(declare-fun e!81406 () Bool)

(assert (=> b!124510 (= e!81406 tp_is_empty!2835)))

(declare-fun b!124511 () Bool)

(assert (=> b!124511 (= e!81397 (not (= (size!2482 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!7010 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun b!124512 () Bool)

(declare-fun e!81398 () Bool)

(declare-fun e!81400 () Bool)

(assert (=> b!124512 (= e!81398 e!81400)))

(declare-fun b!124513 () Bool)

(declare-fun e!81404 () Bool)

(declare-fun e!81409 () Bool)

(declare-fun mapRes!4473 () Bool)

(assert (=> b!124513 (= e!81404 (and e!81409 mapRes!4473))))

(declare-fun condMapEmpty!4474 () Bool)

(declare-fun mapDefault!4474 () ValueCell!1074)

(assert (=> b!124513 (= condMapEmpty!4474 (= (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1074)) mapDefault!4474)))))

(declare-fun res!60342 () Bool)

(declare-fun e!81411 () Bool)

(assert (=> start!13560 (=> (not res!60342) (not e!81411))))

(declare-fun valid!498 (LongMap!848) Bool)

(assert (=> start!13560 (= res!60342 (valid!498 thiss!992))))

(assert (=> start!13560 e!81411))

(assert (=> start!13560 e!81398))

(assert (=> start!13560 true))

(assert (=> start!13560 e!81402))

(declare-fun b!124507 () Bool)

(declare-fun e!81399 () Bool)

(assert (=> b!124507 (= e!81411 e!81399)))

(declare-fun res!60341 () Bool)

(assert (=> b!124507 (=> (not res!60341) (not e!81399))))

(declare-datatypes ((tuple2!2560 0))(
  ( (tuple2!2561 (_1!1290 (_ BitVec 64)) (_2!1290 V!3427)) )
))
(declare-datatypes ((List!1716 0))(
  ( (Nil!1713) (Cons!1712 (h!2313 tuple2!2560) (t!6055 List!1716)) )
))
(declare-datatypes ((ListLongMap!1681 0))(
  ( (ListLongMap!1682 (toList!856 List!1716)) )
))
(declare-fun lt!64029 () ListLongMap!1681)

(declare-fun lt!64030 () ListLongMap!1681)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!124507 (= res!60341 (and (= lt!64029 lt!64030) (not (= (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1379 (LongMapFixedSize!1056) ListLongMap!1681)

(assert (=> b!124507 (= lt!64030 (map!1379 newMap!16))))

(declare-fun getCurrentListMap!528 (array!4684 array!4686 (_ BitVec 32) (_ BitVec 32) V!3427 V!3427 (_ BitVec 32) Int) ListLongMap!1681)

(assert (=> b!124507 (= lt!64029 (getCurrentListMap!528 (_keys!4493 (v!3106 (underlying!435 thiss!992))) (_values!2747 (v!3106 (underlying!435 thiss!992))) (mask!7010 (v!3106 (underlying!435 thiss!992))) (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) (zeroValue!2629 (v!3106 (underlying!435 thiss!992))) (minValue!2629 (v!3106 (underlying!435 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2764 (v!3106 (underlying!435 thiss!992)))))))

(declare-fun b!124514 () Bool)

(declare-fun e!81405 () Bool)

(assert (=> b!124514 (= e!81400 e!81405)))

(declare-fun b!124515 () Bool)

(assert (=> b!124515 (= e!81409 tp_is_empty!2835)))

(declare-fun b!124516 () Bool)

(declare-fun res!60344 () Bool)

(assert (=> b!124516 (=> (not res!60344) (not e!81411))))

(assert (=> b!124516 (= res!60344 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7010 newMap!16)) (_size!577 (v!3106 (underlying!435 thiss!992)))))))

(declare-fun b!124517 () Bool)

(declare-fun res!60338 () Bool)

(assert (=> b!124517 (=> (not res!60338) (not e!81411))))

(assert (=> b!124517 (= res!60338 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun mapIsEmpty!4474 () Bool)

(assert (=> mapIsEmpty!4474 mapRes!4473))

(declare-fun mapNonEmpty!4473 () Bool)

(declare-fun tp!10909 () Bool)

(assert (=> mapNonEmpty!4473 (= mapRes!4473 (and tp!10909 e!81406))))

(declare-fun mapKey!4474 () (_ BitVec 32))

(declare-fun mapValue!4474 () ValueCell!1074)

(declare-fun mapRest!4473 () (Array (_ BitVec 32) ValueCell!1074))

(assert (=> mapNonEmpty!4473 (= (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (store mapRest!4473 mapKey!4474 mapValue!4474))))

(declare-fun b!124518 () Bool)

(declare-fun res!60340 () Bool)

(assert (=> b!124518 (=> (not res!60340) (not e!81411))))

(declare-fun valid!499 (LongMapFixedSize!1056) Bool)

(assert (=> b!124518 (= res!60340 (valid!499 newMap!16))))

(declare-fun b!124519 () Bool)

(declare-fun e!81410 () Bool)

(assert (=> b!124519 (= e!81410 tp_is_empty!2835)))

(declare-fun mapNonEmpty!4474 () Bool)

(declare-fun tp!10910 () Bool)

(assert (=> mapNonEmpty!4474 (= mapRes!4474 (and tp!10910 e!81410))))

(declare-fun mapRest!4474 () (Array (_ BitVec 32) ValueCell!1074))

(declare-fun mapValue!4473 () ValueCell!1074)

(declare-fun mapKey!4473 () (_ BitVec 32))

(assert (=> mapNonEmpty!4474 (= (arr!2219 (_values!2747 newMap!16)) (store mapRest!4474 mapKey!4473 mapValue!4473))))

(declare-fun b!124520 () Bool)

(assert (=> b!124520 (= e!81408 tp_is_empty!2835)))

(declare-fun b!124521 () Bool)

(assert (=> b!124521 (= e!81399 e!81397)))

(declare-fun res!60339 () Bool)

(assert (=> b!124521 (=> (not res!60339) (not e!81397))))

(declare-fun contains!873 (ListLongMap!1681 (_ BitVec 64)) Bool)

(assert (=> b!124521 (= res!60339 (contains!873 lt!64030 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2562 0))(
  ( (tuple2!2563 (_1!1291 Bool) (_2!1291 LongMapFixedSize!1056)) )
))
(declare-fun lt!64028 () tuple2!2562)

(declare-fun update!181 (LongMapFixedSize!1056 (_ BitVec 64) V!3427) tuple2!2562)

(declare-fun get!1445 (ValueCell!1074 V!3427) V!3427)

(declare-fun dynLambda!414 (Int (_ BitVec 64)) V!3427)

(assert (=> b!124521 (= lt!64028 (update!181 newMap!16 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!124522 (= e!81405 (and tp!10912 tp_is_empty!2835 (array_inv!1357 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (array_inv!1358 (_values!2747 (v!3106 (underlying!435 thiss!992)))) e!81404))))

(assert (= (and start!13560 res!60342) b!124517))

(assert (= (and b!124517 res!60338) b!124518))

(assert (= (and b!124518 res!60340) b!124516))

(assert (= (and b!124516 res!60344) b!124507))

(assert (= (and b!124507 res!60341) b!124521))

(assert (= (and b!124521 res!60339) b!124508))

(assert (= (and b!124508 res!60343) b!124511))

(assert (= (and b!124513 condMapEmpty!4474) mapIsEmpty!4474))

(assert (= (and b!124513 (not condMapEmpty!4474)) mapNonEmpty!4473))

(get-info :version)

(assert (= (and mapNonEmpty!4473 ((_ is ValueCellFull!1074) mapValue!4474)) b!124510))

(assert (= (and b!124513 ((_ is ValueCellFull!1074) mapDefault!4474)) b!124515))

(assert (= b!124522 b!124513))

(assert (= b!124514 b!124522))

(assert (= b!124512 b!124514))

(assert (= start!13560 b!124512))

(assert (= (and b!124509 condMapEmpty!4473) mapIsEmpty!4473))

(assert (= (and b!124509 (not condMapEmpty!4473)) mapNonEmpty!4474))

(assert (= (and mapNonEmpty!4474 ((_ is ValueCellFull!1074) mapValue!4473)) b!124519))

(assert (= (and b!124509 ((_ is ValueCellFull!1074) mapDefault!4473)) b!124520))

(assert (= b!124506 b!124509))

(assert (= start!13560 b!124506))

(declare-fun b_lambda!5489 () Bool)

(assert (=> (not b_lambda!5489) (not b!124521)))

(declare-fun t!6052 () Bool)

(declare-fun tb!2301 () Bool)

(assert (=> (and b!124522 (= (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) (defaultEntry!2764 (v!3106 (underlying!435 thiss!992)))) t!6052) tb!2301))

(declare-fun result!3817 () Bool)

(assert (=> tb!2301 (= result!3817 tp_is_empty!2835)))

(assert (=> b!124521 t!6052))

(declare-fun b_and!7669 () Bool)

(assert (= b_and!7665 (and (=> t!6052 result!3817) b_and!7669)))

(declare-fun t!6054 () Bool)

(declare-fun tb!2303 () Bool)

(assert (=> (and b!124506 (= (defaultEntry!2764 newMap!16) (defaultEntry!2764 (v!3106 (underlying!435 thiss!992)))) t!6054) tb!2303))

(declare-fun result!3821 () Bool)

(assert (= result!3821 result!3817))

(assert (=> b!124521 t!6054))

(declare-fun b_and!7671 () Bool)

(assert (= b_and!7667 (and (=> t!6054 result!3821) b_and!7671)))

(declare-fun m!144661 () Bool)

(assert (=> b!124507 m!144661))

(declare-fun m!144663 () Bool)

(assert (=> b!124507 m!144663))

(declare-fun m!144665 () Bool)

(assert (=> b!124507 m!144665))

(declare-fun m!144667 () Bool)

(assert (=> mapNonEmpty!4473 m!144667))

(declare-fun m!144669 () Bool)

(assert (=> b!124506 m!144669))

(declare-fun m!144671 () Bool)

(assert (=> b!124506 m!144671))

(declare-fun m!144673 () Bool)

(assert (=> b!124508 m!144673))

(declare-fun m!144675 () Bool)

(assert (=> start!13560 m!144675))

(declare-fun m!144677 () Bool)

(assert (=> mapNonEmpty!4474 m!144677))

(assert (=> b!124521 m!144661))

(declare-fun m!144679 () Bool)

(assert (=> b!124521 m!144679))

(assert (=> b!124521 m!144661))

(declare-fun m!144681 () Bool)

(assert (=> b!124521 m!144681))

(declare-fun m!144683 () Bool)

(assert (=> b!124521 m!144683))

(declare-fun m!144685 () Bool)

(assert (=> b!124521 m!144685))

(assert (=> b!124521 m!144661))

(declare-fun m!144687 () Bool)

(assert (=> b!124521 m!144687))

(assert (=> b!124521 m!144685))

(assert (=> b!124521 m!144679))

(assert (=> b!124521 m!144681))

(declare-fun m!144689 () Bool)

(assert (=> b!124518 m!144689))

(declare-fun m!144691 () Bool)

(assert (=> b!124522 m!144691))

(declare-fun m!144693 () Bool)

(assert (=> b!124522 m!144693))

(check-sat (not b!124508) (not b!124507) (not b_next!2839) (not b!124521) (not mapNonEmpty!4473) b_and!7671 (not b!124506) (not b!124518) (not b_next!2837) (not start!13560) (not b!124522) tp_is_empty!2835 b_and!7669 (not b_lambda!5489) (not mapNonEmpty!4474))
(check-sat b_and!7669 b_and!7671 (not b_next!2837) (not b_next!2839))
(get-model)

(declare-fun b_lambda!5493 () Bool)

(assert (= b_lambda!5489 (or (and b!124522 b_free!2837) (and b!124506 b_free!2839 (= (defaultEntry!2764 newMap!16) (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))))) b_lambda!5493)))

(check-sat (not b!124508) (not b!124507) (not b_next!2839) (not b!124521) (not mapNonEmpty!4473) (not b_lambda!5493) b_and!7671 (not b!124506) (not b!124518) (not mapNonEmpty!4474) (not b_next!2837) (not start!13560) (not b!124522) tp_is_empty!2835 b_and!7669)
(check-sat b_and!7669 b_and!7671 (not b_next!2837) (not b_next!2839))
(get-model)

(declare-fun d!37335 () Bool)

(assert (=> d!37335 (= (array_inv!1357 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvsge (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!124522 d!37335))

(declare-fun d!37337 () Bool)

(assert (=> d!37337 (= (array_inv!1358 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvsge (size!2482 (_values!2747 (v!3106 (underlying!435 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!124522 d!37337))

(declare-fun d!37339 () Bool)

(declare-fun res!60372 () Bool)

(declare-fun e!81459 () Bool)

(assert (=> d!37339 (=> (not res!60372) (not e!81459))))

(declare-fun simpleValid!85 (LongMapFixedSize!1056) Bool)

(assert (=> d!37339 (= res!60372 (simpleValid!85 newMap!16))))

(assert (=> d!37339 (= (valid!499 newMap!16) e!81459)))

(declare-fun b!124584 () Bool)

(declare-fun res!60373 () Bool)

(assert (=> b!124584 (=> (not res!60373) (not e!81459))))

(declare-fun arrayCountValidKeys!0 (array!4684 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!124584 (= res!60373 (= (arrayCountValidKeys!0 (_keys!4493 newMap!16) #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))) (_size!577 newMap!16)))))

(declare-fun b!124585 () Bool)

(declare-fun res!60374 () Bool)

(assert (=> b!124585 (=> (not res!60374) (not e!81459))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4684 (_ BitVec 32)) Bool)

(assert (=> b!124585 (= res!60374 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4493 newMap!16) (mask!7010 newMap!16)))))

(declare-fun b!124586 () Bool)

(declare-datatypes ((List!1717 0))(
  ( (Nil!1714) (Cons!1713 (h!2314 (_ BitVec 64)) (t!6060 List!1717)) )
))
(declare-fun arrayNoDuplicates!0 (array!4684 (_ BitVec 32) List!1717) Bool)

(assert (=> b!124586 (= e!81459 (arrayNoDuplicates!0 (_keys!4493 newMap!16) #b00000000000000000000000000000000 Nil!1714))))

(assert (= (and d!37339 res!60372) b!124584))

(assert (= (and b!124584 res!60373) b!124585))

(assert (= (and b!124585 res!60374) b!124586))

(declare-fun m!144729 () Bool)

(assert (=> d!37339 m!144729))

(declare-fun m!144731 () Bool)

(assert (=> b!124584 m!144731))

(declare-fun m!144733 () Bool)

(assert (=> b!124585 m!144733))

(declare-fun m!144735 () Bool)

(assert (=> b!124586 m!144735))

(assert (=> b!124518 d!37339))

(declare-fun d!37341 () Bool)

(assert (=> d!37341 (= (valid!498 thiss!992) (valid!499 (v!3106 (underlying!435 thiss!992))))))

(declare-fun bs!5149 () Bool)

(assert (= bs!5149 d!37341))

(declare-fun m!144737 () Bool)

(assert (=> bs!5149 m!144737))

(assert (=> start!13560 d!37341))

(declare-fun d!37343 () Bool)

(declare-fun e!81465 () Bool)

(assert (=> d!37343 e!81465))

(declare-fun res!60377 () Bool)

(assert (=> d!37343 (=> res!60377 e!81465)))

(declare-fun lt!64048 () Bool)

(assert (=> d!37343 (= res!60377 (not lt!64048))))

(declare-fun lt!64051 () Bool)

(assert (=> d!37343 (= lt!64048 lt!64051)))

(declare-datatypes ((Unit!3878 0))(
  ( (Unit!3879) )
))
(declare-fun lt!64049 () Unit!3878)

(declare-fun e!81464 () Unit!3878)

(assert (=> d!37343 (= lt!64049 e!81464)))

(declare-fun c!22634 () Bool)

(assert (=> d!37343 (= c!22634 lt!64051)))

(declare-fun containsKey!169 (List!1716 (_ BitVec 64)) Bool)

(assert (=> d!37343 (= lt!64051 (containsKey!169 (toList!856 lt!64030) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (=> d!37343 (= (contains!873 lt!64030 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) lt!64048)))

(declare-fun b!124593 () Bool)

(declare-fun lt!64050 () Unit!3878)

(assert (=> b!124593 (= e!81464 lt!64050)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!118 (List!1716 (_ BitVec 64)) Unit!3878)

(assert (=> b!124593 (= lt!64050 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64030) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-datatypes ((Option!171 0))(
  ( (Some!170 (v!3110 V!3427)) (None!169) )
))
(declare-fun isDefined!119 (Option!171) Bool)

(declare-fun getValueByKey!165 (List!1716 (_ BitVec 64)) Option!171)

(assert (=> b!124593 (isDefined!119 (getValueByKey!165 (toList!856 lt!64030) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun b!124594 () Bool)

(declare-fun Unit!3880 () Unit!3878)

(assert (=> b!124594 (= e!81464 Unit!3880)))

(declare-fun b!124595 () Bool)

(assert (=> b!124595 (= e!81465 (isDefined!119 (getValueByKey!165 (toList!856 lt!64030) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))))))

(assert (= (and d!37343 c!22634) b!124593))

(assert (= (and d!37343 (not c!22634)) b!124594))

(assert (= (and d!37343 (not res!60377)) b!124595))

(assert (=> d!37343 m!144661))

(declare-fun m!144739 () Bool)

(assert (=> d!37343 m!144739))

(assert (=> b!124593 m!144661))

(declare-fun m!144741 () Bool)

(assert (=> b!124593 m!144741))

(assert (=> b!124593 m!144661))

(declare-fun m!144743 () Bool)

(assert (=> b!124593 m!144743))

(assert (=> b!124593 m!144743))

(declare-fun m!144745 () Bool)

(assert (=> b!124593 m!144745))

(assert (=> b!124595 m!144661))

(assert (=> b!124595 m!144743))

(assert (=> b!124595 m!144743))

(assert (=> b!124595 m!144745))

(assert (=> b!124521 d!37343))

(declare-datatypes ((SeekEntryResult!279 0))(
  ( (MissingZero!279 (index!3270 (_ BitVec 32))) (Found!279 (index!3271 (_ BitVec 32))) (Intermediate!279 (undefined!1091 Bool) (index!3272 (_ BitVec 32)) (x!14828 (_ BitVec 32))) (Undefined!279) (MissingVacant!279 (index!3273 (_ BitVec 32))) )
))
(declare-fun lt!64119 () SeekEntryResult!279)

(declare-fun c!22668 () Bool)

(declare-fun call!13321 () Bool)

(declare-fun c!22674 () Bool)

(declare-fun bm!13316 () Bool)

(declare-fun lt!64128 () SeekEntryResult!279)

(declare-fun c!22667 () Bool)

(declare-fun c!22664 () Bool)

(declare-fun lt!64130 () SeekEntryResult!279)

(declare-fun c!22663 () Bool)

(declare-fun lt!64132 () SeekEntryResult!279)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!13316 (= call!13321 (inRange!0 (ite c!22668 (ite c!22663 (index!3271 lt!64130) (ite c!22667 (index!3270 lt!64119) (index!3273 lt!64119))) (ite c!22664 (index!3271 lt!64128) (ite c!22674 (index!3270 lt!64132) (index!3273 lt!64132)))) (mask!7010 newMap!16)))))

(declare-fun b!124680 () Bool)

(declare-fun e!81515 () ListLongMap!1681)

(declare-fun call!13333 () ListLongMap!1681)

(assert (=> b!124680 (= e!81515 call!13333)))

(declare-fun b!124681 () Bool)

(declare-fun e!81519 () ListLongMap!1681)

(declare-fun call!13334 () ListLongMap!1681)

(assert (=> b!124681 (= e!81519 call!13334)))

(declare-fun bm!13317 () Bool)

(declare-fun call!13338 () Bool)

(declare-fun call!13335 () Bool)

(assert (=> bm!13317 (= call!13338 call!13335)))

(declare-fun b!124682 () Bool)

(assert (=> b!124682 (= e!81515 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun b!124683 () Bool)

(declare-fun lt!64113 () tuple2!2562)

(declare-fun call!13340 () tuple2!2562)

(assert (=> b!124683 (= lt!64113 call!13340)))

(declare-fun e!81529 () tuple2!2562)

(assert (=> b!124683 (= e!81529 (tuple2!2563 (_1!1291 lt!64113) (_2!1291 lt!64113)))))

(declare-fun bm!13318 () Bool)

(declare-fun call!13327 () Bool)

(assert (=> bm!13318 (= call!13327 call!13321)))

(declare-fun b!124684 () Bool)

(declare-fun e!81526 () Bool)

(declare-fun e!81511 () Bool)

(assert (=> b!124684 (= e!81526 e!81511)))

(declare-fun call!13330 () ListLongMap!1681)

(declare-fun res!60406 () Bool)

(assert (=> b!124684 (= res!60406 (contains!873 call!13330 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (=> b!124684 (=> (not res!60406) (not e!81511))))

(declare-fun bm!13319 () Bool)

(declare-fun call!13329 () Unit!3878)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!55 (array!4684 array!4686 (_ BitVec 32) (_ BitVec 32) V!3427 V!3427 (_ BitVec 64) Int) Unit!3878)

(assert (=> bm!13319 (= call!13329 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!55 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (defaultEntry!2764 newMap!16)))))

(declare-fun bm!13320 () Bool)

(declare-fun call!13324 () Bool)

(assert (=> bm!13320 (= call!13324 call!13335)))

(declare-fun bm!13321 () Bool)

(declare-fun call!13328 () SeekEntryResult!279)

(declare-fun call!13331 () SeekEntryResult!279)

(assert (=> bm!13321 (= call!13328 call!13331)))

(declare-fun b!124685 () Bool)

(declare-fun e!81523 () Bool)

(assert (=> b!124685 (= e!81523 (not call!13338))))

(declare-fun lt!64124 () (_ BitVec 32))

(declare-fun lt!64107 () (_ BitVec 32))

(declare-fun c!22675 () Bool)

(declare-fun c!22669 () Bool)

(declare-fun bm!13322 () Bool)

(declare-fun lt!64129 () array!4686)

(declare-fun call!13342 () ListLongMap!1681)

(assert (=> bm!13322 (= call!13342 (getCurrentListMap!528 (_keys!4493 newMap!16) (ite (or c!22675 c!22668) (_values!2747 newMap!16) lt!64129) (mask!7010 newMap!16) (ite c!22675 (ite c!22669 lt!64124 lt!64107) (extraKeys!2549 newMap!16)) (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)) (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun b!124686 () Bool)

(declare-fun e!81528 () Unit!3878)

(declare-fun lt!64106 () Unit!3878)

(assert (=> b!124686 (= e!81528 lt!64106)))

(assert (=> b!124686 (= lt!64106 call!13329)))

(declare-fun call!13320 () SeekEntryResult!279)

(assert (=> b!124686 (= lt!64119 call!13320)))

(assert (=> b!124686 (= c!22667 ((_ is MissingZero!279) lt!64119))))

(declare-fun e!81520 () Bool)

(assert (=> b!124686 e!81520))

(declare-fun b!124687 () Bool)

(declare-fun res!60412 () Bool)

(declare-fun e!81525 () Bool)

(assert (=> b!124687 (=> (not res!60412) (not e!81525))))

(assert (=> b!124687 (= res!60412 (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3270 lt!64119)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!13323 () Bool)

(assert (=> bm!13323 (= call!13333 call!13342)))

(declare-fun b!124688 () Bool)

(declare-fun e!81510 () Bool)

(assert (=> b!124688 (= e!81510 ((_ is Undefined!279) lt!64119))))

(declare-fun b!124689 () Bool)

(declare-fun res!60409 () Bool)

(assert (=> b!124689 (=> (not res!60409) (not e!81525))))

(declare-fun call!13326 () Bool)

(assert (=> b!124689 (= res!60409 call!13326)))

(assert (=> b!124689 (= e!81520 e!81525)))

(declare-fun b!124690 () Bool)

(declare-fun e!81530 () tuple2!2562)

(assert (=> b!124690 (= e!81530 e!81529)))

(declare-fun c!22666 () Bool)

(declare-fun lt!64122 () SeekEntryResult!279)

(assert (=> b!124690 (= c!22666 ((_ is MissingZero!279) lt!64122))))

(declare-fun b!124691 () Bool)

(declare-fun call!13323 () ListLongMap!1681)

(assert (=> b!124691 (= e!81526 (= call!13330 call!13323))))

(declare-fun b!124692 () Bool)

(declare-fun e!81527 () Bool)

(assert (=> b!124692 (= e!81527 (not call!13324))))

(declare-fun b!124693 () Bool)

(declare-fun res!60414 () Bool)

(declare-fun e!81531 () Bool)

(assert (=> b!124693 (=> (not res!60414) (not e!81531))))

(declare-fun call!13337 () Bool)

(assert (=> b!124693 (= res!60414 call!13337)))

(declare-fun e!81513 () Bool)

(assert (=> b!124693 (= e!81513 e!81531)))

(declare-fun b!124694 () Bool)

(assert (=> b!124694 (= e!81525 (not call!13338))))

(declare-fun bm!13324 () Bool)

(declare-fun lt!64127 () tuple2!2562)

(assert (=> bm!13324 (= call!13330 (map!1379 (_2!1291 lt!64127)))))

(declare-fun b!124695 () Bool)

(declare-fun e!81514 () Bool)

(assert (=> b!124695 (= e!81514 e!81526)))

(declare-fun c!22671 () Bool)

(assert (=> b!124695 (= c!22671 (_1!1291 lt!64127))))

(declare-fun b!124696 () Bool)

(declare-fun e!81522 () Bool)

(assert (=> b!124696 (= e!81522 ((_ is Undefined!279) lt!64132))))

(declare-fun d!37345 () Bool)

(assert (=> d!37345 e!81514))

(declare-fun res!60415 () Bool)

(assert (=> d!37345 (=> (not res!60415) (not e!81514))))

(assert (=> d!37345 (= res!60415 (valid!499 (_2!1291 lt!64127)))))

(declare-fun e!81516 () tuple2!2562)

(assert (=> d!37345 (= lt!64127 e!81516)))

(assert (=> d!37345 (= c!22675 (= (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (bvneg (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))))))

(assert (=> d!37345 (valid!499 newMap!16)))

(assert (=> d!37345 (= (update!181 newMap!16 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) lt!64127)))

(declare-fun call!13341 () ListLongMap!1681)

(declare-fun bm!13325 () Bool)

(assert (=> bm!13325 (= call!13341 (getCurrentListMap!528 (_keys!4493 newMap!16) (ite c!22675 (_values!2747 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16)))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun bm!13326 () Bool)

(assert (=> bm!13326 (= call!13334 call!13341)))

(declare-fun b!124697 () Bool)

(declare-fun lt!64123 () Unit!3878)

(assert (=> b!124697 (= lt!64123 e!81528)))

(declare-fun call!13325 () Bool)

(assert (=> b!124697 (= c!22663 call!13325)))

(declare-fun e!81521 () tuple2!2562)

(assert (=> b!124697 (= e!81521 (tuple2!2563 false newMap!16))))

(declare-fun b!124698 () Bool)

(declare-fun c!22673 () Bool)

(assert (=> b!124698 (= c!22673 ((_ is MissingVacant!279) lt!64122))))

(assert (=> b!124698 (= e!81521 e!81530)))

(declare-fun b!124699 () Bool)

(declare-fun e!81517 () Unit!3878)

(declare-fun Unit!3881 () Unit!3878)

(assert (=> b!124699 (= e!81517 Unit!3881)))

(declare-fun lt!64117 () Unit!3878)

(assert (=> b!124699 (= lt!64117 call!13329)))

(assert (=> b!124699 (= lt!64132 call!13328)))

(assert (=> b!124699 (= c!22674 ((_ is MissingZero!279) lt!64132))))

(assert (=> b!124699 e!81513))

(declare-fun lt!64125 () Unit!3878)

(assert (=> b!124699 (= lt!64125 lt!64117)))

(assert (=> b!124699 false))

(declare-fun bm!13327 () Bool)

(declare-fun updateHelperNewKey!55 (LongMapFixedSize!1056 (_ BitVec 64) V!3427 (_ BitVec 32)) tuple2!2562)

(assert (=> bm!13327 (= call!13340 (updateHelperNewKey!55 newMap!16 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122))))))

(declare-fun b!124700 () Bool)

(assert (=> b!124700 (= e!81516 e!81521)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4684 (_ BitVec 32)) SeekEntryResult!279)

(assert (=> b!124700 (= lt!64122 (seekEntryOrOpen!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (_keys!4493 newMap!16) (mask!7010 newMap!16)))))

(assert (=> b!124700 (= c!22668 ((_ is Undefined!279) lt!64122))))

(declare-fun bm!13328 () Bool)

(assert (=> bm!13328 (= call!13320 call!13331)))

(declare-fun bm!13329 () Bool)

(declare-fun c!22672 () Bool)

(assert (=> bm!13329 (= c!22672 c!22668)))

(assert (=> bm!13329 (= call!13325 (contains!873 e!81515 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun bm!13330 () Bool)

(declare-fun call!13339 () Bool)

(assert (=> bm!13330 (= call!13326 call!13339)))

(declare-fun b!124701 () Bool)

(declare-fun Unit!3882 () Unit!3878)

(assert (=> b!124701 (= e!81528 Unit!3882)))

(declare-fun lt!64109 () Unit!3878)

(declare-fun call!13332 () Unit!3878)

(assert (=> b!124701 (= lt!64109 call!13332)))

(assert (=> b!124701 (= lt!64130 call!13320)))

(declare-fun res!60410 () Bool)

(assert (=> b!124701 (= res!60410 ((_ is Found!279) lt!64130))))

(declare-fun e!81512 () Bool)

(assert (=> b!124701 (=> (not res!60410) (not e!81512))))

(assert (=> b!124701 e!81512))

(declare-fun lt!64116 () Unit!3878)

(assert (=> b!124701 (= lt!64116 lt!64109)))

(assert (=> b!124701 false))

(declare-fun b!124702 () Bool)

(declare-fun lt!64112 () tuple2!2562)

(assert (=> b!124702 (= e!81530 (tuple2!2563 (_1!1291 lt!64112) (_2!1291 lt!64112)))))

(assert (=> b!124702 (= lt!64112 call!13340)))

(declare-fun b!124703 () Bool)

(assert (=> b!124703 (= e!81522 e!81527)))

(declare-fun res!60417 () Bool)

(assert (=> b!124703 (= res!60417 call!13337)))

(assert (=> b!124703 (=> (not res!60417) (not e!81527))))

(declare-fun bm!13331 () Bool)

(declare-fun call!13319 () ListLongMap!1681)

(assert (=> bm!13331 (= call!13319 call!13342)))

(declare-fun bm!13332 () Bool)

(assert (=> bm!13332 (= call!13339 call!13321)))

(declare-fun b!124704 () Bool)

(declare-fun lt!64120 () Unit!3878)

(assert (=> b!124704 (= e!81517 lt!64120)))

(assert (=> b!124704 (= lt!64120 call!13332)))

(assert (=> b!124704 (= lt!64128 call!13328)))

(declare-fun res!60413 () Bool)

(assert (=> b!124704 (= res!60413 ((_ is Found!279) lt!64128))))

(declare-fun e!81524 () Bool)

(assert (=> b!124704 (=> (not res!60413) (not e!81524))))

(assert (=> b!124704 e!81524))

(declare-fun b!124705 () Bool)

(assert (=> b!124705 (= e!81524 (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64128)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun bm!13333 () Bool)

(assert (=> bm!13333 (= call!13337 call!13327)))

(declare-fun b!124706 () Bool)

(declare-fun e!81518 () tuple2!2562)

(assert (=> b!124706 (= e!81516 e!81518)))

(assert (=> b!124706 (= c!22669 (= (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!124707 () Bool)

(declare-fun lt!64131 () Unit!3878)

(declare-fun lt!64126 () Unit!3878)

(assert (=> b!124707 (= lt!64131 lt!64126)))

(assert (=> b!124707 (contains!873 call!13333 (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!113 (array!4684 array!4686 (_ BitVec 32) (_ BitVec 32) V!3427 V!3427 (_ BitVec 32) Int) Unit!3878)

(assert (=> b!124707 (= lt!64126 (lemmaValidKeyInArrayIsInListMap!113 (_keys!4493 newMap!16) lt!64129 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (index!3271 lt!64122) (defaultEntry!2764 newMap!16)))))

(assert (=> b!124707 (= lt!64129 (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))))))

(declare-fun lt!64118 () Unit!3878)

(declare-fun lt!64121 () Unit!3878)

(assert (=> b!124707 (= lt!64118 lt!64121)))

(declare-fun call!13322 () ListLongMap!1681)

(assert (=> b!124707 (= call!13322 call!13341)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!55 (array!4684 array!4686 (_ BitVec 32) (_ BitVec 32) V!3427 V!3427 (_ BitVec 32) (_ BitVec 64) V!3427 Int) Unit!3878)

(assert (=> b!124707 (= lt!64121 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!55 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (index!3271 lt!64122) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64114 () Unit!3878)

(assert (=> b!124707 (= lt!64114 e!81517)))

(assert (=> b!124707 (= c!22664 call!13325)))

(assert (=> b!124707 (= e!81529 (tuple2!2563 true (LongMapFixedSize!1057 (defaultEntry!2764 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (_size!577 newMap!16) (_keys!4493 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))) (_vacant!577 newMap!16))))))

(declare-fun b!124708 () Bool)

(declare-fun res!60419 () Bool)

(assert (=> b!124708 (= res!60419 (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3273 lt!64119)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!124708 (=> (not res!60419) (not e!81523))))

(declare-fun b!124709 () Bool)

(declare-fun res!60416 () Bool)

(assert (=> b!124709 (= res!60416 call!13339)))

(assert (=> b!124709 (=> (not res!60416) (not e!81512))))

(declare-fun bm!13334 () Bool)

(assert (=> bm!13334 (= call!13323 (map!1379 newMap!16))))

(declare-fun b!124710 () Bool)

(declare-fun res!60408 () Bool)

(assert (=> b!124710 (=> (not res!60408) (not e!81531))))

(assert (=> b!124710 (= res!60408 (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3270 lt!64132)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!13335 () Bool)

(assert (=> bm!13335 (= call!13331 (seekEntryOrOpen!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (_keys!4493 newMap!16) (mask!7010 newMap!16)))))

(declare-fun b!124711 () Bool)

(assert (=> b!124711 (= e!81519 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun bm!13336 () Bool)

(declare-fun +!164 (ListLongMap!1681 tuple2!2560) ListLongMap!1681)

(assert (=> bm!13336 (= call!13322 (+!164 e!81519 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun c!22665 () Bool)

(assert (=> bm!13336 (= c!22665 c!22675)))

(declare-fun b!124712 () Bool)

(assert (=> b!124712 (= e!81511 (= call!13330 (+!164 call!13323 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun bm!13337 () Bool)

(declare-fun call!13336 () ListLongMap!1681)

(assert (=> bm!13337 (= call!13336 call!13322)))

(declare-fun bm!13338 () Bool)

(declare-fun arrayContainsKey!0 (array!4684 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!13338 (= call!13335 (arrayContainsKey!0 (_keys!4493 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!124713 () Bool)

(declare-fun c!22670 () Bool)

(assert (=> b!124713 (= c!22670 ((_ is MissingVacant!279) lt!64132))))

(assert (=> b!124713 (= e!81513 e!81522)))

(declare-fun b!124714 () Bool)

(declare-fun res!60411 () Bool)

(assert (=> b!124714 (= res!60411 call!13327)))

(assert (=> b!124714 (=> (not res!60411) (not e!81524))))

(declare-fun b!124715 () Bool)

(assert (=> b!124715 (= e!81510 e!81523)))

(declare-fun res!60418 () Bool)

(assert (=> b!124715 (= res!60418 call!13326)))

(assert (=> b!124715 (=> (not res!60418) (not e!81523))))

(declare-fun bm!13339 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!55 (array!4684 array!4686 (_ BitVec 32) (_ BitVec 32) V!3427 V!3427 (_ BitVec 64) Int) Unit!3878)

(assert (=> bm!13339 (= call!13332 (lemmaInListMapThenSeekEntryOrOpenFindsIt!55 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (defaultEntry!2764 newMap!16)))))

(declare-fun b!124716 () Bool)

(declare-fun res!60407 () Bool)

(assert (=> b!124716 (= res!60407 (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3273 lt!64132)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!124716 (=> (not res!60407) (not e!81527))))

(declare-fun b!124717 () Bool)

(declare-fun c!22676 () Bool)

(assert (=> b!124717 (= c!22676 ((_ is MissingVacant!279) lt!64119))))

(assert (=> b!124717 (= e!81520 e!81510)))

(declare-fun b!124718 () Bool)

(assert (=> b!124718 (= e!81512 (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64130)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun b!124719 () Bool)

(declare-fun lt!64108 () Unit!3878)

(declare-fun lt!64115 () Unit!3878)

(assert (=> b!124719 (= lt!64108 lt!64115)))

(assert (=> b!124719 (= call!13336 call!13319)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!55 (array!4684 array!4686 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3427 V!3427 V!3427 Int) Unit!3878)

(assert (=> b!124719 (= lt!64115 (lemmaChangeZeroKeyThenAddPairToListMap!55 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) lt!64124 (zeroValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2629 newMap!16) (defaultEntry!2764 newMap!16)))))

(assert (=> b!124719 (= lt!64124 (bvor (extraKeys!2549 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!124719 (= e!81518 (tuple2!2563 true (LongMapFixedSize!1057 (defaultEntry!2764 newMap!16) (mask!7010 newMap!16) (bvor (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2629 newMap!16) (_size!577 newMap!16) (_keys!4493 newMap!16) (_values!2747 newMap!16) (_vacant!577 newMap!16))))))

(declare-fun b!124720 () Bool)

(assert (=> b!124720 (= e!81531 (not call!13324))))

(declare-fun b!124721 () Bool)

(declare-fun lt!64111 () Unit!3878)

(declare-fun lt!64110 () Unit!3878)

(assert (=> b!124721 (= lt!64111 lt!64110)))

(assert (=> b!124721 (= call!13336 call!13319)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!55 (array!4684 array!4686 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3427 V!3427 V!3427 Int) Unit!3878)

(assert (=> b!124721 (= lt!64110 (lemmaChangeLongMinValueKeyThenAddPairToListMap!55 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) lt!64107 (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2764 newMap!16)))))

(assert (=> b!124721 (= lt!64107 (bvor (extraKeys!2549 newMap!16) #b00000000000000000000000000000010))))

(assert (=> b!124721 (= e!81518 (tuple2!2563 true (LongMapFixedSize!1057 (defaultEntry!2764 newMap!16) (mask!7010 newMap!16) (bvor (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) (zeroValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (_size!577 newMap!16) (_keys!4493 newMap!16) (_values!2747 newMap!16) (_vacant!577 newMap!16))))))

(assert (= (and d!37345 c!22675) b!124706))

(assert (= (and d!37345 (not c!22675)) b!124700))

(assert (= (and b!124706 c!22669) b!124719))

(assert (= (and b!124706 (not c!22669)) b!124721))

(assert (= (or b!124719 b!124721) bm!13326))

(assert (= (or b!124719 b!124721) bm!13331))

(assert (= (or b!124719 b!124721) bm!13337))

(assert (= (and b!124700 c!22668) b!124697))

(assert (= (and b!124700 (not c!22668)) b!124698))

(assert (= (and b!124697 c!22663) b!124701))

(assert (= (and b!124697 (not c!22663)) b!124686))

(assert (= (and b!124701 res!60410) b!124709))

(assert (= (and b!124709 res!60416) b!124718))

(assert (= (and b!124686 c!22667) b!124689))

(assert (= (and b!124686 (not c!22667)) b!124717))

(assert (= (and b!124689 res!60409) b!124687))

(assert (= (and b!124687 res!60412) b!124694))

(assert (= (and b!124717 c!22676) b!124715))

(assert (= (and b!124717 (not c!22676)) b!124688))

(assert (= (and b!124715 res!60418) b!124708))

(assert (= (and b!124708 res!60419) b!124685))

(assert (= (or b!124689 b!124715) bm!13330))

(assert (= (or b!124694 b!124685) bm!13317))

(assert (= (or b!124709 bm!13330) bm!13332))

(assert (= (or b!124701 b!124686) bm!13328))

(assert (= (and b!124698 c!22673) b!124702))

(assert (= (and b!124698 (not c!22673)) b!124690))

(assert (= (and b!124690 c!22666) b!124683))

(assert (= (and b!124690 (not c!22666)) b!124707))

(assert (= (and b!124707 c!22664) b!124704))

(assert (= (and b!124707 (not c!22664)) b!124699))

(assert (= (and b!124704 res!60413) b!124714))

(assert (= (and b!124714 res!60411) b!124705))

(assert (= (and b!124699 c!22674) b!124693))

(assert (= (and b!124699 (not c!22674)) b!124713))

(assert (= (and b!124693 res!60414) b!124710))

(assert (= (and b!124710 res!60408) b!124720))

(assert (= (and b!124713 c!22670) b!124703))

(assert (= (and b!124713 (not c!22670)) b!124696))

(assert (= (and b!124703 res!60417) b!124716))

(assert (= (and b!124716 res!60407) b!124692))

(assert (= (or b!124693 b!124703) bm!13333))

(assert (= (or b!124720 b!124692) bm!13320))

(assert (= (or b!124714 bm!13333) bm!13318))

(assert (= (or b!124704 b!124699) bm!13321))

(assert (= (or b!124702 b!124683) bm!13327))

(assert (= (or b!124686 b!124699) bm!13319))

(assert (= (or bm!13332 bm!13318) bm!13316))

(assert (= (or b!124697 b!124707) bm!13323))

(assert (= (or bm!13328 bm!13321) bm!13335))

(assert (= (or b!124701 b!124704) bm!13339))

(assert (= (or bm!13317 bm!13320) bm!13338))

(assert (= (or b!124697 b!124707) bm!13329))

(assert (= (and bm!13329 c!22672) b!124680))

(assert (= (and bm!13329 (not c!22672)) b!124682))

(assert (= (or bm!13331 bm!13323) bm!13322))

(assert (= (or bm!13326 b!124707) bm!13325))

(assert (= (or bm!13337 b!124707) bm!13336))

(assert (= (and bm!13336 c!22665) b!124681))

(assert (= (and bm!13336 (not c!22665)) b!124711))

(assert (= (and d!37345 res!60415) b!124695))

(assert (= (and b!124695 c!22671) b!124684))

(assert (= (and b!124695 (not c!22671)) b!124691))

(assert (= (and b!124684 res!60406) b!124712))

(assert (= (or b!124712 b!124691) bm!13334))

(assert (= (or b!124684 b!124712 b!124691) bm!13324))

(declare-fun m!144747 () Bool)

(assert (=> b!124705 m!144747))

(assert (=> b!124721 m!144681))

(declare-fun m!144749 () Bool)

(assert (=> b!124721 m!144749))

(declare-fun m!144751 () Bool)

(assert (=> b!124710 m!144751))

(declare-fun m!144753 () Bool)

(assert (=> b!124712 m!144753))

(declare-fun m!144755 () Bool)

(assert (=> b!124687 m!144755))

(assert (=> bm!13339 m!144661))

(declare-fun m!144757 () Bool)

(assert (=> bm!13339 m!144757))

(declare-fun m!144759 () Bool)

(assert (=> bm!13322 m!144759))

(declare-fun m!144761 () Bool)

(assert (=> bm!13324 m!144761))

(declare-fun m!144763 () Bool)

(assert (=> b!124707 m!144763))

(declare-fun m!144765 () Bool)

(assert (=> b!124707 m!144765))

(declare-fun m!144767 () Bool)

(assert (=> b!124707 m!144767))

(assert (=> b!124707 m!144661))

(assert (=> b!124707 m!144681))

(declare-fun m!144769 () Bool)

(assert (=> b!124707 m!144769))

(assert (=> b!124707 m!144767))

(declare-fun m!144771 () Bool)

(assert (=> b!124707 m!144771))

(declare-fun m!144773 () Bool)

(assert (=> b!124716 m!144773))

(declare-fun m!144775 () Bool)

(assert (=> d!37345 m!144775))

(assert (=> d!37345 m!144689))

(assert (=> b!124684 m!144661))

(declare-fun m!144777 () Bool)

(assert (=> b!124684 m!144777))

(assert (=> bm!13319 m!144661))

(declare-fun m!144779 () Bool)

(assert (=> bm!13319 m!144779))

(declare-fun m!144781 () Bool)

(assert (=> b!124682 m!144781))

(assert (=> b!124719 m!144681))

(declare-fun m!144783 () Bool)

(assert (=> b!124719 m!144783))

(assert (=> bm!13335 m!144661))

(declare-fun m!144785 () Bool)

(assert (=> bm!13335 m!144785))

(declare-fun m!144787 () Bool)

(assert (=> b!124718 m!144787))

(declare-fun m!144789 () Bool)

(assert (=> b!124708 m!144789))

(assert (=> bm!13329 m!144661))

(declare-fun m!144791 () Bool)

(assert (=> bm!13329 m!144791))

(assert (=> b!124711 m!144781))

(assert (=> bm!13327 m!144661))

(assert (=> bm!13327 m!144681))

(declare-fun m!144793 () Bool)

(assert (=> bm!13327 m!144793))

(assert (=> b!124700 m!144661))

(assert (=> b!124700 m!144785))

(declare-fun m!144795 () Bool)

(assert (=> bm!13336 m!144795))

(assert (=> bm!13325 m!144765))

(declare-fun m!144797 () Bool)

(assert (=> bm!13325 m!144797))

(assert (=> bm!13334 m!144663))

(declare-fun m!144799 () Bool)

(assert (=> bm!13316 m!144799))

(assert (=> bm!13338 m!144661))

(declare-fun m!144801 () Bool)

(assert (=> bm!13338 m!144801))

(assert (=> b!124521 d!37345))

(declare-fun d!37347 () Bool)

(declare-fun c!22679 () Bool)

(assert (=> d!37347 (= c!22679 ((_ is ValueCellFull!1074) (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun e!81534 () V!3427)

(assert (=> d!37347 (= (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!81534)))

(declare-fun b!124726 () Bool)

(declare-fun get!1446 (ValueCell!1074 V!3427) V!3427)

(assert (=> b!124726 (= e!81534 (get!1446 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!124727 () Bool)

(declare-fun get!1447 (ValueCell!1074 V!3427) V!3427)

(assert (=> b!124727 (= e!81534 (get!1447 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37347 c!22679) b!124726))

(assert (= (and d!37347 (not c!22679)) b!124727))

(assert (=> b!124726 m!144685))

(assert (=> b!124726 m!144679))

(declare-fun m!144803 () Bool)

(assert (=> b!124726 m!144803))

(assert (=> b!124727 m!144685))

(assert (=> b!124727 m!144679))

(declare-fun m!144805 () Bool)

(assert (=> b!124727 m!144805))

(assert (=> b!124521 d!37347))

(declare-fun d!37349 () Bool)

(assert (=> d!37349 (= (validMask!0 (mask!7010 (v!3106 (underlying!435 thiss!992)))) (and (or (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000000111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000001111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000011111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000001111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000011111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000111111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000001111111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000011111111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000111111111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000000000000001111111111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000000000000011111111111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000000000000111111111111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000000000001111111111111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000000000011111111111111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000000000111111111111111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000000001111111111111111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000000011111111111111111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000000111111111111111111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000001111111111111111111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000011111111111111111111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000111111111111111111111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000001111111111111111111111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000011111111111111111111111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000111111111111111111111111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00001111111111111111111111111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00011111111111111111111111111111) (= (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!124508 d!37349))

(declare-fun d!37351 () Bool)

(assert (=> d!37351 (= (array_inv!1357 (_keys!4493 newMap!16)) (bvsge (size!2481 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!124506 d!37351))

(declare-fun d!37353 () Bool)

(assert (=> d!37353 (= (array_inv!1358 (_values!2747 newMap!16)) (bvsge (size!2482 (_values!2747 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!124506 d!37353))

(declare-fun d!37355 () Bool)

(assert (=> d!37355 (= (map!1379 newMap!16) (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun bs!5150 () Bool)

(assert (= bs!5150 d!37355))

(assert (=> bs!5150 m!144781))

(assert (=> b!124507 d!37355))

(declare-fun b!124770 () Bool)

(declare-fun e!81573 () Unit!3878)

(declare-fun Unit!3883 () Unit!3878)

(assert (=> b!124770 (= e!81573 Unit!3883)))

(declare-fun b!124771 () Bool)

(declare-fun e!81564 () ListLongMap!1681)

(declare-fun call!13358 () ListLongMap!1681)

(assert (=> b!124771 (= e!81564 call!13358)))

(declare-fun bm!13354 () Bool)

(declare-fun call!13363 () ListLongMap!1681)

(declare-fun call!13360 () ListLongMap!1681)

(assert (=> bm!13354 (= call!13363 call!13360)))

(declare-fun b!124772 () Bool)

(declare-fun e!81562 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!124772 (= e!81562 (validKeyInArray!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!124773 () Bool)

(declare-fun e!81565 () Bool)

(declare-fun e!81567 () Bool)

(assert (=> b!124773 (= e!81565 e!81567)))

(declare-fun res!60445 () Bool)

(declare-fun call!13359 () Bool)

(assert (=> b!124773 (= res!60445 call!13359)))

(assert (=> b!124773 (=> (not res!60445) (not e!81567))))

(declare-fun b!124774 () Bool)

(declare-fun lt!64187 () ListLongMap!1681)

(declare-fun e!81572 () Bool)

(declare-fun apply!110 (ListLongMap!1681 (_ BitVec 64)) V!3427)

(assert (=> b!124774 (= e!81572 (= (apply!110 lt!64187 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!124774 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2482 (_values!2747 (v!3106 (underlying!435 thiss!992))))))))

(assert (=> b!124774 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun b!124775 () Bool)

(assert (=> b!124775 (= e!81567 (= (apply!110 lt!64187 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))

(declare-fun b!124776 () Bool)

(assert (=> b!124776 (= e!81564 call!13363)))

(declare-fun b!124777 () Bool)

(declare-fun e!81569 () ListLongMap!1681)

(assert (=> b!124777 (= e!81569 call!13358)))

(declare-fun bm!13355 () Bool)

(declare-fun call!13357 () ListLongMap!1681)

(assert (=> bm!13355 (= call!13360 call!13357)))

(declare-fun b!124778 () Bool)

(declare-fun res!60442 () Bool)

(declare-fun e!81570 () Bool)

(assert (=> b!124778 (=> (not res!60442) (not e!81570))))

(declare-fun e!81571 () Bool)

(assert (=> b!124778 (= res!60442 e!81571)))

(declare-fun res!60446 () Bool)

(assert (=> b!124778 (=> res!60446 e!81571)))

(declare-fun e!81568 () Bool)

(assert (=> b!124778 (= res!60446 (not e!81568))))

(declare-fun res!60439 () Bool)

(assert (=> b!124778 (=> (not res!60439) (not e!81568))))

(assert (=> b!124778 (= res!60439 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun d!37357 () Bool)

(assert (=> d!37357 e!81570))

(declare-fun res!60443 () Bool)

(assert (=> d!37357 (=> (not res!60443) (not e!81570))))

(assert (=> d!37357 (= res!60443 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun lt!64179 () ListLongMap!1681)

(assert (=> d!37357 (= lt!64187 lt!64179)))

(declare-fun lt!64191 () Unit!3878)

(assert (=> d!37357 (= lt!64191 e!81573)))

(declare-fun c!22693 () Bool)

(assert (=> d!37357 (= c!22693 e!81562)))

(declare-fun res!60441 () Bool)

(assert (=> d!37357 (=> (not res!60441) (not e!81562))))

(assert (=> d!37357 (= res!60441 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun e!81561 () ListLongMap!1681)

(assert (=> d!37357 (= lt!64179 e!81561)))

(declare-fun c!22694 () Bool)

(assert (=> d!37357 (= c!22694 (and (not (= (bvand (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!37357 (validMask!0 (mask!7010 (v!3106 (underlying!435 thiss!992))))))

(assert (=> d!37357 (= (getCurrentListMap!528 (_keys!4493 (v!3106 (underlying!435 thiss!992))) (_values!2747 (v!3106 (underlying!435 thiss!992))) (mask!7010 (v!3106 (underlying!435 thiss!992))) (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) (zeroValue!2629 (v!3106 (underlying!435 thiss!992))) (minValue!2629 (v!3106 (underlying!435 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2764 (v!3106 (underlying!435 thiss!992)))) lt!64187)))

(declare-fun b!124779 () Bool)

(assert (=> b!124779 (= e!81565 (not call!13359))))

(declare-fun b!124780 () Bool)

(assert (=> b!124780 (= e!81571 e!81572)))

(declare-fun res!60444 () Bool)

(assert (=> b!124780 (=> (not res!60444) (not e!81572))))

(assert (=> b!124780 (= res!60444 (contains!873 lt!64187 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!124780 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun call!13362 () ListLongMap!1681)

(declare-fun c!22696 () Bool)

(declare-fun bm!13356 () Bool)

(assert (=> bm!13356 (= call!13362 (+!164 (ite c!22694 call!13357 (ite c!22696 call!13360 call!13363)) (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun b!124781 () Bool)

(declare-fun e!81563 () Bool)

(assert (=> b!124781 (= e!81563 (= (apply!110 lt!64187 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))

(declare-fun b!124782 () Bool)

(assert (=> b!124782 (= e!81561 (+!164 call!13362 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun b!124783 () Bool)

(assert (=> b!124783 (= e!81568 (validKeyInArray!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!124784 () Bool)

(declare-fun c!22695 () Bool)

(assert (=> b!124784 (= c!22695 (and (not (= (bvand (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!124784 (= e!81569 e!81564)))

(declare-fun bm!13357 () Bool)

(declare-fun call!13361 () Bool)

(assert (=> bm!13357 (= call!13361 (contains!873 lt!64187 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!124785 () Bool)

(declare-fun e!81566 () Bool)

(assert (=> b!124785 (= e!81566 (not call!13361))))

(declare-fun b!124786 () Bool)

(assert (=> b!124786 (= e!81570 e!81565)))

(declare-fun c!22697 () Bool)

(assert (=> b!124786 (= c!22697 (not (= (bvand (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!13358 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!131 (array!4684 array!4686 (_ BitVec 32) (_ BitVec 32) V!3427 V!3427 (_ BitVec 32) Int) ListLongMap!1681)

(assert (=> bm!13358 (= call!13357 (getCurrentListMapNoExtraKeys!131 (_keys!4493 (v!3106 (underlying!435 thiss!992))) (_values!2747 (v!3106 (underlying!435 thiss!992))) (mask!7010 (v!3106 (underlying!435 thiss!992))) (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) (zeroValue!2629 (v!3106 (underlying!435 thiss!992))) (minValue!2629 (v!3106 (underlying!435 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2764 (v!3106 (underlying!435 thiss!992)))))))

(declare-fun b!124787 () Bool)

(assert (=> b!124787 (= e!81561 e!81569)))

(assert (=> b!124787 (= c!22696 (and (not (= (bvand (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!124788 () Bool)

(assert (=> b!124788 (= e!81566 e!81563)))

(declare-fun res!60440 () Bool)

(assert (=> b!124788 (= res!60440 call!13361)))

(assert (=> b!124788 (=> (not res!60440) (not e!81563))))

(declare-fun b!124789 () Bool)

(declare-fun res!60438 () Bool)

(assert (=> b!124789 (=> (not res!60438) (not e!81570))))

(assert (=> b!124789 (= res!60438 e!81566)))

(declare-fun c!22692 () Bool)

(assert (=> b!124789 (= c!22692 (not (= (bvand (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13359 () Bool)

(assert (=> bm!13359 (= call!13358 call!13362)))

(declare-fun b!124790 () Bool)

(declare-fun lt!64177 () Unit!3878)

(assert (=> b!124790 (= e!81573 lt!64177)))

(declare-fun lt!64180 () ListLongMap!1681)

(assert (=> b!124790 (= lt!64180 (getCurrentListMapNoExtraKeys!131 (_keys!4493 (v!3106 (underlying!435 thiss!992))) (_values!2747 (v!3106 (underlying!435 thiss!992))) (mask!7010 (v!3106 (underlying!435 thiss!992))) (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) (zeroValue!2629 (v!3106 (underlying!435 thiss!992))) (minValue!2629 (v!3106 (underlying!435 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2764 (v!3106 (underlying!435 thiss!992)))))))

(declare-fun lt!64181 () (_ BitVec 64))

(assert (=> b!124790 (= lt!64181 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64193 () (_ BitVec 64))

(assert (=> b!124790 (= lt!64193 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!64190 () Unit!3878)

(declare-fun addStillContains!86 (ListLongMap!1681 (_ BitVec 64) V!3427 (_ BitVec 64)) Unit!3878)

(assert (=> b!124790 (= lt!64190 (addStillContains!86 lt!64180 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))) lt!64193))))

(assert (=> b!124790 (contains!873 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64193)))

(declare-fun lt!64192 () Unit!3878)

(assert (=> b!124790 (= lt!64192 lt!64190)))

(declare-fun lt!64194 () ListLongMap!1681)

(assert (=> b!124790 (= lt!64194 (getCurrentListMapNoExtraKeys!131 (_keys!4493 (v!3106 (underlying!435 thiss!992))) (_values!2747 (v!3106 (underlying!435 thiss!992))) (mask!7010 (v!3106 (underlying!435 thiss!992))) (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) (zeroValue!2629 (v!3106 (underlying!435 thiss!992))) (minValue!2629 (v!3106 (underlying!435 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2764 (v!3106 (underlying!435 thiss!992)))))))

(declare-fun lt!64185 () (_ BitVec 64))

(assert (=> b!124790 (= lt!64185 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64184 () (_ BitVec 64))

(assert (=> b!124790 (= lt!64184 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!64188 () Unit!3878)

(declare-fun addApplyDifferent!86 (ListLongMap!1681 (_ BitVec 64) V!3427 (_ BitVec 64)) Unit!3878)

(assert (=> b!124790 (= lt!64188 (addApplyDifferent!86 lt!64194 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))) lt!64184))))

(assert (=> b!124790 (= (apply!110 (+!164 lt!64194 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64184) (apply!110 lt!64194 lt!64184))))

(declare-fun lt!64197 () Unit!3878)

(assert (=> b!124790 (= lt!64197 lt!64188)))

(declare-fun lt!64186 () ListLongMap!1681)

(assert (=> b!124790 (= lt!64186 (getCurrentListMapNoExtraKeys!131 (_keys!4493 (v!3106 (underlying!435 thiss!992))) (_values!2747 (v!3106 (underlying!435 thiss!992))) (mask!7010 (v!3106 (underlying!435 thiss!992))) (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) (zeroValue!2629 (v!3106 (underlying!435 thiss!992))) (minValue!2629 (v!3106 (underlying!435 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2764 (v!3106 (underlying!435 thiss!992)))))))

(declare-fun lt!64195 () (_ BitVec 64))

(assert (=> b!124790 (= lt!64195 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64182 () (_ BitVec 64))

(assert (=> b!124790 (= lt!64182 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!64178 () Unit!3878)

(assert (=> b!124790 (= lt!64178 (addApplyDifferent!86 lt!64186 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))) lt!64182))))

(assert (=> b!124790 (= (apply!110 (+!164 lt!64186 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64182) (apply!110 lt!64186 lt!64182))))

(declare-fun lt!64196 () Unit!3878)

(assert (=> b!124790 (= lt!64196 lt!64178)))

(declare-fun lt!64198 () ListLongMap!1681)

(assert (=> b!124790 (= lt!64198 (getCurrentListMapNoExtraKeys!131 (_keys!4493 (v!3106 (underlying!435 thiss!992))) (_values!2747 (v!3106 (underlying!435 thiss!992))) (mask!7010 (v!3106 (underlying!435 thiss!992))) (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) (zeroValue!2629 (v!3106 (underlying!435 thiss!992))) (minValue!2629 (v!3106 (underlying!435 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2764 (v!3106 (underlying!435 thiss!992)))))))

(declare-fun lt!64189 () (_ BitVec 64))

(assert (=> b!124790 (= lt!64189 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64183 () (_ BitVec 64))

(assert (=> b!124790 (= lt!64183 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!124790 (= lt!64177 (addApplyDifferent!86 lt!64198 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))) lt!64183))))

(assert (=> b!124790 (= (apply!110 (+!164 lt!64198 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64183) (apply!110 lt!64198 lt!64183))))

(declare-fun bm!13360 () Bool)

(assert (=> bm!13360 (= call!13359 (contains!873 lt!64187 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!37357 c!22694) b!124782))

(assert (= (and d!37357 (not c!22694)) b!124787))

(assert (= (and b!124787 c!22696) b!124777))

(assert (= (and b!124787 (not c!22696)) b!124784))

(assert (= (and b!124784 c!22695) b!124771))

(assert (= (and b!124784 (not c!22695)) b!124776))

(assert (= (or b!124771 b!124776) bm!13354))

(assert (= (or b!124777 bm!13354) bm!13355))

(assert (= (or b!124777 b!124771) bm!13359))

(assert (= (or b!124782 bm!13355) bm!13358))

(assert (= (or b!124782 bm!13359) bm!13356))

(assert (= (and d!37357 res!60441) b!124772))

(assert (= (and d!37357 c!22693) b!124790))

(assert (= (and d!37357 (not c!22693)) b!124770))

(assert (= (and d!37357 res!60443) b!124778))

(assert (= (and b!124778 res!60439) b!124783))

(assert (= (and b!124778 (not res!60446)) b!124780))

(assert (= (and b!124780 res!60444) b!124774))

(assert (= (and b!124778 res!60442) b!124789))

(assert (= (and b!124789 c!22692) b!124788))

(assert (= (and b!124789 (not c!22692)) b!124785))

(assert (= (and b!124788 res!60440) b!124781))

(assert (= (or b!124788 b!124785) bm!13357))

(assert (= (and b!124789 res!60438) b!124786))

(assert (= (and b!124786 c!22697) b!124773))

(assert (= (and b!124786 (not c!22697)) b!124779))

(assert (= (and b!124773 res!60445) b!124775))

(assert (= (or b!124773 b!124779) bm!13360))

(declare-fun b_lambda!5495 () Bool)

(assert (=> (not b_lambda!5495) (not b!124774)))

(assert (=> b!124774 t!6052))

(declare-fun b_and!7681 () Bool)

(assert (= b_and!7669 (and (=> t!6052 result!3817) b_and!7681)))

(assert (=> b!124774 t!6054))

(declare-fun b_and!7683 () Bool)

(assert (= b_and!7671 (and (=> t!6054 result!3821) b_and!7683)))

(declare-fun m!144807 () Bool)

(assert (=> b!124782 m!144807))

(declare-fun m!144809 () Bool)

(assert (=> bm!13360 m!144809))

(declare-fun m!144811 () Bool)

(assert (=> b!124772 m!144811))

(assert (=> b!124772 m!144811))

(declare-fun m!144813 () Bool)

(assert (=> b!124772 m!144813))

(declare-fun m!144815 () Bool)

(assert (=> bm!13356 m!144815))

(declare-fun m!144817 () Bool)

(assert (=> b!124775 m!144817))

(assert (=> d!37357 m!144673))

(declare-fun m!144819 () Bool)

(assert (=> bm!13358 m!144819))

(declare-fun m!144821 () Bool)

(assert (=> b!124781 m!144821))

(declare-fun m!144823 () Bool)

(assert (=> b!124774 m!144823))

(assert (=> b!124774 m!144679))

(declare-fun m!144825 () Bool)

(assert (=> b!124774 m!144825))

(assert (=> b!124774 m!144811))

(declare-fun m!144827 () Bool)

(assert (=> b!124774 m!144827))

(assert (=> b!124774 m!144679))

(assert (=> b!124774 m!144823))

(assert (=> b!124774 m!144811))

(declare-fun m!144829 () Bool)

(assert (=> bm!13357 m!144829))

(declare-fun m!144831 () Bool)

(assert (=> b!124790 m!144831))

(declare-fun m!144833 () Bool)

(assert (=> b!124790 m!144833))

(declare-fun m!144835 () Bool)

(assert (=> b!124790 m!144835))

(declare-fun m!144837 () Bool)

(assert (=> b!124790 m!144837))

(declare-fun m!144839 () Bool)

(assert (=> b!124790 m!144839))

(declare-fun m!144841 () Bool)

(assert (=> b!124790 m!144841))

(assert (=> b!124790 m!144833))

(declare-fun m!144843 () Bool)

(assert (=> b!124790 m!144843))

(assert (=> b!124790 m!144835))

(assert (=> b!124790 m!144841))

(declare-fun m!144845 () Bool)

(assert (=> b!124790 m!144845))

(declare-fun m!144847 () Bool)

(assert (=> b!124790 m!144847))

(declare-fun m!144849 () Bool)

(assert (=> b!124790 m!144849))

(assert (=> b!124790 m!144811))

(declare-fun m!144851 () Bool)

(assert (=> b!124790 m!144851))

(declare-fun m!144853 () Bool)

(assert (=> b!124790 m!144853))

(assert (=> b!124790 m!144819))

(assert (=> b!124790 m!144831))

(declare-fun m!144855 () Bool)

(assert (=> b!124790 m!144855))

(declare-fun m!144857 () Bool)

(assert (=> b!124790 m!144857))

(declare-fun m!144859 () Bool)

(assert (=> b!124790 m!144859))

(assert (=> b!124780 m!144811))

(assert (=> b!124780 m!144811))

(declare-fun m!144861 () Bool)

(assert (=> b!124780 m!144861))

(assert (=> b!124783 m!144811))

(assert (=> b!124783 m!144811))

(assert (=> b!124783 m!144813))

(assert (=> b!124507 d!37357))

(declare-fun mapNonEmpty!4483 () Bool)

(declare-fun mapRes!4483 () Bool)

(declare-fun tp!10927 () Bool)

(declare-fun e!81579 () Bool)

(assert (=> mapNonEmpty!4483 (= mapRes!4483 (and tp!10927 e!81579))))

(declare-fun mapKey!4483 () (_ BitVec 32))

(declare-fun mapValue!4483 () ValueCell!1074)

(declare-fun mapRest!4483 () (Array (_ BitVec 32) ValueCell!1074))

(assert (=> mapNonEmpty!4483 (= mapRest!4473 (store mapRest!4483 mapKey!4483 mapValue!4483))))

(declare-fun mapIsEmpty!4483 () Bool)

(assert (=> mapIsEmpty!4483 mapRes!4483))

(declare-fun b!124797 () Bool)

(assert (=> b!124797 (= e!81579 tp_is_empty!2835)))

(declare-fun condMapEmpty!4483 () Bool)

(declare-fun mapDefault!4483 () ValueCell!1074)

(assert (=> mapNonEmpty!4473 (= condMapEmpty!4483 (= mapRest!4473 ((as const (Array (_ BitVec 32) ValueCell!1074)) mapDefault!4483)))))

(declare-fun e!81578 () Bool)

(assert (=> mapNonEmpty!4473 (= tp!10909 (and e!81578 mapRes!4483))))

(declare-fun b!124798 () Bool)

(assert (=> b!124798 (= e!81578 tp_is_empty!2835)))

(assert (= (and mapNonEmpty!4473 condMapEmpty!4483) mapIsEmpty!4483))

(assert (= (and mapNonEmpty!4473 (not condMapEmpty!4483)) mapNonEmpty!4483))

(assert (= (and mapNonEmpty!4483 ((_ is ValueCellFull!1074) mapValue!4483)) b!124797))

(assert (= (and mapNonEmpty!4473 ((_ is ValueCellFull!1074) mapDefault!4483)) b!124798))

(declare-fun m!144863 () Bool)

(assert (=> mapNonEmpty!4483 m!144863))

(declare-fun mapNonEmpty!4484 () Bool)

(declare-fun mapRes!4484 () Bool)

(declare-fun tp!10928 () Bool)

(declare-fun e!81581 () Bool)

(assert (=> mapNonEmpty!4484 (= mapRes!4484 (and tp!10928 e!81581))))

(declare-fun mapKey!4484 () (_ BitVec 32))

(declare-fun mapValue!4484 () ValueCell!1074)

(declare-fun mapRest!4484 () (Array (_ BitVec 32) ValueCell!1074))

(assert (=> mapNonEmpty!4484 (= mapRest!4474 (store mapRest!4484 mapKey!4484 mapValue!4484))))

(declare-fun mapIsEmpty!4484 () Bool)

(assert (=> mapIsEmpty!4484 mapRes!4484))

(declare-fun b!124799 () Bool)

(assert (=> b!124799 (= e!81581 tp_is_empty!2835)))

(declare-fun condMapEmpty!4484 () Bool)

(declare-fun mapDefault!4484 () ValueCell!1074)

(assert (=> mapNonEmpty!4474 (= condMapEmpty!4484 (= mapRest!4474 ((as const (Array (_ BitVec 32) ValueCell!1074)) mapDefault!4484)))))

(declare-fun e!81580 () Bool)

(assert (=> mapNonEmpty!4474 (= tp!10910 (and e!81580 mapRes!4484))))

(declare-fun b!124800 () Bool)

(assert (=> b!124800 (= e!81580 tp_is_empty!2835)))

(assert (= (and mapNonEmpty!4474 condMapEmpty!4484) mapIsEmpty!4484))

(assert (= (and mapNonEmpty!4474 (not condMapEmpty!4484)) mapNonEmpty!4484))

(assert (= (and mapNonEmpty!4484 ((_ is ValueCellFull!1074) mapValue!4484)) b!124799))

(assert (= (and mapNonEmpty!4474 ((_ is ValueCellFull!1074) mapDefault!4484)) b!124800))

(declare-fun m!144865 () Bool)

(assert (=> mapNonEmpty!4484 m!144865))

(declare-fun b_lambda!5497 () Bool)

(assert (= b_lambda!5495 (or (and b!124522 b_free!2837) (and b!124506 b_free!2839 (= (defaultEntry!2764 newMap!16) (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))))) b_lambda!5497)))

(check-sat (not b!124775) (not bm!13336) (not b!124707) (not b!124721) (not bm!13324) (not d!37339) (not b!124712) (not b!124585) (not d!37345) (not b!124684) (not b!124584) (not b!124595) (not bm!13357) (not bm!13358) (not b_lambda!5497) (not mapNonEmpty!4483) (not d!37343) (not bm!13322) (not b_next!2839) b_and!7683 (not b!124711) (not b!124700) (not b!124727) (not bm!13316) (not b!124774) (not b!124719) (not b!124790) (not b_next!2837) (not bm!13327) (not d!37341) (not bm!13329) (not bm!13338) (not bm!13325) (not b!124783) (not b_lambda!5493) (not b!124781) (not b!124593) (not d!37355) (not mapNonEmpty!4484) tp_is_empty!2835 (not d!37357) (not b!124780) (not bm!13335) (not b!124586) (not bm!13319) (not b!124772) (not bm!13360) (not b!124782) (not b!124726) (not bm!13334) (not bm!13356) (not bm!13339) b_and!7681 (not b!124682))
(check-sat b_and!7681 b_and!7683 (not b_next!2837) (not b_next!2839))
(get-model)

(declare-fun d!37359 () Bool)

(declare-fun isEmpty!398 (Option!171) Bool)

(assert (=> d!37359 (= (isDefined!119 (getValueByKey!165 (toList!856 lt!64030) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))) (not (isEmpty!398 (getValueByKey!165 (toList!856 lt!64030) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))))

(declare-fun bs!5151 () Bool)

(assert (= bs!5151 d!37359))

(assert (=> bs!5151 m!144743))

(declare-fun m!144867 () Bool)

(assert (=> bs!5151 m!144867))

(assert (=> b!124595 d!37359))

(declare-fun b!124809 () Bool)

(declare-fun e!81586 () Option!171)

(assert (=> b!124809 (= e!81586 (Some!170 (_2!1290 (h!2313 (toList!856 lt!64030)))))))

(declare-fun b!124812 () Bool)

(declare-fun e!81587 () Option!171)

(assert (=> b!124812 (= e!81587 None!169)))

(declare-fun b!124810 () Bool)

(assert (=> b!124810 (= e!81586 e!81587)))

(declare-fun c!22703 () Bool)

(assert (=> b!124810 (= c!22703 (and ((_ is Cons!1712) (toList!856 lt!64030)) (not (= (_1!1290 (h!2313 (toList!856 lt!64030))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))))

(declare-fun b!124811 () Bool)

(assert (=> b!124811 (= e!81587 (getValueByKey!165 (t!6055 (toList!856 lt!64030)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun c!22702 () Bool)

(declare-fun d!37361 () Bool)

(assert (=> d!37361 (= c!22702 (and ((_ is Cons!1712) (toList!856 lt!64030)) (= (_1!1290 (h!2313 (toList!856 lt!64030))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))))))

(assert (=> d!37361 (= (getValueByKey!165 (toList!856 lt!64030) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) e!81586)))

(assert (= (and d!37361 c!22702) b!124809))

(assert (= (and d!37361 (not c!22702)) b!124810))

(assert (= (and b!124810 c!22703) b!124811))

(assert (= (and b!124810 (not c!22703)) b!124812))

(assert (=> b!124811 m!144661))

(declare-fun m!144869 () Bool)

(assert (=> b!124811 m!144869))

(assert (=> b!124595 d!37361))

(declare-fun d!37363 () Bool)

(declare-fun e!81590 () Bool)

(assert (=> d!37363 e!81590))

(declare-fun res!60451 () Bool)

(assert (=> d!37363 (=> (not res!60451) (not e!81590))))

(declare-fun lt!64207 () ListLongMap!1681)

(assert (=> d!37363 (= res!60451 (contains!873 lt!64207 (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun lt!64209 () List!1716)

(assert (=> d!37363 (= lt!64207 (ListLongMap!1682 lt!64209))))

(declare-fun lt!64210 () Unit!3878)

(declare-fun lt!64208 () Unit!3878)

(assert (=> d!37363 (= lt!64210 lt!64208)))

(assert (=> d!37363 (= (getValueByKey!165 lt!64209 (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) (Some!170 (_2!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!82 (List!1716 (_ BitVec 64) V!3427) Unit!3878)

(assert (=> d!37363 (= lt!64208 (lemmaContainsTupThenGetReturnValue!82 lt!64209 (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun insertStrictlySorted!84 (List!1716 (_ BitVec 64) V!3427) List!1716)

(assert (=> d!37363 (= lt!64209 (insertStrictlySorted!84 (toList!856 lt!64180) (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> d!37363 (= (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64207)))

(declare-fun b!124817 () Bool)

(declare-fun res!60452 () Bool)

(assert (=> b!124817 (=> (not res!60452) (not e!81590))))

(assert (=> b!124817 (= res!60452 (= (getValueByKey!165 (toList!856 lt!64207) (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) (Some!170 (_2!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun b!124818 () Bool)

(declare-fun contains!874 (List!1716 tuple2!2560) Bool)

(assert (=> b!124818 (= e!81590 (contains!874 (toList!856 lt!64207) (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))

(assert (= (and d!37363 res!60451) b!124817))

(assert (= (and b!124817 res!60452) b!124818))

(declare-fun m!144871 () Bool)

(assert (=> d!37363 m!144871))

(declare-fun m!144873 () Bool)

(assert (=> d!37363 m!144873))

(declare-fun m!144875 () Bool)

(assert (=> d!37363 m!144875))

(declare-fun m!144877 () Bool)

(assert (=> d!37363 m!144877))

(declare-fun m!144879 () Bool)

(assert (=> b!124817 m!144879))

(declare-fun m!144881 () Bool)

(assert (=> b!124818 m!144881))

(assert (=> b!124790 d!37363))

(declare-fun d!37365 () Bool)

(declare-fun e!81591 () Bool)

(assert (=> d!37365 e!81591))

(declare-fun res!60453 () Bool)

(assert (=> d!37365 (=> (not res!60453) (not e!81591))))

(declare-fun lt!64211 () ListLongMap!1681)

(assert (=> d!37365 (= res!60453 (contains!873 lt!64211 (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun lt!64213 () List!1716)

(assert (=> d!37365 (= lt!64211 (ListLongMap!1682 lt!64213))))

(declare-fun lt!64214 () Unit!3878)

(declare-fun lt!64212 () Unit!3878)

(assert (=> d!37365 (= lt!64214 lt!64212)))

(assert (=> d!37365 (= (getValueByKey!165 lt!64213 (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) (Some!170 (_2!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> d!37365 (= lt!64212 (lemmaContainsTupThenGetReturnValue!82 lt!64213 (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> d!37365 (= lt!64213 (insertStrictlySorted!84 (toList!856 lt!64198) (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> d!37365 (= (+!164 lt!64198 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64211)))

(declare-fun b!124819 () Bool)

(declare-fun res!60454 () Bool)

(assert (=> b!124819 (=> (not res!60454) (not e!81591))))

(assert (=> b!124819 (= res!60454 (= (getValueByKey!165 (toList!856 lt!64211) (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) (Some!170 (_2!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun b!124820 () Bool)

(assert (=> b!124820 (= e!81591 (contains!874 (toList!856 lt!64211) (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))

(assert (= (and d!37365 res!60453) b!124819))

(assert (= (and b!124819 res!60454) b!124820))

(declare-fun m!144883 () Bool)

(assert (=> d!37365 m!144883))

(declare-fun m!144885 () Bool)

(assert (=> d!37365 m!144885))

(declare-fun m!144887 () Bool)

(assert (=> d!37365 m!144887))

(declare-fun m!144889 () Bool)

(assert (=> d!37365 m!144889))

(declare-fun m!144891 () Bool)

(assert (=> b!124819 m!144891))

(declare-fun m!144893 () Bool)

(assert (=> b!124820 m!144893))

(assert (=> b!124790 d!37365))

(declare-fun d!37367 () Bool)

(declare-fun get!1448 (Option!171) V!3427)

(assert (=> d!37367 (= (apply!110 lt!64194 lt!64184) (get!1448 (getValueByKey!165 (toList!856 lt!64194) lt!64184)))))

(declare-fun bs!5152 () Bool)

(assert (= bs!5152 d!37367))

(declare-fun m!144895 () Bool)

(assert (=> bs!5152 m!144895))

(assert (=> bs!5152 m!144895))

(declare-fun m!144897 () Bool)

(assert (=> bs!5152 m!144897))

(assert (=> b!124790 d!37367))

(declare-fun d!37369 () Bool)

(assert (=> d!37369 (= (apply!110 (+!164 lt!64194 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64184) (get!1448 (getValueByKey!165 (toList!856 (+!164 lt!64194 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64184)))))

(declare-fun bs!5153 () Bool)

(assert (= bs!5153 d!37369))

(declare-fun m!144899 () Bool)

(assert (=> bs!5153 m!144899))

(assert (=> bs!5153 m!144899))

(declare-fun m!144901 () Bool)

(assert (=> bs!5153 m!144901))

(assert (=> b!124790 d!37369))

(declare-fun d!37371 () Bool)

(assert (=> d!37371 (= (apply!110 (+!164 lt!64186 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64182) (get!1448 (getValueByKey!165 (toList!856 (+!164 lt!64186 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64182)))))

(declare-fun bs!5154 () Bool)

(assert (= bs!5154 d!37371))

(declare-fun m!144903 () Bool)

(assert (=> bs!5154 m!144903))

(assert (=> bs!5154 m!144903))

(declare-fun m!144905 () Bool)

(assert (=> bs!5154 m!144905))

(assert (=> b!124790 d!37371))

(declare-fun d!37373 () Bool)

(declare-fun e!81592 () Bool)

(assert (=> d!37373 e!81592))

(declare-fun res!60455 () Bool)

(assert (=> d!37373 (=> (not res!60455) (not e!81592))))

(declare-fun lt!64215 () ListLongMap!1681)

(assert (=> d!37373 (= res!60455 (contains!873 lt!64215 (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun lt!64217 () List!1716)

(assert (=> d!37373 (= lt!64215 (ListLongMap!1682 lt!64217))))

(declare-fun lt!64218 () Unit!3878)

(declare-fun lt!64216 () Unit!3878)

(assert (=> d!37373 (= lt!64218 lt!64216)))

(assert (=> d!37373 (= (getValueByKey!165 lt!64217 (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) (Some!170 (_2!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> d!37373 (= lt!64216 (lemmaContainsTupThenGetReturnValue!82 lt!64217 (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> d!37373 (= lt!64217 (insertStrictlySorted!84 (toList!856 lt!64194) (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> d!37373 (= (+!164 lt!64194 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64215)))

(declare-fun b!124821 () Bool)

(declare-fun res!60456 () Bool)

(assert (=> b!124821 (=> (not res!60456) (not e!81592))))

(assert (=> b!124821 (= res!60456 (= (getValueByKey!165 (toList!856 lt!64215) (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) (Some!170 (_2!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun b!124822 () Bool)

(assert (=> b!124822 (= e!81592 (contains!874 (toList!856 lt!64215) (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))

(assert (= (and d!37373 res!60455) b!124821))

(assert (= (and b!124821 res!60456) b!124822))

(declare-fun m!144907 () Bool)

(assert (=> d!37373 m!144907))

(declare-fun m!144909 () Bool)

(assert (=> d!37373 m!144909))

(declare-fun m!144911 () Bool)

(assert (=> d!37373 m!144911))

(declare-fun m!144913 () Bool)

(assert (=> d!37373 m!144913))

(declare-fun m!144915 () Bool)

(assert (=> b!124821 m!144915))

(declare-fun m!144917 () Bool)

(assert (=> b!124822 m!144917))

(assert (=> b!124790 d!37373))

(declare-fun d!37375 () Bool)

(assert (=> d!37375 (= (apply!110 lt!64198 lt!64183) (get!1448 (getValueByKey!165 (toList!856 lt!64198) lt!64183)))))

(declare-fun bs!5155 () Bool)

(assert (= bs!5155 d!37375))

(declare-fun m!144919 () Bool)

(assert (=> bs!5155 m!144919))

(assert (=> bs!5155 m!144919))

(declare-fun m!144921 () Bool)

(assert (=> bs!5155 m!144921))

(assert (=> b!124790 d!37375))

(declare-fun d!37377 () Bool)

(assert (=> d!37377 (= (apply!110 (+!164 lt!64194 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64184) (apply!110 lt!64194 lt!64184))))

(declare-fun lt!64221 () Unit!3878)

(declare-fun choose!755 (ListLongMap!1681 (_ BitVec 64) V!3427 (_ BitVec 64)) Unit!3878)

(assert (=> d!37377 (= lt!64221 (choose!755 lt!64194 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))) lt!64184))))

(declare-fun e!81595 () Bool)

(assert (=> d!37377 e!81595))

(declare-fun res!60459 () Bool)

(assert (=> d!37377 (=> (not res!60459) (not e!81595))))

(assert (=> d!37377 (= res!60459 (contains!873 lt!64194 lt!64184))))

(assert (=> d!37377 (= (addApplyDifferent!86 lt!64194 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))) lt!64184) lt!64221)))

(declare-fun b!124826 () Bool)

(assert (=> b!124826 (= e!81595 (not (= lt!64184 lt!64185)))))

(assert (= (and d!37377 res!60459) b!124826))

(declare-fun m!144923 () Bool)

(assert (=> d!37377 m!144923))

(declare-fun m!144925 () Bool)

(assert (=> d!37377 m!144925))

(assert (=> d!37377 m!144831))

(assert (=> d!37377 m!144855))

(assert (=> d!37377 m!144831))

(assert (=> d!37377 m!144857))

(assert (=> b!124790 d!37377))

(declare-fun d!37379 () Bool)

(assert (=> d!37379 (= (apply!110 (+!164 lt!64198 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64183) (get!1448 (getValueByKey!165 (toList!856 (+!164 lt!64198 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64183)))))

(declare-fun bs!5156 () Bool)

(assert (= bs!5156 d!37379))

(declare-fun m!144927 () Bool)

(assert (=> bs!5156 m!144927))

(assert (=> bs!5156 m!144927))

(declare-fun m!144929 () Bool)

(assert (=> bs!5156 m!144929))

(assert (=> b!124790 d!37379))

(declare-fun d!37381 () Bool)

(assert (=> d!37381 (= (apply!110 (+!164 lt!64198 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64183) (apply!110 lt!64198 lt!64183))))

(declare-fun lt!64222 () Unit!3878)

(assert (=> d!37381 (= lt!64222 (choose!755 lt!64198 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))) lt!64183))))

(declare-fun e!81596 () Bool)

(assert (=> d!37381 e!81596))

(declare-fun res!60460 () Bool)

(assert (=> d!37381 (=> (not res!60460) (not e!81596))))

(assert (=> d!37381 (= res!60460 (contains!873 lt!64198 lt!64183))))

(assert (=> d!37381 (= (addApplyDifferent!86 lt!64198 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))) lt!64183) lt!64222)))

(declare-fun b!124827 () Bool)

(assert (=> b!124827 (= e!81596 (not (= lt!64183 lt!64189)))))

(assert (= (and d!37381 res!60460) b!124827))

(declare-fun m!144931 () Bool)

(assert (=> d!37381 m!144931))

(declare-fun m!144933 () Bool)

(assert (=> d!37381 m!144933))

(assert (=> d!37381 m!144835))

(assert (=> d!37381 m!144837))

(assert (=> d!37381 m!144835))

(assert (=> d!37381 m!144849))

(assert (=> b!124790 d!37381))

(declare-fun d!37383 () Bool)

(assert (=> d!37383 (= (apply!110 (+!164 lt!64186 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64182) (apply!110 lt!64186 lt!64182))))

(declare-fun lt!64223 () Unit!3878)

(assert (=> d!37383 (= lt!64223 (choose!755 lt!64186 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))) lt!64182))))

(declare-fun e!81597 () Bool)

(assert (=> d!37383 e!81597))

(declare-fun res!60461 () Bool)

(assert (=> d!37383 (=> (not res!60461) (not e!81597))))

(assert (=> d!37383 (= res!60461 (contains!873 lt!64186 lt!64182))))

(assert (=> d!37383 (= (addApplyDifferent!86 lt!64186 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))) lt!64182) lt!64223)))

(declare-fun b!124828 () Bool)

(assert (=> b!124828 (= e!81597 (not (= lt!64182 lt!64195)))))

(assert (= (and d!37383 res!60461) b!124828))

(declare-fun m!144935 () Bool)

(assert (=> d!37383 m!144935))

(declare-fun m!144937 () Bool)

(assert (=> d!37383 m!144937))

(assert (=> d!37383 m!144841))

(assert (=> d!37383 m!144845))

(assert (=> d!37383 m!144841))

(assert (=> d!37383 m!144839))

(assert (=> b!124790 d!37383))

(declare-fun b!124853 () Bool)

(declare-fun res!60471 () Bool)

(declare-fun e!81613 () Bool)

(assert (=> b!124853 (=> (not res!60471) (not e!81613))))

(declare-fun lt!64241 () ListLongMap!1681)

(assert (=> b!124853 (= res!60471 (not (contains!873 lt!64241 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!124854 () Bool)

(declare-fun lt!64240 () Unit!3878)

(declare-fun lt!64238 () Unit!3878)

(assert (=> b!124854 (= lt!64240 lt!64238)))

(declare-fun lt!64242 () (_ BitVec 64))

(declare-fun lt!64243 () V!3427)

(declare-fun lt!64239 () (_ BitVec 64))

(declare-fun lt!64244 () ListLongMap!1681)

(assert (=> b!124854 (not (contains!873 (+!164 lt!64244 (tuple2!2561 lt!64239 lt!64243)) lt!64242))))

(declare-fun addStillNotContains!57 (ListLongMap!1681 (_ BitVec 64) V!3427 (_ BitVec 64)) Unit!3878)

(assert (=> b!124854 (= lt!64238 (addStillNotContains!57 lt!64244 lt!64239 lt!64243 lt!64242))))

(assert (=> b!124854 (= lt!64242 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!124854 (= lt!64243 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!124854 (= lt!64239 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun call!13366 () ListLongMap!1681)

(assert (=> b!124854 (= lt!64244 call!13366)))

(declare-fun e!81616 () ListLongMap!1681)

(assert (=> b!124854 (= e!81616 (+!164 call!13366 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!13363 () Bool)

(assert (=> bm!13363 (= call!13366 (getCurrentListMapNoExtraKeys!131 (_keys!4493 (v!3106 (underlying!435 thiss!992))) (_values!2747 (v!3106 (underlying!435 thiss!992))) (mask!7010 (v!3106 (underlying!435 thiss!992))) (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) (zeroValue!2629 (v!3106 (underlying!435 thiss!992))) (minValue!2629 (v!3106 (underlying!435 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2764 (v!3106 (underlying!435 thiss!992)))))))

(declare-fun b!124855 () Bool)

(declare-fun e!81614 () ListLongMap!1681)

(assert (=> b!124855 (= e!81614 (ListLongMap!1682 Nil!1713))))

(declare-fun b!124856 () Bool)

(declare-fun e!81612 () Bool)

(assert (=> b!124856 (= e!81612 (= lt!64241 (getCurrentListMapNoExtraKeys!131 (_keys!4493 (v!3106 (underlying!435 thiss!992))) (_values!2747 (v!3106 (underlying!435 thiss!992))) (mask!7010 (v!3106 (underlying!435 thiss!992))) (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) (zeroValue!2629 (v!3106 (underlying!435 thiss!992))) (minValue!2629 (v!3106 (underlying!435 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun d!37385 () Bool)

(assert (=> d!37385 e!81613))

(declare-fun res!60473 () Bool)

(assert (=> d!37385 (=> (not res!60473) (not e!81613))))

(assert (=> d!37385 (= res!60473 (not (contains!873 lt!64241 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!37385 (= lt!64241 e!81614)))

(declare-fun c!22714 () Bool)

(assert (=> d!37385 (= c!22714 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))))))

(assert (=> d!37385 (validMask!0 (mask!7010 (v!3106 (underlying!435 thiss!992))))))

(assert (=> d!37385 (= (getCurrentListMapNoExtraKeys!131 (_keys!4493 (v!3106 (underlying!435 thiss!992))) (_values!2747 (v!3106 (underlying!435 thiss!992))) (mask!7010 (v!3106 (underlying!435 thiss!992))) (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) (zeroValue!2629 (v!3106 (underlying!435 thiss!992))) (minValue!2629 (v!3106 (underlying!435 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2764 (v!3106 (underlying!435 thiss!992)))) lt!64241)))

(declare-fun b!124857 () Bool)

(assert (=> b!124857 (= e!81614 e!81616)))

(declare-fun c!22715 () Bool)

(assert (=> b!124857 (= c!22715 (validKeyInArray!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!124858 () Bool)

(declare-fun e!81617 () Bool)

(declare-fun e!81615 () Bool)

(assert (=> b!124858 (= e!81617 e!81615)))

(assert (=> b!124858 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun res!60472 () Bool)

(assert (=> b!124858 (= res!60472 (contains!873 lt!64241 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!124858 (=> (not res!60472) (not e!81615))))

(declare-fun b!124859 () Bool)

(declare-fun isEmpty!399 (ListLongMap!1681) Bool)

(assert (=> b!124859 (= e!81612 (isEmpty!399 lt!64241))))

(declare-fun b!124860 () Bool)

(assert (=> b!124860 (= e!81613 e!81617)))

(declare-fun c!22713 () Bool)

(declare-fun e!81618 () Bool)

(assert (=> b!124860 (= c!22713 e!81618)))

(declare-fun res!60470 () Bool)

(assert (=> b!124860 (=> (not res!60470) (not e!81618))))

(assert (=> b!124860 (= res!60470 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun b!124861 () Bool)

(assert (=> b!124861 (= e!81618 (validKeyInArray!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!124861 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!124862 () Bool)

(assert (=> b!124862 (= e!81617 e!81612)))

(declare-fun c!22712 () Bool)

(assert (=> b!124862 (= c!22712 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun b!124863 () Bool)

(assert (=> b!124863 (= e!81616 call!13366)))

(declare-fun b!124864 () Bool)

(assert (=> b!124864 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))))))

(assert (=> b!124864 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2482 (_values!2747 (v!3106 (underlying!435 thiss!992))))))))

(assert (=> b!124864 (= e!81615 (= (apply!110 lt!64241 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!37385 c!22714) b!124855))

(assert (= (and d!37385 (not c!22714)) b!124857))

(assert (= (and b!124857 c!22715) b!124854))

(assert (= (and b!124857 (not c!22715)) b!124863))

(assert (= (or b!124854 b!124863) bm!13363))

(assert (= (and d!37385 res!60473) b!124853))

(assert (= (and b!124853 res!60471) b!124860))

(assert (= (and b!124860 res!60470) b!124861))

(assert (= (and b!124860 c!22713) b!124858))

(assert (= (and b!124860 (not c!22713)) b!124862))

(assert (= (and b!124858 res!60472) b!124864))

(assert (= (and b!124862 c!22712) b!124856))

(assert (= (and b!124862 (not c!22712)) b!124859))

(declare-fun b_lambda!5499 () Bool)

(assert (=> (not b_lambda!5499) (not b!124854)))

(assert (=> b!124854 t!6052))

(declare-fun b_and!7685 () Bool)

(assert (= b_and!7681 (and (=> t!6052 result!3817) b_and!7685)))

(assert (=> b!124854 t!6054))

(declare-fun b_and!7687 () Bool)

(assert (= b_and!7683 (and (=> t!6054 result!3821) b_and!7687)))

(declare-fun b_lambda!5501 () Bool)

(assert (=> (not b_lambda!5501) (not b!124864)))

(assert (=> b!124864 t!6052))

(declare-fun b_and!7689 () Bool)

(assert (= b_and!7685 (and (=> t!6052 result!3817) b_and!7689)))

(assert (=> b!124864 t!6054))

(declare-fun b_and!7691 () Bool)

(assert (= b_and!7687 (and (=> t!6054 result!3821) b_and!7691)))

(assert (=> b!124858 m!144811))

(assert (=> b!124858 m!144811))

(declare-fun m!144939 () Bool)

(assert (=> b!124858 m!144939))

(assert (=> b!124864 m!144811))

(assert (=> b!124864 m!144823))

(assert (=> b!124864 m!144679))

(assert (=> b!124864 m!144825))

(assert (=> b!124864 m!144811))

(declare-fun m!144941 () Bool)

(assert (=> b!124864 m!144941))

(assert (=> b!124864 m!144679))

(assert (=> b!124864 m!144823))

(declare-fun m!144943 () Bool)

(assert (=> b!124854 m!144943))

(declare-fun m!144945 () Bool)

(assert (=> b!124854 m!144945))

(declare-fun m!144947 () Bool)

(assert (=> b!124854 m!144947))

(assert (=> b!124854 m!144823))

(assert (=> b!124854 m!144679))

(assert (=> b!124854 m!144825))

(assert (=> b!124854 m!144811))

(assert (=> b!124854 m!144947))

(declare-fun m!144949 () Bool)

(assert (=> b!124854 m!144949))

(assert (=> b!124854 m!144679))

(assert (=> b!124854 m!144823))

(declare-fun m!144951 () Bool)

(assert (=> b!124856 m!144951))

(assert (=> b!124861 m!144811))

(assert (=> b!124861 m!144811))

(assert (=> b!124861 m!144813))

(declare-fun m!144953 () Bool)

(assert (=> b!124859 m!144953))

(declare-fun m!144955 () Bool)

(assert (=> d!37385 m!144955))

(assert (=> d!37385 m!144673))

(assert (=> bm!13363 m!144951))

(assert (=> b!124857 m!144811))

(assert (=> b!124857 m!144811))

(assert (=> b!124857 m!144813))

(declare-fun m!144957 () Bool)

(assert (=> b!124853 m!144957))

(assert (=> b!124790 d!37385))

(declare-fun d!37387 () Bool)

(assert (=> d!37387 (= (apply!110 lt!64186 lt!64182) (get!1448 (getValueByKey!165 (toList!856 lt!64186) lt!64182)))))

(declare-fun bs!5157 () Bool)

(assert (= bs!5157 d!37387))

(declare-fun m!144959 () Bool)

(assert (=> bs!5157 m!144959))

(assert (=> bs!5157 m!144959))

(declare-fun m!144961 () Bool)

(assert (=> bs!5157 m!144961))

(assert (=> b!124790 d!37387))

(declare-fun d!37389 () Bool)

(assert (=> d!37389 (contains!873 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64193)))

(declare-fun lt!64247 () Unit!3878)

(declare-fun choose!756 (ListLongMap!1681 (_ BitVec 64) V!3427 (_ BitVec 64)) Unit!3878)

(assert (=> d!37389 (= lt!64247 (choose!756 lt!64180 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))) lt!64193))))

(assert (=> d!37389 (contains!873 lt!64180 lt!64193)))

(assert (=> d!37389 (= (addStillContains!86 lt!64180 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))) lt!64193) lt!64247)))

(declare-fun bs!5158 () Bool)

(assert (= bs!5158 d!37389))

(assert (=> bs!5158 m!144833))

(assert (=> bs!5158 m!144833))

(assert (=> bs!5158 m!144843))

(declare-fun m!144963 () Bool)

(assert (=> bs!5158 m!144963))

(declare-fun m!144965 () Bool)

(assert (=> bs!5158 m!144965))

(assert (=> b!124790 d!37389))

(declare-fun d!37391 () Bool)

(declare-fun e!81620 () Bool)

(assert (=> d!37391 e!81620))

(declare-fun res!60474 () Bool)

(assert (=> d!37391 (=> res!60474 e!81620)))

(declare-fun lt!64248 () Bool)

(assert (=> d!37391 (= res!60474 (not lt!64248))))

(declare-fun lt!64251 () Bool)

(assert (=> d!37391 (= lt!64248 lt!64251)))

(declare-fun lt!64249 () Unit!3878)

(declare-fun e!81619 () Unit!3878)

(assert (=> d!37391 (= lt!64249 e!81619)))

(declare-fun c!22716 () Bool)

(assert (=> d!37391 (= c!22716 lt!64251)))

(assert (=> d!37391 (= lt!64251 (containsKey!169 (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64193))))

(assert (=> d!37391 (= (contains!873 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64193) lt!64248)))

(declare-fun b!124866 () Bool)

(declare-fun lt!64250 () Unit!3878)

(assert (=> b!124866 (= e!81619 lt!64250)))

(assert (=> b!124866 (= lt!64250 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64193))))

(assert (=> b!124866 (isDefined!119 (getValueByKey!165 (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64193))))

(declare-fun b!124867 () Bool)

(declare-fun Unit!3884 () Unit!3878)

(assert (=> b!124867 (= e!81619 Unit!3884)))

(declare-fun b!124868 () Bool)

(assert (=> b!124868 (= e!81620 (isDefined!119 (getValueByKey!165 (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64193)))))

(assert (= (and d!37391 c!22716) b!124866))

(assert (= (and d!37391 (not c!22716)) b!124867))

(assert (= (and d!37391 (not res!60474)) b!124868))

(declare-fun m!144967 () Bool)

(assert (=> d!37391 m!144967))

(declare-fun m!144969 () Bool)

(assert (=> b!124866 m!144969))

(declare-fun m!144971 () Bool)

(assert (=> b!124866 m!144971))

(assert (=> b!124866 m!144971))

(declare-fun m!144973 () Bool)

(assert (=> b!124866 m!144973))

(assert (=> b!124868 m!144971))

(assert (=> b!124868 m!144971))

(assert (=> b!124868 m!144973))

(assert (=> b!124790 d!37391))

(declare-fun d!37393 () Bool)

(declare-fun e!81621 () Bool)

(assert (=> d!37393 e!81621))

(declare-fun res!60475 () Bool)

(assert (=> d!37393 (=> (not res!60475) (not e!81621))))

(declare-fun lt!64252 () ListLongMap!1681)

(assert (=> d!37393 (= res!60475 (contains!873 lt!64252 (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun lt!64254 () List!1716)

(assert (=> d!37393 (= lt!64252 (ListLongMap!1682 lt!64254))))

(declare-fun lt!64255 () Unit!3878)

(declare-fun lt!64253 () Unit!3878)

(assert (=> d!37393 (= lt!64255 lt!64253)))

(assert (=> d!37393 (= (getValueByKey!165 lt!64254 (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) (Some!170 (_2!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> d!37393 (= lt!64253 (lemmaContainsTupThenGetReturnValue!82 lt!64254 (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> d!37393 (= lt!64254 (insertStrictlySorted!84 (toList!856 lt!64186) (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> d!37393 (= (+!164 lt!64186 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64252)))

(declare-fun b!124869 () Bool)

(declare-fun res!60476 () Bool)

(assert (=> b!124869 (=> (not res!60476) (not e!81621))))

(assert (=> b!124869 (= res!60476 (= (getValueByKey!165 (toList!856 lt!64252) (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) (Some!170 (_2!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun b!124870 () Bool)

(assert (=> b!124870 (= e!81621 (contains!874 (toList!856 lt!64252) (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))

(assert (= (and d!37393 res!60475) b!124869))

(assert (= (and b!124869 res!60476) b!124870))

(declare-fun m!144975 () Bool)

(assert (=> d!37393 m!144975))

(declare-fun m!144977 () Bool)

(assert (=> d!37393 m!144977))

(declare-fun m!144979 () Bool)

(assert (=> d!37393 m!144979))

(declare-fun m!144981 () Bool)

(assert (=> d!37393 m!144981))

(declare-fun m!144983 () Bool)

(assert (=> b!124869 m!144983))

(declare-fun m!144985 () Bool)

(assert (=> b!124870 m!144985))

(assert (=> b!124790 d!37393))

(declare-fun d!37395 () Bool)

(assert (=> d!37395 (= (apply!110 lt!64187 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1448 (getValueByKey!165 (toList!856 lt!64187) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5159 () Bool)

(assert (= bs!5159 d!37395))

(declare-fun m!144987 () Bool)

(assert (=> bs!5159 m!144987))

(assert (=> bs!5159 m!144987))

(declare-fun m!144989 () Bool)

(assert (=> bs!5159 m!144989))

(assert (=> b!124775 d!37395))

(declare-fun d!37397 () Bool)

(declare-fun e!81623 () Bool)

(assert (=> d!37397 e!81623))

(declare-fun res!60477 () Bool)

(assert (=> d!37397 (=> res!60477 e!81623)))

(declare-fun lt!64256 () Bool)

(assert (=> d!37397 (= res!60477 (not lt!64256))))

(declare-fun lt!64259 () Bool)

(assert (=> d!37397 (= lt!64256 lt!64259)))

(declare-fun lt!64257 () Unit!3878)

(declare-fun e!81622 () Unit!3878)

(assert (=> d!37397 (= lt!64257 e!81622)))

(declare-fun c!22717 () Bool)

(assert (=> d!37397 (= c!22717 lt!64259)))

(assert (=> d!37397 (= lt!64259 (containsKey!169 (toList!856 lt!64187) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!37397 (= (contains!873 lt!64187 #b1000000000000000000000000000000000000000000000000000000000000000) lt!64256)))

(declare-fun b!124871 () Bool)

(declare-fun lt!64258 () Unit!3878)

(assert (=> b!124871 (= e!81622 lt!64258)))

(assert (=> b!124871 (= lt!64258 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64187) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!124871 (isDefined!119 (getValueByKey!165 (toList!856 lt!64187) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!124872 () Bool)

(declare-fun Unit!3885 () Unit!3878)

(assert (=> b!124872 (= e!81622 Unit!3885)))

(declare-fun b!124873 () Bool)

(assert (=> b!124873 (= e!81623 (isDefined!119 (getValueByKey!165 (toList!856 lt!64187) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37397 c!22717) b!124871))

(assert (= (and d!37397 (not c!22717)) b!124872))

(assert (= (and d!37397 (not res!60477)) b!124873))

(declare-fun m!144991 () Bool)

(assert (=> d!37397 m!144991))

(declare-fun m!144993 () Bool)

(assert (=> b!124871 m!144993))

(assert (=> b!124871 m!144987))

(assert (=> b!124871 m!144987))

(declare-fun m!144995 () Bool)

(assert (=> b!124871 m!144995))

(assert (=> b!124873 m!144987))

(assert (=> b!124873 m!144987))

(assert (=> b!124873 m!144995))

(assert (=> bm!13360 d!37397))

(declare-fun d!37399 () Bool)

(assert (=> d!37399 (= (apply!110 lt!64187 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1448 (getValueByKey!165 (toList!856 lt!64187) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!5160 () Bool)

(assert (= bs!5160 d!37399))

(assert (=> bs!5160 m!144811))

(declare-fun m!144997 () Bool)

(assert (=> bs!5160 m!144997))

(assert (=> bs!5160 m!144997))

(declare-fun m!144999 () Bool)

(assert (=> bs!5160 m!144999))

(assert (=> b!124774 d!37399))

(declare-fun d!37401 () Bool)

(declare-fun c!22718 () Bool)

(assert (=> d!37401 (= c!22718 ((_ is ValueCellFull!1074) (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!81624 () V!3427)

(assert (=> d!37401 (= (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!81624)))

(declare-fun b!124874 () Bool)

(assert (=> b!124874 (= e!81624 (get!1446 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!124875 () Bool)

(assert (=> b!124875 (= e!81624 (get!1447 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37401 c!22718) b!124874))

(assert (= (and d!37401 (not c!22718)) b!124875))

(assert (=> b!124874 m!144823))

(assert (=> b!124874 m!144679))

(declare-fun m!145001 () Bool)

(assert (=> b!124874 m!145001))

(assert (=> b!124875 m!144823))

(assert (=> b!124875 m!144679))

(declare-fun m!145003 () Bool)

(assert (=> b!124875 m!145003))

(assert (=> b!124774 d!37401))

(declare-fun d!37403 () Bool)

(assert (=> d!37403 (= (inRange!0 (ite c!22668 (ite c!22663 (index!3271 lt!64130) (ite c!22667 (index!3270 lt!64119) (index!3273 lt!64119))) (ite c!22664 (index!3271 lt!64128) (ite c!22674 (index!3270 lt!64132) (index!3273 lt!64132)))) (mask!7010 newMap!16)) (and (bvsge (ite c!22668 (ite c!22663 (index!3271 lt!64130) (ite c!22667 (index!3270 lt!64119) (index!3273 lt!64119))) (ite c!22664 (index!3271 lt!64128) (ite c!22674 (index!3270 lt!64132) (index!3273 lt!64132)))) #b00000000000000000000000000000000) (bvslt (ite c!22668 (ite c!22663 (index!3271 lt!64130) (ite c!22667 (index!3270 lt!64119) (index!3273 lt!64119))) (ite c!22664 (index!3271 lt!64128) (ite c!22674 (index!3270 lt!64132) (index!3273 lt!64132)))) (bvadd (mask!7010 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!13316 d!37403))

(declare-fun d!37405 () Bool)

(assert (=> d!37405 (= (+!164 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) lt!64124 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64262 () Unit!3878)

(declare-fun choose!757 (array!4684 array!4686 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3427 V!3427 V!3427 Int) Unit!3878)

(assert (=> d!37405 (= lt!64262 (choose!757 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) lt!64124 (zeroValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2629 newMap!16) (defaultEntry!2764 newMap!16)))))

(assert (=> d!37405 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37405 (= (lemmaChangeZeroKeyThenAddPairToListMap!55 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) lt!64124 (zeroValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2629 newMap!16) (defaultEntry!2764 newMap!16)) lt!64262)))

(declare-fun bs!5161 () Bool)

(assert (= bs!5161 d!37405))

(assert (=> bs!5161 m!144681))

(declare-fun m!145005 () Bool)

(assert (=> bs!5161 m!145005))

(assert (=> bs!5161 m!144781))

(declare-fun m!145007 () Bool)

(assert (=> bs!5161 m!145007))

(declare-fun m!145009 () Bool)

(assert (=> bs!5161 m!145009))

(assert (=> bs!5161 m!144781))

(assert (=> bs!5161 m!144681))

(declare-fun m!145011 () Bool)

(assert (=> bs!5161 m!145011))

(assert (=> b!124719 d!37405))

(declare-fun d!37407 () Bool)

(assert (=> d!37407 (= (+!164 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) lt!64107 (zeroValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64265 () Unit!3878)

(declare-fun choose!758 (array!4684 array!4686 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3427 V!3427 V!3427 Int) Unit!3878)

(assert (=> d!37407 (= lt!64265 (choose!758 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) lt!64107 (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2764 newMap!16)))))

(assert (=> d!37407 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37407 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!55 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) lt!64107 (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2764 newMap!16)) lt!64265)))

(declare-fun bs!5162 () Bool)

(assert (= bs!5162 d!37407))

(assert (=> bs!5162 m!144681))

(declare-fun m!145013 () Bool)

(assert (=> bs!5162 m!145013))

(assert (=> bs!5162 m!144681))

(declare-fun m!145015 () Bool)

(assert (=> bs!5162 m!145015))

(assert (=> bs!5162 m!144781))

(assert (=> bs!5162 m!144781))

(declare-fun m!145017 () Bool)

(assert (=> bs!5162 m!145017))

(assert (=> bs!5162 m!145009))

(assert (=> b!124721 d!37407))

(declare-fun d!37409 () Bool)

(declare-fun res!60482 () Bool)

(declare-fun e!81629 () Bool)

(assert (=> d!37409 (=> res!60482 e!81629)))

(assert (=> d!37409 (= res!60482 (and ((_ is Cons!1712) (toList!856 lt!64030)) (= (_1!1290 (h!2313 (toList!856 lt!64030))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))))))

(assert (=> d!37409 (= (containsKey!169 (toList!856 lt!64030) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) e!81629)))

(declare-fun b!124880 () Bool)

(declare-fun e!81630 () Bool)

(assert (=> b!124880 (= e!81629 e!81630)))

(declare-fun res!60483 () Bool)

(assert (=> b!124880 (=> (not res!60483) (not e!81630))))

(assert (=> b!124880 (= res!60483 (and (or (not ((_ is Cons!1712) (toList!856 lt!64030))) (bvsle (_1!1290 (h!2313 (toList!856 lt!64030))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))) ((_ is Cons!1712) (toList!856 lt!64030)) (bvslt (_1!1290 (h!2313 (toList!856 lt!64030))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))))))

(declare-fun b!124881 () Bool)

(assert (=> b!124881 (= e!81630 (containsKey!169 (t!6055 (toList!856 lt!64030)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (= (and d!37409 (not res!60482)) b!124880))

(assert (= (and b!124880 res!60483) b!124881))

(assert (=> b!124881 m!144661))

(declare-fun m!145019 () Bool)

(assert (=> b!124881 m!145019))

(assert (=> d!37343 d!37409))

(declare-fun d!37411 () Bool)

(declare-fun e!81632 () Bool)

(assert (=> d!37411 e!81632))

(declare-fun res!60484 () Bool)

(assert (=> d!37411 (=> res!60484 e!81632)))

(declare-fun lt!64266 () Bool)

(assert (=> d!37411 (= res!60484 (not lt!64266))))

(declare-fun lt!64269 () Bool)

(assert (=> d!37411 (= lt!64266 lt!64269)))

(declare-fun lt!64267 () Unit!3878)

(declare-fun e!81631 () Unit!3878)

(assert (=> d!37411 (= lt!64267 e!81631)))

(declare-fun c!22719 () Bool)

(assert (=> d!37411 (= c!22719 lt!64269)))

(assert (=> d!37411 (= lt!64269 (containsKey!169 (toList!856 call!13333) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122))))))

(assert (=> d!37411 (= (contains!873 call!13333 (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122))) lt!64266)))

(declare-fun b!124882 () Bool)

(declare-fun lt!64268 () Unit!3878)

(assert (=> b!124882 (= e!81631 lt!64268)))

(assert (=> b!124882 (= lt!64268 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 call!13333) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122))))))

(assert (=> b!124882 (isDefined!119 (getValueByKey!165 (toList!856 call!13333) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122))))))

(declare-fun b!124883 () Bool)

(declare-fun Unit!3886 () Unit!3878)

(assert (=> b!124883 (= e!81631 Unit!3886)))

(declare-fun b!124884 () Bool)

(assert (=> b!124884 (= e!81632 (isDefined!119 (getValueByKey!165 (toList!856 call!13333) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122)))))))

(assert (= (and d!37411 c!22719) b!124882))

(assert (= (and d!37411 (not c!22719)) b!124883))

(assert (= (and d!37411 (not res!60484)) b!124884))

(assert (=> d!37411 m!144767))

(declare-fun m!145021 () Bool)

(assert (=> d!37411 m!145021))

(assert (=> b!124882 m!144767))

(declare-fun m!145023 () Bool)

(assert (=> b!124882 m!145023))

(assert (=> b!124882 m!144767))

(declare-fun m!145025 () Bool)

(assert (=> b!124882 m!145025))

(assert (=> b!124882 m!145025))

(declare-fun m!145027 () Bool)

(assert (=> b!124882 m!145027))

(assert (=> b!124884 m!144767))

(assert (=> b!124884 m!145025))

(assert (=> b!124884 m!145025))

(assert (=> b!124884 m!145027))

(assert (=> b!124707 d!37411))

(declare-fun d!37413 () Bool)

(declare-fun e!81635 () Bool)

(assert (=> d!37413 e!81635))

(declare-fun res!60487 () Bool)

(assert (=> d!37413 (=> (not res!60487) (not e!81635))))

(assert (=> d!37413 (= res!60487 (and (bvsge (index!3271 lt!64122) #b00000000000000000000000000000000) (bvslt (index!3271 lt!64122) (size!2481 (_keys!4493 newMap!16)))))))

(declare-fun lt!64272 () Unit!3878)

(declare-fun choose!759 (array!4684 array!4686 (_ BitVec 32) (_ BitVec 32) V!3427 V!3427 (_ BitVec 32) Int) Unit!3878)

(assert (=> d!37413 (= lt!64272 (choose!759 (_keys!4493 newMap!16) lt!64129 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (index!3271 lt!64122) (defaultEntry!2764 newMap!16)))))

(assert (=> d!37413 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37413 (= (lemmaValidKeyInArrayIsInListMap!113 (_keys!4493 newMap!16) lt!64129 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (index!3271 lt!64122) (defaultEntry!2764 newMap!16)) lt!64272)))

(declare-fun b!124887 () Bool)

(assert (=> b!124887 (= e!81635 (contains!873 (getCurrentListMap!528 (_keys!4493 newMap!16) lt!64129 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122))))))

(assert (= (and d!37413 res!60487) b!124887))

(declare-fun m!145029 () Bool)

(assert (=> d!37413 m!145029))

(assert (=> d!37413 m!145009))

(declare-fun m!145031 () Bool)

(assert (=> b!124887 m!145031))

(assert (=> b!124887 m!144767))

(assert (=> b!124887 m!145031))

(assert (=> b!124887 m!144767))

(declare-fun m!145033 () Bool)

(assert (=> b!124887 m!145033))

(assert (=> b!124707 d!37413))

(declare-fun d!37415 () Bool)

(declare-fun e!81638 () Bool)

(assert (=> d!37415 e!81638))

(declare-fun res!60490 () Bool)

(assert (=> d!37415 (=> (not res!60490) (not e!81638))))

(assert (=> d!37415 (= res!60490 (and (bvsge (index!3271 lt!64122) #b00000000000000000000000000000000) (bvslt (index!3271 lt!64122) (size!2482 (_values!2747 newMap!16)))))))

(declare-fun lt!64275 () Unit!3878)

(declare-fun choose!760 (array!4684 array!4686 (_ BitVec 32) (_ BitVec 32) V!3427 V!3427 (_ BitVec 32) (_ BitVec 64) V!3427 Int) Unit!3878)

(assert (=> d!37415 (= lt!64275 (choose!760 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (index!3271 lt!64122) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2764 newMap!16)))))

(assert (=> d!37415 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37415 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!55 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (index!3271 lt!64122) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2764 newMap!16)) lt!64275)))

(declare-fun b!124890 () Bool)

(assert (=> b!124890 (= e!81638 (= (+!164 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!528 (_keys!4493 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16))))))

(assert (= (and d!37415 res!60490) b!124890))

(assert (=> d!37415 m!144661))

(assert (=> d!37415 m!144681))

(declare-fun m!145035 () Bool)

(assert (=> d!37415 m!145035))

(assert (=> d!37415 m!145009))

(assert (=> b!124890 m!144781))

(assert (=> b!124890 m!144781))

(declare-fun m!145037 () Bool)

(assert (=> b!124890 m!145037))

(assert (=> b!124890 m!144765))

(declare-fun m!145039 () Bool)

(assert (=> b!124890 m!145039))

(assert (=> b!124707 d!37415))

(declare-fun d!37417 () Bool)

(assert (=> d!37417 (= (map!1379 (_2!1291 lt!64127)) (getCurrentListMap!528 (_keys!4493 (_2!1291 lt!64127)) (_values!2747 (_2!1291 lt!64127)) (mask!7010 (_2!1291 lt!64127)) (extraKeys!2549 (_2!1291 lt!64127)) (zeroValue!2629 (_2!1291 lt!64127)) (minValue!2629 (_2!1291 lt!64127)) #b00000000000000000000000000000000 (defaultEntry!2764 (_2!1291 lt!64127))))))

(declare-fun bs!5163 () Bool)

(assert (= bs!5163 d!37417))

(declare-fun m!145041 () Bool)

(assert (=> bs!5163 m!145041))

(assert (=> bm!13324 d!37417))

(declare-fun b!124891 () Bool)

(declare-fun e!81651 () Unit!3878)

(declare-fun Unit!3887 () Unit!3878)

(assert (=> b!124891 (= e!81651 Unit!3887)))

(declare-fun b!124892 () Bool)

(declare-fun e!81642 () ListLongMap!1681)

(declare-fun call!13368 () ListLongMap!1681)

(assert (=> b!124892 (= e!81642 call!13368)))

(declare-fun bm!13364 () Bool)

(declare-fun call!13373 () ListLongMap!1681)

(declare-fun call!13370 () ListLongMap!1681)

(assert (=> bm!13364 (= call!13373 call!13370)))

(declare-fun b!124893 () Bool)

(declare-fun e!81640 () Bool)

(assert (=> b!124893 (= e!81640 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!124894 () Bool)

(declare-fun e!81643 () Bool)

(declare-fun e!81645 () Bool)

(assert (=> b!124894 (= e!81643 e!81645)))

(declare-fun res!60498 () Bool)

(declare-fun call!13369 () Bool)

(assert (=> b!124894 (= res!60498 call!13369)))

(assert (=> b!124894 (=> (not res!60498) (not e!81645))))

(declare-fun b!124895 () Bool)

(declare-fun e!81650 () Bool)

(declare-fun lt!64286 () ListLongMap!1681)

(assert (=> b!124895 (= e!81650 (= (apply!110 lt!64286 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)) (get!1445 (select (arr!2219 (_values!2747 newMap!16)) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!124895 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2482 (_values!2747 newMap!16))))))

(assert (=> b!124895 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun b!124896 () Bool)

(assert (=> b!124896 (= e!81645 (= (apply!110 lt!64286 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2629 newMap!16)))))

(declare-fun b!124897 () Bool)

(assert (=> b!124897 (= e!81642 call!13373)))

(declare-fun b!124898 () Bool)

(declare-fun e!81647 () ListLongMap!1681)

(assert (=> b!124898 (= e!81647 call!13368)))

(declare-fun bm!13365 () Bool)

(declare-fun call!13367 () ListLongMap!1681)

(assert (=> bm!13365 (= call!13370 call!13367)))

(declare-fun b!124899 () Bool)

(declare-fun res!60495 () Bool)

(declare-fun e!81648 () Bool)

(assert (=> b!124899 (=> (not res!60495) (not e!81648))))

(declare-fun e!81649 () Bool)

(assert (=> b!124899 (= res!60495 e!81649)))

(declare-fun res!60499 () Bool)

(assert (=> b!124899 (=> res!60499 e!81649)))

(declare-fun e!81646 () Bool)

(assert (=> b!124899 (= res!60499 (not e!81646))))

(declare-fun res!60492 () Bool)

(assert (=> b!124899 (=> (not res!60492) (not e!81646))))

(assert (=> b!124899 (= res!60492 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun d!37419 () Bool)

(assert (=> d!37419 e!81648))

(declare-fun res!60496 () Bool)

(assert (=> d!37419 (=> (not res!60496) (not e!81648))))

(assert (=> d!37419 (= res!60496 (or (bvsge #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))))

(declare-fun lt!64278 () ListLongMap!1681)

(assert (=> d!37419 (= lt!64286 lt!64278)))

(declare-fun lt!64290 () Unit!3878)

(assert (=> d!37419 (= lt!64290 e!81651)))

(declare-fun c!22721 () Bool)

(assert (=> d!37419 (= c!22721 e!81640)))

(declare-fun res!60494 () Bool)

(assert (=> d!37419 (=> (not res!60494) (not e!81640))))

(assert (=> d!37419 (= res!60494 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun e!81639 () ListLongMap!1681)

(assert (=> d!37419 (= lt!64278 e!81639)))

(declare-fun c!22722 () Bool)

(assert (=> d!37419 (= c!22722 (and (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!37419 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37419 (= (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) lt!64286)))

(declare-fun b!124900 () Bool)

(assert (=> b!124900 (= e!81643 (not call!13369))))

(declare-fun b!124901 () Bool)

(assert (=> b!124901 (= e!81649 e!81650)))

(declare-fun res!60497 () Bool)

(assert (=> b!124901 (=> (not res!60497) (not e!81650))))

(assert (=> b!124901 (= res!60497 (contains!873 lt!64286 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!124901 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun c!22724 () Bool)

(declare-fun call!13372 () ListLongMap!1681)

(declare-fun bm!13366 () Bool)

(assert (=> bm!13366 (= call!13372 (+!164 (ite c!22722 call!13367 (ite c!22724 call!13370 call!13373)) (ite (or c!22722 c!22724) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))))))

(declare-fun b!124902 () Bool)

(declare-fun e!81641 () Bool)

(assert (=> b!124902 (= e!81641 (= (apply!110 lt!64286 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2629 newMap!16)))))

(declare-fun b!124903 () Bool)

(assert (=> b!124903 (= e!81639 (+!164 call!13372 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))))

(declare-fun b!124904 () Bool)

(assert (=> b!124904 (= e!81646 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!124905 () Bool)

(declare-fun c!22723 () Bool)

(assert (=> b!124905 (= c!22723 (and (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!124905 (= e!81647 e!81642)))

(declare-fun bm!13367 () Bool)

(declare-fun call!13371 () Bool)

(assert (=> bm!13367 (= call!13371 (contains!873 lt!64286 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!124906 () Bool)

(declare-fun e!81644 () Bool)

(assert (=> b!124906 (= e!81644 (not call!13371))))

(declare-fun b!124907 () Bool)

(assert (=> b!124907 (= e!81648 e!81643)))

(declare-fun c!22725 () Bool)

(assert (=> b!124907 (= c!22725 (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!13368 () Bool)

(assert (=> bm!13368 (= call!13367 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun b!124908 () Bool)

(assert (=> b!124908 (= e!81639 e!81647)))

(assert (=> b!124908 (= c!22724 (and (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!124909 () Bool)

(assert (=> b!124909 (= e!81644 e!81641)))

(declare-fun res!60493 () Bool)

(assert (=> b!124909 (= res!60493 call!13371)))

(assert (=> b!124909 (=> (not res!60493) (not e!81641))))

(declare-fun b!124910 () Bool)

(declare-fun res!60491 () Bool)

(assert (=> b!124910 (=> (not res!60491) (not e!81648))))

(assert (=> b!124910 (= res!60491 e!81644)))

(declare-fun c!22720 () Bool)

(assert (=> b!124910 (= c!22720 (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13369 () Bool)

(assert (=> bm!13369 (= call!13368 call!13372)))

(declare-fun b!124911 () Bool)

(declare-fun lt!64276 () Unit!3878)

(assert (=> b!124911 (= e!81651 lt!64276)))

(declare-fun lt!64279 () ListLongMap!1681)

(assert (=> b!124911 (= lt!64279 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64280 () (_ BitVec 64))

(assert (=> b!124911 (= lt!64280 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64292 () (_ BitVec 64))

(assert (=> b!124911 (= lt!64292 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64289 () Unit!3878)

(assert (=> b!124911 (= lt!64289 (addStillContains!86 lt!64279 lt!64280 (zeroValue!2629 newMap!16) lt!64292))))

(assert (=> b!124911 (contains!873 (+!164 lt!64279 (tuple2!2561 lt!64280 (zeroValue!2629 newMap!16))) lt!64292)))

(declare-fun lt!64291 () Unit!3878)

(assert (=> b!124911 (= lt!64291 lt!64289)))

(declare-fun lt!64293 () ListLongMap!1681)

(assert (=> b!124911 (= lt!64293 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64284 () (_ BitVec 64))

(assert (=> b!124911 (= lt!64284 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64283 () (_ BitVec 64))

(assert (=> b!124911 (= lt!64283 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64287 () Unit!3878)

(assert (=> b!124911 (= lt!64287 (addApplyDifferent!86 lt!64293 lt!64284 (minValue!2629 newMap!16) lt!64283))))

(assert (=> b!124911 (= (apply!110 (+!164 lt!64293 (tuple2!2561 lt!64284 (minValue!2629 newMap!16))) lt!64283) (apply!110 lt!64293 lt!64283))))

(declare-fun lt!64296 () Unit!3878)

(assert (=> b!124911 (= lt!64296 lt!64287)))

(declare-fun lt!64285 () ListLongMap!1681)

(assert (=> b!124911 (= lt!64285 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64294 () (_ BitVec 64))

(assert (=> b!124911 (= lt!64294 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64281 () (_ BitVec 64))

(assert (=> b!124911 (= lt!64281 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64277 () Unit!3878)

(assert (=> b!124911 (= lt!64277 (addApplyDifferent!86 lt!64285 lt!64294 (zeroValue!2629 newMap!16) lt!64281))))

(assert (=> b!124911 (= (apply!110 (+!164 lt!64285 (tuple2!2561 lt!64294 (zeroValue!2629 newMap!16))) lt!64281) (apply!110 lt!64285 lt!64281))))

(declare-fun lt!64295 () Unit!3878)

(assert (=> b!124911 (= lt!64295 lt!64277)))

(declare-fun lt!64297 () ListLongMap!1681)

(assert (=> b!124911 (= lt!64297 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64288 () (_ BitVec 64))

(assert (=> b!124911 (= lt!64288 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64282 () (_ BitVec 64))

(assert (=> b!124911 (= lt!64282 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!124911 (= lt!64276 (addApplyDifferent!86 lt!64297 lt!64288 (minValue!2629 newMap!16) lt!64282))))

(assert (=> b!124911 (= (apply!110 (+!164 lt!64297 (tuple2!2561 lt!64288 (minValue!2629 newMap!16))) lt!64282) (apply!110 lt!64297 lt!64282))))

(declare-fun bm!13370 () Bool)

(assert (=> bm!13370 (= call!13369 (contains!873 lt!64286 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!37419 c!22722) b!124903))

(assert (= (and d!37419 (not c!22722)) b!124908))

(assert (= (and b!124908 c!22724) b!124898))

(assert (= (and b!124908 (not c!22724)) b!124905))

(assert (= (and b!124905 c!22723) b!124892))

(assert (= (and b!124905 (not c!22723)) b!124897))

(assert (= (or b!124892 b!124897) bm!13364))

(assert (= (or b!124898 bm!13364) bm!13365))

(assert (= (or b!124898 b!124892) bm!13369))

(assert (= (or b!124903 bm!13365) bm!13368))

(assert (= (or b!124903 bm!13369) bm!13366))

(assert (= (and d!37419 res!60494) b!124893))

(assert (= (and d!37419 c!22721) b!124911))

(assert (= (and d!37419 (not c!22721)) b!124891))

(assert (= (and d!37419 res!60496) b!124899))

(assert (= (and b!124899 res!60492) b!124904))

(assert (= (and b!124899 (not res!60499)) b!124901))

(assert (= (and b!124901 res!60497) b!124895))

(assert (= (and b!124899 res!60495) b!124910))

(assert (= (and b!124910 c!22720) b!124909))

(assert (= (and b!124910 (not c!22720)) b!124906))

(assert (= (and b!124909 res!60493) b!124902))

(assert (= (or b!124909 b!124906) bm!13367))

(assert (= (and b!124910 res!60491) b!124907))

(assert (= (and b!124907 c!22725) b!124894))

(assert (= (and b!124907 (not c!22725)) b!124900))

(assert (= (and b!124894 res!60498) b!124896))

(assert (= (or b!124894 b!124900) bm!13370))

(declare-fun b_lambda!5503 () Bool)

(assert (=> (not b_lambda!5503) (not b!124895)))

(declare-fun tb!2309 () Bool)

(declare-fun t!6062 () Bool)

(assert (=> (and b!124522 (= (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) (defaultEntry!2764 newMap!16)) t!6062) tb!2309))

(declare-fun result!3831 () Bool)

(assert (=> tb!2309 (= result!3831 tp_is_empty!2835)))

(assert (=> b!124895 t!6062))

(declare-fun b_and!7693 () Bool)

(assert (= b_and!7689 (and (=> t!6062 result!3831) b_and!7693)))

(declare-fun t!6064 () Bool)

(declare-fun tb!2311 () Bool)

(assert (=> (and b!124506 (= (defaultEntry!2764 newMap!16) (defaultEntry!2764 newMap!16)) t!6064) tb!2311))

(declare-fun result!3833 () Bool)

(assert (= result!3833 result!3831))

(assert (=> b!124895 t!6064))

(declare-fun b_and!7695 () Bool)

(assert (= b_and!7691 (and (=> t!6064 result!3833) b_and!7695)))

(declare-fun m!145043 () Bool)

(assert (=> b!124903 m!145043))

(declare-fun m!145045 () Bool)

(assert (=> bm!13370 m!145045))

(declare-fun m!145047 () Bool)

(assert (=> b!124893 m!145047))

(assert (=> b!124893 m!145047))

(declare-fun m!145049 () Bool)

(assert (=> b!124893 m!145049))

(declare-fun m!145051 () Bool)

(assert (=> bm!13366 m!145051))

(declare-fun m!145053 () Bool)

(assert (=> b!124896 m!145053))

(assert (=> d!37419 m!145009))

(declare-fun m!145055 () Bool)

(assert (=> bm!13368 m!145055))

(declare-fun m!145057 () Bool)

(assert (=> b!124902 m!145057))

(declare-fun m!145059 () Bool)

(assert (=> b!124895 m!145059))

(declare-fun m!145061 () Bool)

(assert (=> b!124895 m!145061))

(declare-fun m!145063 () Bool)

(assert (=> b!124895 m!145063))

(assert (=> b!124895 m!145047))

(declare-fun m!145065 () Bool)

(assert (=> b!124895 m!145065))

(assert (=> b!124895 m!145061))

(assert (=> b!124895 m!145059))

(assert (=> b!124895 m!145047))

(declare-fun m!145067 () Bool)

(assert (=> bm!13367 m!145067))

(declare-fun m!145069 () Bool)

(assert (=> b!124911 m!145069))

(declare-fun m!145071 () Bool)

(assert (=> b!124911 m!145071))

(declare-fun m!145073 () Bool)

(assert (=> b!124911 m!145073))

(declare-fun m!145075 () Bool)

(assert (=> b!124911 m!145075))

(declare-fun m!145077 () Bool)

(assert (=> b!124911 m!145077))

(declare-fun m!145079 () Bool)

(assert (=> b!124911 m!145079))

(assert (=> b!124911 m!145071))

(declare-fun m!145081 () Bool)

(assert (=> b!124911 m!145081))

(assert (=> b!124911 m!145073))

(assert (=> b!124911 m!145079))

(declare-fun m!145083 () Bool)

(assert (=> b!124911 m!145083))

(declare-fun m!145085 () Bool)

(assert (=> b!124911 m!145085))

(declare-fun m!145087 () Bool)

(assert (=> b!124911 m!145087))

(assert (=> b!124911 m!145047))

(declare-fun m!145089 () Bool)

(assert (=> b!124911 m!145089))

(declare-fun m!145091 () Bool)

(assert (=> b!124911 m!145091))

(assert (=> b!124911 m!145055))

(assert (=> b!124911 m!145069))

(declare-fun m!145093 () Bool)

(assert (=> b!124911 m!145093))

(declare-fun m!145095 () Bool)

(assert (=> b!124911 m!145095))

(declare-fun m!145097 () Bool)

(assert (=> b!124911 m!145097))

(assert (=> b!124901 m!145047))

(assert (=> b!124901 m!145047))

(declare-fun m!145099 () Bool)

(assert (=> b!124901 m!145099))

(assert (=> b!124904 m!145047))

(assert (=> b!124904 m!145047))

(assert (=> b!124904 m!145049))

(assert (=> b!124682 d!37419))

(declare-fun b!124920 () Bool)

(declare-fun e!81656 () (_ BitVec 32))

(declare-fun call!13376 () (_ BitVec 32))

(assert (=> b!124920 (= e!81656 call!13376)))

(declare-fun b!124921 () Bool)

(declare-fun e!81657 () (_ BitVec 32))

(assert (=> b!124921 (= e!81657 #b00000000000000000000000000000000)))

(declare-fun b!124922 () Bool)

(assert (=> b!124922 (= e!81656 (bvadd #b00000000000000000000000000000001 call!13376))))

(declare-fun b!124923 () Bool)

(assert (=> b!124923 (= e!81657 e!81656)))

(declare-fun c!22731 () Bool)

(assert (=> b!124923 (= c!22731 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!13373 () Bool)

(assert (=> bm!13373 (= call!13376 (arrayCountValidKeys!0 (_keys!4493 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2481 (_keys!4493 newMap!16))))))

(declare-fun d!37421 () Bool)

(declare-fun lt!64300 () (_ BitVec 32))

(assert (=> d!37421 (and (bvsge lt!64300 #b00000000000000000000000000000000) (bvsle lt!64300 (bvsub (size!2481 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!37421 (= lt!64300 e!81657)))

(declare-fun c!22730 () Bool)

(assert (=> d!37421 (= c!22730 (bvsge #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(assert (=> d!37421 (and (bvsle #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2481 (_keys!4493 newMap!16)) (size!2481 (_keys!4493 newMap!16))))))

(assert (=> d!37421 (= (arrayCountValidKeys!0 (_keys!4493 newMap!16) #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))) lt!64300)))

(assert (= (and d!37421 c!22730) b!124921))

(assert (= (and d!37421 (not c!22730)) b!124923))

(assert (= (and b!124923 c!22731) b!124922))

(assert (= (and b!124923 (not c!22731)) b!124920))

(assert (= (or b!124922 b!124920) bm!13373))

(assert (=> b!124923 m!145047))

(assert (=> b!124923 m!145047))

(assert (=> b!124923 m!145049))

(declare-fun m!145101 () Bool)

(assert (=> bm!13373 m!145101))

(assert (=> b!124584 d!37421))

(declare-fun d!37423 () Bool)

(declare-fun res!60509 () Bool)

(declare-fun e!81660 () Bool)

(assert (=> d!37423 (=> (not res!60509) (not e!81660))))

(assert (=> d!37423 (= res!60509 (validMask!0 (mask!7010 newMap!16)))))

(assert (=> d!37423 (= (simpleValid!85 newMap!16) e!81660)))

(declare-fun b!124935 () Bool)

(assert (=> b!124935 (= e!81660 (and (bvsge (extraKeys!2549 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!2549 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!577 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun b!124932 () Bool)

(declare-fun res!60508 () Bool)

(assert (=> b!124932 (=> (not res!60508) (not e!81660))))

(assert (=> b!124932 (= res!60508 (and (= (size!2482 (_values!2747 newMap!16)) (bvadd (mask!7010 newMap!16) #b00000000000000000000000000000001)) (= (size!2481 (_keys!4493 newMap!16)) (size!2482 (_values!2747 newMap!16))) (bvsge (_size!577 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!577 newMap!16) (bvadd (mask!7010 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!124934 () Bool)

(declare-fun res!60510 () Bool)

(assert (=> b!124934 (=> (not res!60510) (not e!81660))))

(declare-fun size!2485 (LongMapFixedSize!1056) (_ BitVec 32))

(assert (=> b!124934 (= res!60510 (= (size!2485 newMap!16) (bvadd (_size!577 newMap!16) (bvsdiv (bvadd (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!124933 () Bool)

(declare-fun res!60511 () Bool)

(assert (=> b!124933 (=> (not res!60511) (not e!81660))))

(assert (=> b!124933 (= res!60511 (bvsge (size!2485 newMap!16) (_size!577 newMap!16)))))

(assert (= (and d!37423 res!60509) b!124932))

(assert (= (and b!124932 res!60508) b!124933))

(assert (= (and b!124933 res!60511) b!124934))

(assert (= (and b!124934 res!60510) b!124935))

(assert (=> d!37423 m!145009))

(declare-fun m!145103 () Bool)

(assert (=> b!124934 m!145103))

(assert (=> b!124933 m!145103))

(assert (=> d!37339 d!37423))

(assert (=> bm!13334 d!37355))

(declare-fun b!124944 () Bool)

(declare-fun e!81667 () Bool)

(declare-fun call!13379 () Bool)

(assert (=> b!124944 (= e!81667 call!13379)))

(declare-fun bm!13376 () Bool)

(assert (=> bm!13376 (= call!13379 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4493 newMap!16) (mask!7010 newMap!16)))))

(declare-fun d!37425 () Bool)

(declare-fun res!60517 () Bool)

(declare-fun e!81669 () Bool)

(assert (=> d!37425 (=> res!60517 e!81669)))

(assert (=> d!37425 (= res!60517 (bvsge #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(assert (=> d!37425 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4493 newMap!16) (mask!7010 newMap!16)) e!81669)))

(declare-fun b!124945 () Bool)

(assert (=> b!124945 (= e!81669 e!81667)))

(declare-fun c!22734 () Bool)

(assert (=> b!124945 (= c!22734 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!124946 () Bool)

(declare-fun e!81668 () Bool)

(assert (=> b!124946 (= e!81668 call!13379)))

(declare-fun b!124947 () Bool)

(assert (=> b!124947 (= e!81667 e!81668)))

(declare-fun lt!64307 () (_ BitVec 64))

(assert (=> b!124947 (= lt!64307 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64309 () Unit!3878)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!4684 (_ BitVec 64) (_ BitVec 32)) Unit!3878)

(assert (=> b!124947 (= lt!64309 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4493 newMap!16) lt!64307 #b00000000000000000000000000000000))))

(assert (=> b!124947 (arrayContainsKey!0 (_keys!4493 newMap!16) lt!64307 #b00000000000000000000000000000000)))

(declare-fun lt!64308 () Unit!3878)

(assert (=> b!124947 (= lt!64308 lt!64309)))

(declare-fun res!60516 () Bool)

(assert (=> b!124947 (= res!60516 (= (seekEntryOrOpen!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000) (_keys!4493 newMap!16) (mask!7010 newMap!16)) (Found!279 #b00000000000000000000000000000000)))))

(assert (=> b!124947 (=> (not res!60516) (not e!81668))))

(assert (= (and d!37425 (not res!60517)) b!124945))

(assert (= (and b!124945 c!22734) b!124947))

(assert (= (and b!124945 (not c!22734)) b!124944))

(assert (= (and b!124947 res!60516) b!124946))

(assert (= (or b!124946 b!124944) bm!13376))

(declare-fun m!145105 () Bool)

(assert (=> bm!13376 m!145105))

(assert (=> b!124945 m!145047))

(assert (=> b!124945 m!145047))

(assert (=> b!124945 m!145049))

(assert (=> b!124947 m!145047))

(declare-fun m!145107 () Bool)

(assert (=> b!124947 m!145107))

(declare-fun m!145109 () Bool)

(assert (=> b!124947 m!145109))

(assert (=> b!124947 m!145047))

(declare-fun m!145111 () Bool)

(assert (=> b!124947 m!145111))

(assert (=> b!124585 d!37425))

(assert (=> d!37355 d!37419))

(declare-fun b!124948 () Bool)

(declare-fun e!81682 () Unit!3878)

(declare-fun Unit!3888 () Unit!3878)

(assert (=> b!124948 (= e!81682 Unit!3888)))

(declare-fun b!124949 () Bool)

(declare-fun e!81673 () ListLongMap!1681)

(declare-fun call!13381 () ListLongMap!1681)

(assert (=> b!124949 (= e!81673 call!13381)))

(declare-fun bm!13377 () Bool)

(declare-fun call!13386 () ListLongMap!1681)

(declare-fun call!13383 () ListLongMap!1681)

(assert (=> bm!13377 (= call!13386 call!13383)))

(declare-fun b!124950 () Bool)

(declare-fun e!81671 () Bool)

(assert (=> b!124950 (= e!81671 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!124951 () Bool)

(declare-fun e!81674 () Bool)

(declare-fun e!81676 () Bool)

(assert (=> b!124951 (= e!81674 e!81676)))

(declare-fun res!60525 () Bool)

(declare-fun call!13382 () Bool)

(assert (=> b!124951 (= res!60525 call!13382)))

(assert (=> b!124951 (=> (not res!60525) (not e!81676))))

(declare-fun b!124952 () Bool)

(declare-fun lt!64320 () ListLongMap!1681)

(declare-fun e!81681 () Bool)

(assert (=> b!124952 (= e!81681 (= (apply!110 lt!64320 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)) (get!1445 (select (arr!2219 (ite c!22675 (_values!2747 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!124952 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2482 (ite c!22675 (_values!2747 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16)))))))))

(assert (=> b!124952 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun b!124953 () Bool)

(assert (=> b!124953 (= e!81676 (= (apply!110 lt!64320 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2629 newMap!16)))))

(declare-fun b!124954 () Bool)

(assert (=> b!124954 (= e!81673 call!13386)))

(declare-fun b!124955 () Bool)

(declare-fun e!81678 () ListLongMap!1681)

(assert (=> b!124955 (= e!81678 call!13381)))

(declare-fun bm!13378 () Bool)

(declare-fun call!13380 () ListLongMap!1681)

(assert (=> bm!13378 (= call!13383 call!13380)))

(declare-fun b!124956 () Bool)

(declare-fun res!60522 () Bool)

(declare-fun e!81679 () Bool)

(assert (=> b!124956 (=> (not res!60522) (not e!81679))))

(declare-fun e!81680 () Bool)

(assert (=> b!124956 (= res!60522 e!81680)))

(declare-fun res!60526 () Bool)

(assert (=> b!124956 (=> res!60526 e!81680)))

(declare-fun e!81677 () Bool)

(assert (=> b!124956 (= res!60526 (not e!81677))))

(declare-fun res!60519 () Bool)

(assert (=> b!124956 (=> (not res!60519) (not e!81677))))

(assert (=> b!124956 (= res!60519 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun d!37427 () Bool)

(assert (=> d!37427 e!81679))

(declare-fun res!60523 () Bool)

(assert (=> d!37427 (=> (not res!60523) (not e!81679))))

(assert (=> d!37427 (= res!60523 (or (bvsge #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))))

(declare-fun lt!64312 () ListLongMap!1681)

(assert (=> d!37427 (= lt!64320 lt!64312)))

(declare-fun lt!64324 () Unit!3878)

(assert (=> d!37427 (= lt!64324 e!81682)))

(declare-fun c!22736 () Bool)

(assert (=> d!37427 (= c!22736 e!81671)))

(declare-fun res!60521 () Bool)

(assert (=> d!37427 (=> (not res!60521) (not e!81671))))

(assert (=> d!37427 (= res!60521 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun e!81670 () ListLongMap!1681)

(assert (=> d!37427 (= lt!64312 e!81670)))

(declare-fun c!22737 () Bool)

(assert (=> d!37427 (= c!22737 (and (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!37427 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37427 (= (getCurrentListMap!528 (_keys!4493 newMap!16) (ite c!22675 (_values!2747 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16)))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) lt!64320)))

(declare-fun b!124957 () Bool)

(assert (=> b!124957 (= e!81674 (not call!13382))))

(declare-fun b!124958 () Bool)

(assert (=> b!124958 (= e!81680 e!81681)))

(declare-fun res!60524 () Bool)

(assert (=> b!124958 (=> (not res!60524) (not e!81681))))

(assert (=> b!124958 (= res!60524 (contains!873 lt!64320 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!124958 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun bm!13379 () Bool)

(declare-fun c!22739 () Bool)

(declare-fun call!13385 () ListLongMap!1681)

(assert (=> bm!13379 (= call!13385 (+!164 (ite c!22737 call!13380 (ite c!22739 call!13383 call!13386)) (ite (or c!22737 c!22739) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))))))

(declare-fun b!124959 () Bool)

(declare-fun e!81672 () Bool)

(assert (=> b!124959 (= e!81672 (= (apply!110 lt!64320 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2629 newMap!16)))))

(declare-fun b!124960 () Bool)

(assert (=> b!124960 (= e!81670 (+!164 call!13385 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))))

(declare-fun b!124961 () Bool)

(assert (=> b!124961 (= e!81677 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!124962 () Bool)

(declare-fun c!22738 () Bool)

(assert (=> b!124962 (= c!22738 (and (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!124962 (= e!81678 e!81673)))

(declare-fun bm!13380 () Bool)

(declare-fun call!13384 () Bool)

(assert (=> bm!13380 (= call!13384 (contains!873 lt!64320 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!124963 () Bool)

(declare-fun e!81675 () Bool)

(assert (=> b!124963 (= e!81675 (not call!13384))))

(declare-fun b!124964 () Bool)

(assert (=> b!124964 (= e!81679 e!81674)))

(declare-fun c!22740 () Bool)

(assert (=> b!124964 (= c!22740 (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!13381 () Bool)

(assert (=> bm!13381 (= call!13380 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (ite c!22675 (_values!2747 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16)))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun b!124965 () Bool)

(assert (=> b!124965 (= e!81670 e!81678)))

(assert (=> b!124965 (= c!22739 (and (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!124966 () Bool)

(assert (=> b!124966 (= e!81675 e!81672)))

(declare-fun res!60520 () Bool)

(assert (=> b!124966 (= res!60520 call!13384)))

(assert (=> b!124966 (=> (not res!60520) (not e!81672))))

(declare-fun b!124967 () Bool)

(declare-fun res!60518 () Bool)

(assert (=> b!124967 (=> (not res!60518) (not e!81679))))

(assert (=> b!124967 (= res!60518 e!81675)))

(declare-fun c!22735 () Bool)

(assert (=> b!124967 (= c!22735 (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13382 () Bool)

(assert (=> bm!13382 (= call!13381 call!13385)))

(declare-fun b!124968 () Bool)

(declare-fun lt!64310 () Unit!3878)

(assert (=> b!124968 (= e!81682 lt!64310)))

(declare-fun lt!64313 () ListLongMap!1681)

(assert (=> b!124968 (= lt!64313 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (ite c!22675 (_values!2747 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16)))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64314 () (_ BitVec 64))

(assert (=> b!124968 (= lt!64314 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64326 () (_ BitVec 64))

(assert (=> b!124968 (= lt!64326 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64323 () Unit!3878)

(assert (=> b!124968 (= lt!64323 (addStillContains!86 lt!64313 lt!64314 (zeroValue!2629 newMap!16) lt!64326))))

(assert (=> b!124968 (contains!873 (+!164 lt!64313 (tuple2!2561 lt!64314 (zeroValue!2629 newMap!16))) lt!64326)))

(declare-fun lt!64325 () Unit!3878)

(assert (=> b!124968 (= lt!64325 lt!64323)))

(declare-fun lt!64327 () ListLongMap!1681)

(assert (=> b!124968 (= lt!64327 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (ite c!22675 (_values!2747 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16)))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64318 () (_ BitVec 64))

(assert (=> b!124968 (= lt!64318 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64317 () (_ BitVec 64))

(assert (=> b!124968 (= lt!64317 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64321 () Unit!3878)

(assert (=> b!124968 (= lt!64321 (addApplyDifferent!86 lt!64327 lt!64318 (minValue!2629 newMap!16) lt!64317))))

(assert (=> b!124968 (= (apply!110 (+!164 lt!64327 (tuple2!2561 lt!64318 (minValue!2629 newMap!16))) lt!64317) (apply!110 lt!64327 lt!64317))))

(declare-fun lt!64330 () Unit!3878)

(assert (=> b!124968 (= lt!64330 lt!64321)))

(declare-fun lt!64319 () ListLongMap!1681)

(assert (=> b!124968 (= lt!64319 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (ite c!22675 (_values!2747 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16)))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64328 () (_ BitVec 64))

(assert (=> b!124968 (= lt!64328 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64315 () (_ BitVec 64))

(assert (=> b!124968 (= lt!64315 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64311 () Unit!3878)

(assert (=> b!124968 (= lt!64311 (addApplyDifferent!86 lt!64319 lt!64328 (zeroValue!2629 newMap!16) lt!64315))))

(assert (=> b!124968 (= (apply!110 (+!164 lt!64319 (tuple2!2561 lt!64328 (zeroValue!2629 newMap!16))) lt!64315) (apply!110 lt!64319 lt!64315))))

(declare-fun lt!64329 () Unit!3878)

(assert (=> b!124968 (= lt!64329 lt!64311)))

(declare-fun lt!64331 () ListLongMap!1681)

(assert (=> b!124968 (= lt!64331 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (ite c!22675 (_values!2747 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16)))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64322 () (_ BitVec 64))

(assert (=> b!124968 (= lt!64322 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64316 () (_ BitVec 64))

(assert (=> b!124968 (= lt!64316 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!124968 (= lt!64310 (addApplyDifferent!86 lt!64331 lt!64322 (minValue!2629 newMap!16) lt!64316))))

(assert (=> b!124968 (= (apply!110 (+!164 lt!64331 (tuple2!2561 lt!64322 (minValue!2629 newMap!16))) lt!64316) (apply!110 lt!64331 lt!64316))))

(declare-fun bm!13383 () Bool)

(assert (=> bm!13383 (= call!13382 (contains!873 lt!64320 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!37427 c!22737) b!124960))

(assert (= (and d!37427 (not c!22737)) b!124965))

(assert (= (and b!124965 c!22739) b!124955))

(assert (= (and b!124965 (not c!22739)) b!124962))

(assert (= (and b!124962 c!22738) b!124949))

(assert (= (and b!124962 (not c!22738)) b!124954))

(assert (= (or b!124949 b!124954) bm!13377))

(assert (= (or b!124955 bm!13377) bm!13378))

(assert (= (or b!124955 b!124949) bm!13382))

(assert (= (or b!124960 bm!13378) bm!13381))

(assert (= (or b!124960 bm!13382) bm!13379))

(assert (= (and d!37427 res!60521) b!124950))

(assert (= (and d!37427 c!22736) b!124968))

(assert (= (and d!37427 (not c!22736)) b!124948))

(assert (= (and d!37427 res!60523) b!124956))

(assert (= (and b!124956 res!60519) b!124961))

(assert (= (and b!124956 (not res!60526)) b!124958))

(assert (= (and b!124958 res!60524) b!124952))

(assert (= (and b!124956 res!60522) b!124967))

(assert (= (and b!124967 c!22735) b!124966))

(assert (= (and b!124967 (not c!22735)) b!124963))

(assert (= (and b!124966 res!60520) b!124959))

(assert (= (or b!124966 b!124963) bm!13380))

(assert (= (and b!124967 res!60518) b!124964))

(assert (= (and b!124964 c!22740) b!124951))

(assert (= (and b!124964 (not c!22740)) b!124957))

(assert (= (and b!124951 res!60525) b!124953))

(assert (= (or b!124951 b!124957) bm!13383))

(declare-fun b_lambda!5505 () Bool)

(assert (=> (not b_lambda!5505) (not b!124952)))

(assert (=> b!124952 t!6062))

(declare-fun b_and!7697 () Bool)

(assert (= b_and!7693 (and (=> t!6062 result!3831) b_and!7697)))

(assert (=> b!124952 t!6064))

(declare-fun b_and!7699 () Bool)

(assert (= b_and!7695 (and (=> t!6064 result!3833) b_and!7699)))

(declare-fun m!145113 () Bool)

(assert (=> b!124960 m!145113))

(declare-fun m!145115 () Bool)

(assert (=> bm!13383 m!145115))

(assert (=> b!124950 m!145047))

(assert (=> b!124950 m!145047))

(assert (=> b!124950 m!145049))

(declare-fun m!145117 () Bool)

(assert (=> bm!13379 m!145117))

(declare-fun m!145119 () Bool)

(assert (=> b!124953 m!145119))

(assert (=> d!37427 m!145009))

(declare-fun m!145121 () Bool)

(assert (=> bm!13381 m!145121))

(declare-fun m!145123 () Bool)

(assert (=> b!124959 m!145123))

(declare-fun m!145125 () Bool)

(assert (=> b!124952 m!145125))

(assert (=> b!124952 m!145061))

(declare-fun m!145127 () Bool)

(assert (=> b!124952 m!145127))

(assert (=> b!124952 m!145047))

(declare-fun m!145129 () Bool)

(assert (=> b!124952 m!145129))

(assert (=> b!124952 m!145061))

(assert (=> b!124952 m!145125))

(assert (=> b!124952 m!145047))

(declare-fun m!145131 () Bool)

(assert (=> bm!13380 m!145131))

(declare-fun m!145133 () Bool)

(assert (=> b!124968 m!145133))

(declare-fun m!145135 () Bool)

(assert (=> b!124968 m!145135))

(declare-fun m!145137 () Bool)

(assert (=> b!124968 m!145137))

(declare-fun m!145139 () Bool)

(assert (=> b!124968 m!145139))

(declare-fun m!145141 () Bool)

(assert (=> b!124968 m!145141))

(declare-fun m!145143 () Bool)

(assert (=> b!124968 m!145143))

(assert (=> b!124968 m!145135))

(declare-fun m!145145 () Bool)

(assert (=> b!124968 m!145145))

(assert (=> b!124968 m!145137))

(assert (=> b!124968 m!145143))

(declare-fun m!145147 () Bool)

(assert (=> b!124968 m!145147))

(declare-fun m!145149 () Bool)

(assert (=> b!124968 m!145149))

(declare-fun m!145151 () Bool)

(assert (=> b!124968 m!145151))

(assert (=> b!124968 m!145047))

(declare-fun m!145153 () Bool)

(assert (=> b!124968 m!145153))

(declare-fun m!145155 () Bool)

(assert (=> b!124968 m!145155))

(assert (=> b!124968 m!145121))

(assert (=> b!124968 m!145133))

(declare-fun m!145157 () Bool)

(assert (=> b!124968 m!145157))

(declare-fun m!145159 () Bool)

(assert (=> b!124968 m!145159))

(declare-fun m!145161 () Bool)

(assert (=> b!124968 m!145161))

(assert (=> b!124958 m!145047))

(assert (=> b!124958 m!145047))

(declare-fun m!145163 () Bool)

(assert (=> b!124958 m!145163))

(assert (=> b!124961 m!145047))

(assert (=> b!124961 m!145047))

(assert (=> b!124961 m!145049))

(assert (=> bm!13325 d!37427))

(declare-fun d!37429 () Bool)

(declare-fun e!81684 () Bool)

(assert (=> d!37429 e!81684))

(declare-fun res!60527 () Bool)

(assert (=> d!37429 (=> res!60527 e!81684)))

(declare-fun lt!64332 () Bool)

(assert (=> d!37429 (= res!60527 (not lt!64332))))

(declare-fun lt!64335 () Bool)

(assert (=> d!37429 (= lt!64332 lt!64335)))

(declare-fun lt!64333 () Unit!3878)

(declare-fun e!81683 () Unit!3878)

(assert (=> d!37429 (= lt!64333 e!81683)))

(declare-fun c!22741 () Bool)

(assert (=> d!37429 (= c!22741 lt!64335)))

(assert (=> d!37429 (= lt!64335 (containsKey!169 (toList!856 lt!64187) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!37429 (= (contains!873 lt!64187 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!64332)))

(declare-fun b!124969 () Bool)

(declare-fun lt!64334 () Unit!3878)

(assert (=> b!124969 (= e!81683 lt!64334)))

(assert (=> b!124969 (= lt!64334 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64187) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!124969 (isDefined!119 (getValueByKey!165 (toList!856 lt!64187) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!124970 () Bool)

(declare-fun Unit!3889 () Unit!3878)

(assert (=> b!124970 (= e!81683 Unit!3889)))

(declare-fun b!124971 () Bool)

(assert (=> b!124971 (= e!81684 (isDefined!119 (getValueByKey!165 (toList!856 lt!64187) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!37429 c!22741) b!124969))

(assert (= (and d!37429 (not c!22741)) b!124970))

(assert (= (and d!37429 (not res!60527)) b!124971))

(assert (=> d!37429 m!144811))

(declare-fun m!145165 () Bool)

(assert (=> d!37429 m!145165))

(assert (=> b!124969 m!144811))

(declare-fun m!145167 () Bool)

(assert (=> b!124969 m!145167))

(assert (=> b!124969 m!144811))

(assert (=> b!124969 m!144997))

(assert (=> b!124969 m!144997))

(declare-fun m!145169 () Bool)

(assert (=> b!124969 m!145169))

(assert (=> b!124971 m!144811))

(assert (=> b!124971 m!144997))

(assert (=> b!124971 m!144997))

(assert (=> b!124971 m!145169))

(assert (=> b!124780 d!37429))

(declare-fun d!37431 () Bool)

(assert (=> d!37431 (= (apply!110 lt!64187 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1448 (getValueByKey!165 (toList!856 lt!64187) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5164 () Bool)

(assert (= bs!5164 d!37431))

(declare-fun m!145171 () Bool)

(assert (=> bs!5164 m!145171))

(assert (=> bs!5164 m!145171))

(declare-fun m!145173 () Bool)

(assert (=> bs!5164 m!145173))

(assert (=> b!124781 d!37431))

(declare-fun b!124982 () Bool)

(declare-fun e!81695 () Bool)

(declare-fun e!81696 () Bool)

(assert (=> b!124982 (= e!81695 e!81696)))

(declare-fun c!22744 () Bool)

(assert (=> b!124982 (= c!22744 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!124983 () Bool)

(declare-fun e!81693 () Bool)

(assert (=> b!124983 (= e!81693 e!81695)))

(declare-fun res!60534 () Bool)

(assert (=> b!124983 (=> (not res!60534) (not e!81695))))

(declare-fun e!81694 () Bool)

(assert (=> b!124983 (= res!60534 (not e!81694))))

(declare-fun res!60535 () Bool)

(assert (=> b!124983 (=> (not res!60535) (not e!81694))))

(assert (=> b!124983 (= res!60535 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!37433 () Bool)

(declare-fun res!60536 () Bool)

(assert (=> d!37433 (=> res!60536 e!81693)))

(assert (=> d!37433 (= res!60536 (bvsge #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(assert (=> d!37433 (= (arrayNoDuplicates!0 (_keys!4493 newMap!16) #b00000000000000000000000000000000 Nil!1714) e!81693)))

(declare-fun b!124984 () Bool)

(declare-fun call!13389 () Bool)

(assert (=> b!124984 (= e!81696 call!13389)))

(declare-fun bm!13386 () Bool)

(assert (=> bm!13386 (= call!13389 (arrayNoDuplicates!0 (_keys!4493 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!22744 (Cons!1713 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000) Nil!1714) Nil!1714)))))

(declare-fun b!124985 () Bool)

(declare-fun contains!875 (List!1717 (_ BitVec 64)) Bool)

(assert (=> b!124985 (= e!81694 (contains!875 Nil!1714 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!124986 () Bool)

(assert (=> b!124986 (= e!81696 call!13389)))

(assert (= (and d!37433 (not res!60536)) b!124983))

(assert (= (and b!124983 res!60535) b!124985))

(assert (= (and b!124983 res!60534) b!124982))

(assert (= (and b!124982 c!22744) b!124984))

(assert (= (and b!124982 (not c!22744)) b!124986))

(assert (= (or b!124984 b!124986) bm!13386))

(assert (=> b!124982 m!145047))

(assert (=> b!124982 m!145047))

(assert (=> b!124982 m!145049))

(assert (=> b!124983 m!145047))

(assert (=> b!124983 m!145047))

(assert (=> b!124983 m!145049))

(assert (=> bm!13386 m!145047))

(declare-fun m!145175 () Bool)

(assert (=> bm!13386 m!145175))

(assert (=> b!124985 m!145047))

(assert (=> b!124985 m!145047))

(declare-fun m!145177 () Bool)

(assert (=> b!124985 m!145177))

(assert (=> b!124586 d!37433))

(declare-fun d!37435 () Bool)

(declare-fun e!81697 () Bool)

(assert (=> d!37435 e!81697))

(declare-fun res!60537 () Bool)

(assert (=> d!37435 (=> (not res!60537) (not e!81697))))

(declare-fun lt!64336 () ListLongMap!1681)

(assert (=> d!37435 (= res!60537 (contains!873 lt!64336 (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun lt!64338 () List!1716)

(assert (=> d!37435 (= lt!64336 (ListLongMap!1682 lt!64338))))

(declare-fun lt!64339 () Unit!3878)

(declare-fun lt!64337 () Unit!3878)

(assert (=> d!37435 (= lt!64339 lt!64337)))

(assert (=> d!37435 (= (getValueByKey!165 lt!64338 (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))) (Some!170 (_2!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> d!37435 (= lt!64337 (lemmaContainsTupThenGetReturnValue!82 lt!64338 (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) (_2!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> d!37435 (= lt!64338 (insertStrictlySorted!84 (toList!856 (ite c!22694 call!13357 (ite c!22696 call!13360 call!13363))) (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) (_2!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> d!37435 (= (+!164 (ite c!22694 call!13357 (ite c!22696 call!13360 call!13363)) (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64336)))

(declare-fun b!124987 () Bool)

(declare-fun res!60538 () Bool)

(assert (=> b!124987 (=> (not res!60538) (not e!81697))))

(assert (=> b!124987 (= res!60538 (= (getValueByKey!165 (toList!856 lt!64336) (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))) (Some!170 (_2!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(declare-fun b!124988 () Bool)

(assert (=> b!124988 (= e!81697 (contains!874 (toList!856 lt!64336) (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (= (and d!37435 res!60537) b!124987))

(assert (= (and b!124987 res!60538) b!124988))

(declare-fun m!145179 () Bool)

(assert (=> d!37435 m!145179))

(declare-fun m!145181 () Bool)

(assert (=> d!37435 m!145181))

(declare-fun m!145183 () Bool)

(assert (=> d!37435 m!145183))

(declare-fun m!145185 () Bool)

(assert (=> d!37435 m!145185))

(declare-fun m!145187 () Bool)

(assert (=> b!124987 m!145187))

(declare-fun m!145189 () Bool)

(assert (=> b!124988 m!145189))

(assert (=> bm!13356 d!37435))

(declare-fun c!22749 () Bool)

(declare-fun lt!64345 () SeekEntryResult!279)

(declare-fun call!13395 () Bool)

(declare-fun bm!13391 () Bool)

(assert (=> bm!13391 (= call!13395 (inRange!0 (ite c!22749 (index!3270 lt!64345) (index!3273 lt!64345)) (mask!7010 newMap!16)))))

(declare-fun b!125005 () Bool)

(declare-fun e!81709 () Bool)

(declare-fun call!13394 () Bool)

(assert (=> b!125005 (= e!81709 (not call!13394))))

(declare-fun b!125006 () Bool)

(declare-fun e!81707 () Bool)

(assert (=> b!125006 (= e!81707 (not call!13394))))

(declare-fun bm!13392 () Bool)

(assert (=> bm!13392 (= call!13394 (arrayContainsKey!0 (_keys!4493 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!125007 () Bool)

(declare-fun res!60547 () Bool)

(assert (=> b!125007 (=> (not res!60547) (not e!81707))))

(assert (=> b!125007 (= res!60547 (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3273 lt!64345)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!125007 (and (bvsge (index!3273 lt!64345) #b00000000000000000000000000000000) (bvslt (index!3273 lt!64345) (size!2481 (_keys!4493 newMap!16))))))

(declare-fun b!125008 () Bool)

(declare-fun e!81706 () Bool)

(declare-fun e!81708 () Bool)

(assert (=> b!125008 (= e!81706 e!81708)))

(declare-fun c!22750 () Bool)

(assert (=> b!125008 (= c!22750 ((_ is MissingVacant!279) lt!64345))))

(declare-fun b!125009 () Bool)

(assert (=> b!125009 (= e!81708 ((_ is Undefined!279) lt!64345))))

(declare-fun b!125010 () Bool)

(declare-fun res!60548 () Bool)

(assert (=> b!125010 (=> (not res!60548) (not e!81707))))

(assert (=> b!125010 (= res!60548 call!13395)))

(assert (=> b!125010 (= e!81708 e!81707)))

(declare-fun b!125012 () Bool)

(assert (=> b!125012 (and (bvsge (index!3270 lt!64345) #b00000000000000000000000000000000) (bvslt (index!3270 lt!64345) (size!2481 (_keys!4493 newMap!16))))))

(declare-fun res!60550 () Bool)

(assert (=> b!125012 (= res!60550 (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3270 lt!64345)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!125012 (=> (not res!60550) (not e!81709))))

(declare-fun b!125011 () Bool)

(assert (=> b!125011 (= e!81706 e!81709)))

(declare-fun res!60549 () Bool)

(assert (=> b!125011 (= res!60549 call!13395)))

(assert (=> b!125011 (=> (not res!60549) (not e!81709))))

(declare-fun d!37437 () Bool)

(assert (=> d!37437 e!81706))

(assert (=> d!37437 (= c!22749 ((_ is MissingZero!279) lt!64345))))

(assert (=> d!37437 (= lt!64345 (seekEntryOrOpen!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (_keys!4493 newMap!16) (mask!7010 newMap!16)))))

(declare-fun lt!64344 () Unit!3878)

(declare-fun choose!761 (array!4684 array!4686 (_ BitVec 32) (_ BitVec 32) V!3427 V!3427 (_ BitVec 64) Int) Unit!3878)

(assert (=> d!37437 (= lt!64344 (choose!761 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (defaultEntry!2764 newMap!16)))))

(assert (=> d!37437 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37437 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!55 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (defaultEntry!2764 newMap!16)) lt!64344)))

(assert (= (and d!37437 c!22749) b!125011))

(assert (= (and d!37437 (not c!22749)) b!125008))

(assert (= (and b!125011 res!60549) b!125012))

(assert (= (and b!125012 res!60550) b!125005))

(assert (= (and b!125008 c!22750) b!125010))

(assert (= (and b!125008 (not c!22750)) b!125009))

(assert (= (and b!125010 res!60548) b!125007))

(assert (= (and b!125007 res!60547) b!125006))

(assert (= (or b!125011 b!125010) bm!13391))

(assert (= (or b!125005 b!125006) bm!13392))

(declare-fun m!145191 () Bool)

(assert (=> b!125007 m!145191))

(assert (=> d!37437 m!144661))

(assert (=> d!37437 m!144785))

(assert (=> d!37437 m!144661))

(declare-fun m!145193 () Bool)

(assert (=> d!37437 m!145193))

(assert (=> d!37437 m!145009))

(assert (=> bm!13392 m!144661))

(assert (=> bm!13392 m!144801))

(declare-fun m!145195 () Bool)

(assert (=> b!125012 m!145195))

(declare-fun m!145197 () Bool)

(assert (=> bm!13391 m!145197))

(assert (=> bm!13319 d!37437))

(declare-fun d!37439 () Bool)

(declare-fun e!81710 () Bool)

(assert (=> d!37439 e!81710))

(declare-fun res!60551 () Bool)

(assert (=> d!37439 (=> (not res!60551) (not e!81710))))

(declare-fun lt!64346 () ListLongMap!1681)

(assert (=> d!37439 (= res!60551 (contains!873 lt!64346 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun lt!64348 () List!1716)

(assert (=> d!37439 (= lt!64346 (ListLongMap!1682 lt!64348))))

(declare-fun lt!64349 () Unit!3878)

(declare-fun lt!64347 () Unit!3878)

(assert (=> d!37439 (= lt!64349 lt!64347)))

(assert (=> d!37439 (= (getValueByKey!165 lt!64348 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) (Some!170 (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> d!37439 (= lt!64347 (lemmaContainsTupThenGetReturnValue!82 lt!64348 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> d!37439 (= lt!64348 (insertStrictlySorted!84 (toList!856 call!13362) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> d!37439 (= (+!164 call!13362 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64346)))

(declare-fun b!125013 () Bool)

(declare-fun res!60552 () Bool)

(assert (=> b!125013 (=> (not res!60552) (not e!81710))))

(assert (=> b!125013 (= res!60552 (= (getValueByKey!165 (toList!856 lt!64346) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) (Some!170 (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun b!125014 () Bool)

(assert (=> b!125014 (= e!81710 (contains!874 (toList!856 lt!64346) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))

(assert (= (and d!37439 res!60551) b!125013))

(assert (= (and b!125013 res!60552) b!125014))

(declare-fun m!145199 () Bool)

(assert (=> d!37439 m!145199))

(declare-fun m!145201 () Bool)

(assert (=> d!37439 m!145201))

(declare-fun m!145203 () Bool)

(assert (=> d!37439 m!145203))

(declare-fun m!145205 () Bool)

(assert (=> d!37439 m!145205))

(declare-fun m!145207 () Bool)

(assert (=> b!125013 m!145207))

(declare-fun m!145209 () Bool)

(assert (=> b!125014 m!145209))

(assert (=> b!124782 d!37439))

(declare-fun b!125027 () Bool)

(declare-fun c!22758 () Bool)

(declare-fun lt!64357 () (_ BitVec 64))

(assert (=> b!125027 (= c!22758 (= lt!64357 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!81717 () SeekEntryResult!279)

(declare-fun e!81719 () SeekEntryResult!279)

(assert (=> b!125027 (= e!81717 e!81719)))

(declare-fun b!125028 () Bool)

(declare-fun e!81718 () SeekEntryResult!279)

(assert (=> b!125028 (= e!81718 e!81717)))

(declare-fun lt!64358 () SeekEntryResult!279)

(assert (=> b!125028 (= lt!64357 (select (arr!2218 (_keys!4493 newMap!16)) (index!3272 lt!64358)))))

(declare-fun c!22757 () Bool)

(assert (=> b!125028 (= c!22757 (= lt!64357 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun b!125029 () Bool)

(assert (=> b!125029 (= e!81718 Undefined!279)))

(declare-fun b!125030 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4684 (_ BitVec 32)) SeekEntryResult!279)

(assert (=> b!125030 (= e!81719 (seekKeyOrZeroReturnVacant!0 (x!14828 lt!64358) (index!3272 lt!64358) (index!3272 lt!64358) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (_keys!4493 newMap!16) (mask!7010 newMap!16)))))

(declare-fun d!37441 () Bool)

(declare-fun lt!64356 () SeekEntryResult!279)

(assert (=> d!37441 (and (or ((_ is Undefined!279) lt!64356) (not ((_ is Found!279) lt!64356)) (and (bvsge (index!3271 lt!64356) #b00000000000000000000000000000000) (bvslt (index!3271 lt!64356) (size!2481 (_keys!4493 newMap!16))))) (or ((_ is Undefined!279) lt!64356) ((_ is Found!279) lt!64356) (not ((_ is MissingZero!279) lt!64356)) (and (bvsge (index!3270 lt!64356) #b00000000000000000000000000000000) (bvslt (index!3270 lt!64356) (size!2481 (_keys!4493 newMap!16))))) (or ((_ is Undefined!279) lt!64356) ((_ is Found!279) lt!64356) ((_ is MissingZero!279) lt!64356) (not ((_ is MissingVacant!279) lt!64356)) (and (bvsge (index!3273 lt!64356) #b00000000000000000000000000000000) (bvslt (index!3273 lt!64356) (size!2481 (_keys!4493 newMap!16))))) (or ((_ is Undefined!279) lt!64356) (ite ((_ is Found!279) lt!64356) (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64356)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (ite ((_ is MissingZero!279) lt!64356) (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3270 lt!64356)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!279) lt!64356) (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3273 lt!64356)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37441 (= lt!64356 e!81718)))

(declare-fun c!22759 () Bool)

(assert (=> d!37441 (= c!22759 (and ((_ is Intermediate!279) lt!64358) (undefined!1091 lt!64358)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4684 (_ BitVec 32)) SeekEntryResult!279)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!37441 (= lt!64358 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (mask!7010 newMap!16)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (_keys!4493 newMap!16) (mask!7010 newMap!16)))))

(assert (=> d!37441 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37441 (= (seekEntryOrOpen!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (_keys!4493 newMap!16) (mask!7010 newMap!16)) lt!64356)))

(declare-fun b!125031 () Bool)

(assert (=> b!125031 (= e!81717 (Found!279 (index!3272 lt!64358)))))

(declare-fun b!125032 () Bool)

(assert (=> b!125032 (= e!81719 (MissingZero!279 (index!3272 lt!64358)))))

(assert (= (and d!37441 c!22759) b!125029))

(assert (= (and d!37441 (not c!22759)) b!125028))

(assert (= (and b!125028 c!22757) b!125031))

(assert (= (and b!125028 (not c!22757)) b!125027))

(assert (= (and b!125027 c!22758) b!125032))

(assert (= (and b!125027 (not c!22758)) b!125030))

(declare-fun m!145211 () Bool)

(assert (=> b!125028 m!145211))

(assert (=> b!125030 m!144661))

(declare-fun m!145213 () Bool)

(assert (=> b!125030 m!145213))

(assert (=> d!37441 m!145009))

(declare-fun m!145215 () Bool)

(assert (=> d!37441 m!145215))

(declare-fun m!145217 () Bool)

(assert (=> d!37441 m!145217))

(declare-fun m!145219 () Bool)

(assert (=> d!37441 m!145219))

(declare-fun m!145221 () Bool)

(assert (=> d!37441 m!145221))

(assert (=> d!37441 m!144661))

(declare-fun m!145223 () Bool)

(assert (=> d!37441 m!145223))

(assert (=> d!37441 m!144661))

(assert (=> d!37441 m!145221))

(assert (=> bm!13335 d!37441))

(declare-fun d!37443 () Bool)

(declare-fun e!81721 () Bool)

(assert (=> d!37443 e!81721))

(declare-fun res!60553 () Bool)

(assert (=> d!37443 (=> res!60553 e!81721)))

(declare-fun lt!64359 () Bool)

(assert (=> d!37443 (= res!60553 (not lt!64359))))

(declare-fun lt!64362 () Bool)

(assert (=> d!37443 (= lt!64359 lt!64362)))

(declare-fun lt!64360 () Unit!3878)

(declare-fun e!81720 () Unit!3878)

(assert (=> d!37443 (= lt!64360 e!81720)))

(declare-fun c!22760 () Bool)

(assert (=> d!37443 (= c!22760 lt!64362)))

(assert (=> d!37443 (= lt!64362 (containsKey!169 (toList!856 call!13330) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (=> d!37443 (= (contains!873 call!13330 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) lt!64359)))

(declare-fun b!125033 () Bool)

(declare-fun lt!64361 () Unit!3878)

(assert (=> b!125033 (= e!81720 lt!64361)))

(assert (=> b!125033 (= lt!64361 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 call!13330) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (=> b!125033 (isDefined!119 (getValueByKey!165 (toList!856 call!13330) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun b!125034 () Bool)

(declare-fun Unit!3890 () Unit!3878)

(assert (=> b!125034 (= e!81720 Unit!3890)))

(declare-fun b!125035 () Bool)

(assert (=> b!125035 (= e!81721 (isDefined!119 (getValueByKey!165 (toList!856 call!13330) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))))))

(assert (= (and d!37443 c!22760) b!125033))

(assert (= (and d!37443 (not c!22760)) b!125034))

(assert (= (and d!37443 (not res!60553)) b!125035))

(assert (=> d!37443 m!144661))

(declare-fun m!145225 () Bool)

(assert (=> d!37443 m!145225))

(assert (=> b!125033 m!144661))

(declare-fun m!145227 () Bool)

(assert (=> b!125033 m!145227))

(assert (=> b!125033 m!144661))

(declare-fun m!145229 () Bool)

(assert (=> b!125033 m!145229))

(assert (=> b!125033 m!145229))

(declare-fun m!145231 () Bool)

(assert (=> b!125033 m!145231))

(assert (=> b!125035 m!144661))

(assert (=> b!125035 m!145229))

(assert (=> b!125035 m!145229))

(assert (=> b!125035 m!145231))

(assert (=> b!124684 d!37443))

(declare-fun d!37445 () Bool)

(declare-fun res!60554 () Bool)

(declare-fun e!81722 () Bool)

(assert (=> d!37445 (=> (not res!60554) (not e!81722))))

(assert (=> d!37445 (= res!60554 (simpleValid!85 (_2!1291 lt!64127)))))

(assert (=> d!37445 (= (valid!499 (_2!1291 lt!64127)) e!81722)))

(declare-fun b!125036 () Bool)

(declare-fun res!60555 () Bool)

(assert (=> b!125036 (=> (not res!60555) (not e!81722))))

(assert (=> b!125036 (= res!60555 (= (arrayCountValidKeys!0 (_keys!4493 (_2!1291 lt!64127)) #b00000000000000000000000000000000 (size!2481 (_keys!4493 (_2!1291 lt!64127)))) (_size!577 (_2!1291 lt!64127))))))

(declare-fun b!125037 () Bool)

(declare-fun res!60556 () Bool)

(assert (=> b!125037 (=> (not res!60556) (not e!81722))))

(assert (=> b!125037 (= res!60556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4493 (_2!1291 lt!64127)) (mask!7010 (_2!1291 lt!64127))))))

(declare-fun b!125038 () Bool)

(assert (=> b!125038 (= e!81722 (arrayNoDuplicates!0 (_keys!4493 (_2!1291 lt!64127)) #b00000000000000000000000000000000 Nil!1714))))

(assert (= (and d!37445 res!60554) b!125036))

(assert (= (and b!125036 res!60555) b!125037))

(assert (= (and b!125037 res!60556) b!125038))

(declare-fun m!145233 () Bool)

(assert (=> d!37445 m!145233))

(declare-fun m!145235 () Bool)

(assert (=> b!125036 m!145235))

(declare-fun m!145237 () Bool)

(assert (=> b!125037 m!145237))

(declare-fun m!145239 () Bool)

(assert (=> b!125038 m!145239))

(assert (=> d!37345 d!37445))

(assert (=> d!37345 d!37339))

(declare-fun d!37447 () Bool)

(declare-fun e!81723 () Bool)

(assert (=> d!37447 e!81723))

(declare-fun res!60557 () Bool)

(assert (=> d!37447 (=> (not res!60557) (not e!81723))))

(declare-fun lt!64363 () ListLongMap!1681)

(assert (=> d!37447 (= res!60557 (contains!873 lt!64363 (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun lt!64365 () List!1716)

(assert (=> d!37447 (= lt!64363 (ListLongMap!1682 lt!64365))))

(declare-fun lt!64366 () Unit!3878)

(declare-fun lt!64364 () Unit!3878)

(assert (=> d!37447 (= lt!64366 lt!64364)))

(assert (=> d!37447 (= (getValueByKey!165 lt!64365 (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!170 (_2!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!37447 (= lt!64364 (lemmaContainsTupThenGetReturnValue!82 lt!64365 (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!37447 (= lt!64365 (insertStrictlySorted!84 (toList!856 e!81519) (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!37447 (= (+!164 e!81519 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!64363)))

(declare-fun b!125039 () Bool)

(declare-fun res!60558 () Bool)

(assert (=> b!125039 (=> (not res!60558) (not e!81723))))

(assert (=> b!125039 (= res!60558 (= (getValueByKey!165 (toList!856 lt!64363) (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!170 (_2!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!125040 () Bool)

(assert (=> b!125040 (= e!81723 (contains!874 (toList!856 lt!64363) (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!37447 res!60557) b!125039))

(assert (= (and b!125039 res!60558) b!125040))

(declare-fun m!145241 () Bool)

(assert (=> d!37447 m!145241))

(declare-fun m!145243 () Bool)

(assert (=> d!37447 m!145243))

(declare-fun m!145245 () Bool)

(assert (=> d!37447 m!145245))

(declare-fun m!145247 () Bool)

(assert (=> d!37447 m!145247))

(declare-fun m!145249 () Bool)

(assert (=> b!125039 m!145249))

(declare-fun m!145251 () Bool)

(assert (=> b!125040 m!145251))

(assert (=> bm!13336 d!37447))

(assert (=> b!124711 d!37419))

(declare-fun d!37449 () Bool)

(assert (=> d!37449 (= (validKeyInArray!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!124783 d!37449))

(assert (=> d!37357 d!37349))

(assert (=> b!124700 d!37441))

(declare-fun d!37451 () Bool)

(declare-fun e!81724 () Bool)

(assert (=> d!37451 e!81724))

(declare-fun res!60559 () Bool)

(assert (=> d!37451 (=> (not res!60559) (not e!81724))))

(declare-fun lt!64367 () ListLongMap!1681)

(assert (=> d!37451 (= res!60559 (contains!873 lt!64367 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!64369 () List!1716)

(assert (=> d!37451 (= lt!64367 (ListLongMap!1682 lt!64369))))

(declare-fun lt!64370 () Unit!3878)

(declare-fun lt!64368 () Unit!3878)

(assert (=> d!37451 (= lt!64370 lt!64368)))

(assert (=> d!37451 (= (getValueByKey!165 lt!64369 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!170 (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37451 (= lt!64368 (lemmaContainsTupThenGetReturnValue!82 lt!64369 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37451 (= lt!64369 (insertStrictlySorted!84 (toList!856 call!13323) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37451 (= (+!164 call!13323 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!64367)))

(declare-fun b!125041 () Bool)

(declare-fun res!60560 () Bool)

(assert (=> b!125041 (=> (not res!60560) (not e!81724))))

(assert (=> b!125041 (= res!60560 (= (getValueByKey!165 (toList!856 lt!64367) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!170 (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!125042 () Bool)

(assert (=> b!125042 (= e!81724 (contains!874 (toList!856 lt!64367) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!37451 res!60559) b!125041))

(assert (= (and b!125041 res!60560) b!125042))

(declare-fun m!145253 () Bool)

(assert (=> d!37451 m!145253))

(declare-fun m!145255 () Bool)

(assert (=> d!37451 m!145255))

(declare-fun m!145257 () Bool)

(assert (=> d!37451 m!145257))

(declare-fun m!145259 () Bool)

(assert (=> d!37451 m!145259))

(declare-fun m!145261 () Bool)

(assert (=> b!125041 m!145261))

(declare-fun m!145263 () Bool)

(assert (=> b!125042 m!145263))

(assert (=> b!124712 d!37451))

(declare-fun d!37453 () Bool)

(declare-fun e!81726 () Bool)

(assert (=> d!37453 e!81726))

(declare-fun res!60561 () Bool)

(assert (=> d!37453 (=> res!60561 e!81726)))

(declare-fun lt!64371 () Bool)

(assert (=> d!37453 (= res!60561 (not lt!64371))))

(declare-fun lt!64374 () Bool)

(assert (=> d!37453 (= lt!64371 lt!64374)))

(declare-fun lt!64372 () Unit!3878)

(declare-fun e!81725 () Unit!3878)

(assert (=> d!37453 (= lt!64372 e!81725)))

(declare-fun c!22761 () Bool)

(assert (=> d!37453 (= c!22761 lt!64374)))

(assert (=> d!37453 (= lt!64374 (containsKey!169 (toList!856 lt!64187) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!37453 (= (contains!873 lt!64187 #b0000000000000000000000000000000000000000000000000000000000000000) lt!64371)))

(declare-fun b!125043 () Bool)

(declare-fun lt!64373 () Unit!3878)

(assert (=> b!125043 (= e!81725 lt!64373)))

(assert (=> b!125043 (= lt!64373 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64187) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!125043 (isDefined!119 (getValueByKey!165 (toList!856 lt!64187) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!125044 () Bool)

(declare-fun Unit!3891 () Unit!3878)

(assert (=> b!125044 (= e!81725 Unit!3891)))

(declare-fun b!125045 () Bool)

(assert (=> b!125045 (= e!81726 (isDefined!119 (getValueByKey!165 (toList!856 lt!64187) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37453 c!22761) b!125043))

(assert (= (and d!37453 (not c!22761)) b!125044))

(assert (= (and d!37453 (not res!60561)) b!125045))

(declare-fun m!145265 () Bool)

(assert (=> d!37453 m!145265))

(declare-fun m!145267 () Bool)

(assert (=> b!125043 m!145267))

(assert (=> b!125043 m!145171))

(assert (=> b!125043 m!145171))

(declare-fun m!145269 () Bool)

(assert (=> b!125043 m!145269))

(assert (=> b!125045 m!145171))

(assert (=> b!125045 m!145171))

(assert (=> b!125045 m!145269))

(assert (=> bm!13357 d!37453))

(declare-fun d!37455 () Bool)

(assert (=> d!37455 (= (get!1446 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3105 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (=> b!124726 d!37455))

(declare-fun b!125080 () Bool)

(declare-fun e!81744 () Unit!3878)

(declare-fun Unit!3892 () Unit!3878)

(assert (=> b!125080 (= e!81744 Unit!3892)))

(declare-fun lt!64457 () Unit!3878)

(assert (=> b!125080 (= lt!64457 (lemmaInListMapThenSeekEntryOrOpenFindsIt!55 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64436 () SeekEntryResult!279)

(declare-fun call!13407 () SeekEntryResult!279)

(assert (=> b!125080 (= lt!64436 call!13407)))

(declare-fun res!60581 () Bool)

(assert (=> b!125080 (= res!60581 ((_ is Found!279) lt!64436))))

(declare-fun e!81743 () Bool)

(assert (=> b!125080 (=> (not res!60581) (not e!81743))))

(assert (=> b!125080 e!81743))

(declare-fun lt!64455 () Unit!3878)

(assert (=> b!125080 (= lt!64455 lt!64457)))

(assert (=> b!125080 false))

(declare-fun d!37457 () Bool)

(declare-fun e!81748 () Bool)

(assert (=> d!37457 e!81748))

(declare-fun res!60587 () Bool)

(assert (=> d!37457 (=> (not res!60587) (not e!81748))))

(declare-fun lt!64460 () tuple2!2562)

(assert (=> d!37457 (= res!60587 (_1!1291 lt!64460))))

(assert (=> d!37457 (= lt!64460 (tuple2!2563 true (LongMapFixedSize!1057 (defaultEntry!2764 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (bvadd (_size!577 newMap!16) #b00000000000000000000000000000001) (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))) (_vacant!577 newMap!16))))))

(declare-fun lt!64451 () Unit!3878)

(declare-fun lt!64443 () Unit!3878)

(assert (=> d!37457 (= lt!64451 lt!64443)))

(declare-fun lt!64461 () array!4686)

(declare-fun lt!64441 () array!4684)

(assert (=> d!37457 (contains!873 (getCurrentListMap!528 lt!64441 lt!64461 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) (select (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122))))))

(assert (=> d!37457 (= lt!64443 (lemmaValidKeyInArrayIsInListMap!113 lt!64441 lt!64461 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (defaultEntry!2764 newMap!16)))))

(assert (=> d!37457 (= lt!64461 (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))))))

(assert (=> d!37457 (= lt!64441 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))))))

(declare-fun lt!64445 () Unit!3878)

(declare-fun lt!64456 () Unit!3878)

(assert (=> d!37457 (= lt!64445 lt!64456)))

(declare-fun lt!64464 () array!4684)

(assert (=> d!37457 (= (arrayCountValidKeys!0 lt!64464 (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (bvadd (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!4684 (_ BitVec 32)) Unit!3878)

(assert (=> d!37457 (= lt!64456 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!64464 (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122))))))

(assert (=> d!37457 (= lt!64464 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))))))

(declare-fun lt!64438 () Unit!3878)

(declare-fun lt!64452 () Unit!3878)

(assert (=> d!37457 (= lt!64438 lt!64452)))

(declare-fun lt!64439 () array!4684)

(assert (=> d!37457 (arrayContainsKey!0 lt!64439 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(assert (=> d!37457 (= lt!64452 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!64439 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122))))))

(assert (=> d!37457 (= lt!64439 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))))))

(declare-fun lt!64449 () Unit!3878)

(declare-fun lt!64437 () Unit!3878)

(assert (=> d!37457 (= lt!64449 lt!64437)))

(assert (=> d!37457 (= (+!164 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!528 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!36 (array!4684 array!4686 (_ BitVec 32) (_ BitVec 32) V!3427 V!3427 (_ BitVec 32) (_ BitVec 64) V!3427 Int) Unit!3878)

(assert (=> d!37457 (= lt!64437 (lemmaAddValidKeyToArrayThenAddPairToListMap!36 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64440 () Unit!3878)

(declare-fun lt!64435 () Unit!3878)

(assert (=> d!37457 (= lt!64440 lt!64435)))

(assert (=> d!37457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) (mask!7010 newMap!16))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!4684 (_ BitVec 32) (_ BitVec 32)) Unit!3878)

(assert (=> d!37457 (= lt!64435 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (_keys!4493 newMap!16) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (mask!7010 newMap!16)))))

(declare-fun lt!64448 () Unit!3878)

(declare-fun lt!64446 () Unit!3878)

(assert (=> d!37457 (= lt!64448 lt!64446)))

(assert (=> d!37457 (= (arrayCountValidKeys!0 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!4493 newMap!16) #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!4684 (_ BitVec 32) (_ BitVec 64)) Unit!3878)

(assert (=> d!37457 (= lt!64446 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!4493 newMap!16) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun lt!64458 () Unit!3878)

(declare-fun lt!64453 () Unit!3878)

(assert (=> d!37457 (= lt!64458 lt!64453)))

(declare-fun lt!64444 () (_ BitVec 32))

(declare-fun lt!64462 () List!1717)

(assert (=> d!37457 (arrayNoDuplicates!0 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) lt!64444 lt!64462)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!4684 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1717) Unit!3878)

(assert (=> d!37457 (= lt!64453 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!4493 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) lt!64444 lt!64462))))

(assert (=> d!37457 (= lt!64462 Nil!1714)))

(assert (=> d!37457 (= lt!64444 #b00000000000000000000000000000000)))

(declare-fun lt!64447 () Unit!3878)

(declare-fun e!81747 () Unit!3878)

(assert (=> d!37457 (= lt!64447 e!81747)))

(declare-fun c!22771 () Bool)

(assert (=> d!37457 (= c!22771 (arrayContainsKey!0 (_keys!4493 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun lt!64442 () Unit!3878)

(assert (=> d!37457 (= lt!64442 e!81744)))

(declare-fun c!22772 () Bool)

(assert (=> d!37457 (= c!22772 (contains!873 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (=> d!37457 (valid!499 newMap!16)))

(assert (=> d!37457 (= (updateHelperNewKey!55 newMap!16 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122))) lt!64460)))

(declare-fun lt!64454 () SeekEntryResult!279)

(declare-fun c!22770 () Bool)

(declare-fun bm!13401 () Bool)

(declare-fun call!13404 () Bool)

(assert (=> bm!13401 (= call!13404 (inRange!0 (ite c!22772 (index!3271 lt!64436) (ite c!22770 (index!3270 lt!64454) (index!3273 lt!64454))) (mask!7010 newMap!16)))))

(declare-fun bm!13402 () Bool)

(declare-fun call!13405 () Bool)

(assert (=> bm!13402 (= call!13405 call!13404)))

(declare-fun b!125081 () Bool)

(assert (=> b!125081 (= e!81748 (= (map!1379 (_2!1291 lt!64460)) (+!164 (map!1379 newMap!16) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!125082 () Bool)

(declare-fun Unit!3893 () Unit!3878)

(assert (=> b!125082 (= e!81747 Unit!3893)))

(declare-fun lt!64463 () Unit!3878)

(declare-fun lemmaArrayContainsKeyThenInListMap!36 (array!4684 array!4686 (_ BitVec 32) (_ BitVec 32) V!3427 V!3427 (_ BitVec 64) (_ BitVec 32) Int) Unit!3878)

(assert (=> b!125082 (= lt!64463 (lemmaArrayContainsKeyThenInListMap!36 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(assert (=> b!125082 (contains!873 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))))

(declare-fun lt!64459 () Unit!3878)

(assert (=> b!125082 (= lt!64459 lt!64463)))

(assert (=> b!125082 false))

(declare-fun b!125083 () Bool)

(declare-fun res!60580 () Bool)

(assert (=> b!125083 (=> (not res!60580) (not e!81748))))

(assert (=> b!125083 (= res!60580 (valid!499 (_2!1291 lt!64460)))))

(declare-fun b!125084 () Bool)

(declare-fun res!60584 () Bool)

(assert (=> b!125084 (= res!60584 (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3273 lt!64454)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!81750 () Bool)

(assert (=> b!125084 (=> (not res!60584) (not e!81750))))

(declare-fun bm!13403 () Bool)

(assert (=> bm!13403 (= call!13407 (seekEntryOrOpen!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (_keys!4493 newMap!16) (mask!7010 newMap!16)))))

(declare-fun b!125085 () Bool)

(declare-fun c!22773 () Bool)

(assert (=> b!125085 (= c!22773 ((_ is MissingVacant!279) lt!64454))))

(declare-fun e!81745 () Bool)

(declare-fun e!81746 () Bool)

(assert (=> b!125085 (= e!81745 e!81746)))

(declare-fun b!125086 () Bool)

(declare-fun Unit!3894 () Unit!3878)

(assert (=> b!125086 (= e!81747 Unit!3894)))

(declare-fun b!125087 () Bool)

(assert (=> b!125087 (= e!81746 e!81750)))

(declare-fun res!60588 () Bool)

(assert (=> b!125087 (= res!60588 call!13405)))

(assert (=> b!125087 (=> (not res!60588) (not e!81750))))

(declare-fun b!125088 () Bool)

(declare-fun call!13406 () Bool)

(assert (=> b!125088 (= e!81750 (not call!13406))))

(declare-fun b!125089 () Bool)

(declare-fun lt!64450 () Unit!3878)

(assert (=> b!125089 (= e!81744 lt!64450)))

(assert (=> b!125089 (= lt!64450 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!55 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (defaultEntry!2764 newMap!16)))))

(assert (=> b!125089 (= lt!64454 call!13407)))

(assert (=> b!125089 (= c!22770 ((_ is MissingZero!279) lt!64454))))

(assert (=> b!125089 e!81745))

(declare-fun b!125090 () Bool)

(declare-fun res!60585 () Bool)

(declare-fun e!81749 () Bool)

(assert (=> b!125090 (=> (not res!60585) (not e!81749))))

(assert (=> b!125090 (= res!60585 call!13405)))

(assert (=> b!125090 (= e!81745 e!81749)))

(declare-fun b!125091 () Bool)

(declare-fun res!60583 () Bool)

(assert (=> b!125091 (=> (not res!60583) (not e!81748))))

(assert (=> b!125091 (= res!60583 (contains!873 (map!1379 (_2!1291 lt!64460)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun bm!13404 () Bool)

(assert (=> bm!13404 (= call!13406 (arrayContainsKey!0 (_keys!4493 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!125092 () Bool)

(declare-fun res!60582 () Bool)

(assert (=> b!125092 (=> (not res!60582) (not e!81749))))

(assert (=> b!125092 (= res!60582 (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3270 lt!64454)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!125093 () Bool)

(assert (=> b!125093 (= e!81746 ((_ is Undefined!279) lt!64454))))

(declare-fun b!125094 () Bool)

(declare-fun res!60586 () Bool)

(assert (=> b!125094 (= res!60586 call!13404)))

(assert (=> b!125094 (=> (not res!60586) (not e!81743))))

(declare-fun b!125095 () Bool)

(assert (=> b!125095 (= e!81749 (not call!13406))))

(declare-fun b!125096 () Bool)

(assert (=> b!125096 (= e!81743 (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64436)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (= (and d!37457 c!22772) b!125080))

(assert (= (and d!37457 (not c!22772)) b!125089))

(assert (= (and b!125080 res!60581) b!125094))

(assert (= (and b!125094 res!60586) b!125096))

(assert (= (and b!125089 c!22770) b!125090))

(assert (= (and b!125089 (not c!22770)) b!125085))

(assert (= (and b!125090 res!60585) b!125092))

(assert (= (and b!125092 res!60582) b!125095))

(assert (= (and b!125085 c!22773) b!125087))

(assert (= (and b!125085 (not c!22773)) b!125093))

(assert (= (and b!125087 res!60588) b!125084))

(assert (= (and b!125084 res!60584) b!125088))

(assert (= (or b!125090 b!125087) bm!13402))

(assert (= (or b!125095 b!125088) bm!13404))

(assert (= (or b!125094 bm!13402) bm!13401))

(assert (= (or b!125080 b!125089) bm!13403))

(assert (= (and d!37457 c!22771) b!125082))

(assert (= (and d!37457 (not c!22771)) b!125086))

(assert (= (and d!37457 res!60587) b!125083))

(assert (= (and b!125083 res!60580) b!125091))

(assert (= (and b!125091 res!60583) b!125081))

(declare-fun m!145271 () Bool)

(assert (=> b!125083 m!145271))

(declare-fun m!145273 () Bool)

(assert (=> b!125091 m!145273))

(assert (=> b!125091 m!145273))

(assert (=> b!125091 m!144661))

(declare-fun m!145275 () Bool)

(assert (=> b!125091 m!145275))

(assert (=> b!125081 m!145273))

(assert (=> b!125081 m!144663))

(assert (=> b!125081 m!144663))

(declare-fun m!145277 () Bool)

(assert (=> b!125081 m!145277))

(declare-fun m!145279 () Bool)

(assert (=> b!125096 m!145279))

(assert (=> bm!13403 m!144661))

(assert (=> bm!13403 m!144785))

(declare-fun m!145281 () Bool)

(assert (=> b!125092 m!145281))

(assert (=> d!37457 m!144781))

(declare-fun m!145283 () Bool)

(assert (=> d!37457 m!145283))

(declare-fun m!145285 () Bool)

(assert (=> d!37457 m!145285))

(declare-fun m!145287 () Bool)

(assert (=> d!37457 m!145287))

(assert (=> d!37457 m!144689))

(assert (=> d!37457 m!144661))

(declare-fun m!145289 () Bool)

(assert (=> d!37457 m!145289))

(declare-fun m!145291 () Bool)

(assert (=> d!37457 m!145291))

(declare-fun m!145293 () Bool)

(assert (=> d!37457 m!145293))

(assert (=> d!37457 m!144661))

(declare-fun m!145295 () Bool)

(assert (=> d!37457 m!145295))

(assert (=> d!37457 m!145293))

(assert (=> d!37457 m!145283))

(declare-fun m!145297 () Bool)

(assert (=> d!37457 m!145297))

(assert (=> d!37457 m!144781))

(assert (=> d!37457 m!144661))

(declare-fun m!145299 () Bool)

(assert (=> d!37457 m!145299))

(declare-fun m!145301 () Bool)

(assert (=> d!37457 m!145301))

(assert (=> d!37457 m!144781))

(assert (=> d!37457 m!145037))

(declare-fun m!145303 () Bool)

(assert (=> d!37457 m!145303))

(assert (=> d!37457 m!144661))

(declare-fun m!145305 () Bool)

(assert (=> d!37457 m!145305))

(assert (=> d!37457 m!144661))

(assert (=> d!37457 m!144681))

(declare-fun m!145307 () Bool)

(assert (=> d!37457 m!145307))

(assert (=> d!37457 m!144661))

(declare-fun m!145309 () Bool)

(assert (=> d!37457 m!145309))

(assert (=> d!37457 m!144661))

(declare-fun m!145311 () Bool)

(assert (=> d!37457 m!145311))

(declare-fun m!145313 () Bool)

(assert (=> d!37457 m!145313))

(assert (=> d!37457 m!144731))

(assert (=> d!37457 m!144661))

(assert (=> d!37457 m!144801))

(declare-fun m!145315 () Bool)

(assert (=> d!37457 m!145315))

(declare-fun m!145317 () Bool)

(assert (=> d!37457 m!145317))

(declare-fun m!145319 () Bool)

(assert (=> d!37457 m!145319))

(assert (=> b!125082 m!144661))

(declare-fun m!145321 () Bool)

(assert (=> b!125082 m!145321))

(assert (=> b!125082 m!144781))

(assert (=> b!125082 m!144781))

(assert (=> b!125082 m!144661))

(assert (=> b!125082 m!145299))

(assert (=> bm!13404 m!144661))

(assert (=> bm!13404 m!144801))

(assert (=> b!125080 m!144661))

(assert (=> b!125080 m!144757))

(assert (=> b!125089 m!144661))

(assert (=> b!125089 m!144779))

(declare-fun m!145323 () Bool)

(assert (=> bm!13401 m!145323))

(declare-fun m!145325 () Bool)

(assert (=> b!125084 m!145325))

(assert (=> bm!13327 d!37457))

(declare-fun b!125097 () Bool)

(declare-fun e!81763 () Unit!3878)

(declare-fun Unit!3895 () Unit!3878)

(assert (=> b!125097 (= e!81763 Unit!3895)))

(declare-fun b!125098 () Bool)

(declare-fun e!81754 () ListLongMap!1681)

(declare-fun call!13409 () ListLongMap!1681)

(assert (=> b!125098 (= e!81754 call!13409)))

(declare-fun bm!13405 () Bool)

(declare-fun call!13414 () ListLongMap!1681)

(declare-fun call!13411 () ListLongMap!1681)

(assert (=> bm!13405 (= call!13414 call!13411)))

(declare-fun b!125099 () Bool)

(declare-fun e!81752 () Bool)

(assert (=> b!125099 (= e!81752 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!125100 () Bool)

(declare-fun e!81755 () Bool)

(declare-fun e!81757 () Bool)

(assert (=> b!125100 (= e!81755 e!81757)))

(declare-fun res!60596 () Bool)

(declare-fun call!13410 () Bool)

(assert (=> b!125100 (= res!60596 call!13410)))

(assert (=> b!125100 (=> (not res!60596) (not e!81757))))

(declare-fun lt!64475 () ListLongMap!1681)

(declare-fun e!81762 () Bool)

(declare-fun b!125101 () Bool)

(assert (=> b!125101 (= e!81762 (= (apply!110 lt!64475 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)) (get!1445 (select (arr!2219 (ite (or c!22675 c!22668) (_values!2747 newMap!16) lt!64129)) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!125101 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2482 (ite (or c!22675 c!22668) (_values!2747 newMap!16) lt!64129))))))

(assert (=> b!125101 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun b!125102 () Bool)

(assert (=> b!125102 (= e!81757 (= (apply!110 lt!64475 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))))

(declare-fun b!125103 () Bool)

(assert (=> b!125103 (= e!81754 call!13414)))

(declare-fun b!125104 () Bool)

(declare-fun e!81759 () ListLongMap!1681)

(assert (=> b!125104 (= e!81759 call!13409)))

(declare-fun bm!13406 () Bool)

(declare-fun call!13408 () ListLongMap!1681)

(assert (=> bm!13406 (= call!13411 call!13408)))

(declare-fun b!125105 () Bool)

(declare-fun res!60593 () Bool)

(declare-fun e!81760 () Bool)

(assert (=> b!125105 (=> (not res!60593) (not e!81760))))

(declare-fun e!81761 () Bool)

(assert (=> b!125105 (= res!60593 e!81761)))

(declare-fun res!60597 () Bool)

(assert (=> b!125105 (=> res!60597 e!81761)))

(declare-fun e!81758 () Bool)

(assert (=> b!125105 (= res!60597 (not e!81758))))

(declare-fun res!60590 () Bool)

(assert (=> b!125105 (=> (not res!60590) (not e!81758))))

(assert (=> b!125105 (= res!60590 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun d!37459 () Bool)

(assert (=> d!37459 e!81760))

(declare-fun res!60594 () Bool)

(assert (=> d!37459 (=> (not res!60594) (not e!81760))))

(assert (=> d!37459 (= res!60594 (or (bvsge #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))))

(declare-fun lt!64467 () ListLongMap!1681)

(assert (=> d!37459 (= lt!64475 lt!64467)))

(declare-fun lt!64479 () Unit!3878)

(assert (=> d!37459 (= lt!64479 e!81763)))

(declare-fun c!22775 () Bool)

(assert (=> d!37459 (= c!22775 e!81752)))

(declare-fun res!60592 () Bool)

(assert (=> d!37459 (=> (not res!60592) (not e!81752))))

(assert (=> d!37459 (= res!60592 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun e!81751 () ListLongMap!1681)

(assert (=> d!37459 (= lt!64467 e!81751)))

(declare-fun c!22776 () Bool)

(assert (=> d!37459 (= c!22776 (and (not (= (bvand (ite c!22675 (ite c!22669 lt!64124 lt!64107) (extraKeys!2549 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!22675 (ite c!22669 lt!64124 lt!64107) (extraKeys!2549 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!37459 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37459 (= (getCurrentListMap!528 (_keys!4493 newMap!16) (ite (or c!22675 c!22668) (_values!2747 newMap!16) lt!64129) (mask!7010 newMap!16) (ite c!22675 (ite c!22669 lt!64124 lt!64107) (extraKeys!2549 newMap!16)) (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)) (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) lt!64475)))

(declare-fun b!125106 () Bool)

(assert (=> b!125106 (= e!81755 (not call!13410))))

(declare-fun b!125107 () Bool)

(assert (=> b!125107 (= e!81761 e!81762)))

(declare-fun res!60595 () Bool)

(assert (=> b!125107 (=> (not res!60595) (not e!81762))))

(assert (=> b!125107 (= res!60595 (contains!873 lt!64475 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!125107 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun c!22778 () Bool)

(declare-fun call!13413 () ListLongMap!1681)

(declare-fun bm!13407 () Bool)

(assert (=> bm!13407 (= call!13413 (+!164 (ite c!22776 call!13408 (ite c!22778 call!13411 call!13414)) (ite (or c!22776 c!22778) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))))))

(declare-fun e!81753 () Bool)

(declare-fun b!125108 () Bool)

(assert (=> b!125108 (= e!81753 (= (apply!110 lt!64475 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))))))

(declare-fun b!125109 () Bool)

(assert (=> b!125109 (= e!81751 (+!164 call!13413 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))))))

(declare-fun b!125110 () Bool)

(assert (=> b!125110 (= e!81758 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun c!22777 () Bool)

(declare-fun b!125111 () Bool)

(assert (=> b!125111 (= c!22777 (and (not (= (bvand (ite c!22675 (ite c!22669 lt!64124 lt!64107) (extraKeys!2549 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!22675 (ite c!22669 lt!64124 lt!64107) (extraKeys!2549 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!125111 (= e!81759 e!81754)))

(declare-fun bm!13408 () Bool)

(declare-fun call!13412 () Bool)

(assert (=> bm!13408 (= call!13412 (contains!873 lt!64475 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!125112 () Bool)

(declare-fun e!81756 () Bool)

(assert (=> b!125112 (= e!81756 (not call!13412))))

(declare-fun b!125113 () Bool)

(assert (=> b!125113 (= e!81760 e!81755)))

(declare-fun c!22779 () Bool)

(assert (=> b!125113 (= c!22779 (not (= (bvand (ite c!22675 (ite c!22669 lt!64124 lt!64107) (extraKeys!2549 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!13409 () Bool)

(assert (=> bm!13409 (= call!13408 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (ite (or c!22675 c!22668) (_values!2747 newMap!16) lt!64129) (mask!7010 newMap!16) (ite c!22675 (ite c!22669 lt!64124 lt!64107) (extraKeys!2549 newMap!16)) (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)) (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun b!125114 () Bool)

(assert (=> b!125114 (= e!81751 e!81759)))

(assert (=> b!125114 (= c!22778 (and (not (= (bvand (ite c!22675 (ite c!22669 lt!64124 lt!64107) (extraKeys!2549 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!22675 (ite c!22669 lt!64124 lt!64107) (extraKeys!2549 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!125115 () Bool)

(assert (=> b!125115 (= e!81756 e!81753)))

(declare-fun res!60591 () Bool)

(assert (=> b!125115 (= res!60591 call!13412)))

(assert (=> b!125115 (=> (not res!60591) (not e!81753))))

(declare-fun b!125116 () Bool)

(declare-fun res!60589 () Bool)

(assert (=> b!125116 (=> (not res!60589) (not e!81760))))

(assert (=> b!125116 (= res!60589 e!81756)))

(declare-fun c!22774 () Bool)

(assert (=> b!125116 (= c!22774 (not (= (bvand (ite c!22675 (ite c!22669 lt!64124 lt!64107) (extraKeys!2549 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13410 () Bool)

(assert (=> bm!13410 (= call!13409 call!13413)))

(declare-fun b!125117 () Bool)

(declare-fun lt!64465 () Unit!3878)

(assert (=> b!125117 (= e!81763 lt!64465)))

(declare-fun lt!64468 () ListLongMap!1681)

(assert (=> b!125117 (= lt!64468 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (ite (or c!22675 c!22668) (_values!2747 newMap!16) lt!64129) (mask!7010 newMap!16) (ite c!22675 (ite c!22669 lt!64124 lt!64107) (extraKeys!2549 newMap!16)) (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)) (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64469 () (_ BitVec 64))

(assert (=> b!125117 (= lt!64469 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64481 () (_ BitVec 64))

(assert (=> b!125117 (= lt!64481 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64478 () Unit!3878)

(assert (=> b!125117 (= lt!64478 (addStillContains!86 lt!64468 lt!64469 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)) lt!64481))))

(assert (=> b!125117 (contains!873 (+!164 lt!64468 (tuple2!2561 lt!64469 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)))) lt!64481)))

(declare-fun lt!64480 () Unit!3878)

(assert (=> b!125117 (= lt!64480 lt!64478)))

(declare-fun lt!64482 () ListLongMap!1681)

(assert (=> b!125117 (= lt!64482 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (ite (or c!22675 c!22668) (_values!2747 newMap!16) lt!64129) (mask!7010 newMap!16) (ite c!22675 (ite c!22669 lt!64124 lt!64107) (extraKeys!2549 newMap!16)) (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)) (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64473 () (_ BitVec 64))

(assert (=> b!125117 (= lt!64473 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64472 () (_ BitVec 64))

(assert (=> b!125117 (= lt!64472 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64476 () Unit!3878)

(assert (=> b!125117 (= lt!64476 (addApplyDifferent!86 lt!64482 lt!64473 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)) lt!64472))))

(assert (=> b!125117 (= (apply!110 (+!164 lt!64482 (tuple2!2561 lt!64473 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))) lt!64472) (apply!110 lt!64482 lt!64472))))

(declare-fun lt!64485 () Unit!3878)

(assert (=> b!125117 (= lt!64485 lt!64476)))

(declare-fun lt!64474 () ListLongMap!1681)

(assert (=> b!125117 (= lt!64474 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (ite (or c!22675 c!22668) (_values!2747 newMap!16) lt!64129) (mask!7010 newMap!16) (ite c!22675 (ite c!22669 lt!64124 lt!64107) (extraKeys!2549 newMap!16)) (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)) (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64483 () (_ BitVec 64))

(assert (=> b!125117 (= lt!64483 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64470 () (_ BitVec 64))

(assert (=> b!125117 (= lt!64470 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64466 () Unit!3878)

(assert (=> b!125117 (= lt!64466 (addApplyDifferent!86 lt!64474 lt!64483 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)) lt!64470))))

(assert (=> b!125117 (= (apply!110 (+!164 lt!64474 (tuple2!2561 lt!64483 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)))) lt!64470) (apply!110 lt!64474 lt!64470))))

(declare-fun lt!64484 () Unit!3878)

(assert (=> b!125117 (= lt!64484 lt!64466)))

(declare-fun lt!64486 () ListLongMap!1681)

(assert (=> b!125117 (= lt!64486 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (ite (or c!22675 c!22668) (_values!2747 newMap!16) lt!64129) (mask!7010 newMap!16) (ite c!22675 (ite c!22669 lt!64124 lt!64107) (extraKeys!2549 newMap!16)) (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)) (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64477 () (_ BitVec 64))

(assert (=> b!125117 (= lt!64477 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64471 () (_ BitVec 64))

(assert (=> b!125117 (= lt!64471 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!125117 (= lt!64465 (addApplyDifferent!86 lt!64486 lt!64477 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)) lt!64471))))

(assert (=> b!125117 (= (apply!110 (+!164 lt!64486 (tuple2!2561 lt!64477 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))) lt!64471) (apply!110 lt!64486 lt!64471))))

(declare-fun bm!13411 () Bool)

(assert (=> bm!13411 (= call!13410 (contains!873 lt!64475 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!37459 c!22776) b!125109))

(assert (= (and d!37459 (not c!22776)) b!125114))

(assert (= (and b!125114 c!22778) b!125104))

(assert (= (and b!125114 (not c!22778)) b!125111))

(assert (= (and b!125111 c!22777) b!125098))

(assert (= (and b!125111 (not c!22777)) b!125103))

(assert (= (or b!125098 b!125103) bm!13405))

(assert (= (or b!125104 bm!13405) bm!13406))

(assert (= (or b!125104 b!125098) bm!13410))

(assert (= (or b!125109 bm!13406) bm!13409))

(assert (= (or b!125109 bm!13410) bm!13407))

(assert (= (and d!37459 res!60592) b!125099))

(assert (= (and d!37459 c!22775) b!125117))

(assert (= (and d!37459 (not c!22775)) b!125097))

(assert (= (and d!37459 res!60594) b!125105))

(assert (= (and b!125105 res!60590) b!125110))

(assert (= (and b!125105 (not res!60597)) b!125107))

(assert (= (and b!125107 res!60595) b!125101))

(assert (= (and b!125105 res!60593) b!125116))

(assert (= (and b!125116 c!22774) b!125115))

(assert (= (and b!125116 (not c!22774)) b!125112))

(assert (= (and b!125115 res!60591) b!125108))

(assert (= (or b!125115 b!125112) bm!13408))

(assert (= (and b!125116 res!60589) b!125113))

(assert (= (and b!125113 c!22779) b!125100))

(assert (= (and b!125113 (not c!22779)) b!125106))

(assert (= (and b!125100 res!60596) b!125102))

(assert (= (or b!125100 b!125106) bm!13411))

(declare-fun b_lambda!5507 () Bool)

(assert (=> (not b_lambda!5507) (not b!125101)))

(assert (=> b!125101 t!6062))

(declare-fun b_and!7701 () Bool)

(assert (= b_and!7697 (and (=> t!6062 result!3831) b_and!7701)))

(assert (=> b!125101 t!6064))

(declare-fun b_and!7703 () Bool)

(assert (= b_and!7699 (and (=> t!6064 result!3833) b_and!7703)))

(declare-fun m!145327 () Bool)

(assert (=> b!125109 m!145327))

(declare-fun m!145329 () Bool)

(assert (=> bm!13411 m!145329))

(assert (=> b!125099 m!145047))

(assert (=> b!125099 m!145047))

(assert (=> b!125099 m!145049))

(declare-fun m!145331 () Bool)

(assert (=> bm!13407 m!145331))

(declare-fun m!145333 () Bool)

(assert (=> b!125102 m!145333))

(assert (=> d!37459 m!145009))

(declare-fun m!145335 () Bool)

(assert (=> bm!13409 m!145335))

(declare-fun m!145337 () Bool)

(assert (=> b!125108 m!145337))

(declare-fun m!145339 () Bool)

(assert (=> b!125101 m!145339))

(assert (=> b!125101 m!145061))

(declare-fun m!145341 () Bool)

(assert (=> b!125101 m!145341))

(assert (=> b!125101 m!145047))

(declare-fun m!145343 () Bool)

(assert (=> b!125101 m!145343))

(assert (=> b!125101 m!145061))

(assert (=> b!125101 m!145339))

(assert (=> b!125101 m!145047))

(declare-fun m!145345 () Bool)

(assert (=> bm!13408 m!145345))

(declare-fun m!145347 () Bool)

(assert (=> b!125117 m!145347))

(declare-fun m!145349 () Bool)

(assert (=> b!125117 m!145349))

(declare-fun m!145351 () Bool)

(assert (=> b!125117 m!145351))

(declare-fun m!145353 () Bool)

(assert (=> b!125117 m!145353))

(declare-fun m!145355 () Bool)

(assert (=> b!125117 m!145355))

(declare-fun m!145357 () Bool)

(assert (=> b!125117 m!145357))

(assert (=> b!125117 m!145349))

(declare-fun m!145359 () Bool)

(assert (=> b!125117 m!145359))

(assert (=> b!125117 m!145351))

(assert (=> b!125117 m!145357))

(declare-fun m!145361 () Bool)

(assert (=> b!125117 m!145361))

(declare-fun m!145363 () Bool)

(assert (=> b!125117 m!145363))

(declare-fun m!145365 () Bool)

(assert (=> b!125117 m!145365))

(assert (=> b!125117 m!145047))

(declare-fun m!145367 () Bool)

(assert (=> b!125117 m!145367))

(declare-fun m!145369 () Bool)

(assert (=> b!125117 m!145369))

(assert (=> b!125117 m!145335))

(assert (=> b!125117 m!145347))

(declare-fun m!145371 () Bool)

(assert (=> b!125117 m!145371))

(declare-fun m!145373 () Bool)

(assert (=> b!125117 m!145373))

(declare-fun m!145375 () Bool)

(assert (=> b!125117 m!145375))

(assert (=> b!125107 m!145047))

(assert (=> b!125107 m!145047))

(declare-fun m!145377 () Bool)

(assert (=> b!125107 m!145377))

(assert (=> b!125110 m!145047))

(assert (=> b!125110 m!145047))

(assert (=> b!125110 m!145049))

(assert (=> bm!13322 d!37459))

(declare-fun d!37461 () Bool)

(assert (=> d!37461 (= (get!1447 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!124727 d!37461))

(declare-fun d!37463 () Bool)

(declare-fun e!81765 () Bool)

(assert (=> d!37463 e!81765))

(declare-fun res!60598 () Bool)

(assert (=> d!37463 (=> res!60598 e!81765)))

(declare-fun lt!64487 () Bool)

(assert (=> d!37463 (= res!60598 (not lt!64487))))

(declare-fun lt!64490 () Bool)

(assert (=> d!37463 (= lt!64487 lt!64490)))

(declare-fun lt!64488 () Unit!3878)

(declare-fun e!81764 () Unit!3878)

(assert (=> d!37463 (= lt!64488 e!81764)))

(declare-fun c!22780 () Bool)

(assert (=> d!37463 (= c!22780 lt!64490)))

(assert (=> d!37463 (= lt!64490 (containsKey!169 (toList!856 e!81515) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (=> d!37463 (= (contains!873 e!81515 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) lt!64487)))

(declare-fun b!125118 () Bool)

(declare-fun lt!64489 () Unit!3878)

(assert (=> b!125118 (= e!81764 lt!64489)))

(assert (=> b!125118 (= lt!64489 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 e!81515) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (=> b!125118 (isDefined!119 (getValueByKey!165 (toList!856 e!81515) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun b!125119 () Bool)

(declare-fun Unit!3896 () Unit!3878)

(assert (=> b!125119 (= e!81764 Unit!3896)))

(declare-fun b!125120 () Bool)

(assert (=> b!125120 (= e!81765 (isDefined!119 (getValueByKey!165 (toList!856 e!81515) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))))))

(assert (= (and d!37463 c!22780) b!125118))

(assert (= (and d!37463 (not c!22780)) b!125119))

(assert (= (and d!37463 (not res!60598)) b!125120))

(assert (=> d!37463 m!144661))

(declare-fun m!145379 () Bool)

(assert (=> d!37463 m!145379))

(assert (=> b!125118 m!144661))

(declare-fun m!145381 () Bool)

(assert (=> b!125118 m!145381))

(assert (=> b!125118 m!144661))

(declare-fun m!145383 () Bool)

(assert (=> b!125118 m!145383))

(assert (=> b!125118 m!145383))

(declare-fun m!145385 () Bool)

(assert (=> b!125118 m!145385))

(assert (=> b!125120 m!144661))

(assert (=> b!125120 m!145383))

(assert (=> b!125120 m!145383))

(assert (=> b!125120 m!145385))

(assert (=> bm!13329 d!37463))

(declare-fun d!37465 () Bool)

(declare-fun res!60603 () Bool)

(declare-fun e!81770 () Bool)

(assert (=> d!37465 (=> res!60603 e!81770)))

(assert (=> d!37465 (= res!60603 (= (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (=> d!37465 (= (arrayContainsKey!0 (_keys!4493 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) #b00000000000000000000000000000000) e!81770)))

(declare-fun b!125125 () Bool)

(declare-fun e!81771 () Bool)

(assert (=> b!125125 (= e!81770 e!81771)))

(declare-fun res!60604 () Bool)

(assert (=> b!125125 (=> (not res!60604) (not e!81771))))

(assert (=> b!125125 (= res!60604 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2481 (_keys!4493 newMap!16))))))

(declare-fun b!125126 () Bool)

(assert (=> b!125126 (= e!81771 (arrayContainsKey!0 (_keys!4493 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!37465 (not res!60603)) b!125125))

(assert (= (and b!125125 res!60604) b!125126))

(assert (=> d!37465 m!145047))

(assert (=> b!125126 m!144661))

(declare-fun m!145387 () Bool)

(assert (=> b!125126 m!145387))

(assert (=> bm!13338 d!37465))

(assert (=> bm!13358 d!37385))

(declare-fun d!37467 () Bool)

(declare-fun res!60605 () Bool)

(declare-fun e!81772 () Bool)

(assert (=> d!37467 (=> (not res!60605) (not e!81772))))

(assert (=> d!37467 (= res!60605 (simpleValid!85 (v!3106 (underlying!435 thiss!992))))))

(assert (=> d!37467 (= (valid!499 (v!3106 (underlying!435 thiss!992))) e!81772)))

(declare-fun b!125127 () Bool)

(declare-fun res!60606 () Bool)

(assert (=> b!125127 (=> (not res!60606) (not e!81772))))

(assert (=> b!125127 (= res!60606 (= (arrayCountValidKeys!0 (_keys!4493 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000000000 (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))) (_size!577 (v!3106 (underlying!435 thiss!992)))))))

(declare-fun b!125128 () Bool)

(declare-fun res!60607 () Bool)

(assert (=> b!125128 (=> (not res!60607) (not e!81772))))

(assert (=> b!125128 (= res!60607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4493 (v!3106 (underlying!435 thiss!992))) (mask!7010 (v!3106 (underlying!435 thiss!992)))))))

(declare-fun b!125129 () Bool)

(assert (=> b!125129 (= e!81772 (arrayNoDuplicates!0 (_keys!4493 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000000000 Nil!1714))))

(assert (= (and d!37467 res!60605) b!125127))

(assert (= (and b!125127 res!60606) b!125128))

(assert (= (and b!125128 res!60607) b!125129))

(declare-fun m!145389 () Bool)

(assert (=> d!37467 m!145389))

(declare-fun m!145391 () Bool)

(assert (=> b!125127 m!145391))

(declare-fun m!145393 () Bool)

(assert (=> b!125128 m!145393))

(declare-fun m!145395 () Bool)

(assert (=> b!125129 m!145395))

(assert (=> d!37341 d!37467))

(assert (=> b!124772 d!37449))

(declare-fun d!37469 () Bool)

(declare-fun e!81775 () Bool)

(assert (=> d!37469 e!81775))

(declare-fun res!60612 () Bool)

(assert (=> d!37469 (=> (not res!60612) (not e!81775))))

(declare-fun lt!64496 () SeekEntryResult!279)

(assert (=> d!37469 (= res!60612 ((_ is Found!279) lt!64496))))

(assert (=> d!37469 (= lt!64496 (seekEntryOrOpen!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (_keys!4493 newMap!16) (mask!7010 newMap!16)))))

(declare-fun lt!64495 () Unit!3878)

(declare-fun choose!762 (array!4684 array!4686 (_ BitVec 32) (_ BitVec 32) V!3427 V!3427 (_ BitVec 64) Int) Unit!3878)

(assert (=> d!37469 (= lt!64495 (choose!762 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (defaultEntry!2764 newMap!16)))))

(assert (=> d!37469 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37469 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!55 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (defaultEntry!2764 newMap!16)) lt!64495)))

(declare-fun b!125134 () Bool)

(declare-fun res!60613 () Bool)

(assert (=> b!125134 (=> (not res!60613) (not e!81775))))

(assert (=> b!125134 (= res!60613 (inRange!0 (index!3271 lt!64496) (mask!7010 newMap!16)))))

(declare-fun b!125135 () Bool)

(assert (=> b!125135 (= e!81775 (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64496)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (=> b!125135 (and (bvsge (index!3271 lt!64496) #b00000000000000000000000000000000) (bvslt (index!3271 lt!64496) (size!2481 (_keys!4493 newMap!16))))))

(assert (= (and d!37469 res!60612) b!125134))

(assert (= (and b!125134 res!60613) b!125135))

(assert (=> d!37469 m!144661))

(assert (=> d!37469 m!144785))

(assert (=> d!37469 m!144661))

(declare-fun m!145397 () Bool)

(assert (=> d!37469 m!145397))

(assert (=> d!37469 m!145009))

(declare-fun m!145399 () Bool)

(assert (=> b!125134 m!145399))

(declare-fun m!145401 () Bool)

(assert (=> b!125135 m!145401))

(assert (=> bm!13339 d!37469))

(declare-fun d!37471 () Bool)

(assert (=> d!37471 (isDefined!119 (getValueByKey!165 (toList!856 lt!64030) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun lt!64499 () Unit!3878)

(declare-fun choose!763 (List!1716 (_ BitVec 64)) Unit!3878)

(assert (=> d!37471 (= lt!64499 (choose!763 (toList!856 lt!64030) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun e!81778 () Bool)

(assert (=> d!37471 e!81778))

(declare-fun res!60616 () Bool)

(assert (=> d!37471 (=> (not res!60616) (not e!81778))))

(declare-fun isStrictlySorted!311 (List!1716) Bool)

(assert (=> d!37471 (= res!60616 (isStrictlySorted!311 (toList!856 lt!64030)))))

(assert (=> d!37471 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64030) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) lt!64499)))

(declare-fun b!125138 () Bool)

(assert (=> b!125138 (= e!81778 (containsKey!169 (toList!856 lt!64030) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (= (and d!37471 res!60616) b!125138))

(assert (=> d!37471 m!144661))

(assert (=> d!37471 m!144743))

(assert (=> d!37471 m!144743))

(assert (=> d!37471 m!144745))

(assert (=> d!37471 m!144661))

(declare-fun m!145403 () Bool)

(assert (=> d!37471 m!145403))

(declare-fun m!145405 () Bool)

(assert (=> d!37471 m!145405))

(assert (=> b!125138 m!144661))

(assert (=> b!125138 m!144739))

(assert (=> b!124593 d!37471))

(assert (=> b!124593 d!37359))

(assert (=> b!124593 d!37361))

(declare-fun mapNonEmpty!4485 () Bool)

(declare-fun mapRes!4485 () Bool)

(declare-fun tp!10929 () Bool)

(declare-fun e!81780 () Bool)

(assert (=> mapNonEmpty!4485 (= mapRes!4485 (and tp!10929 e!81780))))

(declare-fun mapRest!4485 () (Array (_ BitVec 32) ValueCell!1074))

(declare-fun mapKey!4485 () (_ BitVec 32))

(declare-fun mapValue!4485 () ValueCell!1074)

(assert (=> mapNonEmpty!4485 (= mapRest!4483 (store mapRest!4485 mapKey!4485 mapValue!4485))))

(declare-fun mapIsEmpty!4485 () Bool)

(assert (=> mapIsEmpty!4485 mapRes!4485))

(declare-fun b!125139 () Bool)

(assert (=> b!125139 (= e!81780 tp_is_empty!2835)))

(declare-fun condMapEmpty!4485 () Bool)

(declare-fun mapDefault!4485 () ValueCell!1074)

(assert (=> mapNonEmpty!4483 (= condMapEmpty!4485 (= mapRest!4483 ((as const (Array (_ BitVec 32) ValueCell!1074)) mapDefault!4485)))))

(declare-fun e!81779 () Bool)

(assert (=> mapNonEmpty!4483 (= tp!10927 (and e!81779 mapRes!4485))))

(declare-fun b!125140 () Bool)

(assert (=> b!125140 (= e!81779 tp_is_empty!2835)))

(assert (= (and mapNonEmpty!4483 condMapEmpty!4485) mapIsEmpty!4485))

(assert (= (and mapNonEmpty!4483 (not condMapEmpty!4485)) mapNonEmpty!4485))

(assert (= (and mapNonEmpty!4485 ((_ is ValueCellFull!1074) mapValue!4485)) b!125139))

(assert (= (and mapNonEmpty!4483 ((_ is ValueCellFull!1074) mapDefault!4485)) b!125140))

(declare-fun m!145407 () Bool)

(assert (=> mapNonEmpty!4485 m!145407))

(declare-fun mapNonEmpty!4486 () Bool)

(declare-fun mapRes!4486 () Bool)

(declare-fun tp!10930 () Bool)

(declare-fun e!81782 () Bool)

(assert (=> mapNonEmpty!4486 (= mapRes!4486 (and tp!10930 e!81782))))

(declare-fun mapValue!4486 () ValueCell!1074)

(declare-fun mapKey!4486 () (_ BitVec 32))

(declare-fun mapRest!4486 () (Array (_ BitVec 32) ValueCell!1074))

(assert (=> mapNonEmpty!4486 (= mapRest!4484 (store mapRest!4486 mapKey!4486 mapValue!4486))))

(declare-fun mapIsEmpty!4486 () Bool)

(assert (=> mapIsEmpty!4486 mapRes!4486))

(declare-fun b!125141 () Bool)

(assert (=> b!125141 (= e!81782 tp_is_empty!2835)))

(declare-fun condMapEmpty!4486 () Bool)

(declare-fun mapDefault!4486 () ValueCell!1074)

(assert (=> mapNonEmpty!4484 (= condMapEmpty!4486 (= mapRest!4484 ((as const (Array (_ BitVec 32) ValueCell!1074)) mapDefault!4486)))))

(declare-fun e!81781 () Bool)

(assert (=> mapNonEmpty!4484 (= tp!10928 (and e!81781 mapRes!4486))))

(declare-fun b!125142 () Bool)

(assert (=> b!125142 (= e!81781 tp_is_empty!2835)))

(assert (= (and mapNonEmpty!4484 condMapEmpty!4486) mapIsEmpty!4486))

(assert (= (and mapNonEmpty!4484 (not condMapEmpty!4486)) mapNonEmpty!4486))

(assert (= (and mapNonEmpty!4486 ((_ is ValueCellFull!1074) mapValue!4486)) b!125141))

(assert (= (and mapNonEmpty!4484 ((_ is ValueCellFull!1074) mapDefault!4486)) b!125142))

(declare-fun m!145409 () Bool)

(assert (=> mapNonEmpty!4486 m!145409))

(declare-fun b_lambda!5509 () Bool)

(assert (= b_lambda!5503 (or (and b!124522 b_free!2837 (= (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) (defaultEntry!2764 newMap!16))) (and b!124506 b_free!2839) b_lambda!5509)))

(declare-fun b_lambda!5511 () Bool)

(assert (= b_lambda!5499 (or (and b!124522 b_free!2837) (and b!124506 b_free!2839 (= (defaultEntry!2764 newMap!16) (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))))) b_lambda!5511)))

(declare-fun b_lambda!5513 () Bool)

(assert (= b_lambda!5507 (or (and b!124522 b_free!2837 (= (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) (defaultEntry!2764 newMap!16))) (and b!124506 b_free!2839) b_lambda!5513)))

(declare-fun b_lambda!5515 () Bool)

(assert (= b_lambda!5501 (or (and b!124522 b_free!2837) (and b!124506 b_free!2839 (= (defaultEntry!2764 newMap!16) (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))))) b_lambda!5515)))

(declare-fun b_lambda!5517 () Bool)

(assert (= b_lambda!5505 (or (and b!124522 b_free!2837 (= (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) (defaultEntry!2764 newMap!16))) (and b!124506 b_free!2839) b_lambda!5517)))

(check-sat (not bm!13401) (not bm!13403) (not d!37435) (not bm!13366) (not b!125134) (not d!37459) (not b!125033) (not b!124811) (not d!37399) (not b!124988) (not b!125030) (not b!125107) (not b!124893) (not b!124945) (not b_lambda!5497) (not b!124969) (not bm!13370) (not b!124958) (not b!124895) (not d!37379) (not bm!13411) (not b_lambda!5509) (not d!37447) (not b!124947) (not b!125126) (not b!124904) (not b!124953) (not b!124890) (not bm!13380) (not b!125128) (not d!37391) (not b!124817) (not b!124952) (not b!124902) (not d!37445) (not b!124882) (not d!37463) (not d!37451) (not d!37365) (not b!124884) (not b!124870) (not bm!13367) (not bm!13407) (not d!37397) (not b!125102) (not b!124873) (not b!124861) (not bm!13392) (not b!125110) (not b_next!2839) (not d!37427) (not d!37411) (not b!125041) (not b!124868) (not b!125040) (not b!124983) (not d!37443) (not d!37375) (not d!37441) (not d!37377) (not d!37453) (not b!124933) (not d!37415) (not b!124874) (not b!124911) (not b!124821) (not b!125082) (not b!124864) (not b_next!2837) (not b!124982) (not d!37373) (not b!125013) (not b!125109) (not b!124822) (not bm!13404) (not b!124881) (not d!37413) (not b!124854) (not b!124950) (not b!125118) (not d!37385) (not b!124857) (not b_lambda!5511) (not b!124819) (not d!37363) (not b!124971) (not b!124901) (not b!124903) (not b!125138) (not d!37469) (not d!37419) (not b!125091) (not d!37431) (not b!124987) (not b!124960) (not b_lambda!5513) (not d!37423) (not b!124923) (not d!37417) (not b!124869) (not d!37407) (not b!125099) (not b!125117) (not d!37381) (not d!37439) (not bm!13363) (not bm!13409) (not bm!13383) (not b!125043) (not d!37471) (not b_lambda!5493) (not b!124968) (not bm!13386) tp_is_empty!2835 (not b!124959) (not b!125042) (not b!124887) (not d!37359) (not b!124820) (not bm!13373) (not b!125120) (not b!125081) (not b!124818) (not b!125083) (not bm!13391) (not bm!13379) (not d!37467) b_and!7703 (not b_lambda!5515) (not b!124856) (not d!37437) (not b!125036) (not d!37405) (not b!125080) (not b!124853) (not b!125035) (not d!37429) (not b!124896) (not b!124871) (not b!125127) (not d!37389) (not bm!13381) (not d!37393) (not b!125108) (not b!124961) (not bm!13408) (not d!37367) (not b!125101) (not b!124859) (not b!125129) (not b!125045) (not b!124985) (not b!124934) (not mapNonEmpty!4486) (not b!124875) (not d!37371) (not b!125037) (not b!124866) (not bm!13368) (not b_lambda!5517) b_and!7701 (not mapNonEmpty!4485) (not b!125039) (not d!37369) (not d!37395) (not b!124858) (not b!125014) (not d!37387) (not b!125038) (not d!37383) (not d!37457) (not bm!13376) (not b!125089))
(check-sat b_and!7701 b_and!7703 (not b_next!2837) (not b_next!2839))
(get-model)

(declare-fun b!125143 () Bool)

(declare-fun e!81783 () Option!171)

(assert (=> b!125143 (= e!81783 (Some!170 (_2!1290 (h!2313 (toList!856 lt!64211)))))))

(declare-fun b!125146 () Bool)

(declare-fun e!81784 () Option!171)

(assert (=> b!125146 (= e!81784 None!169)))

(declare-fun b!125144 () Bool)

(assert (=> b!125144 (= e!81783 e!81784)))

(declare-fun c!22782 () Bool)

(assert (=> b!125144 (= c!22782 (and ((_ is Cons!1712) (toList!856 lt!64211)) (not (= (_1!1290 (h!2313 (toList!856 lt!64211))) (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(declare-fun b!125145 () Bool)

(assert (=> b!125145 (= e!81784 (getValueByKey!165 (t!6055 (toList!856 lt!64211)) (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun c!22781 () Bool)

(declare-fun d!37473 () Bool)

(assert (=> d!37473 (= c!22781 (and ((_ is Cons!1712) (toList!856 lt!64211)) (= (_1!1290 (h!2313 (toList!856 lt!64211))) (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> d!37473 (= (getValueByKey!165 (toList!856 lt!64211) (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) e!81783)))

(assert (= (and d!37473 c!22781) b!125143))

(assert (= (and d!37473 (not c!22781)) b!125144))

(assert (= (and b!125144 c!22782) b!125145))

(assert (= (and b!125144 (not c!22782)) b!125146))

(declare-fun m!145411 () Bool)

(assert (=> b!125145 m!145411))

(assert (=> b!124819 d!37473))

(declare-fun d!37475 () Bool)

(declare-fun isEmpty!400 (List!1716) Bool)

(assert (=> d!37475 (= (isEmpty!399 lt!64241) (isEmpty!400 (toList!856 lt!64241)))))

(declare-fun bs!5165 () Bool)

(assert (= bs!5165 d!37475))

(declare-fun m!145413 () Bool)

(assert (=> bs!5165 m!145413))

(assert (=> b!124859 d!37475))

(declare-fun b!125147 () Bool)

(declare-fun res!60618 () Bool)

(declare-fun e!81786 () Bool)

(assert (=> b!125147 (=> (not res!60618) (not e!81786))))

(declare-fun lt!64503 () ListLongMap!1681)

(assert (=> b!125147 (= res!60618 (not (contains!873 lt!64503 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!125148 () Bool)

(declare-fun lt!64502 () Unit!3878)

(declare-fun lt!64500 () Unit!3878)

(assert (=> b!125148 (= lt!64502 lt!64500)))

(declare-fun lt!64505 () V!3427)

(declare-fun lt!64504 () (_ BitVec 64))

(declare-fun lt!64506 () ListLongMap!1681)

(declare-fun lt!64501 () (_ BitVec 64))

(assert (=> b!125148 (not (contains!873 (+!164 lt!64506 (tuple2!2561 lt!64501 lt!64505)) lt!64504))))

(assert (=> b!125148 (= lt!64500 (addStillNotContains!57 lt!64506 lt!64501 lt!64505 lt!64504))))

(assert (=> b!125148 (= lt!64504 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!125148 (= lt!64505 (get!1445 (select (arr!2219 (ite (or c!22675 c!22668) (_values!2747 newMap!16) lt!64129)) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!125148 (= lt!64501 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun call!13415 () ListLongMap!1681)

(assert (=> b!125148 (= lt!64506 call!13415)))

(declare-fun e!81789 () ListLongMap!1681)

(assert (=> b!125148 (= e!81789 (+!164 call!13415 (tuple2!2561 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000) (get!1445 (select (arr!2219 (ite (or c!22675 c!22668) (_values!2747 newMap!16) lt!64129)) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!13412 () Bool)

(assert (=> bm!13412 (= call!13415 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (ite (or c!22675 c!22668) (_values!2747 newMap!16) lt!64129) (mask!7010 newMap!16) (ite c!22675 (ite c!22669 lt!64124 lt!64107) (extraKeys!2549 newMap!16)) (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)) (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!2764 newMap!16)))))

(declare-fun b!125149 () Bool)

(declare-fun e!81787 () ListLongMap!1681)

(assert (=> b!125149 (= e!81787 (ListLongMap!1682 Nil!1713))))

(declare-fun e!81785 () Bool)

(declare-fun b!125150 () Bool)

(assert (=> b!125150 (= e!81785 (= lt!64503 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (ite (or c!22675 c!22668) (_values!2747 newMap!16) lt!64129) (mask!7010 newMap!16) (ite c!22675 (ite c!22669 lt!64124 lt!64107) (extraKeys!2549 newMap!16)) (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)) (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!2764 newMap!16))))))

(declare-fun d!37477 () Bool)

(assert (=> d!37477 e!81786))

(declare-fun res!60620 () Bool)

(assert (=> d!37477 (=> (not res!60620) (not e!81786))))

(assert (=> d!37477 (= res!60620 (not (contains!873 lt!64503 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!37477 (= lt!64503 e!81787)))

(declare-fun c!22785 () Bool)

(assert (=> d!37477 (= c!22785 (bvsge #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(assert (=> d!37477 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37477 (= (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (ite (or c!22675 c!22668) (_values!2747 newMap!16) lt!64129) (mask!7010 newMap!16) (ite c!22675 (ite c!22669 lt!64124 lt!64107) (extraKeys!2549 newMap!16)) (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)) (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) lt!64503)))

(declare-fun b!125151 () Bool)

(assert (=> b!125151 (= e!81787 e!81789)))

(declare-fun c!22786 () Bool)

(assert (=> b!125151 (= c!22786 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!125152 () Bool)

(declare-fun e!81790 () Bool)

(declare-fun e!81788 () Bool)

(assert (=> b!125152 (= e!81790 e!81788)))

(assert (=> b!125152 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun res!60619 () Bool)

(assert (=> b!125152 (= res!60619 (contains!873 lt!64503 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!125152 (=> (not res!60619) (not e!81788))))

(declare-fun b!125153 () Bool)

(assert (=> b!125153 (= e!81785 (isEmpty!399 lt!64503))))

(declare-fun b!125154 () Bool)

(assert (=> b!125154 (= e!81786 e!81790)))

(declare-fun c!22784 () Bool)

(declare-fun e!81791 () Bool)

(assert (=> b!125154 (= c!22784 e!81791)))

(declare-fun res!60617 () Bool)

(assert (=> b!125154 (=> (not res!60617) (not e!81791))))

(assert (=> b!125154 (= res!60617 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun b!125155 () Bool)

(assert (=> b!125155 (= e!81791 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!125155 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!125156 () Bool)

(assert (=> b!125156 (= e!81790 e!81785)))

(declare-fun c!22783 () Bool)

(assert (=> b!125156 (= c!22783 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun b!125157 () Bool)

(assert (=> b!125157 (= e!81789 call!13415)))

(declare-fun b!125158 () Bool)

(assert (=> b!125158 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(assert (=> b!125158 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2482 (ite (or c!22675 c!22668) (_values!2747 newMap!16) lt!64129))))))

(assert (=> b!125158 (= e!81788 (= (apply!110 lt!64503 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)) (get!1445 (select (arr!2219 (ite (or c!22675 c!22668) (_values!2747 newMap!16) lt!64129)) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!37477 c!22785) b!125149))

(assert (= (and d!37477 (not c!22785)) b!125151))

(assert (= (and b!125151 c!22786) b!125148))

(assert (= (and b!125151 (not c!22786)) b!125157))

(assert (= (or b!125148 b!125157) bm!13412))

(assert (= (and d!37477 res!60620) b!125147))

(assert (= (and b!125147 res!60618) b!125154))

(assert (= (and b!125154 res!60617) b!125155))

(assert (= (and b!125154 c!22784) b!125152))

(assert (= (and b!125154 (not c!22784)) b!125156))

(assert (= (and b!125152 res!60619) b!125158))

(assert (= (and b!125156 c!22783) b!125150))

(assert (= (and b!125156 (not c!22783)) b!125153))

(declare-fun b_lambda!5519 () Bool)

(assert (=> (not b_lambda!5519) (not b!125148)))

(assert (=> b!125148 t!6062))

(declare-fun b_and!7705 () Bool)

(assert (= b_and!7701 (and (=> t!6062 result!3831) b_and!7705)))

(assert (=> b!125148 t!6064))

(declare-fun b_and!7707 () Bool)

(assert (= b_and!7703 (and (=> t!6064 result!3833) b_and!7707)))

(declare-fun b_lambda!5521 () Bool)

(assert (=> (not b_lambda!5521) (not b!125158)))

(assert (=> b!125158 t!6062))

(declare-fun b_and!7709 () Bool)

(assert (= b_and!7705 (and (=> t!6062 result!3831) b_and!7709)))

(assert (=> b!125158 t!6064))

(declare-fun b_and!7711 () Bool)

(assert (= b_and!7707 (and (=> t!6064 result!3833) b_and!7711)))

(assert (=> b!125152 m!145047))

(assert (=> b!125152 m!145047))

(declare-fun m!145415 () Bool)

(assert (=> b!125152 m!145415))

(assert (=> b!125158 m!145047))

(assert (=> b!125158 m!145339))

(assert (=> b!125158 m!145061))

(assert (=> b!125158 m!145341))

(assert (=> b!125158 m!145047))

(declare-fun m!145417 () Bool)

(assert (=> b!125158 m!145417))

(assert (=> b!125158 m!145061))

(assert (=> b!125158 m!145339))

(declare-fun m!145419 () Bool)

(assert (=> b!125148 m!145419))

(declare-fun m!145421 () Bool)

(assert (=> b!125148 m!145421))

(declare-fun m!145423 () Bool)

(assert (=> b!125148 m!145423))

(assert (=> b!125148 m!145339))

(assert (=> b!125148 m!145061))

(assert (=> b!125148 m!145341))

(assert (=> b!125148 m!145047))

(assert (=> b!125148 m!145423))

(declare-fun m!145425 () Bool)

(assert (=> b!125148 m!145425))

(assert (=> b!125148 m!145061))

(assert (=> b!125148 m!145339))

(declare-fun m!145427 () Bool)

(assert (=> b!125150 m!145427))

(assert (=> b!125155 m!145047))

(assert (=> b!125155 m!145047))

(assert (=> b!125155 m!145049))

(declare-fun m!145429 () Bool)

(assert (=> b!125153 m!145429))

(declare-fun m!145431 () Bool)

(assert (=> d!37477 m!145431))

(assert (=> d!37477 m!145009))

(assert (=> bm!13412 m!145427))

(assert (=> b!125151 m!145047))

(assert (=> b!125151 m!145047))

(assert (=> b!125151 m!145049))

(declare-fun m!145433 () Bool)

(assert (=> b!125147 m!145433))

(assert (=> bm!13409 d!37477))

(declare-fun b!125177 () Bool)

(declare-fun e!81804 () Bool)

(declare-fun e!81803 () Bool)

(assert (=> b!125177 (= e!81804 e!81803)))

(declare-fun res!60628 () Bool)

(declare-fun lt!64511 () SeekEntryResult!279)

(assert (=> b!125177 (= res!60628 (and ((_ is Intermediate!279) lt!64511) (not (undefined!1091 lt!64511)) (bvslt (x!14828 lt!64511) #b01111111111111111111111111111110) (bvsge (x!14828 lt!64511) #b00000000000000000000000000000000) (bvsge (x!14828 lt!64511) #b00000000000000000000000000000000)))))

(assert (=> b!125177 (=> (not res!60628) (not e!81803))))

(declare-fun d!37479 () Bool)

(assert (=> d!37479 e!81804))

(declare-fun c!22794 () Bool)

(assert (=> d!37479 (= c!22794 (and ((_ is Intermediate!279) lt!64511) (undefined!1091 lt!64511)))))

(declare-fun e!81805 () SeekEntryResult!279)

(assert (=> d!37479 (= lt!64511 e!81805)))

(declare-fun c!22795 () Bool)

(assert (=> d!37479 (= c!22795 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!64512 () (_ BitVec 64))

(assert (=> d!37479 (= lt!64512 (select (arr!2218 (_keys!4493 newMap!16)) (toIndex!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (mask!7010 newMap!16))))))

(assert (=> d!37479 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37479 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (mask!7010 newMap!16)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (_keys!4493 newMap!16) (mask!7010 newMap!16)) lt!64511)))

(declare-fun b!125178 () Bool)

(assert (=> b!125178 (= e!81805 (Intermediate!279 true (toIndex!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (mask!7010 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun b!125179 () Bool)

(assert (=> b!125179 (and (bvsge (index!3272 lt!64511) #b00000000000000000000000000000000) (bvslt (index!3272 lt!64511) (size!2481 (_keys!4493 newMap!16))))))

(declare-fun e!81802 () Bool)

(assert (=> b!125179 (= e!81802 (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3272 lt!64511)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!125180 () Bool)

(declare-fun e!81806 () SeekEntryResult!279)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!125180 (= e!81806 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (mask!7010 newMap!16)) #b00000000000000000000000000000000 (mask!7010 newMap!16)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (_keys!4493 newMap!16) (mask!7010 newMap!16)))))

(declare-fun b!125181 () Bool)

(assert (=> b!125181 (= e!81804 (bvsge (x!14828 lt!64511) #b01111111111111111111111111111110))))

(declare-fun b!125182 () Bool)

(assert (=> b!125182 (= e!81805 e!81806)))

(declare-fun c!22793 () Bool)

(assert (=> b!125182 (= c!22793 (or (= lt!64512 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (= (bvadd lt!64512 lt!64512) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!125183 () Bool)

(assert (=> b!125183 (and (bvsge (index!3272 lt!64511) #b00000000000000000000000000000000) (bvslt (index!3272 lt!64511) (size!2481 (_keys!4493 newMap!16))))))

(declare-fun res!60627 () Bool)

(assert (=> b!125183 (= res!60627 (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3272 lt!64511)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!125183 (=> res!60627 e!81802)))

(declare-fun b!125184 () Bool)

(assert (=> b!125184 (= e!81806 (Intermediate!279 false (toIndex!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (mask!7010 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun b!125185 () Bool)

(assert (=> b!125185 (and (bvsge (index!3272 lt!64511) #b00000000000000000000000000000000) (bvslt (index!3272 lt!64511) (size!2481 (_keys!4493 newMap!16))))))

(declare-fun res!60629 () Bool)

(assert (=> b!125185 (= res!60629 (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3272 lt!64511)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (=> b!125185 (=> res!60629 e!81802)))

(assert (=> b!125185 (= e!81803 e!81802)))

(assert (= (and d!37479 c!22795) b!125178))

(assert (= (and d!37479 (not c!22795)) b!125182))

(assert (= (and b!125182 c!22793) b!125184))

(assert (= (and b!125182 (not c!22793)) b!125180))

(assert (= (and d!37479 c!22794) b!125181))

(assert (= (and d!37479 (not c!22794)) b!125177))

(assert (= (and b!125177 res!60628) b!125185))

(assert (= (and b!125185 (not res!60629)) b!125183))

(assert (= (and b!125183 (not res!60627)) b!125179))

(declare-fun m!145435 () Bool)

(assert (=> b!125183 m!145435))

(assert (=> b!125185 m!145435))

(assert (=> b!125179 m!145435))

(assert (=> d!37479 m!145221))

(declare-fun m!145437 () Bool)

(assert (=> d!37479 m!145437))

(assert (=> d!37479 m!145009))

(assert (=> b!125180 m!145221))

(declare-fun m!145439 () Bool)

(assert (=> b!125180 m!145439))

(assert (=> b!125180 m!145439))

(assert (=> b!125180 m!144661))

(declare-fun m!145441 () Bool)

(assert (=> b!125180 m!145441))

(assert (=> d!37441 d!37479))

(declare-fun d!37481 () Bool)

(declare-fun lt!64518 () (_ BitVec 32))

(declare-fun lt!64517 () (_ BitVec 32))

(assert (=> d!37481 (= lt!64518 (bvmul (bvxor lt!64517 (bvlshr lt!64517 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!37481 (= lt!64517 ((_ extract 31 0) (bvand (bvxor (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (bvlshr (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!37481 (and (bvsge (mask!7010 newMap!16) #b00000000000000000000000000000000) (let ((res!60630 (let ((h!2315 ((_ extract 31 0) (bvand (bvxor (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (bvlshr (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!14931 (bvmul (bvxor h!2315 (bvlshr h!2315 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!14931 (bvlshr x!14931 #b00000000000000000000000000001101)) (mask!7010 newMap!16)))))) (and (bvslt res!60630 (bvadd (mask!7010 newMap!16) #b00000000000000000000000000000001)) (bvsge res!60630 #b00000000000000000000000000000000))))))

(assert (=> d!37481 (= (toIndex!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (mask!7010 newMap!16)) (bvand (bvxor lt!64518 (bvlshr lt!64518 #b00000000000000000000000000001101)) (mask!7010 newMap!16)))))

(assert (=> d!37441 d!37481))

(declare-fun d!37483 () Bool)

(assert (=> d!37483 (= (validMask!0 (mask!7010 newMap!16)) (and (or (= (mask!7010 newMap!16) #b00000000000000000000000000000111) (= (mask!7010 newMap!16) #b00000000000000000000000000001111) (= (mask!7010 newMap!16) #b00000000000000000000000000011111) (= (mask!7010 newMap!16) #b00000000000000000000000000111111) (= (mask!7010 newMap!16) #b00000000000000000000000001111111) (= (mask!7010 newMap!16) #b00000000000000000000000011111111) (= (mask!7010 newMap!16) #b00000000000000000000000111111111) (= (mask!7010 newMap!16) #b00000000000000000000001111111111) (= (mask!7010 newMap!16) #b00000000000000000000011111111111) (= (mask!7010 newMap!16) #b00000000000000000000111111111111) (= (mask!7010 newMap!16) #b00000000000000000001111111111111) (= (mask!7010 newMap!16) #b00000000000000000011111111111111) (= (mask!7010 newMap!16) #b00000000000000000111111111111111) (= (mask!7010 newMap!16) #b00000000000000001111111111111111) (= (mask!7010 newMap!16) #b00000000000000011111111111111111) (= (mask!7010 newMap!16) #b00000000000000111111111111111111) (= (mask!7010 newMap!16) #b00000000000001111111111111111111) (= (mask!7010 newMap!16) #b00000000000011111111111111111111) (= (mask!7010 newMap!16) #b00000000000111111111111111111111) (= (mask!7010 newMap!16) #b00000000001111111111111111111111) (= (mask!7010 newMap!16) #b00000000011111111111111111111111) (= (mask!7010 newMap!16) #b00000000111111111111111111111111) (= (mask!7010 newMap!16) #b00000001111111111111111111111111) (= (mask!7010 newMap!16) #b00000011111111111111111111111111) (= (mask!7010 newMap!16) #b00000111111111111111111111111111) (= (mask!7010 newMap!16) #b00001111111111111111111111111111) (= (mask!7010 newMap!16) #b00011111111111111111111111111111) (= (mask!7010 newMap!16) #b00111111111111111111111111111111)) (bvsle (mask!7010 newMap!16) #b00111111111111111111111111111111)))))

(assert (=> d!37441 d!37483))

(declare-fun d!37485 () Bool)

(assert (=> d!37485 (= (inRange!0 (ite c!22749 (index!3270 lt!64345) (index!3273 lt!64345)) (mask!7010 newMap!16)) (and (bvsge (ite c!22749 (index!3270 lt!64345) (index!3273 lt!64345)) #b00000000000000000000000000000000) (bvslt (ite c!22749 (index!3270 lt!64345) (index!3273 lt!64345)) (bvadd (mask!7010 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!13391 d!37485))

(assert (=> d!37389 d!37391))

(assert (=> d!37389 d!37363))

(declare-fun d!37487 () Bool)

(assert (=> d!37487 (contains!873 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64193)))

(assert (=> d!37487 true))

(declare-fun _$35!368 () Unit!3878)

(assert (=> d!37487 (= (choose!756 lt!64180 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))) lt!64193) _$35!368)))

(declare-fun bs!5166 () Bool)

(assert (= bs!5166 d!37487))

(assert (=> bs!5166 m!144833))

(assert (=> bs!5166 m!144833))

(assert (=> bs!5166 m!144843))

(assert (=> d!37389 d!37487))

(declare-fun d!37489 () Bool)

(declare-fun e!81808 () Bool)

(assert (=> d!37489 e!81808))

(declare-fun res!60631 () Bool)

(assert (=> d!37489 (=> res!60631 e!81808)))

(declare-fun lt!64519 () Bool)

(assert (=> d!37489 (= res!60631 (not lt!64519))))

(declare-fun lt!64522 () Bool)

(assert (=> d!37489 (= lt!64519 lt!64522)))

(declare-fun lt!64520 () Unit!3878)

(declare-fun e!81807 () Unit!3878)

(assert (=> d!37489 (= lt!64520 e!81807)))

(declare-fun c!22796 () Bool)

(assert (=> d!37489 (= c!22796 lt!64522)))

(assert (=> d!37489 (= lt!64522 (containsKey!169 (toList!856 lt!64180) lt!64193))))

(assert (=> d!37489 (= (contains!873 lt!64180 lt!64193) lt!64519)))

(declare-fun b!125187 () Bool)

(declare-fun lt!64521 () Unit!3878)

(assert (=> b!125187 (= e!81807 lt!64521)))

(assert (=> b!125187 (= lt!64521 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64180) lt!64193))))

(assert (=> b!125187 (isDefined!119 (getValueByKey!165 (toList!856 lt!64180) lt!64193))))

(declare-fun b!125188 () Bool)

(declare-fun Unit!3897 () Unit!3878)

(assert (=> b!125188 (= e!81807 Unit!3897)))

(declare-fun b!125189 () Bool)

(assert (=> b!125189 (= e!81808 (isDefined!119 (getValueByKey!165 (toList!856 lt!64180) lt!64193)))))

(assert (= (and d!37489 c!22796) b!125187))

(assert (= (and d!37489 (not c!22796)) b!125188))

(assert (= (and d!37489 (not res!60631)) b!125189))

(declare-fun m!145443 () Bool)

(assert (=> d!37489 m!145443))

(declare-fun m!145445 () Bool)

(assert (=> b!125187 m!145445))

(declare-fun m!145447 () Bool)

(assert (=> b!125187 m!145447))

(assert (=> b!125187 m!145447))

(declare-fun m!145449 () Bool)

(assert (=> b!125187 m!145449))

(assert (=> b!125189 m!145447))

(assert (=> b!125189 m!145447))

(assert (=> b!125189 m!145449))

(assert (=> d!37389 d!37489))

(declare-fun d!37491 () Bool)

(declare-fun e!81809 () Bool)

(assert (=> d!37491 e!81809))

(declare-fun res!60632 () Bool)

(assert (=> d!37491 (=> (not res!60632) (not e!81809))))

(declare-fun lt!64523 () ListLongMap!1681)

(assert (=> d!37491 (= res!60632 (contains!873 lt!64523 (_1!1290 (ite (or c!22737 c!22739) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))))))

(declare-fun lt!64525 () List!1716)

(assert (=> d!37491 (= lt!64523 (ListLongMap!1682 lt!64525))))

(declare-fun lt!64526 () Unit!3878)

(declare-fun lt!64524 () Unit!3878)

(assert (=> d!37491 (= lt!64526 lt!64524)))

(assert (=> d!37491 (= (getValueByKey!165 lt!64525 (_1!1290 (ite (or c!22737 c!22739) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))) (Some!170 (_2!1290 (ite (or c!22737 c!22739) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))))))

(assert (=> d!37491 (= lt!64524 (lemmaContainsTupThenGetReturnValue!82 lt!64525 (_1!1290 (ite (or c!22737 c!22739) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))) (_2!1290 (ite (or c!22737 c!22739) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))))))

(assert (=> d!37491 (= lt!64525 (insertStrictlySorted!84 (toList!856 (ite c!22737 call!13380 (ite c!22739 call!13383 call!13386))) (_1!1290 (ite (or c!22737 c!22739) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))) (_2!1290 (ite (or c!22737 c!22739) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))))))

(assert (=> d!37491 (= (+!164 (ite c!22737 call!13380 (ite c!22739 call!13383 call!13386)) (ite (or c!22737 c!22739) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))) lt!64523)))

(declare-fun b!125190 () Bool)

(declare-fun res!60633 () Bool)

(assert (=> b!125190 (=> (not res!60633) (not e!81809))))

(assert (=> b!125190 (= res!60633 (= (getValueByKey!165 (toList!856 lt!64523) (_1!1290 (ite (or c!22737 c!22739) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))) (Some!170 (_2!1290 (ite (or c!22737 c!22739) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))))))))

(declare-fun b!125191 () Bool)

(assert (=> b!125191 (= e!81809 (contains!874 (toList!856 lt!64523) (ite (or c!22737 c!22739) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))))))

(assert (= (and d!37491 res!60632) b!125190))

(assert (= (and b!125190 res!60633) b!125191))

(declare-fun m!145451 () Bool)

(assert (=> d!37491 m!145451))

(declare-fun m!145453 () Bool)

(assert (=> d!37491 m!145453))

(declare-fun m!145455 () Bool)

(assert (=> d!37491 m!145455))

(declare-fun m!145457 () Bool)

(assert (=> d!37491 m!145457))

(declare-fun m!145459 () Bool)

(assert (=> b!125190 m!145459))

(declare-fun m!145461 () Bool)

(assert (=> b!125191 m!145461))

(assert (=> bm!13379 d!37491))

(assert (=> d!37471 d!37359))

(assert (=> d!37471 d!37361))

(declare-fun d!37493 () Bool)

(assert (=> d!37493 (isDefined!119 (getValueByKey!165 (toList!856 lt!64030) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (=> d!37493 true))

(declare-fun _$12!387 () Unit!3878)

(assert (=> d!37493 (= (choose!763 (toList!856 lt!64030) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) _$12!387)))

(declare-fun bs!5167 () Bool)

(assert (= bs!5167 d!37493))

(assert (=> bs!5167 m!144661))

(assert (=> bs!5167 m!144743))

(assert (=> bs!5167 m!144743))

(assert (=> bs!5167 m!144745))

(assert (=> d!37471 d!37493))

(declare-fun d!37495 () Bool)

(declare-fun res!60638 () Bool)

(declare-fun e!81814 () Bool)

(assert (=> d!37495 (=> res!60638 e!81814)))

(assert (=> d!37495 (= res!60638 (or ((_ is Nil!1713) (toList!856 lt!64030)) ((_ is Nil!1713) (t!6055 (toList!856 lt!64030)))))))

(assert (=> d!37495 (= (isStrictlySorted!311 (toList!856 lt!64030)) e!81814)))

(declare-fun b!125196 () Bool)

(declare-fun e!81815 () Bool)

(assert (=> b!125196 (= e!81814 e!81815)))

(declare-fun res!60639 () Bool)

(assert (=> b!125196 (=> (not res!60639) (not e!81815))))

(assert (=> b!125196 (= res!60639 (bvslt (_1!1290 (h!2313 (toList!856 lt!64030))) (_1!1290 (h!2313 (t!6055 (toList!856 lt!64030))))))))

(declare-fun b!125197 () Bool)

(assert (=> b!125197 (= e!81815 (isStrictlySorted!311 (t!6055 (toList!856 lt!64030))))))

(assert (= (and d!37495 (not res!60638)) b!125196))

(assert (= (and b!125196 res!60639) b!125197))

(declare-fun m!145463 () Bool)

(assert (=> b!125197 m!145463))

(assert (=> d!37471 d!37495))

(declare-fun d!37497 () Bool)

(declare-fun res!60640 () Bool)

(declare-fun e!81816 () Bool)

(assert (=> d!37497 (=> res!60640 e!81816)))

(assert (=> d!37497 (= res!60640 (and ((_ is Cons!1712) (toList!856 lt!64187)) (= (_1!1290 (h!2313 (toList!856 lt!64187))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!37497 (= (containsKey!169 (toList!856 lt!64187) #b1000000000000000000000000000000000000000000000000000000000000000) e!81816)))

(declare-fun b!125198 () Bool)

(declare-fun e!81817 () Bool)

(assert (=> b!125198 (= e!81816 e!81817)))

(declare-fun res!60641 () Bool)

(assert (=> b!125198 (=> (not res!60641) (not e!81817))))

(assert (=> b!125198 (= res!60641 (and (or (not ((_ is Cons!1712) (toList!856 lt!64187))) (bvsle (_1!1290 (h!2313 (toList!856 lt!64187))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!1712) (toList!856 lt!64187)) (bvslt (_1!1290 (h!2313 (toList!856 lt!64187))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!125199 () Bool)

(assert (=> b!125199 (= e!81817 (containsKey!169 (t!6055 (toList!856 lt!64187)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!37497 (not res!60640)) b!125198))

(assert (= (and b!125198 res!60641) b!125199))

(declare-fun m!145465 () Bool)

(assert (=> b!125199 m!145465))

(assert (=> d!37397 d!37497))

(declare-fun lt!64529 () Bool)

(declare-fun d!37499 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!122 (List!1716) (InoxSet tuple2!2560))

(assert (=> d!37499 (= lt!64529 (select (content!122 (toList!856 lt!64252)) (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun e!81822 () Bool)

(assert (=> d!37499 (= lt!64529 e!81822)))

(declare-fun res!60647 () Bool)

(assert (=> d!37499 (=> (not res!60647) (not e!81822))))

(assert (=> d!37499 (= res!60647 ((_ is Cons!1712) (toList!856 lt!64252)))))

(assert (=> d!37499 (= (contains!874 (toList!856 lt!64252) (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64529)))

(declare-fun b!125204 () Bool)

(declare-fun e!81823 () Bool)

(assert (=> b!125204 (= e!81822 e!81823)))

(declare-fun res!60646 () Bool)

(assert (=> b!125204 (=> res!60646 e!81823)))

(assert (=> b!125204 (= res!60646 (= (h!2313 (toList!856 lt!64252)) (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun b!125205 () Bool)

(assert (=> b!125205 (= e!81823 (contains!874 (t!6055 (toList!856 lt!64252)) (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))

(assert (= (and d!37499 res!60647) b!125204))

(assert (= (and b!125204 (not res!60646)) b!125205))

(declare-fun m!145467 () Bool)

(assert (=> d!37499 m!145467))

(declare-fun m!145469 () Bool)

(assert (=> d!37499 m!145469))

(declare-fun m!145471 () Bool)

(assert (=> b!125205 m!145471))

(assert (=> b!124870 d!37499))

(declare-fun d!37501 () Bool)

(declare-fun e!81824 () Bool)

(assert (=> d!37501 e!81824))

(declare-fun res!60648 () Bool)

(assert (=> d!37501 (=> (not res!60648) (not e!81824))))

(declare-fun lt!64530 () ListLongMap!1681)

(assert (=> d!37501 (= res!60648 (contains!873 lt!64530 (_1!1290 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!64532 () List!1716)

(assert (=> d!37501 (= lt!64530 (ListLongMap!1682 lt!64532))))

(declare-fun lt!64533 () Unit!3878)

(declare-fun lt!64531 () Unit!3878)

(assert (=> d!37501 (= lt!64533 lt!64531)))

(assert (=> d!37501 (= (getValueByKey!165 lt!64532 (_1!1290 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!170 (_2!1290 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37501 (= lt!64531 (lemmaContainsTupThenGetReturnValue!82 lt!64532 (_1!1290 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1290 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37501 (= lt!64532 (insertStrictlySorted!84 (toList!856 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16))) (_1!1290 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1290 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37501 (= (+!164 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!64530)))

(declare-fun b!125206 () Bool)

(declare-fun res!60649 () Bool)

(assert (=> b!125206 (=> (not res!60649) (not e!81824))))

(assert (=> b!125206 (= res!60649 (= (getValueByKey!165 (toList!856 lt!64530) (_1!1290 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!170 (_2!1290 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!125207 () Bool)

(assert (=> b!125207 (= e!81824 (contains!874 (toList!856 lt!64530) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!37501 res!60648) b!125206))

(assert (= (and b!125206 res!60649) b!125207))

(declare-fun m!145473 () Bool)

(assert (=> d!37501 m!145473))

(declare-fun m!145475 () Bool)

(assert (=> d!37501 m!145475))

(declare-fun m!145477 () Bool)

(assert (=> d!37501 m!145477))

(declare-fun m!145479 () Bool)

(assert (=> d!37501 m!145479))

(declare-fun m!145481 () Bool)

(assert (=> b!125206 m!145481))

(declare-fun m!145483 () Bool)

(assert (=> b!125207 m!145483))

(assert (=> d!37405 d!37501))

(declare-fun d!37503 () Bool)

(assert (=> d!37503 (= (+!164 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) lt!64124 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(assert (=> d!37503 true))

(declare-fun _$7!104 () Unit!3878)

(assert (=> d!37503 (= (choose!757 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) lt!64124 (zeroValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2629 newMap!16) (defaultEntry!2764 newMap!16)) _$7!104)))

(declare-fun bs!5168 () Bool)

(assert (= bs!5168 d!37503))

(assert (=> bs!5168 m!144781))

(assert (=> bs!5168 m!144781))

(assert (=> bs!5168 m!145007))

(assert (=> bs!5168 m!144681))

(assert (=> bs!5168 m!145011))

(assert (=> d!37405 d!37503))

(assert (=> d!37405 d!37419))

(declare-fun b!125208 () Bool)

(declare-fun e!81837 () Unit!3878)

(declare-fun Unit!3898 () Unit!3878)

(assert (=> b!125208 (= e!81837 Unit!3898)))

(declare-fun b!125209 () Bool)

(declare-fun e!81828 () ListLongMap!1681)

(declare-fun call!13417 () ListLongMap!1681)

(assert (=> b!125209 (= e!81828 call!13417)))

(declare-fun bm!13413 () Bool)

(declare-fun call!13422 () ListLongMap!1681)

(declare-fun call!13419 () ListLongMap!1681)

(assert (=> bm!13413 (= call!13422 call!13419)))

(declare-fun b!125210 () Bool)

(declare-fun e!81826 () Bool)

(assert (=> b!125210 (= e!81826 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!125211 () Bool)

(declare-fun e!81829 () Bool)

(declare-fun e!81831 () Bool)

(assert (=> b!125211 (= e!81829 e!81831)))

(declare-fun res!60657 () Bool)

(declare-fun call!13418 () Bool)

(assert (=> b!125211 (= res!60657 call!13418)))

(assert (=> b!125211 (=> (not res!60657) (not e!81831))))

(declare-fun b!125212 () Bool)

(declare-fun e!81836 () Bool)

(declare-fun lt!64544 () ListLongMap!1681)

(assert (=> b!125212 (= e!81836 (= (apply!110 lt!64544 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)) (get!1445 (select (arr!2219 (_values!2747 newMap!16)) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!125212 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2482 (_values!2747 newMap!16))))))

(assert (=> b!125212 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun b!125213 () Bool)

(assert (=> b!125213 (= e!81831 (= (apply!110 lt!64544 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2629 newMap!16)))))

(declare-fun b!125214 () Bool)

(assert (=> b!125214 (= e!81828 call!13422)))

(declare-fun b!125215 () Bool)

(declare-fun e!81833 () ListLongMap!1681)

(assert (=> b!125215 (= e!81833 call!13417)))

(declare-fun bm!13414 () Bool)

(declare-fun call!13416 () ListLongMap!1681)

(assert (=> bm!13414 (= call!13419 call!13416)))

(declare-fun b!125216 () Bool)

(declare-fun res!60654 () Bool)

(declare-fun e!81834 () Bool)

(assert (=> b!125216 (=> (not res!60654) (not e!81834))))

(declare-fun e!81835 () Bool)

(assert (=> b!125216 (= res!60654 e!81835)))

(declare-fun res!60658 () Bool)

(assert (=> b!125216 (=> res!60658 e!81835)))

(declare-fun e!81832 () Bool)

(assert (=> b!125216 (= res!60658 (not e!81832))))

(declare-fun res!60651 () Bool)

(assert (=> b!125216 (=> (not res!60651) (not e!81832))))

(assert (=> b!125216 (= res!60651 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun d!37505 () Bool)

(assert (=> d!37505 e!81834))

(declare-fun res!60655 () Bool)

(assert (=> d!37505 (=> (not res!60655) (not e!81834))))

(assert (=> d!37505 (= res!60655 (or (bvsge #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))))

(declare-fun lt!64536 () ListLongMap!1681)

(assert (=> d!37505 (= lt!64544 lt!64536)))

(declare-fun lt!64548 () Unit!3878)

(assert (=> d!37505 (= lt!64548 e!81837)))

(declare-fun c!22798 () Bool)

(assert (=> d!37505 (= c!22798 e!81826)))

(declare-fun res!60653 () Bool)

(assert (=> d!37505 (=> (not res!60653) (not e!81826))))

(assert (=> d!37505 (= res!60653 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun e!81825 () ListLongMap!1681)

(assert (=> d!37505 (= lt!64536 e!81825)))

(declare-fun c!22799 () Bool)

(assert (=> d!37505 (= c!22799 (and (not (= (bvand lt!64124 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!64124 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!37505 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37505 (= (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) lt!64124 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) lt!64544)))

(declare-fun b!125217 () Bool)

(assert (=> b!125217 (= e!81829 (not call!13418))))

(declare-fun b!125218 () Bool)

(assert (=> b!125218 (= e!81835 e!81836)))

(declare-fun res!60656 () Bool)

(assert (=> b!125218 (=> (not res!60656) (not e!81836))))

(assert (=> b!125218 (= res!60656 (contains!873 lt!64544 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!125218 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun call!13421 () ListLongMap!1681)

(declare-fun c!22801 () Bool)

(declare-fun bm!13415 () Bool)

(assert (=> bm!13415 (= call!13421 (+!164 (ite c!22799 call!13416 (ite c!22801 call!13419 call!13422)) (ite (or c!22799 c!22801) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))))))

(declare-fun e!81827 () Bool)

(declare-fun b!125219 () Bool)

(assert (=> b!125219 (= e!81827 (= (apply!110 lt!64544 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!125220 () Bool)

(assert (=> b!125220 (= e!81825 (+!164 call!13421 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))))

(declare-fun b!125221 () Bool)

(assert (=> b!125221 (= e!81832 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!125222 () Bool)

(declare-fun c!22800 () Bool)

(assert (=> b!125222 (= c!22800 (and (not (= (bvand lt!64124 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand lt!64124 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!125222 (= e!81833 e!81828)))

(declare-fun bm!13416 () Bool)

(declare-fun call!13420 () Bool)

(assert (=> bm!13416 (= call!13420 (contains!873 lt!64544 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!125223 () Bool)

(declare-fun e!81830 () Bool)

(assert (=> b!125223 (= e!81830 (not call!13420))))

(declare-fun b!125224 () Bool)

(assert (=> b!125224 (= e!81834 e!81829)))

(declare-fun c!22802 () Bool)

(assert (=> b!125224 (= c!22802 (not (= (bvand lt!64124 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!13417 () Bool)

(assert (=> bm!13417 (= call!13416 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) lt!64124 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun b!125225 () Bool)

(assert (=> b!125225 (= e!81825 e!81833)))

(assert (=> b!125225 (= c!22801 (and (not (= (bvand lt!64124 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand lt!64124 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!125226 () Bool)

(assert (=> b!125226 (= e!81830 e!81827)))

(declare-fun res!60652 () Bool)

(assert (=> b!125226 (= res!60652 call!13420)))

(assert (=> b!125226 (=> (not res!60652) (not e!81827))))

(declare-fun b!125227 () Bool)

(declare-fun res!60650 () Bool)

(assert (=> b!125227 (=> (not res!60650) (not e!81834))))

(assert (=> b!125227 (= res!60650 e!81830)))

(declare-fun c!22797 () Bool)

(assert (=> b!125227 (= c!22797 (not (= (bvand lt!64124 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13418 () Bool)

(assert (=> bm!13418 (= call!13417 call!13421)))

(declare-fun b!125228 () Bool)

(declare-fun lt!64534 () Unit!3878)

(assert (=> b!125228 (= e!81837 lt!64534)))

(declare-fun lt!64537 () ListLongMap!1681)

(assert (=> b!125228 (= lt!64537 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) lt!64124 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64538 () (_ BitVec 64))

(assert (=> b!125228 (= lt!64538 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64550 () (_ BitVec 64))

(assert (=> b!125228 (= lt!64550 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64547 () Unit!3878)

(assert (=> b!125228 (= lt!64547 (addStillContains!86 lt!64537 lt!64538 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) lt!64550))))

(assert (=> b!125228 (contains!873 (+!164 lt!64537 (tuple2!2561 lt!64538 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!64550)))

(declare-fun lt!64549 () Unit!3878)

(assert (=> b!125228 (= lt!64549 lt!64547)))

(declare-fun lt!64551 () ListLongMap!1681)

(assert (=> b!125228 (= lt!64551 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) lt!64124 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64542 () (_ BitVec 64))

(assert (=> b!125228 (= lt!64542 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64541 () (_ BitVec 64))

(assert (=> b!125228 (= lt!64541 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64545 () Unit!3878)

(assert (=> b!125228 (= lt!64545 (addApplyDifferent!86 lt!64551 lt!64542 (minValue!2629 newMap!16) lt!64541))))

(assert (=> b!125228 (= (apply!110 (+!164 lt!64551 (tuple2!2561 lt!64542 (minValue!2629 newMap!16))) lt!64541) (apply!110 lt!64551 lt!64541))))

(declare-fun lt!64554 () Unit!3878)

(assert (=> b!125228 (= lt!64554 lt!64545)))

(declare-fun lt!64543 () ListLongMap!1681)

(assert (=> b!125228 (= lt!64543 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) lt!64124 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64552 () (_ BitVec 64))

(assert (=> b!125228 (= lt!64552 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64539 () (_ BitVec 64))

(assert (=> b!125228 (= lt!64539 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64535 () Unit!3878)

(assert (=> b!125228 (= lt!64535 (addApplyDifferent!86 lt!64543 lt!64552 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) lt!64539))))

(assert (=> b!125228 (= (apply!110 (+!164 lt!64543 (tuple2!2561 lt!64552 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!64539) (apply!110 lt!64543 lt!64539))))

(declare-fun lt!64553 () Unit!3878)

(assert (=> b!125228 (= lt!64553 lt!64535)))

(declare-fun lt!64555 () ListLongMap!1681)

(assert (=> b!125228 (= lt!64555 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) lt!64124 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64546 () (_ BitVec 64))

(assert (=> b!125228 (= lt!64546 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64540 () (_ BitVec 64))

(assert (=> b!125228 (= lt!64540 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!125228 (= lt!64534 (addApplyDifferent!86 lt!64555 lt!64546 (minValue!2629 newMap!16) lt!64540))))

(assert (=> b!125228 (= (apply!110 (+!164 lt!64555 (tuple2!2561 lt!64546 (minValue!2629 newMap!16))) lt!64540) (apply!110 lt!64555 lt!64540))))

(declare-fun bm!13419 () Bool)

(assert (=> bm!13419 (= call!13418 (contains!873 lt!64544 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!37505 c!22799) b!125220))

(assert (= (and d!37505 (not c!22799)) b!125225))

(assert (= (and b!125225 c!22801) b!125215))

(assert (= (and b!125225 (not c!22801)) b!125222))

(assert (= (and b!125222 c!22800) b!125209))

(assert (= (and b!125222 (not c!22800)) b!125214))

(assert (= (or b!125209 b!125214) bm!13413))

(assert (= (or b!125215 bm!13413) bm!13414))

(assert (= (or b!125215 b!125209) bm!13418))

(assert (= (or b!125220 bm!13414) bm!13417))

(assert (= (or b!125220 bm!13418) bm!13415))

(assert (= (and d!37505 res!60653) b!125210))

(assert (= (and d!37505 c!22798) b!125228))

(assert (= (and d!37505 (not c!22798)) b!125208))

(assert (= (and d!37505 res!60655) b!125216))

(assert (= (and b!125216 res!60651) b!125221))

(assert (= (and b!125216 (not res!60658)) b!125218))

(assert (= (and b!125218 res!60656) b!125212))

(assert (= (and b!125216 res!60654) b!125227))

(assert (= (and b!125227 c!22797) b!125226))

(assert (= (and b!125227 (not c!22797)) b!125223))

(assert (= (and b!125226 res!60652) b!125219))

(assert (= (or b!125226 b!125223) bm!13416))

(assert (= (and b!125227 res!60650) b!125224))

(assert (= (and b!125224 c!22802) b!125211))

(assert (= (and b!125224 (not c!22802)) b!125217))

(assert (= (and b!125211 res!60657) b!125213))

(assert (= (or b!125211 b!125217) bm!13419))

(declare-fun b_lambda!5523 () Bool)

(assert (=> (not b_lambda!5523) (not b!125212)))

(assert (=> b!125212 t!6062))

(declare-fun b_and!7713 () Bool)

(assert (= b_and!7709 (and (=> t!6062 result!3831) b_and!7713)))

(assert (=> b!125212 t!6064))

(declare-fun b_and!7715 () Bool)

(assert (= b_and!7711 (and (=> t!6064 result!3833) b_and!7715)))

(declare-fun m!145485 () Bool)

(assert (=> b!125220 m!145485))

(declare-fun m!145487 () Bool)

(assert (=> bm!13419 m!145487))

(assert (=> b!125210 m!145047))

(assert (=> b!125210 m!145047))

(assert (=> b!125210 m!145049))

(declare-fun m!145489 () Bool)

(assert (=> bm!13415 m!145489))

(declare-fun m!145491 () Bool)

(assert (=> b!125213 m!145491))

(assert (=> d!37505 m!145009))

(assert (=> bm!13417 m!144681))

(declare-fun m!145493 () Bool)

(assert (=> bm!13417 m!145493))

(declare-fun m!145495 () Bool)

(assert (=> b!125219 m!145495))

(assert (=> b!125212 m!145059))

(assert (=> b!125212 m!145061))

(assert (=> b!125212 m!145063))

(assert (=> b!125212 m!145047))

(declare-fun m!145497 () Bool)

(assert (=> b!125212 m!145497))

(assert (=> b!125212 m!145061))

(assert (=> b!125212 m!145059))

(assert (=> b!125212 m!145047))

(declare-fun m!145499 () Bool)

(assert (=> bm!13416 m!145499))

(declare-fun m!145501 () Bool)

(assert (=> b!125228 m!145501))

(declare-fun m!145503 () Bool)

(assert (=> b!125228 m!145503))

(declare-fun m!145505 () Bool)

(assert (=> b!125228 m!145505))

(declare-fun m!145507 () Bool)

(assert (=> b!125228 m!145507))

(declare-fun m!145509 () Bool)

(assert (=> b!125228 m!145509))

(declare-fun m!145511 () Bool)

(assert (=> b!125228 m!145511))

(assert (=> b!125228 m!145503))

(declare-fun m!145513 () Bool)

(assert (=> b!125228 m!145513))

(assert (=> b!125228 m!145505))

(assert (=> b!125228 m!145511))

(declare-fun m!145515 () Bool)

(assert (=> b!125228 m!145515))

(assert (=> b!125228 m!144681))

(declare-fun m!145517 () Bool)

(assert (=> b!125228 m!145517))

(declare-fun m!145519 () Bool)

(assert (=> b!125228 m!145519))

(assert (=> b!125228 m!145047))

(assert (=> b!125228 m!144681))

(declare-fun m!145521 () Bool)

(assert (=> b!125228 m!145521))

(declare-fun m!145523 () Bool)

(assert (=> b!125228 m!145523))

(assert (=> b!125228 m!144681))

(assert (=> b!125228 m!145493))

(assert (=> b!125228 m!145501))

(declare-fun m!145525 () Bool)

(assert (=> b!125228 m!145525))

(declare-fun m!145527 () Bool)

(assert (=> b!125228 m!145527))

(declare-fun m!145529 () Bool)

(assert (=> b!125228 m!145529))

(assert (=> b!125218 m!145047))

(assert (=> b!125218 m!145047))

(declare-fun m!145531 () Bool)

(assert (=> b!125218 m!145531))

(assert (=> b!125221 m!145047))

(assert (=> b!125221 m!145047))

(assert (=> b!125221 m!145049))

(assert (=> d!37405 d!37505))

(assert (=> d!37405 d!37483))

(declare-fun b!125229 () Bool)

(declare-fun e!81838 () Bool)

(declare-fun call!13423 () Bool)

(assert (=> b!125229 (= e!81838 call!13423)))

(declare-fun bm!13420 () Bool)

(assert (=> bm!13420 (= call!13423 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!4493 newMap!16) (mask!7010 newMap!16)))))

(declare-fun d!37507 () Bool)

(declare-fun res!60660 () Bool)

(declare-fun e!81840 () Bool)

(assert (=> d!37507 (=> res!60660 e!81840)))

(assert (=> d!37507 (= res!60660 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2481 (_keys!4493 newMap!16))))))

(assert (=> d!37507 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4493 newMap!16) (mask!7010 newMap!16)) e!81840)))

(declare-fun b!125230 () Bool)

(assert (=> b!125230 (= e!81840 e!81838)))

(declare-fun c!22803 () Bool)

(assert (=> b!125230 (= c!22803 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!125231 () Bool)

(declare-fun e!81839 () Bool)

(assert (=> b!125231 (= e!81839 call!13423)))

(declare-fun b!125232 () Bool)

(assert (=> b!125232 (= e!81838 e!81839)))

(declare-fun lt!64556 () (_ BitVec 64))

(assert (=> b!125232 (= lt!64556 (select (arr!2218 (_keys!4493 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!64558 () Unit!3878)

(assert (=> b!125232 (= lt!64558 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4493 newMap!16) lt!64556 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!125232 (arrayContainsKey!0 (_keys!4493 newMap!16) lt!64556 #b00000000000000000000000000000000)))

(declare-fun lt!64557 () Unit!3878)

(assert (=> b!125232 (= lt!64557 lt!64558)))

(declare-fun res!60659 () Bool)

(assert (=> b!125232 (= res!60659 (= (seekEntryOrOpen!0 (select (arr!2218 (_keys!4493 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!4493 newMap!16) (mask!7010 newMap!16)) (Found!279 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!125232 (=> (not res!60659) (not e!81839))))

(assert (= (and d!37507 (not res!60660)) b!125230))

(assert (= (and b!125230 c!22803) b!125232))

(assert (= (and b!125230 (not c!22803)) b!125229))

(assert (= (and b!125232 res!60659) b!125231))

(assert (= (or b!125231 b!125229) bm!13420))

(declare-fun m!145533 () Bool)

(assert (=> bm!13420 m!145533))

(declare-fun m!145535 () Bool)

(assert (=> b!125230 m!145535))

(assert (=> b!125230 m!145535))

(declare-fun m!145537 () Bool)

(assert (=> b!125230 m!145537))

(assert (=> b!125232 m!145535))

(declare-fun m!145539 () Bool)

(assert (=> b!125232 m!145539))

(declare-fun m!145541 () Bool)

(assert (=> b!125232 m!145541))

(assert (=> b!125232 m!145535))

(declare-fun m!145543 () Bool)

(assert (=> b!125232 m!145543))

(assert (=> bm!13376 d!37507))

(declare-fun d!37509 () Bool)

(assert (=> d!37509 (= (apply!110 lt!64286 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1448 (getValueByKey!165 (toList!856 lt!64286) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5169 () Bool)

(assert (= bs!5169 d!37509))

(declare-fun m!145545 () Bool)

(assert (=> bs!5169 m!145545))

(assert (=> bs!5169 m!145545))

(declare-fun m!145547 () Bool)

(assert (=> bs!5169 m!145547))

(assert (=> b!124902 d!37509))

(declare-fun d!37511 () Bool)

(declare-fun e!81842 () Bool)

(assert (=> d!37511 e!81842))

(declare-fun res!60661 () Bool)

(assert (=> d!37511 (=> res!60661 e!81842)))

(declare-fun lt!64559 () Bool)

(assert (=> d!37511 (= res!60661 (not lt!64559))))

(declare-fun lt!64562 () Bool)

(assert (=> d!37511 (= lt!64559 lt!64562)))

(declare-fun lt!64560 () Unit!3878)

(declare-fun e!81841 () Unit!3878)

(assert (=> d!37511 (= lt!64560 e!81841)))

(declare-fun c!22804 () Bool)

(assert (=> d!37511 (= c!22804 lt!64562)))

(assert (=> d!37511 (= lt!64562 (containsKey!169 (toList!856 (map!1379 (_2!1291 lt!64460))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (=> d!37511 (= (contains!873 (map!1379 (_2!1291 lt!64460)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) lt!64559)))

(declare-fun b!125233 () Bool)

(declare-fun lt!64561 () Unit!3878)

(assert (=> b!125233 (= e!81841 lt!64561)))

(assert (=> b!125233 (= lt!64561 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 (map!1379 (_2!1291 lt!64460))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (=> b!125233 (isDefined!119 (getValueByKey!165 (toList!856 (map!1379 (_2!1291 lt!64460))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun b!125234 () Bool)

(declare-fun Unit!3899 () Unit!3878)

(assert (=> b!125234 (= e!81841 Unit!3899)))

(declare-fun b!125235 () Bool)

(assert (=> b!125235 (= e!81842 (isDefined!119 (getValueByKey!165 (toList!856 (map!1379 (_2!1291 lt!64460))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))))))

(assert (= (and d!37511 c!22804) b!125233))

(assert (= (and d!37511 (not c!22804)) b!125234))

(assert (= (and d!37511 (not res!60661)) b!125235))

(assert (=> d!37511 m!144661))

(declare-fun m!145549 () Bool)

(assert (=> d!37511 m!145549))

(assert (=> b!125233 m!144661))

(declare-fun m!145551 () Bool)

(assert (=> b!125233 m!145551))

(assert (=> b!125233 m!144661))

(declare-fun m!145553 () Bool)

(assert (=> b!125233 m!145553))

(assert (=> b!125233 m!145553))

(declare-fun m!145555 () Bool)

(assert (=> b!125233 m!145555))

(assert (=> b!125235 m!144661))

(assert (=> b!125235 m!145553))

(assert (=> b!125235 m!145553))

(assert (=> b!125235 m!145555))

(assert (=> b!125091 d!37511))

(declare-fun d!37513 () Bool)

(assert (=> d!37513 (= (map!1379 (_2!1291 lt!64460)) (getCurrentListMap!528 (_keys!4493 (_2!1291 lt!64460)) (_values!2747 (_2!1291 lt!64460)) (mask!7010 (_2!1291 lt!64460)) (extraKeys!2549 (_2!1291 lt!64460)) (zeroValue!2629 (_2!1291 lt!64460)) (minValue!2629 (_2!1291 lt!64460)) #b00000000000000000000000000000000 (defaultEntry!2764 (_2!1291 lt!64460))))))

(declare-fun bs!5170 () Bool)

(assert (= bs!5170 d!37513))

(declare-fun m!145557 () Bool)

(assert (=> bs!5170 m!145557))

(assert (=> b!125091 d!37513))

(declare-fun d!37515 () Bool)

(assert (=> d!37515 (isDefined!119 (getValueByKey!165 (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64193))))

(declare-fun lt!64563 () Unit!3878)

(assert (=> d!37515 (= lt!64563 (choose!763 (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64193))))

(declare-fun e!81843 () Bool)

(assert (=> d!37515 e!81843))

(declare-fun res!60662 () Bool)

(assert (=> d!37515 (=> (not res!60662) (not e!81843))))

(assert (=> d!37515 (= res!60662 (isStrictlySorted!311 (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> d!37515 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64193) lt!64563)))

(declare-fun b!125236 () Bool)

(assert (=> b!125236 (= e!81843 (containsKey!169 (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64193))))

(assert (= (and d!37515 res!60662) b!125236))

(assert (=> d!37515 m!144971))

(assert (=> d!37515 m!144971))

(assert (=> d!37515 m!144973))

(declare-fun m!145559 () Bool)

(assert (=> d!37515 m!145559))

(declare-fun m!145561 () Bool)

(assert (=> d!37515 m!145561))

(assert (=> b!125236 m!144967))

(assert (=> b!124866 d!37515))

(declare-fun d!37517 () Bool)

(assert (=> d!37517 (= (isDefined!119 (getValueByKey!165 (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64193)) (not (isEmpty!398 (getValueByKey!165 (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64193))))))

(declare-fun bs!5171 () Bool)

(assert (= bs!5171 d!37517))

(assert (=> bs!5171 m!144971))

(declare-fun m!145563 () Bool)

(assert (=> bs!5171 m!145563))

(assert (=> b!124866 d!37517))

(declare-fun b!125237 () Bool)

(declare-fun e!81844 () Option!171)

(assert (=> b!125237 (= e!81844 (Some!170 (_2!1290 (h!2313 (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))))))

(declare-fun b!125240 () Bool)

(declare-fun e!81845 () Option!171)

(assert (=> b!125240 (= e!81845 None!169)))

(declare-fun b!125238 () Bool)

(assert (=> b!125238 (= e!81844 e!81845)))

(declare-fun c!22806 () Bool)

(assert (=> b!125238 (= c!22806 (and ((_ is Cons!1712) (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))) (not (= (_1!1290 (h!2313 (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))) lt!64193))))))

(declare-fun b!125239 () Bool)

(assert (=> b!125239 (= e!81845 (getValueByKey!165 (t!6055 (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))) lt!64193))))

(declare-fun d!37519 () Bool)

(declare-fun c!22805 () Bool)

(assert (=> d!37519 (= c!22805 (and ((_ is Cons!1712) (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))) (= (_1!1290 (h!2313 (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))) lt!64193)))))

(assert (=> d!37519 (= (getValueByKey!165 (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64193) e!81844)))

(assert (= (and d!37519 c!22805) b!125237))

(assert (= (and d!37519 (not c!22805)) b!125238))

(assert (= (and b!125238 c!22806) b!125239))

(assert (= (and b!125238 (not c!22806)) b!125240))

(declare-fun m!145565 () Bool)

(assert (=> b!125239 m!145565))

(assert (=> b!124866 d!37519))

(declare-fun d!37521 () Bool)

(declare-fun e!81846 () Bool)

(assert (=> d!37521 e!81846))

(declare-fun res!60663 () Bool)

(assert (=> d!37521 (=> (not res!60663) (not e!81846))))

(declare-fun lt!64564 () ListLongMap!1681)

(assert (=> d!37521 (= res!60663 (contains!873 lt!64564 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!64566 () List!1716)

(assert (=> d!37521 (= lt!64564 (ListLongMap!1682 lt!64566))))

(declare-fun lt!64567 () Unit!3878)

(declare-fun lt!64565 () Unit!3878)

(assert (=> d!37521 (= lt!64567 lt!64565)))

(assert (=> d!37521 (= (getValueByKey!165 lt!64566 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!170 (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37521 (= lt!64565 (lemmaContainsTupThenGetReturnValue!82 lt!64566 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37521 (= lt!64566 (insertStrictlySorted!84 (toList!856 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16))) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37521 (= (+!164 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!64564)))

(declare-fun b!125241 () Bool)

(declare-fun res!60664 () Bool)

(assert (=> b!125241 (=> (not res!60664) (not e!81846))))

(assert (=> b!125241 (= res!60664 (= (getValueByKey!165 (toList!856 lt!64564) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!170 (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!125242 () Bool)

(assert (=> b!125242 (= e!81846 (contains!874 (toList!856 lt!64564) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!37521 res!60663) b!125241))

(assert (= (and b!125241 res!60664) b!125242))

(declare-fun m!145567 () Bool)

(assert (=> d!37521 m!145567))

(declare-fun m!145569 () Bool)

(assert (=> d!37521 m!145569))

(declare-fun m!145571 () Bool)

(assert (=> d!37521 m!145571))

(declare-fun m!145573 () Bool)

(assert (=> d!37521 m!145573))

(declare-fun m!145575 () Bool)

(assert (=> b!125241 m!145575))

(declare-fun m!145577 () Bool)

(assert (=> b!125242 m!145577))

(assert (=> d!37407 d!37521))

(assert (=> d!37407 d!37419))

(declare-fun d!37523 () Bool)

(assert (=> d!37523 (= (+!164 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) lt!64107 (zeroValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(assert (=> d!37523 true))

(declare-fun _$8!106 () Unit!3878)

(assert (=> d!37523 (= (choose!758 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) lt!64107 (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2764 newMap!16)) _$8!106)))

(declare-fun bs!5172 () Bool)

(assert (= bs!5172 d!37523))

(assert (=> bs!5172 m!144781))

(assert (=> bs!5172 m!144781))

(assert (=> bs!5172 m!145017))

(assert (=> bs!5172 m!144681))

(assert (=> bs!5172 m!145015))

(assert (=> d!37407 d!37523))

(assert (=> d!37407 d!37483))

(declare-fun b!125243 () Bool)

(declare-fun e!81859 () Unit!3878)

(declare-fun Unit!3900 () Unit!3878)

(assert (=> b!125243 (= e!81859 Unit!3900)))

(declare-fun b!125244 () Bool)

(declare-fun e!81850 () ListLongMap!1681)

(declare-fun call!13425 () ListLongMap!1681)

(assert (=> b!125244 (= e!81850 call!13425)))

(declare-fun bm!13421 () Bool)

(declare-fun call!13430 () ListLongMap!1681)

(declare-fun call!13427 () ListLongMap!1681)

(assert (=> bm!13421 (= call!13430 call!13427)))

(declare-fun b!125245 () Bool)

(declare-fun e!81848 () Bool)

(assert (=> b!125245 (= e!81848 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!125246 () Bool)

(declare-fun e!81851 () Bool)

(declare-fun e!81853 () Bool)

(assert (=> b!125246 (= e!81851 e!81853)))

(declare-fun res!60672 () Bool)

(declare-fun call!13426 () Bool)

(assert (=> b!125246 (= res!60672 call!13426)))

(assert (=> b!125246 (=> (not res!60672) (not e!81853))))

(declare-fun b!125247 () Bool)

(declare-fun e!81858 () Bool)

(declare-fun lt!64578 () ListLongMap!1681)

(assert (=> b!125247 (= e!81858 (= (apply!110 lt!64578 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)) (get!1445 (select (arr!2219 (_values!2747 newMap!16)) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!125247 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2482 (_values!2747 newMap!16))))))

(assert (=> b!125247 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun b!125248 () Bool)

(assert (=> b!125248 (= e!81853 (= (apply!110 lt!64578 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!125249 () Bool)

(assert (=> b!125249 (= e!81850 call!13430)))

(declare-fun b!125250 () Bool)

(declare-fun e!81855 () ListLongMap!1681)

(assert (=> b!125250 (= e!81855 call!13425)))

(declare-fun bm!13422 () Bool)

(declare-fun call!13424 () ListLongMap!1681)

(assert (=> bm!13422 (= call!13427 call!13424)))

(declare-fun b!125251 () Bool)

(declare-fun res!60669 () Bool)

(declare-fun e!81856 () Bool)

(assert (=> b!125251 (=> (not res!60669) (not e!81856))))

(declare-fun e!81857 () Bool)

(assert (=> b!125251 (= res!60669 e!81857)))

(declare-fun res!60673 () Bool)

(assert (=> b!125251 (=> res!60673 e!81857)))

(declare-fun e!81854 () Bool)

(assert (=> b!125251 (= res!60673 (not e!81854))))

(declare-fun res!60666 () Bool)

(assert (=> b!125251 (=> (not res!60666) (not e!81854))))

(assert (=> b!125251 (= res!60666 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun d!37525 () Bool)

(assert (=> d!37525 e!81856))

(declare-fun res!60670 () Bool)

(assert (=> d!37525 (=> (not res!60670) (not e!81856))))

(assert (=> d!37525 (= res!60670 (or (bvsge #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))))

(declare-fun lt!64570 () ListLongMap!1681)

(assert (=> d!37525 (= lt!64578 lt!64570)))

(declare-fun lt!64582 () Unit!3878)

(assert (=> d!37525 (= lt!64582 e!81859)))

(declare-fun c!22808 () Bool)

(assert (=> d!37525 (= c!22808 e!81848)))

(declare-fun res!60668 () Bool)

(assert (=> d!37525 (=> (not res!60668) (not e!81848))))

(assert (=> d!37525 (= res!60668 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun e!81847 () ListLongMap!1681)

(assert (=> d!37525 (= lt!64570 e!81847)))

(declare-fun c!22809 () Bool)

(assert (=> d!37525 (= c!22809 (and (not (= (bvand lt!64107 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!64107 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!37525 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37525 (= (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) lt!64107 (zeroValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) lt!64578)))

(declare-fun b!125252 () Bool)

(assert (=> b!125252 (= e!81851 (not call!13426))))

(declare-fun b!125253 () Bool)

(assert (=> b!125253 (= e!81857 e!81858)))

(declare-fun res!60671 () Bool)

(assert (=> b!125253 (=> (not res!60671) (not e!81858))))

(assert (=> b!125253 (= res!60671 (contains!873 lt!64578 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!125253 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun call!13429 () ListLongMap!1681)

(declare-fun bm!13423 () Bool)

(declare-fun c!22811 () Bool)

(assert (=> bm!13423 (= call!13429 (+!164 (ite c!22809 call!13424 (ite c!22811 call!13427 call!13430)) (ite (or c!22809 c!22811) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!125254 () Bool)

(declare-fun e!81849 () Bool)

(assert (=> b!125254 (= e!81849 (= (apply!110 lt!64578 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2629 newMap!16)))))

(declare-fun b!125255 () Bool)

(assert (=> b!125255 (= e!81847 (+!164 call!13429 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!125256 () Bool)

(assert (=> b!125256 (= e!81854 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!125257 () Bool)

(declare-fun c!22810 () Bool)

(assert (=> b!125257 (= c!22810 (and (not (= (bvand lt!64107 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand lt!64107 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!125257 (= e!81855 e!81850)))

(declare-fun bm!13424 () Bool)

(declare-fun call!13428 () Bool)

(assert (=> bm!13424 (= call!13428 (contains!873 lt!64578 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!125258 () Bool)

(declare-fun e!81852 () Bool)

(assert (=> b!125258 (= e!81852 (not call!13428))))

(declare-fun b!125259 () Bool)

(assert (=> b!125259 (= e!81856 e!81851)))

(declare-fun c!22812 () Bool)

(assert (=> b!125259 (= c!22812 (not (= (bvand lt!64107 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!13425 () Bool)

(assert (=> bm!13425 (= call!13424 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) lt!64107 (zeroValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun b!125260 () Bool)

(assert (=> b!125260 (= e!81847 e!81855)))

(assert (=> b!125260 (= c!22811 (and (not (= (bvand lt!64107 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand lt!64107 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!125261 () Bool)

(assert (=> b!125261 (= e!81852 e!81849)))

(declare-fun res!60667 () Bool)

(assert (=> b!125261 (= res!60667 call!13428)))

(assert (=> b!125261 (=> (not res!60667) (not e!81849))))

(declare-fun b!125262 () Bool)

(declare-fun res!60665 () Bool)

(assert (=> b!125262 (=> (not res!60665) (not e!81856))))

(assert (=> b!125262 (= res!60665 e!81852)))

(declare-fun c!22807 () Bool)

(assert (=> b!125262 (= c!22807 (not (= (bvand lt!64107 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13426 () Bool)

(assert (=> bm!13426 (= call!13425 call!13429)))

(declare-fun b!125263 () Bool)

(declare-fun lt!64568 () Unit!3878)

(assert (=> b!125263 (= e!81859 lt!64568)))

(declare-fun lt!64571 () ListLongMap!1681)

(assert (=> b!125263 (= lt!64571 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) lt!64107 (zeroValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64572 () (_ BitVec 64))

(assert (=> b!125263 (= lt!64572 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64584 () (_ BitVec 64))

(assert (=> b!125263 (= lt!64584 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64581 () Unit!3878)

(assert (=> b!125263 (= lt!64581 (addStillContains!86 lt!64571 lt!64572 (zeroValue!2629 newMap!16) lt!64584))))

(assert (=> b!125263 (contains!873 (+!164 lt!64571 (tuple2!2561 lt!64572 (zeroValue!2629 newMap!16))) lt!64584)))

(declare-fun lt!64583 () Unit!3878)

(assert (=> b!125263 (= lt!64583 lt!64581)))

(declare-fun lt!64585 () ListLongMap!1681)

(assert (=> b!125263 (= lt!64585 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) lt!64107 (zeroValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64576 () (_ BitVec 64))

(assert (=> b!125263 (= lt!64576 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64575 () (_ BitVec 64))

(assert (=> b!125263 (= lt!64575 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64579 () Unit!3878)

(assert (=> b!125263 (= lt!64579 (addApplyDifferent!86 lt!64585 lt!64576 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) lt!64575))))

(assert (=> b!125263 (= (apply!110 (+!164 lt!64585 (tuple2!2561 lt!64576 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!64575) (apply!110 lt!64585 lt!64575))))

(declare-fun lt!64588 () Unit!3878)

(assert (=> b!125263 (= lt!64588 lt!64579)))

(declare-fun lt!64577 () ListLongMap!1681)

(assert (=> b!125263 (= lt!64577 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) lt!64107 (zeroValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64586 () (_ BitVec 64))

(assert (=> b!125263 (= lt!64586 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64573 () (_ BitVec 64))

(assert (=> b!125263 (= lt!64573 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64569 () Unit!3878)

(assert (=> b!125263 (= lt!64569 (addApplyDifferent!86 lt!64577 lt!64586 (zeroValue!2629 newMap!16) lt!64573))))

(assert (=> b!125263 (= (apply!110 (+!164 lt!64577 (tuple2!2561 lt!64586 (zeroValue!2629 newMap!16))) lt!64573) (apply!110 lt!64577 lt!64573))))

(declare-fun lt!64587 () Unit!3878)

(assert (=> b!125263 (= lt!64587 lt!64569)))

(declare-fun lt!64589 () ListLongMap!1681)

(assert (=> b!125263 (= lt!64589 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) lt!64107 (zeroValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64580 () (_ BitVec 64))

(assert (=> b!125263 (= lt!64580 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64574 () (_ BitVec 64))

(assert (=> b!125263 (= lt!64574 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!125263 (= lt!64568 (addApplyDifferent!86 lt!64589 lt!64580 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) lt!64574))))

(assert (=> b!125263 (= (apply!110 (+!164 lt!64589 (tuple2!2561 lt!64580 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!64574) (apply!110 lt!64589 lt!64574))))

(declare-fun bm!13427 () Bool)

(assert (=> bm!13427 (= call!13426 (contains!873 lt!64578 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!37525 c!22809) b!125255))

(assert (= (and d!37525 (not c!22809)) b!125260))

(assert (= (and b!125260 c!22811) b!125250))

(assert (= (and b!125260 (not c!22811)) b!125257))

(assert (= (and b!125257 c!22810) b!125244))

(assert (= (and b!125257 (not c!22810)) b!125249))

(assert (= (or b!125244 b!125249) bm!13421))

(assert (= (or b!125250 bm!13421) bm!13422))

(assert (= (or b!125250 b!125244) bm!13426))

(assert (= (or b!125255 bm!13422) bm!13425))

(assert (= (or b!125255 bm!13426) bm!13423))

(assert (= (and d!37525 res!60668) b!125245))

(assert (= (and d!37525 c!22808) b!125263))

(assert (= (and d!37525 (not c!22808)) b!125243))

(assert (= (and d!37525 res!60670) b!125251))

(assert (= (and b!125251 res!60666) b!125256))

(assert (= (and b!125251 (not res!60673)) b!125253))

(assert (= (and b!125253 res!60671) b!125247))

(assert (= (and b!125251 res!60669) b!125262))

(assert (= (and b!125262 c!22807) b!125261))

(assert (= (and b!125262 (not c!22807)) b!125258))

(assert (= (and b!125261 res!60667) b!125254))

(assert (= (or b!125261 b!125258) bm!13424))

(assert (= (and b!125262 res!60665) b!125259))

(assert (= (and b!125259 c!22812) b!125246))

(assert (= (and b!125259 (not c!22812)) b!125252))

(assert (= (and b!125246 res!60672) b!125248))

(assert (= (or b!125246 b!125252) bm!13427))

(declare-fun b_lambda!5525 () Bool)

(assert (=> (not b_lambda!5525) (not b!125247)))

(assert (=> b!125247 t!6062))

(declare-fun b_and!7717 () Bool)

(assert (= b_and!7713 (and (=> t!6062 result!3831) b_and!7717)))

(assert (=> b!125247 t!6064))

(declare-fun b_and!7719 () Bool)

(assert (= b_and!7715 (and (=> t!6064 result!3833) b_and!7719)))

(declare-fun m!145579 () Bool)

(assert (=> b!125255 m!145579))

(declare-fun m!145581 () Bool)

(assert (=> bm!13427 m!145581))

(assert (=> b!125245 m!145047))

(assert (=> b!125245 m!145047))

(assert (=> b!125245 m!145049))

(declare-fun m!145583 () Bool)

(assert (=> bm!13423 m!145583))

(declare-fun m!145585 () Bool)

(assert (=> b!125248 m!145585))

(assert (=> d!37525 m!145009))

(assert (=> bm!13425 m!144681))

(declare-fun m!145587 () Bool)

(assert (=> bm!13425 m!145587))

(declare-fun m!145589 () Bool)

(assert (=> b!125254 m!145589))

(assert (=> b!125247 m!145059))

(assert (=> b!125247 m!145061))

(assert (=> b!125247 m!145063))

(assert (=> b!125247 m!145047))

(declare-fun m!145591 () Bool)

(assert (=> b!125247 m!145591))

(assert (=> b!125247 m!145061))

(assert (=> b!125247 m!145059))

(assert (=> b!125247 m!145047))

(declare-fun m!145593 () Bool)

(assert (=> bm!13424 m!145593))

(declare-fun m!145595 () Bool)

(assert (=> b!125263 m!145595))

(declare-fun m!145597 () Bool)

(assert (=> b!125263 m!145597))

(declare-fun m!145599 () Bool)

(assert (=> b!125263 m!145599))

(declare-fun m!145601 () Bool)

(assert (=> b!125263 m!145601))

(declare-fun m!145603 () Bool)

(assert (=> b!125263 m!145603))

(declare-fun m!145605 () Bool)

(assert (=> b!125263 m!145605))

(assert (=> b!125263 m!145597))

(declare-fun m!145607 () Bool)

(assert (=> b!125263 m!145607))

(assert (=> b!125263 m!145599))

(assert (=> b!125263 m!145605))

(declare-fun m!145609 () Bool)

(assert (=> b!125263 m!145609))

(declare-fun m!145611 () Bool)

(assert (=> b!125263 m!145611))

(declare-fun m!145613 () Bool)

(assert (=> b!125263 m!145613))

(assert (=> b!125263 m!145047))

(declare-fun m!145615 () Bool)

(assert (=> b!125263 m!145615))

(assert (=> b!125263 m!144681))

(declare-fun m!145617 () Bool)

(assert (=> b!125263 m!145617))

(assert (=> b!125263 m!144681))

(assert (=> b!125263 m!145587))

(assert (=> b!125263 m!145595))

(declare-fun m!145619 () Bool)

(assert (=> b!125263 m!145619))

(declare-fun m!145621 () Bool)

(assert (=> b!125263 m!145621))

(assert (=> b!125263 m!144681))

(declare-fun m!145623 () Bool)

(assert (=> b!125263 m!145623))

(assert (=> b!125253 m!145047))

(assert (=> b!125253 m!145047))

(declare-fun m!145625 () Bool)

(assert (=> b!125253 m!145625))

(assert (=> b!125256 m!145047))

(assert (=> b!125256 m!145047))

(assert (=> b!125256 m!145049))

(assert (=> d!37407 d!37525))

(declare-fun d!37527 () Bool)

(declare-fun e!81861 () Bool)

(assert (=> d!37527 e!81861))

(declare-fun res!60674 () Bool)

(assert (=> d!37527 (=> res!60674 e!81861)))

(declare-fun lt!64590 () Bool)

(assert (=> d!37527 (= res!60674 (not lt!64590))))

(declare-fun lt!64593 () Bool)

(assert (=> d!37527 (= lt!64590 lt!64593)))

(declare-fun lt!64591 () Unit!3878)

(declare-fun e!81860 () Unit!3878)

(assert (=> d!37527 (= lt!64591 e!81860)))

(declare-fun c!22813 () Bool)

(assert (=> d!37527 (= c!22813 lt!64593)))

(assert (=> d!37527 (= lt!64593 (containsKey!169 (toList!856 lt!64286) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!37527 (= (contains!873 lt!64286 #b0000000000000000000000000000000000000000000000000000000000000000) lt!64590)))

(declare-fun b!125264 () Bool)

(declare-fun lt!64592 () Unit!3878)

(assert (=> b!125264 (= e!81860 lt!64592)))

(assert (=> b!125264 (= lt!64592 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64286) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!125264 (isDefined!119 (getValueByKey!165 (toList!856 lt!64286) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!125265 () Bool)

(declare-fun Unit!3901 () Unit!3878)

(assert (=> b!125265 (= e!81860 Unit!3901)))

(declare-fun b!125266 () Bool)

(assert (=> b!125266 (= e!81861 (isDefined!119 (getValueByKey!165 (toList!856 lt!64286) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37527 c!22813) b!125264))

(assert (= (and d!37527 (not c!22813)) b!125265))

(assert (= (and d!37527 (not res!60674)) b!125266))

(declare-fun m!145627 () Bool)

(assert (=> d!37527 m!145627))

(declare-fun m!145629 () Bool)

(assert (=> b!125264 m!145629))

(assert (=> b!125264 m!145545))

(assert (=> b!125264 m!145545))

(declare-fun m!145631 () Bool)

(assert (=> b!125264 m!145631))

(assert (=> b!125266 m!145545))

(assert (=> b!125266 m!145545))

(assert (=> b!125266 m!145631))

(assert (=> bm!13367 d!37527))

(declare-fun b!125267 () Bool)

(declare-fun e!81862 () Bool)

(declare-fun call!13431 () Bool)

(assert (=> b!125267 (= e!81862 call!13431)))

(declare-fun bm!13428 () Bool)

(assert (=> bm!13428 (= call!13431 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4493 (_2!1291 lt!64127)) (mask!7010 (_2!1291 lt!64127))))))

(declare-fun d!37529 () Bool)

(declare-fun res!60676 () Bool)

(declare-fun e!81864 () Bool)

(assert (=> d!37529 (=> res!60676 e!81864)))

(assert (=> d!37529 (= res!60676 (bvsge #b00000000000000000000000000000000 (size!2481 (_keys!4493 (_2!1291 lt!64127)))))))

(assert (=> d!37529 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4493 (_2!1291 lt!64127)) (mask!7010 (_2!1291 lt!64127))) e!81864)))

(declare-fun b!125268 () Bool)

(assert (=> b!125268 (= e!81864 e!81862)))

(declare-fun c!22814 () Bool)

(assert (=> b!125268 (= c!22814 (validKeyInArray!0 (select (arr!2218 (_keys!4493 (_2!1291 lt!64127))) #b00000000000000000000000000000000)))))

(declare-fun b!125269 () Bool)

(declare-fun e!81863 () Bool)

(assert (=> b!125269 (= e!81863 call!13431)))

(declare-fun b!125270 () Bool)

(assert (=> b!125270 (= e!81862 e!81863)))

(declare-fun lt!64594 () (_ BitVec 64))

(assert (=> b!125270 (= lt!64594 (select (arr!2218 (_keys!4493 (_2!1291 lt!64127))) #b00000000000000000000000000000000))))

(declare-fun lt!64596 () Unit!3878)

(assert (=> b!125270 (= lt!64596 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4493 (_2!1291 lt!64127)) lt!64594 #b00000000000000000000000000000000))))

(assert (=> b!125270 (arrayContainsKey!0 (_keys!4493 (_2!1291 lt!64127)) lt!64594 #b00000000000000000000000000000000)))

(declare-fun lt!64595 () Unit!3878)

(assert (=> b!125270 (= lt!64595 lt!64596)))

(declare-fun res!60675 () Bool)

(assert (=> b!125270 (= res!60675 (= (seekEntryOrOpen!0 (select (arr!2218 (_keys!4493 (_2!1291 lt!64127))) #b00000000000000000000000000000000) (_keys!4493 (_2!1291 lt!64127)) (mask!7010 (_2!1291 lt!64127))) (Found!279 #b00000000000000000000000000000000)))))

(assert (=> b!125270 (=> (not res!60675) (not e!81863))))

(assert (= (and d!37529 (not res!60676)) b!125268))

(assert (= (and b!125268 c!22814) b!125270))

(assert (= (and b!125268 (not c!22814)) b!125267))

(assert (= (and b!125270 res!60675) b!125269))

(assert (= (or b!125269 b!125267) bm!13428))

(declare-fun m!145633 () Bool)

(assert (=> bm!13428 m!145633))

(declare-fun m!145635 () Bool)

(assert (=> b!125268 m!145635))

(assert (=> b!125268 m!145635))

(declare-fun m!145637 () Bool)

(assert (=> b!125268 m!145637))

(assert (=> b!125270 m!145635))

(declare-fun m!145639 () Bool)

(assert (=> b!125270 m!145639))

(declare-fun m!145641 () Bool)

(assert (=> b!125270 m!145641))

(assert (=> b!125270 m!145635))

(declare-fun m!145643 () Bool)

(assert (=> b!125270 m!145643))

(assert (=> b!125037 d!37529))

(declare-fun d!37531 () Bool)

(assert (=> d!37531 (= (get!1448 (getValueByKey!165 (toList!856 (+!164 lt!64186 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64182)) (v!3110 (getValueByKey!165 (toList!856 (+!164 lt!64186 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64182)))))

(assert (=> d!37371 d!37531))

(declare-fun b!125271 () Bool)

(declare-fun e!81865 () Option!171)

(assert (=> b!125271 (= e!81865 (Some!170 (_2!1290 (h!2313 (toList!856 (+!164 lt!64186 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))))))

(declare-fun b!125274 () Bool)

(declare-fun e!81866 () Option!171)

(assert (=> b!125274 (= e!81866 None!169)))

(declare-fun b!125272 () Bool)

(assert (=> b!125272 (= e!81865 e!81866)))

(declare-fun c!22816 () Bool)

(assert (=> b!125272 (= c!22816 (and ((_ is Cons!1712) (toList!856 (+!164 lt!64186 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))) (not (= (_1!1290 (h!2313 (toList!856 (+!164 lt!64186 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))) lt!64182))))))

(declare-fun b!125273 () Bool)

(assert (=> b!125273 (= e!81866 (getValueByKey!165 (t!6055 (toList!856 (+!164 lt!64186 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))) lt!64182))))

(declare-fun c!22815 () Bool)

(declare-fun d!37533 () Bool)

(assert (=> d!37533 (= c!22815 (and ((_ is Cons!1712) (toList!856 (+!164 lt!64186 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))) (= (_1!1290 (h!2313 (toList!856 (+!164 lt!64186 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))) lt!64182)))))

(assert (=> d!37533 (= (getValueByKey!165 (toList!856 (+!164 lt!64186 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64182) e!81865)))

(assert (= (and d!37533 c!22815) b!125271))

(assert (= (and d!37533 (not c!22815)) b!125272))

(assert (= (and b!125272 c!22816) b!125273))

(assert (= (and b!125272 (not c!22816)) b!125274))

(declare-fun m!145645 () Bool)

(assert (=> b!125273 m!145645))

(assert (=> d!37371 d!37533))

(declare-fun d!37535 () Bool)

(assert (=> d!37535 (= (isEmpty!398 (getValueByKey!165 (toList!856 lt!64030) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))) (not ((_ is Some!170) (getValueByKey!165 (toList!856 lt!64030) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))))

(assert (=> d!37359 d!37535))

(declare-fun d!37537 () Bool)

(declare-fun e!81868 () Bool)

(assert (=> d!37537 e!81868))

(declare-fun res!60677 () Bool)

(assert (=> d!37537 (=> res!60677 e!81868)))

(declare-fun lt!64597 () Bool)

(assert (=> d!37537 (= res!60677 (not lt!64597))))

(declare-fun lt!64600 () Bool)

(assert (=> d!37537 (= lt!64597 lt!64600)))

(declare-fun lt!64598 () Unit!3878)

(declare-fun e!81867 () Unit!3878)

(assert (=> d!37537 (= lt!64598 e!81867)))

(declare-fun c!22817 () Bool)

(assert (=> d!37537 (= c!22817 lt!64600)))

(assert (=> d!37537 (= lt!64600 (containsKey!169 (toList!856 lt!64475) (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!37537 (= (contains!873 lt!64475 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)) lt!64597)))

(declare-fun b!125275 () Bool)

(declare-fun lt!64599 () Unit!3878)

(assert (=> b!125275 (= e!81867 lt!64599)))

(assert (=> b!125275 (= lt!64599 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64475) (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!125275 (isDefined!119 (getValueByKey!165 (toList!856 lt!64475) (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!125276 () Bool)

(declare-fun Unit!3902 () Unit!3878)

(assert (=> b!125276 (= e!81867 Unit!3902)))

(declare-fun b!125277 () Bool)

(assert (=> b!125277 (= e!81868 (isDefined!119 (getValueByKey!165 (toList!856 lt!64475) (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))))

(assert (= (and d!37537 c!22817) b!125275))

(assert (= (and d!37537 (not c!22817)) b!125276))

(assert (= (and d!37537 (not res!60677)) b!125277))

(assert (=> d!37537 m!145047))

(declare-fun m!145647 () Bool)

(assert (=> d!37537 m!145647))

(assert (=> b!125275 m!145047))

(declare-fun m!145649 () Bool)

(assert (=> b!125275 m!145649))

(assert (=> b!125275 m!145047))

(declare-fun m!145651 () Bool)

(assert (=> b!125275 m!145651))

(assert (=> b!125275 m!145651))

(declare-fun m!145653 () Bool)

(assert (=> b!125275 m!145653))

(assert (=> b!125277 m!145047))

(assert (=> b!125277 m!145651))

(assert (=> b!125277 m!145651))

(assert (=> b!125277 m!145653))

(assert (=> b!125107 d!37537))

(declare-fun b!125278 () Bool)

(declare-fun res!60679 () Bool)

(declare-fun e!81870 () Bool)

(assert (=> b!125278 (=> (not res!60679) (not e!81870))))

(declare-fun lt!64604 () ListLongMap!1681)

(assert (=> b!125278 (= res!60679 (not (contains!873 lt!64604 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!125279 () Bool)

(declare-fun lt!64603 () Unit!3878)

(declare-fun lt!64601 () Unit!3878)

(assert (=> b!125279 (= lt!64603 lt!64601)))

(declare-fun lt!64602 () (_ BitVec 64))

(declare-fun lt!64606 () V!3427)

(declare-fun lt!64607 () ListLongMap!1681)

(declare-fun lt!64605 () (_ BitVec 64))

(assert (=> b!125279 (not (contains!873 (+!164 lt!64607 (tuple2!2561 lt!64602 lt!64606)) lt!64605))))

(assert (=> b!125279 (= lt!64601 (addStillNotContains!57 lt!64607 lt!64602 lt!64606 lt!64605))))

(assert (=> b!125279 (= lt!64605 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!125279 (= lt!64606 (get!1445 (select (arr!2219 (ite c!22675 (_values!2747 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!125279 (= lt!64602 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun call!13432 () ListLongMap!1681)

(assert (=> b!125279 (= lt!64607 call!13432)))

(declare-fun e!81873 () ListLongMap!1681)

(assert (=> b!125279 (= e!81873 (+!164 call!13432 (tuple2!2561 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000) (get!1445 (select (arr!2219 (ite c!22675 (_values!2747 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!13429 () Bool)

(assert (=> bm!13429 (= call!13432 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (ite c!22675 (_values!2747 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16)))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!2764 newMap!16)))))

(declare-fun b!125280 () Bool)

(declare-fun e!81871 () ListLongMap!1681)

(assert (=> b!125280 (= e!81871 (ListLongMap!1682 Nil!1713))))

(declare-fun e!81869 () Bool)

(declare-fun b!125281 () Bool)

(assert (=> b!125281 (= e!81869 (= lt!64604 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (ite c!22675 (_values!2747 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16)))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!2764 newMap!16))))))

(declare-fun d!37539 () Bool)

(assert (=> d!37539 e!81870))

(declare-fun res!60681 () Bool)

(assert (=> d!37539 (=> (not res!60681) (not e!81870))))

(assert (=> d!37539 (= res!60681 (not (contains!873 lt!64604 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!37539 (= lt!64604 e!81871)))

(declare-fun c!22820 () Bool)

(assert (=> d!37539 (= c!22820 (bvsge #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(assert (=> d!37539 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37539 (= (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (ite c!22675 (_values!2747 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16)))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) lt!64604)))

(declare-fun b!125282 () Bool)

(assert (=> b!125282 (= e!81871 e!81873)))

(declare-fun c!22821 () Bool)

(assert (=> b!125282 (= c!22821 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!125283 () Bool)

(declare-fun e!81874 () Bool)

(declare-fun e!81872 () Bool)

(assert (=> b!125283 (= e!81874 e!81872)))

(assert (=> b!125283 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun res!60680 () Bool)

(assert (=> b!125283 (= res!60680 (contains!873 lt!64604 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!125283 (=> (not res!60680) (not e!81872))))

(declare-fun b!125284 () Bool)

(assert (=> b!125284 (= e!81869 (isEmpty!399 lt!64604))))

(declare-fun b!125285 () Bool)

(assert (=> b!125285 (= e!81870 e!81874)))

(declare-fun c!22819 () Bool)

(declare-fun e!81875 () Bool)

(assert (=> b!125285 (= c!22819 e!81875)))

(declare-fun res!60678 () Bool)

(assert (=> b!125285 (=> (not res!60678) (not e!81875))))

(assert (=> b!125285 (= res!60678 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun b!125286 () Bool)

(assert (=> b!125286 (= e!81875 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!125286 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!125287 () Bool)

(assert (=> b!125287 (= e!81874 e!81869)))

(declare-fun c!22818 () Bool)

(assert (=> b!125287 (= c!22818 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun b!125288 () Bool)

(assert (=> b!125288 (= e!81873 call!13432)))

(declare-fun b!125289 () Bool)

(assert (=> b!125289 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(assert (=> b!125289 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2482 (ite c!22675 (_values!2747 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16)))))))))

(assert (=> b!125289 (= e!81872 (= (apply!110 lt!64604 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)) (get!1445 (select (arr!2219 (ite c!22675 (_values!2747 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!37539 c!22820) b!125280))

(assert (= (and d!37539 (not c!22820)) b!125282))

(assert (= (and b!125282 c!22821) b!125279))

(assert (= (and b!125282 (not c!22821)) b!125288))

(assert (= (or b!125279 b!125288) bm!13429))

(assert (= (and d!37539 res!60681) b!125278))

(assert (= (and b!125278 res!60679) b!125285))

(assert (= (and b!125285 res!60678) b!125286))

(assert (= (and b!125285 c!22819) b!125283))

(assert (= (and b!125285 (not c!22819)) b!125287))

(assert (= (and b!125283 res!60680) b!125289))

(assert (= (and b!125287 c!22818) b!125281))

(assert (= (and b!125287 (not c!22818)) b!125284))

(declare-fun b_lambda!5527 () Bool)

(assert (=> (not b_lambda!5527) (not b!125279)))

(assert (=> b!125279 t!6062))

(declare-fun b_and!7721 () Bool)

(assert (= b_and!7717 (and (=> t!6062 result!3831) b_and!7721)))

(assert (=> b!125279 t!6064))

(declare-fun b_and!7723 () Bool)

(assert (= b_and!7719 (and (=> t!6064 result!3833) b_and!7723)))

(declare-fun b_lambda!5529 () Bool)

(assert (=> (not b_lambda!5529) (not b!125289)))

(assert (=> b!125289 t!6062))

(declare-fun b_and!7725 () Bool)

(assert (= b_and!7721 (and (=> t!6062 result!3831) b_and!7725)))

(assert (=> b!125289 t!6064))

(declare-fun b_and!7727 () Bool)

(assert (= b_and!7723 (and (=> t!6064 result!3833) b_and!7727)))

(assert (=> b!125283 m!145047))

(assert (=> b!125283 m!145047))

(declare-fun m!145655 () Bool)

(assert (=> b!125283 m!145655))

(assert (=> b!125289 m!145047))

(assert (=> b!125289 m!145125))

(assert (=> b!125289 m!145061))

(assert (=> b!125289 m!145127))

(assert (=> b!125289 m!145047))

(declare-fun m!145657 () Bool)

(assert (=> b!125289 m!145657))

(assert (=> b!125289 m!145061))

(assert (=> b!125289 m!145125))

(declare-fun m!145659 () Bool)

(assert (=> b!125279 m!145659))

(declare-fun m!145661 () Bool)

(assert (=> b!125279 m!145661))

(declare-fun m!145663 () Bool)

(assert (=> b!125279 m!145663))

(assert (=> b!125279 m!145125))

(assert (=> b!125279 m!145061))

(assert (=> b!125279 m!145127))

(assert (=> b!125279 m!145047))

(assert (=> b!125279 m!145663))

(declare-fun m!145665 () Bool)

(assert (=> b!125279 m!145665))

(assert (=> b!125279 m!145061))

(assert (=> b!125279 m!145125))

(declare-fun m!145667 () Bool)

(assert (=> b!125281 m!145667))

(assert (=> b!125286 m!145047))

(assert (=> b!125286 m!145047))

(assert (=> b!125286 m!145049))

(declare-fun m!145669 () Bool)

(assert (=> b!125284 m!145669))

(declare-fun m!145671 () Bool)

(assert (=> d!37539 m!145671))

(assert (=> d!37539 m!145009))

(assert (=> bm!13429 m!145667))

(assert (=> b!125282 m!145047))

(assert (=> b!125282 m!145047))

(assert (=> b!125282 m!145049))

(declare-fun m!145673 () Bool)

(assert (=> b!125278 m!145673))

(assert (=> bm!13381 d!37539))

(declare-fun d!37541 () Bool)

(assert (=> d!37541 (= (inRange!0 (ite c!22772 (index!3271 lt!64436) (ite c!22770 (index!3270 lt!64454) (index!3273 lt!64454))) (mask!7010 newMap!16)) (and (bvsge (ite c!22772 (index!3271 lt!64436) (ite c!22770 (index!3270 lt!64454) (index!3273 lt!64454))) #b00000000000000000000000000000000) (bvslt (ite c!22772 (index!3271 lt!64436) (ite c!22770 (index!3270 lt!64454) (index!3273 lt!64454))) (bvadd (mask!7010 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!13401 d!37541))

(declare-fun d!37543 () Bool)

(assert (=> d!37543 (= (get!1446 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3105 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!124874 d!37543))

(declare-fun d!37545 () Bool)

(declare-fun e!81877 () Bool)

(assert (=> d!37545 e!81877))

(declare-fun res!60682 () Bool)

(assert (=> d!37545 (=> res!60682 e!81877)))

(declare-fun lt!64608 () Bool)

(assert (=> d!37545 (= res!60682 (not lt!64608))))

(declare-fun lt!64611 () Bool)

(assert (=> d!37545 (= lt!64608 lt!64611)))

(declare-fun lt!64609 () Unit!3878)

(declare-fun e!81876 () Unit!3878)

(assert (=> d!37545 (= lt!64609 e!81876)))

(declare-fun c!22822 () Bool)

(assert (=> d!37545 (= c!22822 lt!64611)))

(assert (=> d!37545 (= lt!64611 (containsKey!169 (toList!856 lt!64241) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!37545 (= (contains!873 lt!64241 #b0000000000000000000000000000000000000000000000000000000000000000) lt!64608)))

(declare-fun b!125290 () Bool)

(declare-fun lt!64610 () Unit!3878)

(assert (=> b!125290 (= e!81876 lt!64610)))

(assert (=> b!125290 (= lt!64610 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64241) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!125290 (isDefined!119 (getValueByKey!165 (toList!856 lt!64241) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!125291 () Bool)

(declare-fun Unit!3903 () Unit!3878)

(assert (=> b!125291 (= e!81876 Unit!3903)))

(declare-fun b!125292 () Bool)

(assert (=> b!125292 (= e!81877 (isDefined!119 (getValueByKey!165 (toList!856 lt!64241) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37545 c!22822) b!125290))

(assert (= (and d!37545 (not c!22822)) b!125291))

(assert (= (and d!37545 (not res!60682)) b!125292))

(declare-fun m!145675 () Bool)

(assert (=> d!37545 m!145675))

(declare-fun m!145677 () Bool)

(assert (=> b!125290 m!145677))

(declare-fun m!145679 () Bool)

(assert (=> b!125290 m!145679))

(assert (=> b!125290 m!145679))

(declare-fun m!145681 () Bool)

(assert (=> b!125290 m!145681))

(assert (=> b!125292 m!145679))

(assert (=> b!125292 m!145679))

(assert (=> b!125292 m!145681))

(assert (=> d!37385 d!37545))

(assert (=> d!37385 d!37349))

(declare-fun d!37547 () Bool)

(declare-fun e!81879 () Bool)

(assert (=> d!37547 e!81879))

(declare-fun res!60683 () Bool)

(assert (=> d!37547 (=> res!60683 e!81879)))

(declare-fun lt!64612 () Bool)

(assert (=> d!37547 (= res!60683 (not lt!64612))))

(declare-fun lt!64615 () Bool)

(assert (=> d!37547 (= lt!64612 lt!64615)))

(declare-fun lt!64613 () Unit!3878)

(declare-fun e!81878 () Unit!3878)

(assert (=> d!37547 (= lt!64613 e!81878)))

(declare-fun c!22823 () Bool)

(assert (=> d!37547 (= c!22823 lt!64615)))

(assert (=> d!37547 (= lt!64615 (containsKey!169 (toList!856 (getCurrentListMap!528 (_keys!4493 newMap!16) lt!64129 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16))) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122))))))

(assert (=> d!37547 (= (contains!873 (getCurrentListMap!528 (_keys!4493 newMap!16) lt!64129 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122))) lt!64612)))

(declare-fun b!125293 () Bool)

(declare-fun lt!64614 () Unit!3878)

(assert (=> b!125293 (= e!81878 lt!64614)))

(assert (=> b!125293 (= lt!64614 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 (getCurrentListMap!528 (_keys!4493 newMap!16) lt!64129 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16))) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122))))))

(assert (=> b!125293 (isDefined!119 (getValueByKey!165 (toList!856 (getCurrentListMap!528 (_keys!4493 newMap!16) lt!64129 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16))) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122))))))

(declare-fun b!125294 () Bool)

(declare-fun Unit!3904 () Unit!3878)

(assert (=> b!125294 (= e!81878 Unit!3904)))

(declare-fun b!125295 () Bool)

(assert (=> b!125295 (= e!81879 (isDefined!119 (getValueByKey!165 (toList!856 (getCurrentListMap!528 (_keys!4493 newMap!16) lt!64129 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16))) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122)))))))

(assert (= (and d!37547 c!22823) b!125293))

(assert (= (and d!37547 (not c!22823)) b!125294))

(assert (= (and d!37547 (not res!60683)) b!125295))

(assert (=> d!37547 m!144767))

(declare-fun m!145683 () Bool)

(assert (=> d!37547 m!145683))

(assert (=> b!125293 m!144767))

(declare-fun m!145685 () Bool)

(assert (=> b!125293 m!145685))

(assert (=> b!125293 m!144767))

(declare-fun m!145687 () Bool)

(assert (=> b!125293 m!145687))

(assert (=> b!125293 m!145687))

(declare-fun m!145689 () Bool)

(assert (=> b!125293 m!145689))

(assert (=> b!125295 m!144767))

(assert (=> b!125295 m!145687))

(assert (=> b!125295 m!145687))

(assert (=> b!125295 m!145689))

(assert (=> b!124887 d!37547))

(declare-fun b!125296 () Bool)

(declare-fun e!81892 () Unit!3878)

(declare-fun Unit!3905 () Unit!3878)

(assert (=> b!125296 (= e!81892 Unit!3905)))

(declare-fun b!125297 () Bool)

(declare-fun e!81883 () ListLongMap!1681)

(declare-fun call!13434 () ListLongMap!1681)

(assert (=> b!125297 (= e!81883 call!13434)))

(declare-fun bm!13430 () Bool)

(declare-fun call!13439 () ListLongMap!1681)

(declare-fun call!13436 () ListLongMap!1681)

(assert (=> bm!13430 (= call!13439 call!13436)))

(declare-fun b!125298 () Bool)

(declare-fun e!81881 () Bool)

(assert (=> b!125298 (= e!81881 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!125299 () Bool)

(declare-fun e!81884 () Bool)

(declare-fun e!81886 () Bool)

(assert (=> b!125299 (= e!81884 e!81886)))

(declare-fun res!60691 () Bool)

(declare-fun call!13435 () Bool)

(assert (=> b!125299 (= res!60691 call!13435)))

(assert (=> b!125299 (=> (not res!60691) (not e!81886))))

(declare-fun lt!64626 () ListLongMap!1681)

(declare-fun b!125300 () Bool)

(declare-fun e!81891 () Bool)

(assert (=> b!125300 (= e!81891 (= (apply!110 lt!64626 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)) (get!1445 (select (arr!2219 lt!64129) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!125300 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2482 lt!64129)))))

(assert (=> b!125300 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun b!125301 () Bool)

(assert (=> b!125301 (= e!81886 (= (apply!110 lt!64626 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2629 newMap!16)))))

(declare-fun b!125302 () Bool)

(assert (=> b!125302 (= e!81883 call!13439)))

(declare-fun b!125303 () Bool)

(declare-fun e!81888 () ListLongMap!1681)

(assert (=> b!125303 (= e!81888 call!13434)))

(declare-fun bm!13431 () Bool)

(declare-fun call!13433 () ListLongMap!1681)

(assert (=> bm!13431 (= call!13436 call!13433)))

(declare-fun b!125304 () Bool)

(declare-fun res!60688 () Bool)

(declare-fun e!81889 () Bool)

(assert (=> b!125304 (=> (not res!60688) (not e!81889))))

(declare-fun e!81890 () Bool)

(assert (=> b!125304 (= res!60688 e!81890)))

(declare-fun res!60692 () Bool)

(assert (=> b!125304 (=> res!60692 e!81890)))

(declare-fun e!81887 () Bool)

(assert (=> b!125304 (= res!60692 (not e!81887))))

(declare-fun res!60685 () Bool)

(assert (=> b!125304 (=> (not res!60685) (not e!81887))))

(assert (=> b!125304 (= res!60685 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun d!37549 () Bool)

(assert (=> d!37549 e!81889))

(declare-fun res!60689 () Bool)

(assert (=> d!37549 (=> (not res!60689) (not e!81889))))

(assert (=> d!37549 (= res!60689 (or (bvsge #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))))

(declare-fun lt!64618 () ListLongMap!1681)

(assert (=> d!37549 (= lt!64626 lt!64618)))

(declare-fun lt!64630 () Unit!3878)

(assert (=> d!37549 (= lt!64630 e!81892)))

(declare-fun c!22825 () Bool)

(assert (=> d!37549 (= c!22825 e!81881)))

(declare-fun res!60687 () Bool)

(assert (=> d!37549 (=> (not res!60687) (not e!81881))))

(assert (=> d!37549 (= res!60687 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun e!81880 () ListLongMap!1681)

(assert (=> d!37549 (= lt!64618 e!81880)))

(declare-fun c!22826 () Bool)

(assert (=> d!37549 (= c!22826 (and (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!37549 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37549 (= (getCurrentListMap!528 (_keys!4493 newMap!16) lt!64129 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) lt!64626)))

(declare-fun b!125305 () Bool)

(assert (=> b!125305 (= e!81884 (not call!13435))))

(declare-fun b!125306 () Bool)

(assert (=> b!125306 (= e!81890 e!81891)))

(declare-fun res!60690 () Bool)

(assert (=> b!125306 (=> (not res!60690) (not e!81891))))

(assert (=> b!125306 (= res!60690 (contains!873 lt!64626 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!125306 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun bm!13432 () Bool)

(declare-fun c!22828 () Bool)

(declare-fun call!13438 () ListLongMap!1681)

(assert (=> bm!13432 (= call!13438 (+!164 (ite c!22826 call!13433 (ite c!22828 call!13436 call!13439)) (ite (or c!22826 c!22828) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))))))

(declare-fun b!125307 () Bool)

(declare-fun e!81882 () Bool)

(assert (=> b!125307 (= e!81882 (= (apply!110 lt!64626 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2629 newMap!16)))))

(declare-fun b!125308 () Bool)

(assert (=> b!125308 (= e!81880 (+!164 call!13438 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))))

(declare-fun b!125309 () Bool)

(assert (=> b!125309 (= e!81887 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!125310 () Bool)

(declare-fun c!22827 () Bool)

(assert (=> b!125310 (= c!22827 (and (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!125310 (= e!81888 e!81883)))

(declare-fun bm!13433 () Bool)

(declare-fun call!13437 () Bool)

(assert (=> bm!13433 (= call!13437 (contains!873 lt!64626 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!125311 () Bool)

(declare-fun e!81885 () Bool)

(assert (=> b!125311 (= e!81885 (not call!13437))))

(declare-fun b!125312 () Bool)

(assert (=> b!125312 (= e!81889 e!81884)))

(declare-fun c!22829 () Bool)

(assert (=> b!125312 (= c!22829 (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!13434 () Bool)

(assert (=> bm!13434 (= call!13433 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) lt!64129 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun b!125313 () Bool)

(assert (=> b!125313 (= e!81880 e!81888)))

(assert (=> b!125313 (= c!22828 (and (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!125314 () Bool)

(assert (=> b!125314 (= e!81885 e!81882)))

(declare-fun res!60686 () Bool)

(assert (=> b!125314 (= res!60686 call!13437)))

(assert (=> b!125314 (=> (not res!60686) (not e!81882))))

(declare-fun b!125315 () Bool)

(declare-fun res!60684 () Bool)

(assert (=> b!125315 (=> (not res!60684) (not e!81889))))

(assert (=> b!125315 (= res!60684 e!81885)))

(declare-fun c!22824 () Bool)

(assert (=> b!125315 (= c!22824 (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13435 () Bool)

(assert (=> bm!13435 (= call!13434 call!13438)))

(declare-fun b!125316 () Bool)

(declare-fun lt!64616 () Unit!3878)

(assert (=> b!125316 (= e!81892 lt!64616)))

(declare-fun lt!64619 () ListLongMap!1681)

(assert (=> b!125316 (= lt!64619 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) lt!64129 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64620 () (_ BitVec 64))

(assert (=> b!125316 (= lt!64620 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64632 () (_ BitVec 64))

(assert (=> b!125316 (= lt!64632 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64629 () Unit!3878)

(assert (=> b!125316 (= lt!64629 (addStillContains!86 lt!64619 lt!64620 (zeroValue!2629 newMap!16) lt!64632))))

(assert (=> b!125316 (contains!873 (+!164 lt!64619 (tuple2!2561 lt!64620 (zeroValue!2629 newMap!16))) lt!64632)))

(declare-fun lt!64631 () Unit!3878)

(assert (=> b!125316 (= lt!64631 lt!64629)))

(declare-fun lt!64633 () ListLongMap!1681)

(assert (=> b!125316 (= lt!64633 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) lt!64129 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64624 () (_ BitVec 64))

(assert (=> b!125316 (= lt!64624 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64623 () (_ BitVec 64))

(assert (=> b!125316 (= lt!64623 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64627 () Unit!3878)

(assert (=> b!125316 (= lt!64627 (addApplyDifferent!86 lt!64633 lt!64624 (minValue!2629 newMap!16) lt!64623))))

(assert (=> b!125316 (= (apply!110 (+!164 lt!64633 (tuple2!2561 lt!64624 (minValue!2629 newMap!16))) lt!64623) (apply!110 lt!64633 lt!64623))))

(declare-fun lt!64636 () Unit!3878)

(assert (=> b!125316 (= lt!64636 lt!64627)))

(declare-fun lt!64625 () ListLongMap!1681)

(assert (=> b!125316 (= lt!64625 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) lt!64129 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64634 () (_ BitVec 64))

(assert (=> b!125316 (= lt!64634 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64621 () (_ BitVec 64))

(assert (=> b!125316 (= lt!64621 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64617 () Unit!3878)

(assert (=> b!125316 (= lt!64617 (addApplyDifferent!86 lt!64625 lt!64634 (zeroValue!2629 newMap!16) lt!64621))))

(assert (=> b!125316 (= (apply!110 (+!164 lt!64625 (tuple2!2561 lt!64634 (zeroValue!2629 newMap!16))) lt!64621) (apply!110 lt!64625 lt!64621))))

(declare-fun lt!64635 () Unit!3878)

(assert (=> b!125316 (= lt!64635 lt!64617)))

(declare-fun lt!64637 () ListLongMap!1681)

(assert (=> b!125316 (= lt!64637 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) lt!64129 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64628 () (_ BitVec 64))

(assert (=> b!125316 (= lt!64628 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64622 () (_ BitVec 64))

(assert (=> b!125316 (= lt!64622 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!125316 (= lt!64616 (addApplyDifferent!86 lt!64637 lt!64628 (minValue!2629 newMap!16) lt!64622))))

(assert (=> b!125316 (= (apply!110 (+!164 lt!64637 (tuple2!2561 lt!64628 (minValue!2629 newMap!16))) lt!64622) (apply!110 lt!64637 lt!64622))))

(declare-fun bm!13436 () Bool)

(assert (=> bm!13436 (= call!13435 (contains!873 lt!64626 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!37549 c!22826) b!125308))

(assert (= (and d!37549 (not c!22826)) b!125313))

(assert (= (and b!125313 c!22828) b!125303))

(assert (= (and b!125313 (not c!22828)) b!125310))

(assert (= (and b!125310 c!22827) b!125297))

(assert (= (and b!125310 (not c!22827)) b!125302))

(assert (= (or b!125297 b!125302) bm!13430))

(assert (= (or b!125303 bm!13430) bm!13431))

(assert (= (or b!125303 b!125297) bm!13435))

(assert (= (or b!125308 bm!13431) bm!13434))

(assert (= (or b!125308 bm!13435) bm!13432))

(assert (= (and d!37549 res!60687) b!125298))

(assert (= (and d!37549 c!22825) b!125316))

(assert (= (and d!37549 (not c!22825)) b!125296))

(assert (= (and d!37549 res!60689) b!125304))

(assert (= (and b!125304 res!60685) b!125309))

(assert (= (and b!125304 (not res!60692)) b!125306))

(assert (= (and b!125306 res!60690) b!125300))

(assert (= (and b!125304 res!60688) b!125315))

(assert (= (and b!125315 c!22824) b!125314))

(assert (= (and b!125315 (not c!22824)) b!125311))

(assert (= (and b!125314 res!60686) b!125307))

(assert (= (or b!125314 b!125311) bm!13433))

(assert (= (and b!125315 res!60684) b!125312))

(assert (= (and b!125312 c!22829) b!125299))

(assert (= (and b!125312 (not c!22829)) b!125305))

(assert (= (and b!125299 res!60691) b!125301))

(assert (= (or b!125299 b!125305) bm!13436))

(declare-fun b_lambda!5531 () Bool)

(assert (=> (not b_lambda!5531) (not b!125300)))

(assert (=> b!125300 t!6062))

(declare-fun b_and!7729 () Bool)

(assert (= b_and!7725 (and (=> t!6062 result!3831) b_and!7729)))

(assert (=> b!125300 t!6064))

(declare-fun b_and!7731 () Bool)

(assert (= b_and!7727 (and (=> t!6064 result!3833) b_and!7731)))

(declare-fun m!145691 () Bool)

(assert (=> b!125308 m!145691))

(declare-fun m!145693 () Bool)

(assert (=> bm!13436 m!145693))

(assert (=> b!125298 m!145047))

(assert (=> b!125298 m!145047))

(assert (=> b!125298 m!145049))

(declare-fun m!145695 () Bool)

(assert (=> bm!13432 m!145695))

(declare-fun m!145697 () Bool)

(assert (=> b!125301 m!145697))

(assert (=> d!37549 m!145009))

(declare-fun m!145699 () Bool)

(assert (=> bm!13434 m!145699))

(declare-fun m!145701 () Bool)

(assert (=> b!125307 m!145701))

(declare-fun m!145703 () Bool)

(assert (=> b!125300 m!145703))

(assert (=> b!125300 m!145061))

(declare-fun m!145705 () Bool)

(assert (=> b!125300 m!145705))

(assert (=> b!125300 m!145047))

(declare-fun m!145707 () Bool)

(assert (=> b!125300 m!145707))

(assert (=> b!125300 m!145061))

(assert (=> b!125300 m!145703))

(assert (=> b!125300 m!145047))

(declare-fun m!145709 () Bool)

(assert (=> bm!13433 m!145709))

(declare-fun m!145711 () Bool)

(assert (=> b!125316 m!145711))

(declare-fun m!145713 () Bool)

(assert (=> b!125316 m!145713))

(declare-fun m!145715 () Bool)

(assert (=> b!125316 m!145715))

(declare-fun m!145717 () Bool)

(assert (=> b!125316 m!145717))

(declare-fun m!145719 () Bool)

(assert (=> b!125316 m!145719))

(declare-fun m!145721 () Bool)

(assert (=> b!125316 m!145721))

(assert (=> b!125316 m!145713))

(declare-fun m!145723 () Bool)

(assert (=> b!125316 m!145723))

(assert (=> b!125316 m!145715))

(assert (=> b!125316 m!145721))

(declare-fun m!145725 () Bool)

(assert (=> b!125316 m!145725))

(declare-fun m!145727 () Bool)

(assert (=> b!125316 m!145727))

(declare-fun m!145729 () Bool)

(assert (=> b!125316 m!145729))

(assert (=> b!125316 m!145047))

(declare-fun m!145731 () Bool)

(assert (=> b!125316 m!145731))

(declare-fun m!145733 () Bool)

(assert (=> b!125316 m!145733))

(assert (=> b!125316 m!145699))

(assert (=> b!125316 m!145711))

(declare-fun m!145735 () Bool)

(assert (=> b!125316 m!145735))

(declare-fun m!145737 () Bool)

(assert (=> b!125316 m!145737))

(declare-fun m!145739 () Bool)

(assert (=> b!125316 m!145739))

(assert (=> b!125306 m!145047))

(assert (=> b!125306 m!145047))

(declare-fun m!145741 () Bool)

(assert (=> b!125306 m!145741))

(assert (=> b!125309 m!145047))

(assert (=> b!125309 m!145047))

(assert (=> b!125309 m!145049))

(assert (=> b!124887 d!37549))

(declare-fun d!37551 () Bool)

(assert (=> d!37551 (= (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)) (and (not (= (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!125110 d!37551))

(declare-fun b!125317 () Bool)

(declare-fun res!60694 () Bool)

(declare-fun e!81894 () Bool)

(assert (=> b!125317 (=> (not res!60694) (not e!81894))))

(declare-fun lt!64641 () ListLongMap!1681)

(assert (=> b!125317 (= res!60694 (not (contains!873 lt!64641 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!125318 () Bool)

(declare-fun lt!64640 () Unit!3878)

(declare-fun lt!64638 () Unit!3878)

(assert (=> b!125318 (= lt!64640 lt!64638)))

(declare-fun lt!64639 () (_ BitVec 64))

(declare-fun lt!64644 () ListLongMap!1681)

(declare-fun lt!64642 () (_ BitVec 64))

(declare-fun lt!64643 () V!3427)

(assert (=> b!125318 (not (contains!873 (+!164 lt!64644 (tuple2!2561 lt!64639 lt!64643)) lt!64642))))

(assert (=> b!125318 (= lt!64638 (addStillNotContains!57 lt!64644 lt!64639 lt!64643 lt!64642))))

(assert (=> b!125318 (= lt!64642 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!125318 (= lt!64643 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!125318 (= lt!64639 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(declare-fun call!13440 () ListLongMap!1681)

(assert (=> b!125318 (= lt!64644 call!13440)))

(declare-fun e!81897 () ListLongMap!1681)

(assert (=> b!125318 (= e!81897 (+!164 call!13440 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!13437 () Bool)

(assert (=> bm!13437 (= call!13440 (getCurrentListMapNoExtraKeys!131 (_keys!4493 (v!3106 (underlying!435 thiss!992))) (_values!2747 (v!3106 (underlying!435 thiss!992))) (mask!7010 (v!3106 (underlying!435 thiss!992))) (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) (zeroValue!2629 (v!3106 (underlying!435 thiss!992))) (minValue!2629 (v!3106 (underlying!435 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2764 (v!3106 (underlying!435 thiss!992)))))))

(declare-fun b!125319 () Bool)

(declare-fun e!81895 () ListLongMap!1681)

(assert (=> b!125319 (= e!81895 (ListLongMap!1682 Nil!1713))))

(declare-fun b!125320 () Bool)

(declare-fun e!81893 () Bool)

(assert (=> b!125320 (= e!81893 (= lt!64641 (getCurrentListMapNoExtraKeys!131 (_keys!4493 (v!3106 (underlying!435 thiss!992))) (_values!2747 (v!3106 (underlying!435 thiss!992))) (mask!7010 (v!3106 (underlying!435 thiss!992))) (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) (zeroValue!2629 (v!3106 (underlying!435 thiss!992))) (minValue!2629 (v!3106 (underlying!435 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun d!37553 () Bool)

(assert (=> d!37553 e!81894))

(declare-fun res!60696 () Bool)

(assert (=> d!37553 (=> (not res!60696) (not e!81894))))

(assert (=> d!37553 (= res!60696 (not (contains!873 lt!64641 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!37553 (= lt!64641 e!81895)))

(declare-fun c!22832 () Bool)

(assert (=> d!37553 (= c!22832 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))))))

(assert (=> d!37553 (validMask!0 (mask!7010 (v!3106 (underlying!435 thiss!992))))))

(assert (=> d!37553 (= (getCurrentListMapNoExtraKeys!131 (_keys!4493 (v!3106 (underlying!435 thiss!992))) (_values!2747 (v!3106 (underlying!435 thiss!992))) (mask!7010 (v!3106 (underlying!435 thiss!992))) (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) (zeroValue!2629 (v!3106 (underlying!435 thiss!992))) (minValue!2629 (v!3106 (underlying!435 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2764 (v!3106 (underlying!435 thiss!992)))) lt!64641)))

(declare-fun b!125321 () Bool)

(assert (=> b!125321 (= e!81895 e!81897)))

(declare-fun c!22833 () Bool)

(assert (=> b!125321 (= c!22833 (validKeyInArray!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(declare-fun b!125322 () Bool)

(declare-fun e!81898 () Bool)

(declare-fun e!81896 () Bool)

(assert (=> b!125322 (= e!81898 e!81896)))

(assert (=> b!125322 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun res!60695 () Bool)

(assert (=> b!125322 (= res!60695 (contains!873 lt!64641 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!125322 (=> (not res!60695) (not e!81896))))

(declare-fun b!125323 () Bool)

(assert (=> b!125323 (= e!81893 (isEmpty!399 lt!64641))))

(declare-fun b!125324 () Bool)

(assert (=> b!125324 (= e!81894 e!81898)))

(declare-fun c!22831 () Bool)

(declare-fun e!81899 () Bool)

(assert (=> b!125324 (= c!22831 e!81899)))

(declare-fun res!60693 () Bool)

(assert (=> b!125324 (=> (not res!60693) (not e!81899))))

(assert (=> b!125324 (= res!60693 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun b!125325 () Bool)

(assert (=> b!125325 (= e!81899 (validKeyInArray!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!125325 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!125326 () Bool)

(assert (=> b!125326 (= e!81898 e!81893)))

(declare-fun c!22830 () Bool)

(assert (=> b!125326 (= c!22830 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun b!125327 () Bool)

(assert (=> b!125327 (= e!81897 call!13440)))

(declare-fun b!125328 () Bool)

(assert (=> b!125328 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))))))

(assert (=> b!125328 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2482 (_values!2747 (v!3106 (underlying!435 thiss!992))))))))

(assert (=> b!125328 (= e!81896 (= (apply!110 lt!64641 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!37553 c!22832) b!125319))

(assert (= (and d!37553 (not c!22832)) b!125321))

(assert (= (and b!125321 c!22833) b!125318))

(assert (= (and b!125321 (not c!22833)) b!125327))

(assert (= (or b!125318 b!125327) bm!13437))

(assert (= (and d!37553 res!60696) b!125317))

(assert (= (and b!125317 res!60694) b!125324))

(assert (= (and b!125324 res!60693) b!125325))

(assert (= (and b!125324 c!22831) b!125322))

(assert (= (and b!125324 (not c!22831)) b!125326))

(assert (= (and b!125322 res!60695) b!125328))

(assert (= (and b!125326 c!22830) b!125320))

(assert (= (and b!125326 (not c!22830)) b!125323))

(declare-fun b_lambda!5533 () Bool)

(assert (=> (not b_lambda!5533) (not b!125318)))

(assert (=> b!125318 t!6052))

(declare-fun b_and!7733 () Bool)

(assert (= b_and!7729 (and (=> t!6052 result!3817) b_and!7733)))

(assert (=> b!125318 t!6054))

(declare-fun b_and!7735 () Bool)

(assert (= b_and!7731 (and (=> t!6054 result!3821) b_and!7735)))

(declare-fun b_lambda!5535 () Bool)

(assert (=> (not b_lambda!5535) (not b!125328)))

(assert (=> b!125328 t!6052))

(declare-fun b_and!7737 () Bool)

(assert (= b_and!7733 (and (=> t!6052 result!3817) b_and!7737)))

(assert (=> b!125328 t!6054))

(declare-fun b_and!7739 () Bool)

(assert (= b_and!7735 (and (=> t!6054 result!3821) b_and!7739)))

(declare-fun m!145743 () Bool)

(assert (=> b!125322 m!145743))

(assert (=> b!125322 m!145743))

(declare-fun m!145745 () Bool)

(assert (=> b!125322 m!145745))

(assert (=> b!125328 m!145743))

(declare-fun m!145747 () Bool)

(assert (=> b!125328 m!145747))

(assert (=> b!125328 m!144679))

(declare-fun m!145749 () Bool)

(assert (=> b!125328 m!145749))

(assert (=> b!125328 m!145743))

(declare-fun m!145751 () Bool)

(assert (=> b!125328 m!145751))

(assert (=> b!125328 m!144679))

(assert (=> b!125328 m!145747))

(declare-fun m!145753 () Bool)

(assert (=> b!125318 m!145753))

(declare-fun m!145755 () Bool)

(assert (=> b!125318 m!145755))

(declare-fun m!145757 () Bool)

(assert (=> b!125318 m!145757))

(assert (=> b!125318 m!145747))

(assert (=> b!125318 m!144679))

(assert (=> b!125318 m!145749))

(assert (=> b!125318 m!145743))

(assert (=> b!125318 m!145757))

(declare-fun m!145759 () Bool)

(assert (=> b!125318 m!145759))

(assert (=> b!125318 m!144679))

(assert (=> b!125318 m!145747))

(declare-fun m!145761 () Bool)

(assert (=> b!125320 m!145761))

(assert (=> b!125325 m!145743))

(assert (=> b!125325 m!145743))

(declare-fun m!145763 () Bool)

(assert (=> b!125325 m!145763))

(declare-fun m!145765 () Bool)

(assert (=> b!125323 m!145765))

(declare-fun m!145767 () Bool)

(assert (=> d!37553 m!145767))

(assert (=> d!37553 m!144673))

(assert (=> bm!13437 m!145761))

(assert (=> b!125321 m!145743))

(assert (=> b!125321 m!145743))

(assert (=> b!125321 m!145763))

(declare-fun m!145769 () Bool)

(assert (=> b!125317 m!145769))

(assert (=> bm!13363 d!37553))

(declare-fun d!37555 () Bool)

(assert (=> d!37555 (= (apply!110 lt!64286 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)) (get!1448 (getValueByKey!165 (toList!856 lt!64286) (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))))

(declare-fun bs!5173 () Bool)

(assert (= bs!5173 d!37555))

(assert (=> bs!5173 m!145047))

(declare-fun m!145771 () Bool)

(assert (=> bs!5173 m!145771))

(assert (=> bs!5173 m!145771))

(declare-fun m!145773 () Bool)

(assert (=> bs!5173 m!145773))

(assert (=> b!124895 d!37555))

(declare-fun d!37557 () Bool)

(declare-fun c!22834 () Bool)

(assert (=> d!37557 (= c!22834 ((_ is ValueCellFull!1074) (select (arr!2219 (_values!2747 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!81900 () V!3427)

(assert (=> d!37557 (= (get!1445 (select (arr!2219 (_values!2747 newMap!16)) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)) e!81900)))

(declare-fun b!125329 () Bool)

(assert (=> b!125329 (= e!81900 (get!1446 (select (arr!2219 (_values!2747 newMap!16)) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!125330 () Bool)

(assert (=> b!125330 (= e!81900 (get!1447 (select (arr!2219 (_values!2747 newMap!16)) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37557 c!22834) b!125329))

(assert (= (and d!37557 (not c!22834)) b!125330))

(assert (=> b!125329 m!145059))

(assert (=> b!125329 m!145061))

(declare-fun m!145775 () Bool)

(assert (=> b!125329 m!145775))

(assert (=> b!125330 m!145059))

(assert (=> b!125330 m!145061))

(declare-fun m!145777 () Bool)

(assert (=> b!125330 m!145777))

(assert (=> b!124895 d!37557))

(declare-fun d!37559 () Bool)

(assert (=> d!37559 (= (inRange!0 (index!3271 lt!64496) (mask!7010 newMap!16)) (and (bvsge (index!3271 lt!64496) #b00000000000000000000000000000000) (bvslt (index!3271 lt!64496) (bvadd (mask!7010 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> b!125134 d!37559))

(declare-fun d!37561 () Bool)

(declare-fun res!60697 () Bool)

(declare-fun e!81901 () Bool)

(assert (=> d!37561 (=> (not res!60697) (not e!81901))))

(assert (=> d!37561 (= res!60697 (simpleValid!85 (_2!1291 lt!64460)))))

(assert (=> d!37561 (= (valid!499 (_2!1291 lt!64460)) e!81901)))

(declare-fun b!125331 () Bool)

(declare-fun res!60698 () Bool)

(assert (=> b!125331 (=> (not res!60698) (not e!81901))))

(assert (=> b!125331 (= res!60698 (= (arrayCountValidKeys!0 (_keys!4493 (_2!1291 lt!64460)) #b00000000000000000000000000000000 (size!2481 (_keys!4493 (_2!1291 lt!64460)))) (_size!577 (_2!1291 lt!64460))))))

(declare-fun b!125332 () Bool)

(declare-fun res!60699 () Bool)

(assert (=> b!125332 (=> (not res!60699) (not e!81901))))

(assert (=> b!125332 (= res!60699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4493 (_2!1291 lt!64460)) (mask!7010 (_2!1291 lt!64460))))))

(declare-fun b!125333 () Bool)

(assert (=> b!125333 (= e!81901 (arrayNoDuplicates!0 (_keys!4493 (_2!1291 lt!64460)) #b00000000000000000000000000000000 Nil!1714))))

(assert (= (and d!37561 res!60697) b!125331))

(assert (= (and b!125331 res!60698) b!125332))

(assert (= (and b!125332 res!60699) b!125333))

(declare-fun m!145779 () Bool)

(assert (=> d!37561 m!145779))

(declare-fun m!145781 () Bool)

(assert (=> b!125331 m!145781))

(declare-fun m!145783 () Bool)

(assert (=> b!125332 m!145783))

(declare-fun m!145785 () Bool)

(assert (=> b!125333 m!145785))

(assert (=> b!125083 d!37561))

(declare-fun b!125334 () Bool)

(declare-fun e!81902 () (_ BitVec 32))

(declare-fun call!13441 () (_ BitVec 32))

(assert (=> b!125334 (= e!81902 call!13441)))

(declare-fun b!125335 () Bool)

(declare-fun e!81903 () (_ BitVec 32))

(assert (=> b!125335 (= e!81903 #b00000000000000000000000000000000)))

(declare-fun b!125336 () Bool)

(assert (=> b!125336 (= e!81902 (bvadd #b00000000000000000000000000000001 call!13441))))

(declare-fun b!125337 () Bool)

(assert (=> b!125337 (= e!81903 e!81902)))

(declare-fun c!22836 () Bool)

(assert (=> b!125337 (= c!22836 (validKeyInArray!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun bm!13438 () Bool)

(assert (=> bm!13438 (= call!13441 (arrayCountValidKeys!0 (_keys!4493 (v!3106 (underlying!435 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun d!37563 () Bool)

(declare-fun lt!64645 () (_ BitVec 32))

(assert (=> d!37563 (and (bvsge lt!64645 #b00000000000000000000000000000000) (bvsle lt!64645 (bvsub (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (=> d!37563 (= lt!64645 e!81903)))

(declare-fun c!22835 () Bool)

(assert (=> d!37563 (= c!22835 (bvsge #b00000000000000000000000000000000 (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))))))

(assert (=> d!37563 (and (bvsle #b00000000000000000000000000000000 (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))))))

(assert (=> d!37563 (= (arrayCountValidKeys!0 (_keys!4493 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000000000 (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))) lt!64645)))

(assert (= (and d!37563 c!22835) b!125335))

(assert (= (and d!37563 (not c!22835)) b!125337))

(assert (= (and b!125337 c!22836) b!125336))

(assert (= (and b!125337 (not c!22836)) b!125334))

(assert (= (or b!125336 b!125334) bm!13438))

(declare-fun m!145787 () Bool)

(assert (=> b!125337 m!145787))

(assert (=> b!125337 m!145787))

(declare-fun m!145789 () Bool)

(assert (=> b!125337 m!145789))

(declare-fun m!145791 () Bool)

(assert (=> bm!13438 m!145791))

(assert (=> b!125127 d!37563))

(declare-fun d!37565 () Bool)

(assert (=> d!37565 (= (apply!110 lt!64293 lt!64283) (get!1448 (getValueByKey!165 (toList!856 lt!64293) lt!64283)))))

(declare-fun bs!5174 () Bool)

(assert (= bs!5174 d!37565))

(declare-fun m!145793 () Bool)

(assert (=> bs!5174 m!145793))

(assert (=> bs!5174 m!145793))

(declare-fun m!145795 () Bool)

(assert (=> bs!5174 m!145795))

(assert (=> b!124911 d!37565))

(declare-fun d!37567 () Bool)

(declare-fun e!81905 () Bool)

(assert (=> d!37567 e!81905))

(declare-fun res!60700 () Bool)

(assert (=> d!37567 (=> res!60700 e!81905)))

(declare-fun lt!64646 () Bool)

(assert (=> d!37567 (= res!60700 (not lt!64646))))

(declare-fun lt!64649 () Bool)

(assert (=> d!37567 (= lt!64646 lt!64649)))

(declare-fun lt!64647 () Unit!3878)

(declare-fun e!81904 () Unit!3878)

(assert (=> d!37567 (= lt!64647 e!81904)))

(declare-fun c!22837 () Bool)

(assert (=> d!37567 (= c!22837 lt!64649)))

(assert (=> d!37567 (= lt!64649 (containsKey!169 (toList!856 (+!164 lt!64279 (tuple2!2561 lt!64280 (zeroValue!2629 newMap!16)))) lt!64292))))

(assert (=> d!37567 (= (contains!873 (+!164 lt!64279 (tuple2!2561 lt!64280 (zeroValue!2629 newMap!16))) lt!64292) lt!64646)))

(declare-fun b!125338 () Bool)

(declare-fun lt!64648 () Unit!3878)

(assert (=> b!125338 (= e!81904 lt!64648)))

(assert (=> b!125338 (= lt!64648 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 (+!164 lt!64279 (tuple2!2561 lt!64280 (zeroValue!2629 newMap!16)))) lt!64292))))

(assert (=> b!125338 (isDefined!119 (getValueByKey!165 (toList!856 (+!164 lt!64279 (tuple2!2561 lt!64280 (zeroValue!2629 newMap!16)))) lt!64292))))

(declare-fun b!125339 () Bool)

(declare-fun Unit!3906 () Unit!3878)

(assert (=> b!125339 (= e!81904 Unit!3906)))

(declare-fun b!125340 () Bool)

(assert (=> b!125340 (= e!81905 (isDefined!119 (getValueByKey!165 (toList!856 (+!164 lt!64279 (tuple2!2561 lt!64280 (zeroValue!2629 newMap!16)))) lt!64292)))))

(assert (= (and d!37567 c!22837) b!125338))

(assert (= (and d!37567 (not c!22837)) b!125339))

(assert (= (and d!37567 (not res!60700)) b!125340))

(declare-fun m!145797 () Bool)

(assert (=> d!37567 m!145797))

(declare-fun m!145799 () Bool)

(assert (=> b!125338 m!145799))

(declare-fun m!145801 () Bool)

(assert (=> b!125338 m!145801))

(assert (=> b!125338 m!145801))

(declare-fun m!145803 () Bool)

(assert (=> b!125338 m!145803))

(assert (=> b!125340 m!145801))

(assert (=> b!125340 m!145801))

(assert (=> b!125340 m!145803))

(assert (=> b!124911 d!37567))

(declare-fun d!37569 () Bool)

(assert (=> d!37569 (= (apply!110 (+!164 lt!64297 (tuple2!2561 lt!64288 (minValue!2629 newMap!16))) lt!64282) (get!1448 (getValueByKey!165 (toList!856 (+!164 lt!64297 (tuple2!2561 lt!64288 (minValue!2629 newMap!16)))) lt!64282)))))

(declare-fun bs!5175 () Bool)

(assert (= bs!5175 d!37569))

(declare-fun m!145805 () Bool)

(assert (=> bs!5175 m!145805))

(assert (=> bs!5175 m!145805))

(declare-fun m!145807 () Bool)

(assert (=> bs!5175 m!145807))

(assert (=> b!124911 d!37569))

(declare-fun d!37571 () Bool)

(declare-fun e!81906 () Bool)

(assert (=> d!37571 e!81906))

(declare-fun res!60701 () Bool)

(assert (=> d!37571 (=> (not res!60701) (not e!81906))))

(declare-fun lt!64650 () ListLongMap!1681)

(assert (=> d!37571 (= res!60701 (contains!873 lt!64650 (_1!1290 (tuple2!2561 lt!64280 (zeroValue!2629 newMap!16)))))))

(declare-fun lt!64652 () List!1716)

(assert (=> d!37571 (= lt!64650 (ListLongMap!1682 lt!64652))))

(declare-fun lt!64653 () Unit!3878)

(declare-fun lt!64651 () Unit!3878)

(assert (=> d!37571 (= lt!64653 lt!64651)))

(assert (=> d!37571 (= (getValueByKey!165 lt!64652 (_1!1290 (tuple2!2561 lt!64280 (zeroValue!2629 newMap!16)))) (Some!170 (_2!1290 (tuple2!2561 lt!64280 (zeroValue!2629 newMap!16)))))))

(assert (=> d!37571 (= lt!64651 (lemmaContainsTupThenGetReturnValue!82 lt!64652 (_1!1290 (tuple2!2561 lt!64280 (zeroValue!2629 newMap!16))) (_2!1290 (tuple2!2561 lt!64280 (zeroValue!2629 newMap!16)))))))

(assert (=> d!37571 (= lt!64652 (insertStrictlySorted!84 (toList!856 lt!64279) (_1!1290 (tuple2!2561 lt!64280 (zeroValue!2629 newMap!16))) (_2!1290 (tuple2!2561 lt!64280 (zeroValue!2629 newMap!16)))))))

(assert (=> d!37571 (= (+!164 lt!64279 (tuple2!2561 lt!64280 (zeroValue!2629 newMap!16))) lt!64650)))

(declare-fun b!125341 () Bool)

(declare-fun res!60702 () Bool)

(assert (=> b!125341 (=> (not res!60702) (not e!81906))))

(assert (=> b!125341 (= res!60702 (= (getValueByKey!165 (toList!856 lt!64650) (_1!1290 (tuple2!2561 lt!64280 (zeroValue!2629 newMap!16)))) (Some!170 (_2!1290 (tuple2!2561 lt!64280 (zeroValue!2629 newMap!16))))))))

(declare-fun b!125342 () Bool)

(assert (=> b!125342 (= e!81906 (contains!874 (toList!856 lt!64650) (tuple2!2561 lt!64280 (zeroValue!2629 newMap!16))))))

(assert (= (and d!37571 res!60701) b!125341))

(assert (= (and b!125341 res!60702) b!125342))

(declare-fun m!145809 () Bool)

(assert (=> d!37571 m!145809))

(declare-fun m!145811 () Bool)

(assert (=> d!37571 m!145811))

(declare-fun m!145813 () Bool)

(assert (=> d!37571 m!145813))

(declare-fun m!145815 () Bool)

(assert (=> d!37571 m!145815))

(declare-fun m!145817 () Bool)

(assert (=> b!125341 m!145817))

(declare-fun m!145819 () Bool)

(assert (=> b!125342 m!145819))

(assert (=> b!124911 d!37571))

(declare-fun d!37573 () Bool)

(assert (=> d!37573 (= (apply!110 lt!64297 lt!64282) (get!1448 (getValueByKey!165 (toList!856 lt!64297) lt!64282)))))

(declare-fun bs!5176 () Bool)

(assert (= bs!5176 d!37573))

(declare-fun m!145821 () Bool)

(assert (=> bs!5176 m!145821))

(assert (=> bs!5176 m!145821))

(declare-fun m!145823 () Bool)

(assert (=> bs!5176 m!145823))

(assert (=> b!124911 d!37573))

(declare-fun d!37575 () Bool)

(assert (=> d!37575 (contains!873 (+!164 lt!64279 (tuple2!2561 lt!64280 (zeroValue!2629 newMap!16))) lt!64292)))

(declare-fun lt!64654 () Unit!3878)

(assert (=> d!37575 (= lt!64654 (choose!756 lt!64279 lt!64280 (zeroValue!2629 newMap!16) lt!64292))))

(assert (=> d!37575 (contains!873 lt!64279 lt!64292)))

(assert (=> d!37575 (= (addStillContains!86 lt!64279 lt!64280 (zeroValue!2629 newMap!16) lt!64292) lt!64654)))

(declare-fun bs!5177 () Bool)

(assert (= bs!5177 d!37575))

(assert (=> bs!5177 m!145071))

(assert (=> bs!5177 m!145071))

(assert (=> bs!5177 m!145081))

(declare-fun m!145825 () Bool)

(assert (=> bs!5177 m!145825))

(declare-fun m!145827 () Bool)

(assert (=> bs!5177 m!145827))

(assert (=> b!124911 d!37575))

(declare-fun d!37577 () Bool)

(declare-fun e!81907 () Bool)

(assert (=> d!37577 e!81907))

(declare-fun res!60703 () Bool)

(assert (=> d!37577 (=> (not res!60703) (not e!81907))))

(declare-fun lt!64655 () ListLongMap!1681)

(assert (=> d!37577 (= res!60703 (contains!873 lt!64655 (_1!1290 (tuple2!2561 lt!64284 (minValue!2629 newMap!16)))))))

(declare-fun lt!64657 () List!1716)

(assert (=> d!37577 (= lt!64655 (ListLongMap!1682 lt!64657))))

(declare-fun lt!64658 () Unit!3878)

(declare-fun lt!64656 () Unit!3878)

(assert (=> d!37577 (= lt!64658 lt!64656)))

(assert (=> d!37577 (= (getValueByKey!165 lt!64657 (_1!1290 (tuple2!2561 lt!64284 (minValue!2629 newMap!16)))) (Some!170 (_2!1290 (tuple2!2561 lt!64284 (minValue!2629 newMap!16)))))))

(assert (=> d!37577 (= lt!64656 (lemmaContainsTupThenGetReturnValue!82 lt!64657 (_1!1290 (tuple2!2561 lt!64284 (minValue!2629 newMap!16))) (_2!1290 (tuple2!2561 lt!64284 (minValue!2629 newMap!16)))))))

(assert (=> d!37577 (= lt!64657 (insertStrictlySorted!84 (toList!856 lt!64293) (_1!1290 (tuple2!2561 lt!64284 (minValue!2629 newMap!16))) (_2!1290 (tuple2!2561 lt!64284 (minValue!2629 newMap!16)))))))

(assert (=> d!37577 (= (+!164 lt!64293 (tuple2!2561 lt!64284 (minValue!2629 newMap!16))) lt!64655)))

(declare-fun b!125343 () Bool)

(declare-fun res!60704 () Bool)

(assert (=> b!125343 (=> (not res!60704) (not e!81907))))

(assert (=> b!125343 (= res!60704 (= (getValueByKey!165 (toList!856 lt!64655) (_1!1290 (tuple2!2561 lt!64284 (minValue!2629 newMap!16)))) (Some!170 (_2!1290 (tuple2!2561 lt!64284 (minValue!2629 newMap!16))))))))

(declare-fun b!125344 () Bool)

(assert (=> b!125344 (= e!81907 (contains!874 (toList!856 lt!64655) (tuple2!2561 lt!64284 (minValue!2629 newMap!16))))))

(assert (= (and d!37577 res!60703) b!125343))

(assert (= (and b!125343 res!60704) b!125344))

(declare-fun m!145829 () Bool)

(assert (=> d!37577 m!145829))

(declare-fun m!145831 () Bool)

(assert (=> d!37577 m!145831))

(declare-fun m!145833 () Bool)

(assert (=> d!37577 m!145833))

(declare-fun m!145835 () Bool)

(assert (=> d!37577 m!145835))

(declare-fun m!145837 () Bool)

(assert (=> b!125343 m!145837))

(declare-fun m!145839 () Bool)

(assert (=> b!125344 m!145839))

(assert (=> b!124911 d!37577))

(declare-fun d!37579 () Bool)

(assert (=> d!37579 (= (apply!110 (+!164 lt!64285 (tuple2!2561 lt!64294 (zeroValue!2629 newMap!16))) lt!64281) (get!1448 (getValueByKey!165 (toList!856 (+!164 lt!64285 (tuple2!2561 lt!64294 (zeroValue!2629 newMap!16)))) lt!64281)))))

(declare-fun bs!5178 () Bool)

(assert (= bs!5178 d!37579))

(declare-fun m!145841 () Bool)

(assert (=> bs!5178 m!145841))

(assert (=> bs!5178 m!145841))

(declare-fun m!145843 () Bool)

(assert (=> bs!5178 m!145843))

(assert (=> b!124911 d!37579))

(declare-fun d!37581 () Bool)

(assert (=> d!37581 (= (apply!110 lt!64285 lt!64281) (get!1448 (getValueByKey!165 (toList!856 lt!64285) lt!64281)))))

(declare-fun bs!5179 () Bool)

(assert (= bs!5179 d!37581))

(declare-fun m!145845 () Bool)

(assert (=> bs!5179 m!145845))

(assert (=> bs!5179 m!145845))

(declare-fun m!145847 () Bool)

(assert (=> bs!5179 m!145847))

(assert (=> b!124911 d!37581))

(declare-fun b!125345 () Bool)

(declare-fun res!60706 () Bool)

(declare-fun e!81909 () Bool)

(assert (=> b!125345 (=> (not res!60706) (not e!81909))))

(declare-fun lt!64662 () ListLongMap!1681)

(assert (=> b!125345 (= res!60706 (not (contains!873 lt!64662 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!125346 () Bool)

(declare-fun lt!64661 () Unit!3878)

(declare-fun lt!64659 () Unit!3878)

(assert (=> b!125346 (= lt!64661 lt!64659)))

(declare-fun lt!64665 () ListLongMap!1681)

(declare-fun lt!64663 () (_ BitVec 64))

(declare-fun lt!64664 () V!3427)

(declare-fun lt!64660 () (_ BitVec 64))

(assert (=> b!125346 (not (contains!873 (+!164 lt!64665 (tuple2!2561 lt!64660 lt!64664)) lt!64663))))

(assert (=> b!125346 (= lt!64659 (addStillNotContains!57 lt!64665 lt!64660 lt!64664 lt!64663))))

(assert (=> b!125346 (= lt!64663 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!125346 (= lt!64664 (get!1445 (select (arr!2219 (_values!2747 newMap!16)) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!125346 (= lt!64660 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun call!13442 () ListLongMap!1681)

(assert (=> b!125346 (= lt!64665 call!13442)))

(declare-fun e!81912 () ListLongMap!1681)

(assert (=> b!125346 (= e!81912 (+!164 call!13442 (tuple2!2561 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000) (get!1445 (select (arr!2219 (_values!2747 newMap!16)) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!13439 () Bool)

(assert (=> bm!13439 (= call!13442 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!2764 newMap!16)))))

(declare-fun b!125347 () Bool)

(declare-fun e!81910 () ListLongMap!1681)

(assert (=> b!125347 (= e!81910 (ListLongMap!1682 Nil!1713))))

(declare-fun b!125348 () Bool)

(declare-fun e!81908 () Bool)

(assert (=> b!125348 (= e!81908 (= lt!64662 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!2764 newMap!16))))))

(declare-fun d!37583 () Bool)

(assert (=> d!37583 e!81909))

(declare-fun res!60708 () Bool)

(assert (=> d!37583 (=> (not res!60708) (not e!81909))))

(assert (=> d!37583 (= res!60708 (not (contains!873 lt!64662 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!37583 (= lt!64662 e!81910)))

(declare-fun c!22840 () Bool)

(assert (=> d!37583 (= c!22840 (bvsge #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(assert (=> d!37583 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37583 (= (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) lt!64662)))

(declare-fun b!125349 () Bool)

(assert (=> b!125349 (= e!81910 e!81912)))

(declare-fun c!22841 () Bool)

(assert (=> b!125349 (= c!22841 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!125350 () Bool)

(declare-fun e!81913 () Bool)

(declare-fun e!81911 () Bool)

(assert (=> b!125350 (= e!81913 e!81911)))

(assert (=> b!125350 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun res!60707 () Bool)

(assert (=> b!125350 (= res!60707 (contains!873 lt!64662 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!125350 (=> (not res!60707) (not e!81911))))

(declare-fun b!125351 () Bool)

(assert (=> b!125351 (= e!81908 (isEmpty!399 lt!64662))))

(declare-fun b!125352 () Bool)

(assert (=> b!125352 (= e!81909 e!81913)))

(declare-fun c!22839 () Bool)

(declare-fun e!81914 () Bool)

(assert (=> b!125352 (= c!22839 e!81914)))

(declare-fun res!60705 () Bool)

(assert (=> b!125352 (=> (not res!60705) (not e!81914))))

(assert (=> b!125352 (= res!60705 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun b!125353 () Bool)

(assert (=> b!125353 (= e!81914 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!125353 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!125354 () Bool)

(assert (=> b!125354 (= e!81913 e!81908)))

(declare-fun c!22838 () Bool)

(assert (=> b!125354 (= c!22838 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun b!125355 () Bool)

(assert (=> b!125355 (= e!81912 call!13442)))

(declare-fun b!125356 () Bool)

(assert (=> b!125356 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(assert (=> b!125356 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2482 (_values!2747 newMap!16))))))

(assert (=> b!125356 (= e!81911 (= (apply!110 lt!64662 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)) (get!1445 (select (arr!2219 (_values!2747 newMap!16)) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!37583 c!22840) b!125347))

(assert (= (and d!37583 (not c!22840)) b!125349))

(assert (= (and b!125349 c!22841) b!125346))

(assert (= (and b!125349 (not c!22841)) b!125355))

(assert (= (or b!125346 b!125355) bm!13439))

(assert (= (and d!37583 res!60708) b!125345))

(assert (= (and b!125345 res!60706) b!125352))

(assert (= (and b!125352 res!60705) b!125353))

(assert (= (and b!125352 c!22839) b!125350))

(assert (= (and b!125352 (not c!22839)) b!125354))

(assert (= (and b!125350 res!60707) b!125356))

(assert (= (and b!125354 c!22838) b!125348))

(assert (= (and b!125354 (not c!22838)) b!125351))

(declare-fun b_lambda!5537 () Bool)

(assert (=> (not b_lambda!5537) (not b!125346)))

(assert (=> b!125346 t!6062))

(declare-fun b_and!7741 () Bool)

(assert (= b_and!7737 (and (=> t!6062 result!3831) b_and!7741)))

(assert (=> b!125346 t!6064))

(declare-fun b_and!7743 () Bool)

(assert (= b_and!7739 (and (=> t!6064 result!3833) b_and!7743)))

(declare-fun b_lambda!5539 () Bool)

(assert (=> (not b_lambda!5539) (not b!125356)))

(assert (=> b!125356 t!6062))

(declare-fun b_and!7745 () Bool)

(assert (= b_and!7741 (and (=> t!6062 result!3831) b_and!7745)))

(assert (=> b!125356 t!6064))

(declare-fun b_and!7747 () Bool)

(assert (= b_and!7743 (and (=> t!6064 result!3833) b_and!7747)))

(assert (=> b!125350 m!145047))

(assert (=> b!125350 m!145047))

(declare-fun m!145849 () Bool)

(assert (=> b!125350 m!145849))

(assert (=> b!125356 m!145047))

(assert (=> b!125356 m!145059))

(assert (=> b!125356 m!145061))

(assert (=> b!125356 m!145063))

(assert (=> b!125356 m!145047))

(declare-fun m!145851 () Bool)

(assert (=> b!125356 m!145851))

(assert (=> b!125356 m!145061))

(assert (=> b!125356 m!145059))

(declare-fun m!145853 () Bool)

(assert (=> b!125346 m!145853))

(declare-fun m!145855 () Bool)

(assert (=> b!125346 m!145855))

(declare-fun m!145857 () Bool)

(assert (=> b!125346 m!145857))

(assert (=> b!125346 m!145059))

(assert (=> b!125346 m!145061))

(assert (=> b!125346 m!145063))

(assert (=> b!125346 m!145047))

(assert (=> b!125346 m!145857))

(declare-fun m!145859 () Bool)

(assert (=> b!125346 m!145859))

(assert (=> b!125346 m!145061))

(assert (=> b!125346 m!145059))

(declare-fun m!145861 () Bool)

(assert (=> b!125348 m!145861))

(assert (=> b!125353 m!145047))

(assert (=> b!125353 m!145047))

(assert (=> b!125353 m!145049))

(declare-fun m!145863 () Bool)

(assert (=> b!125351 m!145863))

(declare-fun m!145865 () Bool)

(assert (=> d!37583 m!145865))

(assert (=> d!37583 m!145009))

(assert (=> bm!13439 m!145861))

(assert (=> b!125349 m!145047))

(assert (=> b!125349 m!145047))

(assert (=> b!125349 m!145049))

(declare-fun m!145867 () Bool)

(assert (=> b!125345 m!145867))

(assert (=> b!124911 d!37583))

(declare-fun d!37585 () Bool)

(assert (=> d!37585 (= (apply!110 (+!164 lt!64285 (tuple2!2561 lt!64294 (zeroValue!2629 newMap!16))) lt!64281) (apply!110 lt!64285 lt!64281))))

(declare-fun lt!64666 () Unit!3878)

(assert (=> d!37585 (= lt!64666 (choose!755 lt!64285 lt!64294 (zeroValue!2629 newMap!16) lt!64281))))

(declare-fun e!81915 () Bool)

(assert (=> d!37585 e!81915))

(declare-fun res!60709 () Bool)

(assert (=> d!37585 (=> (not res!60709) (not e!81915))))

(assert (=> d!37585 (= res!60709 (contains!873 lt!64285 lt!64281))))

(assert (=> d!37585 (= (addApplyDifferent!86 lt!64285 lt!64294 (zeroValue!2629 newMap!16) lt!64281) lt!64666)))

(declare-fun b!125357 () Bool)

(assert (=> b!125357 (= e!81915 (not (= lt!64281 lt!64294)))))

(assert (= (and d!37585 res!60709) b!125357))

(declare-fun m!145869 () Bool)

(assert (=> d!37585 m!145869))

(declare-fun m!145871 () Bool)

(assert (=> d!37585 m!145871))

(assert (=> d!37585 m!145079))

(assert (=> d!37585 m!145083))

(assert (=> d!37585 m!145079))

(assert (=> d!37585 m!145077))

(assert (=> b!124911 d!37585))

(declare-fun d!37587 () Bool)

(assert (=> d!37587 (= (apply!110 (+!164 lt!64297 (tuple2!2561 lt!64288 (minValue!2629 newMap!16))) lt!64282) (apply!110 lt!64297 lt!64282))))

(declare-fun lt!64667 () Unit!3878)

(assert (=> d!37587 (= lt!64667 (choose!755 lt!64297 lt!64288 (minValue!2629 newMap!16) lt!64282))))

(declare-fun e!81916 () Bool)

(assert (=> d!37587 e!81916))

(declare-fun res!60710 () Bool)

(assert (=> d!37587 (=> (not res!60710) (not e!81916))))

(assert (=> d!37587 (= res!60710 (contains!873 lt!64297 lt!64282))))

(assert (=> d!37587 (= (addApplyDifferent!86 lt!64297 lt!64288 (minValue!2629 newMap!16) lt!64282) lt!64667)))

(declare-fun b!125358 () Bool)

(assert (=> b!125358 (= e!81916 (not (= lt!64282 lt!64288)))))

(assert (= (and d!37587 res!60710) b!125358))

(declare-fun m!145873 () Bool)

(assert (=> d!37587 m!145873))

(declare-fun m!145875 () Bool)

(assert (=> d!37587 m!145875))

(assert (=> d!37587 m!145073))

(assert (=> d!37587 m!145075))

(assert (=> d!37587 m!145073))

(assert (=> d!37587 m!145087))

(assert (=> b!124911 d!37587))

(declare-fun d!37589 () Bool)

(declare-fun e!81917 () Bool)

(assert (=> d!37589 e!81917))

(declare-fun res!60711 () Bool)

(assert (=> d!37589 (=> (not res!60711) (not e!81917))))

(declare-fun lt!64668 () ListLongMap!1681)

(assert (=> d!37589 (= res!60711 (contains!873 lt!64668 (_1!1290 (tuple2!2561 lt!64288 (minValue!2629 newMap!16)))))))

(declare-fun lt!64670 () List!1716)

(assert (=> d!37589 (= lt!64668 (ListLongMap!1682 lt!64670))))

(declare-fun lt!64671 () Unit!3878)

(declare-fun lt!64669 () Unit!3878)

(assert (=> d!37589 (= lt!64671 lt!64669)))

(assert (=> d!37589 (= (getValueByKey!165 lt!64670 (_1!1290 (tuple2!2561 lt!64288 (minValue!2629 newMap!16)))) (Some!170 (_2!1290 (tuple2!2561 lt!64288 (minValue!2629 newMap!16)))))))

(assert (=> d!37589 (= lt!64669 (lemmaContainsTupThenGetReturnValue!82 lt!64670 (_1!1290 (tuple2!2561 lt!64288 (minValue!2629 newMap!16))) (_2!1290 (tuple2!2561 lt!64288 (minValue!2629 newMap!16)))))))

(assert (=> d!37589 (= lt!64670 (insertStrictlySorted!84 (toList!856 lt!64297) (_1!1290 (tuple2!2561 lt!64288 (minValue!2629 newMap!16))) (_2!1290 (tuple2!2561 lt!64288 (minValue!2629 newMap!16)))))))

(assert (=> d!37589 (= (+!164 lt!64297 (tuple2!2561 lt!64288 (minValue!2629 newMap!16))) lt!64668)))

(declare-fun b!125359 () Bool)

(declare-fun res!60712 () Bool)

(assert (=> b!125359 (=> (not res!60712) (not e!81917))))

(assert (=> b!125359 (= res!60712 (= (getValueByKey!165 (toList!856 lt!64668) (_1!1290 (tuple2!2561 lt!64288 (minValue!2629 newMap!16)))) (Some!170 (_2!1290 (tuple2!2561 lt!64288 (minValue!2629 newMap!16))))))))

(declare-fun b!125360 () Bool)

(assert (=> b!125360 (= e!81917 (contains!874 (toList!856 lt!64668) (tuple2!2561 lt!64288 (minValue!2629 newMap!16))))))

(assert (= (and d!37589 res!60711) b!125359))

(assert (= (and b!125359 res!60712) b!125360))

(declare-fun m!145877 () Bool)

(assert (=> d!37589 m!145877))

(declare-fun m!145879 () Bool)

(assert (=> d!37589 m!145879))

(declare-fun m!145881 () Bool)

(assert (=> d!37589 m!145881))

(declare-fun m!145883 () Bool)

(assert (=> d!37589 m!145883))

(declare-fun m!145885 () Bool)

(assert (=> b!125359 m!145885))

(declare-fun m!145887 () Bool)

(assert (=> b!125360 m!145887))

(assert (=> b!124911 d!37589))

(declare-fun d!37591 () Bool)

(declare-fun e!81918 () Bool)

(assert (=> d!37591 e!81918))

(declare-fun res!60713 () Bool)

(assert (=> d!37591 (=> (not res!60713) (not e!81918))))

(declare-fun lt!64672 () ListLongMap!1681)

(assert (=> d!37591 (= res!60713 (contains!873 lt!64672 (_1!1290 (tuple2!2561 lt!64294 (zeroValue!2629 newMap!16)))))))

(declare-fun lt!64674 () List!1716)

(assert (=> d!37591 (= lt!64672 (ListLongMap!1682 lt!64674))))

(declare-fun lt!64675 () Unit!3878)

(declare-fun lt!64673 () Unit!3878)

(assert (=> d!37591 (= lt!64675 lt!64673)))

(assert (=> d!37591 (= (getValueByKey!165 lt!64674 (_1!1290 (tuple2!2561 lt!64294 (zeroValue!2629 newMap!16)))) (Some!170 (_2!1290 (tuple2!2561 lt!64294 (zeroValue!2629 newMap!16)))))))

(assert (=> d!37591 (= lt!64673 (lemmaContainsTupThenGetReturnValue!82 lt!64674 (_1!1290 (tuple2!2561 lt!64294 (zeroValue!2629 newMap!16))) (_2!1290 (tuple2!2561 lt!64294 (zeroValue!2629 newMap!16)))))))

(assert (=> d!37591 (= lt!64674 (insertStrictlySorted!84 (toList!856 lt!64285) (_1!1290 (tuple2!2561 lt!64294 (zeroValue!2629 newMap!16))) (_2!1290 (tuple2!2561 lt!64294 (zeroValue!2629 newMap!16)))))))

(assert (=> d!37591 (= (+!164 lt!64285 (tuple2!2561 lt!64294 (zeroValue!2629 newMap!16))) lt!64672)))

(declare-fun b!125361 () Bool)

(declare-fun res!60714 () Bool)

(assert (=> b!125361 (=> (not res!60714) (not e!81918))))

(assert (=> b!125361 (= res!60714 (= (getValueByKey!165 (toList!856 lt!64672) (_1!1290 (tuple2!2561 lt!64294 (zeroValue!2629 newMap!16)))) (Some!170 (_2!1290 (tuple2!2561 lt!64294 (zeroValue!2629 newMap!16))))))))

(declare-fun b!125362 () Bool)

(assert (=> b!125362 (= e!81918 (contains!874 (toList!856 lt!64672) (tuple2!2561 lt!64294 (zeroValue!2629 newMap!16))))))

(assert (= (and d!37591 res!60713) b!125361))

(assert (= (and b!125361 res!60714) b!125362))

(declare-fun m!145889 () Bool)

(assert (=> d!37591 m!145889))

(declare-fun m!145891 () Bool)

(assert (=> d!37591 m!145891))

(declare-fun m!145893 () Bool)

(assert (=> d!37591 m!145893))

(declare-fun m!145895 () Bool)

(assert (=> d!37591 m!145895))

(declare-fun m!145897 () Bool)

(assert (=> b!125361 m!145897))

(declare-fun m!145899 () Bool)

(assert (=> b!125362 m!145899))

(assert (=> b!124911 d!37591))

(declare-fun d!37593 () Bool)

(assert (=> d!37593 (= (apply!110 (+!164 lt!64293 (tuple2!2561 lt!64284 (minValue!2629 newMap!16))) lt!64283) (get!1448 (getValueByKey!165 (toList!856 (+!164 lt!64293 (tuple2!2561 lt!64284 (minValue!2629 newMap!16)))) lt!64283)))))

(declare-fun bs!5180 () Bool)

(assert (= bs!5180 d!37593))

(declare-fun m!145901 () Bool)

(assert (=> bs!5180 m!145901))

(assert (=> bs!5180 m!145901))

(declare-fun m!145903 () Bool)

(assert (=> bs!5180 m!145903))

(assert (=> b!124911 d!37593))

(declare-fun d!37595 () Bool)

(assert (=> d!37595 (= (apply!110 (+!164 lt!64293 (tuple2!2561 lt!64284 (minValue!2629 newMap!16))) lt!64283) (apply!110 lt!64293 lt!64283))))

(declare-fun lt!64676 () Unit!3878)

(assert (=> d!37595 (= lt!64676 (choose!755 lt!64293 lt!64284 (minValue!2629 newMap!16) lt!64283))))

(declare-fun e!81919 () Bool)

(assert (=> d!37595 e!81919))

(declare-fun res!60715 () Bool)

(assert (=> d!37595 (=> (not res!60715) (not e!81919))))

(assert (=> d!37595 (= res!60715 (contains!873 lt!64293 lt!64283))))

(assert (=> d!37595 (= (addApplyDifferent!86 lt!64293 lt!64284 (minValue!2629 newMap!16) lt!64283) lt!64676)))

(declare-fun b!125363 () Bool)

(assert (=> b!125363 (= e!81919 (not (= lt!64283 lt!64284)))))

(assert (= (and d!37595 res!60715) b!125363))

(declare-fun m!145905 () Bool)

(assert (=> d!37595 m!145905))

(declare-fun m!145907 () Bool)

(assert (=> d!37595 m!145907))

(assert (=> d!37595 m!145069))

(assert (=> d!37595 m!145093))

(assert (=> d!37595 m!145069))

(assert (=> d!37595 m!145095))

(assert (=> b!124911 d!37595))

(declare-fun d!37597 () Bool)

(assert (=> d!37597 (isDefined!119 (getValueByKey!165 (toList!856 lt!64187) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!64677 () Unit!3878)

(assert (=> d!37597 (= lt!64677 (choose!763 (toList!856 lt!64187) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!81920 () Bool)

(assert (=> d!37597 e!81920))

(declare-fun res!60716 () Bool)

(assert (=> d!37597 (=> (not res!60716) (not e!81920))))

(assert (=> d!37597 (= res!60716 (isStrictlySorted!311 (toList!856 lt!64187)))))

(assert (=> d!37597 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64187) #b0000000000000000000000000000000000000000000000000000000000000000) lt!64677)))

(declare-fun b!125364 () Bool)

(assert (=> b!125364 (= e!81920 (containsKey!169 (toList!856 lt!64187) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!37597 res!60716) b!125364))

(assert (=> d!37597 m!145171))

(assert (=> d!37597 m!145171))

(assert (=> d!37597 m!145269))

(declare-fun m!145909 () Bool)

(assert (=> d!37597 m!145909))

(declare-fun m!145911 () Bool)

(assert (=> d!37597 m!145911))

(assert (=> b!125364 m!145265))

(assert (=> b!125043 d!37597))

(declare-fun d!37599 () Bool)

(assert (=> d!37599 (= (isDefined!119 (getValueByKey!165 (toList!856 lt!64187) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!398 (getValueByKey!165 (toList!856 lt!64187) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!5181 () Bool)

(assert (= bs!5181 d!37599))

(assert (=> bs!5181 m!145171))

(declare-fun m!145913 () Bool)

(assert (=> bs!5181 m!145913))

(assert (=> b!125043 d!37599))

(declare-fun b!125365 () Bool)

(declare-fun e!81921 () Option!171)

(assert (=> b!125365 (= e!81921 (Some!170 (_2!1290 (h!2313 (toList!856 lt!64187)))))))

(declare-fun b!125368 () Bool)

(declare-fun e!81922 () Option!171)

(assert (=> b!125368 (= e!81922 None!169)))

(declare-fun b!125366 () Bool)

(assert (=> b!125366 (= e!81921 e!81922)))

(declare-fun c!22843 () Bool)

(assert (=> b!125366 (= c!22843 (and ((_ is Cons!1712) (toList!856 lt!64187)) (not (= (_1!1290 (h!2313 (toList!856 lt!64187))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!125367 () Bool)

(assert (=> b!125367 (= e!81922 (getValueByKey!165 (t!6055 (toList!856 lt!64187)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!37601 () Bool)

(declare-fun c!22842 () Bool)

(assert (=> d!37601 (= c!22842 (and ((_ is Cons!1712) (toList!856 lt!64187)) (= (_1!1290 (h!2313 (toList!856 lt!64187))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!37601 (= (getValueByKey!165 (toList!856 lt!64187) #b0000000000000000000000000000000000000000000000000000000000000000) e!81921)))

(assert (= (and d!37601 c!22842) b!125365))

(assert (= (and d!37601 (not c!22842)) b!125366))

(assert (= (and b!125366 c!22843) b!125367))

(assert (= (and b!125366 (not c!22843)) b!125368))

(declare-fun m!145915 () Bool)

(assert (=> b!125367 m!145915))

(assert (=> b!125043 d!37601))

(declare-fun d!37603 () Bool)

(assert (=> d!37603 (= (isDefined!119 (getValueByKey!165 (toList!856 e!81515) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))) (not (isEmpty!398 (getValueByKey!165 (toList!856 e!81515) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))))

(declare-fun bs!5182 () Bool)

(assert (= bs!5182 d!37603))

(assert (=> bs!5182 m!145383))

(declare-fun m!145917 () Bool)

(assert (=> bs!5182 m!145917))

(assert (=> b!125120 d!37603))

(declare-fun b!125369 () Bool)

(declare-fun e!81923 () Option!171)

(assert (=> b!125369 (= e!81923 (Some!170 (_2!1290 (h!2313 (toList!856 e!81515)))))))

(declare-fun b!125372 () Bool)

(declare-fun e!81924 () Option!171)

(assert (=> b!125372 (= e!81924 None!169)))

(declare-fun b!125370 () Bool)

(assert (=> b!125370 (= e!81923 e!81924)))

(declare-fun c!22845 () Bool)

(assert (=> b!125370 (= c!22845 (and ((_ is Cons!1712) (toList!856 e!81515)) (not (= (_1!1290 (h!2313 (toList!856 e!81515))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))))

(declare-fun b!125371 () Bool)

(assert (=> b!125371 (= e!81924 (getValueByKey!165 (t!6055 (toList!856 e!81515)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun d!37605 () Bool)

(declare-fun c!22844 () Bool)

(assert (=> d!37605 (= c!22844 (and ((_ is Cons!1712) (toList!856 e!81515)) (= (_1!1290 (h!2313 (toList!856 e!81515))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))))))

(assert (=> d!37605 (= (getValueByKey!165 (toList!856 e!81515) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) e!81923)))

(assert (= (and d!37605 c!22844) b!125369))

(assert (= (and d!37605 (not c!22844)) b!125370))

(assert (= (and b!125370 c!22845) b!125371))

(assert (= (and b!125370 (not c!22845)) b!125372))

(assert (=> b!125371 m!144661))

(declare-fun m!145919 () Bool)

(assert (=> b!125371 m!145919))

(assert (=> b!125120 d!37605))

(declare-fun d!37607 () Bool)

(declare-fun e!81926 () Bool)

(assert (=> d!37607 e!81926))

(declare-fun res!60717 () Bool)

(assert (=> d!37607 (=> res!60717 e!81926)))

(declare-fun lt!64678 () Bool)

(assert (=> d!37607 (= res!60717 (not lt!64678))))

(declare-fun lt!64681 () Bool)

(assert (=> d!37607 (= lt!64678 lt!64681)))

(declare-fun lt!64679 () Unit!3878)

(declare-fun e!81925 () Unit!3878)

(assert (=> d!37607 (= lt!64679 e!81925)))

(declare-fun c!22846 () Bool)

(assert (=> d!37607 (= c!22846 lt!64681)))

(assert (=> d!37607 (= lt!64681 (containsKey!169 (toList!856 lt!64252) (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> d!37607 (= (contains!873 lt!64252 (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64678)))

(declare-fun b!125373 () Bool)

(declare-fun lt!64680 () Unit!3878)

(assert (=> b!125373 (= e!81925 lt!64680)))

(assert (=> b!125373 (= lt!64680 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64252) (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> b!125373 (isDefined!119 (getValueByKey!165 (toList!856 lt!64252) (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun b!125374 () Bool)

(declare-fun Unit!3907 () Unit!3878)

(assert (=> b!125374 (= e!81925 Unit!3907)))

(declare-fun b!125375 () Bool)

(assert (=> b!125375 (= e!81926 (isDefined!119 (getValueByKey!165 (toList!856 lt!64252) (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (= (and d!37607 c!22846) b!125373))

(assert (= (and d!37607 (not c!22846)) b!125374))

(assert (= (and d!37607 (not res!60717)) b!125375))

(declare-fun m!145921 () Bool)

(assert (=> d!37607 m!145921))

(declare-fun m!145923 () Bool)

(assert (=> b!125373 m!145923))

(assert (=> b!125373 m!144983))

(assert (=> b!125373 m!144983))

(declare-fun m!145925 () Bool)

(assert (=> b!125373 m!145925))

(assert (=> b!125375 m!144983))

(assert (=> b!125375 m!144983))

(assert (=> b!125375 m!145925))

(assert (=> d!37393 d!37607))

(declare-fun b!125376 () Bool)

(declare-fun e!81927 () Option!171)

(assert (=> b!125376 (= e!81927 (Some!170 (_2!1290 (h!2313 lt!64254))))))

(declare-fun b!125379 () Bool)

(declare-fun e!81928 () Option!171)

(assert (=> b!125379 (= e!81928 None!169)))

(declare-fun b!125377 () Bool)

(assert (=> b!125377 (= e!81927 e!81928)))

(declare-fun c!22848 () Bool)

(assert (=> b!125377 (= c!22848 (and ((_ is Cons!1712) lt!64254) (not (= (_1!1290 (h!2313 lt!64254)) (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(declare-fun b!125378 () Bool)

(assert (=> b!125378 (= e!81928 (getValueByKey!165 (t!6055 lt!64254) (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun c!22847 () Bool)

(declare-fun d!37609 () Bool)

(assert (=> d!37609 (= c!22847 (and ((_ is Cons!1712) lt!64254) (= (_1!1290 (h!2313 lt!64254)) (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> d!37609 (= (getValueByKey!165 lt!64254 (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) e!81927)))

(assert (= (and d!37609 c!22847) b!125376))

(assert (= (and d!37609 (not c!22847)) b!125377))

(assert (= (and b!125377 c!22848) b!125378))

(assert (= (and b!125377 (not c!22848)) b!125379))

(declare-fun m!145927 () Bool)

(assert (=> b!125378 m!145927))

(assert (=> d!37393 d!37609))

(declare-fun d!37611 () Bool)

(assert (=> d!37611 (= (getValueByKey!165 lt!64254 (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) (Some!170 (_2!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun lt!64684 () Unit!3878)

(declare-fun choose!764 (List!1716 (_ BitVec 64) V!3427) Unit!3878)

(assert (=> d!37611 (= lt!64684 (choose!764 lt!64254 (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun e!81931 () Bool)

(assert (=> d!37611 e!81931))

(declare-fun res!60722 () Bool)

(assert (=> d!37611 (=> (not res!60722) (not e!81931))))

(assert (=> d!37611 (= res!60722 (isStrictlySorted!311 lt!64254))))

(assert (=> d!37611 (= (lemmaContainsTupThenGetReturnValue!82 lt!64254 (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64684)))

(declare-fun b!125384 () Bool)

(declare-fun res!60723 () Bool)

(assert (=> b!125384 (=> (not res!60723) (not e!81931))))

(assert (=> b!125384 (= res!60723 (containsKey!169 lt!64254 (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun b!125385 () Bool)

(assert (=> b!125385 (= e!81931 (contains!874 lt!64254 (tuple2!2561 (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (= (and d!37611 res!60722) b!125384))

(assert (= (and b!125384 res!60723) b!125385))

(assert (=> d!37611 m!144977))

(declare-fun m!145929 () Bool)

(assert (=> d!37611 m!145929))

(declare-fun m!145931 () Bool)

(assert (=> d!37611 m!145931))

(declare-fun m!145933 () Bool)

(assert (=> b!125384 m!145933))

(declare-fun m!145935 () Bool)

(assert (=> b!125385 m!145935))

(assert (=> d!37393 d!37611))

(declare-fun b!125406 () Bool)

(declare-fun e!81944 () List!1716)

(declare-fun call!13450 () List!1716)

(assert (=> b!125406 (= e!81944 call!13450)))

(declare-fun e!81943 () List!1716)

(declare-fun bm!13446 () Bool)

(declare-fun call!13449 () List!1716)

(declare-fun c!22857 () Bool)

(declare-fun $colon$colon!87 (List!1716 tuple2!2560) List!1716)

(assert (=> bm!13446 (= call!13449 ($colon$colon!87 e!81943 (ite c!22857 (h!2313 (toList!856 lt!64186)) (tuple2!2561 (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(declare-fun c!22858 () Bool)

(assert (=> bm!13446 (= c!22858 c!22857)))

(declare-fun d!37613 () Bool)

(declare-fun e!81945 () Bool)

(assert (=> d!37613 e!81945))

(declare-fun res!60728 () Bool)

(assert (=> d!37613 (=> (not res!60728) (not e!81945))))

(declare-fun lt!64687 () List!1716)

(assert (=> d!37613 (= res!60728 (isStrictlySorted!311 lt!64687))))

(declare-fun e!81942 () List!1716)

(assert (=> d!37613 (= lt!64687 e!81942)))

(assert (=> d!37613 (= c!22857 (and ((_ is Cons!1712) (toList!856 lt!64186)) (bvslt (_1!1290 (h!2313 (toList!856 lt!64186))) (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> d!37613 (isStrictlySorted!311 (toList!856 lt!64186))))

(assert (=> d!37613 (= (insertStrictlySorted!84 (toList!856 lt!64186) (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64687)))

(declare-fun b!125407 () Bool)

(assert (=> b!125407 (= e!81945 (contains!874 lt!64687 (tuple2!2561 (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun b!125408 () Bool)

(assert (=> b!125408 (= e!81944 call!13450)))

(declare-fun c!22859 () Bool)

(declare-fun c!22860 () Bool)

(declare-fun b!125409 () Bool)

(assert (=> b!125409 (= e!81943 (ite c!22859 (t!6055 (toList!856 lt!64186)) (ite c!22860 (Cons!1712 (h!2313 (toList!856 lt!64186)) (t!6055 (toList!856 lt!64186))) Nil!1713)))))

(declare-fun b!125410 () Bool)

(declare-fun e!81946 () List!1716)

(declare-fun call!13451 () List!1716)

(assert (=> b!125410 (= e!81946 call!13451)))

(declare-fun b!125411 () Bool)

(assert (=> b!125411 (= c!22860 (and ((_ is Cons!1712) (toList!856 lt!64186)) (bvsgt (_1!1290 (h!2313 (toList!856 lt!64186))) (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> b!125411 (= e!81946 e!81944)))

(declare-fun b!125412 () Bool)

(declare-fun res!60729 () Bool)

(assert (=> b!125412 (=> (not res!60729) (not e!81945))))

(assert (=> b!125412 (= res!60729 (containsKey!169 lt!64687 (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun b!125413 () Bool)

(assert (=> b!125413 (= e!81942 call!13449)))

(declare-fun b!125414 () Bool)

(assert (=> b!125414 (= e!81942 e!81946)))

(assert (=> b!125414 (= c!22859 (and ((_ is Cons!1712) (toList!856 lt!64186)) (= (_1!1290 (h!2313 (toList!856 lt!64186))) (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun bm!13447 () Bool)

(assert (=> bm!13447 (= call!13450 call!13451)))

(declare-fun bm!13448 () Bool)

(assert (=> bm!13448 (= call!13451 call!13449)))

(declare-fun b!125415 () Bool)

(assert (=> b!125415 (= e!81943 (insertStrictlySorted!84 (t!6055 (toList!856 lt!64186)) (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (= (and d!37613 c!22857) b!125413))

(assert (= (and d!37613 (not c!22857)) b!125414))

(assert (= (and b!125414 c!22859) b!125410))

(assert (= (and b!125414 (not c!22859)) b!125411))

(assert (= (and b!125411 c!22860) b!125406))

(assert (= (and b!125411 (not c!22860)) b!125408))

(assert (= (or b!125406 b!125408) bm!13447))

(assert (= (or b!125410 bm!13447) bm!13448))

(assert (= (or b!125413 bm!13448) bm!13446))

(assert (= (and bm!13446 c!22858) b!125415))

(assert (= (and bm!13446 (not c!22858)) b!125409))

(assert (= (and d!37613 res!60728) b!125412))

(assert (= (and b!125412 res!60729) b!125407))

(declare-fun m!145937 () Bool)

(assert (=> bm!13446 m!145937))

(declare-fun m!145939 () Bool)

(assert (=> d!37613 m!145939))

(declare-fun m!145941 () Bool)

(assert (=> d!37613 m!145941))

(declare-fun m!145943 () Bool)

(assert (=> b!125415 m!145943))

(declare-fun m!145945 () Bool)

(assert (=> b!125407 m!145945))

(declare-fun m!145947 () Bool)

(assert (=> b!125412 m!145947))

(assert (=> d!37393 d!37613))

(assert (=> d!37419 d!37483))

(declare-fun d!37615 () Bool)

(declare-fun res!60730 () Bool)

(declare-fun e!81947 () Bool)

(assert (=> d!37615 (=> res!60730 e!81947)))

(assert (=> d!37615 (= res!60730 (and ((_ is Cons!1712) (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))) (= (_1!1290 (h!2313 (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))) lt!64193)))))

(assert (=> d!37615 (= (containsKey!169 (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64193) e!81947)))

(declare-fun b!125416 () Bool)

(declare-fun e!81948 () Bool)

(assert (=> b!125416 (= e!81947 e!81948)))

(declare-fun res!60731 () Bool)

(assert (=> b!125416 (=> (not res!60731) (not e!81948))))

(assert (=> b!125416 (= res!60731 (and (or (not ((_ is Cons!1712) (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))) (bvsle (_1!1290 (h!2313 (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))) lt!64193)) ((_ is Cons!1712) (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))) (bvslt (_1!1290 (h!2313 (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))) lt!64193)))))

(declare-fun b!125417 () Bool)

(assert (=> b!125417 (= e!81948 (containsKey!169 (t!6055 (toList!856 (+!164 lt!64180 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))) lt!64193))))

(assert (= (and d!37615 (not res!60730)) b!125416))

(assert (= (and b!125416 res!60731) b!125417))

(declare-fun m!145949 () Bool)

(assert (=> b!125417 m!145949))

(assert (=> d!37391 d!37615))

(assert (=> bm!13403 d!37441))

(declare-fun b!125418 () Bool)

(declare-fun e!81951 () Bool)

(declare-fun e!81952 () Bool)

(assert (=> b!125418 (= e!81951 e!81952)))

(declare-fun c!22861 () Bool)

(assert (=> b!125418 (= c!22861 (validKeyInArray!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!125419 () Bool)

(declare-fun e!81949 () Bool)

(assert (=> b!125419 (= e!81949 e!81951)))

(declare-fun res!60732 () Bool)

(assert (=> b!125419 (=> (not res!60732) (not e!81951))))

(declare-fun e!81950 () Bool)

(assert (=> b!125419 (= res!60732 (not e!81950))))

(declare-fun res!60733 () Bool)

(assert (=> b!125419 (=> (not res!60733) (not e!81950))))

(assert (=> b!125419 (= res!60733 (validKeyInArray!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun d!37617 () Bool)

(declare-fun res!60734 () Bool)

(assert (=> d!37617 (=> res!60734 e!81949)))

(assert (=> d!37617 (= res!60734 (bvsge #b00000000000000000000000000000000 (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))))))

(assert (=> d!37617 (= (arrayNoDuplicates!0 (_keys!4493 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000000000 Nil!1714) e!81949)))

(declare-fun b!125420 () Bool)

(declare-fun call!13452 () Bool)

(assert (=> b!125420 (= e!81952 call!13452)))

(declare-fun bm!13449 () Bool)

(assert (=> bm!13449 (= call!13452 (arrayNoDuplicates!0 (_keys!4493 (v!3106 (underlying!435 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!22861 (Cons!1713 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) #b00000000000000000000000000000000) Nil!1714) Nil!1714)))))

(declare-fun b!125421 () Bool)

(assert (=> b!125421 (= e!81950 (contains!875 Nil!1714 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!125422 () Bool)

(assert (=> b!125422 (= e!81952 call!13452)))

(assert (= (and d!37617 (not res!60734)) b!125419))

(assert (= (and b!125419 res!60733) b!125421))

(assert (= (and b!125419 res!60732) b!125418))

(assert (= (and b!125418 c!22861) b!125420))

(assert (= (and b!125418 (not c!22861)) b!125422))

(assert (= (or b!125420 b!125422) bm!13449))

(assert (=> b!125418 m!145787))

(assert (=> b!125418 m!145787))

(assert (=> b!125418 m!145789))

(assert (=> b!125419 m!145787))

(assert (=> b!125419 m!145787))

(assert (=> b!125419 m!145789))

(assert (=> bm!13449 m!145787))

(declare-fun m!145951 () Bool)

(assert (=> bm!13449 m!145951))

(assert (=> b!125421 m!145787))

(assert (=> b!125421 m!145787))

(declare-fun m!145953 () Bool)

(assert (=> b!125421 m!145953))

(assert (=> b!125129 d!37617))

(assert (=> b!125045 d!37599))

(assert (=> b!125045 d!37601))

(declare-fun d!37619 () Bool)

(assert (=> d!37619 (= (get!1448 (getValueByKey!165 (toList!856 lt!64187) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!3110 (getValueByKey!165 (toList!856 lt!64187) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!37395 d!37619))

(declare-fun b!125423 () Bool)

(declare-fun e!81953 () Option!171)

(assert (=> b!125423 (= e!81953 (Some!170 (_2!1290 (h!2313 (toList!856 lt!64187)))))))

(declare-fun b!125426 () Bool)

(declare-fun e!81954 () Option!171)

(assert (=> b!125426 (= e!81954 None!169)))

(declare-fun b!125424 () Bool)

(assert (=> b!125424 (= e!81953 e!81954)))

(declare-fun c!22863 () Bool)

(assert (=> b!125424 (= c!22863 (and ((_ is Cons!1712) (toList!856 lt!64187)) (not (= (_1!1290 (h!2313 (toList!856 lt!64187))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!125425 () Bool)

(assert (=> b!125425 (= e!81954 (getValueByKey!165 (t!6055 (toList!856 lt!64187)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!37621 () Bool)

(declare-fun c!22862 () Bool)

(assert (=> d!37621 (= c!22862 (and ((_ is Cons!1712) (toList!856 lt!64187)) (= (_1!1290 (h!2313 (toList!856 lt!64187))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!37621 (= (getValueByKey!165 (toList!856 lt!64187) #b1000000000000000000000000000000000000000000000000000000000000000) e!81953)))

(assert (= (and d!37621 c!22862) b!125423))

(assert (= (and d!37621 (not c!22862)) b!125424))

(assert (= (and b!125424 c!22863) b!125425))

(assert (= (and b!125424 (not c!22863)) b!125426))

(declare-fun m!145955 () Bool)

(assert (=> b!125425 m!145955))

(assert (=> d!37395 d!37621))

(declare-fun d!37623 () Bool)

(declare-fun lt!64688 () Bool)

(assert (=> d!37623 (= lt!64688 (select (content!122 (toList!856 lt!64336)) (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun e!81955 () Bool)

(assert (=> d!37623 (= lt!64688 e!81955)))

(declare-fun res!60736 () Bool)

(assert (=> d!37623 (=> (not res!60736) (not e!81955))))

(assert (=> d!37623 (= res!60736 ((_ is Cons!1712) (toList!856 lt!64336)))))

(assert (=> d!37623 (= (contains!874 (toList!856 lt!64336) (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64688)))

(declare-fun b!125427 () Bool)

(declare-fun e!81956 () Bool)

(assert (=> b!125427 (= e!81955 e!81956)))

(declare-fun res!60735 () Bool)

(assert (=> b!125427 (=> res!60735 e!81956)))

(assert (=> b!125427 (= res!60735 (= (h!2313 (toList!856 lt!64336)) (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun b!125428 () Bool)

(assert (=> b!125428 (= e!81956 (contains!874 (t!6055 (toList!856 lt!64336)) (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (= (and d!37623 res!60736) b!125427))

(assert (= (and b!125427 (not res!60735)) b!125428))

(declare-fun m!145957 () Bool)

(assert (=> d!37623 m!145957))

(declare-fun m!145959 () Bool)

(assert (=> d!37623 m!145959))

(declare-fun m!145961 () Bool)

(assert (=> b!125428 m!145961))

(assert (=> b!124988 d!37623))

(declare-fun lt!64689 () Bool)

(declare-fun d!37625 () Bool)

(assert (=> d!37625 (= lt!64689 (select (content!122 (toList!856 lt!64211)) (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun e!81957 () Bool)

(assert (=> d!37625 (= lt!64689 e!81957)))

(declare-fun res!60738 () Bool)

(assert (=> d!37625 (=> (not res!60738) (not e!81957))))

(assert (=> d!37625 (= res!60738 ((_ is Cons!1712) (toList!856 lt!64211)))))

(assert (=> d!37625 (= (contains!874 (toList!856 lt!64211) (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64689)))

(declare-fun b!125429 () Bool)

(declare-fun e!81958 () Bool)

(assert (=> b!125429 (= e!81957 e!81958)))

(declare-fun res!60737 () Bool)

(assert (=> b!125429 (=> res!60737 e!81958)))

(assert (=> b!125429 (= res!60737 (= (h!2313 (toList!856 lt!64211)) (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun b!125430 () Bool)

(assert (=> b!125430 (= e!81958 (contains!874 (t!6055 (toList!856 lt!64211)) (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))

(assert (= (and d!37625 res!60738) b!125429))

(assert (= (and b!125429 (not res!60737)) b!125430))

(declare-fun m!145963 () Bool)

(assert (=> d!37625 m!145963))

(declare-fun m!145965 () Bool)

(assert (=> d!37625 m!145965))

(declare-fun m!145967 () Bool)

(assert (=> b!125430 m!145967))

(assert (=> b!124820 d!37625))

(declare-fun b!125431 () Bool)

(declare-fun e!81961 () Bool)

(declare-fun e!81962 () Bool)

(assert (=> b!125431 (= e!81961 e!81962)))

(declare-fun c!22864 () Bool)

(assert (=> b!125431 (= c!22864 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!125432 () Bool)

(declare-fun e!81959 () Bool)

(assert (=> b!125432 (= e!81959 e!81961)))

(declare-fun res!60739 () Bool)

(assert (=> b!125432 (=> (not res!60739) (not e!81961))))

(declare-fun e!81960 () Bool)

(assert (=> b!125432 (= res!60739 (not e!81960))))

(declare-fun res!60740 () Bool)

(assert (=> b!125432 (=> (not res!60740) (not e!81960))))

(assert (=> b!125432 (= res!60740 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!37627 () Bool)

(declare-fun res!60741 () Bool)

(assert (=> d!37627 (=> res!60741 e!81959)))

(assert (=> d!37627 (= res!60741 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2481 (_keys!4493 newMap!16))))))

(assert (=> d!37627 (= (arrayNoDuplicates!0 (_keys!4493 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!22744 (Cons!1713 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000) Nil!1714) Nil!1714)) e!81959)))

(declare-fun b!125433 () Bool)

(declare-fun call!13453 () Bool)

(assert (=> b!125433 (= e!81962 call!13453)))

(declare-fun bm!13450 () Bool)

(assert (=> bm!13450 (= call!13453 (arrayNoDuplicates!0 (_keys!4493 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!22864 (Cons!1713 (select (arr!2218 (_keys!4493 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!22744 (Cons!1713 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000) Nil!1714) Nil!1714)) (ite c!22744 (Cons!1713 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000) Nil!1714) Nil!1714))))))

(declare-fun b!125434 () Bool)

(assert (=> b!125434 (= e!81960 (contains!875 (ite c!22744 (Cons!1713 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000) Nil!1714) Nil!1714) (select (arr!2218 (_keys!4493 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!125435 () Bool)

(assert (=> b!125435 (= e!81962 call!13453)))

(assert (= (and d!37627 (not res!60741)) b!125432))

(assert (= (and b!125432 res!60740) b!125434))

(assert (= (and b!125432 res!60739) b!125431))

(assert (= (and b!125431 c!22864) b!125433))

(assert (= (and b!125431 (not c!22864)) b!125435))

(assert (= (or b!125433 b!125435) bm!13450))

(assert (=> b!125431 m!145535))

(assert (=> b!125431 m!145535))

(assert (=> b!125431 m!145537))

(assert (=> b!125432 m!145535))

(assert (=> b!125432 m!145535))

(assert (=> b!125432 m!145537))

(assert (=> bm!13450 m!145535))

(declare-fun m!145969 () Bool)

(assert (=> bm!13450 m!145969))

(assert (=> b!125434 m!145535))

(assert (=> b!125434 m!145535))

(declare-fun m!145971 () Bool)

(assert (=> b!125434 m!145971))

(assert (=> bm!13386 d!37627))

(declare-fun d!37629 () Bool)

(assert (=> d!37629 (= (apply!110 lt!64241 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1448 (getValueByKey!165 (toList!856 lt!64241) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!5183 () Bool)

(assert (= bs!5183 d!37629))

(assert (=> bs!5183 m!144811))

(declare-fun m!145973 () Bool)

(assert (=> bs!5183 m!145973))

(assert (=> bs!5183 m!145973))

(declare-fun m!145975 () Bool)

(assert (=> bs!5183 m!145975))

(assert (=> b!124864 d!37629))

(assert (=> b!124864 d!37401))

(declare-fun d!37631 () Bool)

(assert (=> d!37631 (= (isDefined!119 (getValueByKey!165 (toList!856 call!13333) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122)))) (not (isEmpty!398 (getValueByKey!165 (toList!856 call!13333) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122))))))))

(declare-fun bs!5184 () Bool)

(assert (= bs!5184 d!37631))

(assert (=> bs!5184 m!145025))

(declare-fun m!145977 () Bool)

(assert (=> bs!5184 m!145977))

(assert (=> b!124884 d!37631))

(declare-fun b!125436 () Bool)

(declare-fun e!81963 () Option!171)

(assert (=> b!125436 (= e!81963 (Some!170 (_2!1290 (h!2313 (toList!856 call!13333)))))))

(declare-fun b!125439 () Bool)

(declare-fun e!81964 () Option!171)

(assert (=> b!125439 (= e!81964 None!169)))

(declare-fun b!125437 () Bool)

(assert (=> b!125437 (= e!81963 e!81964)))

(declare-fun c!22866 () Bool)

(assert (=> b!125437 (= c!22866 (and ((_ is Cons!1712) (toList!856 call!13333)) (not (= (_1!1290 (h!2313 (toList!856 call!13333))) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122))))))))

(declare-fun b!125438 () Bool)

(assert (=> b!125438 (= e!81964 (getValueByKey!165 (t!6055 (toList!856 call!13333)) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122))))))

(declare-fun d!37633 () Bool)

(declare-fun c!22865 () Bool)

(assert (=> d!37633 (= c!22865 (and ((_ is Cons!1712) (toList!856 call!13333)) (= (_1!1290 (h!2313 (toList!856 call!13333))) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122)))))))

(assert (=> d!37633 (= (getValueByKey!165 (toList!856 call!13333) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122))) e!81963)))

(assert (= (and d!37633 c!22865) b!125436))

(assert (= (and d!37633 (not c!22865)) b!125437))

(assert (= (and b!125437 c!22866) b!125438))

(assert (= (and b!125437 (not c!22866)) b!125439))

(assert (=> b!125438 m!144767))

(declare-fun m!145979 () Bool)

(assert (=> b!125438 m!145979))

(assert (=> b!124884 d!37633))

(declare-fun d!37635 () Bool)

(assert (=> d!37635 (= (get!1448 (getValueByKey!165 (toList!856 (+!164 lt!64194 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64184)) (v!3110 (getValueByKey!165 (toList!856 (+!164 lt!64194 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64184)))))

(assert (=> d!37369 d!37635))

(declare-fun e!81965 () Option!171)

(declare-fun b!125440 () Bool)

(assert (=> b!125440 (= e!81965 (Some!170 (_2!1290 (h!2313 (toList!856 (+!164 lt!64194 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))))

(declare-fun b!125443 () Bool)

(declare-fun e!81966 () Option!171)

(assert (=> b!125443 (= e!81966 None!169)))

(declare-fun b!125441 () Bool)

(assert (=> b!125441 (= e!81965 e!81966)))

(declare-fun c!22868 () Bool)

(assert (=> b!125441 (= c!22868 (and ((_ is Cons!1712) (toList!856 (+!164 lt!64194 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))) (not (= (_1!1290 (h!2313 (toList!856 (+!164 lt!64194 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))) lt!64184))))))

(declare-fun b!125442 () Bool)

(assert (=> b!125442 (= e!81966 (getValueByKey!165 (t!6055 (toList!856 (+!164 lt!64194 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))) lt!64184))))

(declare-fun c!22867 () Bool)

(declare-fun d!37637 () Bool)

(assert (=> d!37637 (= c!22867 (and ((_ is Cons!1712) (toList!856 (+!164 lt!64194 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))) (= (_1!1290 (h!2313 (toList!856 (+!164 lt!64194 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))) lt!64184)))))

(assert (=> d!37637 (= (getValueByKey!165 (toList!856 (+!164 lt!64194 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64184) e!81965)))

(assert (= (and d!37637 c!22867) b!125440))

(assert (= (and d!37637 (not c!22867)) b!125441))

(assert (= (and b!125441 c!22868) b!125442))

(assert (= (and b!125441 (not c!22868)) b!125443))

(declare-fun m!145981 () Bool)

(assert (=> b!125442 m!145981))

(assert (=> d!37369 d!37637))

(declare-fun d!37639 () Bool)

(assert (=> d!37639 (= (apply!110 lt!64475 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)) (get!1448 (getValueByKey!165 (toList!856 lt!64475) (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))))

(declare-fun bs!5185 () Bool)

(assert (= bs!5185 d!37639))

(assert (=> bs!5185 m!145047))

(assert (=> bs!5185 m!145651))

(assert (=> bs!5185 m!145651))

(declare-fun m!145983 () Bool)

(assert (=> bs!5185 m!145983))

(assert (=> b!125101 d!37639))

(declare-fun d!37641 () Bool)

(declare-fun c!22869 () Bool)

(assert (=> d!37641 (= c!22869 ((_ is ValueCellFull!1074) (select (arr!2219 (ite (or c!22675 c!22668) (_values!2747 newMap!16) lt!64129)) #b00000000000000000000000000000000)))))

(declare-fun e!81967 () V!3427)

(assert (=> d!37641 (= (get!1445 (select (arr!2219 (ite (or c!22675 c!22668) (_values!2747 newMap!16) lt!64129)) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)) e!81967)))

(declare-fun b!125444 () Bool)

(assert (=> b!125444 (= e!81967 (get!1446 (select (arr!2219 (ite (or c!22675 c!22668) (_values!2747 newMap!16) lt!64129)) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!125445 () Bool)

(assert (=> b!125445 (= e!81967 (get!1447 (select (arr!2219 (ite (or c!22675 c!22668) (_values!2747 newMap!16) lt!64129)) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37641 c!22869) b!125444))

(assert (= (and d!37641 (not c!22869)) b!125445))

(assert (=> b!125444 m!145339))

(assert (=> b!125444 m!145061))

(declare-fun m!145985 () Bool)

(assert (=> b!125444 m!145985))

(assert (=> b!125445 m!145339))

(assert (=> b!125445 m!145061))

(declare-fun m!145987 () Bool)

(assert (=> b!125445 m!145987))

(assert (=> b!125101 d!37641))

(declare-fun d!37643 () Bool)

(declare-fun e!81968 () Bool)

(assert (=> d!37643 e!81968))

(declare-fun res!60742 () Bool)

(assert (=> d!37643 (=> (not res!60742) (not e!81968))))

(declare-fun lt!64690 () ListLongMap!1681)

(assert (=> d!37643 (= res!60742 (contains!873 lt!64690 (_1!1290 (tuple2!2561 lt!64483 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))))))))

(declare-fun lt!64692 () List!1716)

(assert (=> d!37643 (= lt!64690 (ListLongMap!1682 lt!64692))))

(declare-fun lt!64693 () Unit!3878)

(declare-fun lt!64691 () Unit!3878)

(assert (=> d!37643 (= lt!64693 lt!64691)))

(assert (=> d!37643 (= (getValueByKey!165 lt!64692 (_1!1290 (tuple2!2561 lt!64483 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))))) (Some!170 (_2!1290 (tuple2!2561 lt!64483 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))))))))

(assert (=> d!37643 (= lt!64691 (lemmaContainsTupThenGetReturnValue!82 lt!64692 (_1!1290 (tuple2!2561 lt!64483 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)))) (_2!1290 (tuple2!2561 lt!64483 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))))))))

(assert (=> d!37643 (= lt!64692 (insertStrictlySorted!84 (toList!856 lt!64474) (_1!1290 (tuple2!2561 lt!64483 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)))) (_2!1290 (tuple2!2561 lt!64483 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))))))))

(assert (=> d!37643 (= (+!164 lt!64474 (tuple2!2561 lt!64483 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)))) lt!64690)))

(declare-fun b!125446 () Bool)

(declare-fun res!60743 () Bool)

(assert (=> b!125446 (=> (not res!60743) (not e!81968))))

(assert (=> b!125446 (= res!60743 (= (getValueByKey!165 (toList!856 lt!64690) (_1!1290 (tuple2!2561 lt!64483 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))))) (Some!170 (_2!1290 (tuple2!2561 lt!64483 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)))))))))

(declare-fun b!125447 () Bool)

(assert (=> b!125447 (= e!81968 (contains!874 (toList!856 lt!64690) (tuple2!2561 lt!64483 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)))))))

(assert (= (and d!37643 res!60742) b!125446))

(assert (= (and b!125446 res!60743) b!125447))

(declare-fun m!145989 () Bool)

(assert (=> d!37643 m!145989))

(declare-fun m!145991 () Bool)

(assert (=> d!37643 m!145991))

(declare-fun m!145993 () Bool)

(assert (=> d!37643 m!145993))

(declare-fun m!145995 () Bool)

(assert (=> d!37643 m!145995))

(declare-fun m!145997 () Bool)

(assert (=> b!125446 m!145997))

(declare-fun m!145999 () Bool)

(assert (=> b!125447 m!145999))

(assert (=> b!125117 d!37643))

(declare-fun d!37645 () Bool)

(declare-fun e!81969 () Bool)

(assert (=> d!37645 e!81969))

(declare-fun res!60744 () Bool)

(assert (=> d!37645 (=> (not res!60744) (not e!81969))))

(declare-fun lt!64694 () ListLongMap!1681)

(assert (=> d!37645 (= res!60744 (contains!873 lt!64694 (_1!1290 (tuple2!2561 lt!64477 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))))))

(declare-fun lt!64696 () List!1716)

(assert (=> d!37645 (= lt!64694 (ListLongMap!1682 lt!64696))))

(declare-fun lt!64697 () Unit!3878)

(declare-fun lt!64695 () Unit!3878)

(assert (=> d!37645 (= lt!64697 lt!64695)))

(assert (=> d!37645 (= (getValueByKey!165 lt!64696 (_1!1290 (tuple2!2561 lt!64477 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))) (Some!170 (_2!1290 (tuple2!2561 lt!64477 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))))))

(assert (=> d!37645 (= lt!64695 (lemmaContainsTupThenGetReturnValue!82 lt!64696 (_1!1290 (tuple2!2561 lt!64477 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))) (_2!1290 (tuple2!2561 lt!64477 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))))))

(assert (=> d!37645 (= lt!64696 (insertStrictlySorted!84 (toList!856 lt!64486) (_1!1290 (tuple2!2561 lt!64477 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))) (_2!1290 (tuple2!2561 lt!64477 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))))))

(assert (=> d!37645 (= (+!164 lt!64486 (tuple2!2561 lt!64477 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))) lt!64694)))

(declare-fun b!125448 () Bool)

(declare-fun res!60745 () Bool)

(assert (=> b!125448 (=> (not res!60745) (not e!81969))))

(assert (=> b!125448 (= res!60745 (= (getValueByKey!165 (toList!856 lt!64694) (_1!1290 (tuple2!2561 lt!64477 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))) (Some!170 (_2!1290 (tuple2!2561 lt!64477 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))))))))

(declare-fun b!125449 () Bool)

(assert (=> b!125449 (= e!81969 (contains!874 (toList!856 lt!64694) (tuple2!2561 lt!64477 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))))))

(assert (= (and d!37645 res!60744) b!125448))

(assert (= (and b!125448 res!60745) b!125449))

(declare-fun m!146001 () Bool)

(assert (=> d!37645 m!146001))

(declare-fun m!146003 () Bool)

(assert (=> d!37645 m!146003))

(declare-fun m!146005 () Bool)

(assert (=> d!37645 m!146005))

(declare-fun m!146007 () Bool)

(assert (=> d!37645 m!146007))

(declare-fun m!146009 () Bool)

(assert (=> b!125448 m!146009))

(declare-fun m!146011 () Bool)

(assert (=> b!125449 m!146011))

(assert (=> b!125117 d!37645))

(declare-fun d!37647 () Bool)

(assert (=> d!37647 (contains!873 (+!164 lt!64468 (tuple2!2561 lt!64469 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)))) lt!64481)))

(declare-fun lt!64698 () Unit!3878)

(assert (=> d!37647 (= lt!64698 (choose!756 lt!64468 lt!64469 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)) lt!64481))))

(assert (=> d!37647 (contains!873 lt!64468 lt!64481)))

(assert (=> d!37647 (= (addStillContains!86 lt!64468 lt!64469 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)) lt!64481) lt!64698)))

(declare-fun bs!5186 () Bool)

(assert (= bs!5186 d!37647))

(assert (=> bs!5186 m!145349))

(assert (=> bs!5186 m!145349))

(assert (=> bs!5186 m!145359))

(declare-fun m!146013 () Bool)

(assert (=> bs!5186 m!146013))

(declare-fun m!146015 () Bool)

(assert (=> bs!5186 m!146015))

(assert (=> b!125117 d!37647))

(declare-fun d!37649 () Bool)

(assert (=> d!37649 (= (apply!110 (+!164 lt!64474 (tuple2!2561 lt!64483 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)))) lt!64470) (get!1448 (getValueByKey!165 (toList!856 (+!164 lt!64474 (tuple2!2561 lt!64483 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))))) lt!64470)))))

(declare-fun bs!5187 () Bool)

(assert (= bs!5187 d!37649))

(declare-fun m!146017 () Bool)

(assert (=> bs!5187 m!146017))

(assert (=> bs!5187 m!146017))

(declare-fun m!146019 () Bool)

(assert (=> bs!5187 m!146019))

(assert (=> b!125117 d!37649))

(declare-fun d!37651 () Bool)

(assert (=> d!37651 (= (apply!110 (+!164 lt!64482 (tuple2!2561 lt!64473 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))) lt!64472) (get!1448 (getValueByKey!165 (toList!856 (+!164 lt!64482 (tuple2!2561 lt!64473 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))) lt!64472)))))

(declare-fun bs!5188 () Bool)

(assert (= bs!5188 d!37651))

(declare-fun m!146021 () Bool)

(assert (=> bs!5188 m!146021))

(assert (=> bs!5188 m!146021))

(declare-fun m!146023 () Bool)

(assert (=> bs!5188 m!146023))

(assert (=> b!125117 d!37651))

(declare-fun d!37653 () Bool)

(assert (=> d!37653 (= (apply!110 lt!64474 lt!64470) (get!1448 (getValueByKey!165 (toList!856 lt!64474) lt!64470)))))

(declare-fun bs!5189 () Bool)

(assert (= bs!5189 d!37653))

(declare-fun m!146025 () Bool)

(assert (=> bs!5189 m!146025))

(assert (=> bs!5189 m!146025))

(declare-fun m!146027 () Bool)

(assert (=> bs!5189 m!146027))

(assert (=> b!125117 d!37653))

(declare-fun d!37655 () Bool)

(assert (=> d!37655 (= (apply!110 (+!164 lt!64482 (tuple2!2561 lt!64473 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))) lt!64472) (apply!110 lt!64482 lt!64472))))

(declare-fun lt!64699 () Unit!3878)

(assert (=> d!37655 (= lt!64699 (choose!755 lt!64482 lt!64473 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)) lt!64472))))

(declare-fun e!81970 () Bool)

(assert (=> d!37655 e!81970))

(declare-fun res!60746 () Bool)

(assert (=> d!37655 (=> (not res!60746) (not e!81970))))

(assert (=> d!37655 (= res!60746 (contains!873 lt!64482 lt!64472))))

(assert (=> d!37655 (= (addApplyDifferent!86 lt!64482 lt!64473 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)) lt!64472) lt!64699)))

(declare-fun b!125450 () Bool)

(assert (=> b!125450 (= e!81970 (not (= lt!64472 lt!64473)))))

(assert (= (and d!37655 res!60746) b!125450))

(declare-fun m!146029 () Bool)

(assert (=> d!37655 m!146029))

(declare-fun m!146031 () Bool)

(assert (=> d!37655 m!146031))

(assert (=> d!37655 m!145347))

(assert (=> d!37655 m!145371))

(assert (=> d!37655 m!145347))

(assert (=> d!37655 m!145373))

(assert (=> b!125117 d!37655))

(declare-fun d!37657 () Bool)

(assert (=> d!37657 (= (apply!110 (+!164 lt!64486 (tuple2!2561 lt!64477 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))) lt!64471) (get!1448 (getValueByKey!165 (toList!856 (+!164 lt!64486 (tuple2!2561 lt!64477 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))) lt!64471)))))

(declare-fun bs!5190 () Bool)

(assert (= bs!5190 d!37657))

(declare-fun m!146033 () Bool)

(assert (=> bs!5190 m!146033))

(assert (=> bs!5190 m!146033))

(declare-fun m!146035 () Bool)

(assert (=> bs!5190 m!146035))

(assert (=> b!125117 d!37657))

(declare-fun d!37659 () Bool)

(assert (=> d!37659 (= (apply!110 (+!164 lt!64486 (tuple2!2561 lt!64477 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))) lt!64471) (apply!110 lt!64486 lt!64471))))

(declare-fun lt!64700 () Unit!3878)

(assert (=> d!37659 (= lt!64700 (choose!755 lt!64486 lt!64477 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)) lt!64471))))

(declare-fun e!81971 () Bool)

(assert (=> d!37659 e!81971))

(declare-fun res!60747 () Bool)

(assert (=> d!37659 (=> (not res!60747) (not e!81971))))

(assert (=> d!37659 (= res!60747 (contains!873 lt!64486 lt!64471))))

(assert (=> d!37659 (= (addApplyDifferent!86 lt!64486 lt!64477 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)) lt!64471) lt!64700)))

(declare-fun b!125451 () Bool)

(assert (=> b!125451 (= e!81971 (not (= lt!64471 lt!64477)))))

(assert (= (and d!37659 res!60747) b!125451))

(declare-fun m!146037 () Bool)

(assert (=> d!37659 m!146037))

(declare-fun m!146039 () Bool)

(assert (=> d!37659 m!146039))

(assert (=> d!37659 m!145351))

(assert (=> d!37659 m!145353))

(assert (=> d!37659 m!145351))

(assert (=> d!37659 m!145365))

(assert (=> b!125117 d!37659))

(declare-fun d!37661 () Bool)

(assert (=> d!37661 (= (apply!110 lt!64482 lt!64472) (get!1448 (getValueByKey!165 (toList!856 lt!64482) lt!64472)))))

(declare-fun bs!5191 () Bool)

(assert (= bs!5191 d!37661))

(declare-fun m!146041 () Bool)

(assert (=> bs!5191 m!146041))

(assert (=> bs!5191 m!146041))

(declare-fun m!146043 () Bool)

(assert (=> bs!5191 m!146043))

(assert (=> b!125117 d!37661))

(declare-fun d!37663 () Bool)

(assert (=> d!37663 (= (apply!110 (+!164 lt!64474 (tuple2!2561 lt!64483 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)))) lt!64470) (apply!110 lt!64474 lt!64470))))

(declare-fun lt!64701 () Unit!3878)

(assert (=> d!37663 (= lt!64701 (choose!755 lt!64474 lt!64483 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)) lt!64470))))

(declare-fun e!81972 () Bool)

(assert (=> d!37663 e!81972))

(declare-fun res!60748 () Bool)

(assert (=> d!37663 (=> (not res!60748) (not e!81972))))

(assert (=> d!37663 (= res!60748 (contains!873 lt!64474 lt!64470))))

(assert (=> d!37663 (= (addApplyDifferent!86 lt!64474 lt!64483 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)) lt!64470) lt!64701)))

(declare-fun b!125452 () Bool)

(assert (=> b!125452 (= e!81972 (not (= lt!64470 lt!64483)))))

(assert (= (and d!37663 res!60748) b!125452))

(declare-fun m!146045 () Bool)

(assert (=> d!37663 m!146045))

(declare-fun m!146047 () Bool)

(assert (=> d!37663 m!146047))

(assert (=> d!37663 m!145357))

(assert (=> d!37663 m!145361))

(assert (=> d!37663 m!145357))

(assert (=> d!37663 m!145355))

(assert (=> b!125117 d!37663))

(declare-fun d!37665 () Bool)

(declare-fun e!81973 () Bool)

(assert (=> d!37665 e!81973))

(declare-fun res!60749 () Bool)

(assert (=> d!37665 (=> (not res!60749) (not e!81973))))

(declare-fun lt!64702 () ListLongMap!1681)

(assert (=> d!37665 (= res!60749 (contains!873 lt!64702 (_1!1290 (tuple2!2561 lt!64473 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))))))

(declare-fun lt!64704 () List!1716)

(assert (=> d!37665 (= lt!64702 (ListLongMap!1682 lt!64704))))

(declare-fun lt!64705 () Unit!3878)

(declare-fun lt!64703 () Unit!3878)

(assert (=> d!37665 (= lt!64705 lt!64703)))

(assert (=> d!37665 (= (getValueByKey!165 lt!64704 (_1!1290 (tuple2!2561 lt!64473 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))) (Some!170 (_2!1290 (tuple2!2561 lt!64473 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))))))

(assert (=> d!37665 (= lt!64703 (lemmaContainsTupThenGetReturnValue!82 lt!64704 (_1!1290 (tuple2!2561 lt!64473 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))) (_2!1290 (tuple2!2561 lt!64473 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))))))

(assert (=> d!37665 (= lt!64704 (insertStrictlySorted!84 (toList!856 lt!64482) (_1!1290 (tuple2!2561 lt!64473 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))) (_2!1290 (tuple2!2561 lt!64473 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))))))

(assert (=> d!37665 (= (+!164 lt!64482 (tuple2!2561 lt!64473 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))) lt!64702)))

(declare-fun b!125453 () Bool)

(declare-fun res!60750 () Bool)

(assert (=> b!125453 (=> (not res!60750) (not e!81973))))

(assert (=> b!125453 (= res!60750 (= (getValueByKey!165 (toList!856 lt!64702) (_1!1290 (tuple2!2561 lt!64473 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))) (Some!170 (_2!1290 (tuple2!2561 lt!64473 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))))))))

(declare-fun b!125454 () Bool)

(assert (=> b!125454 (= e!81973 (contains!874 (toList!856 lt!64702) (tuple2!2561 lt!64473 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))))))

(assert (= (and d!37665 res!60749) b!125453))

(assert (= (and b!125453 res!60750) b!125454))

(declare-fun m!146049 () Bool)

(assert (=> d!37665 m!146049))

(declare-fun m!146051 () Bool)

(assert (=> d!37665 m!146051))

(declare-fun m!146053 () Bool)

(assert (=> d!37665 m!146053))

(declare-fun m!146055 () Bool)

(assert (=> d!37665 m!146055))

(declare-fun m!146057 () Bool)

(assert (=> b!125453 m!146057))

(declare-fun m!146059 () Bool)

(assert (=> b!125454 m!146059))

(assert (=> b!125117 d!37665))

(declare-fun d!37667 () Bool)

(declare-fun e!81975 () Bool)

(assert (=> d!37667 e!81975))

(declare-fun res!60751 () Bool)

(assert (=> d!37667 (=> res!60751 e!81975)))

(declare-fun lt!64706 () Bool)

(assert (=> d!37667 (= res!60751 (not lt!64706))))

(declare-fun lt!64709 () Bool)

(assert (=> d!37667 (= lt!64706 lt!64709)))

(declare-fun lt!64707 () Unit!3878)

(declare-fun e!81974 () Unit!3878)

(assert (=> d!37667 (= lt!64707 e!81974)))

(declare-fun c!22870 () Bool)

(assert (=> d!37667 (= c!22870 lt!64709)))

(assert (=> d!37667 (= lt!64709 (containsKey!169 (toList!856 (+!164 lt!64468 (tuple2!2561 lt!64469 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))))) lt!64481))))

(assert (=> d!37667 (= (contains!873 (+!164 lt!64468 (tuple2!2561 lt!64469 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)))) lt!64481) lt!64706)))

(declare-fun b!125455 () Bool)

(declare-fun lt!64708 () Unit!3878)

(assert (=> b!125455 (= e!81974 lt!64708)))

(assert (=> b!125455 (= lt!64708 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 (+!164 lt!64468 (tuple2!2561 lt!64469 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))))) lt!64481))))

(assert (=> b!125455 (isDefined!119 (getValueByKey!165 (toList!856 (+!164 lt!64468 (tuple2!2561 lt!64469 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))))) lt!64481))))

(declare-fun b!125456 () Bool)

(declare-fun Unit!3908 () Unit!3878)

(assert (=> b!125456 (= e!81974 Unit!3908)))

(declare-fun b!125457 () Bool)

(assert (=> b!125457 (= e!81975 (isDefined!119 (getValueByKey!165 (toList!856 (+!164 lt!64468 (tuple2!2561 lt!64469 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))))) lt!64481)))))

(assert (= (and d!37667 c!22870) b!125455))

(assert (= (and d!37667 (not c!22870)) b!125456))

(assert (= (and d!37667 (not res!60751)) b!125457))

(declare-fun m!146061 () Bool)

(assert (=> d!37667 m!146061))

(declare-fun m!146063 () Bool)

(assert (=> b!125455 m!146063))

(declare-fun m!146065 () Bool)

(assert (=> b!125455 m!146065))

(assert (=> b!125455 m!146065))

(declare-fun m!146067 () Bool)

(assert (=> b!125455 m!146067))

(assert (=> b!125457 m!146065))

(assert (=> b!125457 m!146065))

(assert (=> b!125457 m!146067))

(assert (=> b!125117 d!37667))

(declare-fun d!37669 () Bool)

(declare-fun e!81976 () Bool)

(assert (=> d!37669 e!81976))

(declare-fun res!60752 () Bool)

(assert (=> d!37669 (=> (not res!60752) (not e!81976))))

(declare-fun lt!64710 () ListLongMap!1681)

(assert (=> d!37669 (= res!60752 (contains!873 lt!64710 (_1!1290 (tuple2!2561 lt!64469 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))))))))

(declare-fun lt!64712 () List!1716)

(assert (=> d!37669 (= lt!64710 (ListLongMap!1682 lt!64712))))

(declare-fun lt!64713 () Unit!3878)

(declare-fun lt!64711 () Unit!3878)

(assert (=> d!37669 (= lt!64713 lt!64711)))

(assert (=> d!37669 (= (getValueByKey!165 lt!64712 (_1!1290 (tuple2!2561 lt!64469 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))))) (Some!170 (_2!1290 (tuple2!2561 lt!64469 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))))))))

(assert (=> d!37669 (= lt!64711 (lemmaContainsTupThenGetReturnValue!82 lt!64712 (_1!1290 (tuple2!2561 lt!64469 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)))) (_2!1290 (tuple2!2561 lt!64469 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))))))))

(assert (=> d!37669 (= lt!64712 (insertStrictlySorted!84 (toList!856 lt!64468) (_1!1290 (tuple2!2561 lt!64469 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)))) (_2!1290 (tuple2!2561 lt!64469 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))))))))

(assert (=> d!37669 (= (+!164 lt!64468 (tuple2!2561 lt!64469 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)))) lt!64710)))

(declare-fun b!125458 () Bool)

(declare-fun res!60753 () Bool)

(assert (=> b!125458 (=> (not res!60753) (not e!81976))))

(assert (=> b!125458 (= res!60753 (= (getValueByKey!165 (toList!856 lt!64710) (_1!1290 (tuple2!2561 lt!64469 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))))) (Some!170 (_2!1290 (tuple2!2561 lt!64469 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)))))))))

(declare-fun b!125459 () Bool)

(assert (=> b!125459 (= e!81976 (contains!874 (toList!856 lt!64710) (tuple2!2561 lt!64469 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16)))))))

(assert (= (and d!37669 res!60752) b!125458))

(assert (= (and b!125458 res!60753) b!125459))

(declare-fun m!146069 () Bool)

(assert (=> d!37669 m!146069))

(declare-fun m!146071 () Bool)

(assert (=> d!37669 m!146071))

(declare-fun m!146073 () Bool)

(assert (=> d!37669 m!146073))

(declare-fun m!146075 () Bool)

(assert (=> d!37669 m!146075))

(declare-fun m!146077 () Bool)

(assert (=> b!125458 m!146077))

(declare-fun m!146079 () Bool)

(assert (=> b!125459 m!146079))

(assert (=> b!125117 d!37669))

(assert (=> b!125117 d!37477))

(declare-fun d!37671 () Bool)

(assert (=> d!37671 (= (apply!110 lt!64486 lt!64471) (get!1448 (getValueByKey!165 (toList!856 lt!64486) lt!64471)))))

(declare-fun bs!5192 () Bool)

(assert (= bs!5192 d!37671))

(declare-fun m!146081 () Bool)

(assert (=> bs!5192 m!146081))

(assert (=> bs!5192 m!146081))

(declare-fun m!146083 () Bool)

(assert (=> bs!5192 m!146083))

(assert (=> b!125117 d!37671))

(declare-fun d!37673 () Bool)

(assert (=> d!37673 (= (isDefined!119 (getValueByKey!165 (toList!856 lt!64187) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))) (not (isEmpty!398 (getValueByKey!165 (toList!856 lt!64187) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))))

(declare-fun bs!5193 () Bool)

(assert (= bs!5193 d!37673))

(assert (=> bs!5193 m!144997))

(declare-fun m!146085 () Bool)

(assert (=> bs!5193 m!146085))

(assert (=> b!124971 d!37673))

(declare-fun b!125460 () Bool)

(declare-fun e!81977 () Option!171)

(assert (=> b!125460 (= e!81977 (Some!170 (_2!1290 (h!2313 (toList!856 lt!64187)))))))

(declare-fun b!125463 () Bool)

(declare-fun e!81978 () Option!171)

(assert (=> b!125463 (= e!81978 None!169)))

(declare-fun b!125461 () Bool)

(assert (=> b!125461 (= e!81977 e!81978)))

(declare-fun c!22872 () Bool)

(assert (=> b!125461 (= c!22872 (and ((_ is Cons!1712) (toList!856 lt!64187)) (not (= (_1!1290 (h!2313 (toList!856 lt!64187))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))))

(declare-fun b!125462 () Bool)

(assert (=> b!125462 (= e!81978 (getValueByKey!165 (t!6055 (toList!856 lt!64187)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun c!22871 () Bool)

(declare-fun d!37675 () Bool)

(assert (=> d!37675 (= c!22871 (and ((_ is Cons!1712) (toList!856 lt!64187)) (= (_1!1290 (h!2313 (toList!856 lt!64187))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (=> d!37675 (= (getValueByKey!165 (toList!856 lt!64187) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) e!81977)))

(assert (= (and d!37675 c!22871) b!125460))

(assert (= (and d!37675 (not c!22871)) b!125461))

(assert (= (and b!125461 c!22872) b!125462))

(assert (= (and b!125461 (not c!22872)) b!125463))

(assert (=> b!125462 m!144811))

(declare-fun m!146087 () Bool)

(assert (=> b!125462 m!146087))

(assert (=> b!124971 d!37675))

(declare-fun b!125464 () Bool)

(declare-fun e!81979 () Option!171)

(assert (=> b!125464 (= e!81979 (Some!170 (_2!1290 (h!2313 (t!6055 (toList!856 lt!64030))))))))

(declare-fun b!125467 () Bool)

(declare-fun e!81980 () Option!171)

(assert (=> b!125467 (= e!81980 None!169)))

(declare-fun b!125465 () Bool)

(assert (=> b!125465 (= e!81979 e!81980)))

(declare-fun c!22874 () Bool)

(assert (=> b!125465 (= c!22874 (and ((_ is Cons!1712) (t!6055 (toList!856 lt!64030))) (not (= (_1!1290 (h!2313 (t!6055 (toList!856 lt!64030)))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))))

(declare-fun b!125466 () Bool)

(assert (=> b!125466 (= e!81980 (getValueByKey!165 (t!6055 (t!6055 (toList!856 lt!64030))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun c!22873 () Bool)

(declare-fun d!37677 () Bool)

(assert (=> d!37677 (= c!22873 (and ((_ is Cons!1712) (t!6055 (toList!856 lt!64030))) (= (_1!1290 (h!2313 (t!6055 (toList!856 lt!64030)))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))))))

(assert (=> d!37677 (= (getValueByKey!165 (t!6055 (toList!856 lt!64030)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) e!81979)))

(assert (= (and d!37677 c!22873) b!125464))

(assert (= (and d!37677 (not c!22873)) b!125465))

(assert (= (and b!125465 c!22874) b!125466))

(assert (= (and b!125465 (not c!22874)) b!125467))

(assert (=> b!125466 m!144661))

(declare-fun m!146089 () Bool)

(assert (=> b!125466 m!146089))

(assert (=> b!124811 d!37677))

(assert (=> d!37459 d!37483))

(declare-fun d!37679 () Bool)

(assert (=> d!37679 (= (apply!110 lt!64320 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1448 (getValueByKey!165 (toList!856 lt!64320) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5194 () Bool)

(assert (= bs!5194 d!37679))

(declare-fun m!146091 () Bool)

(assert (=> bs!5194 m!146091))

(assert (=> bs!5194 m!146091))

(declare-fun m!146093 () Bool)

(assert (=> bs!5194 m!146093))

(assert (=> b!124959 d!37679))

(assert (=> bm!13404 d!37465))

(declare-fun d!37681 () Bool)

(declare-fun e!81981 () Bool)

(assert (=> d!37681 e!81981))

(declare-fun res!60754 () Bool)

(assert (=> d!37681 (=> (not res!60754) (not e!81981))))

(declare-fun lt!64714 () ListLongMap!1681)

(assert (=> d!37681 (= res!60754 (contains!873 lt!64714 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))))))

(declare-fun lt!64716 () List!1716)

(assert (=> d!37681 (= lt!64714 (ListLongMap!1682 lt!64716))))

(declare-fun lt!64717 () Unit!3878)

(declare-fun lt!64715 () Unit!3878)

(assert (=> d!37681 (= lt!64717 lt!64715)))

(assert (=> d!37681 (= (getValueByKey!165 lt!64716 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))) (Some!170 (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))))))

(assert (=> d!37681 (= lt!64715 (lemmaContainsTupThenGetReturnValue!82 lt!64716 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))) (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))))))

(assert (=> d!37681 (= lt!64716 (insertStrictlySorted!84 (toList!856 call!13372) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))) (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))))))

(assert (=> d!37681 (= (+!164 call!13372 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))) lt!64714)))

(declare-fun b!125468 () Bool)

(declare-fun res!60755 () Bool)

(assert (=> b!125468 (=> (not res!60755) (not e!81981))))

(assert (=> b!125468 (= res!60755 (= (getValueByKey!165 (toList!856 lt!64714) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))) (Some!170 (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))))))

(declare-fun b!125469 () Bool)

(assert (=> b!125469 (= e!81981 (contains!874 (toList!856 lt!64714) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))))

(assert (= (and d!37681 res!60754) b!125468))

(assert (= (and b!125468 res!60755) b!125469))

(declare-fun m!146095 () Bool)

(assert (=> d!37681 m!146095))

(declare-fun m!146097 () Bool)

(assert (=> d!37681 m!146097))

(declare-fun m!146099 () Bool)

(assert (=> d!37681 m!146099))

(declare-fun m!146101 () Bool)

(assert (=> d!37681 m!146101))

(declare-fun m!146103 () Bool)

(assert (=> b!125468 m!146103))

(declare-fun m!146105 () Bool)

(assert (=> b!125469 m!146105))

(assert (=> b!124903 d!37681))

(declare-fun d!37683 () Bool)

(declare-fun e!81983 () Bool)

(assert (=> d!37683 e!81983))

(declare-fun res!60756 () Bool)

(assert (=> d!37683 (=> res!60756 e!81983)))

(declare-fun lt!64718 () Bool)

(assert (=> d!37683 (= res!60756 (not lt!64718))))

(declare-fun lt!64721 () Bool)

(assert (=> d!37683 (= lt!64718 lt!64721)))

(declare-fun lt!64719 () Unit!3878)

(declare-fun e!81982 () Unit!3878)

(assert (=> d!37683 (= lt!64719 e!81982)))

(declare-fun c!22875 () Bool)

(assert (=> d!37683 (= c!22875 lt!64721)))

(assert (=> d!37683 (= lt!64721 (containsKey!169 (toList!856 lt!64367) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37683 (= (contains!873 lt!64367 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!64718)))

(declare-fun b!125470 () Bool)

(declare-fun lt!64720 () Unit!3878)

(assert (=> b!125470 (= e!81982 lt!64720)))

(assert (=> b!125470 (= lt!64720 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64367) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!125470 (isDefined!119 (getValueByKey!165 (toList!856 lt!64367) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!125471 () Bool)

(declare-fun Unit!3909 () Unit!3878)

(assert (=> b!125471 (= e!81982 Unit!3909)))

(declare-fun b!125472 () Bool)

(assert (=> b!125472 (= e!81983 (isDefined!119 (getValueByKey!165 (toList!856 lt!64367) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!37683 c!22875) b!125470))

(assert (= (and d!37683 (not c!22875)) b!125471))

(assert (= (and d!37683 (not res!60756)) b!125472))

(declare-fun m!146107 () Bool)

(assert (=> d!37683 m!146107))

(declare-fun m!146109 () Bool)

(assert (=> b!125470 m!146109))

(assert (=> b!125470 m!145261))

(assert (=> b!125470 m!145261))

(declare-fun m!146111 () Bool)

(assert (=> b!125470 m!146111))

(assert (=> b!125472 m!145261))

(assert (=> b!125472 m!145261))

(assert (=> b!125472 m!146111))

(assert (=> d!37451 d!37683))

(declare-fun b!125473 () Bool)

(declare-fun e!81984 () Option!171)

(assert (=> b!125473 (= e!81984 (Some!170 (_2!1290 (h!2313 lt!64369))))))

(declare-fun b!125476 () Bool)

(declare-fun e!81985 () Option!171)

(assert (=> b!125476 (= e!81985 None!169)))

(declare-fun b!125474 () Bool)

(assert (=> b!125474 (= e!81984 e!81985)))

(declare-fun c!22877 () Bool)

(assert (=> b!125474 (= c!22877 (and ((_ is Cons!1712) lt!64369) (not (= (_1!1290 (h!2313 lt!64369)) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!125475 () Bool)

(assert (=> b!125475 (= e!81985 (getValueByKey!165 (t!6055 lt!64369) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun d!37685 () Bool)

(declare-fun c!22876 () Bool)

(assert (=> d!37685 (= c!22876 (and ((_ is Cons!1712) lt!64369) (= (_1!1290 (h!2313 lt!64369)) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!37685 (= (getValueByKey!165 lt!64369 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) e!81984)))

(assert (= (and d!37685 c!22876) b!125473))

(assert (= (and d!37685 (not c!22876)) b!125474))

(assert (= (and b!125474 c!22877) b!125475))

(assert (= (and b!125474 (not c!22877)) b!125476))

(declare-fun m!146113 () Bool)

(assert (=> b!125475 m!146113))

(assert (=> d!37451 d!37685))

(declare-fun d!37687 () Bool)

(assert (=> d!37687 (= (getValueByKey!165 lt!64369 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!170 (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!64722 () Unit!3878)

(assert (=> d!37687 (= lt!64722 (choose!764 lt!64369 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!81986 () Bool)

(assert (=> d!37687 e!81986))

(declare-fun res!60757 () Bool)

(assert (=> d!37687 (=> (not res!60757) (not e!81986))))

(assert (=> d!37687 (= res!60757 (isStrictlySorted!311 lt!64369))))

(assert (=> d!37687 (= (lemmaContainsTupThenGetReturnValue!82 lt!64369 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!64722)))

(declare-fun b!125477 () Bool)

(declare-fun res!60758 () Bool)

(assert (=> b!125477 (=> (not res!60758) (not e!81986))))

(assert (=> b!125477 (= res!60758 (containsKey!169 lt!64369 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!125478 () Bool)

(assert (=> b!125478 (= e!81986 (contains!874 lt!64369 (tuple2!2561 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!37687 res!60757) b!125477))

(assert (= (and b!125477 res!60758) b!125478))

(assert (=> d!37687 m!145255))

(declare-fun m!146115 () Bool)

(assert (=> d!37687 m!146115))

(declare-fun m!146117 () Bool)

(assert (=> d!37687 m!146117))

(declare-fun m!146119 () Bool)

(assert (=> b!125477 m!146119))

(declare-fun m!146121 () Bool)

(assert (=> b!125478 m!146121))

(assert (=> d!37451 d!37687))

(declare-fun b!125479 () Bool)

(declare-fun e!81989 () List!1716)

(declare-fun call!13455 () List!1716)

(assert (=> b!125479 (= e!81989 call!13455)))

(declare-fun bm!13451 () Bool)

(declare-fun c!22878 () Bool)

(declare-fun call!13454 () List!1716)

(declare-fun e!81988 () List!1716)

(assert (=> bm!13451 (= call!13454 ($colon$colon!87 e!81988 (ite c!22878 (h!2313 (toList!856 call!13323)) (tuple2!2561 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun c!22879 () Bool)

(assert (=> bm!13451 (= c!22879 c!22878)))

(declare-fun d!37689 () Bool)

(declare-fun e!81990 () Bool)

(assert (=> d!37689 e!81990))

(declare-fun res!60759 () Bool)

(assert (=> d!37689 (=> (not res!60759) (not e!81990))))

(declare-fun lt!64723 () List!1716)

(assert (=> d!37689 (= res!60759 (isStrictlySorted!311 lt!64723))))

(declare-fun e!81987 () List!1716)

(assert (=> d!37689 (= lt!64723 e!81987)))

(assert (=> d!37689 (= c!22878 (and ((_ is Cons!1712) (toList!856 call!13323)) (bvslt (_1!1290 (h!2313 (toList!856 call!13323))) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!37689 (isStrictlySorted!311 (toList!856 call!13323))))

(assert (=> d!37689 (= (insertStrictlySorted!84 (toList!856 call!13323) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!64723)))

(declare-fun b!125480 () Bool)

(assert (=> b!125480 (= e!81990 (contains!874 lt!64723 (tuple2!2561 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!125481 () Bool)

(assert (=> b!125481 (= e!81989 call!13455)))

(declare-fun c!22880 () Bool)

(declare-fun c!22881 () Bool)

(declare-fun b!125482 () Bool)

(assert (=> b!125482 (= e!81988 (ite c!22880 (t!6055 (toList!856 call!13323)) (ite c!22881 (Cons!1712 (h!2313 (toList!856 call!13323)) (t!6055 (toList!856 call!13323))) Nil!1713)))))

(declare-fun b!125483 () Bool)

(declare-fun e!81991 () List!1716)

(declare-fun call!13456 () List!1716)

(assert (=> b!125483 (= e!81991 call!13456)))

(declare-fun b!125484 () Bool)

(assert (=> b!125484 (= c!22881 (and ((_ is Cons!1712) (toList!856 call!13323)) (bvsgt (_1!1290 (h!2313 (toList!856 call!13323))) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> b!125484 (= e!81991 e!81989)))

(declare-fun b!125485 () Bool)

(declare-fun res!60760 () Bool)

(assert (=> b!125485 (=> (not res!60760) (not e!81990))))

(assert (=> b!125485 (= res!60760 (containsKey!169 lt!64723 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!125486 () Bool)

(assert (=> b!125486 (= e!81987 call!13454)))

(declare-fun b!125487 () Bool)

(assert (=> b!125487 (= e!81987 e!81991)))

(assert (=> b!125487 (= c!22880 (and ((_ is Cons!1712) (toList!856 call!13323)) (= (_1!1290 (h!2313 (toList!856 call!13323))) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun bm!13452 () Bool)

(assert (=> bm!13452 (= call!13455 call!13456)))

(declare-fun bm!13453 () Bool)

(assert (=> bm!13453 (= call!13456 call!13454)))

(declare-fun b!125488 () Bool)

(assert (=> b!125488 (= e!81988 (insertStrictlySorted!84 (t!6055 (toList!856 call!13323)) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!37689 c!22878) b!125486))

(assert (= (and d!37689 (not c!22878)) b!125487))

(assert (= (and b!125487 c!22880) b!125483))

(assert (= (and b!125487 (not c!22880)) b!125484))

(assert (= (and b!125484 c!22881) b!125479))

(assert (= (and b!125484 (not c!22881)) b!125481))

(assert (= (or b!125479 b!125481) bm!13452))

(assert (= (or b!125483 bm!13452) bm!13453))

(assert (= (or b!125486 bm!13453) bm!13451))

(assert (= (and bm!13451 c!22879) b!125488))

(assert (= (and bm!13451 (not c!22879)) b!125482))

(assert (= (and d!37689 res!60759) b!125485))

(assert (= (and b!125485 res!60760) b!125480))

(declare-fun m!146123 () Bool)

(assert (=> bm!13451 m!146123))

(declare-fun m!146125 () Bool)

(assert (=> d!37689 m!146125))

(declare-fun m!146127 () Bool)

(assert (=> d!37689 m!146127))

(declare-fun m!146129 () Bool)

(assert (=> b!125488 m!146129))

(declare-fun m!146131 () Bool)

(assert (=> b!125480 m!146131))

(declare-fun m!146133 () Bool)

(assert (=> b!125485 m!146133))

(assert (=> d!37451 d!37689))

(assert (=> b!124945 d!37551))

(declare-fun d!37691 () Bool)

(declare-fun res!60761 () Bool)

(declare-fun e!81992 () Bool)

(assert (=> d!37691 (=> res!60761 e!81992)))

(assert (=> d!37691 (= res!60761 (and ((_ is Cons!1712) (toList!856 e!81515)) (= (_1!1290 (h!2313 (toList!856 e!81515))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))))))

(assert (=> d!37691 (= (containsKey!169 (toList!856 e!81515) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) e!81992)))

(declare-fun b!125489 () Bool)

(declare-fun e!81993 () Bool)

(assert (=> b!125489 (= e!81992 e!81993)))

(declare-fun res!60762 () Bool)

(assert (=> b!125489 (=> (not res!60762) (not e!81993))))

(assert (=> b!125489 (= res!60762 (and (or (not ((_ is Cons!1712) (toList!856 e!81515))) (bvsle (_1!1290 (h!2313 (toList!856 e!81515))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))) ((_ is Cons!1712) (toList!856 e!81515)) (bvslt (_1!1290 (h!2313 (toList!856 e!81515))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))))))

(declare-fun b!125490 () Bool)

(assert (=> b!125490 (= e!81993 (containsKey!169 (t!6055 (toList!856 e!81515)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (= (and d!37691 (not res!60761)) b!125489))

(assert (= (and b!125489 res!60762) b!125490))

(assert (=> b!125490 m!144661))

(declare-fun m!146135 () Bool)

(assert (=> b!125490 m!146135))

(assert (=> d!37463 d!37691))

(declare-fun b!125503 () Bool)

(declare-fun c!22888 () Bool)

(declare-fun lt!64729 () (_ BitVec 64))

(assert (=> b!125503 (= c!22888 (= lt!64729 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!82000 () SeekEntryResult!279)

(declare-fun e!82001 () SeekEntryResult!279)

(assert (=> b!125503 (= e!82000 e!82001)))

(declare-fun b!125504 () Bool)

(declare-fun e!82002 () SeekEntryResult!279)

(assert (=> b!125504 (= e!82002 e!82000)))

(declare-fun c!22889 () Bool)

(assert (=> b!125504 (= c!22889 (= lt!64729 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun d!37693 () Bool)

(declare-fun lt!64728 () SeekEntryResult!279)

(assert (=> d!37693 (and (or ((_ is Undefined!279) lt!64728) (not ((_ is Found!279) lt!64728)) (and (bvsge (index!3271 lt!64728) #b00000000000000000000000000000000) (bvslt (index!3271 lt!64728) (size!2481 (_keys!4493 newMap!16))))) (or ((_ is Undefined!279) lt!64728) ((_ is Found!279) lt!64728) (not ((_ is MissingVacant!279) lt!64728)) (not (= (index!3273 lt!64728) (index!3272 lt!64358))) (and (bvsge (index!3273 lt!64728) #b00000000000000000000000000000000) (bvslt (index!3273 lt!64728) (size!2481 (_keys!4493 newMap!16))))) (or ((_ is Undefined!279) lt!64728) (ite ((_ is Found!279) lt!64728) (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64728)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (and ((_ is MissingVacant!279) lt!64728) (= (index!3273 lt!64728) (index!3272 lt!64358)) (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3273 lt!64728)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!37693 (= lt!64728 e!82002)))

(declare-fun c!22890 () Bool)

(assert (=> d!37693 (= c!22890 (bvsge (x!14828 lt!64358) #b01111111111111111111111111111110))))

(assert (=> d!37693 (= lt!64729 (select (arr!2218 (_keys!4493 newMap!16)) (index!3272 lt!64358)))))

(assert (=> d!37693 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37693 (= (seekKeyOrZeroReturnVacant!0 (x!14828 lt!64358) (index!3272 lt!64358) (index!3272 lt!64358) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (_keys!4493 newMap!16) (mask!7010 newMap!16)) lt!64728)))

(declare-fun b!125505 () Bool)

(assert (=> b!125505 (= e!82002 Undefined!279)))

(declare-fun b!125506 () Bool)

(assert (=> b!125506 (= e!82001 (seekKeyOrZeroReturnVacant!0 (bvadd (x!14828 lt!64358) #b00000000000000000000000000000001) (nextIndex!0 (index!3272 lt!64358) (x!14828 lt!64358) (mask!7010 newMap!16)) (index!3272 lt!64358) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (_keys!4493 newMap!16) (mask!7010 newMap!16)))))

(declare-fun b!125507 () Bool)

(assert (=> b!125507 (= e!82000 (Found!279 (index!3272 lt!64358)))))

(declare-fun b!125508 () Bool)

(assert (=> b!125508 (= e!82001 (MissingVacant!279 (index!3272 lt!64358)))))

(assert (= (and d!37693 c!22890) b!125505))

(assert (= (and d!37693 (not c!22890)) b!125504))

(assert (= (and b!125504 c!22889) b!125507))

(assert (= (and b!125504 (not c!22889)) b!125503))

(assert (= (and b!125503 c!22888) b!125508))

(assert (= (and b!125503 (not c!22888)) b!125506))

(declare-fun m!146137 () Bool)

(assert (=> d!37693 m!146137))

(declare-fun m!146139 () Bool)

(assert (=> d!37693 m!146139))

(assert (=> d!37693 m!145211))

(assert (=> d!37693 m!145009))

(declare-fun m!146141 () Bool)

(assert (=> b!125506 m!146141))

(assert (=> b!125506 m!146141))

(assert (=> b!125506 m!144661))

(declare-fun m!146143 () Bool)

(assert (=> b!125506 m!146143))

(assert (=> b!125030 d!37693))

(declare-fun d!37695 () Bool)

(declare-fun e!82004 () Bool)

(assert (=> d!37695 e!82004))

(declare-fun res!60763 () Bool)

(assert (=> d!37695 (=> res!60763 e!82004)))

(declare-fun lt!64730 () Bool)

(assert (=> d!37695 (= res!60763 (not lt!64730))))

(declare-fun lt!64733 () Bool)

(assert (=> d!37695 (= lt!64730 lt!64733)))

(declare-fun lt!64731 () Unit!3878)

(declare-fun e!82003 () Unit!3878)

(assert (=> d!37695 (= lt!64731 e!82003)))

(declare-fun c!22891 () Bool)

(assert (=> d!37695 (= c!22891 lt!64733)))

(assert (=> d!37695 (= lt!64733 (containsKey!169 (toList!856 lt!64320) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!37695 (= (contains!873 lt!64320 #b0000000000000000000000000000000000000000000000000000000000000000) lt!64730)))

(declare-fun b!125509 () Bool)

(declare-fun lt!64732 () Unit!3878)

(assert (=> b!125509 (= e!82003 lt!64732)))

(assert (=> b!125509 (= lt!64732 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64320) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!125509 (isDefined!119 (getValueByKey!165 (toList!856 lt!64320) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!125510 () Bool)

(declare-fun Unit!3910 () Unit!3878)

(assert (=> b!125510 (= e!82003 Unit!3910)))

(declare-fun b!125511 () Bool)

(assert (=> b!125511 (= e!82004 (isDefined!119 (getValueByKey!165 (toList!856 lt!64320) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37695 c!22891) b!125509))

(assert (= (and d!37695 (not c!22891)) b!125510))

(assert (= (and d!37695 (not res!60763)) b!125511))

(declare-fun m!146145 () Bool)

(assert (=> d!37695 m!146145))

(declare-fun m!146147 () Bool)

(assert (=> b!125509 m!146147))

(assert (=> b!125509 m!146091))

(assert (=> b!125509 m!146091))

(declare-fun m!146149 () Bool)

(assert (=> b!125509 m!146149))

(assert (=> b!125511 m!146091))

(assert (=> b!125511 m!146091))

(assert (=> b!125511 m!146149))

(assert (=> bm!13380 d!37695))

(declare-fun d!37697 () Bool)

(declare-fun e!82006 () Bool)

(assert (=> d!37697 e!82006))

(declare-fun res!60764 () Bool)

(assert (=> d!37697 (=> res!60764 e!82006)))

(declare-fun lt!64734 () Bool)

(assert (=> d!37697 (= res!60764 (not lt!64734))))

(declare-fun lt!64737 () Bool)

(assert (=> d!37697 (= lt!64734 lt!64737)))

(declare-fun lt!64735 () Unit!3878)

(declare-fun e!82005 () Unit!3878)

(assert (=> d!37697 (= lt!64735 e!82005)))

(declare-fun c!22892 () Bool)

(assert (=> d!37697 (= c!22892 lt!64737)))

(assert (=> d!37697 (= lt!64737 (containsKey!169 (toList!856 lt!64336) (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> d!37697 (= (contains!873 lt!64336 (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))) lt!64734)))

(declare-fun b!125512 () Bool)

(declare-fun lt!64736 () Unit!3878)

(assert (=> b!125512 (= e!82005 lt!64736)))

(assert (=> b!125512 (= lt!64736 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64336) (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> b!125512 (isDefined!119 (getValueByKey!165 (toList!856 lt!64336) (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun b!125513 () Bool)

(declare-fun Unit!3911 () Unit!3878)

(assert (=> b!125513 (= e!82005 Unit!3911)))

(declare-fun b!125514 () Bool)

(assert (=> b!125514 (= e!82006 (isDefined!119 (getValueByKey!165 (toList!856 lt!64336) (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(assert (= (and d!37697 c!22892) b!125512))

(assert (= (and d!37697 (not c!22892)) b!125513))

(assert (= (and d!37697 (not res!60764)) b!125514))

(declare-fun m!146151 () Bool)

(assert (=> d!37697 m!146151))

(declare-fun m!146153 () Bool)

(assert (=> b!125512 m!146153))

(assert (=> b!125512 m!145187))

(assert (=> b!125512 m!145187))

(declare-fun m!146155 () Bool)

(assert (=> b!125512 m!146155))

(assert (=> b!125514 m!145187))

(assert (=> b!125514 m!145187))

(assert (=> b!125514 m!146155))

(assert (=> d!37435 d!37697))

(declare-fun b!125515 () Bool)

(declare-fun e!82007 () Option!171)

(assert (=> b!125515 (= e!82007 (Some!170 (_2!1290 (h!2313 lt!64338))))))

(declare-fun b!125518 () Bool)

(declare-fun e!82008 () Option!171)

(assert (=> b!125518 (= e!82008 None!169)))

(declare-fun b!125516 () Bool)

(assert (=> b!125516 (= e!82007 e!82008)))

(declare-fun c!22894 () Bool)

(assert (=> b!125516 (= c!22894 (and ((_ is Cons!1712) lt!64338) (not (= (_1!1290 (h!2313 lt!64338)) (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))))

(declare-fun b!125517 () Bool)

(assert (=> b!125517 (= e!82008 (getValueByKey!165 (t!6055 lt!64338) (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun c!22893 () Bool)

(declare-fun d!37699 () Bool)

(assert (=> d!37699 (= c!22893 (and ((_ is Cons!1712) lt!64338) (= (_1!1290 (h!2313 lt!64338)) (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(assert (=> d!37699 (= (getValueByKey!165 lt!64338 (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))) e!82007)))

(assert (= (and d!37699 c!22893) b!125515))

(assert (= (and d!37699 (not c!22893)) b!125516))

(assert (= (and b!125516 c!22894) b!125517))

(assert (= (and b!125516 (not c!22894)) b!125518))

(declare-fun m!146157 () Bool)

(assert (=> b!125517 m!146157))

(assert (=> d!37435 d!37699))

(declare-fun d!37701 () Bool)

(assert (=> d!37701 (= (getValueByKey!165 lt!64338 (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))) (Some!170 (_2!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun lt!64738 () Unit!3878)

(assert (=> d!37701 (= lt!64738 (choose!764 lt!64338 (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) (_2!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun e!82009 () Bool)

(assert (=> d!37701 e!82009))

(declare-fun res!60765 () Bool)

(assert (=> d!37701 (=> (not res!60765) (not e!82009))))

(assert (=> d!37701 (= res!60765 (isStrictlySorted!311 lt!64338))))

(assert (=> d!37701 (= (lemmaContainsTupThenGetReturnValue!82 lt!64338 (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) (_2!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))) lt!64738)))

(declare-fun b!125519 () Bool)

(declare-fun res!60766 () Bool)

(assert (=> b!125519 (=> (not res!60766) (not e!82009))))

(assert (=> b!125519 (= res!60766 (containsKey!169 lt!64338 (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun b!125520 () Bool)

(assert (=> b!125520 (= e!82009 (contains!874 lt!64338 (tuple2!2561 (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) (_2!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(assert (= (and d!37701 res!60765) b!125519))

(assert (= (and b!125519 res!60766) b!125520))

(assert (=> d!37701 m!145181))

(declare-fun m!146159 () Bool)

(assert (=> d!37701 m!146159))

(declare-fun m!146161 () Bool)

(assert (=> d!37701 m!146161))

(declare-fun m!146163 () Bool)

(assert (=> b!125519 m!146163))

(declare-fun m!146165 () Bool)

(assert (=> b!125520 m!146165))

(assert (=> d!37435 d!37701))

(declare-fun b!125521 () Bool)

(declare-fun e!82012 () List!1716)

(declare-fun call!13458 () List!1716)

(assert (=> b!125521 (= e!82012 call!13458)))

(declare-fun e!82011 () List!1716)

(declare-fun c!22895 () Bool)

(declare-fun call!13457 () List!1716)

(declare-fun bm!13454 () Bool)

(assert (=> bm!13454 (= call!13457 ($colon$colon!87 e!82011 (ite c!22895 (h!2313 (toList!856 (ite c!22694 call!13357 (ite c!22696 call!13360 call!13363)))) (tuple2!2561 (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) (_2!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))))

(declare-fun c!22896 () Bool)

(assert (=> bm!13454 (= c!22896 c!22895)))

(declare-fun d!37703 () Bool)

(declare-fun e!82013 () Bool)

(assert (=> d!37703 e!82013))

(declare-fun res!60767 () Bool)

(assert (=> d!37703 (=> (not res!60767) (not e!82013))))

(declare-fun lt!64739 () List!1716)

(assert (=> d!37703 (= res!60767 (isStrictlySorted!311 lt!64739))))

(declare-fun e!82010 () List!1716)

(assert (=> d!37703 (= lt!64739 e!82010)))

(assert (=> d!37703 (= c!22895 (and ((_ is Cons!1712) (toList!856 (ite c!22694 call!13357 (ite c!22696 call!13360 call!13363)))) (bvslt (_1!1290 (h!2313 (toList!856 (ite c!22694 call!13357 (ite c!22696 call!13360 call!13363))))) (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(assert (=> d!37703 (isStrictlySorted!311 (toList!856 (ite c!22694 call!13357 (ite c!22696 call!13360 call!13363))))))

(assert (=> d!37703 (= (insertStrictlySorted!84 (toList!856 (ite c!22694 call!13357 (ite c!22696 call!13360 call!13363))) (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) (_2!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))) lt!64739)))

(declare-fun b!125522 () Bool)

(assert (=> b!125522 (= e!82013 (contains!874 lt!64739 (tuple2!2561 (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) (_2!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(declare-fun b!125523 () Bool)

(assert (=> b!125523 (= e!82012 call!13458)))

(declare-fun c!22897 () Bool)

(declare-fun c!22898 () Bool)

(declare-fun b!125524 () Bool)

(assert (=> b!125524 (= e!82011 (ite c!22897 (t!6055 (toList!856 (ite c!22694 call!13357 (ite c!22696 call!13360 call!13363)))) (ite c!22898 (Cons!1712 (h!2313 (toList!856 (ite c!22694 call!13357 (ite c!22696 call!13360 call!13363)))) (t!6055 (toList!856 (ite c!22694 call!13357 (ite c!22696 call!13360 call!13363))))) Nil!1713)))))

(declare-fun b!125525 () Bool)

(declare-fun e!82014 () List!1716)

(declare-fun call!13459 () List!1716)

(assert (=> b!125525 (= e!82014 call!13459)))

(declare-fun b!125526 () Bool)

(assert (=> b!125526 (= c!22898 (and ((_ is Cons!1712) (toList!856 (ite c!22694 call!13357 (ite c!22696 call!13360 call!13363)))) (bvsgt (_1!1290 (h!2313 (toList!856 (ite c!22694 call!13357 (ite c!22696 call!13360 call!13363))))) (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(assert (=> b!125526 (= e!82014 e!82012)))

(declare-fun b!125527 () Bool)

(declare-fun res!60768 () Bool)

(assert (=> b!125527 (=> (not res!60768) (not e!82013))))

(assert (=> b!125527 (= res!60768 (containsKey!169 lt!64739 (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun b!125528 () Bool)

(assert (=> b!125528 (= e!82010 call!13457)))

(declare-fun b!125529 () Bool)

(assert (=> b!125529 (= e!82010 e!82014)))

(assert (=> b!125529 (= c!22897 (and ((_ is Cons!1712) (toList!856 (ite c!22694 call!13357 (ite c!22696 call!13360 call!13363)))) (= (_1!1290 (h!2313 (toList!856 (ite c!22694 call!13357 (ite c!22696 call!13360 call!13363))))) (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(declare-fun bm!13455 () Bool)

(assert (=> bm!13455 (= call!13458 call!13459)))

(declare-fun bm!13456 () Bool)

(assert (=> bm!13456 (= call!13459 call!13457)))

(declare-fun b!125530 () Bool)

(assert (=> b!125530 (= e!82011 (insertStrictlySorted!84 (t!6055 (toList!856 (ite c!22694 call!13357 (ite c!22696 call!13360 call!13363)))) (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) (_2!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (= (and d!37703 c!22895) b!125528))

(assert (= (and d!37703 (not c!22895)) b!125529))

(assert (= (and b!125529 c!22897) b!125525))

(assert (= (and b!125529 (not c!22897)) b!125526))

(assert (= (and b!125526 c!22898) b!125521))

(assert (= (and b!125526 (not c!22898)) b!125523))

(assert (= (or b!125521 b!125523) bm!13455))

(assert (= (or b!125525 bm!13455) bm!13456))

(assert (= (or b!125528 bm!13456) bm!13454))

(assert (= (and bm!13454 c!22896) b!125530))

(assert (= (and bm!13454 (not c!22896)) b!125524))

(assert (= (and d!37703 res!60767) b!125527))

(assert (= (and b!125527 res!60768) b!125522))

(declare-fun m!146167 () Bool)

(assert (=> bm!13454 m!146167))

(declare-fun m!146169 () Bool)

(assert (=> d!37703 m!146169))

(declare-fun m!146171 () Bool)

(assert (=> d!37703 m!146171))

(declare-fun m!146173 () Bool)

(assert (=> b!125530 m!146173))

(declare-fun m!146175 () Bool)

(assert (=> b!125522 m!146175))

(declare-fun m!146177 () Bool)

(assert (=> b!125527 m!146177))

(assert (=> d!37435 d!37703))

(declare-fun d!37705 () Bool)

(declare-fun e!82016 () Bool)

(assert (=> d!37705 e!82016))

(declare-fun res!60769 () Bool)

(assert (=> d!37705 (=> res!60769 e!82016)))

(declare-fun lt!64740 () Bool)

(assert (=> d!37705 (= res!60769 (not lt!64740))))

(declare-fun lt!64743 () Bool)

(assert (=> d!37705 (= lt!64740 lt!64743)))

(declare-fun lt!64741 () Unit!3878)

(declare-fun e!82015 () Unit!3878)

(assert (=> d!37705 (= lt!64741 e!82015)))

(declare-fun c!22899 () Bool)

(assert (=> d!37705 (= c!22899 lt!64743)))

(assert (=> d!37705 (= lt!64743 (containsKey!169 (toList!856 lt!64211) (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> d!37705 (= (contains!873 lt!64211 (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64740)))

(declare-fun b!125531 () Bool)

(declare-fun lt!64742 () Unit!3878)

(assert (=> b!125531 (= e!82015 lt!64742)))

(assert (=> b!125531 (= lt!64742 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64211) (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> b!125531 (isDefined!119 (getValueByKey!165 (toList!856 lt!64211) (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun b!125532 () Bool)

(declare-fun Unit!3912 () Unit!3878)

(assert (=> b!125532 (= e!82015 Unit!3912)))

(declare-fun b!125533 () Bool)

(assert (=> b!125533 (= e!82016 (isDefined!119 (getValueByKey!165 (toList!856 lt!64211) (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (= (and d!37705 c!22899) b!125531))

(assert (= (and d!37705 (not c!22899)) b!125532))

(assert (= (and d!37705 (not res!60769)) b!125533))

(declare-fun m!146179 () Bool)

(assert (=> d!37705 m!146179))

(declare-fun m!146181 () Bool)

(assert (=> b!125531 m!146181))

(assert (=> b!125531 m!144891))

(assert (=> b!125531 m!144891))

(declare-fun m!146183 () Bool)

(assert (=> b!125531 m!146183))

(assert (=> b!125533 m!144891))

(assert (=> b!125533 m!144891))

(assert (=> b!125533 m!146183))

(assert (=> d!37365 d!37705))

(declare-fun b!125534 () Bool)

(declare-fun e!82017 () Option!171)

(assert (=> b!125534 (= e!82017 (Some!170 (_2!1290 (h!2313 lt!64213))))))

(declare-fun b!125537 () Bool)

(declare-fun e!82018 () Option!171)

(assert (=> b!125537 (= e!82018 None!169)))

(declare-fun b!125535 () Bool)

(assert (=> b!125535 (= e!82017 e!82018)))

(declare-fun c!22901 () Bool)

(assert (=> b!125535 (= c!22901 (and ((_ is Cons!1712) lt!64213) (not (= (_1!1290 (h!2313 lt!64213)) (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(declare-fun b!125536 () Bool)

(assert (=> b!125536 (= e!82018 (getValueByKey!165 (t!6055 lt!64213) (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun c!22900 () Bool)

(declare-fun d!37707 () Bool)

(assert (=> d!37707 (= c!22900 (and ((_ is Cons!1712) lt!64213) (= (_1!1290 (h!2313 lt!64213)) (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> d!37707 (= (getValueByKey!165 lt!64213 (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) e!82017)))

(assert (= (and d!37707 c!22900) b!125534))

(assert (= (and d!37707 (not c!22900)) b!125535))

(assert (= (and b!125535 c!22901) b!125536))

(assert (= (and b!125535 (not c!22901)) b!125537))

(declare-fun m!146185 () Bool)

(assert (=> b!125536 m!146185))

(assert (=> d!37365 d!37707))

(declare-fun d!37709 () Bool)

(assert (=> d!37709 (= (getValueByKey!165 lt!64213 (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) (Some!170 (_2!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun lt!64744 () Unit!3878)

(assert (=> d!37709 (= lt!64744 (choose!764 lt!64213 (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun e!82019 () Bool)

(assert (=> d!37709 e!82019))

(declare-fun res!60770 () Bool)

(assert (=> d!37709 (=> (not res!60770) (not e!82019))))

(assert (=> d!37709 (= res!60770 (isStrictlySorted!311 lt!64213))))

(assert (=> d!37709 (= (lemmaContainsTupThenGetReturnValue!82 lt!64213 (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64744)))

(declare-fun b!125538 () Bool)

(declare-fun res!60771 () Bool)

(assert (=> b!125538 (=> (not res!60771) (not e!82019))))

(assert (=> b!125538 (= res!60771 (containsKey!169 lt!64213 (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun b!125539 () Bool)

(assert (=> b!125539 (= e!82019 (contains!874 lt!64213 (tuple2!2561 (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (= (and d!37709 res!60770) b!125538))

(assert (= (and b!125538 res!60771) b!125539))

(assert (=> d!37709 m!144885))

(declare-fun m!146187 () Bool)

(assert (=> d!37709 m!146187))

(declare-fun m!146189 () Bool)

(assert (=> d!37709 m!146189))

(declare-fun m!146191 () Bool)

(assert (=> b!125538 m!146191))

(declare-fun m!146193 () Bool)

(assert (=> b!125539 m!146193))

(assert (=> d!37365 d!37709))

(declare-fun b!125540 () Bool)

(declare-fun e!82022 () List!1716)

(declare-fun call!13461 () List!1716)

(assert (=> b!125540 (= e!82022 call!13461)))

(declare-fun call!13460 () List!1716)

(declare-fun c!22902 () Bool)

(declare-fun e!82021 () List!1716)

(declare-fun bm!13457 () Bool)

(assert (=> bm!13457 (= call!13460 ($colon$colon!87 e!82021 (ite c!22902 (h!2313 (toList!856 lt!64198)) (tuple2!2561 (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(declare-fun c!22903 () Bool)

(assert (=> bm!13457 (= c!22903 c!22902)))

(declare-fun d!37711 () Bool)

(declare-fun e!82023 () Bool)

(assert (=> d!37711 e!82023))

(declare-fun res!60772 () Bool)

(assert (=> d!37711 (=> (not res!60772) (not e!82023))))

(declare-fun lt!64745 () List!1716)

(assert (=> d!37711 (= res!60772 (isStrictlySorted!311 lt!64745))))

(declare-fun e!82020 () List!1716)

(assert (=> d!37711 (= lt!64745 e!82020)))

(assert (=> d!37711 (= c!22902 (and ((_ is Cons!1712) (toList!856 lt!64198)) (bvslt (_1!1290 (h!2313 (toList!856 lt!64198))) (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> d!37711 (isStrictlySorted!311 (toList!856 lt!64198))))

(assert (=> d!37711 (= (insertStrictlySorted!84 (toList!856 lt!64198) (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64745)))

(declare-fun b!125541 () Bool)

(assert (=> b!125541 (= e!82023 (contains!874 lt!64745 (tuple2!2561 (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun b!125542 () Bool)

(assert (=> b!125542 (= e!82022 call!13461)))

(declare-fun c!22904 () Bool)

(declare-fun c!22905 () Bool)

(declare-fun b!125543 () Bool)

(assert (=> b!125543 (= e!82021 (ite c!22904 (t!6055 (toList!856 lt!64198)) (ite c!22905 (Cons!1712 (h!2313 (toList!856 lt!64198)) (t!6055 (toList!856 lt!64198))) Nil!1713)))))

(declare-fun b!125544 () Bool)

(declare-fun e!82024 () List!1716)

(declare-fun call!13462 () List!1716)

(assert (=> b!125544 (= e!82024 call!13462)))

(declare-fun b!125545 () Bool)

(assert (=> b!125545 (= c!22905 (and ((_ is Cons!1712) (toList!856 lt!64198)) (bvsgt (_1!1290 (h!2313 (toList!856 lt!64198))) (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> b!125545 (= e!82024 e!82022)))

(declare-fun b!125546 () Bool)

(declare-fun res!60773 () Bool)

(assert (=> b!125546 (=> (not res!60773) (not e!82023))))

(assert (=> b!125546 (= res!60773 (containsKey!169 lt!64745 (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun b!125547 () Bool)

(assert (=> b!125547 (= e!82020 call!13460)))

(declare-fun b!125548 () Bool)

(assert (=> b!125548 (= e!82020 e!82024)))

(assert (=> b!125548 (= c!22904 (and ((_ is Cons!1712) (toList!856 lt!64198)) (= (_1!1290 (h!2313 (toList!856 lt!64198))) (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun bm!13458 () Bool)

(assert (=> bm!13458 (= call!13461 call!13462)))

(declare-fun bm!13459 () Bool)

(assert (=> bm!13459 (= call!13462 call!13460)))

(declare-fun b!125549 () Bool)

(assert (=> b!125549 (= e!82021 (insertStrictlySorted!84 (t!6055 (toList!856 lt!64198)) (_1!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (= (and d!37711 c!22902) b!125547))

(assert (= (and d!37711 (not c!22902)) b!125548))

(assert (= (and b!125548 c!22904) b!125544))

(assert (= (and b!125548 (not c!22904)) b!125545))

(assert (= (and b!125545 c!22905) b!125540))

(assert (= (and b!125545 (not c!22905)) b!125542))

(assert (= (or b!125540 b!125542) bm!13458))

(assert (= (or b!125544 bm!13458) bm!13459))

(assert (= (or b!125547 bm!13459) bm!13457))

(assert (= (and bm!13457 c!22903) b!125549))

(assert (= (and bm!13457 (not c!22903)) b!125543))

(assert (= (and d!37711 res!60772) b!125546))

(assert (= (and b!125546 res!60773) b!125541))

(declare-fun m!146195 () Bool)

(assert (=> bm!13457 m!146195))

(declare-fun m!146197 () Bool)

(assert (=> d!37711 m!146197))

(declare-fun m!146199 () Bool)

(assert (=> d!37711 m!146199))

(declare-fun m!146201 () Bool)

(assert (=> b!125549 m!146201))

(declare-fun m!146203 () Bool)

(assert (=> b!125541 m!146203))

(declare-fun m!146205 () Bool)

(assert (=> b!125546 m!146205))

(assert (=> d!37365 d!37711))

(declare-fun b!125550 () Bool)

(declare-fun e!82027 () Bool)

(declare-fun e!82028 () Bool)

(assert (=> b!125550 (= e!82027 e!82028)))

(declare-fun c!22906 () Bool)

(assert (=> b!125550 (= c!22906 (validKeyInArray!0 (select (arr!2218 (_keys!4493 (_2!1291 lt!64127))) #b00000000000000000000000000000000)))))

(declare-fun b!125551 () Bool)

(declare-fun e!82025 () Bool)

(assert (=> b!125551 (= e!82025 e!82027)))

(declare-fun res!60774 () Bool)

(assert (=> b!125551 (=> (not res!60774) (not e!82027))))

(declare-fun e!82026 () Bool)

(assert (=> b!125551 (= res!60774 (not e!82026))))

(declare-fun res!60775 () Bool)

(assert (=> b!125551 (=> (not res!60775) (not e!82026))))

(assert (=> b!125551 (= res!60775 (validKeyInArray!0 (select (arr!2218 (_keys!4493 (_2!1291 lt!64127))) #b00000000000000000000000000000000)))))

(declare-fun d!37713 () Bool)

(declare-fun res!60776 () Bool)

(assert (=> d!37713 (=> res!60776 e!82025)))

(assert (=> d!37713 (= res!60776 (bvsge #b00000000000000000000000000000000 (size!2481 (_keys!4493 (_2!1291 lt!64127)))))))

(assert (=> d!37713 (= (arrayNoDuplicates!0 (_keys!4493 (_2!1291 lt!64127)) #b00000000000000000000000000000000 Nil!1714) e!82025)))

(declare-fun b!125552 () Bool)

(declare-fun call!13463 () Bool)

(assert (=> b!125552 (= e!82028 call!13463)))

(declare-fun bm!13460 () Bool)

(assert (=> bm!13460 (= call!13463 (arrayNoDuplicates!0 (_keys!4493 (_2!1291 lt!64127)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!22906 (Cons!1713 (select (arr!2218 (_keys!4493 (_2!1291 lt!64127))) #b00000000000000000000000000000000) Nil!1714) Nil!1714)))))

(declare-fun b!125553 () Bool)

(assert (=> b!125553 (= e!82026 (contains!875 Nil!1714 (select (arr!2218 (_keys!4493 (_2!1291 lt!64127))) #b00000000000000000000000000000000)))))

(declare-fun b!125554 () Bool)

(assert (=> b!125554 (= e!82028 call!13463)))

(assert (= (and d!37713 (not res!60776)) b!125551))

(assert (= (and b!125551 res!60775) b!125553))

(assert (= (and b!125551 res!60774) b!125550))

(assert (= (and b!125550 c!22906) b!125552))

(assert (= (and b!125550 (not c!22906)) b!125554))

(assert (= (or b!125552 b!125554) bm!13460))

(assert (=> b!125550 m!145635))

(assert (=> b!125550 m!145635))

(assert (=> b!125550 m!145637))

(assert (=> b!125551 m!145635))

(assert (=> b!125551 m!145635))

(assert (=> b!125551 m!145637))

(assert (=> bm!13460 m!145635))

(declare-fun m!146207 () Bool)

(assert (=> bm!13460 m!146207))

(assert (=> b!125553 m!145635))

(assert (=> b!125553 m!145635))

(declare-fun m!146209 () Bool)

(assert (=> b!125553 m!146209))

(assert (=> b!125038 d!37713))

(declare-fun d!37715 () Bool)

(declare-fun e!82029 () Bool)

(assert (=> d!37715 e!82029))

(declare-fun res!60777 () Bool)

(assert (=> d!37715 (=> (not res!60777) (not e!82029))))

(declare-fun lt!64746 () ListLongMap!1681)

(assert (=> d!37715 (= res!60777 (contains!873 lt!64746 (_1!1290 (ite (or c!22776 c!22778) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))))))))

(declare-fun lt!64748 () List!1716)

(assert (=> d!37715 (= lt!64746 (ListLongMap!1682 lt!64748))))

(declare-fun lt!64749 () Unit!3878)

(declare-fun lt!64747 () Unit!3878)

(assert (=> d!37715 (= lt!64749 lt!64747)))

(assert (=> d!37715 (= (getValueByKey!165 lt!64748 (_1!1290 (ite (or c!22776 c!22778) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))))) (Some!170 (_2!1290 (ite (or c!22776 c!22778) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))))))))

(assert (=> d!37715 (= lt!64747 (lemmaContainsTupThenGetReturnValue!82 lt!64748 (_1!1290 (ite (or c!22776 c!22778) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))) (_2!1290 (ite (or c!22776 c!22778) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))))))))

(assert (=> d!37715 (= lt!64748 (insertStrictlySorted!84 (toList!856 (ite c!22776 call!13408 (ite c!22778 call!13411 call!13414))) (_1!1290 (ite (or c!22776 c!22778) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))) (_2!1290 (ite (or c!22776 c!22778) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))))))))

(assert (=> d!37715 (= (+!164 (ite c!22776 call!13408 (ite c!22778 call!13411 call!13414)) (ite (or c!22776 c!22778) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))) lt!64746)))

(declare-fun b!125555 () Bool)

(declare-fun res!60778 () Bool)

(assert (=> b!125555 (=> (not res!60778) (not e!82029))))

(assert (=> b!125555 (= res!60778 (= (getValueByKey!165 (toList!856 lt!64746) (_1!1290 (ite (or c!22776 c!22778) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))))) (Some!170 (_2!1290 (ite (or c!22776 c!22778) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))))))))

(declare-fun b!125556 () Bool)

(assert (=> b!125556 (= e!82029 (contains!874 (toList!856 lt!64746) (ite (or c!22776 c!22778) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!22675 c!22669) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2629 newMap!16))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))))))

(assert (= (and d!37715 res!60777) b!125555))

(assert (= (and b!125555 res!60778) b!125556))

(declare-fun m!146211 () Bool)

(assert (=> d!37715 m!146211))

(declare-fun m!146213 () Bool)

(assert (=> d!37715 m!146213))

(declare-fun m!146215 () Bool)

(assert (=> d!37715 m!146215))

(declare-fun m!146217 () Bool)

(assert (=> d!37715 m!146217))

(declare-fun m!146219 () Bool)

(assert (=> b!125555 m!146219))

(declare-fun m!146221 () Bool)

(assert (=> b!125556 m!146221))

(assert (=> bm!13407 d!37715))

(declare-fun d!37717 () Bool)

(assert (=> d!37717 (= (get!1448 (getValueByKey!165 (toList!856 lt!64187) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3110 (getValueByKey!165 (toList!856 lt!64187) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!37431 d!37717))

(assert (=> d!37431 d!37601))

(declare-fun d!37719 () Bool)

(assert (=> d!37719 (= (get!1447 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!124875 d!37719))

(declare-fun d!37721 () Bool)

(assert (=> d!37721 (isDefined!119 (getValueByKey!165 (toList!856 lt!64187) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!64750 () Unit!3878)

(assert (=> d!37721 (= lt!64750 (choose!763 (toList!856 lt!64187) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!82030 () Bool)

(assert (=> d!37721 e!82030))

(declare-fun res!60779 () Bool)

(assert (=> d!37721 (=> (not res!60779) (not e!82030))))

(assert (=> d!37721 (= res!60779 (isStrictlySorted!311 (toList!856 lt!64187)))))

(assert (=> d!37721 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64187) #b1000000000000000000000000000000000000000000000000000000000000000) lt!64750)))

(declare-fun b!125557 () Bool)

(assert (=> b!125557 (= e!82030 (containsKey!169 (toList!856 lt!64187) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!37721 res!60779) b!125557))

(assert (=> d!37721 m!144987))

(assert (=> d!37721 m!144987))

(assert (=> d!37721 m!144995))

(declare-fun m!146223 () Bool)

(assert (=> d!37721 m!146223))

(assert (=> d!37721 m!145911))

(assert (=> b!125557 m!144991))

(assert (=> b!124871 d!37721))

(declare-fun d!37723 () Bool)

(assert (=> d!37723 (= (isDefined!119 (getValueByKey!165 (toList!856 lt!64187) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!398 (getValueByKey!165 (toList!856 lt!64187) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!5195 () Bool)

(assert (= bs!5195 d!37723))

(assert (=> bs!5195 m!144987))

(declare-fun m!146225 () Bool)

(assert (=> bs!5195 m!146225))

(assert (=> b!124871 d!37723))

(assert (=> b!124871 d!37621))

(assert (=> d!37381 d!37365))

(declare-fun d!37725 () Bool)

(assert (=> d!37725 (= (apply!110 (+!164 lt!64198 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64183) (apply!110 lt!64198 lt!64183))))

(assert (=> d!37725 true))

(declare-fun _$34!939 () Unit!3878)

(assert (=> d!37725 (= (choose!755 lt!64198 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))) lt!64183) _$34!939)))

(declare-fun bs!5196 () Bool)

(assert (= bs!5196 d!37725))

(assert (=> bs!5196 m!144835))

(assert (=> bs!5196 m!144835))

(assert (=> bs!5196 m!144837))

(assert (=> bs!5196 m!144849))

(assert (=> d!37381 d!37725))

(assert (=> d!37381 d!37379))

(assert (=> d!37381 d!37375))

(declare-fun d!37727 () Bool)

(declare-fun e!82032 () Bool)

(assert (=> d!37727 e!82032))

(declare-fun res!60780 () Bool)

(assert (=> d!37727 (=> res!60780 e!82032)))

(declare-fun lt!64751 () Bool)

(assert (=> d!37727 (= res!60780 (not lt!64751))))

(declare-fun lt!64754 () Bool)

(assert (=> d!37727 (= lt!64751 lt!64754)))

(declare-fun lt!64752 () Unit!3878)

(declare-fun e!82031 () Unit!3878)

(assert (=> d!37727 (= lt!64752 e!82031)))

(declare-fun c!22907 () Bool)

(assert (=> d!37727 (= c!22907 lt!64754)))

(assert (=> d!37727 (= lt!64754 (containsKey!169 (toList!856 lt!64198) lt!64183))))

(assert (=> d!37727 (= (contains!873 lt!64198 lt!64183) lt!64751)))

(declare-fun b!125559 () Bool)

(declare-fun lt!64753 () Unit!3878)

(assert (=> b!125559 (= e!82031 lt!64753)))

(assert (=> b!125559 (= lt!64753 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64198) lt!64183))))

(assert (=> b!125559 (isDefined!119 (getValueByKey!165 (toList!856 lt!64198) lt!64183))))

(declare-fun b!125560 () Bool)

(declare-fun Unit!3913 () Unit!3878)

(assert (=> b!125560 (= e!82031 Unit!3913)))

(declare-fun b!125561 () Bool)

(assert (=> b!125561 (= e!82032 (isDefined!119 (getValueByKey!165 (toList!856 lt!64198) lt!64183)))))

(assert (= (and d!37727 c!22907) b!125559))

(assert (= (and d!37727 (not c!22907)) b!125560))

(assert (= (and d!37727 (not res!60780)) b!125561))

(declare-fun m!146227 () Bool)

(assert (=> d!37727 m!146227))

(declare-fun m!146229 () Bool)

(assert (=> b!125559 m!146229))

(assert (=> b!125559 m!144919))

(assert (=> b!125559 m!144919))

(declare-fun m!146231 () Bool)

(assert (=> b!125559 m!146231))

(assert (=> b!125561 m!144919))

(assert (=> b!125561 m!144919))

(assert (=> b!125561 m!146231))

(assert (=> d!37381 d!37727))

(declare-fun b!125562 () Bool)

(declare-fun e!82033 () Option!171)

(assert (=> b!125562 (= e!82033 (Some!170 (_2!1290 (h!2313 (toList!856 lt!64367)))))))

(declare-fun b!125565 () Bool)

(declare-fun e!82034 () Option!171)

(assert (=> b!125565 (= e!82034 None!169)))

(declare-fun b!125563 () Bool)

(assert (=> b!125563 (= e!82033 e!82034)))

(declare-fun c!22909 () Bool)

(assert (=> b!125563 (= c!22909 (and ((_ is Cons!1712) (toList!856 lt!64367)) (not (= (_1!1290 (h!2313 (toList!856 lt!64367))) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!125564 () Bool)

(assert (=> b!125564 (= e!82034 (getValueByKey!165 (t!6055 (toList!856 lt!64367)) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun d!37729 () Bool)

(declare-fun c!22908 () Bool)

(assert (=> d!37729 (= c!22908 (and ((_ is Cons!1712) (toList!856 lt!64367)) (= (_1!1290 (h!2313 (toList!856 lt!64367))) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!37729 (= (getValueByKey!165 (toList!856 lt!64367) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) e!82033)))

(assert (= (and d!37729 c!22908) b!125562))

(assert (= (and d!37729 (not c!22908)) b!125563))

(assert (= (and b!125563 c!22909) b!125564))

(assert (= (and b!125563 (not c!22909)) b!125565))

(declare-fun m!146233 () Bool)

(assert (=> b!125564 m!146233))

(assert (=> b!125041 d!37729))

(declare-fun d!37731 () Bool)

(assert (=> d!37731 (= (isDefined!119 (getValueByKey!165 (toList!856 call!13330) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))) (not (isEmpty!398 (getValueByKey!165 (toList!856 call!13330) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))))

(declare-fun bs!5197 () Bool)

(assert (= bs!5197 d!37731))

(assert (=> bs!5197 m!145229))

(declare-fun m!146235 () Bool)

(assert (=> bs!5197 m!146235))

(assert (=> b!125035 d!37731))

(declare-fun b!125566 () Bool)

(declare-fun e!82035 () Option!171)

(assert (=> b!125566 (= e!82035 (Some!170 (_2!1290 (h!2313 (toList!856 call!13330)))))))

(declare-fun b!125569 () Bool)

(declare-fun e!82036 () Option!171)

(assert (=> b!125569 (= e!82036 None!169)))

(declare-fun b!125567 () Bool)

(assert (=> b!125567 (= e!82035 e!82036)))

(declare-fun c!22911 () Bool)

(assert (=> b!125567 (= c!22911 (and ((_ is Cons!1712) (toList!856 call!13330)) (not (= (_1!1290 (h!2313 (toList!856 call!13330))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))))

(declare-fun b!125568 () Bool)

(assert (=> b!125568 (= e!82036 (getValueByKey!165 (t!6055 (toList!856 call!13330)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun c!22910 () Bool)

(declare-fun d!37733 () Bool)

(assert (=> d!37733 (= c!22910 (and ((_ is Cons!1712) (toList!856 call!13330)) (= (_1!1290 (h!2313 (toList!856 call!13330))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))))))

(assert (=> d!37733 (= (getValueByKey!165 (toList!856 call!13330) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) e!82035)))

(assert (= (and d!37733 c!22910) b!125566))

(assert (= (and d!37733 (not c!22910)) b!125567))

(assert (= (and b!125567 c!22911) b!125568))

(assert (= (and b!125567 (not c!22911)) b!125569))

(assert (=> b!125568 m!144661))

(declare-fun m!146237 () Bool)

(assert (=> b!125568 m!146237))

(assert (=> b!125035 d!37733))

(declare-fun d!37735 () Bool)

(assert (=> d!37735 (= (apply!110 lt!64320 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)) (get!1448 (getValueByKey!165 (toList!856 lt!64320) (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))))

(declare-fun bs!5198 () Bool)

(assert (= bs!5198 d!37735))

(assert (=> bs!5198 m!145047))

(declare-fun m!146239 () Bool)

(assert (=> bs!5198 m!146239))

(assert (=> bs!5198 m!146239))

(declare-fun m!146241 () Bool)

(assert (=> bs!5198 m!146241))

(assert (=> b!124952 d!37735))

(declare-fun c!22912 () Bool)

(declare-fun d!37737 () Bool)

(assert (=> d!37737 (= c!22912 ((_ is ValueCellFull!1074) (select (arr!2219 (ite c!22675 (_values!2747 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))))) #b00000000000000000000000000000000)))))

(declare-fun e!82037 () V!3427)

(assert (=> d!37737 (= (get!1445 (select (arr!2219 (ite c!22675 (_values!2747 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)) e!82037)))

(declare-fun b!125570 () Bool)

(assert (=> b!125570 (= e!82037 (get!1446 (select (arr!2219 (ite c!22675 (_values!2747 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!125571 () Bool)

(assert (=> b!125571 (= e!82037 (get!1447 (select (arr!2219 (ite c!22675 (_values!2747 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37737 c!22912) b!125570))

(assert (= (and d!37737 (not c!22912)) b!125571))

(assert (=> b!125570 m!145125))

(assert (=> b!125570 m!145061))

(declare-fun m!146243 () Bool)

(assert (=> b!125570 m!146243))

(assert (=> b!125571 m!145125))

(assert (=> b!125571 m!145061))

(declare-fun m!146245 () Bool)

(assert (=> b!125571 m!146245))

(assert (=> b!124952 d!37737))

(declare-fun d!37739 () Bool)

(assert (=> d!37739 (= (apply!110 (+!164 lt!64319 (tuple2!2561 lt!64328 (zeroValue!2629 newMap!16))) lt!64315) (apply!110 lt!64319 lt!64315))))

(declare-fun lt!64755 () Unit!3878)

(assert (=> d!37739 (= lt!64755 (choose!755 lt!64319 lt!64328 (zeroValue!2629 newMap!16) lt!64315))))

(declare-fun e!82038 () Bool)

(assert (=> d!37739 e!82038))

(declare-fun res!60781 () Bool)

(assert (=> d!37739 (=> (not res!60781) (not e!82038))))

(assert (=> d!37739 (= res!60781 (contains!873 lt!64319 lt!64315))))

(assert (=> d!37739 (= (addApplyDifferent!86 lt!64319 lt!64328 (zeroValue!2629 newMap!16) lt!64315) lt!64755)))

(declare-fun b!125572 () Bool)

(assert (=> b!125572 (= e!82038 (not (= lt!64315 lt!64328)))))

(assert (= (and d!37739 res!60781) b!125572))

(declare-fun m!146247 () Bool)

(assert (=> d!37739 m!146247))

(declare-fun m!146249 () Bool)

(assert (=> d!37739 m!146249))

(assert (=> d!37739 m!145143))

(assert (=> d!37739 m!145147))

(assert (=> d!37739 m!145143))

(assert (=> d!37739 m!145141))

(assert (=> b!124968 d!37739))

(declare-fun d!37741 () Bool)

(declare-fun e!82039 () Bool)

(assert (=> d!37741 e!82039))

(declare-fun res!60782 () Bool)

(assert (=> d!37741 (=> (not res!60782) (not e!82039))))

(declare-fun lt!64756 () ListLongMap!1681)

(assert (=> d!37741 (= res!60782 (contains!873 lt!64756 (_1!1290 (tuple2!2561 lt!64318 (minValue!2629 newMap!16)))))))

(declare-fun lt!64758 () List!1716)

(assert (=> d!37741 (= lt!64756 (ListLongMap!1682 lt!64758))))

(declare-fun lt!64759 () Unit!3878)

(declare-fun lt!64757 () Unit!3878)

(assert (=> d!37741 (= lt!64759 lt!64757)))

(assert (=> d!37741 (= (getValueByKey!165 lt!64758 (_1!1290 (tuple2!2561 lt!64318 (minValue!2629 newMap!16)))) (Some!170 (_2!1290 (tuple2!2561 lt!64318 (minValue!2629 newMap!16)))))))

(assert (=> d!37741 (= lt!64757 (lemmaContainsTupThenGetReturnValue!82 lt!64758 (_1!1290 (tuple2!2561 lt!64318 (minValue!2629 newMap!16))) (_2!1290 (tuple2!2561 lt!64318 (minValue!2629 newMap!16)))))))

(assert (=> d!37741 (= lt!64758 (insertStrictlySorted!84 (toList!856 lt!64327) (_1!1290 (tuple2!2561 lt!64318 (minValue!2629 newMap!16))) (_2!1290 (tuple2!2561 lt!64318 (minValue!2629 newMap!16)))))))

(assert (=> d!37741 (= (+!164 lt!64327 (tuple2!2561 lt!64318 (minValue!2629 newMap!16))) lt!64756)))

(declare-fun b!125573 () Bool)

(declare-fun res!60783 () Bool)

(assert (=> b!125573 (=> (not res!60783) (not e!82039))))

(assert (=> b!125573 (= res!60783 (= (getValueByKey!165 (toList!856 lt!64756) (_1!1290 (tuple2!2561 lt!64318 (minValue!2629 newMap!16)))) (Some!170 (_2!1290 (tuple2!2561 lt!64318 (minValue!2629 newMap!16))))))))

(declare-fun b!125574 () Bool)

(assert (=> b!125574 (= e!82039 (contains!874 (toList!856 lt!64756) (tuple2!2561 lt!64318 (minValue!2629 newMap!16))))))

(assert (= (and d!37741 res!60782) b!125573))

(assert (= (and b!125573 res!60783) b!125574))

(declare-fun m!146251 () Bool)

(assert (=> d!37741 m!146251))

(declare-fun m!146253 () Bool)

(assert (=> d!37741 m!146253))

(declare-fun m!146255 () Bool)

(assert (=> d!37741 m!146255))

(declare-fun m!146257 () Bool)

(assert (=> d!37741 m!146257))

(declare-fun m!146259 () Bool)

(assert (=> b!125573 m!146259))

(declare-fun m!146261 () Bool)

(assert (=> b!125574 m!146261))

(assert (=> b!124968 d!37741))

(declare-fun d!37743 () Bool)

(declare-fun e!82041 () Bool)

(assert (=> d!37743 e!82041))

(declare-fun res!60784 () Bool)

(assert (=> d!37743 (=> res!60784 e!82041)))

(declare-fun lt!64760 () Bool)

(assert (=> d!37743 (= res!60784 (not lt!64760))))

(declare-fun lt!64763 () Bool)

(assert (=> d!37743 (= lt!64760 lt!64763)))

(declare-fun lt!64761 () Unit!3878)

(declare-fun e!82040 () Unit!3878)

(assert (=> d!37743 (= lt!64761 e!82040)))

(declare-fun c!22913 () Bool)

(assert (=> d!37743 (= c!22913 lt!64763)))

(assert (=> d!37743 (= lt!64763 (containsKey!169 (toList!856 (+!164 lt!64313 (tuple2!2561 lt!64314 (zeroValue!2629 newMap!16)))) lt!64326))))

(assert (=> d!37743 (= (contains!873 (+!164 lt!64313 (tuple2!2561 lt!64314 (zeroValue!2629 newMap!16))) lt!64326) lt!64760)))

(declare-fun b!125575 () Bool)

(declare-fun lt!64762 () Unit!3878)

(assert (=> b!125575 (= e!82040 lt!64762)))

(assert (=> b!125575 (= lt!64762 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 (+!164 lt!64313 (tuple2!2561 lt!64314 (zeroValue!2629 newMap!16)))) lt!64326))))

(assert (=> b!125575 (isDefined!119 (getValueByKey!165 (toList!856 (+!164 lt!64313 (tuple2!2561 lt!64314 (zeroValue!2629 newMap!16)))) lt!64326))))

(declare-fun b!125576 () Bool)

(declare-fun Unit!3914 () Unit!3878)

(assert (=> b!125576 (= e!82040 Unit!3914)))

(declare-fun b!125577 () Bool)

(assert (=> b!125577 (= e!82041 (isDefined!119 (getValueByKey!165 (toList!856 (+!164 lt!64313 (tuple2!2561 lt!64314 (zeroValue!2629 newMap!16)))) lt!64326)))))

(assert (= (and d!37743 c!22913) b!125575))

(assert (= (and d!37743 (not c!22913)) b!125576))

(assert (= (and d!37743 (not res!60784)) b!125577))

(declare-fun m!146263 () Bool)

(assert (=> d!37743 m!146263))

(declare-fun m!146265 () Bool)

(assert (=> b!125575 m!146265))

(declare-fun m!146267 () Bool)

(assert (=> b!125575 m!146267))

(assert (=> b!125575 m!146267))

(declare-fun m!146269 () Bool)

(assert (=> b!125575 m!146269))

(assert (=> b!125577 m!146267))

(assert (=> b!125577 m!146267))

(assert (=> b!125577 m!146269))

(assert (=> b!124968 d!37743))

(declare-fun d!37745 () Bool)

(assert (=> d!37745 (= (apply!110 lt!64327 lt!64317) (get!1448 (getValueByKey!165 (toList!856 lt!64327) lt!64317)))))

(declare-fun bs!5199 () Bool)

(assert (= bs!5199 d!37745))

(declare-fun m!146271 () Bool)

(assert (=> bs!5199 m!146271))

(assert (=> bs!5199 m!146271))

(declare-fun m!146273 () Bool)

(assert (=> bs!5199 m!146273))

(assert (=> b!124968 d!37745))

(declare-fun d!37747 () Bool)

(declare-fun e!82042 () Bool)

(assert (=> d!37747 e!82042))

(declare-fun res!60785 () Bool)

(assert (=> d!37747 (=> (not res!60785) (not e!82042))))

(declare-fun lt!64764 () ListLongMap!1681)

(assert (=> d!37747 (= res!60785 (contains!873 lt!64764 (_1!1290 (tuple2!2561 lt!64314 (zeroValue!2629 newMap!16)))))))

(declare-fun lt!64766 () List!1716)

(assert (=> d!37747 (= lt!64764 (ListLongMap!1682 lt!64766))))

(declare-fun lt!64767 () Unit!3878)

(declare-fun lt!64765 () Unit!3878)

(assert (=> d!37747 (= lt!64767 lt!64765)))

(assert (=> d!37747 (= (getValueByKey!165 lt!64766 (_1!1290 (tuple2!2561 lt!64314 (zeroValue!2629 newMap!16)))) (Some!170 (_2!1290 (tuple2!2561 lt!64314 (zeroValue!2629 newMap!16)))))))

(assert (=> d!37747 (= lt!64765 (lemmaContainsTupThenGetReturnValue!82 lt!64766 (_1!1290 (tuple2!2561 lt!64314 (zeroValue!2629 newMap!16))) (_2!1290 (tuple2!2561 lt!64314 (zeroValue!2629 newMap!16)))))))

(assert (=> d!37747 (= lt!64766 (insertStrictlySorted!84 (toList!856 lt!64313) (_1!1290 (tuple2!2561 lt!64314 (zeroValue!2629 newMap!16))) (_2!1290 (tuple2!2561 lt!64314 (zeroValue!2629 newMap!16)))))))

(assert (=> d!37747 (= (+!164 lt!64313 (tuple2!2561 lt!64314 (zeroValue!2629 newMap!16))) lt!64764)))

(declare-fun b!125578 () Bool)

(declare-fun res!60786 () Bool)

(assert (=> b!125578 (=> (not res!60786) (not e!82042))))

(assert (=> b!125578 (= res!60786 (= (getValueByKey!165 (toList!856 lt!64764) (_1!1290 (tuple2!2561 lt!64314 (zeroValue!2629 newMap!16)))) (Some!170 (_2!1290 (tuple2!2561 lt!64314 (zeroValue!2629 newMap!16))))))))

(declare-fun b!125579 () Bool)

(assert (=> b!125579 (= e!82042 (contains!874 (toList!856 lt!64764) (tuple2!2561 lt!64314 (zeroValue!2629 newMap!16))))))

(assert (= (and d!37747 res!60785) b!125578))

(assert (= (and b!125578 res!60786) b!125579))

(declare-fun m!146275 () Bool)

(assert (=> d!37747 m!146275))

(declare-fun m!146277 () Bool)

(assert (=> d!37747 m!146277))

(declare-fun m!146279 () Bool)

(assert (=> d!37747 m!146279))

(declare-fun m!146281 () Bool)

(assert (=> d!37747 m!146281))

(declare-fun m!146283 () Bool)

(assert (=> b!125578 m!146283))

(declare-fun m!146285 () Bool)

(assert (=> b!125579 m!146285))

(assert (=> b!124968 d!37747))

(declare-fun d!37749 () Bool)

(assert (=> d!37749 (= (apply!110 lt!64331 lt!64316) (get!1448 (getValueByKey!165 (toList!856 lt!64331) lt!64316)))))

(declare-fun bs!5200 () Bool)

(assert (= bs!5200 d!37749))

(declare-fun m!146287 () Bool)

(assert (=> bs!5200 m!146287))

(assert (=> bs!5200 m!146287))

(declare-fun m!146289 () Bool)

(assert (=> bs!5200 m!146289))

(assert (=> b!124968 d!37749))

(declare-fun d!37751 () Bool)

(assert (=> d!37751 (contains!873 (+!164 lt!64313 (tuple2!2561 lt!64314 (zeroValue!2629 newMap!16))) lt!64326)))

(declare-fun lt!64768 () Unit!3878)

(assert (=> d!37751 (= lt!64768 (choose!756 lt!64313 lt!64314 (zeroValue!2629 newMap!16) lt!64326))))

(assert (=> d!37751 (contains!873 lt!64313 lt!64326)))

(assert (=> d!37751 (= (addStillContains!86 lt!64313 lt!64314 (zeroValue!2629 newMap!16) lt!64326) lt!64768)))

(declare-fun bs!5201 () Bool)

(assert (= bs!5201 d!37751))

(assert (=> bs!5201 m!145135))

(assert (=> bs!5201 m!145135))

(assert (=> bs!5201 m!145145))

(declare-fun m!146291 () Bool)

(assert (=> bs!5201 m!146291))

(declare-fun m!146293 () Bool)

(assert (=> bs!5201 m!146293))

(assert (=> b!124968 d!37751))

(declare-fun d!37753 () Bool)

(assert (=> d!37753 (= (apply!110 (+!164 lt!64331 (tuple2!2561 lt!64322 (minValue!2629 newMap!16))) lt!64316) (apply!110 lt!64331 lt!64316))))

(declare-fun lt!64769 () Unit!3878)

(assert (=> d!37753 (= lt!64769 (choose!755 lt!64331 lt!64322 (minValue!2629 newMap!16) lt!64316))))

(declare-fun e!82043 () Bool)

(assert (=> d!37753 e!82043))

(declare-fun res!60787 () Bool)

(assert (=> d!37753 (=> (not res!60787) (not e!82043))))

(assert (=> d!37753 (= res!60787 (contains!873 lt!64331 lt!64316))))

(assert (=> d!37753 (= (addApplyDifferent!86 lt!64331 lt!64322 (minValue!2629 newMap!16) lt!64316) lt!64769)))

(declare-fun b!125580 () Bool)

(assert (=> b!125580 (= e!82043 (not (= lt!64316 lt!64322)))))

(assert (= (and d!37753 res!60787) b!125580))

(declare-fun m!146295 () Bool)

(assert (=> d!37753 m!146295))

(declare-fun m!146297 () Bool)

(assert (=> d!37753 m!146297))

(assert (=> d!37753 m!145137))

(assert (=> d!37753 m!145139))

(assert (=> d!37753 m!145137))

(assert (=> d!37753 m!145151))

(assert (=> b!124968 d!37753))

(declare-fun d!37755 () Bool)

(assert (=> d!37755 (= (apply!110 (+!164 lt!64319 (tuple2!2561 lt!64328 (zeroValue!2629 newMap!16))) lt!64315) (get!1448 (getValueByKey!165 (toList!856 (+!164 lt!64319 (tuple2!2561 lt!64328 (zeroValue!2629 newMap!16)))) lt!64315)))))

(declare-fun bs!5202 () Bool)

(assert (= bs!5202 d!37755))

(declare-fun m!146299 () Bool)

(assert (=> bs!5202 m!146299))

(assert (=> bs!5202 m!146299))

(declare-fun m!146301 () Bool)

(assert (=> bs!5202 m!146301))

(assert (=> b!124968 d!37755))

(declare-fun d!37757 () Bool)

(assert (=> d!37757 (= (apply!110 (+!164 lt!64327 (tuple2!2561 lt!64318 (minValue!2629 newMap!16))) lt!64317) (apply!110 lt!64327 lt!64317))))

(declare-fun lt!64770 () Unit!3878)

(assert (=> d!37757 (= lt!64770 (choose!755 lt!64327 lt!64318 (minValue!2629 newMap!16) lt!64317))))

(declare-fun e!82044 () Bool)

(assert (=> d!37757 e!82044))

(declare-fun res!60788 () Bool)

(assert (=> d!37757 (=> (not res!60788) (not e!82044))))

(assert (=> d!37757 (= res!60788 (contains!873 lt!64327 lt!64317))))

(assert (=> d!37757 (= (addApplyDifferent!86 lt!64327 lt!64318 (minValue!2629 newMap!16) lt!64317) lt!64770)))

(declare-fun b!125581 () Bool)

(assert (=> b!125581 (= e!82044 (not (= lt!64317 lt!64318)))))

(assert (= (and d!37757 res!60788) b!125581))

(declare-fun m!146303 () Bool)

(assert (=> d!37757 m!146303))

(declare-fun m!146305 () Bool)

(assert (=> d!37757 m!146305))

(assert (=> d!37757 m!145133))

(assert (=> d!37757 m!145157))

(assert (=> d!37757 m!145133))

(assert (=> d!37757 m!145159))

(assert (=> b!124968 d!37757))

(declare-fun d!37759 () Bool)

(assert (=> d!37759 (= (apply!110 (+!164 lt!64327 (tuple2!2561 lt!64318 (minValue!2629 newMap!16))) lt!64317) (get!1448 (getValueByKey!165 (toList!856 (+!164 lt!64327 (tuple2!2561 lt!64318 (minValue!2629 newMap!16)))) lt!64317)))))

(declare-fun bs!5203 () Bool)

(assert (= bs!5203 d!37759))

(declare-fun m!146307 () Bool)

(assert (=> bs!5203 m!146307))

(assert (=> bs!5203 m!146307))

(declare-fun m!146309 () Bool)

(assert (=> bs!5203 m!146309))

(assert (=> b!124968 d!37759))

(declare-fun d!37761 () Bool)

(assert (=> d!37761 (= (apply!110 (+!164 lt!64331 (tuple2!2561 lt!64322 (minValue!2629 newMap!16))) lt!64316) (get!1448 (getValueByKey!165 (toList!856 (+!164 lt!64331 (tuple2!2561 lt!64322 (minValue!2629 newMap!16)))) lt!64316)))))

(declare-fun bs!5204 () Bool)

(assert (= bs!5204 d!37761))

(declare-fun m!146311 () Bool)

(assert (=> bs!5204 m!146311))

(assert (=> bs!5204 m!146311))

(declare-fun m!146313 () Bool)

(assert (=> bs!5204 m!146313))

(assert (=> b!124968 d!37761))

(assert (=> b!124968 d!37539))

(declare-fun d!37763 () Bool)

(declare-fun e!82045 () Bool)

(assert (=> d!37763 e!82045))

(declare-fun res!60789 () Bool)

(assert (=> d!37763 (=> (not res!60789) (not e!82045))))

(declare-fun lt!64771 () ListLongMap!1681)

(assert (=> d!37763 (= res!60789 (contains!873 lt!64771 (_1!1290 (tuple2!2561 lt!64322 (minValue!2629 newMap!16)))))))

(declare-fun lt!64773 () List!1716)

(assert (=> d!37763 (= lt!64771 (ListLongMap!1682 lt!64773))))

(declare-fun lt!64774 () Unit!3878)

(declare-fun lt!64772 () Unit!3878)

(assert (=> d!37763 (= lt!64774 lt!64772)))

(assert (=> d!37763 (= (getValueByKey!165 lt!64773 (_1!1290 (tuple2!2561 lt!64322 (minValue!2629 newMap!16)))) (Some!170 (_2!1290 (tuple2!2561 lt!64322 (minValue!2629 newMap!16)))))))

(assert (=> d!37763 (= lt!64772 (lemmaContainsTupThenGetReturnValue!82 lt!64773 (_1!1290 (tuple2!2561 lt!64322 (minValue!2629 newMap!16))) (_2!1290 (tuple2!2561 lt!64322 (minValue!2629 newMap!16)))))))

(assert (=> d!37763 (= lt!64773 (insertStrictlySorted!84 (toList!856 lt!64331) (_1!1290 (tuple2!2561 lt!64322 (minValue!2629 newMap!16))) (_2!1290 (tuple2!2561 lt!64322 (minValue!2629 newMap!16)))))))

(assert (=> d!37763 (= (+!164 lt!64331 (tuple2!2561 lt!64322 (minValue!2629 newMap!16))) lt!64771)))

(declare-fun b!125582 () Bool)

(declare-fun res!60790 () Bool)

(assert (=> b!125582 (=> (not res!60790) (not e!82045))))

(assert (=> b!125582 (= res!60790 (= (getValueByKey!165 (toList!856 lt!64771) (_1!1290 (tuple2!2561 lt!64322 (minValue!2629 newMap!16)))) (Some!170 (_2!1290 (tuple2!2561 lt!64322 (minValue!2629 newMap!16))))))))

(declare-fun b!125583 () Bool)

(assert (=> b!125583 (= e!82045 (contains!874 (toList!856 lt!64771) (tuple2!2561 lt!64322 (minValue!2629 newMap!16))))))

(assert (= (and d!37763 res!60789) b!125582))

(assert (= (and b!125582 res!60790) b!125583))

(declare-fun m!146315 () Bool)

(assert (=> d!37763 m!146315))

(declare-fun m!146317 () Bool)

(assert (=> d!37763 m!146317))

(declare-fun m!146319 () Bool)

(assert (=> d!37763 m!146319))

(declare-fun m!146321 () Bool)

(assert (=> d!37763 m!146321))

(declare-fun m!146323 () Bool)

(assert (=> b!125582 m!146323))

(declare-fun m!146325 () Bool)

(assert (=> b!125583 m!146325))

(assert (=> b!124968 d!37763))

(declare-fun d!37765 () Bool)

(declare-fun e!82046 () Bool)

(assert (=> d!37765 e!82046))

(declare-fun res!60791 () Bool)

(assert (=> d!37765 (=> (not res!60791) (not e!82046))))

(declare-fun lt!64775 () ListLongMap!1681)

(assert (=> d!37765 (= res!60791 (contains!873 lt!64775 (_1!1290 (tuple2!2561 lt!64328 (zeroValue!2629 newMap!16)))))))

(declare-fun lt!64777 () List!1716)

(assert (=> d!37765 (= lt!64775 (ListLongMap!1682 lt!64777))))

(declare-fun lt!64778 () Unit!3878)

(declare-fun lt!64776 () Unit!3878)

(assert (=> d!37765 (= lt!64778 lt!64776)))

(assert (=> d!37765 (= (getValueByKey!165 lt!64777 (_1!1290 (tuple2!2561 lt!64328 (zeroValue!2629 newMap!16)))) (Some!170 (_2!1290 (tuple2!2561 lt!64328 (zeroValue!2629 newMap!16)))))))

(assert (=> d!37765 (= lt!64776 (lemmaContainsTupThenGetReturnValue!82 lt!64777 (_1!1290 (tuple2!2561 lt!64328 (zeroValue!2629 newMap!16))) (_2!1290 (tuple2!2561 lt!64328 (zeroValue!2629 newMap!16)))))))

(assert (=> d!37765 (= lt!64777 (insertStrictlySorted!84 (toList!856 lt!64319) (_1!1290 (tuple2!2561 lt!64328 (zeroValue!2629 newMap!16))) (_2!1290 (tuple2!2561 lt!64328 (zeroValue!2629 newMap!16)))))))

(assert (=> d!37765 (= (+!164 lt!64319 (tuple2!2561 lt!64328 (zeroValue!2629 newMap!16))) lt!64775)))

(declare-fun b!125584 () Bool)

(declare-fun res!60792 () Bool)

(assert (=> b!125584 (=> (not res!60792) (not e!82046))))

(assert (=> b!125584 (= res!60792 (= (getValueByKey!165 (toList!856 lt!64775) (_1!1290 (tuple2!2561 lt!64328 (zeroValue!2629 newMap!16)))) (Some!170 (_2!1290 (tuple2!2561 lt!64328 (zeroValue!2629 newMap!16))))))))

(declare-fun b!125585 () Bool)

(assert (=> b!125585 (= e!82046 (contains!874 (toList!856 lt!64775) (tuple2!2561 lt!64328 (zeroValue!2629 newMap!16))))))

(assert (= (and d!37765 res!60791) b!125584))

(assert (= (and b!125584 res!60792) b!125585))

(declare-fun m!146327 () Bool)

(assert (=> d!37765 m!146327))

(declare-fun m!146329 () Bool)

(assert (=> d!37765 m!146329))

(declare-fun m!146331 () Bool)

(assert (=> d!37765 m!146331))

(declare-fun m!146333 () Bool)

(assert (=> d!37765 m!146333))

(declare-fun m!146335 () Bool)

(assert (=> b!125584 m!146335))

(declare-fun m!146337 () Bool)

(assert (=> b!125585 m!146337))

(assert (=> b!124968 d!37765))

(declare-fun d!37767 () Bool)

(assert (=> d!37767 (= (apply!110 lt!64319 lt!64315) (get!1448 (getValueByKey!165 (toList!856 lt!64319) lt!64315)))))

(declare-fun bs!5205 () Bool)

(assert (= bs!5205 d!37767))

(declare-fun m!146339 () Bool)

(assert (=> bs!5205 m!146339))

(assert (=> bs!5205 m!146339))

(declare-fun m!146341 () Bool)

(assert (=> bs!5205 m!146341))

(assert (=> b!124968 d!37767))

(declare-fun d!37769 () Bool)

(assert (=> d!37769 (= (get!1448 (getValueByKey!165 (toList!856 lt!64198) lt!64183)) (v!3110 (getValueByKey!165 (toList!856 lt!64198) lt!64183)))))

(assert (=> d!37375 d!37769))

(declare-fun b!125586 () Bool)

(declare-fun e!82047 () Option!171)

(assert (=> b!125586 (= e!82047 (Some!170 (_2!1290 (h!2313 (toList!856 lt!64198)))))))

(declare-fun b!125589 () Bool)

(declare-fun e!82048 () Option!171)

(assert (=> b!125589 (= e!82048 None!169)))

(declare-fun b!125587 () Bool)

(assert (=> b!125587 (= e!82047 e!82048)))

(declare-fun c!22915 () Bool)

(assert (=> b!125587 (= c!22915 (and ((_ is Cons!1712) (toList!856 lt!64198)) (not (= (_1!1290 (h!2313 (toList!856 lt!64198))) lt!64183))))))

(declare-fun b!125588 () Bool)

(assert (=> b!125588 (= e!82048 (getValueByKey!165 (t!6055 (toList!856 lt!64198)) lt!64183))))

(declare-fun d!37771 () Bool)

(declare-fun c!22914 () Bool)

(assert (=> d!37771 (= c!22914 (and ((_ is Cons!1712) (toList!856 lt!64198)) (= (_1!1290 (h!2313 (toList!856 lt!64198))) lt!64183)))))

(assert (=> d!37771 (= (getValueByKey!165 (toList!856 lt!64198) lt!64183) e!82047)))

(assert (= (and d!37771 c!22914) b!125586))

(assert (= (and d!37771 (not c!22914)) b!125587))

(assert (= (and b!125587 c!22915) b!125588))

(assert (= (and b!125587 (not c!22915)) b!125589))

(declare-fun m!146343 () Bool)

(assert (=> b!125588 m!146343))

(assert (=> d!37375 d!37771))

(declare-fun b!125590 () Bool)

(declare-fun e!82049 () Bool)

(declare-fun call!13464 () Bool)

(assert (=> b!125590 (= e!82049 call!13464)))

(declare-fun bm!13461 () Bool)

(assert (=> bm!13461 (= call!13464 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4493 (v!3106 (underlying!435 thiss!992))) (mask!7010 (v!3106 (underlying!435 thiss!992)))))))

(declare-fun d!37773 () Bool)

(declare-fun res!60794 () Bool)

(declare-fun e!82051 () Bool)

(assert (=> d!37773 (=> res!60794 e!82051)))

(assert (=> d!37773 (= res!60794 (bvsge #b00000000000000000000000000000000 (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992))))))))

(assert (=> d!37773 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4493 (v!3106 (underlying!435 thiss!992))) (mask!7010 (v!3106 (underlying!435 thiss!992)))) e!82051)))

(declare-fun b!125591 () Bool)

(assert (=> b!125591 (= e!82051 e!82049)))

(declare-fun c!22916 () Bool)

(assert (=> b!125591 (= c!22916 (validKeyInArray!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!125592 () Bool)

(declare-fun e!82050 () Bool)

(assert (=> b!125592 (= e!82050 call!13464)))

(declare-fun b!125593 () Bool)

(assert (=> b!125593 (= e!82049 e!82050)))

(declare-fun lt!64779 () (_ BitVec 64))

(assert (=> b!125593 (= lt!64779 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!64781 () Unit!3878)

(assert (=> b!125593 (= lt!64781 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4493 (v!3106 (underlying!435 thiss!992))) lt!64779 #b00000000000000000000000000000000))))

(assert (=> b!125593 (arrayContainsKey!0 (_keys!4493 (v!3106 (underlying!435 thiss!992))) lt!64779 #b00000000000000000000000000000000)))

(declare-fun lt!64780 () Unit!3878)

(assert (=> b!125593 (= lt!64780 lt!64781)))

(declare-fun res!60793 () Bool)

(assert (=> b!125593 (= res!60793 (= (seekEntryOrOpen!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) #b00000000000000000000000000000000) (_keys!4493 (v!3106 (underlying!435 thiss!992))) (mask!7010 (v!3106 (underlying!435 thiss!992)))) (Found!279 #b00000000000000000000000000000000)))))

(assert (=> b!125593 (=> (not res!60793) (not e!82050))))

(assert (= (and d!37773 (not res!60794)) b!125591))

(assert (= (and b!125591 c!22916) b!125593))

(assert (= (and b!125591 (not c!22916)) b!125590))

(assert (= (and b!125593 res!60793) b!125592))

(assert (= (or b!125592 b!125590) bm!13461))

(declare-fun m!146345 () Bool)

(assert (=> bm!13461 m!146345))

(assert (=> b!125591 m!145787))

(assert (=> b!125591 m!145787))

(assert (=> b!125591 m!145789))

(assert (=> b!125593 m!145787))

(declare-fun m!146347 () Bool)

(assert (=> b!125593 m!146347))

(declare-fun m!146349 () Bool)

(assert (=> b!125593 m!146349))

(assert (=> b!125593 m!145787))

(declare-fun m!146351 () Bool)

(assert (=> b!125593 m!146351))

(assert (=> b!125128 d!37773))

(declare-fun d!37775 () Bool)

(declare-fun e!82053 () Bool)

(assert (=> d!37775 e!82053))

(declare-fun res!60795 () Bool)

(assert (=> d!37775 (=> res!60795 e!82053)))

(declare-fun lt!64782 () Bool)

(assert (=> d!37775 (= res!60795 (not lt!64782))))

(declare-fun lt!64785 () Bool)

(assert (=> d!37775 (= lt!64782 lt!64785)))

(declare-fun lt!64783 () Unit!3878)

(declare-fun e!82052 () Unit!3878)

(assert (=> d!37775 (= lt!64783 e!82052)))

(declare-fun c!22917 () Bool)

(assert (=> d!37775 (= c!22917 lt!64785)))

(assert (=> d!37775 (= lt!64785 (containsKey!169 (toList!856 lt!64286) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!37775 (= (contains!873 lt!64286 #b1000000000000000000000000000000000000000000000000000000000000000) lt!64782)))

(declare-fun b!125594 () Bool)

(declare-fun lt!64784 () Unit!3878)

(assert (=> b!125594 (= e!82052 lt!64784)))

(assert (=> b!125594 (= lt!64784 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64286) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!125594 (isDefined!119 (getValueByKey!165 (toList!856 lt!64286) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!125595 () Bool)

(declare-fun Unit!3915 () Unit!3878)

(assert (=> b!125595 (= e!82052 Unit!3915)))

(declare-fun b!125596 () Bool)

(assert (=> b!125596 (= e!82053 (isDefined!119 (getValueByKey!165 (toList!856 lt!64286) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37775 c!22917) b!125594))

(assert (= (and d!37775 (not c!22917)) b!125595))

(assert (= (and d!37775 (not res!60795)) b!125596))

(declare-fun m!146353 () Bool)

(assert (=> d!37775 m!146353))

(declare-fun m!146355 () Bool)

(assert (=> b!125594 m!146355))

(declare-fun m!146357 () Bool)

(assert (=> b!125594 m!146357))

(assert (=> b!125594 m!146357))

(declare-fun m!146359 () Bool)

(assert (=> b!125594 m!146359))

(assert (=> b!125596 m!146357))

(assert (=> b!125596 m!146357))

(assert (=> b!125596 m!146359))

(assert (=> bm!13370 d!37775))

(declare-fun b!125597 () Bool)

(declare-fun e!82054 () Option!171)

(assert (=> b!125597 (= e!82054 (Some!170 (_2!1290 (h!2313 (toList!856 lt!64336)))))))

(declare-fun b!125600 () Bool)

(declare-fun e!82055 () Option!171)

(assert (=> b!125600 (= e!82055 None!169)))

(declare-fun b!125598 () Bool)

(assert (=> b!125598 (= e!82054 e!82055)))

(declare-fun c!22919 () Bool)

(assert (=> b!125598 (= c!22919 (and ((_ is Cons!1712) (toList!856 lt!64336)) (not (= (_1!1290 (h!2313 (toList!856 lt!64336))) (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))))

(declare-fun b!125599 () Bool)

(assert (=> b!125599 (= e!82055 (getValueByKey!165 (t!6055 (toList!856 lt!64336)) (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun d!37777 () Bool)

(declare-fun c!22918 () Bool)

(assert (=> d!37777 (= c!22918 (and ((_ is Cons!1712) (toList!856 lt!64336)) (= (_1!1290 (h!2313 (toList!856 lt!64336))) (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(assert (=> d!37777 (= (getValueByKey!165 (toList!856 lt!64336) (_1!1290 (ite (or c!22694 c!22696) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))) e!82054)))

(assert (= (and d!37777 c!22918) b!125597))

(assert (= (and d!37777 (not c!22918)) b!125598))

(assert (= (and b!125598 c!22919) b!125599))

(assert (= (and b!125598 (not c!22919)) b!125600))

(declare-fun m!146361 () Bool)

(assert (=> b!125599 m!146361))

(assert (=> b!124987 d!37777))

(declare-fun d!37779 () Bool)

(assert (=> d!37779 (= (apply!110 lt!64286 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1448 (getValueByKey!165 (toList!856 lt!64286) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5206 () Bool)

(assert (= bs!5206 d!37779))

(assert (=> bs!5206 m!146357))

(assert (=> bs!5206 m!146357))

(declare-fun m!146363 () Bool)

(assert (=> bs!5206 m!146363))

(assert (=> b!124896 d!37779))

(assert (=> d!37427 d!37483))

(declare-fun d!37781 () Bool)

(declare-fun e!82057 () Bool)

(assert (=> d!37781 e!82057))

(declare-fun res!60796 () Bool)

(assert (=> d!37781 (=> res!60796 e!82057)))

(declare-fun lt!64786 () Bool)

(assert (=> d!37781 (= res!60796 (not lt!64786))))

(declare-fun lt!64789 () Bool)

(assert (=> d!37781 (= lt!64786 lt!64789)))

(declare-fun lt!64787 () Unit!3878)

(declare-fun e!82056 () Unit!3878)

(assert (=> d!37781 (= lt!64787 e!82056)))

(declare-fun c!22920 () Bool)

(assert (=> d!37781 (= c!22920 lt!64789)))

(assert (=> d!37781 (= lt!64789 (containsKey!169 (toList!856 lt!64346) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> d!37781 (= (contains!873 lt!64346 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64786)))

(declare-fun b!125601 () Bool)

(declare-fun lt!64788 () Unit!3878)

(assert (=> b!125601 (= e!82056 lt!64788)))

(assert (=> b!125601 (= lt!64788 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64346) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> b!125601 (isDefined!119 (getValueByKey!165 (toList!856 lt!64346) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun b!125602 () Bool)

(declare-fun Unit!3916 () Unit!3878)

(assert (=> b!125602 (= e!82056 Unit!3916)))

(declare-fun b!125603 () Bool)

(assert (=> b!125603 (= e!82057 (isDefined!119 (getValueByKey!165 (toList!856 lt!64346) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (= (and d!37781 c!22920) b!125601))

(assert (= (and d!37781 (not c!22920)) b!125602))

(assert (= (and d!37781 (not res!60796)) b!125603))

(declare-fun m!146365 () Bool)

(assert (=> d!37781 m!146365))

(declare-fun m!146367 () Bool)

(assert (=> b!125601 m!146367))

(assert (=> b!125601 m!145207))

(assert (=> b!125601 m!145207))

(declare-fun m!146369 () Bool)

(assert (=> b!125601 m!146369))

(assert (=> b!125603 m!145207))

(assert (=> b!125603 m!145207))

(assert (=> b!125603 m!146369))

(assert (=> d!37439 d!37781))

(declare-fun b!125604 () Bool)

(declare-fun e!82058 () Option!171)

(assert (=> b!125604 (= e!82058 (Some!170 (_2!1290 (h!2313 lt!64348))))))

(declare-fun b!125607 () Bool)

(declare-fun e!82059 () Option!171)

(assert (=> b!125607 (= e!82059 None!169)))

(declare-fun b!125605 () Bool)

(assert (=> b!125605 (= e!82058 e!82059)))

(declare-fun c!22922 () Bool)

(assert (=> b!125605 (= c!22922 (and ((_ is Cons!1712) lt!64348) (not (= (_1!1290 (h!2313 lt!64348)) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(declare-fun b!125606 () Bool)

(assert (=> b!125606 (= e!82059 (getValueByKey!165 (t!6055 lt!64348) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun d!37783 () Bool)

(declare-fun c!22921 () Bool)

(assert (=> d!37783 (= c!22921 (and ((_ is Cons!1712) lt!64348) (= (_1!1290 (h!2313 lt!64348)) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> d!37783 (= (getValueByKey!165 lt!64348 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) e!82058)))

(assert (= (and d!37783 c!22921) b!125604))

(assert (= (and d!37783 (not c!22921)) b!125605))

(assert (= (and b!125605 c!22922) b!125606))

(assert (= (and b!125605 (not c!22922)) b!125607))

(declare-fun m!146371 () Bool)

(assert (=> b!125606 m!146371))

(assert (=> d!37439 d!37783))

(declare-fun d!37785 () Bool)

(assert (=> d!37785 (= (getValueByKey!165 lt!64348 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) (Some!170 (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun lt!64790 () Unit!3878)

(assert (=> d!37785 (= lt!64790 (choose!764 lt!64348 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun e!82060 () Bool)

(assert (=> d!37785 e!82060))

(declare-fun res!60797 () Bool)

(assert (=> d!37785 (=> (not res!60797) (not e!82060))))

(assert (=> d!37785 (= res!60797 (isStrictlySorted!311 lt!64348))))

(assert (=> d!37785 (= (lemmaContainsTupThenGetReturnValue!82 lt!64348 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64790)))

(declare-fun b!125608 () Bool)

(declare-fun res!60798 () Bool)

(assert (=> b!125608 (=> (not res!60798) (not e!82060))))

(assert (=> b!125608 (= res!60798 (containsKey!169 lt!64348 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun b!125609 () Bool)

(assert (=> b!125609 (= e!82060 (contains!874 lt!64348 (tuple2!2561 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (= (and d!37785 res!60797) b!125608))

(assert (= (and b!125608 res!60798) b!125609))

(assert (=> d!37785 m!145201))

(declare-fun m!146373 () Bool)

(assert (=> d!37785 m!146373))

(declare-fun m!146375 () Bool)

(assert (=> d!37785 m!146375))

(declare-fun m!146377 () Bool)

(assert (=> b!125608 m!146377))

(declare-fun m!146379 () Bool)

(assert (=> b!125609 m!146379))

(assert (=> d!37439 d!37785))

(declare-fun b!125610 () Bool)

(declare-fun e!82063 () List!1716)

(declare-fun call!13466 () List!1716)

(assert (=> b!125610 (= e!82063 call!13466)))

(declare-fun bm!13462 () Bool)

(declare-fun e!82062 () List!1716)

(declare-fun call!13465 () List!1716)

(declare-fun c!22923 () Bool)

(assert (=> bm!13462 (= call!13465 ($colon$colon!87 e!82062 (ite c!22923 (h!2313 (toList!856 call!13362)) (tuple2!2561 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(declare-fun c!22924 () Bool)

(assert (=> bm!13462 (= c!22924 c!22923)))

(declare-fun d!37787 () Bool)

(declare-fun e!82064 () Bool)

(assert (=> d!37787 e!82064))

(declare-fun res!60799 () Bool)

(assert (=> d!37787 (=> (not res!60799) (not e!82064))))

(declare-fun lt!64791 () List!1716)

(assert (=> d!37787 (= res!60799 (isStrictlySorted!311 lt!64791))))

(declare-fun e!82061 () List!1716)

(assert (=> d!37787 (= lt!64791 e!82061)))

(assert (=> d!37787 (= c!22923 (and ((_ is Cons!1712) (toList!856 call!13362)) (bvslt (_1!1290 (h!2313 (toList!856 call!13362))) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> d!37787 (isStrictlySorted!311 (toList!856 call!13362))))

(assert (=> d!37787 (= (insertStrictlySorted!84 (toList!856 call!13362) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64791)))

(declare-fun b!125611 () Bool)

(assert (=> b!125611 (= e!82064 (contains!874 lt!64791 (tuple2!2561 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun b!125612 () Bool)

(assert (=> b!125612 (= e!82063 call!13466)))

(declare-fun b!125613 () Bool)

(declare-fun c!22926 () Bool)

(declare-fun c!22925 () Bool)

(assert (=> b!125613 (= e!82062 (ite c!22925 (t!6055 (toList!856 call!13362)) (ite c!22926 (Cons!1712 (h!2313 (toList!856 call!13362)) (t!6055 (toList!856 call!13362))) Nil!1713)))))

(declare-fun b!125614 () Bool)

(declare-fun e!82065 () List!1716)

(declare-fun call!13467 () List!1716)

(assert (=> b!125614 (= e!82065 call!13467)))

(declare-fun b!125615 () Bool)

(assert (=> b!125615 (= c!22926 (and ((_ is Cons!1712) (toList!856 call!13362)) (bvsgt (_1!1290 (h!2313 (toList!856 call!13362))) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> b!125615 (= e!82065 e!82063)))

(declare-fun b!125616 () Bool)

(declare-fun res!60800 () Bool)

(assert (=> b!125616 (=> (not res!60800) (not e!82064))))

(assert (=> b!125616 (= res!60800 (containsKey!169 lt!64791 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun b!125617 () Bool)

(assert (=> b!125617 (= e!82061 call!13465)))

(declare-fun b!125618 () Bool)

(assert (=> b!125618 (= e!82061 e!82065)))

(assert (=> b!125618 (= c!22925 (and ((_ is Cons!1712) (toList!856 call!13362)) (= (_1!1290 (h!2313 (toList!856 call!13362))) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun bm!13463 () Bool)

(assert (=> bm!13463 (= call!13466 call!13467)))

(declare-fun bm!13464 () Bool)

(assert (=> bm!13464 (= call!13467 call!13465)))

(declare-fun b!125619 () Bool)

(assert (=> b!125619 (= e!82062 (insertStrictlySorted!84 (t!6055 (toList!856 call!13362)) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (= (and d!37787 c!22923) b!125617))

(assert (= (and d!37787 (not c!22923)) b!125618))

(assert (= (and b!125618 c!22925) b!125614))

(assert (= (and b!125618 (not c!22925)) b!125615))

(assert (= (and b!125615 c!22926) b!125610))

(assert (= (and b!125615 (not c!22926)) b!125612))

(assert (= (or b!125610 b!125612) bm!13463))

(assert (= (or b!125614 bm!13463) bm!13464))

(assert (= (or b!125617 bm!13464) bm!13462))

(assert (= (and bm!13462 c!22924) b!125619))

(assert (= (and bm!13462 (not c!22924)) b!125613))

(assert (= (and d!37787 res!60799) b!125616))

(assert (= (and b!125616 res!60800) b!125611))

(declare-fun m!146381 () Bool)

(assert (=> bm!13462 m!146381))

(declare-fun m!146383 () Bool)

(assert (=> d!37787 m!146383))

(declare-fun m!146385 () Bool)

(assert (=> d!37787 m!146385))

(declare-fun m!146387 () Bool)

(assert (=> b!125619 m!146387))

(declare-fun m!146389 () Bool)

(assert (=> b!125611 m!146389))

(declare-fun m!146391 () Bool)

(assert (=> b!125616 m!146391))

(assert (=> d!37439 d!37787))

(declare-fun d!37789 () Bool)

(declare-fun e!82067 () Bool)

(assert (=> d!37789 e!82067))

(declare-fun res!60801 () Bool)

(assert (=> d!37789 (=> res!60801 e!82067)))

(declare-fun lt!64792 () Bool)

(assert (=> d!37789 (= res!60801 (not lt!64792))))

(declare-fun lt!64795 () Bool)

(assert (=> d!37789 (= lt!64792 lt!64795)))

(declare-fun lt!64793 () Unit!3878)

(declare-fun e!82066 () Unit!3878)

(assert (=> d!37789 (= lt!64793 e!82066)))

(declare-fun c!22927 () Bool)

(assert (=> d!37789 (= c!22927 lt!64795)))

(assert (=> d!37789 (= lt!64795 (containsKey!169 (toList!856 lt!64363) (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!37789 (= (contains!873 lt!64363 (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) lt!64792)))

(declare-fun b!125620 () Bool)

(declare-fun lt!64794 () Unit!3878)

(assert (=> b!125620 (= e!82066 lt!64794)))

(assert (=> b!125620 (= lt!64794 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64363) (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> b!125620 (isDefined!119 (getValueByKey!165 (toList!856 lt!64363) (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!125621 () Bool)

(declare-fun Unit!3917 () Unit!3878)

(assert (=> b!125621 (= e!82066 Unit!3917)))

(declare-fun b!125622 () Bool)

(assert (=> b!125622 (= e!82067 (isDefined!119 (getValueByKey!165 (toList!856 lt!64363) (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (= (and d!37789 c!22927) b!125620))

(assert (= (and d!37789 (not c!22927)) b!125621))

(assert (= (and d!37789 (not res!60801)) b!125622))

(declare-fun m!146393 () Bool)

(assert (=> d!37789 m!146393))

(declare-fun m!146395 () Bool)

(assert (=> b!125620 m!146395))

(assert (=> b!125620 m!145249))

(assert (=> b!125620 m!145249))

(declare-fun m!146397 () Bool)

(assert (=> b!125620 m!146397))

(assert (=> b!125622 m!145249))

(assert (=> b!125622 m!145249))

(assert (=> b!125622 m!146397))

(assert (=> d!37447 d!37789))

(declare-fun b!125623 () Bool)

(declare-fun e!82068 () Option!171)

(assert (=> b!125623 (= e!82068 (Some!170 (_2!1290 (h!2313 lt!64365))))))

(declare-fun b!125626 () Bool)

(declare-fun e!82069 () Option!171)

(assert (=> b!125626 (= e!82069 None!169)))

(declare-fun b!125624 () Bool)

(assert (=> b!125624 (= e!82068 e!82069)))

(declare-fun c!22929 () Bool)

(assert (=> b!125624 (= c!22929 (and ((_ is Cons!1712) lt!64365) (not (= (_1!1290 (h!2313 lt!64365)) (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))))

(declare-fun b!125625 () Bool)

(assert (=> b!125625 (= e!82069 (getValueByKey!165 (t!6055 lt!64365) (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun d!37791 () Bool)

(declare-fun c!22928 () Bool)

(assert (=> d!37791 (= c!22928 (and ((_ is Cons!1712) lt!64365) (= (_1!1290 (h!2313 lt!64365)) (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (=> d!37791 (= (getValueByKey!165 lt!64365 (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) e!82068)))

(assert (= (and d!37791 c!22928) b!125623))

(assert (= (and d!37791 (not c!22928)) b!125624))

(assert (= (and b!125624 c!22929) b!125625))

(assert (= (and b!125624 (not c!22929)) b!125626))

(declare-fun m!146399 () Bool)

(assert (=> b!125625 m!146399))

(assert (=> d!37447 d!37791))

(declare-fun d!37793 () Bool)

(assert (=> d!37793 (= (getValueByKey!165 lt!64365 (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!170 (_2!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun lt!64796 () Unit!3878)

(assert (=> d!37793 (= lt!64796 (choose!764 lt!64365 (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!82070 () Bool)

(assert (=> d!37793 e!82070))

(declare-fun res!60802 () Bool)

(assert (=> d!37793 (=> (not res!60802) (not e!82070))))

(assert (=> d!37793 (= res!60802 (isStrictlySorted!311 lt!64365))))

(assert (=> d!37793 (= (lemmaContainsTupThenGetReturnValue!82 lt!64365 (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) lt!64796)))

(declare-fun b!125627 () Bool)

(declare-fun res!60803 () Bool)

(assert (=> b!125627 (=> (not res!60803) (not e!82070))))

(assert (=> b!125627 (= res!60803 (containsKey!169 lt!64365 (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!125628 () Bool)

(assert (=> b!125628 (= e!82070 (contains!874 lt!64365 (tuple2!2561 (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (= (and d!37793 res!60802) b!125627))

(assert (= (and b!125627 res!60803) b!125628))

(assert (=> d!37793 m!145243))

(declare-fun m!146401 () Bool)

(assert (=> d!37793 m!146401))

(declare-fun m!146403 () Bool)

(assert (=> d!37793 m!146403))

(declare-fun m!146405 () Bool)

(assert (=> b!125627 m!146405))

(declare-fun m!146407 () Bool)

(assert (=> b!125628 m!146407))

(assert (=> d!37447 d!37793))

(declare-fun b!125629 () Bool)

(declare-fun e!82073 () List!1716)

(declare-fun call!13469 () List!1716)

(assert (=> b!125629 (= e!82073 call!13469)))

(declare-fun e!82072 () List!1716)

(declare-fun call!13468 () List!1716)

(declare-fun bm!13465 () Bool)

(declare-fun c!22930 () Bool)

(assert (=> bm!13465 (= call!13468 ($colon$colon!87 e!82072 (ite c!22930 (h!2313 (toList!856 e!81519)) (tuple2!2561 (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))))

(declare-fun c!22931 () Bool)

(assert (=> bm!13465 (= c!22931 c!22930)))

(declare-fun d!37795 () Bool)

(declare-fun e!82074 () Bool)

(assert (=> d!37795 e!82074))

(declare-fun res!60804 () Bool)

(assert (=> d!37795 (=> (not res!60804) (not e!82074))))

(declare-fun lt!64797 () List!1716)

(assert (=> d!37795 (= res!60804 (isStrictlySorted!311 lt!64797))))

(declare-fun e!82071 () List!1716)

(assert (=> d!37795 (= lt!64797 e!82071)))

(assert (=> d!37795 (= c!22930 (and ((_ is Cons!1712) (toList!856 e!81519)) (bvslt (_1!1290 (h!2313 (toList!856 e!81519))) (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (=> d!37795 (isStrictlySorted!311 (toList!856 e!81519))))

(assert (=> d!37795 (= (insertStrictlySorted!84 (toList!856 e!81519) (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) lt!64797)))

(declare-fun b!125630 () Bool)

(assert (=> b!125630 (= e!82074 (contains!874 lt!64797 (tuple2!2561 (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!125631 () Bool)

(assert (=> b!125631 (= e!82073 call!13469)))

(declare-fun c!22933 () Bool)

(declare-fun c!22932 () Bool)

(declare-fun b!125632 () Bool)

(assert (=> b!125632 (= e!82072 (ite c!22932 (t!6055 (toList!856 e!81519)) (ite c!22933 (Cons!1712 (h!2313 (toList!856 e!81519)) (t!6055 (toList!856 e!81519))) Nil!1713)))))

(declare-fun b!125633 () Bool)

(declare-fun e!82075 () List!1716)

(declare-fun call!13470 () List!1716)

(assert (=> b!125633 (= e!82075 call!13470)))

(declare-fun b!125634 () Bool)

(assert (=> b!125634 (= c!22933 (and ((_ is Cons!1712) (toList!856 e!81519)) (bvsgt (_1!1290 (h!2313 (toList!856 e!81519))) (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (=> b!125634 (= e!82075 e!82073)))

(declare-fun b!125635 () Bool)

(declare-fun res!60805 () Bool)

(assert (=> b!125635 (=> (not res!60805) (not e!82074))))

(assert (=> b!125635 (= res!60805 (containsKey!169 lt!64797 (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!125636 () Bool)

(assert (=> b!125636 (= e!82071 call!13468)))

(declare-fun b!125637 () Bool)

(assert (=> b!125637 (= e!82071 e!82075)))

(assert (=> b!125637 (= c!22932 (and ((_ is Cons!1712) (toList!856 e!81519)) (= (_1!1290 (h!2313 (toList!856 e!81519))) (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun bm!13466 () Bool)

(assert (=> bm!13466 (= call!13469 call!13470)))

(declare-fun bm!13467 () Bool)

(assert (=> bm!13467 (= call!13470 call!13468)))

(declare-fun b!125638 () Bool)

(assert (=> b!125638 (= e!82072 (insertStrictlySorted!84 (t!6055 (toList!856 e!81519)) (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!37795 c!22930) b!125636))

(assert (= (and d!37795 (not c!22930)) b!125637))

(assert (= (and b!125637 c!22932) b!125633))

(assert (= (and b!125637 (not c!22932)) b!125634))

(assert (= (and b!125634 c!22933) b!125629))

(assert (= (and b!125634 (not c!22933)) b!125631))

(assert (= (or b!125629 b!125631) bm!13466))

(assert (= (or b!125633 bm!13466) bm!13467))

(assert (= (or b!125636 bm!13467) bm!13465))

(assert (= (and bm!13465 c!22931) b!125638))

(assert (= (and bm!13465 (not c!22931)) b!125632))

(assert (= (and d!37795 res!60804) b!125635))

(assert (= (and b!125635 res!60805) b!125630))

(declare-fun m!146409 () Bool)

(assert (=> bm!13465 m!146409))

(declare-fun m!146411 () Bool)

(assert (=> d!37795 m!146411))

(declare-fun m!146413 () Bool)

(assert (=> d!37795 m!146413))

(declare-fun m!146415 () Bool)

(assert (=> b!125638 m!146415))

(declare-fun m!146417 () Bool)

(assert (=> b!125630 m!146417))

(declare-fun m!146419 () Bool)

(assert (=> b!125635 m!146419))

(assert (=> d!37447 d!37795))

(assert (=> b!124982 d!37551))

(assert (=> b!124861 d!37449))

(declare-fun d!37797 () Bool)

(declare-fun e!82077 () Bool)

(assert (=> d!37797 e!82077))

(declare-fun res!60806 () Bool)

(assert (=> d!37797 (=> res!60806 e!82077)))

(declare-fun lt!64798 () Bool)

(assert (=> d!37797 (= res!60806 (not lt!64798))))

(declare-fun lt!64801 () Bool)

(assert (=> d!37797 (= lt!64798 lt!64801)))

(declare-fun lt!64799 () Unit!3878)

(declare-fun e!82076 () Unit!3878)

(assert (=> d!37797 (= lt!64799 e!82076)))

(declare-fun c!22934 () Bool)

(assert (=> d!37797 (= c!22934 lt!64801)))

(assert (=> d!37797 (= lt!64801 (containsKey!169 (toList!856 lt!64286) (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!37797 (= (contains!873 lt!64286 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)) lt!64798)))

(declare-fun b!125639 () Bool)

(declare-fun lt!64800 () Unit!3878)

(assert (=> b!125639 (= e!82076 lt!64800)))

(assert (=> b!125639 (= lt!64800 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64286) (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!125639 (isDefined!119 (getValueByKey!165 (toList!856 lt!64286) (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!125640 () Bool)

(declare-fun Unit!3918 () Unit!3878)

(assert (=> b!125640 (= e!82076 Unit!3918)))

(declare-fun b!125641 () Bool)

(assert (=> b!125641 (= e!82077 (isDefined!119 (getValueByKey!165 (toList!856 lt!64286) (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))))

(assert (= (and d!37797 c!22934) b!125639))

(assert (= (and d!37797 (not c!22934)) b!125640))

(assert (= (and d!37797 (not res!60806)) b!125641))

(assert (=> d!37797 m!145047))

(declare-fun m!146421 () Bool)

(assert (=> d!37797 m!146421))

(assert (=> b!125639 m!145047))

(declare-fun m!146423 () Bool)

(assert (=> b!125639 m!146423))

(assert (=> b!125639 m!145047))

(assert (=> b!125639 m!145771))

(assert (=> b!125639 m!145771))

(declare-fun m!146425 () Bool)

(assert (=> b!125639 m!146425))

(assert (=> b!125641 m!145047))

(assert (=> b!125641 m!145771))

(assert (=> b!125641 m!145771))

(assert (=> b!125641 m!146425))

(assert (=> b!124901 d!37797))

(declare-fun d!37799 () Bool)

(assert (=> d!37799 (= (get!1448 (getValueByKey!165 (toList!856 lt!64187) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))) (v!3110 (getValueByKey!165 (toList!856 lt!64187) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (=> d!37399 d!37799))

(assert (=> d!37399 d!37675))

(declare-fun d!37801 () Bool)

(assert (=> d!37801 (= (apply!110 (+!164 lt!64186 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64182) (apply!110 lt!64186 lt!64182))))

(assert (=> d!37801 true))

(declare-fun _$34!940 () Unit!3878)

(assert (=> d!37801 (= (choose!755 lt!64186 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))) lt!64182) _$34!940)))

(declare-fun bs!5207 () Bool)

(assert (= bs!5207 d!37801))

(assert (=> bs!5207 m!144841))

(assert (=> bs!5207 m!144841))

(assert (=> bs!5207 m!144845))

(assert (=> bs!5207 m!144839))

(assert (=> d!37383 d!37801))

(assert (=> d!37383 d!37387))

(assert (=> d!37383 d!37371))

(declare-fun d!37803 () Bool)

(declare-fun e!82079 () Bool)

(assert (=> d!37803 e!82079))

(declare-fun res!60807 () Bool)

(assert (=> d!37803 (=> res!60807 e!82079)))

(declare-fun lt!64802 () Bool)

(assert (=> d!37803 (= res!60807 (not lt!64802))))

(declare-fun lt!64805 () Bool)

(assert (=> d!37803 (= lt!64802 lt!64805)))

(declare-fun lt!64803 () Unit!3878)

(declare-fun e!82078 () Unit!3878)

(assert (=> d!37803 (= lt!64803 e!82078)))

(declare-fun c!22935 () Bool)

(assert (=> d!37803 (= c!22935 lt!64805)))

(assert (=> d!37803 (= lt!64805 (containsKey!169 (toList!856 lt!64186) lt!64182))))

(assert (=> d!37803 (= (contains!873 lt!64186 lt!64182) lt!64802)))

(declare-fun b!125642 () Bool)

(declare-fun lt!64804 () Unit!3878)

(assert (=> b!125642 (= e!82078 lt!64804)))

(assert (=> b!125642 (= lt!64804 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64186) lt!64182))))

(assert (=> b!125642 (isDefined!119 (getValueByKey!165 (toList!856 lt!64186) lt!64182))))

(declare-fun b!125643 () Bool)

(declare-fun Unit!3919 () Unit!3878)

(assert (=> b!125643 (= e!82078 Unit!3919)))

(declare-fun b!125644 () Bool)

(assert (=> b!125644 (= e!82079 (isDefined!119 (getValueByKey!165 (toList!856 lt!64186) lt!64182)))))

(assert (= (and d!37803 c!22935) b!125642))

(assert (= (and d!37803 (not c!22935)) b!125643))

(assert (= (and d!37803 (not res!60807)) b!125644))

(declare-fun m!146427 () Bool)

(assert (=> d!37803 m!146427))

(declare-fun m!146429 () Bool)

(assert (=> b!125642 m!146429))

(assert (=> b!125642 m!144959))

(assert (=> b!125642 m!144959))

(declare-fun m!146431 () Bool)

(assert (=> b!125642 m!146431))

(assert (=> b!125644 m!144959))

(assert (=> b!125644 m!144959))

(assert (=> b!125644 m!146431))

(assert (=> d!37383 d!37803))

(assert (=> d!37383 d!37393))

(declare-fun b!125645 () Bool)

(declare-fun e!82080 () Option!171)

(assert (=> b!125645 (= e!82080 (Some!170 (_2!1290 (h!2313 (toList!856 lt!64215)))))))

(declare-fun b!125648 () Bool)

(declare-fun e!82081 () Option!171)

(assert (=> b!125648 (= e!82081 None!169)))

(declare-fun b!125646 () Bool)

(assert (=> b!125646 (= e!82080 e!82081)))

(declare-fun c!22937 () Bool)

(assert (=> b!125646 (= c!22937 (and ((_ is Cons!1712) (toList!856 lt!64215)) (not (= (_1!1290 (h!2313 (toList!856 lt!64215))) (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(declare-fun b!125647 () Bool)

(assert (=> b!125647 (= e!82081 (getValueByKey!165 (t!6055 (toList!856 lt!64215)) (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun d!37805 () Bool)

(declare-fun c!22936 () Bool)

(assert (=> d!37805 (= c!22936 (and ((_ is Cons!1712) (toList!856 lt!64215)) (= (_1!1290 (h!2313 (toList!856 lt!64215))) (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> d!37805 (= (getValueByKey!165 (toList!856 lt!64215) (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) e!82080)))

(assert (= (and d!37805 c!22936) b!125645))

(assert (= (and d!37805 (not c!22936)) b!125646))

(assert (= (and b!125646 c!22937) b!125647))

(assert (= (and b!125646 (not c!22937)) b!125648))

(declare-fun m!146433 () Bool)

(assert (=> b!125647 m!146433))

(assert (=> b!124821 d!37805))

(assert (=> b!125089 d!37437))

(declare-fun d!37807 () Bool)

(declare-fun res!60809 () Bool)

(declare-fun e!82082 () Bool)

(assert (=> d!37807 (=> (not res!60809) (not e!82082))))

(assert (=> d!37807 (= res!60809 (validMask!0 (mask!7010 (_2!1291 lt!64127))))))

(assert (=> d!37807 (= (simpleValid!85 (_2!1291 lt!64127)) e!82082)))

(declare-fun b!125652 () Bool)

(assert (=> b!125652 (= e!82082 (and (bvsge (extraKeys!2549 (_2!1291 lt!64127)) #b00000000000000000000000000000000) (bvsle (extraKeys!2549 (_2!1291 lt!64127)) #b00000000000000000000000000000011) (bvsge (_vacant!577 (_2!1291 lt!64127)) #b00000000000000000000000000000000)))))

(declare-fun b!125649 () Bool)

(declare-fun res!60808 () Bool)

(assert (=> b!125649 (=> (not res!60808) (not e!82082))))

(assert (=> b!125649 (= res!60808 (and (= (size!2482 (_values!2747 (_2!1291 lt!64127))) (bvadd (mask!7010 (_2!1291 lt!64127)) #b00000000000000000000000000000001)) (= (size!2481 (_keys!4493 (_2!1291 lt!64127))) (size!2482 (_values!2747 (_2!1291 lt!64127)))) (bvsge (_size!577 (_2!1291 lt!64127)) #b00000000000000000000000000000000) (bvsle (_size!577 (_2!1291 lt!64127)) (bvadd (mask!7010 (_2!1291 lt!64127)) #b00000000000000000000000000000001))))))

(declare-fun b!125651 () Bool)

(declare-fun res!60810 () Bool)

(assert (=> b!125651 (=> (not res!60810) (not e!82082))))

(assert (=> b!125651 (= res!60810 (= (size!2485 (_2!1291 lt!64127)) (bvadd (_size!577 (_2!1291 lt!64127)) (bvsdiv (bvadd (extraKeys!2549 (_2!1291 lt!64127)) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!125650 () Bool)

(declare-fun res!60811 () Bool)

(assert (=> b!125650 (=> (not res!60811) (not e!82082))))

(assert (=> b!125650 (= res!60811 (bvsge (size!2485 (_2!1291 lt!64127)) (_size!577 (_2!1291 lt!64127))))))

(assert (= (and d!37807 res!60809) b!125649))

(assert (= (and b!125649 res!60808) b!125650))

(assert (= (and b!125650 res!60811) b!125651))

(assert (= (and b!125651 res!60810) b!125652))

(declare-fun m!146435 () Bool)

(assert (=> d!37807 m!146435))

(declare-fun m!146437 () Bool)

(assert (=> b!125651 m!146437))

(assert (=> b!125650 m!146437))

(assert (=> d!37445 d!37807))

(declare-fun d!37809 () Bool)

(declare-fun lt!64808 () Bool)

(declare-fun content!123 (List!1717) (InoxSet (_ BitVec 64)))

(assert (=> d!37809 (= lt!64808 (select (content!123 Nil!1714) (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!82088 () Bool)

(assert (=> d!37809 (= lt!64808 e!82088)))

(declare-fun res!60816 () Bool)

(assert (=> d!37809 (=> (not res!60816) (not e!82088))))

(assert (=> d!37809 (= res!60816 ((_ is Cons!1713) Nil!1714))))

(assert (=> d!37809 (= (contains!875 Nil!1714 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)) lt!64808)))

(declare-fun b!125657 () Bool)

(declare-fun e!82087 () Bool)

(assert (=> b!125657 (= e!82088 e!82087)))

(declare-fun res!60817 () Bool)

(assert (=> b!125657 (=> res!60817 e!82087)))

(assert (=> b!125657 (= res!60817 (= (h!2314 Nil!1714) (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!125658 () Bool)

(assert (=> b!125658 (= e!82087 (contains!875 (t!6060 Nil!1714) (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!37809 res!60816) b!125657))

(assert (= (and b!125657 (not res!60817)) b!125658))

(declare-fun m!146439 () Bool)

(assert (=> d!37809 m!146439))

(assert (=> d!37809 m!145047))

(declare-fun m!146441 () Bool)

(assert (=> d!37809 m!146441))

(assert (=> b!125658 m!145047))

(declare-fun m!146443 () Bool)

(assert (=> b!125658 m!146443))

(assert (=> b!124985 d!37809))

(declare-fun d!37811 () Bool)

(declare-fun e!82090 () Bool)

(assert (=> d!37811 e!82090))

(declare-fun res!60818 () Bool)

(assert (=> d!37811 (=> res!60818 e!82090)))

(declare-fun lt!64809 () Bool)

(assert (=> d!37811 (= res!60818 (not lt!64809))))

(declare-fun lt!64812 () Bool)

(assert (=> d!37811 (= lt!64809 lt!64812)))

(declare-fun lt!64810 () Unit!3878)

(declare-fun e!82089 () Unit!3878)

(assert (=> d!37811 (= lt!64810 e!82089)))

(declare-fun c!22938 () Bool)

(assert (=> d!37811 (= c!22938 lt!64812)))

(assert (=> d!37811 (= lt!64812 (containsKey!169 (toList!856 lt!64475) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!37811 (= (contains!873 lt!64475 #b1000000000000000000000000000000000000000000000000000000000000000) lt!64809)))

(declare-fun b!125659 () Bool)

(declare-fun lt!64811 () Unit!3878)

(assert (=> b!125659 (= e!82089 lt!64811)))

(assert (=> b!125659 (= lt!64811 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64475) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!125659 (isDefined!119 (getValueByKey!165 (toList!856 lt!64475) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!125660 () Bool)

(declare-fun Unit!3920 () Unit!3878)

(assert (=> b!125660 (= e!82089 Unit!3920)))

(declare-fun b!125661 () Bool)

(assert (=> b!125661 (= e!82090 (isDefined!119 (getValueByKey!165 (toList!856 lt!64475) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37811 c!22938) b!125659))

(assert (= (and d!37811 (not c!22938)) b!125660))

(assert (= (and d!37811 (not res!60818)) b!125661))

(declare-fun m!146445 () Bool)

(assert (=> d!37811 m!146445))

(declare-fun m!146447 () Bool)

(assert (=> b!125659 m!146447))

(declare-fun m!146449 () Bool)

(assert (=> b!125659 m!146449))

(assert (=> b!125659 m!146449))

(declare-fun m!146451 () Bool)

(assert (=> b!125659 m!146451))

(assert (=> b!125661 m!146449))

(assert (=> b!125661 m!146449))

(assert (=> b!125661 m!146451))

(assert (=> bm!13411 d!37811))

(assert (=> b!124923 d!37551))

(declare-fun d!37813 () Bool)

(declare-fun res!60819 () Bool)

(declare-fun e!82091 () Bool)

(assert (=> d!37813 (=> res!60819 e!82091)))

(assert (=> d!37813 (= res!60819 (and ((_ is Cons!1712) (toList!856 call!13330)) (= (_1!1290 (h!2313 (toList!856 call!13330))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))))))

(assert (=> d!37813 (= (containsKey!169 (toList!856 call!13330) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) e!82091)))

(declare-fun b!125662 () Bool)

(declare-fun e!82092 () Bool)

(assert (=> b!125662 (= e!82091 e!82092)))

(declare-fun res!60820 () Bool)

(assert (=> b!125662 (=> (not res!60820) (not e!82092))))

(assert (=> b!125662 (= res!60820 (and (or (not ((_ is Cons!1712) (toList!856 call!13330))) (bvsle (_1!1290 (h!2313 (toList!856 call!13330))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))) ((_ is Cons!1712) (toList!856 call!13330)) (bvslt (_1!1290 (h!2313 (toList!856 call!13330))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))))))

(declare-fun b!125663 () Bool)

(assert (=> b!125663 (= e!82092 (containsKey!169 (t!6055 (toList!856 call!13330)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (= (and d!37813 (not res!60819)) b!125662))

(assert (= (and b!125662 res!60820) b!125663))

(assert (=> b!125663 m!144661))

(declare-fun m!146453 () Bool)

(assert (=> b!125663 m!146453))

(assert (=> d!37443 d!37813))

(declare-fun d!37815 () Bool)

(assert (=> d!37815 (= (apply!110 lt!64475 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1448 (getValueByKey!165 (toList!856 lt!64475) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5208 () Bool)

(assert (= bs!5208 d!37815))

(assert (=> bs!5208 m!146449))

(assert (=> bs!5208 m!146449))

(declare-fun m!146455 () Bool)

(assert (=> bs!5208 m!146455))

(assert (=> b!125102 d!37815))

(declare-fun d!37817 () Bool)

(declare-fun e!82093 () Bool)

(assert (=> d!37817 e!82093))

(declare-fun res!60821 () Bool)

(assert (=> d!37817 (=> (not res!60821) (not e!82093))))

(declare-fun lt!64813 () ListLongMap!1681)

(assert (=> d!37817 (= res!60821 (contains!873 lt!64813 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))))))

(declare-fun lt!64815 () List!1716)

(assert (=> d!37817 (= lt!64813 (ListLongMap!1682 lt!64815))))

(declare-fun lt!64816 () Unit!3878)

(declare-fun lt!64814 () Unit!3878)

(assert (=> d!37817 (= lt!64816 lt!64814)))

(assert (=> d!37817 (= (getValueByKey!165 lt!64815 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))) (Some!170 (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))))))

(assert (=> d!37817 (= lt!64814 (lemmaContainsTupThenGetReturnValue!82 lt!64815 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))) (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))))))

(assert (=> d!37817 (= lt!64815 (insertStrictlySorted!84 (toList!856 call!13385) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))) (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))))))

(assert (=> d!37817 (= (+!164 call!13385 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))) lt!64813)))

(declare-fun b!125664 () Bool)

(declare-fun res!60822 () Bool)

(assert (=> b!125664 (=> (not res!60822) (not e!82093))))

(assert (=> b!125664 (= res!60822 (= (getValueByKey!165 (toList!856 lt!64813) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))) (Some!170 (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))))))

(declare-fun b!125665 () Bool)

(assert (=> b!125665 (= e!82093 (contains!874 (toList!856 lt!64813) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))))

(assert (= (and d!37817 res!60821) b!125664))

(assert (= (and b!125664 res!60822) b!125665))

(declare-fun m!146457 () Bool)

(assert (=> d!37817 m!146457))

(declare-fun m!146459 () Bool)

(assert (=> d!37817 m!146459))

(declare-fun m!146461 () Bool)

(assert (=> d!37817 m!146461))

(declare-fun m!146463 () Bool)

(assert (=> d!37817 m!146463))

(declare-fun m!146465 () Bool)

(assert (=> b!125664 m!146465))

(declare-fun m!146467 () Bool)

(assert (=> b!125665 m!146467))

(assert (=> b!124960 d!37817))

(assert (=> b!124904 d!37551))

(declare-fun b!125666 () Bool)

(declare-fun e!82094 () Option!171)

(assert (=> b!125666 (= e!82094 (Some!170 (_2!1290 (h!2313 (toList!856 lt!64346)))))))

(declare-fun b!125669 () Bool)

(declare-fun e!82095 () Option!171)

(assert (=> b!125669 (= e!82095 None!169)))

(declare-fun b!125667 () Bool)

(assert (=> b!125667 (= e!82094 e!82095)))

(declare-fun c!22940 () Bool)

(assert (=> b!125667 (= c!22940 (and ((_ is Cons!1712) (toList!856 lt!64346)) (not (= (_1!1290 (h!2313 (toList!856 lt!64346))) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(declare-fun b!125668 () Bool)

(assert (=> b!125668 (= e!82095 (getValueByKey!165 (t!6055 (toList!856 lt!64346)) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun d!37819 () Bool)

(declare-fun c!22939 () Bool)

(assert (=> d!37819 (= c!22939 (and ((_ is Cons!1712) (toList!856 lt!64346)) (= (_1!1290 (h!2313 (toList!856 lt!64346))) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> d!37819 (= (getValueByKey!165 (toList!856 lt!64346) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) e!82094)))

(assert (= (and d!37819 c!22939) b!125666))

(assert (= (and d!37819 (not c!22939)) b!125667))

(assert (= (and b!125667 c!22940) b!125668))

(assert (= (and b!125667 (not c!22940)) b!125669))

(declare-fun m!146469 () Bool)

(assert (=> b!125668 m!146469))

(assert (=> b!125013 d!37819))

(assert (=> b!124868 d!37517))

(assert (=> b!124868 d!37519))

(declare-fun d!37821 () Bool)

(assert (=> d!37821 (= (get!1448 (getValueByKey!165 (toList!856 (+!164 lt!64198 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64183)) (v!3110 (getValueByKey!165 (toList!856 (+!164 lt!64198 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64183)))))

(assert (=> d!37379 d!37821))

(declare-fun e!82096 () Option!171)

(declare-fun b!125670 () Bool)

(assert (=> b!125670 (= e!82096 (Some!170 (_2!1290 (h!2313 (toList!856 (+!164 lt!64198 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))))

(declare-fun b!125673 () Bool)

(declare-fun e!82097 () Option!171)

(assert (=> b!125673 (= e!82097 None!169)))

(declare-fun b!125671 () Bool)

(assert (=> b!125671 (= e!82096 e!82097)))

(declare-fun c!22942 () Bool)

(assert (=> b!125671 (= c!22942 (and ((_ is Cons!1712) (toList!856 (+!164 lt!64198 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))) (not (= (_1!1290 (h!2313 (toList!856 (+!164 lt!64198 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))) lt!64183))))))

(declare-fun b!125672 () Bool)

(assert (=> b!125672 (= e!82097 (getValueByKey!165 (t!6055 (toList!856 (+!164 lt!64198 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))) lt!64183))))

(declare-fun d!37823 () Bool)

(declare-fun c!22941 () Bool)

(assert (=> d!37823 (= c!22941 (and ((_ is Cons!1712) (toList!856 (+!164 lt!64198 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))) (= (_1!1290 (h!2313 (toList!856 (+!164 lt!64198 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))) lt!64183)))))

(assert (=> d!37823 (= (getValueByKey!165 (toList!856 (+!164 lt!64198 (tuple2!2561 lt!64189 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64183) e!82096)))

(assert (= (and d!37823 c!22941) b!125670))

(assert (= (and d!37823 (not c!22941)) b!125671))

(assert (= (and b!125671 c!22942) b!125672))

(assert (= (and b!125671 (not c!22942)) b!125673))

(declare-fun m!146471 () Bool)

(assert (=> b!125672 m!146471))

(assert (=> d!37379 d!37823))

(declare-fun b!125674 () Bool)

(declare-fun e!82098 () Option!171)

(assert (=> b!125674 (= e!82098 (Some!170 (_2!1290 (h!2313 (toList!856 lt!64363)))))))

(declare-fun b!125677 () Bool)

(declare-fun e!82099 () Option!171)

(assert (=> b!125677 (= e!82099 None!169)))

(declare-fun b!125675 () Bool)

(assert (=> b!125675 (= e!82098 e!82099)))

(declare-fun c!22944 () Bool)

(assert (=> b!125675 (= c!22944 (and ((_ is Cons!1712) (toList!856 lt!64363)) (not (= (_1!1290 (h!2313 (toList!856 lt!64363))) (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))))

(declare-fun b!125676 () Bool)

(assert (=> b!125676 (= e!82099 (getValueByKey!165 (t!6055 (toList!856 lt!64363)) (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun c!22943 () Bool)

(declare-fun d!37825 () Bool)

(assert (=> d!37825 (= c!22943 (and ((_ is Cons!1712) (toList!856 lt!64363)) (= (_1!1290 (h!2313 (toList!856 lt!64363))) (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (=> d!37825 (= (getValueByKey!165 (toList!856 lt!64363) (_1!1290 (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) e!82098)))

(assert (= (and d!37825 c!22943) b!125674))

(assert (= (and d!37825 (not c!22943)) b!125675))

(assert (= (and b!125675 c!22944) b!125676))

(assert (= (and b!125675 (not c!22944)) b!125677))

(declare-fun m!146473 () Bool)

(assert (=> b!125676 m!146473))

(assert (=> b!125039 d!37825))

(declare-fun d!37827 () Bool)

(declare-fun e!82101 () Bool)

(assert (=> d!37827 e!82101))

(declare-fun res!60823 () Bool)

(assert (=> d!37827 (=> res!60823 e!82101)))

(declare-fun lt!64817 () Bool)

(assert (=> d!37827 (= res!60823 (not lt!64817))))

(declare-fun lt!64820 () Bool)

(assert (=> d!37827 (= lt!64817 lt!64820)))

(declare-fun lt!64818 () Unit!3878)

(declare-fun e!82100 () Unit!3878)

(assert (=> d!37827 (= lt!64818 e!82100)))

(declare-fun c!22945 () Bool)

(assert (=> d!37827 (= c!22945 lt!64820)))

(assert (=> d!37827 (= lt!64820 (containsKey!169 (toList!856 lt!64207) (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> d!37827 (= (contains!873 lt!64207 (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64817)))

(declare-fun b!125678 () Bool)

(declare-fun lt!64819 () Unit!3878)

(assert (=> b!125678 (= e!82100 lt!64819)))

(assert (=> b!125678 (= lt!64819 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64207) (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> b!125678 (isDefined!119 (getValueByKey!165 (toList!856 lt!64207) (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun b!125679 () Bool)

(declare-fun Unit!3921 () Unit!3878)

(assert (=> b!125679 (= e!82100 Unit!3921)))

(declare-fun b!125680 () Bool)

(assert (=> b!125680 (= e!82101 (isDefined!119 (getValueByKey!165 (toList!856 lt!64207) (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (= (and d!37827 c!22945) b!125678))

(assert (= (and d!37827 (not c!22945)) b!125679))

(assert (= (and d!37827 (not res!60823)) b!125680))

(declare-fun m!146475 () Bool)

(assert (=> d!37827 m!146475))

(declare-fun m!146477 () Bool)

(assert (=> b!125678 m!146477))

(assert (=> b!125678 m!144879))

(assert (=> b!125678 m!144879))

(declare-fun m!146479 () Bool)

(assert (=> b!125678 m!146479))

(assert (=> b!125680 m!144879))

(assert (=> b!125680 m!144879))

(assert (=> b!125680 m!146479))

(assert (=> d!37363 d!37827))

(declare-fun b!125681 () Bool)

(declare-fun e!82102 () Option!171)

(assert (=> b!125681 (= e!82102 (Some!170 (_2!1290 (h!2313 lt!64209))))))

(declare-fun b!125684 () Bool)

(declare-fun e!82103 () Option!171)

(assert (=> b!125684 (= e!82103 None!169)))

(declare-fun b!125682 () Bool)

(assert (=> b!125682 (= e!82102 e!82103)))

(declare-fun c!22947 () Bool)

(assert (=> b!125682 (= c!22947 (and ((_ is Cons!1712) lt!64209) (not (= (_1!1290 (h!2313 lt!64209)) (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(declare-fun b!125683 () Bool)

(assert (=> b!125683 (= e!82103 (getValueByKey!165 (t!6055 lt!64209) (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun d!37829 () Bool)

(declare-fun c!22946 () Bool)

(assert (=> d!37829 (= c!22946 (and ((_ is Cons!1712) lt!64209) (= (_1!1290 (h!2313 lt!64209)) (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> d!37829 (= (getValueByKey!165 lt!64209 (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) e!82102)))

(assert (= (and d!37829 c!22946) b!125681))

(assert (= (and d!37829 (not c!22946)) b!125682))

(assert (= (and b!125682 c!22947) b!125683))

(assert (= (and b!125682 (not c!22947)) b!125684))

(declare-fun m!146481 () Bool)

(assert (=> b!125683 m!146481))

(assert (=> d!37363 d!37829))

(declare-fun d!37831 () Bool)

(assert (=> d!37831 (= (getValueByKey!165 lt!64209 (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) (Some!170 (_2!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun lt!64821 () Unit!3878)

(assert (=> d!37831 (= lt!64821 (choose!764 lt!64209 (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun e!82104 () Bool)

(assert (=> d!37831 e!82104))

(declare-fun res!60824 () Bool)

(assert (=> d!37831 (=> (not res!60824) (not e!82104))))

(assert (=> d!37831 (= res!60824 (isStrictlySorted!311 lt!64209))))

(assert (=> d!37831 (= (lemmaContainsTupThenGetReturnValue!82 lt!64209 (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64821)))

(declare-fun b!125685 () Bool)

(declare-fun res!60825 () Bool)

(assert (=> b!125685 (=> (not res!60825) (not e!82104))))

(assert (=> b!125685 (= res!60825 (containsKey!169 lt!64209 (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun b!125686 () Bool)

(assert (=> b!125686 (= e!82104 (contains!874 lt!64209 (tuple2!2561 (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (= (and d!37831 res!60824) b!125685))

(assert (= (and b!125685 res!60825) b!125686))

(assert (=> d!37831 m!144873))

(declare-fun m!146483 () Bool)

(assert (=> d!37831 m!146483))

(declare-fun m!146485 () Bool)

(assert (=> d!37831 m!146485))

(declare-fun m!146487 () Bool)

(assert (=> b!125685 m!146487))

(declare-fun m!146489 () Bool)

(assert (=> b!125686 m!146489))

(assert (=> d!37363 d!37831))

(declare-fun b!125687 () Bool)

(declare-fun e!82107 () List!1716)

(declare-fun call!13472 () List!1716)

(assert (=> b!125687 (= e!82107 call!13472)))

(declare-fun c!22948 () Bool)

(declare-fun bm!13468 () Bool)

(declare-fun call!13471 () List!1716)

(declare-fun e!82106 () List!1716)

(assert (=> bm!13468 (= call!13471 ($colon$colon!87 e!82106 (ite c!22948 (h!2313 (toList!856 lt!64180)) (tuple2!2561 (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(declare-fun c!22949 () Bool)

(assert (=> bm!13468 (= c!22949 c!22948)))

(declare-fun d!37833 () Bool)

(declare-fun e!82108 () Bool)

(assert (=> d!37833 e!82108))

(declare-fun res!60826 () Bool)

(assert (=> d!37833 (=> (not res!60826) (not e!82108))))

(declare-fun lt!64822 () List!1716)

(assert (=> d!37833 (= res!60826 (isStrictlySorted!311 lt!64822))))

(declare-fun e!82105 () List!1716)

(assert (=> d!37833 (= lt!64822 e!82105)))

(assert (=> d!37833 (= c!22948 (and ((_ is Cons!1712) (toList!856 lt!64180)) (bvslt (_1!1290 (h!2313 (toList!856 lt!64180))) (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> d!37833 (isStrictlySorted!311 (toList!856 lt!64180))))

(assert (=> d!37833 (= (insertStrictlySorted!84 (toList!856 lt!64180) (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!64822)))

(declare-fun b!125688 () Bool)

(assert (=> b!125688 (= e!82108 (contains!874 lt!64822 (tuple2!2561 (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun b!125689 () Bool)

(assert (=> b!125689 (= e!82107 call!13472)))

(declare-fun c!22951 () Bool)

(declare-fun c!22950 () Bool)

(declare-fun b!125690 () Bool)

(assert (=> b!125690 (= e!82106 (ite c!22950 (t!6055 (toList!856 lt!64180)) (ite c!22951 (Cons!1712 (h!2313 (toList!856 lt!64180)) (t!6055 (toList!856 lt!64180))) Nil!1713)))))

(declare-fun b!125691 () Bool)

(declare-fun e!82109 () List!1716)

(declare-fun call!13473 () List!1716)

(assert (=> b!125691 (= e!82109 call!13473)))

(declare-fun b!125692 () Bool)

(assert (=> b!125692 (= c!22951 (and ((_ is Cons!1712) (toList!856 lt!64180)) (bvsgt (_1!1290 (h!2313 (toList!856 lt!64180))) (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> b!125692 (= e!82109 e!82107)))

(declare-fun b!125693 () Bool)

(declare-fun res!60827 () Bool)

(assert (=> b!125693 (=> (not res!60827) (not e!82108))))

(assert (=> b!125693 (= res!60827 (containsKey!169 lt!64822 (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun b!125694 () Bool)

(assert (=> b!125694 (= e!82105 call!13471)))

(declare-fun b!125695 () Bool)

(assert (=> b!125695 (= e!82105 e!82109)))

(assert (=> b!125695 (= c!22950 (and ((_ is Cons!1712) (toList!856 lt!64180)) (= (_1!1290 (h!2313 (toList!856 lt!64180))) (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun bm!13469 () Bool)

(assert (=> bm!13469 (= call!13472 call!13473)))

(declare-fun bm!13470 () Bool)

(assert (=> bm!13470 (= call!13473 call!13471)))

(declare-fun b!125696 () Bool)

(assert (=> b!125696 (= e!82106 (insertStrictlySorted!84 (t!6055 (toList!856 lt!64180)) (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (= (and d!37833 c!22948) b!125694))

(assert (= (and d!37833 (not c!22948)) b!125695))

(assert (= (and b!125695 c!22950) b!125691))

(assert (= (and b!125695 (not c!22950)) b!125692))

(assert (= (and b!125692 c!22951) b!125687))

(assert (= (and b!125692 (not c!22951)) b!125689))

(assert (= (or b!125687 b!125689) bm!13469))

(assert (= (or b!125691 bm!13469) bm!13470))

(assert (= (or b!125694 bm!13470) bm!13468))

(assert (= (and bm!13468 c!22949) b!125696))

(assert (= (and bm!13468 (not c!22949)) b!125690))

(assert (= (and d!37833 res!60826) b!125693))

(assert (= (and b!125693 res!60827) b!125688))

(declare-fun m!146491 () Bool)

(assert (=> bm!13468 m!146491))

(declare-fun m!146493 () Bool)

(assert (=> d!37833 m!146493))

(declare-fun m!146495 () Bool)

(assert (=> d!37833 m!146495))

(declare-fun m!146497 () Bool)

(assert (=> b!125696 m!146497))

(declare-fun m!146499 () Bool)

(assert (=> b!125688 m!146499))

(declare-fun m!146501 () Bool)

(assert (=> b!125693 m!146501))

(assert (=> d!37363 d!37833))

(declare-fun d!37835 () Bool)

(declare-fun e!82111 () Bool)

(assert (=> d!37835 e!82111))

(declare-fun res!60828 () Bool)

(assert (=> d!37835 (=> res!60828 e!82111)))

(declare-fun lt!64823 () Bool)

(assert (=> d!37835 (= res!60828 (not lt!64823))))

(declare-fun lt!64826 () Bool)

(assert (=> d!37835 (= lt!64823 lt!64826)))

(declare-fun lt!64824 () Unit!3878)

(declare-fun e!82110 () Unit!3878)

(assert (=> d!37835 (= lt!64824 e!82110)))

(declare-fun c!22952 () Bool)

(assert (=> d!37835 (= c!22952 lt!64826)))

(assert (=> d!37835 (= lt!64826 (containsKey!169 (toList!856 lt!64241) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!37835 (= (contains!873 lt!64241 #b1000000000000000000000000000000000000000000000000000000000000000) lt!64823)))

(declare-fun b!125697 () Bool)

(declare-fun lt!64825 () Unit!3878)

(assert (=> b!125697 (= e!82110 lt!64825)))

(assert (=> b!125697 (= lt!64825 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64241) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!125697 (isDefined!119 (getValueByKey!165 (toList!856 lt!64241) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!125698 () Bool)

(declare-fun Unit!3922 () Unit!3878)

(assert (=> b!125698 (= e!82110 Unit!3922)))

(declare-fun b!125699 () Bool)

(assert (=> b!125699 (= e!82111 (isDefined!119 (getValueByKey!165 (toList!856 lt!64241) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37835 c!22952) b!125697))

(assert (= (and d!37835 (not c!22952)) b!125698))

(assert (= (and d!37835 (not res!60828)) b!125699))

(declare-fun m!146503 () Bool)

(assert (=> d!37835 m!146503))

(declare-fun m!146505 () Bool)

(assert (=> b!125697 m!146505))

(declare-fun m!146507 () Bool)

(assert (=> b!125697 m!146507))

(assert (=> b!125697 m!146507))

(declare-fun m!146509 () Bool)

(assert (=> b!125697 m!146509))

(assert (=> b!125699 m!146507))

(assert (=> b!125699 m!146507))

(assert (=> b!125699 m!146509))

(assert (=> b!124853 d!37835))

(declare-fun d!37837 () Bool)

(assert (=> d!37837 (= (apply!110 lt!64475 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1448 (getValueByKey!165 (toList!856 lt!64475) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5209 () Bool)

(assert (= bs!5209 d!37837))

(declare-fun m!146511 () Bool)

(assert (=> bs!5209 m!146511))

(assert (=> bs!5209 m!146511))

(declare-fun m!146513 () Bool)

(assert (=> bs!5209 m!146513))

(assert (=> b!125108 d!37837))

(assert (=> b!125081 d!37513))

(declare-fun d!37839 () Bool)

(declare-fun e!82112 () Bool)

(assert (=> d!37839 e!82112))

(declare-fun res!60829 () Bool)

(assert (=> d!37839 (=> (not res!60829) (not e!82112))))

(declare-fun lt!64827 () ListLongMap!1681)

(assert (=> d!37839 (= res!60829 (contains!873 lt!64827 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!64829 () List!1716)

(assert (=> d!37839 (= lt!64827 (ListLongMap!1682 lt!64829))))

(declare-fun lt!64830 () Unit!3878)

(declare-fun lt!64828 () Unit!3878)

(assert (=> d!37839 (= lt!64830 lt!64828)))

(assert (=> d!37839 (= (getValueByKey!165 lt!64829 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!170 (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37839 (= lt!64828 (lemmaContainsTupThenGetReturnValue!82 lt!64829 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37839 (= lt!64829 (insertStrictlySorted!84 (toList!856 (map!1379 newMap!16)) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37839 (= (+!164 (map!1379 newMap!16) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!64827)))

(declare-fun b!125700 () Bool)

(declare-fun res!60830 () Bool)

(assert (=> b!125700 (=> (not res!60830) (not e!82112))))

(assert (=> b!125700 (= res!60830 (= (getValueByKey!165 (toList!856 lt!64827) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!170 (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!125701 () Bool)

(assert (=> b!125701 (= e!82112 (contains!874 (toList!856 lt!64827) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!37839 res!60829) b!125700))

(assert (= (and b!125700 res!60830) b!125701))

(declare-fun m!146515 () Bool)

(assert (=> d!37839 m!146515))

(declare-fun m!146517 () Bool)

(assert (=> d!37839 m!146517))

(declare-fun m!146519 () Bool)

(assert (=> d!37839 m!146519))

(declare-fun m!146521 () Bool)

(assert (=> d!37839 m!146521))

(declare-fun m!146523 () Bool)

(assert (=> b!125700 m!146523))

(declare-fun m!146525 () Bool)

(assert (=> b!125701 m!146525))

(assert (=> b!125081 d!37839))

(assert (=> b!125081 d!37355))

(declare-fun d!37841 () Bool)

(declare-fun lt!64831 () Bool)

(assert (=> d!37841 (= lt!64831 (select (content!122 (toList!856 lt!64367)) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!82113 () Bool)

(assert (=> d!37841 (= lt!64831 e!82113)))

(declare-fun res!60832 () Bool)

(assert (=> d!37841 (=> (not res!60832) (not e!82113))))

(assert (=> d!37841 (= res!60832 ((_ is Cons!1712) (toList!856 lt!64367)))))

(assert (=> d!37841 (= (contains!874 (toList!856 lt!64367) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!64831)))

(declare-fun b!125702 () Bool)

(declare-fun e!82114 () Bool)

(assert (=> b!125702 (= e!82113 e!82114)))

(declare-fun res!60831 () Bool)

(assert (=> b!125702 (=> res!60831 e!82114)))

(assert (=> b!125702 (= res!60831 (= (h!2313 (toList!856 lt!64367)) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!125703 () Bool)

(assert (=> b!125703 (= e!82114 (contains!874 (t!6055 (toList!856 lt!64367)) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!37841 res!60832) b!125702))

(assert (= (and b!125702 (not res!60831)) b!125703))

(declare-fun m!146527 () Bool)

(assert (=> d!37841 m!146527))

(declare-fun m!146529 () Bool)

(assert (=> d!37841 m!146529))

(declare-fun m!146531 () Bool)

(assert (=> b!125703 m!146531))

(assert (=> b!125042 d!37841))

(assert (=> b!124893 d!37551))

(declare-fun d!37843 () Bool)

(assert (=> d!37843 (isDefined!119 (getValueByKey!165 (toList!856 e!81515) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun lt!64832 () Unit!3878)

(assert (=> d!37843 (= lt!64832 (choose!763 (toList!856 e!81515) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun e!82115 () Bool)

(assert (=> d!37843 e!82115))

(declare-fun res!60833 () Bool)

(assert (=> d!37843 (=> (not res!60833) (not e!82115))))

(assert (=> d!37843 (= res!60833 (isStrictlySorted!311 (toList!856 e!81515)))))

(assert (=> d!37843 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 e!81515) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) lt!64832)))

(declare-fun b!125704 () Bool)

(assert (=> b!125704 (= e!82115 (containsKey!169 (toList!856 e!81515) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (= (and d!37843 res!60833) b!125704))

(assert (=> d!37843 m!144661))

(assert (=> d!37843 m!145383))

(assert (=> d!37843 m!145383))

(assert (=> d!37843 m!145385))

(assert (=> d!37843 m!144661))

(declare-fun m!146533 () Bool)

(assert (=> d!37843 m!146533))

(declare-fun m!146535 () Bool)

(assert (=> d!37843 m!146535))

(assert (=> b!125704 m!144661))

(assert (=> b!125704 m!145379))

(assert (=> b!125118 d!37843))

(assert (=> b!125118 d!37603))

(assert (=> b!125118 d!37605))

(assert (=> b!124856 d!37553))

(declare-fun d!37845 () Bool)

(assert (=> d!37845 (= (size!2485 newMap!16) (bvadd (_size!577 newMap!16) (bvsdiv (bvadd (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!124933 d!37845))

(declare-fun d!37847 () Bool)

(assert (=> d!37847 (= (get!1448 (getValueByKey!165 (toList!856 lt!64186) lt!64182)) (v!3110 (getValueByKey!165 (toList!856 lt!64186) lt!64182)))))

(assert (=> d!37387 d!37847))

(declare-fun b!125705 () Bool)

(declare-fun e!82116 () Option!171)

(assert (=> b!125705 (= e!82116 (Some!170 (_2!1290 (h!2313 (toList!856 lt!64186)))))))

(declare-fun b!125708 () Bool)

(declare-fun e!82117 () Option!171)

(assert (=> b!125708 (= e!82117 None!169)))

(declare-fun b!125706 () Bool)

(assert (=> b!125706 (= e!82116 e!82117)))

(declare-fun c!22954 () Bool)

(assert (=> b!125706 (= c!22954 (and ((_ is Cons!1712) (toList!856 lt!64186)) (not (= (_1!1290 (h!2313 (toList!856 lt!64186))) lt!64182))))))

(declare-fun b!125707 () Bool)

(assert (=> b!125707 (= e!82117 (getValueByKey!165 (t!6055 (toList!856 lt!64186)) lt!64182))))

(declare-fun d!37849 () Bool)

(declare-fun c!22953 () Bool)

(assert (=> d!37849 (= c!22953 (and ((_ is Cons!1712) (toList!856 lt!64186)) (= (_1!1290 (h!2313 (toList!856 lt!64186))) lt!64182)))))

(assert (=> d!37849 (= (getValueByKey!165 (toList!856 lt!64186) lt!64182) e!82116)))

(assert (= (and d!37849 c!22953) b!125705))

(assert (= (and d!37849 (not c!22953)) b!125706))

(assert (= (and b!125706 c!22954) b!125707))

(assert (= (and b!125706 (not c!22954)) b!125708))

(declare-fun m!146537 () Bool)

(assert (=> b!125707 m!146537))

(assert (=> d!37387 d!37849))

(declare-fun d!37851 () Bool)

(declare-fun e!82119 () Bool)

(assert (=> d!37851 e!82119))

(declare-fun res!60834 () Bool)

(assert (=> d!37851 (=> res!60834 e!82119)))

(declare-fun lt!64833 () Bool)

(assert (=> d!37851 (= res!60834 (not lt!64833))))

(declare-fun lt!64836 () Bool)

(assert (=> d!37851 (= lt!64833 lt!64836)))

(declare-fun lt!64834 () Unit!3878)

(declare-fun e!82118 () Unit!3878)

(assert (=> d!37851 (= lt!64834 e!82118)))

(declare-fun c!22955 () Bool)

(assert (=> d!37851 (= c!22955 lt!64836)))

(assert (=> d!37851 (= lt!64836 (containsKey!169 (toList!856 lt!64475) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!37851 (= (contains!873 lt!64475 #b0000000000000000000000000000000000000000000000000000000000000000) lt!64833)))

(declare-fun b!125709 () Bool)

(declare-fun lt!64835 () Unit!3878)

(assert (=> b!125709 (= e!82118 lt!64835)))

(assert (=> b!125709 (= lt!64835 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64475) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!125709 (isDefined!119 (getValueByKey!165 (toList!856 lt!64475) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!125710 () Bool)

(declare-fun Unit!3923 () Unit!3878)

(assert (=> b!125710 (= e!82118 Unit!3923)))

(declare-fun b!125711 () Bool)

(assert (=> b!125711 (= e!82119 (isDefined!119 (getValueByKey!165 (toList!856 lt!64475) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37851 c!22955) b!125709))

(assert (= (and d!37851 (not c!22955)) b!125710))

(assert (= (and d!37851 (not res!60834)) b!125711))

(declare-fun m!146539 () Bool)

(assert (=> d!37851 m!146539))

(declare-fun m!146541 () Bool)

(assert (=> b!125709 m!146541))

(assert (=> b!125709 m!146511))

(assert (=> b!125709 m!146511))

(declare-fun m!146543 () Bool)

(assert (=> b!125709 m!146543))

(assert (=> b!125711 m!146511))

(assert (=> b!125711 m!146511))

(assert (=> b!125711 m!146543))

(assert (=> bm!13408 d!37851))

(declare-fun d!37853 () Bool)

(declare-fun e!82121 () Bool)

(assert (=> d!37853 e!82121))

(declare-fun res!60835 () Bool)

(assert (=> d!37853 (=> res!60835 e!82121)))

(declare-fun lt!64837 () Bool)

(assert (=> d!37853 (= res!60835 (not lt!64837))))

(declare-fun lt!64840 () Bool)

(assert (=> d!37853 (= lt!64837 lt!64840)))

(declare-fun lt!64838 () Unit!3878)

(declare-fun e!82120 () Unit!3878)

(assert (=> d!37853 (= lt!64838 e!82120)))

(declare-fun c!22956 () Bool)

(assert (=> d!37853 (= c!22956 lt!64840)))

(assert (=> d!37853 (= lt!64840 (containsKey!169 (toList!856 lt!64320) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!37853 (= (contains!873 lt!64320 #b1000000000000000000000000000000000000000000000000000000000000000) lt!64837)))

(declare-fun b!125712 () Bool)

(declare-fun lt!64839 () Unit!3878)

(assert (=> b!125712 (= e!82120 lt!64839)))

(assert (=> b!125712 (= lt!64839 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64320) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!125712 (isDefined!119 (getValueByKey!165 (toList!856 lt!64320) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!125713 () Bool)

(declare-fun Unit!3924 () Unit!3878)

(assert (=> b!125713 (= e!82120 Unit!3924)))

(declare-fun b!125714 () Bool)

(assert (=> b!125714 (= e!82121 (isDefined!119 (getValueByKey!165 (toList!856 lt!64320) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37853 c!22956) b!125712))

(assert (= (and d!37853 (not c!22956)) b!125713))

(assert (= (and d!37853 (not res!60835)) b!125714))

(declare-fun m!146545 () Bool)

(assert (=> d!37853 m!146545))

(declare-fun m!146547 () Bool)

(assert (=> b!125712 m!146547))

(declare-fun m!146549 () Bool)

(assert (=> b!125712 m!146549))

(assert (=> b!125712 m!146549))

(declare-fun m!146551 () Bool)

(assert (=> b!125712 m!146551))

(assert (=> b!125714 m!146549))

(assert (=> b!125714 m!146549))

(assert (=> b!125714 m!146551))

(assert (=> bm!13383 d!37853))

(declare-fun d!37855 () Bool)

(assert (=> d!37855 (= (apply!110 lt!64320 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1448 (getValueByKey!165 (toList!856 lt!64320) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5210 () Bool)

(assert (= bs!5210 d!37855))

(assert (=> bs!5210 m!146549))

(assert (=> bs!5210 m!146549))

(declare-fun m!146553 () Bool)

(assert (=> bs!5210 m!146553))

(assert (=> b!124953 d!37855))

(declare-fun d!37857 () Bool)

(declare-fun e!82123 () Bool)

(assert (=> d!37857 e!82123))

(declare-fun res!60836 () Bool)

(assert (=> d!37857 (=> res!60836 e!82123)))

(declare-fun lt!64841 () Bool)

(assert (=> d!37857 (= res!60836 (not lt!64841))))

(declare-fun lt!64844 () Bool)

(assert (=> d!37857 (= lt!64841 lt!64844)))

(declare-fun lt!64842 () Unit!3878)

(declare-fun e!82122 () Unit!3878)

(assert (=> d!37857 (= lt!64842 e!82122)))

(declare-fun c!22957 () Bool)

(assert (=> d!37857 (= c!22957 lt!64844)))

(assert (=> d!37857 (= lt!64844 (containsKey!169 (toList!856 lt!64241) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!37857 (= (contains!873 lt!64241 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!64841)))

(declare-fun b!125715 () Bool)

(declare-fun lt!64843 () Unit!3878)

(assert (=> b!125715 (= e!82122 lt!64843)))

(assert (=> b!125715 (= lt!64843 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64241) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!125715 (isDefined!119 (getValueByKey!165 (toList!856 lt!64241) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!125716 () Bool)

(declare-fun Unit!3925 () Unit!3878)

(assert (=> b!125716 (= e!82122 Unit!3925)))

(declare-fun b!125717 () Bool)

(assert (=> b!125717 (= e!82123 (isDefined!119 (getValueByKey!165 (toList!856 lt!64241) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!37857 c!22957) b!125715))

(assert (= (and d!37857 (not c!22957)) b!125716))

(assert (= (and d!37857 (not res!60836)) b!125717))

(assert (=> d!37857 m!144811))

(declare-fun m!146555 () Bool)

(assert (=> d!37857 m!146555))

(assert (=> b!125715 m!144811))

(declare-fun m!146557 () Bool)

(assert (=> b!125715 m!146557))

(assert (=> b!125715 m!144811))

(assert (=> b!125715 m!145973))

(assert (=> b!125715 m!145973))

(declare-fun m!146559 () Bool)

(assert (=> b!125715 m!146559))

(assert (=> b!125717 m!144811))

(assert (=> b!125717 m!145973))

(assert (=> b!125717 m!145973))

(assert (=> b!125717 m!146559))

(assert (=> b!124858 d!37857))

(declare-fun d!37859 () Bool)

(declare-fun lt!64845 () Bool)

(assert (=> d!37859 (= lt!64845 (select (content!122 (toList!856 lt!64207)) (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun e!82124 () Bool)

(assert (=> d!37859 (= lt!64845 e!82124)))

(declare-fun res!60838 () Bool)

(assert (=> d!37859 (=> (not res!60838) (not e!82124))))

(assert (=> d!37859 (= res!60838 ((_ is Cons!1712) (toList!856 lt!64207)))))

(assert (=> d!37859 (= (contains!874 (toList!856 lt!64207) (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64845)))

(declare-fun b!125718 () Bool)

(declare-fun e!82125 () Bool)

(assert (=> b!125718 (= e!82124 e!82125)))

(declare-fun res!60837 () Bool)

(assert (=> b!125718 (=> res!60837 e!82125)))

(assert (=> b!125718 (= res!60837 (= (h!2313 (toList!856 lt!64207)) (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun b!125719 () Bool)

(assert (=> b!125719 (= e!82125 (contains!874 (t!6055 (toList!856 lt!64207)) (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))

(assert (= (and d!37859 res!60838) b!125718))

(assert (= (and b!125718 (not res!60837)) b!125719))

(declare-fun m!146561 () Bool)

(assert (=> d!37859 m!146561))

(declare-fun m!146563 () Bool)

(assert (=> d!37859 m!146563))

(declare-fun m!146565 () Bool)

(assert (=> b!125719 m!146565))

(assert (=> b!124818 d!37859))

(assert (=> b!125138 d!37409))

(assert (=> b!124983 d!37551))

(declare-fun d!37861 () Bool)

(assert (=> d!37861 (= (+!164 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!528 (_keys!4493 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(assert (=> d!37861 true))

(declare-fun _$5!122 () Unit!3878)

(assert (=> d!37861 (= (choose!760 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (index!3271 lt!64122) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2764 newMap!16)) _$5!122)))

(declare-fun bs!5211 () Bool)

(assert (= bs!5211 d!37861))

(assert (=> bs!5211 m!144781))

(assert (=> bs!5211 m!144781))

(assert (=> bs!5211 m!145037))

(assert (=> bs!5211 m!144765))

(assert (=> bs!5211 m!145039))

(assert (=> d!37415 d!37861))

(assert (=> d!37415 d!37483))

(assert (=> b!125099 d!37551))

(declare-fun d!37863 () Bool)

(assert (=> d!37863 (isDefined!119 (getValueByKey!165 (toList!856 lt!64187) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun lt!64846 () Unit!3878)

(assert (=> d!37863 (= lt!64846 (choose!763 (toList!856 lt!64187) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!82126 () Bool)

(assert (=> d!37863 e!82126))

(declare-fun res!60839 () Bool)

(assert (=> d!37863 (=> (not res!60839) (not e!82126))))

(assert (=> d!37863 (= res!60839 (isStrictlySorted!311 (toList!856 lt!64187)))))

(assert (=> d!37863 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64187) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!64846)))

(declare-fun b!125720 () Bool)

(assert (=> b!125720 (= e!82126 (containsKey!169 (toList!856 lt!64187) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (= (and d!37863 res!60839) b!125720))

(assert (=> d!37863 m!144811))

(assert (=> d!37863 m!144997))

(assert (=> d!37863 m!144997))

(assert (=> d!37863 m!145169))

(assert (=> d!37863 m!144811))

(declare-fun m!146567 () Bool)

(assert (=> d!37863 m!146567))

(assert (=> d!37863 m!145911))

(assert (=> b!125720 m!144811))

(assert (=> b!125720 m!145165))

(assert (=> b!124969 d!37863))

(assert (=> b!124969 d!37673))

(assert (=> b!124969 d!37675))

(declare-fun d!37865 () Bool)

(assert (=> d!37865 (isDefined!119 (getValueByKey!165 (toList!856 call!13333) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122))))))

(declare-fun lt!64847 () Unit!3878)

(assert (=> d!37865 (= lt!64847 (choose!763 (toList!856 call!13333) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122))))))

(declare-fun e!82127 () Bool)

(assert (=> d!37865 e!82127))

(declare-fun res!60840 () Bool)

(assert (=> d!37865 (=> (not res!60840) (not e!82127))))

(assert (=> d!37865 (= res!60840 (isStrictlySorted!311 (toList!856 call!13333)))))

(assert (=> d!37865 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 call!13333) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122))) lt!64847)))

(declare-fun b!125721 () Bool)

(assert (=> b!125721 (= e!82127 (containsKey!169 (toList!856 call!13333) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122))))))

(assert (= (and d!37865 res!60840) b!125721))

(assert (=> d!37865 m!144767))

(assert (=> d!37865 m!145025))

(assert (=> d!37865 m!145025))

(assert (=> d!37865 m!145027))

(assert (=> d!37865 m!144767))

(declare-fun m!146569 () Bool)

(assert (=> d!37865 m!146569))

(declare-fun m!146571 () Bool)

(assert (=> d!37865 m!146571))

(assert (=> b!125721 m!144767))

(assert (=> b!125721 m!145021))

(assert (=> b!124882 d!37865))

(assert (=> b!124882 d!37631))

(assert (=> b!124882 d!37633))

(declare-fun d!37867 () Bool)

(declare-fun e!82128 () Bool)

(assert (=> d!37867 e!82128))

(declare-fun res!60841 () Bool)

(assert (=> d!37867 (=> (not res!60841) (not e!82128))))

(declare-fun lt!64848 () ListLongMap!1681)

(assert (=> d!37867 (= res!60841 (contains!873 lt!64848 (_1!1290 (ite (or c!22722 c!22724) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))))))

(declare-fun lt!64850 () List!1716)

(assert (=> d!37867 (= lt!64848 (ListLongMap!1682 lt!64850))))

(declare-fun lt!64851 () Unit!3878)

(declare-fun lt!64849 () Unit!3878)

(assert (=> d!37867 (= lt!64851 lt!64849)))

(assert (=> d!37867 (= (getValueByKey!165 lt!64850 (_1!1290 (ite (or c!22722 c!22724) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))) (Some!170 (_2!1290 (ite (or c!22722 c!22724) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))))))

(assert (=> d!37867 (= lt!64849 (lemmaContainsTupThenGetReturnValue!82 lt!64850 (_1!1290 (ite (or c!22722 c!22724) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))) (_2!1290 (ite (or c!22722 c!22724) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))))))

(assert (=> d!37867 (= lt!64850 (insertStrictlySorted!84 (toList!856 (ite c!22722 call!13367 (ite c!22724 call!13370 call!13373))) (_1!1290 (ite (or c!22722 c!22724) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))) (_2!1290 (ite (or c!22722 c!22724) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))))))

(assert (=> d!37867 (= (+!164 (ite c!22722 call!13367 (ite c!22724 call!13370 call!13373)) (ite (or c!22722 c!22724) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))) lt!64848)))

(declare-fun b!125722 () Bool)

(declare-fun res!60842 () Bool)

(assert (=> b!125722 (=> (not res!60842) (not e!82128))))

(assert (=> b!125722 (= res!60842 (= (getValueByKey!165 (toList!856 lt!64848) (_1!1290 (ite (or c!22722 c!22724) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))) (Some!170 (_2!1290 (ite (or c!22722 c!22724) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))))))))

(declare-fun b!125723 () Bool)

(assert (=> b!125723 (= e!82128 (contains!874 (toList!856 lt!64848) (ite (or c!22722 c!22724) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))))))

(assert (= (and d!37867 res!60841) b!125722))

(assert (= (and b!125722 res!60842) b!125723))

(declare-fun m!146573 () Bool)

(assert (=> d!37867 m!146573))

(declare-fun m!146575 () Bool)

(assert (=> d!37867 m!146575))

(declare-fun m!146577 () Bool)

(assert (=> d!37867 m!146577))

(declare-fun m!146579 () Bool)

(assert (=> d!37867 m!146579))

(declare-fun m!146581 () Bool)

(assert (=> b!125722 m!146581))

(declare-fun m!146583 () Bool)

(assert (=> b!125723 m!146583))

(assert (=> bm!13366 d!37867))

(assert (=> bm!13392 d!37465))

(declare-fun d!37869 () Bool)

(declare-fun e!82130 () Bool)

(assert (=> d!37869 e!82130))

(declare-fun res!60843 () Bool)

(assert (=> d!37869 (=> res!60843 e!82130)))

(declare-fun lt!64852 () Bool)

(assert (=> d!37869 (= res!60843 (not lt!64852))))

(declare-fun lt!64855 () Bool)

(assert (=> d!37869 (= lt!64852 lt!64855)))

(declare-fun lt!64853 () Unit!3878)

(declare-fun e!82129 () Unit!3878)

(assert (=> d!37869 (= lt!64853 e!82129)))

(declare-fun c!22958 () Bool)

(assert (=> d!37869 (= c!22958 lt!64855)))

(assert (=> d!37869 (= lt!64855 (containsKey!169 (toList!856 lt!64320) (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!37869 (= (contains!873 lt!64320 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)) lt!64852)))

(declare-fun b!125724 () Bool)

(declare-fun lt!64854 () Unit!3878)

(assert (=> b!125724 (= e!82129 lt!64854)))

(assert (=> b!125724 (= lt!64854 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64320) (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!125724 (isDefined!119 (getValueByKey!165 (toList!856 lt!64320) (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!125725 () Bool)

(declare-fun Unit!3926 () Unit!3878)

(assert (=> b!125725 (= e!82129 Unit!3926)))

(declare-fun b!125726 () Bool)

(assert (=> b!125726 (= e!82130 (isDefined!119 (getValueByKey!165 (toList!856 lt!64320) (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))))

(assert (= (and d!37869 c!22958) b!125724))

(assert (= (and d!37869 (not c!22958)) b!125725))

(assert (= (and d!37869 (not res!60843)) b!125726))

(assert (=> d!37869 m!145047))

(declare-fun m!146585 () Bool)

(assert (=> d!37869 m!146585))

(assert (=> b!125724 m!145047))

(declare-fun m!146587 () Bool)

(assert (=> b!125724 m!146587))

(assert (=> b!125724 m!145047))

(assert (=> b!125724 m!146239))

(assert (=> b!125724 m!146239))

(declare-fun m!146589 () Bool)

(assert (=> b!125724 m!146589))

(assert (=> b!125726 m!145047))

(assert (=> b!125726 m!146239))

(assert (=> b!125726 m!146239))

(assert (=> b!125726 m!146589))

(assert (=> b!124958 d!37869))

(declare-fun d!37871 () Bool)

(declare-fun e!82131 () Bool)

(assert (=> d!37871 e!82131))

(declare-fun res!60844 () Bool)

(assert (=> d!37871 (=> (not res!60844) (not e!82131))))

(declare-fun lt!64856 () ListLongMap!1681)

(assert (=> d!37871 (= res!60844 (contains!873 lt!64856 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!64858 () List!1716)

(assert (=> d!37871 (= lt!64856 (ListLongMap!1682 lt!64858))))

(declare-fun lt!64859 () Unit!3878)

(declare-fun lt!64857 () Unit!3878)

(assert (=> d!37871 (= lt!64859 lt!64857)))

(assert (=> d!37871 (= (getValueByKey!165 lt!64858 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!170 (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37871 (= lt!64857 (lemmaContainsTupThenGetReturnValue!82 lt!64858 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37871 (= lt!64858 (insertStrictlySorted!84 (toList!856 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16))) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37871 (= (+!164 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!64856)))

(declare-fun b!125727 () Bool)

(declare-fun res!60845 () Bool)

(assert (=> b!125727 (=> (not res!60845) (not e!82131))))

(assert (=> b!125727 (= res!60845 (= (getValueByKey!165 (toList!856 lt!64856) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!170 (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!125728 () Bool)

(assert (=> b!125728 (= e!82131 (contains!874 (toList!856 lt!64856) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!37871 res!60844) b!125727))

(assert (= (and b!125727 res!60845) b!125728))

(declare-fun m!146591 () Bool)

(assert (=> d!37871 m!146591))

(declare-fun m!146593 () Bool)

(assert (=> d!37871 m!146593))

(declare-fun m!146595 () Bool)

(assert (=> d!37871 m!146595))

(declare-fun m!146597 () Bool)

(assert (=> d!37871 m!146597))

(declare-fun m!146599 () Bool)

(assert (=> b!125727 m!146599))

(declare-fun m!146601 () Bool)

(assert (=> b!125728 m!146601))

(assert (=> b!124890 d!37871))

(assert (=> b!124890 d!37419))

(declare-fun b!125729 () Bool)

(declare-fun e!82144 () Unit!3878)

(declare-fun Unit!3927 () Unit!3878)

(assert (=> b!125729 (= e!82144 Unit!3927)))

(declare-fun b!125730 () Bool)

(declare-fun e!82135 () ListLongMap!1681)

(declare-fun call!13475 () ListLongMap!1681)

(assert (=> b!125730 (= e!82135 call!13475)))

(declare-fun bm!13471 () Bool)

(declare-fun call!13480 () ListLongMap!1681)

(declare-fun call!13477 () ListLongMap!1681)

(assert (=> bm!13471 (= call!13480 call!13477)))

(declare-fun b!125731 () Bool)

(declare-fun e!82133 () Bool)

(assert (=> b!125731 (= e!82133 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!125732 () Bool)

(declare-fun e!82136 () Bool)

(declare-fun e!82138 () Bool)

(assert (=> b!125732 (= e!82136 e!82138)))

(declare-fun res!60853 () Bool)

(declare-fun call!13476 () Bool)

(assert (=> b!125732 (= res!60853 call!13476)))

(assert (=> b!125732 (=> (not res!60853) (not e!82138))))

(declare-fun e!82143 () Bool)

(declare-fun lt!64870 () ListLongMap!1681)

(declare-fun b!125733 () Bool)

(assert (=> b!125733 (= e!82143 (= (apply!110 lt!64870 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)) (get!1445 (select (arr!2219 (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16)))) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!125733 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2482 (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))))))))

(assert (=> b!125733 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun b!125734 () Bool)

(assert (=> b!125734 (= e!82138 (= (apply!110 lt!64870 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2629 newMap!16)))))

(declare-fun b!125735 () Bool)

(assert (=> b!125735 (= e!82135 call!13480)))

(declare-fun b!125736 () Bool)

(declare-fun e!82140 () ListLongMap!1681)

(assert (=> b!125736 (= e!82140 call!13475)))

(declare-fun bm!13472 () Bool)

(declare-fun call!13474 () ListLongMap!1681)

(assert (=> bm!13472 (= call!13477 call!13474)))

(declare-fun b!125737 () Bool)

(declare-fun res!60850 () Bool)

(declare-fun e!82141 () Bool)

(assert (=> b!125737 (=> (not res!60850) (not e!82141))))

(declare-fun e!82142 () Bool)

(assert (=> b!125737 (= res!60850 e!82142)))

(declare-fun res!60854 () Bool)

(assert (=> b!125737 (=> res!60854 e!82142)))

(declare-fun e!82139 () Bool)

(assert (=> b!125737 (= res!60854 (not e!82139))))

(declare-fun res!60847 () Bool)

(assert (=> b!125737 (=> (not res!60847) (not e!82139))))

(assert (=> b!125737 (= res!60847 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun d!37873 () Bool)

(assert (=> d!37873 e!82141))

(declare-fun res!60851 () Bool)

(assert (=> d!37873 (=> (not res!60851) (not e!82141))))

(assert (=> d!37873 (= res!60851 (or (bvsge #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))))

(declare-fun lt!64862 () ListLongMap!1681)

(assert (=> d!37873 (= lt!64870 lt!64862)))

(declare-fun lt!64874 () Unit!3878)

(assert (=> d!37873 (= lt!64874 e!82144)))

(declare-fun c!22960 () Bool)

(assert (=> d!37873 (= c!22960 e!82133)))

(declare-fun res!60849 () Bool)

(assert (=> d!37873 (=> (not res!60849) (not e!82133))))

(assert (=> d!37873 (= res!60849 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun e!82132 () ListLongMap!1681)

(assert (=> d!37873 (= lt!64862 e!82132)))

(declare-fun c!22961 () Bool)

(assert (=> d!37873 (= c!22961 (and (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!37873 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37873 (= (getCurrentListMap!528 (_keys!4493 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) lt!64870)))

(declare-fun b!125738 () Bool)

(assert (=> b!125738 (= e!82136 (not call!13476))))

(declare-fun b!125739 () Bool)

(assert (=> b!125739 (= e!82142 e!82143)))

(declare-fun res!60852 () Bool)

(assert (=> b!125739 (=> (not res!60852) (not e!82143))))

(assert (=> b!125739 (= res!60852 (contains!873 lt!64870 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!125739 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(declare-fun bm!13473 () Bool)

(declare-fun call!13479 () ListLongMap!1681)

(declare-fun c!22963 () Bool)

(assert (=> bm!13473 (= call!13479 (+!164 (ite c!22961 call!13474 (ite c!22963 call!13477 call!13480)) (ite (or c!22961 c!22963) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))))))

(declare-fun b!125740 () Bool)

(declare-fun e!82134 () Bool)

(assert (=> b!125740 (= e!82134 (= (apply!110 lt!64870 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2629 newMap!16)))))

(declare-fun b!125741 () Bool)

(assert (=> b!125741 (= e!82132 (+!164 call!13479 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))))

(declare-fun b!125742 () Bool)

(assert (=> b!125742 (= e!82139 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!125743 () Bool)

(declare-fun c!22962 () Bool)

(assert (=> b!125743 (= c!22962 (and (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!125743 (= e!82140 e!82135)))

(declare-fun bm!13474 () Bool)

(declare-fun call!13478 () Bool)

(assert (=> bm!13474 (= call!13478 (contains!873 lt!64870 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!125744 () Bool)

(declare-fun e!82137 () Bool)

(assert (=> b!125744 (= e!82137 (not call!13478))))

(declare-fun b!125745 () Bool)

(assert (=> b!125745 (= e!82141 e!82136)))

(declare-fun c!22964 () Bool)

(assert (=> b!125745 (= c!22964 (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!13475 () Bool)

(assert (=> bm!13475 (= call!13474 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun b!125746 () Bool)

(assert (=> b!125746 (= e!82132 e!82140)))

(assert (=> b!125746 (= c!22963 (and (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!125747 () Bool)

(assert (=> b!125747 (= e!82137 e!82134)))

(declare-fun res!60848 () Bool)

(assert (=> b!125747 (= res!60848 call!13478)))

(assert (=> b!125747 (=> (not res!60848) (not e!82134))))

(declare-fun b!125748 () Bool)

(declare-fun res!60846 () Bool)

(assert (=> b!125748 (=> (not res!60846) (not e!82141))))

(assert (=> b!125748 (= res!60846 e!82137)))

(declare-fun c!22959 () Bool)

(assert (=> b!125748 (= c!22959 (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13476 () Bool)

(assert (=> bm!13476 (= call!13475 call!13479)))

(declare-fun b!125749 () Bool)

(declare-fun lt!64860 () Unit!3878)

(assert (=> b!125749 (= e!82144 lt!64860)))

(declare-fun lt!64863 () ListLongMap!1681)

(assert (=> b!125749 (= lt!64863 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64864 () (_ BitVec 64))

(assert (=> b!125749 (= lt!64864 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64876 () (_ BitVec 64))

(assert (=> b!125749 (= lt!64876 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64873 () Unit!3878)

(assert (=> b!125749 (= lt!64873 (addStillContains!86 lt!64863 lt!64864 (zeroValue!2629 newMap!16) lt!64876))))

(assert (=> b!125749 (contains!873 (+!164 lt!64863 (tuple2!2561 lt!64864 (zeroValue!2629 newMap!16))) lt!64876)))

(declare-fun lt!64875 () Unit!3878)

(assert (=> b!125749 (= lt!64875 lt!64873)))

(declare-fun lt!64877 () ListLongMap!1681)

(assert (=> b!125749 (= lt!64877 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64868 () (_ BitVec 64))

(assert (=> b!125749 (= lt!64868 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64867 () (_ BitVec 64))

(assert (=> b!125749 (= lt!64867 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64871 () Unit!3878)

(assert (=> b!125749 (= lt!64871 (addApplyDifferent!86 lt!64877 lt!64868 (minValue!2629 newMap!16) lt!64867))))

(assert (=> b!125749 (= (apply!110 (+!164 lt!64877 (tuple2!2561 lt!64868 (minValue!2629 newMap!16))) lt!64867) (apply!110 lt!64877 lt!64867))))

(declare-fun lt!64880 () Unit!3878)

(assert (=> b!125749 (= lt!64880 lt!64871)))

(declare-fun lt!64869 () ListLongMap!1681)

(assert (=> b!125749 (= lt!64869 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64878 () (_ BitVec 64))

(assert (=> b!125749 (= lt!64878 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64865 () (_ BitVec 64))

(assert (=> b!125749 (= lt!64865 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!64861 () Unit!3878)

(assert (=> b!125749 (= lt!64861 (addApplyDifferent!86 lt!64869 lt!64878 (zeroValue!2629 newMap!16) lt!64865))))

(assert (=> b!125749 (= (apply!110 (+!164 lt!64869 (tuple2!2561 lt!64878 (zeroValue!2629 newMap!16))) lt!64865) (apply!110 lt!64869 lt!64865))))

(declare-fun lt!64879 () Unit!3878)

(assert (=> b!125749 (= lt!64879 lt!64861)))

(declare-fun lt!64881 () ListLongMap!1681)

(assert (=> b!125749 (= lt!64881 (getCurrentListMapNoExtraKeys!131 (_keys!4493 newMap!16) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (index!3271 lt!64122) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64872 () (_ BitVec 64))

(assert (=> b!125749 (= lt!64872 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64866 () (_ BitVec 64))

(assert (=> b!125749 (= lt!64866 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!125749 (= lt!64860 (addApplyDifferent!86 lt!64881 lt!64872 (minValue!2629 newMap!16) lt!64866))))

(assert (=> b!125749 (= (apply!110 (+!164 lt!64881 (tuple2!2561 lt!64872 (minValue!2629 newMap!16))) lt!64866) (apply!110 lt!64881 lt!64866))))

(declare-fun bm!13477 () Bool)

(assert (=> bm!13477 (= call!13476 (contains!873 lt!64870 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!37873 c!22961) b!125741))

(assert (= (and d!37873 (not c!22961)) b!125746))

(assert (= (and b!125746 c!22963) b!125736))

(assert (= (and b!125746 (not c!22963)) b!125743))

(assert (= (and b!125743 c!22962) b!125730))

(assert (= (and b!125743 (not c!22962)) b!125735))

(assert (= (or b!125730 b!125735) bm!13471))

(assert (= (or b!125736 bm!13471) bm!13472))

(assert (= (or b!125736 b!125730) bm!13476))

(assert (= (or b!125741 bm!13472) bm!13475))

(assert (= (or b!125741 bm!13476) bm!13473))

(assert (= (and d!37873 res!60849) b!125731))

(assert (= (and d!37873 c!22960) b!125749))

(assert (= (and d!37873 (not c!22960)) b!125729))

(assert (= (and d!37873 res!60851) b!125737))

(assert (= (and b!125737 res!60847) b!125742))

(assert (= (and b!125737 (not res!60854)) b!125739))

(assert (= (and b!125739 res!60852) b!125733))

(assert (= (and b!125737 res!60850) b!125748))

(assert (= (and b!125748 c!22959) b!125747))

(assert (= (and b!125748 (not c!22959)) b!125744))

(assert (= (and b!125747 res!60848) b!125740))

(assert (= (or b!125747 b!125744) bm!13474))

(assert (= (and b!125748 res!60846) b!125745))

(assert (= (and b!125745 c!22964) b!125732))

(assert (= (and b!125745 (not c!22964)) b!125738))

(assert (= (and b!125732 res!60853) b!125734))

(assert (= (or b!125732 b!125738) bm!13477))

(declare-fun b_lambda!5541 () Bool)

(assert (=> (not b_lambda!5541) (not b!125733)))

(assert (=> b!125733 t!6062))

(declare-fun b_and!7749 () Bool)

(assert (= b_and!7745 (and (=> t!6062 result!3831) b_and!7749)))

(assert (=> b!125733 t!6064))

(declare-fun b_and!7751 () Bool)

(assert (= b_and!7747 (and (=> t!6064 result!3833) b_and!7751)))

(declare-fun m!146603 () Bool)

(assert (=> b!125741 m!146603))

(declare-fun m!146605 () Bool)

(assert (=> bm!13477 m!146605))

(assert (=> b!125731 m!145047))

(assert (=> b!125731 m!145047))

(assert (=> b!125731 m!145049))

(declare-fun m!146607 () Bool)

(assert (=> bm!13473 m!146607))

(declare-fun m!146609 () Bool)

(assert (=> b!125734 m!146609))

(assert (=> d!37873 m!145009))

(declare-fun m!146611 () Bool)

(assert (=> bm!13475 m!146611))

(declare-fun m!146613 () Bool)

(assert (=> b!125740 m!146613))

(declare-fun m!146615 () Bool)

(assert (=> b!125733 m!146615))

(assert (=> b!125733 m!145061))

(declare-fun m!146617 () Bool)

(assert (=> b!125733 m!146617))

(assert (=> b!125733 m!145047))

(declare-fun m!146619 () Bool)

(assert (=> b!125733 m!146619))

(assert (=> b!125733 m!145061))

(assert (=> b!125733 m!146615))

(assert (=> b!125733 m!145047))

(declare-fun m!146621 () Bool)

(assert (=> bm!13474 m!146621))

(declare-fun m!146623 () Bool)

(assert (=> b!125749 m!146623))

(declare-fun m!146625 () Bool)

(assert (=> b!125749 m!146625))

(declare-fun m!146627 () Bool)

(assert (=> b!125749 m!146627))

(declare-fun m!146629 () Bool)

(assert (=> b!125749 m!146629))

(declare-fun m!146631 () Bool)

(assert (=> b!125749 m!146631))

(declare-fun m!146633 () Bool)

(assert (=> b!125749 m!146633))

(assert (=> b!125749 m!146625))

(declare-fun m!146635 () Bool)

(assert (=> b!125749 m!146635))

(assert (=> b!125749 m!146627))

(assert (=> b!125749 m!146633))

(declare-fun m!146637 () Bool)

(assert (=> b!125749 m!146637))

(declare-fun m!146639 () Bool)

(assert (=> b!125749 m!146639))

(declare-fun m!146641 () Bool)

(assert (=> b!125749 m!146641))

(assert (=> b!125749 m!145047))

(declare-fun m!146643 () Bool)

(assert (=> b!125749 m!146643))

(declare-fun m!146645 () Bool)

(assert (=> b!125749 m!146645))

(assert (=> b!125749 m!146611))

(assert (=> b!125749 m!146623))

(declare-fun m!146647 () Bool)

(assert (=> b!125749 m!146647))

(declare-fun m!146649 () Bool)

(assert (=> b!125749 m!146649))

(declare-fun m!146651 () Bool)

(assert (=> b!125749 m!146651))

(assert (=> b!125739 m!145047))

(assert (=> b!125739 m!145047))

(declare-fun m!146653 () Bool)

(assert (=> b!125739 m!146653))

(assert (=> b!125742 m!145047))

(assert (=> b!125742 m!145047))

(assert (=> b!125742 m!145049))

(assert (=> b!124890 d!37873))

(declare-fun b!125750 () Bool)

(declare-fun e!82145 () Option!171)

(assert (=> b!125750 (= e!82145 (Some!170 (_2!1290 (h!2313 (toList!856 lt!64252)))))))

(declare-fun b!125753 () Bool)

(declare-fun e!82146 () Option!171)

(assert (=> b!125753 (= e!82146 None!169)))

(declare-fun b!125751 () Bool)

(assert (=> b!125751 (= e!82145 e!82146)))

(declare-fun c!22966 () Bool)

(assert (=> b!125751 (= c!22966 (and ((_ is Cons!1712) (toList!856 lt!64252)) (not (= (_1!1290 (h!2313 (toList!856 lt!64252))) (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(declare-fun b!125752 () Bool)

(assert (=> b!125752 (= e!82146 (getValueByKey!165 (t!6055 (toList!856 lt!64252)) (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun c!22965 () Bool)

(declare-fun d!37875 () Bool)

(assert (=> d!37875 (= c!22965 (and ((_ is Cons!1712) (toList!856 lt!64252)) (= (_1!1290 (h!2313 (toList!856 lt!64252))) (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> d!37875 (= (getValueByKey!165 (toList!856 lt!64252) (_1!1290 (tuple2!2561 lt!64195 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) e!82145)))

(assert (= (and d!37875 c!22965) b!125750))

(assert (= (and d!37875 (not c!22965)) b!125751))

(assert (= (and b!125751 c!22966) b!125752))

(assert (= (and b!125751 (not c!22966)) b!125753))

(declare-fun m!146655 () Bool)

(assert (=> b!125752 m!146655))

(assert (=> b!124869 d!37875))

(declare-fun d!37877 () Bool)

(declare-fun e!82148 () Bool)

(assert (=> d!37877 e!82148))

(declare-fun res!60855 () Bool)

(assert (=> d!37877 (=> res!60855 e!82148)))

(declare-fun lt!64882 () Bool)

(assert (=> d!37877 (= res!60855 (not lt!64882))))

(declare-fun lt!64885 () Bool)

(assert (=> d!37877 (= lt!64882 lt!64885)))

(declare-fun lt!64883 () Unit!3878)

(declare-fun e!82147 () Unit!3878)

(assert (=> d!37877 (= lt!64883 e!82147)))

(declare-fun c!22967 () Bool)

(assert (=> d!37877 (= c!22967 lt!64885)))

(assert (=> d!37877 (= lt!64885 (containsKey!169 (toList!856 lt!64194) lt!64184))))

(assert (=> d!37877 (= (contains!873 lt!64194 lt!64184) lt!64882)))

(declare-fun b!125754 () Bool)

(declare-fun lt!64884 () Unit!3878)

(assert (=> b!125754 (= e!82147 lt!64884)))

(assert (=> b!125754 (= lt!64884 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64194) lt!64184))))

(assert (=> b!125754 (isDefined!119 (getValueByKey!165 (toList!856 lt!64194) lt!64184))))

(declare-fun b!125755 () Bool)

(declare-fun Unit!3928 () Unit!3878)

(assert (=> b!125755 (= e!82147 Unit!3928)))

(declare-fun b!125756 () Bool)

(assert (=> b!125756 (= e!82148 (isDefined!119 (getValueByKey!165 (toList!856 lt!64194) lt!64184)))))

(assert (= (and d!37877 c!22967) b!125754))

(assert (= (and d!37877 (not c!22967)) b!125755))

(assert (= (and d!37877 (not res!60855)) b!125756))

(declare-fun m!146657 () Bool)

(assert (=> d!37877 m!146657))

(declare-fun m!146659 () Bool)

(assert (=> b!125754 m!146659))

(assert (=> b!125754 m!144895))

(assert (=> b!125754 m!144895))

(declare-fun m!146661 () Bool)

(assert (=> b!125754 m!146661))

(assert (=> b!125756 m!144895))

(assert (=> b!125756 m!144895))

(assert (=> b!125756 m!146661))

(assert (=> d!37377 d!37877))

(assert (=> d!37377 d!37367))

(assert (=> d!37377 d!37369))

(assert (=> d!37377 d!37373))

(declare-fun d!37879 () Bool)

(assert (=> d!37879 (= (apply!110 (+!164 lt!64194 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64184) (apply!110 lt!64194 lt!64184))))

(assert (=> d!37879 true))

(declare-fun _$34!941 () Unit!3878)

(assert (=> d!37879 (= (choose!755 lt!64194 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))) lt!64184) _$34!941)))

(declare-fun bs!5212 () Bool)

(assert (= bs!5212 d!37879))

(assert (=> bs!5212 m!144831))

(assert (=> bs!5212 m!144831))

(assert (=> bs!5212 m!144855))

(assert (=> bs!5212 m!144857))

(assert (=> d!37377 d!37879))

(declare-fun d!37881 () Bool)

(declare-fun lt!64886 () Bool)

(assert (=> d!37881 (= lt!64886 (select (content!122 (toList!856 lt!64215)) (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun e!82149 () Bool)

(assert (=> d!37881 (= lt!64886 e!82149)))

(declare-fun res!60857 () Bool)

(assert (=> d!37881 (=> (not res!60857) (not e!82149))))

(assert (=> d!37881 (= res!60857 ((_ is Cons!1712) (toList!856 lt!64215)))))

(assert (=> d!37881 (= (contains!874 (toList!856 lt!64215) (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64886)))

(declare-fun b!125757 () Bool)

(declare-fun e!82150 () Bool)

(assert (=> b!125757 (= e!82149 e!82150)))

(declare-fun res!60856 () Bool)

(assert (=> b!125757 (=> res!60856 e!82150)))

(assert (=> b!125757 (= res!60856 (= (h!2313 (toList!856 lt!64215)) (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun b!125758 () Bool)

(assert (=> b!125758 (= e!82150 (contains!874 (t!6055 (toList!856 lt!64215)) (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))

(assert (= (and d!37881 res!60857) b!125757))

(assert (= (and b!125757 (not res!60856)) b!125758))

(declare-fun m!146663 () Bool)

(assert (=> d!37881 m!146663))

(declare-fun m!146665 () Bool)

(assert (=> d!37881 m!146665))

(declare-fun m!146667 () Bool)

(assert (=> b!125758 m!146667))

(assert (=> b!124822 d!37881))

(declare-fun b!125759 () Bool)

(declare-fun e!82151 () (_ BitVec 32))

(declare-fun call!13481 () (_ BitVec 32))

(assert (=> b!125759 (= e!82151 call!13481)))

(declare-fun b!125760 () Bool)

(declare-fun e!82152 () (_ BitVec 32))

(assert (=> b!125760 (= e!82152 #b00000000000000000000000000000000)))

(declare-fun b!125761 () Bool)

(assert (=> b!125761 (= e!82151 (bvadd #b00000000000000000000000000000001 call!13481))))

(declare-fun b!125762 () Bool)

(assert (=> b!125762 (= e!82152 e!82151)))

(declare-fun c!22969 () Bool)

(assert (=> b!125762 (= c!22969 (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!13478 () Bool)

(assert (=> bm!13478 (= call!13481 (arrayCountValidKeys!0 (_keys!4493 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2481 (_keys!4493 newMap!16))))))

(declare-fun d!37883 () Bool)

(declare-fun lt!64887 () (_ BitVec 32))

(assert (=> d!37883 (and (bvsge lt!64887 #b00000000000000000000000000000000) (bvsle lt!64887 (bvsub (size!2481 (_keys!4493 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!37883 (= lt!64887 e!82152)))

(declare-fun c!22968 () Bool)

(assert (=> d!37883 (= c!22968 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2481 (_keys!4493 newMap!16))))))

(assert (=> d!37883 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2481 (_keys!4493 newMap!16))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!2481 (_keys!4493 newMap!16)) (size!2481 (_keys!4493 newMap!16))))))

(assert (=> d!37883 (= (arrayCountValidKeys!0 (_keys!4493 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2481 (_keys!4493 newMap!16))) lt!64887)))

(assert (= (and d!37883 c!22968) b!125760))

(assert (= (and d!37883 (not c!22968)) b!125762))

(assert (= (and b!125762 c!22969) b!125761))

(assert (= (and b!125762 (not c!22969)) b!125759))

(assert (= (or b!125761 b!125759) bm!13478))

(assert (=> b!125762 m!145535))

(assert (=> b!125762 m!145535))

(assert (=> b!125762 m!145537))

(declare-fun m!146669 () Bool)

(assert (=> bm!13478 m!146669))

(assert (=> bm!13373 d!37883))

(declare-fun d!37885 () Bool)

(declare-fun lt!64888 () Bool)

(assert (=> d!37885 (= lt!64888 (select (content!122 (toList!856 lt!64346)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun e!82153 () Bool)

(assert (=> d!37885 (= lt!64888 e!82153)))

(declare-fun res!60859 () Bool)

(assert (=> d!37885 (=> (not res!60859) (not e!82153))))

(assert (=> d!37885 (= res!60859 ((_ is Cons!1712) (toList!856 lt!64346)))))

(assert (=> d!37885 (= (contains!874 (toList!856 lt!64346) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) lt!64888)))

(declare-fun b!125763 () Bool)

(declare-fun e!82154 () Bool)

(assert (=> b!125763 (= e!82153 e!82154)))

(declare-fun res!60858 () Bool)

(assert (=> b!125763 (=> res!60858 e!82154)))

(assert (=> b!125763 (= res!60858 (= (h!2313 (toList!856 lt!64346)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))

(declare-fun b!125764 () Bool)

(assert (=> b!125764 (= e!82154 (contains!874 (t!6055 (toList!856 lt!64346)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))

(assert (= (and d!37885 res!60859) b!125763))

(assert (= (and b!125763 (not res!60858)) b!125764))

(declare-fun m!146671 () Bool)

(assert (=> d!37885 m!146671))

(declare-fun m!146673 () Bool)

(assert (=> d!37885 m!146673))

(declare-fun m!146675 () Bool)

(assert (=> b!125764 m!146675))

(assert (=> b!125014 d!37885))

(assert (=> b!124961 d!37551))

(declare-fun d!37887 () Bool)

(declare-fun res!60860 () Bool)

(declare-fun e!82155 () Bool)

(assert (=> d!37887 (=> res!60860 e!82155)))

(assert (=> d!37887 (= res!60860 (and ((_ is Cons!1712) (toList!856 lt!64187)) (= (_1!1290 (h!2313 (toList!856 lt!64187))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!37887 (= (containsKey!169 (toList!856 lt!64187) #b0000000000000000000000000000000000000000000000000000000000000000) e!82155)))

(declare-fun b!125765 () Bool)

(declare-fun e!82156 () Bool)

(assert (=> b!125765 (= e!82155 e!82156)))

(declare-fun res!60861 () Bool)

(assert (=> b!125765 (=> (not res!60861) (not e!82156))))

(assert (=> b!125765 (= res!60861 (and (or (not ((_ is Cons!1712) (toList!856 lt!64187))) (bvsle (_1!1290 (h!2313 (toList!856 lt!64187))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!1712) (toList!856 lt!64187)) (bvslt (_1!1290 (h!2313 (toList!856 lt!64187))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!125766 () Bool)

(assert (=> b!125766 (= e!82156 (containsKey!169 (t!6055 (toList!856 lt!64187)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!37887 (not res!60860)) b!125765))

(assert (= (and b!125765 res!60861) b!125766))

(declare-fun m!146677 () Bool)

(assert (=> b!125766 m!146677))

(assert (=> d!37453 d!37887))

(assert (=> d!37469 d!37441))

(declare-fun d!37889 () Bool)

(declare-fun e!82159 () Bool)

(assert (=> d!37889 e!82159))

(declare-fun res!60866 () Bool)

(assert (=> d!37889 (=> (not res!60866) (not e!82159))))

(declare-fun lt!64891 () SeekEntryResult!279)

(assert (=> d!37889 (= res!60866 ((_ is Found!279) lt!64891))))

(assert (=> d!37889 (= lt!64891 (seekEntryOrOpen!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (_keys!4493 newMap!16) (mask!7010 newMap!16)))))

(assert (=> d!37889 true))

(declare-fun _$33!102 () Unit!3878)

(assert (=> d!37889 (= (choose!762 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (defaultEntry!2764 newMap!16)) _$33!102)))

(declare-fun b!125771 () Bool)

(declare-fun res!60867 () Bool)

(assert (=> b!125771 (=> (not res!60867) (not e!82159))))

(assert (=> b!125771 (= res!60867 (inRange!0 (index!3271 lt!64891) (mask!7010 newMap!16)))))

(declare-fun b!125772 () Bool)

(assert (=> b!125772 (= e!82159 (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64891)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (= (and d!37889 res!60866) b!125771))

(assert (= (and b!125771 res!60867) b!125772))

(assert (=> d!37889 m!144661))

(assert (=> d!37889 m!144785))

(declare-fun m!146679 () Bool)

(assert (=> b!125771 m!146679))

(declare-fun m!146681 () Bool)

(assert (=> b!125772 m!146681))

(assert (=> d!37469 d!37889))

(assert (=> d!37469 d!37483))

(declare-fun d!37891 () Bool)

(declare-fun res!60868 () Bool)

(declare-fun e!82160 () Bool)

(assert (=> d!37891 (=> res!60868 e!82160)))

(assert (=> d!37891 (= res!60868 (= (select (arr!2218 (_keys!4493 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (=> d!37891 (= (arrayContainsKey!0 (_keys!4493 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!82160)))

(declare-fun b!125773 () Bool)

(declare-fun e!82161 () Bool)

(assert (=> b!125773 (= e!82160 e!82161)))

(declare-fun res!60869 () Bool)

(assert (=> b!125773 (=> (not res!60869) (not e!82161))))

(assert (=> b!125773 (= res!60869 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2481 (_keys!4493 newMap!16))))))

(declare-fun b!125774 () Bool)

(assert (=> b!125774 (= e!82161 (arrayContainsKey!0 (_keys!4493 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!37891 (not res!60868)) b!125773))

(assert (= (and b!125773 res!60869) b!125774))

(assert (=> d!37891 m!145535))

(assert (=> b!125774 m!144661))

(declare-fun m!146683 () Bool)

(assert (=> b!125774 m!146683))

(assert (=> b!125126 d!37891))

(declare-fun lt!64892 () Bool)

(declare-fun d!37893 () Bool)

(assert (=> d!37893 (= lt!64892 (select (content!122 (toList!856 lt!64363)) (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!82162 () Bool)

(assert (=> d!37893 (= lt!64892 e!82162)))

(declare-fun res!60871 () Bool)

(assert (=> d!37893 (=> (not res!60871) (not e!82162))))

(assert (=> d!37893 (= res!60871 ((_ is Cons!1712) (toList!856 lt!64363)))))

(assert (=> d!37893 (= (contains!874 (toList!856 lt!64363) (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!64892)))

(declare-fun b!125775 () Bool)

(declare-fun e!82163 () Bool)

(assert (=> b!125775 (= e!82162 e!82163)))

(declare-fun res!60870 () Bool)

(assert (=> b!125775 (=> res!60870 e!82163)))

(assert (=> b!125775 (= res!60870 (= (h!2313 (toList!856 lt!64363)) (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!125776 () Bool)

(assert (=> b!125776 (= e!82163 (contains!874 (t!6055 (toList!856 lt!64363)) (ite c!22675 (ite c!22669 (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!37893 res!60871) b!125775))

(assert (= (and b!125775 (not res!60870)) b!125776))

(declare-fun m!146685 () Bool)

(assert (=> d!37893 m!146685))

(declare-fun m!146687 () Bool)

(assert (=> d!37893 m!146687))

(declare-fun m!146689 () Bool)

(assert (=> b!125776 m!146689))

(assert (=> b!125040 d!37893))

(declare-fun d!37895 () Bool)

(assert (=> d!37895 (arrayContainsKey!0 (_keys!4493 newMap!16) lt!64307 #b00000000000000000000000000000000)))

(declare-fun lt!64895 () Unit!3878)

(declare-fun choose!13 (array!4684 (_ BitVec 64) (_ BitVec 32)) Unit!3878)

(assert (=> d!37895 (= lt!64895 (choose!13 (_keys!4493 newMap!16) lt!64307 #b00000000000000000000000000000000))))

(assert (=> d!37895 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!37895 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4493 newMap!16) lt!64307 #b00000000000000000000000000000000) lt!64895)))

(declare-fun bs!5213 () Bool)

(assert (= bs!5213 d!37895))

(assert (=> bs!5213 m!145109))

(declare-fun m!146691 () Bool)

(assert (=> bs!5213 m!146691))

(assert (=> b!124947 d!37895))

(declare-fun d!37897 () Bool)

(declare-fun res!60872 () Bool)

(declare-fun e!82164 () Bool)

(assert (=> d!37897 (=> res!60872 e!82164)))

(assert (=> d!37897 (= res!60872 (= (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000) lt!64307))))

(assert (=> d!37897 (= (arrayContainsKey!0 (_keys!4493 newMap!16) lt!64307 #b00000000000000000000000000000000) e!82164)))

(declare-fun b!125777 () Bool)

(declare-fun e!82165 () Bool)

(assert (=> b!125777 (= e!82164 e!82165)))

(declare-fun res!60873 () Bool)

(assert (=> b!125777 (=> (not res!60873) (not e!82165))))

(assert (=> b!125777 (= res!60873 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2481 (_keys!4493 newMap!16))))))

(declare-fun b!125778 () Bool)

(assert (=> b!125778 (= e!82165 (arrayContainsKey!0 (_keys!4493 newMap!16) lt!64307 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!37897 (not res!60872)) b!125777))

(assert (= (and b!125777 res!60873) b!125778))

(assert (=> d!37897 m!145047))

(declare-fun m!146693 () Bool)

(assert (=> b!125778 m!146693))

(assert (=> b!124947 d!37897))

(declare-fun b!125779 () Bool)

(declare-fun c!22971 () Bool)

(declare-fun lt!64897 () (_ BitVec 64))

(assert (=> b!125779 (= c!22971 (= lt!64897 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!82166 () SeekEntryResult!279)

(declare-fun e!82168 () SeekEntryResult!279)

(assert (=> b!125779 (= e!82166 e!82168)))

(declare-fun b!125780 () Bool)

(declare-fun e!82167 () SeekEntryResult!279)

(assert (=> b!125780 (= e!82167 e!82166)))

(declare-fun lt!64898 () SeekEntryResult!279)

(assert (=> b!125780 (= lt!64897 (select (arr!2218 (_keys!4493 newMap!16)) (index!3272 lt!64898)))))

(declare-fun c!22970 () Bool)

(assert (=> b!125780 (= c!22970 (= lt!64897 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!125781 () Bool)

(assert (=> b!125781 (= e!82167 Undefined!279)))

(declare-fun b!125782 () Bool)

(assert (=> b!125782 (= e!82168 (seekKeyOrZeroReturnVacant!0 (x!14828 lt!64898) (index!3272 lt!64898) (index!3272 lt!64898) (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000) (_keys!4493 newMap!16) (mask!7010 newMap!16)))))

(declare-fun d!37899 () Bool)

(declare-fun lt!64896 () SeekEntryResult!279)

(assert (=> d!37899 (and (or ((_ is Undefined!279) lt!64896) (not ((_ is Found!279) lt!64896)) (and (bvsge (index!3271 lt!64896) #b00000000000000000000000000000000) (bvslt (index!3271 lt!64896) (size!2481 (_keys!4493 newMap!16))))) (or ((_ is Undefined!279) lt!64896) ((_ is Found!279) lt!64896) (not ((_ is MissingZero!279) lt!64896)) (and (bvsge (index!3270 lt!64896) #b00000000000000000000000000000000) (bvslt (index!3270 lt!64896) (size!2481 (_keys!4493 newMap!16))))) (or ((_ is Undefined!279) lt!64896) ((_ is Found!279) lt!64896) ((_ is MissingZero!279) lt!64896) (not ((_ is MissingVacant!279) lt!64896)) (and (bvsge (index!3273 lt!64896) #b00000000000000000000000000000000) (bvslt (index!3273 lt!64896) (size!2481 (_keys!4493 newMap!16))))) (or ((_ is Undefined!279) lt!64896) (ite ((_ is Found!279) lt!64896) (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64896)) (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!279) lt!64896) (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3270 lt!64896)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!279) lt!64896) (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3273 lt!64896)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37899 (= lt!64896 e!82167)))

(declare-fun c!22972 () Bool)

(assert (=> d!37899 (= c!22972 (and ((_ is Intermediate!279) lt!64898) (undefined!1091 lt!64898)))))

(assert (=> d!37899 (= lt!64898 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000) (mask!7010 newMap!16)) (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000) (_keys!4493 newMap!16) (mask!7010 newMap!16)))))

(assert (=> d!37899 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37899 (= (seekEntryOrOpen!0 (select (arr!2218 (_keys!4493 newMap!16)) #b00000000000000000000000000000000) (_keys!4493 newMap!16) (mask!7010 newMap!16)) lt!64896)))

(declare-fun b!125783 () Bool)

(assert (=> b!125783 (= e!82166 (Found!279 (index!3272 lt!64898)))))

(declare-fun b!125784 () Bool)

(assert (=> b!125784 (= e!82168 (MissingZero!279 (index!3272 lt!64898)))))

(assert (= (and d!37899 c!22972) b!125781))

(assert (= (and d!37899 (not c!22972)) b!125780))

(assert (= (and b!125780 c!22970) b!125783))

(assert (= (and b!125780 (not c!22970)) b!125779))

(assert (= (and b!125779 c!22971) b!125784))

(assert (= (and b!125779 (not c!22971)) b!125782))

(declare-fun m!146695 () Bool)

(assert (=> b!125780 m!146695))

(assert (=> b!125782 m!145047))

(declare-fun m!146697 () Bool)

(assert (=> b!125782 m!146697))

(assert (=> d!37899 m!145009))

(declare-fun m!146699 () Bool)

(assert (=> d!37899 m!146699))

(declare-fun m!146701 () Bool)

(assert (=> d!37899 m!146701))

(declare-fun m!146703 () Bool)

(assert (=> d!37899 m!146703))

(declare-fun m!146705 () Bool)

(assert (=> d!37899 m!146705))

(assert (=> d!37899 m!145047))

(declare-fun m!146707 () Bool)

(assert (=> d!37899 m!146707))

(assert (=> d!37899 m!145047))

(assert (=> d!37899 m!146705))

(assert (=> b!124947 d!37899))

(declare-fun b!125785 () Bool)

(declare-fun e!82169 () (_ BitVec 32))

(declare-fun call!13482 () (_ BitVec 32))

(assert (=> b!125785 (= e!82169 call!13482)))

(declare-fun b!125786 () Bool)

(declare-fun e!82170 () (_ BitVec 32))

(assert (=> b!125786 (= e!82170 #b00000000000000000000000000000000)))

(declare-fun b!125787 () Bool)

(assert (=> b!125787 (= e!82169 (bvadd #b00000000000000000000000000000001 call!13482))))

(declare-fun b!125788 () Bool)

(assert (=> b!125788 (= e!82170 e!82169)))

(declare-fun c!22974 () Bool)

(assert (=> b!125788 (= c!22974 (validKeyInArray!0 (select (arr!2218 (_keys!4493 (_2!1291 lt!64127))) #b00000000000000000000000000000000)))))

(declare-fun bm!13479 () Bool)

(assert (=> bm!13479 (= call!13482 (arrayCountValidKeys!0 (_keys!4493 (_2!1291 lt!64127)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2481 (_keys!4493 (_2!1291 lt!64127)))))))

(declare-fun d!37901 () Bool)

(declare-fun lt!64899 () (_ BitVec 32))

(assert (=> d!37901 (and (bvsge lt!64899 #b00000000000000000000000000000000) (bvsle lt!64899 (bvsub (size!2481 (_keys!4493 (_2!1291 lt!64127))) #b00000000000000000000000000000000)))))

(assert (=> d!37901 (= lt!64899 e!82170)))

(declare-fun c!22973 () Bool)

(assert (=> d!37901 (= c!22973 (bvsge #b00000000000000000000000000000000 (size!2481 (_keys!4493 (_2!1291 lt!64127)))))))

(assert (=> d!37901 (and (bvsle #b00000000000000000000000000000000 (size!2481 (_keys!4493 (_2!1291 lt!64127)))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2481 (_keys!4493 (_2!1291 lt!64127))) (size!2481 (_keys!4493 (_2!1291 lt!64127)))))))

(assert (=> d!37901 (= (arrayCountValidKeys!0 (_keys!4493 (_2!1291 lt!64127)) #b00000000000000000000000000000000 (size!2481 (_keys!4493 (_2!1291 lt!64127)))) lt!64899)))

(assert (= (and d!37901 c!22973) b!125786))

(assert (= (and d!37901 (not c!22973)) b!125788))

(assert (= (and b!125788 c!22974) b!125787))

(assert (= (and b!125788 (not c!22974)) b!125785))

(assert (= (or b!125787 b!125785) bm!13479))

(assert (=> b!125788 m!145635))

(assert (=> b!125788 m!145635))

(assert (=> b!125788 m!145637))

(declare-fun m!146709 () Bool)

(assert (=> bm!13479 m!146709))

(assert (=> b!125036 d!37901))

(declare-fun d!37903 () Bool)

(declare-fun res!60874 () Bool)

(declare-fun e!82171 () Bool)

(assert (=> d!37903 (=> res!60874 e!82171)))

(assert (=> d!37903 (= res!60874 (and ((_ is Cons!1712) (t!6055 (toList!856 lt!64030))) (= (_1!1290 (h!2313 (t!6055 (toList!856 lt!64030)))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))))))

(assert (=> d!37903 (= (containsKey!169 (t!6055 (toList!856 lt!64030)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) e!82171)))

(declare-fun b!125789 () Bool)

(declare-fun e!82172 () Bool)

(assert (=> b!125789 (= e!82171 e!82172)))

(declare-fun res!60875 () Bool)

(assert (=> b!125789 (=> (not res!60875) (not e!82172))))

(assert (=> b!125789 (= res!60875 (and (or (not ((_ is Cons!1712) (t!6055 (toList!856 lt!64030)))) (bvsle (_1!1290 (h!2313 (t!6055 (toList!856 lt!64030)))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))) ((_ is Cons!1712) (t!6055 (toList!856 lt!64030))) (bvslt (_1!1290 (h!2313 (t!6055 (toList!856 lt!64030)))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))))))

(declare-fun b!125790 () Bool)

(assert (=> b!125790 (= e!82172 (containsKey!169 (t!6055 (t!6055 (toList!856 lt!64030))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (= (and d!37903 (not res!60874)) b!125789))

(assert (= (and b!125789 res!60875) b!125790))

(assert (=> b!125790 m!144661))

(declare-fun m!146711 () Bool)

(assert (=> b!125790 m!146711))

(assert (=> b!124881 d!37903))

(assert (=> d!37423 d!37483))

(assert (=> bm!13368 d!37583))

(assert (=> d!37457 d!37871))

(declare-fun b!125791 () Bool)

(declare-fun e!82185 () Unit!3878)

(declare-fun Unit!3929 () Unit!3878)

(assert (=> b!125791 (= e!82185 Unit!3929)))

(declare-fun b!125792 () Bool)

(declare-fun e!82176 () ListLongMap!1681)

(declare-fun call!13484 () ListLongMap!1681)

(assert (=> b!125792 (= e!82176 call!13484)))

(declare-fun bm!13480 () Bool)

(declare-fun call!13489 () ListLongMap!1681)

(declare-fun call!13486 () ListLongMap!1681)

(assert (=> bm!13480 (= call!13489 call!13486)))

(declare-fun b!125793 () Bool)

(declare-fun e!82174 () Bool)

(assert (=> b!125793 (= e!82174 (validKeyInArray!0 (select (arr!2218 lt!64441) #b00000000000000000000000000000000)))))

(declare-fun b!125794 () Bool)

(declare-fun e!82177 () Bool)

(declare-fun e!82179 () Bool)

(assert (=> b!125794 (= e!82177 e!82179)))

(declare-fun res!60883 () Bool)

(declare-fun call!13485 () Bool)

(assert (=> b!125794 (= res!60883 call!13485)))

(assert (=> b!125794 (=> (not res!60883) (not e!82179))))

(declare-fun e!82184 () Bool)

(declare-fun lt!64910 () ListLongMap!1681)

(declare-fun b!125795 () Bool)

(assert (=> b!125795 (= e!82184 (= (apply!110 lt!64910 (select (arr!2218 lt!64441) #b00000000000000000000000000000000)) (get!1445 (select (arr!2219 lt!64461) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!125795 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2482 lt!64461)))))

(assert (=> b!125795 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 lt!64441)))))

(declare-fun b!125796 () Bool)

(assert (=> b!125796 (= e!82179 (= (apply!110 lt!64910 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2629 newMap!16)))))

(declare-fun b!125797 () Bool)

(assert (=> b!125797 (= e!82176 call!13489)))

(declare-fun b!125798 () Bool)

(declare-fun e!82181 () ListLongMap!1681)

(assert (=> b!125798 (= e!82181 call!13484)))

(declare-fun bm!13481 () Bool)

(declare-fun call!13483 () ListLongMap!1681)

(assert (=> bm!13481 (= call!13486 call!13483)))

(declare-fun b!125799 () Bool)

(declare-fun res!60880 () Bool)

(declare-fun e!82182 () Bool)

(assert (=> b!125799 (=> (not res!60880) (not e!82182))))

(declare-fun e!82183 () Bool)

(assert (=> b!125799 (= res!60880 e!82183)))

(declare-fun res!60884 () Bool)

(assert (=> b!125799 (=> res!60884 e!82183)))

(declare-fun e!82180 () Bool)

(assert (=> b!125799 (= res!60884 (not e!82180))))

(declare-fun res!60877 () Bool)

(assert (=> b!125799 (=> (not res!60877) (not e!82180))))

(assert (=> b!125799 (= res!60877 (bvslt #b00000000000000000000000000000000 (size!2481 lt!64441)))))

(declare-fun d!37905 () Bool)

(assert (=> d!37905 e!82182))

(declare-fun res!60881 () Bool)

(assert (=> d!37905 (=> (not res!60881) (not e!82182))))

(assert (=> d!37905 (= res!60881 (or (bvsge #b00000000000000000000000000000000 (size!2481 lt!64441)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 lt!64441)))))))

(declare-fun lt!64902 () ListLongMap!1681)

(assert (=> d!37905 (= lt!64910 lt!64902)))

(declare-fun lt!64914 () Unit!3878)

(assert (=> d!37905 (= lt!64914 e!82185)))

(declare-fun c!22976 () Bool)

(assert (=> d!37905 (= c!22976 e!82174)))

(declare-fun res!60879 () Bool)

(assert (=> d!37905 (=> (not res!60879) (not e!82174))))

(assert (=> d!37905 (= res!60879 (bvslt #b00000000000000000000000000000000 (size!2481 lt!64441)))))

(declare-fun e!82173 () ListLongMap!1681)

(assert (=> d!37905 (= lt!64902 e!82173)))

(declare-fun c!22977 () Bool)

(assert (=> d!37905 (= c!22977 (and (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!37905 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37905 (= (getCurrentListMap!528 lt!64441 lt!64461 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) lt!64910)))

(declare-fun b!125800 () Bool)

(assert (=> b!125800 (= e!82177 (not call!13485))))

(declare-fun b!125801 () Bool)

(assert (=> b!125801 (= e!82183 e!82184)))

(declare-fun res!60882 () Bool)

(assert (=> b!125801 (=> (not res!60882) (not e!82184))))

(assert (=> b!125801 (= res!60882 (contains!873 lt!64910 (select (arr!2218 lt!64441) #b00000000000000000000000000000000)))))

(assert (=> b!125801 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 lt!64441)))))

(declare-fun call!13488 () ListLongMap!1681)

(declare-fun c!22979 () Bool)

(declare-fun bm!13482 () Bool)

(assert (=> bm!13482 (= call!13488 (+!164 (ite c!22977 call!13483 (ite c!22979 call!13486 call!13489)) (ite (or c!22977 c!22979) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))))))

(declare-fun b!125802 () Bool)

(declare-fun e!82175 () Bool)

(assert (=> b!125802 (= e!82175 (= (apply!110 lt!64910 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2629 newMap!16)))))

(declare-fun b!125803 () Bool)

(assert (=> b!125803 (= e!82173 (+!164 call!13488 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))))

(declare-fun b!125804 () Bool)

(assert (=> b!125804 (= e!82180 (validKeyInArray!0 (select (arr!2218 lt!64441) #b00000000000000000000000000000000)))))

(declare-fun b!125805 () Bool)

(declare-fun c!22978 () Bool)

(assert (=> b!125805 (= c!22978 (and (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!125805 (= e!82181 e!82176)))

(declare-fun bm!13483 () Bool)

(declare-fun call!13487 () Bool)

(assert (=> bm!13483 (= call!13487 (contains!873 lt!64910 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!125806 () Bool)

(declare-fun e!82178 () Bool)

(assert (=> b!125806 (= e!82178 (not call!13487))))

(declare-fun b!125807 () Bool)

(assert (=> b!125807 (= e!82182 e!82177)))

(declare-fun c!22980 () Bool)

(assert (=> b!125807 (= c!22980 (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!13484 () Bool)

(assert (=> bm!13484 (= call!13483 (getCurrentListMapNoExtraKeys!131 lt!64441 lt!64461 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun b!125808 () Bool)

(assert (=> b!125808 (= e!82173 e!82181)))

(assert (=> b!125808 (= c!22979 (and (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!125809 () Bool)

(assert (=> b!125809 (= e!82178 e!82175)))

(declare-fun res!60878 () Bool)

(assert (=> b!125809 (= res!60878 call!13487)))

(assert (=> b!125809 (=> (not res!60878) (not e!82175))))

(declare-fun b!125810 () Bool)

(declare-fun res!60876 () Bool)

(assert (=> b!125810 (=> (not res!60876) (not e!82182))))

(assert (=> b!125810 (= res!60876 e!82178)))

(declare-fun c!22975 () Bool)

(assert (=> b!125810 (= c!22975 (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13485 () Bool)

(assert (=> bm!13485 (= call!13484 call!13488)))

(declare-fun b!125811 () Bool)

(declare-fun lt!64900 () Unit!3878)

(assert (=> b!125811 (= e!82185 lt!64900)))

(declare-fun lt!64903 () ListLongMap!1681)

(assert (=> b!125811 (= lt!64903 (getCurrentListMapNoExtraKeys!131 lt!64441 lt!64461 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64904 () (_ BitVec 64))

(assert (=> b!125811 (= lt!64904 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64916 () (_ BitVec 64))

(assert (=> b!125811 (= lt!64916 (select (arr!2218 lt!64441) #b00000000000000000000000000000000))))

(declare-fun lt!64913 () Unit!3878)

(assert (=> b!125811 (= lt!64913 (addStillContains!86 lt!64903 lt!64904 (zeroValue!2629 newMap!16) lt!64916))))

(assert (=> b!125811 (contains!873 (+!164 lt!64903 (tuple2!2561 lt!64904 (zeroValue!2629 newMap!16))) lt!64916)))

(declare-fun lt!64915 () Unit!3878)

(assert (=> b!125811 (= lt!64915 lt!64913)))

(declare-fun lt!64917 () ListLongMap!1681)

(assert (=> b!125811 (= lt!64917 (getCurrentListMapNoExtraKeys!131 lt!64441 lt!64461 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64908 () (_ BitVec 64))

(assert (=> b!125811 (= lt!64908 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64907 () (_ BitVec 64))

(assert (=> b!125811 (= lt!64907 (select (arr!2218 lt!64441) #b00000000000000000000000000000000))))

(declare-fun lt!64911 () Unit!3878)

(assert (=> b!125811 (= lt!64911 (addApplyDifferent!86 lt!64917 lt!64908 (minValue!2629 newMap!16) lt!64907))))

(assert (=> b!125811 (= (apply!110 (+!164 lt!64917 (tuple2!2561 lt!64908 (minValue!2629 newMap!16))) lt!64907) (apply!110 lt!64917 lt!64907))))

(declare-fun lt!64920 () Unit!3878)

(assert (=> b!125811 (= lt!64920 lt!64911)))

(declare-fun lt!64909 () ListLongMap!1681)

(assert (=> b!125811 (= lt!64909 (getCurrentListMapNoExtraKeys!131 lt!64441 lt!64461 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64918 () (_ BitVec 64))

(assert (=> b!125811 (= lt!64918 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64905 () (_ BitVec 64))

(assert (=> b!125811 (= lt!64905 (select (arr!2218 lt!64441) #b00000000000000000000000000000000))))

(declare-fun lt!64901 () Unit!3878)

(assert (=> b!125811 (= lt!64901 (addApplyDifferent!86 lt!64909 lt!64918 (zeroValue!2629 newMap!16) lt!64905))))

(assert (=> b!125811 (= (apply!110 (+!164 lt!64909 (tuple2!2561 lt!64918 (zeroValue!2629 newMap!16))) lt!64905) (apply!110 lt!64909 lt!64905))))

(declare-fun lt!64919 () Unit!3878)

(assert (=> b!125811 (= lt!64919 lt!64901)))

(declare-fun lt!64921 () ListLongMap!1681)

(assert (=> b!125811 (= lt!64921 (getCurrentListMapNoExtraKeys!131 lt!64441 lt!64461 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64912 () (_ BitVec 64))

(assert (=> b!125811 (= lt!64912 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64906 () (_ BitVec 64))

(assert (=> b!125811 (= lt!64906 (select (arr!2218 lt!64441) #b00000000000000000000000000000000))))

(assert (=> b!125811 (= lt!64900 (addApplyDifferent!86 lt!64921 lt!64912 (minValue!2629 newMap!16) lt!64906))))

(assert (=> b!125811 (= (apply!110 (+!164 lt!64921 (tuple2!2561 lt!64912 (minValue!2629 newMap!16))) lt!64906) (apply!110 lt!64921 lt!64906))))

(declare-fun bm!13486 () Bool)

(assert (=> bm!13486 (= call!13485 (contains!873 lt!64910 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!37905 c!22977) b!125803))

(assert (= (and d!37905 (not c!22977)) b!125808))

(assert (= (and b!125808 c!22979) b!125798))

(assert (= (and b!125808 (not c!22979)) b!125805))

(assert (= (and b!125805 c!22978) b!125792))

(assert (= (and b!125805 (not c!22978)) b!125797))

(assert (= (or b!125792 b!125797) bm!13480))

(assert (= (or b!125798 bm!13480) bm!13481))

(assert (= (or b!125798 b!125792) bm!13485))

(assert (= (or b!125803 bm!13481) bm!13484))

(assert (= (or b!125803 bm!13485) bm!13482))

(assert (= (and d!37905 res!60879) b!125793))

(assert (= (and d!37905 c!22976) b!125811))

(assert (= (and d!37905 (not c!22976)) b!125791))

(assert (= (and d!37905 res!60881) b!125799))

(assert (= (and b!125799 res!60877) b!125804))

(assert (= (and b!125799 (not res!60884)) b!125801))

(assert (= (and b!125801 res!60882) b!125795))

(assert (= (and b!125799 res!60880) b!125810))

(assert (= (and b!125810 c!22975) b!125809))

(assert (= (and b!125810 (not c!22975)) b!125806))

(assert (= (and b!125809 res!60878) b!125802))

(assert (= (or b!125809 b!125806) bm!13483))

(assert (= (and b!125810 res!60876) b!125807))

(assert (= (and b!125807 c!22980) b!125794))

(assert (= (and b!125807 (not c!22980)) b!125800))

(assert (= (and b!125794 res!60883) b!125796))

(assert (= (or b!125794 b!125800) bm!13486))

(declare-fun b_lambda!5543 () Bool)

(assert (=> (not b_lambda!5543) (not b!125795)))

(assert (=> b!125795 t!6062))

(declare-fun b_and!7753 () Bool)

(assert (= b_and!7749 (and (=> t!6062 result!3831) b_and!7753)))

(assert (=> b!125795 t!6064))

(declare-fun b_and!7755 () Bool)

(assert (= b_and!7751 (and (=> t!6064 result!3833) b_and!7755)))

(declare-fun m!146713 () Bool)

(assert (=> b!125803 m!146713))

(declare-fun m!146715 () Bool)

(assert (=> bm!13486 m!146715))

(declare-fun m!146717 () Bool)

(assert (=> b!125793 m!146717))

(assert (=> b!125793 m!146717))

(declare-fun m!146719 () Bool)

(assert (=> b!125793 m!146719))

(declare-fun m!146721 () Bool)

(assert (=> bm!13482 m!146721))

(declare-fun m!146723 () Bool)

(assert (=> b!125796 m!146723))

(assert (=> d!37905 m!145009))

(declare-fun m!146725 () Bool)

(assert (=> bm!13484 m!146725))

(declare-fun m!146727 () Bool)

(assert (=> b!125802 m!146727))

(declare-fun m!146729 () Bool)

(assert (=> b!125795 m!146729))

(assert (=> b!125795 m!145061))

(declare-fun m!146731 () Bool)

(assert (=> b!125795 m!146731))

(assert (=> b!125795 m!146717))

(declare-fun m!146733 () Bool)

(assert (=> b!125795 m!146733))

(assert (=> b!125795 m!145061))

(assert (=> b!125795 m!146729))

(assert (=> b!125795 m!146717))

(declare-fun m!146735 () Bool)

(assert (=> bm!13483 m!146735))

(declare-fun m!146737 () Bool)

(assert (=> b!125811 m!146737))

(declare-fun m!146739 () Bool)

(assert (=> b!125811 m!146739))

(declare-fun m!146741 () Bool)

(assert (=> b!125811 m!146741))

(declare-fun m!146743 () Bool)

(assert (=> b!125811 m!146743))

(declare-fun m!146745 () Bool)

(assert (=> b!125811 m!146745))

(declare-fun m!146747 () Bool)

(assert (=> b!125811 m!146747))

(assert (=> b!125811 m!146739))

(declare-fun m!146749 () Bool)

(assert (=> b!125811 m!146749))

(assert (=> b!125811 m!146741))

(assert (=> b!125811 m!146747))

(declare-fun m!146751 () Bool)

(assert (=> b!125811 m!146751))

(declare-fun m!146753 () Bool)

(assert (=> b!125811 m!146753))

(declare-fun m!146755 () Bool)

(assert (=> b!125811 m!146755))

(assert (=> b!125811 m!146717))

(declare-fun m!146757 () Bool)

(assert (=> b!125811 m!146757))

(declare-fun m!146759 () Bool)

(assert (=> b!125811 m!146759))

(assert (=> b!125811 m!146725))

(assert (=> b!125811 m!146737))

(declare-fun m!146761 () Bool)

(assert (=> b!125811 m!146761))

(declare-fun m!146763 () Bool)

(assert (=> b!125811 m!146763))

(declare-fun m!146765 () Bool)

(assert (=> b!125811 m!146765))

(assert (=> b!125801 m!146717))

(assert (=> b!125801 m!146717))

(declare-fun m!146767 () Bool)

(assert (=> b!125801 m!146767))

(assert (=> b!125804 m!146717))

(assert (=> b!125804 m!146717))

(assert (=> b!125804 m!146719))

(assert (=> d!37457 d!37905))

(declare-fun b!125812 () Bool)

(declare-fun e!82198 () Unit!3878)

(declare-fun Unit!3930 () Unit!3878)

(assert (=> b!125812 (= e!82198 Unit!3930)))

(declare-fun b!125813 () Bool)

(declare-fun e!82189 () ListLongMap!1681)

(declare-fun call!13491 () ListLongMap!1681)

(assert (=> b!125813 (= e!82189 call!13491)))

(declare-fun bm!13487 () Bool)

(declare-fun call!13496 () ListLongMap!1681)

(declare-fun call!13493 () ListLongMap!1681)

(assert (=> bm!13487 (= call!13496 call!13493)))

(declare-fun b!125814 () Bool)

(declare-fun e!82187 () Bool)

(assert (=> b!125814 (= e!82187 (validKeyInArray!0 (select (arr!2218 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16)))) #b00000000000000000000000000000000)))))

(declare-fun b!125815 () Bool)

(declare-fun e!82190 () Bool)

(declare-fun e!82192 () Bool)

(assert (=> b!125815 (= e!82190 e!82192)))

(declare-fun res!60892 () Bool)

(declare-fun call!13492 () Bool)

(assert (=> b!125815 (= res!60892 call!13492)))

(assert (=> b!125815 (=> (not res!60892) (not e!82192))))

(declare-fun b!125816 () Bool)

(declare-fun e!82197 () Bool)

(declare-fun lt!64932 () ListLongMap!1681)

(assert (=> b!125816 (= e!82197 (= (apply!110 lt!64932 (select (arr!2218 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16)))) #b00000000000000000000000000000000)) (get!1445 (select (arr!2219 (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16)))) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!125816 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2482 (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))))))))

(assert (=> b!125816 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))))))))

(declare-fun b!125817 () Bool)

(assert (=> b!125817 (= e!82192 (= (apply!110 lt!64932 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2629 newMap!16)))))

(declare-fun b!125818 () Bool)

(assert (=> b!125818 (= e!82189 call!13496)))

(declare-fun b!125819 () Bool)

(declare-fun e!82194 () ListLongMap!1681)

(assert (=> b!125819 (= e!82194 call!13491)))

(declare-fun bm!13488 () Bool)

(declare-fun call!13490 () ListLongMap!1681)

(assert (=> bm!13488 (= call!13493 call!13490)))

(declare-fun b!125820 () Bool)

(declare-fun res!60889 () Bool)

(declare-fun e!82195 () Bool)

(assert (=> b!125820 (=> (not res!60889) (not e!82195))))

(declare-fun e!82196 () Bool)

(assert (=> b!125820 (= res!60889 e!82196)))

(declare-fun res!60893 () Bool)

(assert (=> b!125820 (=> res!60893 e!82196)))

(declare-fun e!82193 () Bool)

(assert (=> b!125820 (= res!60893 (not e!82193))))

(declare-fun res!60886 () Bool)

(assert (=> b!125820 (=> (not res!60886) (not e!82193))))

(assert (=> b!125820 (= res!60886 (bvslt #b00000000000000000000000000000000 (size!2481 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))))))))

(declare-fun d!37907 () Bool)

(assert (=> d!37907 e!82195))

(declare-fun res!60890 () Bool)

(assert (=> d!37907 (=> (not res!60890) (not e!82195))))

(assert (=> d!37907 (= res!60890 (or (bvsge #b00000000000000000000000000000000 (size!2481 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))))))))))

(declare-fun lt!64924 () ListLongMap!1681)

(assert (=> d!37907 (= lt!64932 lt!64924)))

(declare-fun lt!64936 () Unit!3878)

(assert (=> d!37907 (= lt!64936 e!82198)))

(declare-fun c!22982 () Bool)

(assert (=> d!37907 (= c!22982 e!82187)))

(declare-fun res!60888 () Bool)

(assert (=> d!37907 (=> (not res!60888) (not e!82187))))

(assert (=> d!37907 (= res!60888 (bvslt #b00000000000000000000000000000000 (size!2481 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))))))))

(declare-fun e!82186 () ListLongMap!1681)

(assert (=> d!37907 (= lt!64924 e!82186)))

(declare-fun c!22983 () Bool)

(assert (=> d!37907 (= c!22983 (and (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!37907 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37907 (= (getCurrentListMap!528 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) lt!64932)))

(declare-fun b!125821 () Bool)

(assert (=> b!125821 (= e!82190 (not call!13492))))

(declare-fun b!125822 () Bool)

(assert (=> b!125822 (= e!82196 e!82197)))

(declare-fun res!60891 () Bool)

(assert (=> b!125822 (=> (not res!60891) (not e!82197))))

(assert (=> b!125822 (= res!60891 (contains!873 lt!64932 (select (arr!2218 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16)))) #b00000000000000000000000000000000)))))

(assert (=> b!125822 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))))))))

(declare-fun c!22985 () Bool)

(declare-fun bm!13489 () Bool)

(declare-fun call!13495 () ListLongMap!1681)

(assert (=> bm!13489 (= call!13495 (+!164 (ite c!22983 call!13490 (ite c!22985 call!13493 call!13496)) (ite (or c!22983 c!22985) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 newMap!16)) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16)))))))

(declare-fun b!125823 () Bool)

(declare-fun e!82188 () Bool)

(assert (=> b!125823 (= e!82188 (= (apply!110 lt!64932 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2629 newMap!16)))))

(declare-fun b!125824 () Bool)

(assert (=> b!125824 (= e!82186 (+!164 call!13495 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 newMap!16))))))

(declare-fun b!125825 () Bool)

(assert (=> b!125825 (= e!82193 (validKeyInArray!0 (select (arr!2218 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16)))) #b00000000000000000000000000000000)))))

(declare-fun b!125826 () Bool)

(declare-fun c!22984 () Bool)

(assert (=> b!125826 (= c!22984 (and (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!125826 (= e!82194 e!82189)))

(declare-fun bm!13490 () Bool)

(declare-fun call!13494 () Bool)

(assert (=> bm!13490 (= call!13494 (contains!873 lt!64932 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!125827 () Bool)

(declare-fun e!82191 () Bool)

(assert (=> b!125827 (= e!82191 (not call!13494))))

(declare-fun b!125828 () Bool)

(assert (=> b!125828 (= e!82195 e!82190)))

(declare-fun c!22986 () Bool)

(assert (=> b!125828 (= c!22986 (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!13491 () Bool)

(assert (=> bm!13491 (= call!13490 (getCurrentListMapNoExtraKeys!131 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun b!125829 () Bool)

(assert (=> b!125829 (= e!82186 e!82194)))

(assert (=> b!125829 (= c!22985 (and (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!125830 () Bool)

(assert (=> b!125830 (= e!82191 e!82188)))

(declare-fun res!60887 () Bool)

(assert (=> b!125830 (= res!60887 call!13494)))

(assert (=> b!125830 (=> (not res!60887) (not e!82188))))

(declare-fun b!125831 () Bool)

(declare-fun res!60885 () Bool)

(assert (=> b!125831 (=> (not res!60885) (not e!82195))))

(assert (=> b!125831 (= res!60885 e!82191)))

(declare-fun c!22981 () Bool)

(assert (=> b!125831 (= c!22981 (not (= (bvand (extraKeys!2549 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13492 () Bool)

(assert (=> bm!13492 (= call!13491 call!13495)))

(declare-fun b!125832 () Bool)

(declare-fun lt!64922 () Unit!3878)

(assert (=> b!125832 (= e!82198 lt!64922)))

(declare-fun lt!64925 () ListLongMap!1681)

(assert (=> b!125832 (= lt!64925 (getCurrentListMapNoExtraKeys!131 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64926 () (_ BitVec 64))

(assert (=> b!125832 (= lt!64926 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64938 () (_ BitVec 64))

(assert (=> b!125832 (= lt!64938 (select (arr!2218 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16)))) #b00000000000000000000000000000000))))

(declare-fun lt!64935 () Unit!3878)

(assert (=> b!125832 (= lt!64935 (addStillContains!86 lt!64925 lt!64926 (zeroValue!2629 newMap!16) lt!64938))))

(assert (=> b!125832 (contains!873 (+!164 lt!64925 (tuple2!2561 lt!64926 (zeroValue!2629 newMap!16))) lt!64938)))

(declare-fun lt!64937 () Unit!3878)

(assert (=> b!125832 (= lt!64937 lt!64935)))

(declare-fun lt!64939 () ListLongMap!1681)

(assert (=> b!125832 (= lt!64939 (getCurrentListMapNoExtraKeys!131 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64930 () (_ BitVec 64))

(assert (=> b!125832 (= lt!64930 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64929 () (_ BitVec 64))

(assert (=> b!125832 (= lt!64929 (select (arr!2218 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16)))) #b00000000000000000000000000000000))))

(declare-fun lt!64933 () Unit!3878)

(assert (=> b!125832 (= lt!64933 (addApplyDifferent!86 lt!64939 lt!64930 (minValue!2629 newMap!16) lt!64929))))

(assert (=> b!125832 (= (apply!110 (+!164 lt!64939 (tuple2!2561 lt!64930 (minValue!2629 newMap!16))) lt!64929) (apply!110 lt!64939 lt!64929))))

(declare-fun lt!64942 () Unit!3878)

(assert (=> b!125832 (= lt!64942 lt!64933)))

(declare-fun lt!64931 () ListLongMap!1681)

(assert (=> b!125832 (= lt!64931 (getCurrentListMapNoExtraKeys!131 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64940 () (_ BitVec 64))

(assert (=> b!125832 (= lt!64940 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64927 () (_ BitVec 64))

(assert (=> b!125832 (= lt!64927 (select (arr!2218 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16)))) #b00000000000000000000000000000000))))

(declare-fun lt!64923 () Unit!3878)

(assert (=> b!125832 (= lt!64923 (addApplyDifferent!86 lt!64931 lt!64940 (zeroValue!2629 newMap!16) lt!64927))))

(assert (=> b!125832 (= (apply!110 (+!164 lt!64931 (tuple2!2561 lt!64940 (zeroValue!2629 newMap!16))) lt!64927) (apply!110 lt!64931 lt!64927))))

(declare-fun lt!64941 () Unit!3878)

(assert (=> b!125832 (= lt!64941 lt!64923)))

(declare-fun lt!64943 () ListLongMap!1681)

(assert (=> b!125832 (= lt!64943 (getCurrentListMapNoExtraKeys!131 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(declare-fun lt!64934 () (_ BitVec 64))

(assert (=> b!125832 (= lt!64934 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64928 () (_ BitVec 64))

(assert (=> b!125832 (= lt!64928 (select (arr!2218 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16)))) #b00000000000000000000000000000000))))

(assert (=> b!125832 (= lt!64922 (addApplyDifferent!86 lt!64943 lt!64934 (minValue!2629 newMap!16) lt!64928))))

(assert (=> b!125832 (= (apply!110 (+!164 lt!64943 (tuple2!2561 lt!64934 (minValue!2629 newMap!16))) lt!64928) (apply!110 lt!64943 lt!64928))))

(declare-fun bm!13493 () Bool)

(assert (=> bm!13493 (= call!13492 (contains!873 lt!64932 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!37907 c!22983) b!125824))

(assert (= (and d!37907 (not c!22983)) b!125829))

(assert (= (and b!125829 c!22985) b!125819))

(assert (= (and b!125829 (not c!22985)) b!125826))

(assert (= (and b!125826 c!22984) b!125813))

(assert (= (and b!125826 (not c!22984)) b!125818))

(assert (= (or b!125813 b!125818) bm!13487))

(assert (= (or b!125819 bm!13487) bm!13488))

(assert (= (or b!125819 b!125813) bm!13492))

(assert (= (or b!125824 bm!13488) bm!13491))

(assert (= (or b!125824 bm!13492) bm!13489))

(assert (= (and d!37907 res!60888) b!125814))

(assert (= (and d!37907 c!22982) b!125832))

(assert (= (and d!37907 (not c!22982)) b!125812))

(assert (= (and d!37907 res!60890) b!125820))

(assert (= (and b!125820 res!60886) b!125825))

(assert (= (and b!125820 (not res!60893)) b!125822))

(assert (= (and b!125822 res!60891) b!125816))

(assert (= (and b!125820 res!60889) b!125831))

(assert (= (and b!125831 c!22981) b!125830))

(assert (= (and b!125831 (not c!22981)) b!125827))

(assert (= (and b!125830 res!60887) b!125823))

(assert (= (or b!125830 b!125827) bm!13490))

(assert (= (and b!125831 res!60885) b!125828))

(assert (= (and b!125828 c!22986) b!125815))

(assert (= (and b!125828 (not c!22986)) b!125821))

(assert (= (and b!125815 res!60892) b!125817))

(assert (= (or b!125815 b!125821) bm!13493))

(declare-fun b_lambda!5545 () Bool)

(assert (=> (not b_lambda!5545) (not b!125816)))

(assert (=> b!125816 t!6062))

(declare-fun b_and!7757 () Bool)

(assert (= b_and!7753 (and (=> t!6062 result!3831) b_and!7757)))

(assert (=> b!125816 t!6064))

(declare-fun b_and!7759 () Bool)

(assert (= b_and!7755 (and (=> t!6064 result!3833) b_and!7759)))

(declare-fun m!146769 () Bool)

(assert (=> b!125824 m!146769))

(declare-fun m!146771 () Bool)

(assert (=> bm!13493 m!146771))

(declare-fun m!146773 () Bool)

(assert (=> b!125814 m!146773))

(assert (=> b!125814 m!146773))

(declare-fun m!146775 () Bool)

(assert (=> b!125814 m!146775))

(declare-fun m!146777 () Bool)

(assert (=> bm!13489 m!146777))

(declare-fun m!146779 () Bool)

(assert (=> b!125817 m!146779))

(assert (=> d!37907 m!145009))

(declare-fun m!146781 () Bool)

(assert (=> bm!13491 m!146781))

(declare-fun m!146783 () Bool)

(assert (=> b!125823 m!146783))

(declare-fun m!146785 () Bool)

(assert (=> b!125816 m!146785))

(assert (=> b!125816 m!145061))

(declare-fun m!146787 () Bool)

(assert (=> b!125816 m!146787))

(assert (=> b!125816 m!146773))

(declare-fun m!146789 () Bool)

(assert (=> b!125816 m!146789))

(assert (=> b!125816 m!145061))

(assert (=> b!125816 m!146785))

(assert (=> b!125816 m!146773))

(declare-fun m!146791 () Bool)

(assert (=> bm!13490 m!146791))

(declare-fun m!146793 () Bool)

(assert (=> b!125832 m!146793))

(declare-fun m!146795 () Bool)

(assert (=> b!125832 m!146795))

(declare-fun m!146797 () Bool)

(assert (=> b!125832 m!146797))

(declare-fun m!146799 () Bool)

(assert (=> b!125832 m!146799))

(declare-fun m!146801 () Bool)

(assert (=> b!125832 m!146801))

(declare-fun m!146803 () Bool)

(assert (=> b!125832 m!146803))

(assert (=> b!125832 m!146795))

(declare-fun m!146805 () Bool)

(assert (=> b!125832 m!146805))

(assert (=> b!125832 m!146797))

(assert (=> b!125832 m!146803))

(declare-fun m!146807 () Bool)

(assert (=> b!125832 m!146807))

(declare-fun m!146809 () Bool)

(assert (=> b!125832 m!146809))

(declare-fun m!146811 () Bool)

(assert (=> b!125832 m!146811))

(assert (=> b!125832 m!146773))

(declare-fun m!146813 () Bool)

(assert (=> b!125832 m!146813))

(declare-fun m!146815 () Bool)

(assert (=> b!125832 m!146815))

(assert (=> b!125832 m!146781))

(assert (=> b!125832 m!146793))

(declare-fun m!146817 () Bool)

(assert (=> b!125832 m!146817))

(declare-fun m!146819 () Bool)

(assert (=> b!125832 m!146819))

(declare-fun m!146821 () Bool)

(assert (=> b!125832 m!146821))

(assert (=> b!125822 m!146773))

(assert (=> b!125822 m!146773))

(declare-fun m!146823 () Bool)

(assert (=> b!125822 m!146823))

(assert (=> b!125825 m!146773))

(assert (=> b!125825 m!146773))

(assert (=> b!125825 m!146775))

(assert (=> d!37457 d!37907))

(declare-fun b!125833 () Bool)

(declare-fun e!82201 () Bool)

(declare-fun e!82202 () Bool)

(assert (=> b!125833 (= e!82201 e!82202)))

(declare-fun c!22987 () Bool)

(assert (=> b!125833 (= c!22987 (validKeyInArray!0 (select (arr!2218 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16)))) lt!64444)))))

(declare-fun b!125834 () Bool)

(declare-fun e!82199 () Bool)

(assert (=> b!125834 (= e!82199 e!82201)))

(declare-fun res!60894 () Bool)

(assert (=> b!125834 (=> (not res!60894) (not e!82201))))

(declare-fun e!82200 () Bool)

(assert (=> b!125834 (= res!60894 (not e!82200))))

(declare-fun res!60895 () Bool)

(assert (=> b!125834 (=> (not res!60895) (not e!82200))))

(assert (=> b!125834 (= res!60895 (validKeyInArray!0 (select (arr!2218 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16)))) lt!64444)))))

(declare-fun d!37909 () Bool)

(declare-fun res!60896 () Bool)

(assert (=> d!37909 (=> res!60896 e!82199)))

(assert (=> d!37909 (= res!60896 (bvsge lt!64444 (size!2481 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))))))))

(assert (=> d!37909 (= (arrayNoDuplicates!0 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) lt!64444 lt!64462) e!82199)))

(declare-fun b!125835 () Bool)

(declare-fun call!13497 () Bool)

(assert (=> b!125835 (= e!82202 call!13497)))

(declare-fun bm!13494 () Bool)

(assert (=> bm!13494 (= call!13497 (arrayNoDuplicates!0 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) (bvadd lt!64444 #b00000000000000000000000000000001) (ite c!22987 (Cons!1713 (select (arr!2218 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16)))) lt!64444) lt!64462) lt!64462)))))

(declare-fun b!125836 () Bool)

(assert (=> b!125836 (= e!82200 (contains!875 lt!64462 (select (arr!2218 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16)))) lt!64444)))))

(declare-fun b!125837 () Bool)

(assert (=> b!125837 (= e!82202 call!13497)))

(assert (= (and d!37909 (not res!60896)) b!125834))

(assert (= (and b!125834 res!60895) b!125836))

(assert (= (and b!125834 res!60894) b!125833))

(assert (= (and b!125833 c!22987) b!125835))

(assert (= (and b!125833 (not c!22987)) b!125837))

(assert (= (or b!125835 b!125837) bm!13494))

(declare-fun m!146825 () Bool)

(assert (=> b!125833 m!146825))

(assert (=> b!125833 m!146825))

(declare-fun m!146827 () Bool)

(assert (=> b!125833 m!146827))

(assert (=> b!125834 m!146825))

(assert (=> b!125834 m!146825))

(assert (=> b!125834 m!146827))

(assert (=> bm!13494 m!146825))

(declare-fun m!146829 () Bool)

(assert (=> bm!13494 m!146829))

(assert (=> b!125836 m!146825))

(assert (=> b!125836 m!146825))

(declare-fun m!146831 () Bool)

(assert (=> b!125836 m!146831))

(assert (=> d!37457 d!37909))

(declare-fun d!37911 () Bool)

(declare-fun e!82204 () Bool)

(assert (=> d!37911 e!82204))

(declare-fun res!60897 () Bool)

(assert (=> d!37911 (=> res!60897 e!82204)))

(declare-fun lt!64944 () Bool)

(assert (=> d!37911 (= res!60897 (not lt!64944))))

(declare-fun lt!64947 () Bool)

(assert (=> d!37911 (= lt!64944 lt!64947)))

(declare-fun lt!64945 () Unit!3878)

(declare-fun e!82203 () Unit!3878)

(assert (=> d!37911 (= lt!64945 e!82203)))

(declare-fun c!22988 () Bool)

(assert (=> d!37911 (= c!22988 lt!64947)))

(assert (=> d!37911 (= lt!64947 (containsKey!169 (toList!856 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (=> d!37911 (= (contains!873 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) lt!64944)))

(declare-fun b!125838 () Bool)

(declare-fun lt!64946 () Unit!3878)

(assert (=> b!125838 (= e!82203 lt!64946)))

(assert (=> b!125838 (= lt!64946 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (=> b!125838 (isDefined!119 (getValueByKey!165 (toList!856 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun b!125839 () Bool)

(declare-fun Unit!3931 () Unit!3878)

(assert (=> b!125839 (= e!82203 Unit!3931)))

(declare-fun b!125840 () Bool)

(assert (=> b!125840 (= e!82204 (isDefined!119 (getValueByKey!165 (toList!856 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))))))

(assert (= (and d!37911 c!22988) b!125838))

(assert (= (and d!37911 (not c!22988)) b!125839))

(assert (= (and d!37911 (not res!60897)) b!125840))

(assert (=> d!37911 m!144661))

(declare-fun m!146833 () Bool)

(assert (=> d!37911 m!146833))

(assert (=> b!125838 m!144661))

(declare-fun m!146835 () Bool)

(assert (=> b!125838 m!146835))

(assert (=> b!125838 m!144661))

(declare-fun m!146837 () Bool)

(assert (=> b!125838 m!146837))

(assert (=> b!125838 m!146837))

(declare-fun m!146839 () Bool)

(assert (=> b!125838 m!146839))

(assert (=> b!125840 m!144661))

(assert (=> b!125840 m!146837))

(assert (=> b!125840 m!146837))

(assert (=> b!125840 m!146839))

(assert (=> d!37457 d!37911))

(assert (=> d!37457 d!37419))

(assert (=> d!37457 d!37339))

(declare-fun b!125841 () Bool)

(declare-fun e!82205 () (_ BitVec 32))

(declare-fun call!13498 () (_ BitVec 32))

(assert (=> b!125841 (= e!82205 call!13498)))

(declare-fun b!125842 () Bool)

(declare-fun e!82206 () (_ BitVec 32))

(assert (=> b!125842 (= e!82206 #b00000000000000000000000000000000)))

(declare-fun b!125843 () Bool)

(assert (=> b!125843 (= e!82205 (bvadd #b00000000000000000000000000000001 call!13498))))

(declare-fun b!125844 () Bool)

(assert (=> b!125844 (= e!82206 e!82205)))

(declare-fun c!22990 () Bool)

(assert (=> b!125844 (= c!22990 (validKeyInArray!0 (select (arr!2218 lt!64464) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)))))))

(declare-fun bm!13495 () Bool)

(assert (=> bm!13495 (= call!13498 (arrayCountValidKeys!0 lt!64464 (bvadd (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) #b00000000000000000000000000000001) (bvadd (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) #b00000000000000000000000000000001)))))

(declare-fun d!37913 () Bool)

(declare-fun lt!64948 () (_ BitVec 32))

(assert (=> d!37913 (and (bvsge lt!64948 #b00000000000000000000000000000000) (bvsle lt!64948 (bvsub (size!2481 lt!64464) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)))))))

(assert (=> d!37913 (= lt!64948 e!82206)))

(declare-fun c!22989 () Bool)

(assert (=> d!37913 (= c!22989 (bvsge (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (bvadd (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) #b00000000000000000000000000000001)))))

(assert (=> d!37913 (and (bvsle (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (bvadd (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) #b00000000000000000000000000000001)) (bvsge (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) #b00000000000000000000000000000000) (bvsle (bvadd (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) #b00000000000000000000000000000001) (size!2481 lt!64464)))))

(assert (=> d!37913 (= (arrayCountValidKeys!0 lt!64464 (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (bvadd (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) #b00000000000000000000000000000001)) lt!64948)))

(assert (= (and d!37913 c!22989) b!125842))

(assert (= (and d!37913 (not c!22989)) b!125844))

(assert (= (and b!125844 c!22990) b!125843))

(assert (= (and b!125844 (not c!22990)) b!125841))

(assert (= (or b!125843 b!125841) bm!13495))

(declare-fun m!146841 () Bool)

(assert (=> b!125844 m!146841))

(assert (=> b!125844 m!146841))

(declare-fun m!146843 () Bool)

(assert (=> b!125844 m!146843))

(declare-fun m!146845 () Bool)

(assert (=> bm!13495 m!146845))

(assert (=> d!37457 d!37913))

(assert (=> d!37457 d!37421))

(declare-fun d!37915 () Bool)

(declare-fun res!60898 () Bool)

(declare-fun e!82207 () Bool)

(assert (=> d!37915 (=> res!60898 e!82207)))

(assert (=> d!37915 (= res!60898 (= (select (arr!2218 lt!64439) #b00000000000000000000000000000000) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (=> d!37915 (= (arrayContainsKey!0 lt!64439 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) #b00000000000000000000000000000000) e!82207)))

(declare-fun b!125845 () Bool)

(declare-fun e!82208 () Bool)

(assert (=> b!125845 (= e!82207 e!82208)))

(declare-fun res!60899 () Bool)

(assert (=> b!125845 (=> (not res!60899) (not e!82208))))

(assert (=> b!125845 (= res!60899 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2481 lt!64439)))))

(declare-fun b!125846 () Bool)

(assert (=> b!125846 (= e!82208 (arrayContainsKey!0 lt!64439 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!37915 (not res!60898)) b!125845))

(assert (= (and b!125845 res!60899) b!125846))

(declare-fun m!146847 () Bool)

(assert (=> d!37915 m!146847))

(assert (=> b!125846 m!144661))

(declare-fun m!146849 () Bool)

(assert (=> b!125846 m!146849))

(assert (=> d!37457 d!37915))

(declare-fun d!37917 () Bool)

(assert (=> d!37917 (= (arrayCountValidKeys!0 lt!64464 (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (bvadd (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lt!64951 () Unit!3878)

(declare-fun choose!2 (array!4684 (_ BitVec 32)) Unit!3878)

(assert (=> d!37917 (= lt!64951 (choose!2 lt!64464 (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122))))))

(declare-fun e!82211 () Bool)

(assert (=> d!37917 e!82211))

(declare-fun res!60904 () Bool)

(assert (=> d!37917 (=> (not res!60904) (not e!82211))))

(assert (=> d!37917 (= res!60904 (and (bvsge (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) #b00000000000000000000000000000000) (bvslt (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (size!2481 lt!64464))))))

(assert (=> d!37917 (= (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!64464 (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122))) lt!64951)))

(declare-fun b!125851 () Bool)

(declare-fun res!60905 () Bool)

(assert (=> b!125851 (=> (not res!60905) (not e!82211))))

(assert (=> b!125851 (= res!60905 (validKeyInArray!0 (select (arr!2218 lt!64464) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)))))))

(declare-fun b!125852 () Bool)

(assert (=> b!125852 (= e!82211 (bvslt (size!2481 lt!64464) #b01111111111111111111111111111111))))

(assert (= (and d!37917 res!60904) b!125851))

(assert (= (and b!125851 res!60905) b!125852))

(assert (=> d!37917 m!145291))

(declare-fun m!146851 () Bool)

(assert (=> d!37917 m!146851))

(assert (=> b!125851 m!146841))

(assert (=> b!125851 m!146841))

(assert (=> b!125851 m!146843))

(assert (=> d!37457 d!37917))

(declare-fun b!125863 () Bool)

(declare-fun e!82217 () Bool)

(assert (=> b!125863 (= e!82217 (bvslt (size!2481 (_keys!4493 newMap!16)) #b01111111111111111111111111111111))))

(declare-fun e!82216 () Bool)

(declare-fun b!125864 () Bool)

(assert (=> b!125864 (= e!82216 (= (arrayCountValidKeys!0 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!4493 newMap!16) #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))) #b00000000000000000000000000000001)))))

(declare-fun b!125862 () Bool)

(declare-fun res!60917 () Bool)

(assert (=> b!125862 (=> (not res!60917) (not e!82217))))

(assert (=> b!125862 (= res!60917 (validKeyInArray!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun d!37919 () Bool)

(assert (=> d!37919 e!82216))

(declare-fun res!60916 () Bool)

(assert (=> d!37919 (=> (not res!60916) (not e!82216))))

(assert (=> d!37919 (= res!60916 (and (bvsge (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) #b00000000000000000000000000000000) (bvslt (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (size!2481 (_keys!4493 newMap!16)))))))

(declare-fun lt!64954 () Unit!3878)

(declare-fun choose!1 (array!4684 (_ BitVec 32) (_ BitVec 64)) Unit!3878)

(assert (=> d!37919 (= lt!64954 (choose!1 (_keys!4493 newMap!16) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (=> d!37919 e!82217))

(declare-fun res!60915 () Bool)

(assert (=> d!37919 (=> (not res!60915) (not e!82217))))

(assert (=> d!37919 (= res!60915 (and (bvsge (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) #b00000000000000000000000000000000) (bvslt (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (size!2481 (_keys!4493 newMap!16)))))))

(assert (=> d!37919 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!4493 newMap!16) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) lt!64954)))

(declare-fun b!125861 () Bool)

(declare-fun res!60914 () Bool)

(assert (=> b!125861 (=> (not res!60914) (not e!82217))))

(assert (=> b!125861 (= res!60914 (not (validKeyInArray!0 (select (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122))))))))

(assert (= (and d!37919 res!60915) b!125861))

(assert (= (and b!125861 res!60914) b!125862))

(assert (= (and b!125862 res!60917) b!125863))

(assert (= (and d!37919 res!60916) b!125864))

(assert (=> b!125864 m!145317))

(assert (=> b!125864 m!145315))

(assert (=> b!125864 m!144731))

(assert (=> b!125862 m!144661))

(declare-fun m!146853 () Bool)

(assert (=> b!125862 m!146853))

(assert (=> d!37919 m!144661))

(declare-fun m!146855 () Bool)

(assert (=> d!37919 m!146855))

(declare-fun m!146857 () Bool)

(assert (=> b!125861 m!146857))

(assert (=> b!125861 m!146857))

(declare-fun m!146859 () Bool)

(assert (=> b!125861 m!146859))

(assert (=> d!37457 d!37919))

(declare-fun d!37921 () Bool)

(declare-fun e!82220 () Bool)

(assert (=> d!37921 e!82220))

(declare-fun res!60920 () Bool)

(assert (=> d!37921 (=> (not res!60920) (not e!82220))))

(assert (=> d!37921 (= res!60920 (and (bvsge (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) #b00000000000000000000000000000000) (bvslt (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (size!2481 (_keys!4493 newMap!16)))))))

(declare-fun lt!64957 () Unit!3878)

(declare-fun choose!102 ((_ BitVec 64) array!4684 (_ BitVec 32) (_ BitVec 32)) Unit!3878)

(assert (=> d!37921 (= lt!64957 (choose!102 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (_keys!4493 newMap!16) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (mask!7010 newMap!16)))))

(assert (=> d!37921 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37921 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (_keys!4493 newMap!16) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (mask!7010 newMap!16)) lt!64957)))

(declare-fun b!125867 () Bool)

(assert (=> b!125867 (= e!82220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) (mask!7010 newMap!16)))))

(assert (= (and d!37921 res!60920) b!125867))

(assert (=> d!37921 m!144661))

(declare-fun m!146861 () Bool)

(assert (=> d!37921 m!146861))

(assert (=> d!37921 m!145009))

(assert (=> b!125867 m!145317))

(assert (=> b!125867 m!145301))

(assert (=> d!37457 d!37921))

(declare-fun d!37923 () Bool)

(declare-fun e!82223 () Bool)

(assert (=> d!37923 e!82223))

(declare-fun res!60923 () Bool)

(assert (=> d!37923 (=> (not res!60923) (not e!82223))))

(assert (=> d!37923 (= res!60923 (and (bvsge (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) #b00000000000000000000000000000000) (bvslt (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (size!2481 (_keys!4493 newMap!16)))))))

(declare-fun lt!64960 () Unit!3878)

(declare-fun choose!41 (array!4684 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1717) Unit!3878)

(assert (=> d!37923 (= lt!64960 (choose!41 (_keys!4493 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) lt!64444 lt!64462))))

(assert (=> d!37923 (bvslt (size!2481 (_keys!4493 newMap!16)) #b01111111111111111111111111111111)))

(assert (=> d!37923 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!4493 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) lt!64444 lt!64462) lt!64960)))

(declare-fun b!125870 () Bool)

(assert (=> b!125870 (= e!82223 (arrayNoDuplicates!0 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) lt!64444 lt!64462))))

(assert (= (and d!37923 res!60923) b!125870))

(assert (=> d!37923 m!144661))

(declare-fun m!146863 () Bool)

(assert (=> d!37923 m!146863))

(assert (=> b!125870 m!145317))

(assert (=> b!125870 m!145313))

(assert (=> d!37457 d!37923))

(declare-fun d!37925 () Bool)

(declare-fun e!82225 () Bool)

(assert (=> d!37925 e!82225))

(declare-fun res!60924 () Bool)

(assert (=> d!37925 (=> res!60924 e!82225)))

(declare-fun lt!64961 () Bool)

(assert (=> d!37925 (= res!60924 (not lt!64961))))

(declare-fun lt!64964 () Bool)

(assert (=> d!37925 (= lt!64961 lt!64964)))

(declare-fun lt!64962 () Unit!3878)

(declare-fun e!82224 () Unit!3878)

(assert (=> d!37925 (= lt!64962 e!82224)))

(declare-fun c!22991 () Bool)

(assert (=> d!37925 (= c!22991 lt!64964)))

(assert (=> d!37925 (= lt!64964 (containsKey!169 (toList!856 (getCurrentListMap!528 lt!64441 lt!64461 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16))) (select (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)))))))

(assert (=> d!37925 (= (contains!873 (getCurrentListMap!528 lt!64441 lt!64461 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) (select (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)))) lt!64961)))

(declare-fun b!125871 () Bool)

(declare-fun lt!64963 () Unit!3878)

(assert (=> b!125871 (= e!82224 lt!64963)))

(assert (=> b!125871 (= lt!64963 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 (getCurrentListMap!528 lt!64441 lt!64461 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16))) (select (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)))))))

(assert (=> b!125871 (isDefined!119 (getValueByKey!165 (toList!856 (getCurrentListMap!528 lt!64441 lt!64461 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16))) (select (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)))))))

(declare-fun b!125872 () Bool)

(declare-fun Unit!3932 () Unit!3878)

(assert (=> b!125872 (= e!82224 Unit!3932)))

(declare-fun b!125873 () Bool)

(assert (=> b!125873 (= e!82225 (isDefined!119 (getValueByKey!165 (toList!856 (getCurrentListMap!528 lt!64441 lt!64461 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16))) (select (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122))))))))

(assert (= (and d!37925 c!22991) b!125871))

(assert (= (and d!37925 (not c!22991)) b!125872))

(assert (= (and d!37925 (not res!60924)) b!125873))

(assert (=> d!37925 m!145283))

(declare-fun m!146865 () Bool)

(assert (=> d!37925 m!146865))

(assert (=> b!125871 m!145283))

(declare-fun m!146867 () Bool)

(assert (=> b!125871 m!146867))

(assert (=> b!125871 m!145283))

(declare-fun m!146869 () Bool)

(assert (=> b!125871 m!146869))

(assert (=> b!125871 m!146869))

(declare-fun m!146871 () Bool)

(assert (=> b!125871 m!146871))

(assert (=> b!125873 m!145283))

(assert (=> b!125873 m!146869))

(assert (=> b!125873 m!146869))

(assert (=> b!125873 m!146871))

(assert (=> d!37457 d!37925))

(assert (=> d!37457 d!37465))

(declare-fun d!37927 () Bool)

(declare-fun e!82228 () Bool)

(assert (=> d!37927 e!82228))

(declare-fun res!60927 () Bool)

(assert (=> d!37927 (=> (not res!60927) (not e!82228))))

(assert (=> d!37927 (= res!60927 (and (bvsge (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) #b00000000000000000000000000000000) (bvslt (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (size!2481 (_keys!4493 newMap!16))) (bvslt (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (size!2482 (_values!2747 newMap!16)))))))

(declare-fun lt!64967 () Unit!3878)

(declare-fun choose!765 (array!4684 array!4686 (_ BitVec 32) (_ BitVec 32) V!3427 V!3427 (_ BitVec 32) (_ BitVec 64) V!3427 Int) Unit!3878)

(assert (=> d!37927 (= lt!64967 (choose!765 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2764 newMap!16)))))

(assert (=> d!37927 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37927 (= (lemmaAddValidKeyToArrayThenAddPairToListMap!36 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2764 newMap!16)) lt!64967)))

(declare-fun b!125876 () Bool)

(assert (=> b!125876 (= e!82228 (= (+!164 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!528 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) (array!4687 (store (arr!2219 (_values!2747 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (ValueCellFull!1074 (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2482 (_values!2747 newMap!16))) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16))))))

(assert (= (and d!37927 res!60927) b!125876))

(assert (=> d!37927 m!144661))

(assert (=> d!37927 m!144681))

(declare-fun m!146873 () Bool)

(assert (=> d!37927 m!146873))

(assert (=> d!37927 m!145009))

(assert (=> b!125876 m!145319))

(assert (=> b!125876 m!144781))

(assert (=> b!125876 m!145037))

(assert (=> b!125876 m!145317))

(assert (=> b!125876 m!144781))

(assert (=> b!125876 m!145303))

(assert (=> d!37457 d!37927))

(declare-fun d!37929 () Bool)

(assert (=> d!37929 (arrayContainsKey!0 lt!64439 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(declare-fun lt!64968 () Unit!3878)

(assert (=> d!37929 (= lt!64968 (choose!13 lt!64439 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122))))))

(assert (=> d!37929 (bvsge (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) #b00000000000000000000000000000000)))

(assert (=> d!37929 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!64439 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122))) lt!64968)))

(declare-fun bs!5214 () Bool)

(assert (= bs!5214 d!37929))

(assert (=> bs!5214 m!144661))

(assert (=> bs!5214 m!145309))

(assert (=> bs!5214 m!144661))

(declare-fun m!146875 () Bool)

(assert (=> bs!5214 m!146875))

(assert (=> d!37457 d!37929))

(declare-fun d!37931 () Bool)

(declare-fun e!82229 () Bool)

(assert (=> d!37931 e!82229))

(declare-fun res!60928 () Bool)

(assert (=> d!37931 (=> (not res!60928) (not e!82229))))

(assert (=> d!37931 (= res!60928 (and (bvsge (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) #b00000000000000000000000000000000) (bvslt (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (size!2481 lt!64441))))))

(declare-fun lt!64969 () Unit!3878)

(assert (=> d!37931 (= lt!64969 (choose!759 lt!64441 lt!64461 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (defaultEntry!2764 newMap!16)))))

(assert (=> d!37931 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37931 (= (lemmaValidKeyInArrayIsInListMap!113 lt!64441 lt!64461 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (defaultEntry!2764 newMap!16)) lt!64969)))

(declare-fun b!125877 () Bool)

(assert (=> b!125877 (= e!82229 (contains!873 (getCurrentListMap!528 lt!64441 lt!64461 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) (select (arr!2218 lt!64441) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)))))))

(assert (= (and d!37931 res!60928) b!125877))

(declare-fun m!146877 () Bool)

(assert (=> d!37931 m!146877))

(assert (=> d!37931 m!145009))

(assert (=> b!125877 m!145293))

(declare-fun m!146879 () Bool)

(assert (=> b!125877 m!146879))

(assert (=> b!125877 m!145293))

(assert (=> b!125877 m!146879))

(declare-fun m!146881 () Bool)

(assert (=> b!125877 m!146881))

(assert (=> d!37457 d!37931))

(declare-fun b!125878 () Bool)

(declare-fun e!82230 () Bool)

(declare-fun call!13499 () Bool)

(assert (=> b!125878 (= e!82230 call!13499)))

(declare-fun bm!13496 () Bool)

(assert (=> bm!13496 (= call!13499 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) (mask!7010 newMap!16)))))

(declare-fun d!37933 () Bool)

(declare-fun res!60930 () Bool)

(declare-fun e!82232 () Bool)

(assert (=> d!37933 (=> res!60930 e!82232)))

(assert (=> d!37933 (= res!60930 (bvsge #b00000000000000000000000000000000 (size!2481 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))))))))

(assert (=> d!37933 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) (mask!7010 newMap!16)) e!82232)))

(declare-fun b!125879 () Bool)

(assert (=> b!125879 (= e!82232 e!82230)))

(declare-fun c!22992 () Bool)

(assert (=> b!125879 (= c!22992 (validKeyInArray!0 (select (arr!2218 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16)))) #b00000000000000000000000000000000)))))

(declare-fun b!125880 () Bool)

(declare-fun e!82231 () Bool)

(assert (=> b!125880 (= e!82231 call!13499)))

(declare-fun b!125881 () Bool)

(assert (=> b!125881 (= e!82230 e!82231)))

(declare-fun lt!64970 () (_ BitVec 64))

(assert (=> b!125881 (= lt!64970 (select (arr!2218 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16)))) #b00000000000000000000000000000000))))

(declare-fun lt!64972 () Unit!3878)

(assert (=> b!125881 (= lt!64972 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) lt!64970 #b00000000000000000000000000000000))))

(assert (=> b!125881 (arrayContainsKey!0 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) lt!64970 #b00000000000000000000000000000000)))

(declare-fun lt!64971 () Unit!3878)

(assert (=> b!125881 (= lt!64971 lt!64972)))

(declare-fun res!60929 () Bool)

(assert (=> b!125881 (= res!60929 (= (seekEntryOrOpen!0 (select (arr!2218 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16)))) #b00000000000000000000000000000000) (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) (mask!7010 newMap!16)) (Found!279 #b00000000000000000000000000000000)))))

(assert (=> b!125881 (=> (not res!60929) (not e!82231))))

(assert (= (and d!37933 (not res!60930)) b!125879))

(assert (= (and b!125879 c!22992) b!125881))

(assert (= (and b!125879 (not c!22992)) b!125878))

(assert (= (and b!125881 res!60929) b!125880))

(assert (= (or b!125880 b!125878) bm!13496))

(declare-fun m!146883 () Bool)

(assert (=> bm!13496 m!146883))

(assert (=> b!125879 m!146773))

(assert (=> b!125879 m!146773))

(assert (=> b!125879 m!146775))

(assert (=> b!125881 m!146773))

(declare-fun m!146885 () Bool)

(assert (=> b!125881 m!146885))

(declare-fun m!146887 () Bool)

(assert (=> b!125881 m!146887))

(assert (=> b!125881 m!146773))

(declare-fun m!146889 () Bool)

(assert (=> b!125881 m!146889))

(assert (=> d!37457 d!37933))

(declare-fun b!125882 () Bool)

(declare-fun e!82233 () (_ BitVec 32))

(declare-fun call!13500 () (_ BitVec 32))

(assert (=> b!125882 (= e!82233 call!13500)))

(declare-fun b!125883 () Bool)

(declare-fun e!82234 () (_ BitVec 32))

(assert (=> b!125883 (= e!82234 #b00000000000000000000000000000000)))

(declare-fun b!125884 () Bool)

(assert (=> b!125884 (= e!82233 (bvadd #b00000000000000000000000000000001 call!13500))))

(declare-fun b!125885 () Bool)

(assert (=> b!125885 (= e!82234 e!82233)))

(declare-fun c!22994 () Bool)

(assert (=> b!125885 (= c!22994 (validKeyInArray!0 (select (arr!2218 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16)))) #b00000000000000000000000000000000)))))

(declare-fun bm!13497 () Bool)

(assert (=> bm!13497 (= call!13500 (arrayCountValidKeys!0 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2481 (_keys!4493 newMap!16))))))

(declare-fun d!37935 () Bool)

(declare-fun lt!64973 () (_ BitVec 32))

(assert (=> d!37935 (and (bvsge lt!64973 #b00000000000000000000000000000000) (bvsle lt!64973 (bvsub (size!2481 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16)))) #b00000000000000000000000000000000)))))

(assert (=> d!37935 (= lt!64973 e!82234)))

(declare-fun c!22993 () Bool)

(assert (=> d!37935 (= c!22993 (bvsge #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))))))

(assert (=> d!37935 (and (bvsle #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2481 (_keys!4493 newMap!16)) (size!2481 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))))))))

(assert (=> d!37935 (= (arrayCountValidKeys!0 (array!4685 (store (arr!2218 (_keys!4493 newMap!16)) (ite c!22673 (index!3273 lt!64122) (index!3270 lt!64122)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) (size!2481 (_keys!4493 newMap!16))) #b00000000000000000000000000000000 (size!2481 (_keys!4493 newMap!16))) lt!64973)))

(assert (= (and d!37935 c!22993) b!125883))

(assert (= (and d!37935 (not c!22993)) b!125885))

(assert (= (and b!125885 c!22994) b!125884))

(assert (= (and b!125885 (not c!22994)) b!125882))

(assert (= (or b!125884 b!125882) bm!13497))

(assert (=> b!125885 m!146773))

(assert (=> b!125885 m!146773))

(assert (=> b!125885 m!146775))

(declare-fun m!146891 () Bool)

(assert (=> bm!13497 m!146891))

(assert (=> d!37457 d!37935))

(declare-fun d!37937 () Bool)

(declare-fun res!60932 () Bool)

(declare-fun e!82235 () Bool)

(assert (=> d!37937 (=> (not res!60932) (not e!82235))))

(assert (=> d!37937 (= res!60932 (validMask!0 (mask!7010 (v!3106 (underlying!435 thiss!992)))))))

(assert (=> d!37937 (= (simpleValid!85 (v!3106 (underlying!435 thiss!992))) e!82235)))

(declare-fun b!125889 () Bool)

(assert (=> b!125889 (= e!82235 (and (bvsge (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000000011) (bvsge (_vacant!577 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun b!125886 () Bool)

(declare-fun res!60931 () Bool)

(assert (=> b!125886 (=> (not res!60931) (not e!82235))))

(assert (=> b!125886 (= res!60931 (and (= (size!2482 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000000001)) (= (size!2481 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (size!2482 (_values!2747 (v!3106 (underlying!435 thiss!992))))) (bvsge (_size!577 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000000000) (bvsle (_size!577 (v!3106 (underlying!435 thiss!992))) (bvadd (mask!7010 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000000001))))))

(declare-fun b!125888 () Bool)

(declare-fun res!60933 () Bool)

(assert (=> b!125888 (=> (not res!60933) (not e!82235))))

(assert (=> b!125888 (= res!60933 (= (size!2485 (v!3106 (underlying!435 thiss!992))) (bvadd (_size!577 (v!3106 (underlying!435 thiss!992))) (bvsdiv (bvadd (extraKeys!2549 (v!3106 (underlying!435 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!125887 () Bool)

(declare-fun res!60934 () Bool)

(assert (=> b!125887 (=> (not res!60934) (not e!82235))))

(assert (=> b!125887 (= res!60934 (bvsge (size!2485 (v!3106 (underlying!435 thiss!992))) (_size!577 (v!3106 (underlying!435 thiss!992)))))))

(assert (= (and d!37937 res!60932) b!125886))

(assert (= (and b!125886 res!60931) b!125887))

(assert (= (and b!125887 res!60934) b!125888))

(assert (= (and b!125888 res!60933) b!125889))

(assert (=> d!37937 m!144673))

(declare-fun m!146893 () Bool)

(assert (=> b!125888 m!146893))

(assert (=> b!125887 m!146893))

(assert (=> d!37467 d!37937))

(declare-fun b!125890 () Bool)

(declare-fun e!82248 () Unit!3878)

(declare-fun Unit!3933 () Unit!3878)

(assert (=> b!125890 (= e!82248 Unit!3933)))

(declare-fun b!125891 () Bool)

(declare-fun e!82239 () ListLongMap!1681)

(declare-fun call!13502 () ListLongMap!1681)

(assert (=> b!125891 (= e!82239 call!13502)))

(declare-fun bm!13498 () Bool)

(declare-fun call!13507 () ListLongMap!1681)

(declare-fun call!13504 () ListLongMap!1681)

(assert (=> bm!13498 (= call!13507 call!13504)))

(declare-fun b!125892 () Bool)

(declare-fun e!82237 () Bool)

(assert (=> b!125892 (= e!82237 (validKeyInArray!0 (select (arr!2218 (_keys!4493 (_2!1291 lt!64127))) #b00000000000000000000000000000000)))))

(declare-fun b!125893 () Bool)

(declare-fun e!82240 () Bool)

(declare-fun e!82242 () Bool)

(assert (=> b!125893 (= e!82240 e!82242)))

(declare-fun res!60942 () Bool)

(declare-fun call!13503 () Bool)

(assert (=> b!125893 (= res!60942 call!13503)))

(assert (=> b!125893 (=> (not res!60942) (not e!82242))))

(declare-fun b!125894 () Bool)

(declare-fun e!82247 () Bool)

(declare-fun lt!64984 () ListLongMap!1681)

(assert (=> b!125894 (= e!82247 (= (apply!110 lt!64984 (select (arr!2218 (_keys!4493 (_2!1291 lt!64127))) #b00000000000000000000000000000000)) (get!1445 (select (arr!2219 (_values!2747 (_2!1291 lt!64127))) #b00000000000000000000000000000000) (dynLambda!414 (defaultEntry!2764 (_2!1291 lt!64127)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!125894 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2482 (_values!2747 (_2!1291 lt!64127)))))))

(assert (=> b!125894 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 (_2!1291 lt!64127)))))))

(declare-fun b!125895 () Bool)

(assert (=> b!125895 (= e!82242 (= (apply!110 lt!64984 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2629 (_2!1291 lt!64127))))))

(declare-fun b!125896 () Bool)

(assert (=> b!125896 (= e!82239 call!13507)))

(declare-fun b!125897 () Bool)

(declare-fun e!82244 () ListLongMap!1681)

(assert (=> b!125897 (= e!82244 call!13502)))

(declare-fun bm!13499 () Bool)

(declare-fun call!13501 () ListLongMap!1681)

(assert (=> bm!13499 (= call!13504 call!13501)))

(declare-fun b!125898 () Bool)

(declare-fun res!60939 () Bool)

(declare-fun e!82245 () Bool)

(assert (=> b!125898 (=> (not res!60939) (not e!82245))))

(declare-fun e!82246 () Bool)

(assert (=> b!125898 (= res!60939 e!82246)))

(declare-fun res!60943 () Bool)

(assert (=> b!125898 (=> res!60943 e!82246)))

(declare-fun e!82243 () Bool)

(assert (=> b!125898 (= res!60943 (not e!82243))))

(declare-fun res!60936 () Bool)

(assert (=> b!125898 (=> (not res!60936) (not e!82243))))

(assert (=> b!125898 (= res!60936 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 (_2!1291 lt!64127)))))))

(declare-fun d!37939 () Bool)

(assert (=> d!37939 e!82245))

(declare-fun res!60940 () Bool)

(assert (=> d!37939 (=> (not res!60940) (not e!82245))))

(assert (=> d!37939 (= res!60940 (or (bvsge #b00000000000000000000000000000000 (size!2481 (_keys!4493 (_2!1291 lt!64127)))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 (_2!1291 lt!64127)))))))))

(declare-fun lt!64976 () ListLongMap!1681)

(assert (=> d!37939 (= lt!64984 lt!64976)))

(declare-fun lt!64988 () Unit!3878)

(assert (=> d!37939 (= lt!64988 e!82248)))

(declare-fun c!22996 () Bool)

(assert (=> d!37939 (= c!22996 e!82237)))

(declare-fun res!60938 () Bool)

(assert (=> d!37939 (=> (not res!60938) (not e!82237))))

(assert (=> d!37939 (= res!60938 (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 (_2!1291 lt!64127)))))))

(declare-fun e!82236 () ListLongMap!1681)

(assert (=> d!37939 (= lt!64976 e!82236)))

(declare-fun c!22997 () Bool)

(assert (=> d!37939 (= c!22997 (and (not (= (bvand (extraKeys!2549 (_2!1291 lt!64127)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2549 (_2!1291 lt!64127)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!37939 (validMask!0 (mask!7010 (_2!1291 lt!64127)))))

(assert (=> d!37939 (= (getCurrentListMap!528 (_keys!4493 (_2!1291 lt!64127)) (_values!2747 (_2!1291 lt!64127)) (mask!7010 (_2!1291 lt!64127)) (extraKeys!2549 (_2!1291 lt!64127)) (zeroValue!2629 (_2!1291 lt!64127)) (minValue!2629 (_2!1291 lt!64127)) #b00000000000000000000000000000000 (defaultEntry!2764 (_2!1291 lt!64127))) lt!64984)))

(declare-fun b!125899 () Bool)

(assert (=> b!125899 (= e!82240 (not call!13503))))

(declare-fun b!125900 () Bool)

(assert (=> b!125900 (= e!82246 e!82247)))

(declare-fun res!60941 () Bool)

(assert (=> b!125900 (=> (not res!60941) (not e!82247))))

(assert (=> b!125900 (= res!60941 (contains!873 lt!64984 (select (arr!2218 (_keys!4493 (_2!1291 lt!64127))) #b00000000000000000000000000000000)))))

(assert (=> b!125900 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2481 (_keys!4493 (_2!1291 lt!64127)))))))

(declare-fun bm!13500 () Bool)

(declare-fun call!13506 () ListLongMap!1681)

(declare-fun c!22999 () Bool)

(assert (=> bm!13500 (= call!13506 (+!164 (ite c!22997 call!13501 (ite c!22999 call!13504 call!13507)) (ite (or c!22997 c!22999) (tuple2!2561 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2629 (_2!1291 lt!64127))) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (_2!1291 lt!64127))))))))

(declare-fun b!125901 () Bool)

(declare-fun e!82238 () Bool)

(assert (=> b!125901 (= e!82238 (= (apply!110 lt!64984 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2629 (_2!1291 lt!64127))))))

(declare-fun b!125902 () Bool)

(assert (=> b!125902 (= e!82236 (+!164 call!13506 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2629 (_2!1291 lt!64127)))))))

(declare-fun b!125903 () Bool)

(assert (=> b!125903 (= e!82243 (validKeyInArray!0 (select (arr!2218 (_keys!4493 (_2!1291 lt!64127))) #b00000000000000000000000000000000)))))

(declare-fun b!125904 () Bool)

(declare-fun c!22998 () Bool)

(assert (=> b!125904 (= c!22998 (and (not (= (bvand (extraKeys!2549 (_2!1291 lt!64127)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2549 (_2!1291 lt!64127)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!125904 (= e!82244 e!82239)))

(declare-fun bm!13501 () Bool)

(declare-fun call!13505 () Bool)

(assert (=> bm!13501 (= call!13505 (contains!873 lt!64984 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!125905 () Bool)

(declare-fun e!82241 () Bool)

(assert (=> b!125905 (= e!82241 (not call!13505))))

(declare-fun b!125906 () Bool)

(assert (=> b!125906 (= e!82245 e!82240)))

(declare-fun c!23000 () Bool)

(assert (=> b!125906 (= c!23000 (not (= (bvand (extraKeys!2549 (_2!1291 lt!64127)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!13502 () Bool)

(assert (=> bm!13502 (= call!13501 (getCurrentListMapNoExtraKeys!131 (_keys!4493 (_2!1291 lt!64127)) (_values!2747 (_2!1291 lt!64127)) (mask!7010 (_2!1291 lt!64127)) (extraKeys!2549 (_2!1291 lt!64127)) (zeroValue!2629 (_2!1291 lt!64127)) (minValue!2629 (_2!1291 lt!64127)) #b00000000000000000000000000000000 (defaultEntry!2764 (_2!1291 lt!64127))))))

(declare-fun b!125907 () Bool)

(assert (=> b!125907 (= e!82236 e!82244)))

(assert (=> b!125907 (= c!22999 (and (not (= (bvand (extraKeys!2549 (_2!1291 lt!64127)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2549 (_2!1291 lt!64127)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!125908 () Bool)

(assert (=> b!125908 (= e!82241 e!82238)))

(declare-fun res!60937 () Bool)

(assert (=> b!125908 (= res!60937 call!13505)))

(assert (=> b!125908 (=> (not res!60937) (not e!82238))))

(declare-fun b!125909 () Bool)

(declare-fun res!60935 () Bool)

(assert (=> b!125909 (=> (not res!60935) (not e!82245))))

(assert (=> b!125909 (= res!60935 e!82241)))

(declare-fun c!22995 () Bool)

(assert (=> b!125909 (= c!22995 (not (= (bvand (extraKeys!2549 (_2!1291 lt!64127)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13503 () Bool)

(assert (=> bm!13503 (= call!13502 call!13506)))

(declare-fun b!125910 () Bool)

(declare-fun lt!64974 () Unit!3878)

(assert (=> b!125910 (= e!82248 lt!64974)))

(declare-fun lt!64977 () ListLongMap!1681)

(assert (=> b!125910 (= lt!64977 (getCurrentListMapNoExtraKeys!131 (_keys!4493 (_2!1291 lt!64127)) (_values!2747 (_2!1291 lt!64127)) (mask!7010 (_2!1291 lt!64127)) (extraKeys!2549 (_2!1291 lt!64127)) (zeroValue!2629 (_2!1291 lt!64127)) (minValue!2629 (_2!1291 lt!64127)) #b00000000000000000000000000000000 (defaultEntry!2764 (_2!1291 lt!64127))))))

(declare-fun lt!64978 () (_ BitVec 64))

(assert (=> b!125910 (= lt!64978 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64990 () (_ BitVec 64))

(assert (=> b!125910 (= lt!64990 (select (arr!2218 (_keys!4493 (_2!1291 lt!64127))) #b00000000000000000000000000000000))))

(declare-fun lt!64987 () Unit!3878)

(assert (=> b!125910 (= lt!64987 (addStillContains!86 lt!64977 lt!64978 (zeroValue!2629 (_2!1291 lt!64127)) lt!64990))))

(assert (=> b!125910 (contains!873 (+!164 lt!64977 (tuple2!2561 lt!64978 (zeroValue!2629 (_2!1291 lt!64127)))) lt!64990)))

(declare-fun lt!64989 () Unit!3878)

(assert (=> b!125910 (= lt!64989 lt!64987)))

(declare-fun lt!64991 () ListLongMap!1681)

(assert (=> b!125910 (= lt!64991 (getCurrentListMapNoExtraKeys!131 (_keys!4493 (_2!1291 lt!64127)) (_values!2747 (_2!1291 lt!64127)) (mask!7010 (_2!1291 lt!64127)) (extraKeys!2549 (_2!1291 lt!64127)) (zeroValue!2629 (_2!1291 lt!64127)) (minValue!2629 (_2!1291 lt!64127)) #b00000000000000000000000000000000 (defaultEntry!2764 (_2!1291 lt!64127))))))

(declare-fun lt!64982 () (_ BitVec 64))

(assert (=> b!125910 (= lt!64982 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64981 () (_ BitVec 64))

(assert (=> b!125910 (= lt!64981 (select (arr!2218 (_keys!4493 (_2!1291 lt!64127))) #b00000000000000000000000000000000))))

(declare-fun lt!64985 () Unit!3878)

(assert (=> b!125910 (= lt!64985 (addApplyDifferent!86 lt!64991 lt!64982 (minValue!2629 (_2!1291 lt!64127)) lt!64981))))

(assert (=> b!125910 (= (apply!110 (+!164 lt!64991 (tuple2!2561 lt!64982 (minValue!2629 (_2!1291 lt!64127)))) lt!64981) (apply!110 lt!64991 lt!64981))))

(declare-fun lt!64994 () Unit!3878)

(assert (=> b!125910 (= lt!64994 lt!64985)))

(declare-fun lt!64983 () ListLongMap!1681)

(assert (=> b!125910 (= lt!64983 (getCurrentListMapNoExtraKeys!131 (_keys!4493 (_2!1291 lt!64127)) (_values!2747 (_2!1291 lt!64127)) (mask!7010 (_2!1291 lt!64127)) (extraKeys!2549 (_2!1291 lt!64127)) (zeroValue!2629 (_2!1291 lt!64127)) (minValue!2629 (_2!1291 lt!64127)) #b00000000000000000000000000000000 (defaultEntry!2764 (_2!1291 lt!64127))))))

(declare-fun lt!64992 () (_ BitVec 64))

(assert (=> b!125910 (= lt!64992 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64979 () (_ BitVec 64))

(assert (=> b!125910 (= lt!64979 (select (arr!2218 (_keys!4493 (_2!1291 lt!64127))) #b00000000000000000000000000000000))))

(declare-fun lt!64975 () Unit!3878)

(assert (=> b!125910 (= lt!64975 (addApplyDifferent!86 lt!64983 lt!64992 (zeroValue!2629 (_2!1291 lt!64127)) lt!64979))))

(assert (=> b!125910 (= (apply!110 (+!164 lt!64983 (tuple2!2561 lt!64992 (zeroValue!2629 (_2!1291 lt!64127)))) lt!64979) (apply!110 lt!64983 lt!64979))))

(declare-fun lt!64993 () Unit!3878)

(assert (=> b!125910 (= lt!64993 lt!64975)))

(declare-fun lt!64995 () ListLongMap!1681)

(assert (=> b!125910 (= lt!64995 (getCurrentListMapNoExtraKeys!131 (_keys!4493 (_2!1291 lt!64127)) (_values!2747 (_2!1291 lt!64127)) (mask!7010 (_2!1291 lt!64127)) (extraKeys!2549 (_2!1291 lt!64127)) (zeroValue!2629 (_2!1291 lt!64127)) (minValue!2629 (_2!1291 lt!64127)) #b00000000000000000000000000000000 (defaultEntry!2764 (_2!1291 lt!64127))))))

(declare-fun lt!64986 () (_ BitVec 64))

(assert (=> b!125910 (= lt!64986 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!64980 () (_ BitVec 64))

(assert (=> b!125910 (= lt!64980 (select (arr!2218 (_keys!4493 (_2!1291 lt!64127))) #b00000000000000000000000000000000))))

(assert (=> b!125910 (= lt!64974 (addApplyDifferent!86 lt!64995 lt!64986 (minValue!2629 (_2!1291 lt!64127)) lt!64980))))

(assert (=> b!125910 (= (apply!110 (+!164 lt!64995 (tuple2!2561 lt!64986 (minValue!2629 (_2!1291 lt!64127)))) lt!64980) (apply!110 lt!64995 lt!64980))))

(declare-fun bm!13504 () Bool)

(assert (=> bm!13504 (= call!13503 (contains!873 lt!64984 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!37939 c!22997) b!125902))

(assert (= (and d!37939 (not c!22997)) b!125907))

(assert (= (and b!125907 c!22999) b!125897))

(assert (= (and b!125907 (not c!22999)) b!125904))

(assert (= (and b!125904 c!22998) b!125891))

(assert (= (and b!125904 (not c!22998)) b!125896))

(assert (= (or b!125891 b!125896) bm!13498))

(assert (= (or b!125897 bm!13498) bm!13499))

(assert (= (or b!125897 b!125891) bm!13503))

(assert (= (or b!125902 bm!13499) bm!13502))

(assert (= (or b!125902 bm!13503) bm!13500))

(assert (= (and d!37939 res!60938) b!125892))

(assert (= (and d!37939 c!22996) b!125910))

(assert (= (and d!37939 (not c!22996)) b!125890))

(assert (= (and d!37939 res!60940) b!125898))

(assert (= (and b!125898 res!60936) b!125903))

(assert (= (and b!125898 (not res!60943)) b!125900))

(assert (= (and b!125900 res!60941) b!125894))

(assert (= (and b!125898 res!60939) b!125909))

(assert (= (and b!125909 c!22995) b!125908))

(assert (= (and b!125909 (not c!22995)) b!125905))

(assert (= (and b!125908 res!60937) b!125901))

(assert (= (or b!125908 b!125905) bm!13501))

(assert (= (and b!125909 res!60935) b!125906))

(assert (= (and b!125906 c!23000) b!125893))

(assert (= (and b!125906 (not c!23000)) b!125899))

(assert (= (and b!125893 res!60942) b!125895))

(assert (= (or b!125893 b!125899) bm!13504))

(declare-fun b_lambda!5547 () Bool)

(assert (=> (not b_lambda!5547) (not b!125894)))

(declare-fun t!6066 () Bool)

(declare-fun tb!2313 () Bool)

(assert (=> (and b!124522 (= (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) (defaultEntry!2764 (_2!1291 lt!64127))) t!6066) tb!2313))

(declare-fun result!3835 () Bool)

(assert (=> tb!2313 (= result!3835 tp_is_empty!2835)))

(assert (=> b!125894 t!6066))

(declare-fun b_and!7761 () Bool)

(assert (= b_and!7757 (and (=> t!6066 result!3835) b_and!7761)))

(declare-fun t!6068 () Bool)

(declare-fun tb!2315 () Bool)

(assert (=> (and b!124506 (= (defaultEntry!2764 newMap!16) (defaultEntry!2764 (_2!1291 lt!64127))) t!6068) tb!2315))

(declare-fun result!3837 () Bool)

(assert (= result!3837 result!3835))

(assert (=> b!125894 t!6068))

(declare-fun b_and!7763 () Bool)

(assert (= b_and!7759 (and (=> t!6068 result!3837) b_and!7763)))

(declare-fun m!146895 () Bool)

(assert (=> b!125902 m!146895))

(declare-fun m!146897 () Bool)

(assert (=> bm!13504 m!146897))

(assert (=> b!125892 m!145635))

(assert (=> b!125892 m!145635))

(assert (=> b!125892 m!145637))

(declare-fun m!146899 () Bool)

(assert (=> bm!13500 m!146899))

(declare-fun m!146901 () Bool)

(assert (=> b!125895 m!146901))

(assert (=> d!37939 m!146435))

(declare-fun m!146903 () Bool)

(assert (=> bm!13502 m!146903))

(declare-fun m!146905 () Bool)

(assert (=> b!125901 m!146905))

(declare-fun m!146907 () Bool)

(assert (=> b!125894 m!146907))

(declare-fun m!146909 () Bool)

(assert (=> b!125894 m!146909))

(declare-fun m!146911 () Bool)

(assert (=> b!125894 m!146911))

(assert (=> b!125894 m!145635))

(declare-fun m!146913 () Bool)

(assert (=> b!125894 m!146913))

(assert (=> b!125894 m!146909))

(assert (=> b!125894 m!146907))

(assert (=> b!125894 m!145635))

(declare-fun m!146915 () Bool)

(assert (=> bm!13501 m!146915))

(declare-fun m!146917 () Bool)

(assert (=> b!125910 m!146917))

(declare-fun m!146919 () Bool)

(assert (=> b!125910 m!146919))

(declare-fun m!146921 () Bool)

(assert (=> b!125910 m!146921))

(declare-fun m!146923 () Bool)

(assert (=> b!125910 m!146923))

(declare-fun m!146925 () Bool)

(assert (=> b!125910 m!146925))

(declare-fun m!146927 () Bool)

(assert (=> b!125910 m!146927))

(assert (=> b!125910 m!146919))

(declare-fun m!146929 () Bool)

(assert (=> b!125910 m!146929))

(assert (=> b!125910 m!146921))

(assert (=> b!125910 m!146927))

(declare-fun m!146931 () Bool)

(assert (=> b!125910 m!146931))

(declare-fun m!146933 () Bool)

(assert (=> b!125910 m!146933))

(declare-fun m!146935 () Bool)

(assert (=> b!125910 m!146935))

(assert (=> b!125910 m!145635))

(declare-fun m!146937 () Bool)

(assert (=> b!125910 m!146937))

(declare-fun m!146939 () Bool)

(assert (=> b!125910 m!146939))

(assert (=> b!125910 m!146903))

(assert (=> b!125910 m!146917))

(declare-fun m!146941 () Bool)

(assert (=> b!125910 m!146941))

(declare-fun m!146943 () Bool)

(assert (=> b!125910 m!146943))

(declare-fun m!146945 () Bool)

(assert (=> b!125910 m!146945))

(assert (=> b!125900 m!145635))

(assert (=> b!125900 m!145635))

(declare-fun m!146947 () Bool)

(assert (=> b!125900 m!146947))

(assert (=> b!125903 m!145635))

(assert (=> b!125903 m!145635))

(assert (=> b!125903 m!145637))

(assert (=> d!37417 d!37939))

(declare-fun d!37941 () Bool)

(assert (=> d!37941 (= (get!1448 (getValueByKey!165 (toList!856 lt!64194) lt!64184)) (v!3110 (getValueByKey!165 (toList!856 lt!64194) lt!64184)))))

(assert (=> d!37367 d!37941))

(declare-fun b!125911 () Bool)

(declare-fun e!82249 () Option!171)

(assert (=> b!125911 (= e!82249 (Some!170 (_2!1290 (h!2313 (toList!856 lt!64194)))))))

(declare-fun b!125914 () Bool)

(declare-fun e!82250 () Option!171)

(assert (=> b!125914 (= e!82250 None!169)))

(declare-fun b!125912 () Bool)

(assert (=> b!125912 (= e!82249 e!82250)))

(declare-fun c!23002 () Bool)

(assert (=> b!125912 (= c!23002 (and ((_ is Cons!1712) (toList!856 lt!64194)) (not (= (_1!1290 (h!2313 (toList!856 lt!64194))) lt!64184))))))

(declare-fun b!125913 () Bool)

(assert (=> b!125913 (= e!82250 (getValueByKey!165 (t!6055 (toList!856 lt!64194)) lt!64184))))

(declare-fun d!37943 () Bool)

(declare-fun c!23001 () Bool)

(assert (=> d!37943 (= c!23001 (and ((_ is Cons!1712) (toList!856 lt!64194)) (= (_1!1290 (h!2313 (toList!856 lt!64194))) lt!64184)))))

(assert (=> d!37943 (= (getValueByKey!165 (toList!856 lt!64194) lt!64184) e!82249)))

(assert (= (and d!37943 c!23001) b!125911))

(assert (= (and d!37943 (not c!23001)) b!125912))

(assert (= (and b!125912 c!23002) b!125913))

(assert (= (and b!125912 (not c!23002)) b!125914))

(declare-fun m!146949 () Bool)

(assert (=> b!125913 m!146949))

(assert (=> d!37367 d!37943))

(assert (=> b!125080 d!37469))

(assert (=> d!37437 d!37441))

(declare-fun d!37945 () Bool)

(declare-fun e!82262 () Bool)

(assert (=> d!37945 e!82262))

(declare-fun c!23008 () Bool)

(declare-fun lt!64998 () SeekEntryResult!279)

(assert (=> d!37945 (= c!23008 ((_ is MissingZero!279) lt!64998))))

(assert (=> d!37945 (= lt!64998 (seekEntryOrOpen!0 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (_keys!4493 newMap!16) (mask!7010 newMap!16)))))

(assert (=> d!37945 true))

(declare-fun _$34!944 () Unit!3878)

(assert (=> d!37945 (= (choose!761 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) (defaultEntry!2764 newMap!16)) _$34!944)))

(declare-fun b!125931 () Bool)

(declare-fun res!60952 () Bool)

(declare-fun e!82259 () Bool)

(assert (=> b!125931 (=> (not res!60952) (not e!82259))))

(declare-fun call!13512 () Bool)

(assert (=> b!125931 (= res!60952 call!13512)))

(declare-fun e!82261 () Bool)

(assert (=> b!125931 (= e!82261 e!82259)))

(declare-fun b!125932 () Bool)

(declare-fun res!60953 () Bool)

(assert (=> b!125932 (= res!60953 (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3270 lt!64998)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!82260 () Bool)

(assert (=> b!125932 (=> (not res!60953) (not e!82260))))

(declare-fun b!125933 () Bool)

(declare-fun call!13513 () Bool)

(assert (=> b!125933 (= e!82259 (not call!13513))))

(declare-fun bm!13509 () Bool)

(assert (=> bm!13509 (= call!13513 (arrayContainsKey!0 (_keys!4493 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!125934 () Bool)

(assert (=> b!125934 (= e!82260 (not call!13513))))

(declare-fun b!125935 () Bool)

(assert (=> b!125935 (= e!82261 ((_ is Undefined!279) lt!64998))))

(declare-fun b!125936 () Bool)

(declare-fun res!60954 () Bool)

(assert (=> b!125936 (=> (not res!60954) (not e!82259))))

(assert (=> b!125936 (= res!60954 (= (select (arr!2218 (_keys!4493 newMap!16)) (index!3273 lt!64998)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!13510 () Bool)

(assert (=> bm!13510 (= call!13512 (inRange!0 (ite c!23008 (index!3270 lt!64998) (index!3273 lt!64998)) (mask!7010 newMap!16)))))

(declare-fun b!125937 () Bool)

(assert (=> b!125937 (= e!82262 e!82261)))

(declare-fun c!23007 () Bool)

(assert (=> b!125937 (= c!23007 ((_ is MissingVacant!279) lt!64998))))

(declare-fun b!125938 () Bool)

(assert (=> b!125938 (= e!82262 e!82260)))

(declare-fun res!60955 () Bool)

(assert (=> b!125938 (= res!60955 call!13512)))

(assert (=> b!125938 (=> (not res!60955) (not e!82260))))

(assert (= (and d!37945 c!23008) b!125938))

(assert (= (and d!37945 (not c!23008)) b!125937))

(assert (= (and b!125938 res!60955) b!125932))

(assert (= (and b!125932 res!60953) b!125934))

(assert (= (and b!125937 c!23007) b!125931))

(assert (= (and b!125937 (not c!23007)) b!125935))

(assert (= (and b!125931 res!60952) b!125936))

(assert (= (and b!125936 res!60954) b!125933))

(assert (= (or b!125938 b!125931) bm!13510))

(assert (= (or b!125934 b!125933) bm!13509))

(declare-fun m!146951 () Bool)

(assert (=> bm!13510 m!146951))

(declare-fun m!146953 () Bool)

(assert (=> b!125936 m!146953))

(assert (=> bm!13509 m!144661))

(assert (=> bm!13509 m!144801))

(declare-fun m!146955 () Bool)

(assert (=> b!125932 m!146955))

(assert (=> d!37945 m!144661))

(assert (=> d!37945 m!144785))

(assert (=> d!37437 d!37945))

(assert (=> d!37437 d!37483))

(declare-fun d!37947 () Bool)

(assert (=> d!37947 (isDefined!119 (getValueByKey!165 (toList!856 call!13330) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun lt!64999 () Unit!3878)

(assert (=> d!37947 (= lt!64999 (choose!763 (toList!856 call!13330) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(declare-fun e!82263 () Bool)

(assert (=> d!37947 e!82263))

(declare-fun res!60956 () Bool)

(assert (=> d!37947 (=> (not res!60956) (not e!82263))))

(assert (=> d!37947 (= res!60956 (isStrictlySorted!311 (toList!856 call!13330)))))

(assert (=> d!37947 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 call!13330) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)) lt!64999)))

(declare-fun b!125939 () Bool)

(assert (=> b!125939 (= e!82263 (containsKey!169 (toList!856 call!13330) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355)))))

(assert (= (and d!37947 res!60956) b!125939))

(assert (=> d!37947 m!144661))

(assert (=> d!37947 m!145229))

(assert (=> d!37947 m!145229))

(assert (=> d!37947 m!145231))

(assert (=> d!37947 m!144661))

(declare-fun m!146957 () Bool)

(assert (=> d!37947 m!146957))

(declare-fun m!146959 () Bool)

(assert (=> d!37947 m!146959))

(assert (=> b!125939 m!144661))

(assert (=> b!125939 m!145225))

(assert (=> b!125033 d!37947))

(assert (=> b!125033 d!37731))

(assert (=> b!125033 d!37733))

(declare-fun d!37949 () Bool)

(declare-fun res!60957 () Bool)

(declare-fun e!82264 () Bool)

(assert (=> d!37949 (=> res!60957 e!82264)))

(assert (=> d!37949 (= res!60957 (and ((_ is Cons!1712) (toList!856 call!13333)) (= (_1!1290 (h!2313 (toList!856 call!13333))) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122)))))))

(assert (=> d!37949 (= (containsKey!169 (toList!856 call!13333) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122))) e!82264)))

(declare-fun b!125940 () Bool)

(declare-fun e!82265 () Bool)

(assert (=> b!125940 (= e!82264 e!82265)))

(declare-fun res!60958 () Bool)

(assert (=> b!125940 (=> (not res!60958) (not e!82265))))

(assert (=> b!125940 (= res!60958 (and (or (not ((_ is Cons!1712) (toList!856 call!13333))) (bvsle (_1!1290 (h!2313 (toList!856 call!13333))) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122)))) ((_ is Cons!1712) (toList!856 call!13333)) (bvslt (_1!1290 (h!2313 (toList!856 call!13333))) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122)))))))

(declare-fun b!125941 () Bool)

(assert (=> b!125941 (= e!82265 (containsKey!169 (t!6055 (toList!856 call!13333)) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122))))))

(assert (= (and d!37949 (not res!60957)) b!125940))

(assert (= (and b!125940 res!60958) b!125941))

(assert (=> b!125941 m!144767))

(declare-fun m!146961 () Bool)

(assert (=> b!125941 m!146961))

(assert (=> d!37411 d!37949))

(declare-fun d!37951 () Bool)

(declare-fun e!82266 () Bool)

(assert (=> d!37951 e!82266))

(declare-fun res!60959 () Bool)

(assert (=> d!37951 (=> (not res!60959) (not e!82266))))

(declare-fun lt!65000 () ListLongMap!1681)

(assert (=> d!37951 (= res!60959 (contains!873 lt!65000 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))))))

(declare-fun lt!65002 () List!1716)

(assert (=> d!37951 (= lt!65000 (ListLongMap!1682 lt!65002))))

(declare-fun lt!65003 () Unit!3878)

(declare-fun lt!65001 () Unit!3878)

(assert (=> d!37951 (= lt!65003 lt!65001)))

(assert (=> d!37951 (= (getValueByKey!165 lt!65002 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))) (Some!170 (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))))))

(assert (=> d!37951 (= lt!65001 (lemmaContainsTupThenGetReturnValue!82 lt!65002 (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))) (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))))))

(assert (=> d!37951 (= lt!65002 (insertStrictlySorted!84 (toList!856 call!13413) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))) (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))))))

(assert (=> d!37951 (= (+!164 call!13413 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))) lt!65000)))

(declare-fun b!125942 () Bool)

(declare-fun res!60960 () Bool)

(assert (=> b!125942 (=> (not res!60960) (not e!82266))))

(assert (=> b!125942 (= res!60960 (= (getValueByKey!165 (toList!856 lt!65000) (_1!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16))))) (Some!170 (_2!1290 (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))))))))

(declare-fun b!125943 () Bool)

(assert (=> b!125943 (= e!82266 (contains!874 (toList!856 lt!65000) (tuple2!2561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!22675 (ite c!22669 (minValue!2629 newMap!16) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) from!355) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2629 newMap!16)))))))

(assert (= (and d!37951 res!60959) b!125942))

(assert (= (and b!125942 res!60960) b!125943))

(declare-fun m!146963 () Bool)

(assert (=> d!37951 m!146963))

(declare-fun m!146965 () Bool)

(assert (=> d!37951 m!146965))

(declare-fun m!146967 () Bool)

(assert (=> d!37951 m!146967))

(declare-fun m!146969 () Bool)

(assert (=> d!37951 m!146969))

(declare-fun m!146971 () Bool)

(assert (=> b!125942 m!146971))

(declare-fun m!146973 () Bool)

(assert (=> b!125943 m!146973))

(assert (=> b!125109 d!37951))

(declare-fun d!37953 () Bool)

(declare-fun res!60961 () Bool)

(declare-fun e!82267 () Bool)

(assert (=> d!37953 (=> res!60961 e!82267)))

(assert (=> d!37953 (= res!60961 (and ((_ is Cons!1712) (toList!856 lt!64187)) (= (_1!1290 (h!2313 (toList!856 lt!64187))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (=> d!37953 (= (containsKey!169 (toList!856 lt!64187) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) e!82267)))

(declare-fun b!125944 () Bool)

(declare-fun e!82268 () Bool)

(assert (=> b!125944 (= e!82267 e!82268)))

(declare-fun res!60962 () Bool)

(assert (=> b!125944 (=> (not res!60962) (not e!82268))))

(assert (=> b!125944 (= res!60962 (and (or (not ((_ is Cons!1712) (toList!856 lt!64187))) (bvsle (_1!1290 (h!2313 (toList!856 lt!64187))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))) ((_ is Cons!1712) (toList!856 lt!64187)) (bvslt (_1!1290 (h!2313 (toList!856 lt!64187))) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun b!125945 () Bool)

(assert (=> b!125945 (= e!82268 (containsKey!169 (t!6055 (toList!856 lt!64187)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (= (and d!37953 (not res!60961)) b!125944))

(assert (= (and b!125944 res!60962) b!125945))

(assert (=> b!125945 m!144811))

(declare-fun m!146975 () Bool)

(assert (=> b!125945 m!146975))

(assert (=> d!37429 d!37953))

(declare-fun d!37955 () Bool)

(assert (=> d!37955 (contains!873 (getCurrentListMap!528 (_keys!4493 newMap!16) lt!64129 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) (select (arr!2218 (_keys!4493 newMap!16)) (index!3271 lt!64122)))))

(assert (=> d!37955 true))

(declare-fun _$16!139 () Unit!3878)

(assert (=> d!37955 (= (choose!759 (_keys!4493 newMap!16) lt!64129 (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (index!3271 lt!64122) (defaultEntry!2764 newMap!16)) _$16!139)))

(declare-fun bs!5215 () Bool)

(assert (= bs!5215 d!37955))

(assert (=> bs!5215 m!145031))

(assert (=> bs!5215 m!144767))

(assert (=> bs!5215 m!145031))

(assert (=> bs!5215 m!144767))

(assert (=> bs!5215 m!145033))

(assert (=> d!37413 d!37955))

(assert (=> d!37413 d!37483))

(declare-fun d!37957 () Bool)

(assert (=> d!37957 (not (contains!873 (+!164 lt!64244 (tuple2!2561 lt!64239 lt!64243)) lt!64242))))

(declare-fun lt!65006 () Unit!3878)

(declare-fun choose!766 (ListLongMap!1681 (_ BitVec 64) V!3427 (_ BitVec 64)) Unit!3878)

(assert (=> d!37957 (= lt!65006 (choose!766 lt!64244 lt!64239 lt!64243 lt!64242))))

(declare-fun e!82271 () Bool)

(assert (=> d!37957 e!82271))

(declare-fun res!60965 () Bool)

(assert (=> d!37957 (=> (not res!60965) (not e!82271))))

(assert (=> d!37957 (= res!60965 (not (contains!873 lt!64244 lt!64242)))))

(assert (=> d!37957 (= (addStillNotContains!57 lt!64244 lt!64239 lt!64243 lt!64242) lt!65006)))

(declare-fun b!125949 () Bool)

(assert (=> b!125949 (= e!82271 (not (= lt!64239 lt!64242)))))

(assert (= (and d!37957 res!60965) b!125949))

(assert (=> d!37957 m!144947))

(assert (=> d!37957 m!144947))

(assert (=> d!37957 m!144949))

(declare-fun m!146977 () Bool)

(assert (=> d!37957 m!146977))

(declare-fun m!146979 () Bool)

(assert (=> d!37957 m!146979))

(assert (=> b!124854 d!37957))

(assert (=> b!124854 d!37401))

(declare-fun d!37959 () Bool)

(declare-fun e!82272 () Bool)

(assert (=> d!37959 e!82272))

(declare-fun res!60966 () Bool)

(assert (=> d!37959 (=> (not res!60966) (not e!82272))))

(declare-fun lt!65007 () ListLongMap!1681)

(assert (=> d!37959 (= res!60966 (contains!873 lt!65007 (_1!1290 (tuple2!2561 lt!64239 lt!64243))))))

(declare-fun lt!65009 () List!1716)

(assert (=> d!37959 (= lt!65007 (ListLongMap!1682 lt!65009))))

(declare-fun lt!65010 () Unit!3878)

(declare-fun lt!65008 () Unit!3878)

(assert (=> d!37959 (= lt!65010 lt!65008)))

(assert (=> d!37959 (= (getValueByKey!165 lt!65009 (_1!1290 (tuple2!2561 lt!64239 lt!64243))) (Some!170 (_2!1290 (tuple2!2561 lt!64239 lt!64243))))))

(assert (=> d!37959 (= lt!65008 (lemmaContainsTupThenGetReturnValue!82 lt!65009 (_1!1290 (tuple2!2561 lt!64239 lt!64243)) (_2!1290 (tuple2!2561 lt!64239 lt!64243))))))

(assert (=> d!37959 (= lt!65009 (insertStrictlySorted!84 (toList!856 lt!64244) (_1!1290 (tuple2!2561 lt!64239 lt!64243)) (_2!1290 (tuple2!2561 lt!64239 lt!64243))))))

(assert (=> d!37959 (= (+!164 lt!64244 (tuple2!2561 lt!64239 lt!64243)) lt!65007)))

(declare-fun b!125950 () Bool)

(declare-fun res!60967 () Bool)

(assert (=> b!125950 (=> (not res!60967) (not e!82272))))

(assert (=> b!125950 (= res!60967 (= (getValueByKey!165 (toList!856 lt!65007) (_1!1290 (tuple2!2561 lt!64239 lt!64243))) (Some!170 (_2!1290 (tuple2!2561 lt!64239 lt!64243)))))))

(declare-fun b!125951 () Bool)

(assert (=> b!125951 (= e!82272 (contains!874 (toList!856 lt!65007) (tuple2!2561 lt!64239 lt!64243)))))

(assert (= (and d!37959 res!60966) b!125950))

(assert (= (and b!125950 res!60967) b!125951))

(declare-fun m!146981 () Bool)

(assert (=> d!37959 m!146981))

(declare-fun m!146983 () Bool)

(assert (=> d!37959 m!146983))

(declare-fun m!146985 () Bool)

(assert (=> d!37959 m!146985))

(declare-fun m!146987 () Bool)

(assert (=> d!37959 m!146987))

(declare-fun m!146989 () Bool)

(assert (=> b!125950 m!146989))

(declare-fun m!146991 () Bool)

(assert (=> b!125951 m!146991))

(assert (=> b!124854 d!37959))

(declare-fun d!37961 () Bool)

(declare-fun e!82274 () Bool)

(assert (=> d!37961 e!82274))

(declare-fun res!60968 () Bool)

(assert (=> d!37961 (=> res!60968 e!82274)))

(declare-fun lt!65011 () Bool)

(assert (=> d!37961 (= res!60968 (not lt!65011))))

(declare-fun lt!65014 () Bool)

(assert (=> d!37961 (= lt!65011 lt!65014)))

(declare-fun lt!65012 () Unit!3878)

(declare-fun e!82273 () Unit!3878)

(assert (=> d!37961 (= lt!65012 e!82273)))

(declare-fun c!23009 () Bool)

(assert (=> d!37961 (= c!23009 lt!65014)))

(assert (=> d!37961 (= lt!65014 (containsKey!169 (toList!856 (+!164 lt!64244 (tuple2!2561 lt!64239 lt!64243))) lt!64242))))

(assert (=> d!37961 (= (contains!873 (+!164 lt!64244 (tuple2!2561 lt!64239 lt!64243)) lt!64242) lt!65011)))

(declare-fun b!125952 () Bool)

(declare-fun lt!65013 () Unit!3878)

(assert (=> b!125952 (= e!82273 lt!65013)))

(assert (=> b!125952 (= lt!65013 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 (+!164 lt!64244 (tuple2!2561 lt!64239 lt!64243))) lt!64242))))

(assert (=> b!125952 (isDefined!119 (getValueByKey!165 (toList!856 (+!164 lt!64244 (tuple2!2561 lt!64239 lt!64243))) lt!64242))))

(declare-fun b!125953 () Bool)

(declare-fun Unit!3934 () Unit!3878)

(assert (=> b!125953 (= e!82273 Unit!3934)))

(declare-fun b!125954 () Bool)

(assert (=> b!125954 (= e!82274 (isDefined!119 (getValueByKey!165 (toList!856 (+!164 lt!64244 (tuple2!2561 lt!64239 lt!64243))) lt!64242)))))

(assert (= (and d!37961 c!23009) b!125952))

(assert (= (and d!37961 (not c!23009)) b!125953))

(assert (= (and d!37961 (not res!60968)) b!125954))

(declare-fun m!146993 () Bool)

(assert (=> d!37961 m!146993))

(declare-fun m!146995 () Bool)

(assert (=> b!125952 m!146995))

(declare-fun m!146997 () Bool)

(assert (=> b!125952 m!146997))

(assert (=> b!125952 m!146997))

(declare-fun m!146999 () Bool)

(assert (=> b!125952 m!146999))

(assert (=> b!125954 m!146997))

(assert (=> b!125954 m!146997))

(assert (=> b!125954 m!146999))

(assert (=> b!124854 d!37961))

(declare-fun d!37963 () Bool)

(declare-fun e!82275 () Bool)

(assert (=> d!37963 e!82275))

(declare-fun res!60969 () Bool)

(assert (=> d!37963 (=> (not res!60969) (not e!82275))))

(declare-fun lt!65015 () ListLongMap!1681)

(assert (=> d!37963 (= res!60969 (contains!873 lt!65015 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!65017 () List!1716)

(assert (=> d!37963 (= lt!65015 (ListLongMap!1682 lt!65017))))

(declare-fun lt!65018 () Unit!3878)

(declare-fun lt!65016 () Unit!3878)

(assert (=> d!37963 (= lt!65018 lt!65016)))

(assert (=> d!37963 (= (getValueByKey!165 lt!65017 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!170 (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37963 (= lt!65016 (lemmaContainsTupThenGetReturnValue!82 lt!65017 (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37963 (= lt!65017 (insertStrictlySorted!84 (toList!856 call!13366) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37963 (= (+!164 call!13366 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!65015)))

(declare-fun b!125955 () Bool)

(declare-fun res!60970 () Bool)

(assert (=> b!125955 (=> (not res!60970) (not e!82275))))

(assert (=> b!125955 (= res!60970 (= (getValueByKey!165 (toList!856 lt!65015) (_1!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!170 (_2!1290 (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!125956 () Bool)

(assert (=> b!125956 (= e!82275 (contains!874 (toList!856 lt!65015) (tuple2!2561 (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1445 (select (arr!2219 (_values!2747 (v!3106 (underlying!435 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!414 (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!37963 res!60969) b!125955))

(assert (= (and b!125955 res!60970) b!125956))

(declare-fun m!147001 () Bool)

(assert (=> d!37963 m!147001))

(declare-fun m!147003 () Bool)

(assert (=> d!37963 m!147003))

(declare-fun m!147005 () Bool)

(assert (=> d!37963 m!147005))

(declare-fun m!147007 () Bool)

(assert (=> d!37963 m!147007))

(declare-fun m!147009 () Bool)

(assert (=> b!125955 m!147009))

(declare-fun m!147011 () Bool)

(assert (=> b!125956 m!147011))

(assert (=> b!124854 d!37963))

(assert (=> b!124950 d!37551))

(assert (=> b!124873 d!37723))

(assert (=> b!124873 d!37621))

(declare-fun d!37965 () Bool)

(declare-fun e!82277 () Bool)

(assert (=> d!37965 e!82277))

(declare-fun res!60971 () Bool)

(assert (=> d!37965 (=> res!60971 e!82277)))

(declare-fun lt!65019 () Bool)

(assert (=> d!37965 (= res!60971 (not lt!65019))))

(declare-fun lt!65022 () Bool)

(assert (=> d!37965 (= lt!65019 lt!65022)))

(declare-fun lt!65020 () Unit!3878)

(declare-fun e!82276 () Unit!3878)

(assert (=> d!37965 (= lt!65020 e!82276)))

(declare-fun c!23010 () Bool)

(assert (=> d!37965 (= c!23010 lt!65022)))

(assert (=> d!37965 (= lt!65022 (containsKey!169 (toList!856 lt!64215) (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> d!37965 (= (contains!873 lt!64215 (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!65019)))

(declare-fun b!125957 () Bool)

(declare-fun lt!65021 () Unit!3878)

(assert (=> b!125957 (= e!82276 lt!65021)))

(assert (=> b!125957 (= lt!65021 (lemmaContainsKeyImpliesGetValueByKeyDefined!118 (toList!856 lt!64215) (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (=> b!125957 (isDefined!119 (getValueByKey!165 (toList!856 lt!64215) (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun b!125958 () Bool)

(declare-fun Unit!3935 () Unit!3878)

(assert (=> b!125958 (= e!82276 Unit!3935)))

(declare-fun b!125959 () Bool)

(assert (=> b!125959 (= e!82277 (isDefined!119 (getValueByKey!165 (toList!856 lt!64215) (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (= (and d!37965 c!23010) b!125957))

(assert (= (and d!37965 (not c!23010)) b!125958))

(assert (= (and d!37965 (not res!60971)) b!125959))

(declare-fun m!147013 () Bool)

(assert (=> d!37965 m!147013))

(declare-fun m!147015 () Bool)

(assert (=> b!125957 m!147015))

(assert (=> b!125957 m!144915))

(assert (=> b!125957 m!144915))

(declare-fun m!147017 () Bool)

(assert (=> b!125957 m!147017))

(assert (=> b!125959 m!144915))

(assert (=> b!125959 m!144915))

(assert (=> b!125959 m!147017))

(assert (=> d!37373 d!37965))

(declare-fun b!125960 () Bool)

(declare-fun e!82278 () Option!171)

(assert (=> b!125960 (= e!82278 (Some!170 (_2!1290 (h!2313 lt!64217))))))

(declare-fun b!125963 () Bool)

(declare-fun e!82279 () Option!171)

(assert (=> b!125963 (= e!82279 None!169)))

(declare-fun b!125961 () Bool)

(assert (=> b!125961 (= e!82278 e!82279)))

(declare-fun c!23012 () Bool)

(assert (=> b!125961 (= c!23012 (and ((_ is Cons!1712) lt!64217) (not (= (_1!1290 (h!2313 lt!64217)) (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(declare-fun b!125962 () Bool)

(assert (=> b!125962 (= e!82279 (getValueByKey!165 (t!6055 lt!64217) (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun d!37967 () Bool)

(declare-fun c!23011 () Bool)

(assert (=> d!37967 (= c!23011 (and ((_ is Cons!1712) lt!64217) (= (_1!1290 (h!2313 lt!64217)) (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> d!37967 (= (getValueByKey!165 lt!64217 (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) e!82278)))

(assert (= (and d!37967 c!23011) b!125960))

(assert (= (and d!37967 (not c!23011)) b!125961))

(assert (= (and b!125961 c!23012) b!125962))

(assert (= (and b!125961 (not c!23012)) b!125963))

(declare-fun m!147019 () Bool)

(assert (=> b!125962 m!147019))

(assert (=> d!37373 d!37967))

(declare-fun d!37969 () Bool)

(assert (=> d!37969 (= (getValueByKey!165 lt!64217 (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) (Some!170 (_2!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun lt!65023 () Unit!3878)

(assert (=> d!37969 (= lt!65023 (choose!764 lt!64217 (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun e!82280 () Bool)

(assert (=> d!37969 e!82280))

(declare-fun res!60972 () Bool)

(assert (=> d!37969 (=> (not res!60972) (not e!82280))))

(assert (=> d!37969 (= res!60972 (isStrictlySorted!311 lt!64217))))

(assert (=> d!37969 (= (lemmaContainsTupThenGetReturnValue!82 lt!64217 (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!65023)))

(declare-fun b!125964 () Bool)

(declare-fun res!60973 () Bool)

(assert (=> b!125964 (=> (not res!60973) (not e!82280))))

(assert (=> b!125964 (= res!60973 (containsKey!169 lt!64217 (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun b!125965 () Bool)

(assert (=> b!125965 (= e!82280 (contains!874 lt!64217 (tuple2!2561 (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (= (and d!37969 res!60972) b!125964))

(assert (= (and b!125964 res!60973) b!125965))

(assert (=> d!37969 m!144909))

(declare-fun m!147021 () Bool)

(assert (=> d!37969 m!147021))

(declare-fun m!147023 () Bool)

(assert (=> d!37969 m!147023))

(declare-fun m!147025 () Bool)

(assert (=> b!125964 m!147025))

(declare-fun m!147027 () Bool)

(assert (=> b!125965 m!147027))

(assert (=> d!37373 d!37969))

(declare-fun b!125966 () Bool)

(declare-fun e!82283 () List!1716)

(declare-fun call!13515 () List!1716)

(assert (=> b!125966 (= e!82283 call!13515)))

(declare-fun c!23013 () Bool)

(declare-fun call!13514 () List!1716)

(declare-fun bm!13511 () Bool)

(declare-fun e!82282 () List!1716)

(assert (=> bm!13511 (= call!13514 ($colon$colon!87 e!82282 (ite c!23013 (h!2313 (toList!856 lt!64194)) (tuple2!2561 (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(declare-fun c!23014 () Bool)

(assert (=> bm!13511 (= c!23014 c!23013)))

(declare-fun d!37971 () Bool)

(declare-fun e!82284 () Bool)

(assert (=> d!37971 e!82284))

(declare-fun res!60974 () Bool)

(assert (=> d!37971 (=> (not res!60974) (not e!82284))))

(declare-fun lt!65024 () List!1716)

(assert (=> d!37971 (= res!60974 (isStrictlySorted!311 lt!65024))))

(declare-fun e!82281 () List!1716)

(assert (=> d!37971 (= lt!65024 e!82281)))

(assert (=> d!37971 (= c!23013 (and ((_ is Cons!1712) (toList!856 lt!64194)) (bvslt (_1!1290 (h!2313 (toList!856 lt!64194))) (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> d!37971 (isStrictlySorted!311 (toList!856 lt!64194))))

(assert (=> d!37971 (= (insertStrictlySorted!84 (toList!856 lt!64194) (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))) lt!65024)))

(declare-fun b!125967 () Bool)

(assert (=> b!125967 (= e!82284 (contains!874 lt!65024 (tuple2!2561 (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun b!125968 () Bool)

(assert (=> b!125968 (= e!82283 call!13515)))

(declare-fun b!125969 () Bool)

(declare-fun c!23015 () Bool)

(declare-fun c!23016 () Bool)

(assert (=> b!125969 (= e!82282 (ite c!23015 (t!6055 (toList!856 lt!64194)) (ite c!23016 (Cons!1712 (h!2313 (toList!856 lt!64194)) (t!6055 (toList!856 lt!64194))) Nil!1713)))))

(declare-fun b!125970 () Bool)

(declare-fun e!82285 () List!1716)

(declare-fun call!13516 () List!1716)

(assert (=> b!125970 (= e!82285 call!13516)))

(declare-fun b!125971 () Bool)

(assert (=> b!125971 (= c!23016 (and ((_ is Cons!1712) (toList!856 lt!64194)) (bvsgt (_1!1290 (h!2313 (toList!856 lt!64194))) (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> b!125971 (= e!82285 e!82283)))

(declare-fun b!125972 () Bool)

(declare-fun res!60975 () Bool)

(assert (=> b!125972 (=> (not res!60975) (not e!82284))))

(assert (=> b!125972 (= res!60975 (containsKey!169 lt!65024 (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun b!125973 () Bool)

(assert (=> b!125973 (= e!82281 call!13514)))

(declare-fun b!125974 () Bool)

(assert (=> b!125974 (= e!82281 e!82285)))

(assert (=> b!125974 (= c!23015 (and ((_ is Cons!1712) (toList!856 lt!64194)) (= (_1!1290 (h!2313 (toList!856 lt!64194))) (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(declare-fun bm!13512 () Bool)

(assert (=> bm!13512 (= call!13515 call!13516)))

(declare-fun bm!13513 () Bool)

(assert (=> bm!13513 (= call!13516 call!13514)))

(declare-fun b!125975 () Bool)

(assert (=> b!125975 (= e!82282 (insertStrictlySorted!84 (t!6055 (toList!856 lt!64194)) (_1!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992))))) (_2!1290 (tuple2!2561 lt!64185 (minValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(assert (= (and d!37971 c!23013) b!125973))

(assert (= (and d!37971 (not c!23013)) b!125974))

(assert (= (and b!125974 c!23015) b!125970))

(assert (= (and b!125974 (not c!23015)) b!125971))

(assert (= (and b!125971 c!23016) b!125966))

(assert (= (and b!125971 (not c!23016)) b!125968))

(assert (= (or b!125966 b!125968) bm!13512))

(assert (= (or b!125970 bm!13512) bm!13513))

(assert (= (or b!125973 bm!13513) bm!13511))

(assert (= (and bm!13511 c!23014) b!125975))

(assert (= (and bm!13511 (not c!23014)) b!125969))

(assert (= (and d!37971 res!60974) b!125972))

(assert (= (and b!125972 res!60975) b!125967))

(declare-fun m!147029 () Bool)

(assert (=> bm!13511 m!147029))

(declare-fun m!147031 () Bool)

(assert (=> d!37971 m!147031))

(declare-fun m!147033 () Bool)

(assert (=> d!37971 m!147033))

(declare-fun m!147035 () Bool)

(assert (=> b!125975 m!147035))

(declare-fun m!147037 () Bool)

(assert (=> b!125967 m!147037))

(declare-fun m!147039 () Bool)

(assert (=> b!125972 m!147039))

(assert (=> d!37373 d!37971))

(declare-fun d!37973 () Bool)

(assert (=> d!37973 (contains!873 (getCurrentListMap!528 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355))))

(declare-fun lt!65027 () Unit!3878)

(declare-fun choose!767 (array!4684 array!4686 (_ BitVec 32) (_ BitVec 32) V!3427 V!3427 (_ BitVec 64) (_ BitVec 32) Int) Unit!3878)

(assert (=> d!37973 (= lt!65027 (choose!767 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)))))

(assert (=> d!37973 (validMask!0 (mask!7010 newMap!16))))

(assert (=> d!37973 (= (lemmaArrayContainsKeyThenInListMap!36 (_keys!4493 newMap!16) (_values!2747 newMap!16) (mask!7010 newMap!16) (extraKeys!2549 newMap!16) (zeroValue!2629 newMap!16) (minValue!2629 newMap!16) (select (arr!2218 (_keys!4493 (v!3106 (underlying!435 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2764 newMap!16)) lt!65027)))

(declare-fun bs!5216 () Bool)

(assert (= bs!5216 d!37973))

(assert (=> bs!5216 m!144781))

(assert (=> bs!5216 m!144781))

(assert (=> bs!5216 m!144661))

(assert (=> bs!5216 m!145299))

(assert (=> bs!5216 m!144661))

(declare-fun m!147041 () Bool)

(assert (=> bs!5216 m!147041))

(assert (=> bs!5216 m!145009))

(assert (=> b!125082 d!37973))

(assert (=> b!125082 d!37911))

(assert (=> b!125082 d!37419))

(assert (=> b!124934 d!37845))

(assert (=> b!124857 d!37449))

(declare-fun b!125976 () Bool)

(declare-fun e!82286 () Option!171)

(assert (=> b!125976 (= e!82286 (Some!170 (_2!1290 (h!2313 (toList!856 lt!64207)))))))

(declare-fun b!125979 () Bool)

(declare-fun e!82287 () Option!171)

(assert (=> b!125979 (= e!82287 None!169)))

(declare-fun b!125977 () Bool)

(assert (=> b!125977 (= e!82286 e!82287)))

(declare-fun c!23018 () Bool)

(assert (=> b!125977 (= c!23018 (and ((_ is Cons!1712) (toList!856 lt!64207)) (not (= (_1!1290 (h!2313 (toList!856 lt!64207))) (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))))

(declare-fun b!125978 () Bool)

(assert (=> b!125978 (= e!82287 (getValueByKey!165 (t!6055 (toList!856 lt!64207)) (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))))))

(declare-fun d!37975 () Bool)

(declare-fun c!23017 () Bool)

(assert (=> d!37975 (= c!23017 (and ((_ is Cons!1712) (toList!856 lt!64207)) (= (_1!1290 (h!2313 (toList!856 lt!64207))) (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992))))))))))

(assert (=> d!37975 (= (getValueByKey!165 (toList!856 lt!64207) (_1!1290 (tuple2!2561 lt!64181 (zeroValue!2629 (v!3106 (underlying!435 thiss!992)))))) e!82286)))

(assert (= (and d!37975 c!23017) b!125976))

(assert (= (and d!37975 (not c!23017)) b!125977))

(assert (= (and b!125977 c!23018) b!125978))

(assert (= (and b!125977 (not c!23018)) b!125979))

(declare-fun m!147043 () Bool)

(assert (=> b!125978 m!147043))

(assert (=> b!124817 d!37975))

(declare-fun mapNonEmpty!4487 () Bool)

(declare-fun mapRes!4487 () Bool)

(declare-fun tp!10931 () Bool)

(declare-fun e!82289 () Bool)

(assert (=> mapNonEmpty!4487 (= mapRes!4487 (and tp!10931 e!82289))))

(declare-fun mapValue!4487 () ValueCell!1074)

(declare-fun mapKey!4487 () (_ BitVec 32))

(declare-fun mapRest!4487 () (Array (_ BitVec 32) ValueCell!1074))

(assert (=> mapNonEmpty!4487 (= mapRest!4485 (store mapRest!4487 mapKey!4487 mapValue!4487))))

(declare-fun mapIsEmpty!4487 () Bool)

(assert (=> mapIsEmpty!4487 mapRes!4487))

(declare-fun b!125980 () Bool)

(assert (=> b!125980 (= e!82289 tp_is_empty!2835)))

(declare-fun condMapEmpty!4487 () Bool)

(declare-fun mapDefault!4487 () ValueCell!1074)

(assert (=> mapNonEmpty!4485 (= condMapEmpty!4487 (= mapRest!4485 ((as const (Array (_ BitVec 32) ValueCell!1074)) mapDefault!4487)))))

(declare-fun e!82288 () Bool)

(assert (=> mapNonEmpty!4485 (= tp!10929 (and e!82288 mapRes!4487))))

(declare-fun b!125981 () Bool)

(assert (=> b!125981 (= e!82288 tp_is_empty!2835)))

(assert (= (and mapNonEmpty!4485 condMapEmpty!4487) mapIsEmpty!4487))

(assert (= (and mapNonEmpty!4485 (not condMapEmpty!4487)) mapNonEmpty!4487))

(assert (= (and mapNonEmpty!4487 ((_ is ValueCellFull!1074) mapValue!4487)) b!125980))

(assert (= (and mapNonEmpty!4485 ((_ is ValueCellFull!1074) mapDefault!4487)) b!125981))

(declare-fun m!147045 () Bool)

(assert (=> mapNonEmpty!4487 m!147045))

(declare-fun mapNonEmpty!4488 () Bool)

(declare-fun mapRes!4488 () Bool)

(declare-fun tp!10932 () Bool)

(declare-fun e!82291 () Bool)

(assert (=> mapNonEmpty!4488 (= mapRes!4488 (and tp!10932 e!82291))))

(declare-fun mapValue!4488 () ValueCell!1074)

(declare-fun mapKey!4488 () (_ BitVec 32))

(declare-fun mapRest!4488 () (Array (_ BitVec 32) ValueCell!1074))

(assert (=> mapNonEmpty!4488 (= mapRest!4486 (store mapRest!4488 mapKey!4488 mapValue!4488))))

(declare-fun mapIsEmpty!4488 () Bool)

(assert (=> mapIsEmpty!4488 mapRes!4488))

(declare-fun b!125982 () Bool)

(assert (=> b!125982 (= e!82291 tp_is_empty!2835)))

(declare-fun condMapEmpty!4488 () Bool)

(declare-fun mapDefault!4488 () ValueCell!1074)

(assert (=> mapNonEmpty!4486 (= condMapEmpty!4488 (= mapRest!4486 ((as const (Array (_ BitVec 32) ValueCell!1074)) mapDefault!4488)))))

(declare-fun e!82290 () Bool)

(assert (=> mapNonEmpty!4486 (= tp!10930 (and e!82290 mapRes!4488))))

(declare-fun b!125983 () Bool)

(assert (=> b!125983 (= e!82290 tp_is_empty!2835)))

(assert (= (and mapNonEmpty!4486 condMapEmpty!4488) mapIsEmpty!4488))

(assert (= (and mapNonEmpty!4486 (not condMapEmpty!4488)) mapNonEmpty!4488))

(assert (= (and mapNonEmpty!4488 ((_ is ValueCellFull!1074) mapValue!4488)) b!125982))

(assert (= (and mapNonEmpty!4486 ((_ is ValueCellFull!1074) mapDefault!4488)) b!125983))

(declare-fun m!147047 () Bool)

(assert (=> mapNonEmpty!4488 m!147047))

(declare-fun b_lambda!5549 () Bool)

(assert (= b_lambda!5525 (or (and b!124522 b_free!2837 (= (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) (defaultEntry!2764 newMap!16))) (and b!124506 b_free!2839) b_lambda!5549)))

(declare-fun b_lambda!5551 () Bool)

(assert (= b_lambda!5543 (or (and b!124522 b_free!2837 (= (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) (defaultEntry!2764 newMap!16))) (and b!124506 b_free!2839) b_lambda!5551)))

(declare-fun b_lambda!5553 () Bool)

(assert (= b_lambda!5541 (or (and b!124522 b_free!2837 (= (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) (defaultEntry!2764 newMap!16))) (and b!124506 b_free!2839) b_lambda!5553)))

(declare-fun b_lambda!5555 () Bool)

(assert (= b_lambda!5533 (or (and b!124522 b_free!2837) (and b!124506 b_free!2839 (= (defaultEntry!2764 newMap!16) (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))))) b_lambda!5555)))

(declare-fun b_lambda!5557 () Bool)

(assert (= b_lambda!5545 (or (and b!124522 b_free!2837 (= (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) (defaultEntry!2764 newMap!16))) (and b!124506 b_free!2839) b_lambda!5557)))

(declare-fun b_lambda!5559 () Bool)

(assert (= b_lambda!5535 (or (and b!124522 b_free!2837) (and b!124506 b_free!2839 (= (defaultEntry!2764 newMap!16) (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))))) b_lambda!5559)))

(declare-fun b_lambda!5561 () Bool)

(assert (= b_lambda!5521 (or (and b!124522 b_free!2837 (= (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) (defaultEntry!2764 newMap!16))) (and b!124506 b_free!2839) b_lambda!5561)))

(declare-fun b_lambda!5563 () Bool)

(assert (= b_lambda!5539 (or (and b!124522 b_free!2837 (= (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) (defaultEntry!2764 newMap!16))) (and b!124506 b_free!2839) b_lambda!5563)))

(declare-fun b_lambda!5565 () Bool)

(assert (= b_lambda!5519 (or (and b!124522 b_free!2837 (= (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) (defaultEntry!2764 newMap!16))) (and b!124506 b_free!2839) b_lambda!5565)))

(declare-fun b_lambda!5567 () Bool)

(assert (= b_lambda!5531 (or (and b!124522 b_free!2837 (= (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) (defaultEntry!2764 newMap!16))) (and b!124506 b_free!2839) b_lambda!5567)))

(declare-fun b_lambda!5569 () Bool)

(assert (= b_lambda!5537 (or (and b!124522 b_free!2837 (= (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) (defaultEntry!2764 newMap!16))) (and b!124506 b_free!2839) b_lambda!5569)))

(declare-fun b_lambda!5571 () Bool)

(assert (= b_lambda!5527 (or (and b!124522 b_free!2837 (= (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) (defaultEntry!2764 newMap!16))) (and b!124506 b_free!2839) b_lambda!5571)))

(declare-fun b_lambda!5573 () Bool)

(assert (= b_lambda!5523 (or (and b!124522 b_free!2837 (= (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) (defaultEntry!2764 newMap!16))) (and b!124506 b_free!2839) b_lambda!5573)))

(declare-fun b_lambda!5575 () Bool)

(assert (= b_lambda!5529 (or (and b!124522 b_free!2837 (= (defaultEntry!2764 (v!3106 (underlying!435 thiss!992))) (defaultEntry!2764 newMap!16))) (and b!124506 b_free!2839) b_lambda!5575)))

(check-sat (not b!125902) (not d!37567) (not b!125519) (not b!125281) (not b!125574) (not b!125235) (not b!125325) (not d!37709) (not d!37491) (not b!125771) (not d!37775) (not d!37577) (not b!125824) (not b!125449) (not bm!13502) (not d!37665) (not b!125448) (not b!125415) (not d!37787) (not d!37727) (not b!125762) (not b!125756) (not b!125444) (not b!125561) (not bm!13457) (not d!37961) (not b!125438) (not bm!13436) (not b!125823) (not b!125758) (not b!125611) (not b!125975) (not b!125616) (not b!125550) (not b!125838) (not b!125951) (not b!125478) (not d!37705) (not d!37895) (not b!125373) (not d!37687) (not d!37853) (not b!125263) (not b!125270) (not b!125206) (not b!125228) (not b_lambda!5561) (not b_lambda!5497) (not d!37843) (not b!125517) (not b!125630) (not d!37695) (not b!125145) (not b!125941) (not b!125533) (not b_lambda!5563) (not b!125742) (not bm!13510) (not b!125952) (not b!125308) (not b!125668) (not d!37645) (not d!37489) (not b!125333) (not b!125279) (not b!125351) (not d!37711) (not b!125361) (not b!125776) (not b_lambda!5509) (not b!125721) (not b!125253) (not b!125887) (not b_lambda!5559) (not b!125218) (not b!125584) (not d!37859) (not d!37893) (not bm!13429) (not b!125348) (not bm!13427) (not d!37929) (not bm!13479) (not d!37765) (not d!37651) (not bm!13478) (not bm!13465) (not b!125286) (not b!125764) (not d!37525) (not bm!13420) (not b_lambda!5547) (not bm!13500) (not b!125709) (not b!125892) (not d!37871) (not d!37807) (not b!125470) (not b!125353) (not b!125455) (not b!125871) (not b!125661) (not d!37581) (not b!125664) (not b_lambda!5573) (not d!37959) (not d!37527) (not b!125570) (not d!37499) (not b!125322) (not bm!13450) (not d!37599) (not d!37631) (not b!125609) (not b!125594) (not b!125701) (not b!125957) (not d!37561) (not d!37861) (not d!37759) (not b!125722) (not b!125956) (not d!37607) (not d!37715) (not b!125317) (not b!125371) (not b!125356) (not d!37547) (not d!37647) (not b!125555) (not d!37841) (not d!37513) (not d!37873) (not b!125700) (not b_lambda!5565) (not d!37751) (not b!125844) (not b!125266) (not d!37475) (not b!125719) (not d!37579) (not b!125811) (not b_lambda!5569) (not b!125527) (not b!125421) (not b_lambda!5555) (not b!125972) (not b!125323) (not bm!13449) (not b!125541) (not b!125749) (not b!125723) (not b!125712) (not b!125268) (not b!125283) (not b!125885) (not b!125239) (not bm!13428) (not b!125180) (not d!37757) (not b!125816) (not bm!13483) (not b!125714) (not b!125514) (not d!37835) (not bm!13501) (not bm!13437) (not b!125212) (not b!125213) (not b!125608) (not d!37623) (not mapNonEmpty!4487) (not d!37701) (not b!125571) (not b!125596) (not b!125431) (not b!125150) (not b!125337) (not bm!13504) (not b!125659) (not d!37657) (not d!37763) (not b!125551) (not b_next!2839) (not d!37865) (not b!125385) (not d!37649) (not bm!13477) (not b!125233) (not b!125588) (not d!37963) (not b!125219) (not b!125707) (not mapNonEmpty!4488) (not d!37493) (not b!125795) (not b!125428) (not b!125147) (not d!37939) (not bm!13482) (not b!125803) (not b!125245) (not b!125650) (not b!125466) (not b!125210) (not b!125601) (not b!125453) (not b!125731) (not d!37673) (not b!125539) (not d!37689) (not d!37945) (not b!125879) (not b!125942) (not bm!13425) (not b!125445) (not b!125801) (not b!125430) (not d!37591) (not b!125699) (not b!125275) (not d!37587) (not bm!13454) (not b!125836) (not bm!13489) (not b!125825) (not b!125867) (not bm!13468) (not b!125462) (not d!37815) (not b!125950) (not bm!13419) (not d!37931) (not b!125573) (not b!125642) (not b!125651) (not d!37837) (not b!125434) (not b!125457) (not b!125833) (not bm!13446) (not b_lambda!5571) (not b_next!2837) (not b!125726) (not b!125559) (not d!37515) (not b!125715) (not b!125802) (not b!125658) (not b!125320) (not b!125888) (not d!37725) (not b!125468) (not d!37863) (not d!37917) (not d!37569) (not d!37571) (not b!125603) (not b!125346) (not b_lambda!5553) (not d!37973) (not b!125447) (not bm!13424) (not d!37593) (not b!125939) (not b!125870) (not b!125197) (not b!125221) (not d!37735) (not b!125967) (not d!37937) (not b!125364) (not b!125846) (not b!125724) (not b!125663) (not b!125688) (not b!125727) (not b!125962) (not d!37881) (not d!37721) (not b!125553) (not d!37755) (not d!37639) (not b!125822) (not b!125895) (not b!125680) (not bm!13439) (not d!37811) (not b!125619) (not bm!13511) (not b_lambda!5551) (not b!125425) (not d!37739) (not b!125459) (not d!37743) (not d!37565) (not b_lambda!5511) (not b!125307) (not d!37857) (not d!37603) (not b!125606) (not b!125638) (not b!125752) (not b!125375) (not bm!13423) (not d!37795) (not b!125264) (not d!37501) (not b!125232) (not b!125454) (not b!125292) (not b!125191) (not b!125359) (not b!125873) (not d!37629) (not d!37855) (not b!125509) (not d!37583) (not b!125189) (not b!125342) (not d!37693) (not b_lambda!5513) (not b!125628) (not bm!13495) (not d!37595) (not b!125284) (not b!125277) (not d!37927) (not b!125774) (not b!125242) (not b!125469) (not bm!13473) (not d!37833) (not d!37801) (not b!125575) (not d!37655) (not d!37487) (not b!125458) (not b!125965) (not d!37789) (not b!125582) (not d!37679) (not b!125903) (not b!125696) (not b!125349) (not b!125568) (not b!125417) (not d!37753) (not b!125530) (not b!125344) (not d!37747) (not b!125536) (not b!125220) (not d!37545) (not b!125412) (not d!37741) (not b!125155) (not b_lambda!5493) (not b!125340) (not b!125316) (not d!37723) (not b!125362) (not bm!13484) (not b!125683) (not d!37661) (not d!37509) (not d!37947) (not d!37877) (not b!125298) (not b!125282) (not d!37505) (not d!37681) (not b_lambda!5557) (not bm!13434) (not b!125289) tp_is_empty!2835 (not bm!13491) (not d!37539) (not d!37923) (not d!37643) (not bm!13509) (not d!37703) (not d!37827) (not b!125686) (not b!125578) (not b!125148) (not d!37951) (not b!125338) (not b_lambda!5567) (not b_lambda!5549) (not b!125733) (not b!125331) (not b!125384) (not b!125685) b_and!7761 (not b!125676) (not bm!13433) (not d!37899) (not b!125522) (not d!37503) (not b!125290) (not b!125877) (not b!125728) (not d!37523) (not d!37549) (not d!37585) (not b!125778) (not b!125910) (not b!125754) (not d!37537) (not d!37957) (not bm!13462) (not b!125301) (not b!125207) (not d!37663) (not b!125480) (not b!125639) (not b!125861) (not d!37803) (not b!125230) (not d!37867) (not d!37669) (not b!125585) (not b!125591) (not b!125151) (not d!37697) (not b!125295) (not d!37779) (not d!37831) (not b!125959) (not b!125635) (not d!37589) (not b!125876) (not bm!13493) (not b!125442) (not b!125273) (not b!125511) (not b!125205) (not b!125152) (not b!125564) (not b!125506) (not b!125247) (not b!125955) (not b!125697) (not b!125793) (not d!37731) (not d!37671) (not b!125804) (not b!125199) (not b_lambda!5515) (not b!125490) (not b!125788) (not d!37809) (not bm!13438) (not d!37611) (not b!125625) (not b!125693) (not b!125672) (not b!125766) (not b!125546) (not b!125945) (not b!125341) (not bm!13460) (not b_lambda!5575) (not b!125446) (not b!125704) (not b!125293) (not b!125278) (not b!125520) (not b!125790) (not b!125236) (not d!37839) (not b!125647) (not bm!13412) (not b!125190) (not d!37781) (not d!37885) (not b!125549) (not b!125627) (not d!37969) (not b!125913) (not b!125641) (not b!125556) (not b!125328) (not b!125734) (not b!125678) (not b!125378) (not b!125472) (not b!125739) (not b!125599) (not b!125248) (not d!37851) (not b!125254) (not d!37479) (not d!37511) (not d!37793) (not b!125894) (not b!125345) (not b!125703) (not b!125577) (not b!125488) (not b!125187) (not d!37749) (not b!125964) (not d!37905) (not d!37869) (not b!125330) (not b!125978) (not d!37955) (not d!37477) (not b!125717) (not bm!13496) (not b!125834) (not b!125360) b_and!7763 (not b!125864) (not d!37613) (not b!125300) (not b!125579) (not d!37919) (not bm!13494) (not d!37659) (not b!125318) (not d!37521) (not d!37573) (not d!37907) (not b!125432) (not b!125593) (not d!37797) (not b!125814) (not d!37921) (not b!125622) (not b!125418) (not d!37575) (not d!37597) (not d!37889) (not b!125711) (not b!125900) (not d!37555) (not b!125557) (not bm!13497) (not b!125840) (not b!125832) (not b!125862) (not d!37925) (not d!37517) (not d!37653) (not b!125531) (not b!125329) (not b!125796) (not b!125741) (not bm!13461) (not b!125583) (not b!125665) (not bm!13475) (not b_lambda!5517) (not b!125321) (not b!125407) (not d!37667) (not b!125158) (not b!125512) (not b!125954) (not d!37911) (not d!37817) (not b!125241) (not b!125485) (not b!125720) (not b!125332) (not b!125817) (not bm!13451) (not d!37553) (not bm!13474) (not bm!13432) (not b!125306) (not b!125477) (not b!125343) (not d!37879) (not d!37965) (not b!125851) (not bm!13417) (not b!125782) (not bm!13486) (not b!125538) (not b!125644) (not b!125419) (not b!125620) (not b!125350) (not d!37745) (not b!125475) (not d!37767) (not b!125943) (not b!125256) (not d!37683) (not b!125881) (not d!37761) (not bm!13415) (not b!125367) (not b!125309) (not d!37971) (not d!37785) (not b!125740) (not bm!13490) (not b!125901) (not b!125255) (not d!37625) (not bm!13416) (not b!125153))
(check-sat b_and!7761 b_and!7763 (not b_next!2837) (not b_next!2839))

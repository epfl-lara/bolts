; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14436 () Bool)

(assert start!14436)

(declare-fun b!136026 () Bool)

(declare-fun b_free!2933 () Bool)

(declare-fun b_next!2933 () Bool)

(assert (=> b!136026 (= b_free!2933 (not b_next!2933))))

(declare-fun tp!11251 () Bool)

(declare-fun b_and!8425 () Bool)

(assert (=> b!136026 (= tp!11251 b_and!8425)))

(declare-fun b!136025 () Bool)

(declare-fun b_free!2935 () Bool)

(declare-fun b_next!2935 () Bool)

(assert (=> b!136025 (= b_free!2935 (not b_next!2935))))

(declare-fun tp!11254 () Bool)

(declare-fun b_and!8427 () Bool)

(assert (=> b!136025 (= tp!11254 b_and!8427)))

(declare-fun b!136018 () Bool)

(declare-fun e!88581 () Bool)

(declare-fun e!88582 () Bool)

(assert (=> b!136018 (= e!88581 e!88582)))

(declare-fun b!136019 () Bool)

(declare-fun res!65284 () Bool)

(declare-fun e!88590 () Bool)

(assert (=> b!136019 (=> (not res!65284) (not e!88590))))

(declare-datatypes ((V!3491 0))(
  ( (V!3492 (val!1486 Int)) )
))
(declare-datatypes ((array!4794 0))(
  ( (array!4795 (arr!2266 (Array (_ BitVec 32) (_ BitVec 64))) (size!2536 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1098 0))(
  ( (ValueCellFull!1098 (v!3213 V!3491)) (EmptyCell!1098) )
))
(declare-datatypes ((array!4796 0))(
  ( (array!4797 (arr!2267 (Array (_ BitVec 32) ValueCell!1098)) (size!2537 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1104 0))(
  ( (LongMapFixedSize!1105 (defaultEntry!2886 Int) (mask!7198 (_ BitVec 32)) (extraKeys!2647 (_ BitVec 32)) (zeroValue!2739 V!3491) (minValue!2739 V!3491) (_size!601 (_ BitVec 32)) (_keys!4639 array!4794) (_values!2869 array!4796) (_vacant!601 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!892 0))(
  ( (Cell!893 (v!3214 LongMapFixedSize!1104)) )
))
(declare-datatypes ((LongMap!892 0))(
  ( (LongMap!893 (underlying!457 Cell!892)) )
))
(declare-fun thiss!992 () LongMap!892)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!136019 (= res!65284 (validMask!0 (mask!7198 (v!3214 (underlying!457 thiss!992)))))))

(declare-fun b!136020 () Bool)

(declare-fun e!88592 () Bool)

(declare-fun e!88591 () Bool)

(assert (=> b!136020 (= e!88592 e!88591)))

(declare-fun res!65283 () Bool)

(assert (=> b!136020 (=> (not res!65283) (not e!88591))))

(declare-datatypes ((tuple2!2612 0))(
  ( (tuple2!2613 (_1!1316 (_ BitVec 64)) (_2!1316 V!3491)) )
))
(declare-datatypes ((List!1737 0))(
  ( (Nil!1734) (Cons!1733 (h!2339 tuple2!2612) (t!6225 List!1737)) )
))
(declare-datatypes ((ListLongMap!1709 0))(
  ( (ListLongMap!1710 (toList!870 List!1737)) )
))
(declare-fun lt!71061 () ListLongMap!1709)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lt!71059 () ListLongMap!1709)

(assert (=> b!136020 (= res!65283 (and (= lt!71061 lt!71059) (not (= (select (arr!2266 (_keys!4639 (v!3214 (underlying!457 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2266 (_keys!4639 (v!3214 (underlying!457 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!1104)

(declare-fun map!1408 (LongMapFixedSize!1104) ListLongMap!1709)

(assert (=> b!136020 (= lt!71059 (map!1408 newMap!16))))

(declare-fun getCurrentListMap!541 (array!4794 array!4796 (_ BitVec 32) (_ BitVec 32) V!3491 V!3491 (_ BitVec 32) Int) ListLongMap!1709)

(assert (=> b!136020 (= lt!71061 (getCurrentListMap!541 (_keys!4639 (v!3214 (underlying!457 thiss!992))) (_values!2869 (v!3214 (underlying!457 thiss!992))) (mask!7198 (v!3214 (underlying!457 thiss!992))) (extraKeys!2647 (v!3214 (underlying!457 thiss!992))) (zeroValue!2739 (v!3214 (underlying!457 thiss!992))) (minValue!2739 (v!3214 (underlying!457 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2886 (v!3214 (underlying!457 thiss!992)))))))

(declare-fun b!136021 () Bool)

(declare-fun res!65282 () Bool)

(assert (=> b!136021 (=> (not res!65282) (not e!88590))))

(assert (=> b!136021 (= res!65282 (and (= (size!2537 (_values!2869 (v!3214 (underlying!457 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!7198 (v!3214 (underlying!457 thiss!992))))) (= (size!2536 (_keys!4639 (v!3214 (underlying!457 thiss!992)))) (size!2537 (_values!2869 (v!3214 (underlying!457 thiss!992))))) (bvsge (mask!7198 (v!3214 (underlying!457 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!2647 (v!3214 (underlying!457 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!2647 (v!3214 (underlying!457 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!136022 () Bool)

(declare-fun e!88584 () Bool)

(declare-fun e!88583 () Bool)

(declare-fun mapRes!4672 () Bool)

(assert (=> b!136022 (= e!88584 (and e!88583 mapRes!4672))))

(declare-fun condMapEmpty!4671 () Bool)

(declare-fun mapDefault!4672 () ValueCell!1098)

(assert (=> b!136022 (= condMapEmpty!4671 (= (arr!2267 (_values!2869 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1098)) mapDefault!4672)))))

(declare-fun b!136023 () Bool)

(declare-fun res!65280 () Bool)

(assert (=> b!136023 (=> (not res!65280) (not e!88590))))

(assert (=> b!136023 (= res!65280 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2536 (_keys!4639 (v!3214 (underlying!457 thiss!992)))))))))

(declare-fun mapNonEmpty!4671 () Bool)

(declare-fun mapRes!4671 () Bool)

(declare-fun tp!11252 () Bool)

(declare-fun e!88588 () Bool)

(assert (=> mapNonEmpty!4671 (= mapRes!4671 (and tp!11252 e!88588))))

(declare-fun mapValue!4671 () ValueCell!1098)

(declare-fun mapRest!4672 () (Array (_ BitVec 32) ValueCell!1098))

(declare-fun mapKey!4672 () (_ BitVec 32))

(assert (=> mapNonEmpty!4671 (= (arr!2267 (_values!2869 (v!3214 (underlying!457 thiss!992)))) (store mapRest!4672 mapKey!4672 mapValue!4671))))

(declare-fun mapNonEmpty!4672 () Bool)

(declare-fun tp!11253 () Bool)

(declare-fun e!88585 () Bool)

(assert (=> mapNonEmpty!4672 (= mapRes!4672 (and tp!11253 e!88585))))

(declare-fun mapKey!4671 () (_ BitVec 32))

(declare-fun mapRest!4671 () (Array (_ BitVec 32) ValueCell!1098))

(declare-fun mapValue!4672 () ValueCell!1098)

(assert (=> mapNonEmpty!4672 (= (arr!2267 (_values!2869 newMap!16)) (store mapRest!4671 mapKey!4671 mapValue!4672))))

(declare-fun b!136024 () Bool)

(declare-fun tp_is_empty!2883 () Bool)

(assert (=> b!136024 (= e!88583 tp_is_empty!2883)))

(declare-fun e!88589 () Bool)

(declare-fun array_inv!1395 (array!4794) Bool)

(declare-fun array_inv!1396 (array!4796) Bool)

(assert (=> b!136025 (= e!88589 (and tp!11254 tp_is_empty!2883 (array_inv!1395 (_keys!4639 newMap!16)) (array_inv!1396 (_values!2869 newMap!16)) e!88584))))

(declare-fun e!88593 () Bool)

(assert (=> b!136026 (= e!88582 (and tp!11251 tp_is_empty!2883 (array_inv!1395 (_keys!4639 (v!3214 (underlying!457 thiss!992)))) (array_inv!1396 (_values!2869 (v!3214 (underlying!457 thiss!992)))) e!88593))))

(declare-fun b!136027 () Bool)

(assert (=> b!136027 (= e!88591 e!88590)))

(declare-fun res!65286 () Bool)

(assert (=> b!136027 (=> (not res!65286) (not e!88590))))

(declare-fun contains!899 (ListLongMap!1709 (_ BitVec 64)) Bool)

(assert (=> b!136027 (= res!65286 (contains!899 lt!71059 (select (arr!2266 (_keys!4639 (v!3214 (underlying!457 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2614 0))(
  ( (tuple2!2615 (_1!1317 Bool) (_2!1317 LongMapFixedSize!1104)) )
))
(declare-fun lt!71060 () tuple2!2614)

(declare-fun update!193 (LongMapFixedSize!1104 (_ BitVec 64) V!3491) tuple2!2614)

(declare-fun get!1494 (ValueCell!1098 V!3491) V!3491)

(declare-fun dynLambda!426 (Int (_ BitVec 64)) V!3491)

(assert (=> b!136027 (= lt!71060 (update!193 newMap!16 (select (arr!2266 (_keys!4639 (v!3214 (underlying!457 thiss!992)))) from!355) (get!1494 (select (arr!2267 (_values!2869 (v!3214 (underlying!457 thiss!992)))) from!355) (dynLambda!426 (defaultEntry!2886 (v!3214 (underlying!457 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!65277 () Bool)

(assert (=> start!14436 (=> (not res!65277) (not e!88592))))

(declare-fun valid!525 (LongMap!892) Bool)

(assert (=> start!14436 (= res!65277 (valid!525 thiss!992))))

(assert (=> start!14436 e!88592))

(declare-fun e!88587 () Bool)

(assert (=> start!14436 e!88587))

(assert (=> start!14436 true))

(assert (=> start!14436 e!88589))

(declare-fun b!136028 () Bool)

(declare-fun res!65285 () Bool)

(assert (=> b!136028 (=> (not res!65285) (not e!88592))))

(declare-fun valid!526 (LongMapFixedSize!1104) Bool)

(assert (=> b!136028 (= res!65285 (valid!526 newMap!16))))

(declare-fun b!136029 () Bool)

(declare-fun e!88586 () Bool)

(assert (=> b!136029 (= e!88586 tp_is_empty!2883)))

(declare-fun mapIsEmpty!4671 () Bool)

(assert (=> mapIsEmpty!4671 mapRes!4671))

(declare-fun mapIsEmpty!4672 () Bool)

(assert (=> mapIsEmpty!4672 mapRes!4672))

(declare-fun b!136030 () Bool)

(assert (=> b!136030 (= e!88587 e!88581)))

(declare-fun b!136031 () Bool)

(assert (=> b!136031 (= e!88590 (not (contains!899 lt!71061 (select (arr!2266 (_keys!4639 (v!3214 (underlying!457 thiss!992)))) from!355))))))

(declare-fun b!136032 () Bool)

(assert (=> b!136032 (= e!88588 tp_is_empty!2883)))

(declare-fun b!136033 () Bool)

(declare-fun res!65281 () Bool)

(assert (=> b!136033 (=> (not res!65281) (not e!88590))))

(declare-datatypes ((List!1738 0))(
  ( (Nil!1735) (Cons!1734 (h!2340 (_ BitVec 64)) (t!6226 List!1738)) )
))
(declare-fun arrayNoDuplicates!0 (array!4794 (_ BitVec 32) List!1738) Bool)

(assert (=> b!136033 (= res!65281 (arrayNoDuplicates!0 (_keys!4639 (v!3214 (underlying!457 thiss!992))) #b00000000000000000000000000000000 Nil!1735))))

(declare-fun b!136034 () Bool)

(assert (=> b!136034 (= e!88585 tp_is_empty!2883)))

(declare-fun b!136035 () Bool)

(declare-fun res!65287 () Bool)

(assert (=> b!136035 (=> (not res!65287) (not e!88592))))

(assert (=> b!136035 (= res!65287 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2536 (_keys!4639 (v!3214 (underlying!457 thiss!992)))))))))

(declare-fun b!136036 () Bool)

(declare-fun res!65279 () Bool)

(assert (=> b!136036 (=> (not res!65279) (not e!88592))))

(assert (=> b!136036 (= res!65279 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7198 newMap!16)) (_size!601 (v!3214 (underlying!457 thiss!992)))))))

(declare-fun b!136037 () Bool)

(declare-fun res!65278 () Bool)

(assert (=> b!136037 (=> (not res!65278) (not e!88590))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4794 (_ BitVec 32)) Bool)

(assert (=> b!136037 (= res!65278 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4639 (v!3214 (underlying!457 thiss!992))) (mask!7198 (v!3214 (underlying!457 thiss!992)))))))

(declare-fun b!136038 () Bool)

(assert (=> b!136038 (= e!88593 (and e!88586 mapRes!4671))))

(declare-fun condMapEmpty!4672 () Bool)

(declare-fun mapDefault!4671 () ValueCell!1098)

(assert (=> b!136038 (= condMapEmpty!4672 (= (arr!2267 (_values!2869 (v!3214 (underlying!457 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1098)) mapDefault!4671)))))

(assert (= (and start!14436 res!65277) b!136035))

(assert (= (and b!136035 res!65287) b!136028))

(assert (= (and b!136028 res!65285) b!136036))

(assert (= (and b!136036 res!65279) b!136020))

(assert (= (and b!136020 res!65283) b!136027))

(assert (= (and b!136027 res!65286) b!136019))

(assert (= (and b!136019 res!65284) b!136021))

(assert (= (and b!136021 res!65282) b!136037))

(assert (= (and b!136037 res!65278) b!136033))

(assert (= (and b!136033 res!65281) b!136023))

(assert (= (and b!136023 res!65280) b!136031))

(assert (= (and b!136038 condMapEmpty!4672) mapIsEmpty!4671))

(assert (= (and b!136038 (not condMapEmpty!4672)) mapNonEmpty!4671))

(get-info :version)

(assert (= (and mapNonEmpty!4671 ((_ is ValueCellFull!1098) mapValue!4671)) b!136032))

(assert (= (and b!136038 ((_ is ValueCellFull!1098) mapDefault!4671)) b!136029))

(assert (= b!136026 b!136038))

(assert (= b!136018 b!136026))

(assert (= b!136030 b!136018))

(assert (= start!14436 b!136030))

(assert (= (and b!136022 condMapEmpty!4671) mapIsEmpty!4672))

(assert (= (and b!136022 (not condMapEmpty!4671)) mapNonEmpty!4672))

(assert (= (and mapNonEmpty!4672 ((_ is ValueCellFull!1098) mapValue!4672)) b!136034))

(assert (= (and b!136022 ((_ is ValueCellFull!1098) mapDefault!4672)) b!136024))

(assert (= b!136025 b!136022))

(assert (= start!14436 b!136025))

(declare-fun b_lambda!6105 () Bool)

(assert (=> (not b_lambda!6105) (not b!136027)))

(declare-fun t!6222 () Bool)

(declare-fun tb!2449 () Bool)

(assert (=> (and b!136026 (= (defaultEntry!2886 (v!3214 (underlying!457 thiss!992))) (defaultEntry!2886 (v!3214 (underlying!457 thiss!992)))) t!6222) tb!2449))

(declare-fun result!4027 () Bool)

(assert (=> tb!2449 (= result!4027 tp_is_empty!2883)))

(assert (=> b!136027 t!6222))

(declare-fun b_and!8429 () Bool)

(assert (= b_and!8425 (and (=> t!6222 result!4027) b_and!8429)))

(declare-fun t!6224 () Bool)

(declare-fun tb!2451 () Bool)

(assert (=> (and b!136025 (= (defaultEntry!2886 newMap!16) (defaultEntry!2886 (v!3214 (underlying!457 thiss!992)))) t!6224) tb!2451))

(declare-fun result!4031 () Bool)

(assert (= result!4031 result!4027))

(assert (=> b!136027 t!6224))

(declare-fun b_and!8431 () Bool)

(assert (= b_and!8427 (and (=> t!6224 result!4031) b_and!8431)))

(declare-fun m!162397 () Bool)

(assert (=> b!136028 m!162397))

(declare-fun m!162399 () Bool)

(assert (=> mapNonEmpty!4672 m!162399))

(declare-fun m!162401 () Bool)

(assert (=> mapNonEmpty!4671 m!162401))

(declare-fun m!162403 () Bool)

(assert (=> b!136020 m!162403))

(declare-fun m!162405 () Bool)

(assert (=> b!136020 m!162405))

(declare-fun m!162407 () Bool)

(assert (=> b!136020 m!162407))

(declare-fun m!162409 () Bool)

(assert (=> b!136037 m!162409))

(declare-fun m!162411 () Bool)

(assert (=> start!14436 m!162411))

(declare-fun m!162413 () Bool)

(assert (=> b!136026 m!162413))

(declare-fun m!162415 () Bool)

(assert (=> b!136026 m!162415))

(declare-fun m!162417 () Bool)

(assert (=> b!136033 m!162417))

(assert (=> b!136027 m!162403))

(declare-fun m!162419 () Bool)

(assert (=> b!136027 m!162419))

(declare-fun m!162421 () Bool)

(assert (=> b!136027 m!162421))

(declare-fun m!162423 () Bool)

(assert (=> b!136027 m!162423))

(declare-fun m!162425 () Bool)

(assert (=> b!136027 m!162425))

(assert (=> b!136027 m!162403))

(assert (=> b!136027 m!162423))

(assert (=> b!136027 m!162403))

(assert (=> b!136027 m!162425))

(declare-fun m!162427 () Bool)

(assert (=> b!136027 m!162427))

(assert (=> b!136027 m!162421))

(assert (=> b!136031 m!162403))

(assert (=> b!136031 m!162403))

(declare-fun m!162429 () Bool)

(assert (=> b!136031 m!162429))

(declare-fun m!162431 () Bool)

(assert (=> b!136025 m!162431))

(declare-fun m!162433 () Bool)

(assert (=> b!136025 m!162433))

(declare-fun m!162435 () Bool)

(assert (=> b!136019 m!162435))

(check-sat (not b!136019) (not b!136025) tp_is_empty!2883 (not mapNonEmpty!4671) (not b_next!2933) (not b_next!2935) (not start!14436) b_and!8431 (not b!136037) (not b!136027) (not b_lambda!6105) (not b!136020) (not b!136031) (not mapNonEmpty!4672) b_and!8429 (not b!136026) (not b!136033) (not b!136028))
(check-sat b_and!8429 b_and!8431 (not b_next!2933) (not b_next!2935))

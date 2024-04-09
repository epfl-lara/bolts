; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12696 () Bool)

(assert start!12696)

(declare-fun b!109884 () Bool)

(declare-fun b_free!2565 () Bool)

(declare-fun b_next!2565 () Bool)

(assert (=> b!109884 (= b_free!2565 (not b_next!2565))))

(declare-fun tp!10036 () Bool)

(declare-fun b_and!6785 () Bool)

(assert (=> b!109884 (= tp!10036 b_and!6785)))

(declare-fun b!109881 () Bool)

(declare-fun b_free!2567 () Bool)

(declare-fun b_next!2567 () Bool)

(assert (=> b!109881 (= b_free!2567 (not b_next!2567))))

(declare-fun tp!10034 () Bool)

(declare-fun b_and!6787 () Bool)

(assert (=> b!109881 (= tp!10034 b_and!6787)))

(declare-fun b!109867 () Bool)

(declare-fun e!71514 () Bool)

(declare-fun tp_is_empty!2699 () Bool)

(assert (=> b!109867 (= e!71514 tp_is_empty!2699)))

(declare-fun b!109868 () Bool)

(declare-fun e!71507 () Bool)

(declare-fun e!71510 () Bool)

(assert (=> b!109868 (= e!71507 e!71510)))

(declare-fun res!54367 () Bool)

(assert (=> b!109868 (=> (not res!54367) (not e!71510))))

(declare-datatypes ((V!3245 0))(
  ( (V!3246 (val!1394 Int)) )
))
(declare-datatypes ((tuple2!2432 0))(
  ( (tuple2!2433 (_1!1226 (_ BitVec 64)) (_2!1226 V!3245)) )
))
(declare-datatypes ((List!1654 0))(
  ( (Nil!1651) (Cons!1650 (h!2249 tuple2!2432) (t!5807 List!1654)) )
))
(declare-datatypes ((ListLongMap!1597 0))(
  ( (ListLongMap!1598 (toList!814 List!1654)) )
))
(declare-fun lt!56554 () ListLongMap!1597)

(declare-fun lt!56559 () ListLongMap!1597)

(assert (=> b!109868 (= res!54367 (= lt!56554 lt!56559))))

(declare-datatypes ((array!4392 0))(
  ( (array!4393 (arr!2082 (Array (_ BitVec 32) (_ BitVec 64))) (size!2339 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1006 0))(
  ( (ValueCellFull!1006 (v!2930 V!3245)) (EmptyCell!1006) )
))
(declare-datatypes ((array!4394 0))(
  ( (array!4395 (arr!2083 (Array (_ BitVec 32) ValueCell!1006)) (size!2340 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!920 0))(
  ( (LongMapFixedSize!921 (defaultEntry!2628 Int) (mask!6796 (_ BitVec 32)) (extraKeys!2425 (_ BitVec 32)) (zeroValue!2499 V!3245) (minValue!2499 V!3245) (_size!509 (_ BitVec 32)) (_keys!4342 array!4392) (_values!2611 array!4394) (_vacant!509 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!920)

(declare-fun map!1295 (LongMapFixedSize!920) ListLongMap!1597)

(assert (=> b!109868 (= lt!56559 (map!1295 newMap!16))))

(declare-datatypes ((Cell!720 0))(
  ( (Cell!721 (v!2931 LongMapFixedSize!920)) )
))
(declare-datatypes ((LongMap!720 0))(
  ( (LongMap!721 (underlying!371 Cell!720)) )
))
(declare-fun thiss!992 () LongMap!720)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!490 (array!4392 array!4394 (_ BitVec 32) (_ BitVec 32) V!3245 V!3245 (_ BitVec 32) Int) ListLongMap!1597)

(assert (=> b!109868 (= lt!56554 (getCurrentListMap!490 (_keys!4342 (v!2931 (underlying!371 thiss!992))) (_values!2611 (v!2931 (underlying!371 thiss!992))) (mask!6796 (v!2931 (underlying!371 thiss!992))) (extraKeys!2425 (v!2931 (underlying!371 thiss!992))) (zeroValue!2499 (v!2931 (underlying!371 thiss!992))) (minValue!2499 (v!2931 (underlying!371 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2628 (v!2931 (underlying!371 thiss!992)))))))

(declare-fun b!109869 () Bool)

(declare-fun e!71516 () Bool)

(assert (=> b!109869 (= e!71516 tp_is_empty!2699)))

(declare-fun b!109870 () Bool)

(declare-fun e!71505 () Bool)

(declare-fun e!71511 () Bool)

(assert (=> b!109870 (= e!71505 e!71511)))

(declare-fun b!109872 () Bool)

(declare-fun e!71501 () Bool)

(declare-fun e!71515 () Bool)

(assert (=> b!109872 (= e!71501 (not e!71515))))

(declare-fun res!54368 () Bool)

(assert (=> b!109872 (=> res!54368 e!71515)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!109872 (= res!54368 (not (validMask!0 (mask!6796 (v!2931 (underlying!371 thiss!992))))))))

(declare-fun lt!56557 () ListLongMap!1597)

(declare-fun lt!56553 () tuple2!2432)

(declare-fun lt!56562 () tuple2!2432)

(declare-fun +!150 (ListLongMap!1597 tuple2!2432) ListLongMap!1597)

(assert (=> b!109872 (= (+!150 (+!150 lt!56557 lt!56553) lt!56562) (+!150 (+!150 lt!56557 lt!56562) lt!56553))))

(assert (=> b!109872 (= lt!56562 (tuple2!2433 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2499 (v!2931 (underlying!371 thiss!992)))))))

(declare-fun lt!56558 () V!3245)

(assert (=> b!109872 (= lt!56553 (tuple2!2433 (select (arr!2082 (_keys!4342 (v!2931 (underlying!371 thiss!992)))) from!355) lt!56558))))

(declare-datatypes ((Unit!3425 0))(
  ( (Unit!3426) )
))
(declare-fun lt!56564 () Unit!3425)

(declare-fun addCommutativeForDiffKeys!62 (ListLongMap!1597 (_ BitVec 64) V!3245 (_ BitVec 64) V!3245) Unit!3425)

(assert (=> b!109872 (= lt!56564 (addCommutativeForDiffKeys!62 lt!56557 (select (arr!2082 (_keys!4342 (v!2931 (underlying!371 thiss!992)))) from!355) lt!56558 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2499 (v!2931 (underlying!371 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!117 (array!4392 array!4394 (_ BitVec 32) (_ BitVec 32) V!3245 V!3245 (_ BitVec 32) Int) ListLongMap!1597)

(assert (=> b!109872 (= lt!56557 (getCurrentListMapNoExtraKeys!117 (_keys!4342 (v!2931 (underlying!371 thiss!992))) (_values!2611 (v!2931 (underlying!371 thiss!992))) (mask!6796 (v!2931 (underlying!371 thiss!992))) (extraKeys!2425 (v!2931 (underlying!371 thiss!992))) (zeroValue!2499 (v!2931 (underlying!371 thiss!992))) (minValue!2499 (v!2931 (underlying!371 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2628 (v!2931 (underlying!371 thiss!992)))))))

(declare-fun b!109873 () Bool)

(declare-fun e!71499 () Bool)

(assert (=> b!109873 (= e!71510 e!71499)))

(declare-fun res!54365 () Bool)

(assert (=> b!109873 (=> (not res!54365) (not e!71499))))

(assert (=> b!109873 (= res!54365 (and (not (= (select (arr!2082 (_keys!4342 (v!2931 (underlying!371 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2082 (_keys!4342 (v!2931 (underlying!371 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1356 (ValueCell!1006 V!3245) V!3245)

(declare-fun dynLambda!393 (Int (_ BitVec 64)) V!3245)

(assert (=> b!109873 (= lt!56558 (get!1356 (select (arr!2083 (_values!2611 (v!2931 (underlying!371 thiss!992)))) from!355) (dynLambda!393 (defaultEntry!2628 (v!2931 (underlying!371 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!109874 () Bool)

(assert (=> b!109874 (= e!71499 e!71501)))

(declare-fun res!54364 () Bool)

(assert (=> b!109874 (=> (not res!54364) (not e!71501))))

(declare-datatypes ((tuple2!2434 0))(
  ( (tuple2!2435 (_1!1227 Bool) (_2!1227 LongMapFixedSize!920)) )
))
(declare-fun lt!56563 () tuple2!2434)

(assert (=> b!109874 (= res!54364 (and (_1!1227 lt!56563) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!56560 () Unit!3425)

(declare-fun e!71508 () Unit!3425)

(assert (=> b!109874 (= lt!56560 e!71508)))

(declare-fun c!19438 () Bool)

(declare-fun contains!838 (ListLongMap!1597 (_ BitVec 64)) Bool)

(assert (=> b!109874 (= c!19438 (contains!838 lt!56559 (select (arr!2082 (_keys!4342 (v!2931 (underlying!371 thiss!992)))) from!355)))))

(declare-fun update!163 (LongMapFixedSize!920 (_ BitVec 64) V!3245) tuple2!2434)

(assert (=> b!109874 (= lt!56563 (update!163 newMap!16 (select (arr!2082 (_keys!4342 (v!2931 (underlying!371 thiss!992)))) from!355) lt!56558))))

(declare-fun b!109875 () Bool)

(declare-fun Unit!3427 () Unit!3425)

(assert (=> b!109875 (= e!71508 Unit!3427)))

(declare-fun lt!56555 () Unit!3425)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!118 (array!4392 array!4394 (_ BitVec 32) (_ BitVec 32) V!3245 V!3245 (_ BitVec 64) (_ BitVec 32) Int) Unit!3425)

(assert (=> b!109875 (= lt!56555 (lemmaListMapContainsThenArrayContainsFrom!118 (_keys!4342 (v!2931 (underlying!371 thiss!992))) (_values!2611 (v!2931 (underlying!371 thiss!992))) (mask!6796 (v!2931 (underlying!371 thiss!992))) (extraKeys!2425 (v!2931 (underlying!371 thiss!992))) (zeroValue!2499 (v!2931 (underlying!371 thiss!992))) (minValue!2499 (v!2931 (underlying!371 thiss!992))) (select (arr!2082 (_keys!4342 (v!2931 (underlying!371 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2628 (v!2931 (underlying!371 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4392 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!109875 (arrayContainsKey!0 (_keys!4342 (v!2931 (underlying!371 thiss!992))) (select (arr!2082 (_keys!4342 (v!2931 (underlying!371 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!56556 () Unit!3425)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4392 (_ BitVec 32) (_ BitVec 32)) Unit!3425)

(assert (=> b!109875 (= lt!56556 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4342 (v!2931 (underlying!371 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1655 0))(
  ( (Nil!1652) (Cons!1651 (h!2250 (_ BitVec 64)) (t!5808 List!1655)) )
))
(declare-fun arrayNoDuplicates!0 (array!4392 (_ BitVec 32) List!1655) Bool)

(assert (=> b!109875 (arrayNoDuplicates!0 (_keys!4342 (v!2931 (underlying!371 thiss!992))) from!355 Nil!1652)))

(declare-fun lt!56561 () Unit!3425)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4392 (_ BitVec 32) (_ BitVec 64) List!1655) Unit!3425)

(assert (=> b!109875 (= lt!56561 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4342 (v!2931 (underlying!371 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2082 (_keys!4342 (v!2931 (underlying!371 thiss!992)))) from!355) (Cons!1651 (select (arr!2082 (_keys!4342 (v!2931 (underlying!371 thiss!992)))) from!355) Nil!1652)))))

(assert (=> b!109875 false))

(declare-fun b!109876 () Bool)

(declare-fun e!71512 () Bool)

(declare-fun e!71504 () Bool)

(declare-fun mapRes!4006 () Bool)

(assert (=> b!109876 (= e!71512 (and e!71504 mapRes!4006))))

(declare-fun condMapEmpty!4005 () Bool)

(declare-fun mapDefault!4006 () ValueCell!1006)


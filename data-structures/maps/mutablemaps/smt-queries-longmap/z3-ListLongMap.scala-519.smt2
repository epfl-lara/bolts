; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13084 () Bool)

(assert start!13084)

(declare-fun b!114328 () Bool)

(declare-fun b_free!2621 () Bool)

(declare-fun b_next!2621 () Bool)

(assert (=> b!114328 (= b_free!2621 (not b_next!2621))))

(declare-fun tp!10221 () Bool)

(declare-fun b_and!7057 () Bool)

(assert (=> b!114328 (= tp!10221 b_and!7057)))

(declare-fun b!114320 () Bool)

(declare-fun b_free!2623 () Bool)

(declare-fun b_next!2623 () Bool)

(assert (=> b!114320 (= b_free!2623 (not b_next!2623))))

(declare-fun tp!10223 () Bool)

(declare-fun b_and!7059 () Bool)

(assert (=> b!114320 (= tp!10223 b_and!7059)))

(declare-fun res!56271 () Bool)

(declare-fun e!74353 () Bool)

(assert (=> start!13084 (=> (not res!56271) (not e!74353))))

(declare-datatypes ((V!3283 0))(
  ( (V!3284 (val!1408 Int)) )
))
(declare-datatypes ((array!4454 0))(
  ( (array!4455 (arr!2110 (Array (_ BitVec 32) (_ BitVec 64))) (size!2370 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1020 0))(
  ( (ValueCellFull!1020 (v!2981 V!3283)) (EmptyCell!1020) )
))
(declare-datatypes ((array!4456 0))(
  ( (array!4457 (arr!2111 (Array (_ BitVec 32) ValueCell!1020)) (size!2371 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!948 0))(
  ( (LongMapFixedSize!949 (defaultEntry!2680 Int) (mask!6874 (_ BitVec 32)) (extraKeys!2469 (_ BitVec 32)) (zeroValue!2547 V!3283) (minValue!2547 V!3283) (_size!523 (_ BitVec 32)) (_keys!4402 array!4454) (_values!2663 array!4456) (_vacant!523 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!746 0))(
  ( (Cell!747 (v!2982 LongMapFixedSize!948)) )
))
(declare-datatypes ((LongMap!746 0))(
  ( (LongMap!747 (underlying!384 Cell!746)) )
))
(declare-fun thiss!992 () LongMap!746)

(declare-fun valid!438 (LongMap!746) Bool)

(assert (=> start!13084 (= res!56271 (valid!438 thiss!992))))

(assert (=> start!13084 e!74353))

(declare-fun e!74357 () Bool)

(assert (=> start!13084 e!74357))

(assert (=> start!13084 true))

(declare-fun e!74363 () Bool)

(assert (=> start!13084 e!74363))

(declare-fun b!114310 () Bool)

(declare-fun e!74359 () Bool)

(declare-fun e!74362 () Bool)

(declare-fun mapRes!4110 () Bool)

(assert (=> b!114310 (= e!74359 (and e!74362 mapRes!4110))))

(declare-fun condMapEmpty!4109 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!948)

(declare-fun mapDefault!4109 () ValueCell!1020)

(assert (=> b!114310 (= condMapEmpty!4109 (= (arr!2111 (_values!2663 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1020)) mapDefault!4109)))))

(declare-fun mapNonEmpty!4109 () Bool)

(declare-fun tp!10224 () Bool)

(declare-fun e!74364 () Bool)

(assert (=> mapNonEmpty!4109 (= mapRes!4110 (and tp!10224 e!74364))))

(declare-fun mapRest!4109 () (Array (_ BitVec 32) ValueCell!1020))

(declare-fun mapKey!4109 () (_ BitVec 32))

(declare-fun mapValue!4109 () ValueCell!1020)

(assert (=> mapNonEmpty!4109 (= (arr!2111 (_values!2663 newMap!16)) (store mapRest!4109 mapKey!4109 mapValue!4109))))

(declare-fun b!114311 () Bool)

(declare-fun e!74366 () Bool)

(declare-fun e!74355 () Bool)

(assert (=> b!114311 (= e!74366 e!74355)))

(declare-fun res!56272 () Bool)

(assert (=> b!114311 (=> (not res!56272) (not e!74355))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!114311 (= res!56272 (and (not (= (select (arr!2110 (_keys!4402 (v!2982 (underlying!384 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2110 (_keys!4402 (v!2982 (underlying!384 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!59469 () V!3283)

(declare-fun get!1382 (ValueCell!1020 V!3283) V!3283)

(declare-fun dynLambda!400 (Int (_ BitVec 64)) V!3283)

(assert (=> b!114311 (= lt!59469 (get!1382 (select (arr!2111 (_values!2663 (v!2982 (underlying!384 thiss!992)))) from!355) (dynLambda!400 (defaultEntry!2680 (v!2982 (underlying!384 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!4110 () Bool)

(declare-fun mapRes!4109 () Bool)

(declare-fun tp!10222 () Bool)

(declare-fun e!74367 () Bool)

(assert (=> mapNonEmpty!4110 (= mapRes!4109 (and tp!10222 e!74367))))

(declare-fun mapValue!4110 () ValueCell!1020)

(declare-fun mapRest!4110 () (Array (_ BitVec 32) ValueCell!1020))

(declare-fun mapKey!4110 () (_ BitVec 32))

(assert (=> mapNonEmpty!4110 (= (arr!2111 (_values!2663 (v!2982 (underlying!384 thiss!992)))) (store mapRest!4110 mapKey!4110 mapValue!4110))))

(declare-fun b!114312 () Bool)

(declare-fun e!74365 () Bool)

(declare-fun e!74360 () Bool)

(assert (=> b!114312 (= e!74365 e!74360)))

(declare-fun b!114313 () Bool)

(declare-fun tp_is_empty!2727 () Bool)

(assert (=> b!114313 (= e!74362 tp_is_empty!2727)))

(declare-fun mapIsEmpty!4109 () Bool)

(assert (=> mapIsEmpty!4109 mapRes!4110))

(declare-fun b!114314 () Bool)

(declare-fun e!74356 () Bool)

(assert (=> b!114314 (= e!74356 tp_is_empty!2727)))

(declare-fun b!114315 () Bool)

(declare-datatypes ((Unit!3578 0))(
  ( (Unit!3579) )
))
(declare-fun e!74358 () Unit!3578)

(declare-fun Unit!3580 () Unit!3578)

(assert (=> b!114315 (= e!74358 Unit!3580)))

(declare-fun b!114316 () Bool)

(assert (=> b!114316 (= e!74367 tp_is_empty!2727)))

(declare-fun b!114317 () Bool)

(declare-fun res!56267 () Bool)

(assert (=> b!114317 (=> (not res!56267) (not e!74353))))

(assert (=> b!114317 (= res!56267 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2370 (_keys!4402 (v!2982 (underlying!384 thiss!992)))))))))

(declare-fun b!114318 () Bool)

(declare-fun res!56268 () Bool)

(assert (=> b!114318 (=> (not res!56268) (not e!74353))))

(assert (=> b!114318 (= res!56268 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6874 newMap!16)) (_size!523 (v!2982 (underlying!384 thiss!992)))))))

(declare-fun b!114319 () Bool)

(declare-fun e!74351 () Bool)

(assert (=> b!114319 (= e!74351 (not true))))

(declare-fun lt!59459 () Bool)

(declare-datatypes ((tuple2!2458 0))(
  ( (tuple2!2459 (_1!1239 Bool) (_2!1239 LongMapFixedSize!948)) )
))
(declare-fun lt!59471 () tuple2!2458)

(declare-fun valid!439 (LongMapFixedSize!948) Bool)

(assert (=> b!114319 (= lt!59459 (valid!439 (_2!1239 lt!59471)))))

(declare-datatypes ((tuple2!2460 0))(
  ( (tuple2!2461 (_1!1240 (_ BitVec 64)) (_2!1240 V!3283)) )
))
(declare-fun lt!59463 () tuple2!2460)

(declare-datatypes ((List!1669 0))(
  ( (Nil!1666) (Cons!1665 (h!2265 tuple2!2460) (t!5895 List!1669)) )
))
(declare-datatypes ((ListLongMap!1613 0))(
  ( (ListLongMap!1614 (toList!822 List!1669)) )
))
(declare-fun lt!59455 () ListLongMap!1613)

(declare-fun lt!59465 () ListLongMap!1613)

(declare-fun lt!59466 () tuple2!2460)

(declare-fun +!156 (ListLongMap!1613 tuple2!2460) ListLongMap!1613)

(assert (=> b!114319 (= (+!156 lt!59455 lt!59463) (+!156 (+!156 lt!59465 lt!59463) lt!59466))))

(assert (=> b!114319 (= lt!59463 (tuple2!2461 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2547 (v!2982 (underlying!384 thiss!992)))))))

(declare-fun lt!59458 () Unit!3578)

(declare-fun addCommutativeForDiffKeys!68 (ListLongMap!1613 (_ BitVec 64) V!3283 (_ BitVec 64) V!3283) Unit!3578)

(assert (=> b!114319 (= lt!59458 (addCommutativeForDiffKeys!68 lt!59465 (select (arr!2110 (_keys!4402 (v!2982 (underlying!384 thiss!992)))) from!355) lt!59469 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2547 (v!2982 (underlying!384 thiss!992)))))))

(declare-fun lt!59468 () ListLongMap!1613)

(assert (=> b!114319 (= lt!59468 lt!59455)))

(assert (=> b!114319 (= lt!59455 (+!156 lt!59465 lt!59466))))

(declare-fun lt!59467 () ListLongMap!1613)

(declare-fun lt!59462 () tuple2!2460)

(assert (=> b!114319 (= lt!59468 (+!156 lt!59467 lt!59462))))

(declare-fun lt!59460 () ListLongMap!1613)

(assert (=> b!114319 (= lt!59465 (+!156 lt!59460 lt!59462))))

(assert (=> b!114319 (= lt!59462 (tuple2!2461 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2547 (v!2982 (underlying!384 thiss!992)))))))

(assert (=> b!114319 (= lt!59467 (+!156 lt!59460 lt!59466))))

(assert (=> b!114319 (= lt!59466 (tuple2!2461 (select (arr!2110 (_keys!4402 (v!2982 (underlying!384 thiss!992)))) from!355) lt!59469))))

(declare-fun lt!59461 () Unit!3578)

(assert (=> b!114319 (= lt!59461 (addCommutativeForDiffKeys!68 lt!59460 (select (arr!2110 (_keys!4402 (v!2982 (underlying!384 thiss!992)))) from!355) lt!59469 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2547 (v!2982 (underlying!384 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!123 (array!4454 array!4456 (_ BitVec 32) (_ BitVec 32) V!3283 V!3283 (_ BitVec 32) Int) ListLongMap!1613)

(assert (=> b!114319 (= lt!59460 (getCurrentListMapNoExtraKeys!123 (_keys!4402 (v!2982 (underlying!384 thiss!992))) (_values!2663 (v!2982 (underlying!384 thiss!992))) (mask!6874 (v!2982 (underlying!384 thiss!992))) (extraKeys!2469 (v!2982 (underlying!384 thiss!992))) (zeroValue!2547 (v!2982 (underlying!384 thiss!992))) (minValue!2547 (v!2982 (underlying!384 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2680 (v!2982 (underlying!384 thiss!992)))))))

(declare-fun array_inv!1271 (array!4454) Bool)

(declare-fun array_inv!1272 (array!4456) Bool)

(assert (=> b!114320 (= e!74363 (and tp!10223 tp_is_empty!2727 (array_inv!1271 (_keys!4402 newMap!16)) (array_inv!1272 (_values!2663 newMap!16)) e!74359))))

(declare-fun b!114321 () Bool)

(assert (=> b!114321 (= e!74355 e!74351)))

(declare-fun res!56270 () Bool)

(assert (=> b!114321 (=> (not res!56270) (not e!74351))))

(assert (=> b!114321 (= res!56270 (and (_1!1239 lt!59471) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!59470 () Unit!3578)

(assert (=> b!114321 (= lt!59470 e!74358)))

(declare-fun lt!59457 () ListLongMap!1613)

(declare-fun c!20455 () Bool)

(declare-fun contains!849 (ListLongMap!1613 (_ BitVec 64)) Bool)

(assert (=> b!114321 (= c!20455 (contains!849 lt!59457 (select (arr!2110 (_keys!4402 (v!2982 (underlying!384 thiss!992)))) from!355)))))

(declare-fun update!168 (LongMapFixedSize!948 (_ BitVec 64) V!3283) tuple2!2458)

(assert (=> b!114321 (= lt!59471 (update!168 newMap!16 (select (arr!2110 (_keys!4402 (v!2982 (underlying!384 thiss!992)))) from!355) lt!59469))))

(declare-fun b!114322 () Bool)

(declare-fun res!56266 () Bool)

(assert (=> b!114322 (=> (not res!56266) (not e!74353))))

(assert (=> b!114322 (= res!56266 (valid!439 newMap!16))))

(declare-fun mapIsEmpty!4110 () Bool)

(assert (=> mapIsEmpty!4110 mapRes!4109))

(declare-fun b!114323 () Bool)

(assert (=> b!114323 (= e!74364 tp_is_empty!2727)))

(declare-fun b!114324 () Bool)

(assert (=> b!114324 (= e!74357 e!74365)))

(declare-fun b!114325 () Bool)

(declare-fun e!74354 () Bool)

(assert (=> b!114325 (= e!74354 (and e!74356 mapRes!4109))))

(declare-fun condMapEmpty!4110 () Bool)

(declare-fun mapDefault!4110 () ValueCell!1020)

(assert (=> b!114325 (= condMapEmpty!4110 (= (arr!2111 (_values!2663 (v!2982 (underlying!384 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1020)) mapDefault!4110)))))

(declare-fun b!114326 () Bool)

(assert (=> b!114326 (= e!74353 e!74366)))

(declare-fun res!56269 () Bool)

(assert (=> b!114326 (=> (not res!56269) (not e!74366))))

(declare-fun lt!59464 () ListLongMap!1613)

(assert (=> b!114326 (= res!56269 (= lt!59464 lt!59457))))

(declare-fun map!1313 (LongMapFixedSize!948) ListLongMap!1613)

(assert (=> b!114326 (= lt!59457 (map!1313 newMap!16))))

(declare-fun getCurrentListMap!498 (array!4454 array!4456 (_ BitVec 32) (_ BitVec 32) V!3283 V!3283 (_ BitVec 32) Int) ListLongMap!1613)

(assert (=> b!114326 (= lt!59464 (getCurrentListMap!498 (_keys!4402 (v!2982 (underlying!384 thiss!992))) (_values!2663 (v!2982 (underlying!384 thiss!992))) (mask!6874 (v!2982 (underlying!384 thiss!992))) (extraKeys!2469 (v!2982 (underlying!384 thiss!992))) (zeroValue!2547 (v!2982 (underlying!384 thiss!992))) (minValue!2547 (v!2982 (underlying!384 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2680 (v!2982 (underlying!384 thiss!992)))))))

(declare-fun b!114327 () Bool)

(declare-fun Unit!3581 () Unit!3578)

(assert (=> b!114327 (= e!74358 Unit!3581)))

(declare-fun lt!59453 () Unit!3578)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!124 (array!4454 array!4456 (_ BitVec 32) (_ BitVec 32) V!3283 V!3283 (_ BitVec 64) (_ BitVec 32) Int) Unit!3578)

(assert (=> b!114327 (= lt!59453 (lemmaListMapContainsThenArrayContainsFrom!124 (_keys!4402 (v!2982 (underlying!384 thiss!992))) (_values!2663 (v!2982 (underlying!384 thiss!992))) (mask!6874 (v!2982 (underlying!384 thiss!992))) (extraKeys!2469 (v!2982 (underlying!384 thiss!992))) (zeroValue!2547 (v!2982 (underlying!384 thiss!992))) (minValue!2547 (v!2982 (underlying!384 thiss!992))) (select (arr!2110 (_keys!4402 (v!2982 (underlying!384 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2680 (v!2982 (underlying!384 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4454 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!114327 (arrayContainsKey!0 (_keys!4402 (v!2982 (underlying!384 thiss!992))) (select (arr!2110 (_keys!4402 (v!2982 (underlying!384 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!59454 () Unit!3578)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4454 (_ BitVec 32) (_ BitVec 32)) Unit!3578)

(assert (=> b!114327 (= lt!59454 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4402 (v!2982 (underlying!384 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1670 0))(
  ( (Nil!1667) (Cons!1666 (h!2266 (_ BitVec 64)) (t!5896 List!1670)) )
))
(declare-fun arrayNoDuplicates!0 (array!4454 (_ BitVec 32) List!1670) Bool)

(assert (=> b!114327 (arrayNoDuplicates!0 (_keys!4402 (v!2982 (underlying!384 thiss!992))) from!355 Nil!1667)))

(declare-fun lt!59456 () Unit!3578)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4454 (_ BitVec 32) (_ BitVec 64) List!1670) Unit!3578)

(assert (=> b!114327 (= lt!59456 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4402 (v!2982 (underlying!384 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2110 (_keys!4402 (v!2982 (underlying!384 thiss!992)))) from!355) (Cons!1666 (select (arr!2110 (_keys!4402 (v!2982 (underlying!384 thiss!992)))) from!355) Nil!1667)))))

(assert (=> b!114327 false))

(assert (=> b!114328 (= e!74360 (and tp!10221 tp_is_empty!2727 (array_inv!1271 (_keys!4402 (v!2982 (underlying!384 thiss!992)))) (array_inv!1272 (_values!2663 (v!2982 (underlying!384 thiss!992)))) e!74354))))

(assert (= (and start!13084 res!56271) b!114317))

(assert (= (and b!114317 res!56267) b!114322))

(assert (= (and b!114322 res!56266) b!114318))

(assert (= (and b!114318 res!56268) b!114326))

(assert (= (and b!114326 res!56269) b!114311))

(assert (= (and b!114311 res!56272) b!114321))

(assert (= (and b!114321 c!20455) b!114327))

(assert (= (and b!114321 (not c!20455)) b!114315))

(assert (= (and b!114321 res!56270) b!114319))

(assert (= (and b!114325 condMapEmpty!4110) mapIsEmpty!4110))

(assert (= (and b!114325 (not condMapEmpty!4110)) mapNonEmpty!4110))

(get-info :version)

(assert (= (and mapNonEmpty!4110 ((_ is ValueCellFull!1020) mapValue!4110)) b!114316))

(assert (= (and b!114325 ((_ is ValueCellFull!1020) mapDefault!4110)) b!114314))

(assert (= b!114328 b!114325))

(assert (= b!114312 b!114328))

(assert (= b!114324 b!114312))

(assert (= start!13084 b!114324))

(assert (= (and b!114310 condMapEmpty!4109) mapIsEmpty!4109))

(assert (= (and b!114310 (not condMapEmpty!4109)) mapNonEmpty!4109))

(assert (= (and mapNonEmpty!4109 ((_ is ValueCellFull!1020) mapValue!4109)) b!114323))

(assert (= (and b!114310 ((_ is ValueCellFull!1020) mapDefault!4109)) b!114313))

(assert (= b!114320 b!114310))

(assert (= start!13084 b!114320))

(declare-fun b_lambda!5137 () Bool)

(assert (=> (not b_lambda!5137) (not b!114311)))

(declare-fun t!5892 () Bool)

(declare-fun tb!2189 () Bool)

(assert (=> (and b!114328 (= (defaultEntry!2680 (v!2982 (underlying!384 thiss!992))) (defaultEntry!2680 (v!2982 (underlying!384 thiss!992)))) t!5892) tb!2189))

(declare-fun result!3647 () Bool)

(assert (=> tb!2189 (= result!3647 tp_is_empty!2727)))

(assert (=> b!114311 t!5892))

(declare-fun b_and!7061 () Bool)

(assert (= b_and!7057 (and (=> t!5892 result!3647) b_and!7061)))

(declare-fun tb!2191 () Bool)

(declare-fun t!5894 () Bool)

(assert (=> (and b!114320 (= (defaultEntry!2680 newMap!16) (defaultEntry!2680 (v!2982 (underlying!384 thiss!992)))) t!5894) tb!2191))

(declare-fun result!3651 () Bool)

(assert (= result!3651 result!3647))

(assert (=> b!114311 t!5894))

(declare-fun b_and!7063 () Bool)

(assert (= b_and!7059 (and (=> t!5894 result!3651) b_and!7063)))

(declare-fun m!130787 () Bool)

(assert (=> b!114328 m!130787))

(declare-fun m!130789 () Bool)

(assert (=> b!114328 m!130789))

(declare-fun m!130791 () Bool)

(assert (=> mapNonEmpty!4110 m!130791))

(declare-fun m!130793 () Bool)

(assert (=> b!114319 m!130793))

(declare-fun m!130795 () Bool)

(assert (=> b!114319 m!130795))

(declare-fun m!130797 () Bool)

(assert (=> b!114319 m!130797))

(declare-fun m!130799 () Bool)

(assert (=> b!114319 m!130799))

(assert (=> b!114319 m!130799))

(declare-fun m!130801 () Bool)

(assert (=> b!114319 m!130801))

(declare-fun m!130803 () Bool)

(assert (=> b!114319 m!130803))

(declare-fun m!130805 () Bool)

(assert (=> b!114319 m!130805))

(assert (=> b!114319 m!130803))

(declare-fun m!130807 () Bool)

(assert (=> b!114319 m!130807))

(declare-fun m!130809 () Bool)

(assert (=> b!114319 m!130809))

(assert (=> b!114319 m!130799))

(declare-fun m!130811 () Bool)

(assert (=> b!114319 m!130811))

(declare-fun m!130813 () Bool)

(assert (=> b!114319 m!130813))

(declare-fun m!130815 () Bool)

(assert (=> b!114319 m!130815))

(assert (=> b!114311 m!130799))

(declare-fun m!130817 () Bool)

(assert (=> b!114311 m!130817))

(declare-fun m!130819 () Bool)

(assert (=> b!114311 m!130819))

(assert (=> b!114311 m!130817))

(assert (=> b!114311 m!130819))

(declare-fun m!130821 () Bool)

(assert (=> b!114311 m!130821))

(assert (=> b!114321 m!130799))

(assert (=> b!114321 m!130799))

(declare-fun m!130823 () Bool)

(assert (=> b!114321 m!130823))

(assert (=> b!114321 m!130799))

(declare-fun m!130825 () Bool)

(assert (=> b!114321 m!130825))

(declare-fun m!130827 () Bool)

(assert (=> start!13084 m!130827))

(declare-fun m!130829 () Bool)

(assert (=> b!114322 m!130829))

(declare-fun m!130831 () Bool)

(assert (=> b!114320 m!130831))

(declare-fun m!130833 () Bool)

(assert (=> b!114320 m!130833))

(declare-fun m!130835 () Bool)

(assert (=> mapNonEmpty!4109 m!130835))

(declare-fun m!130837 () Bool)

(assert (=> b!114327 m!130837))

(declare-fun m!130839 () Bool)

(assert (=> b!114327 m!130839))

(assert (=> b!114327 m!130799))

(declare-fun m!130841 () Bool)

(assert (=> b!114327 m!130841))

(assert (=> b!114327 m!130799))

(assert (=> b!114327 m!130799))

(declare-fun m!130843 () Bool)

(assert (=> b!114327 m!130843))

(assert (=> b!114327 m!130799))

(declare-fun m!130845 () Bool)

(assert (=> b!114327 m!130845))

(declare-fun m!130847 () Bool)

(assert (=> b!114326 m!130847))

(declare-fun m!130849 () Bool)

(assert (=> b!114326 m!130849))

(check-sat (not b!114320) (not mapNonEmpty!4110) (not b!114319) (not b_lambda!5137) (not b!114327) b_and!7061 (not b!114322) (not mapNonEmpty!4109) (not start!13084) (not b!114326) (not b_next!2623) (not b_next!2621) b_and!7063 (not b!114321) tp_is_empty!2727 (not b!114328) (not b!114311))
(check-sat b_and!7061 b_and!7063 (not b_next!2621) (not b_next!2623))

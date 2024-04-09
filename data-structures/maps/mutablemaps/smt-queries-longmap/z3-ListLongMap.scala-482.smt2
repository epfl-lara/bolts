; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10156 () Bool)

(assert start!10156)

(declare-fun b!77372 () Bool)

(declare-fun b_free!2177 () Bool)

(declare-fun b_next!2177 () Bool)

(assert (=> b!77372 (= b_free!2177 (not b_next!2177))))

(declare-fun tp!8727 () Bool)

(declare-fun b_and!4749 () Bool)

(assert (=> b!77372 (= tp!8727 b_and!4749)))

(declare-fun b!77366 () Bool)

(declare-fun b_free!2179 () Bool)

(declare-fun b_next!2179 () Bool)

(assert (=> b!77366 (= b_free!2179 (not b_next!2179))))

(declare-fun tp!8729 () Bool)

(declare-fun b_and!4751 () Bool)

(assert (=> b!77366 (= tp!8729 b_and!4751)))

(declare-fun b!77359 () Bool)

(declare-fun res!40609 () Bool)

(declare-fun e!50589 () Bool)

(assert (=> b!77359 (=> (not res!40609) (not e!50589))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!2987 0))(
  ( (V!2988 (val!1297 Int)) )
))
(declare-datatypes ((array!3960 0))(
  ( (array!3961 (arr!1888 (Array (_ BitVec 32) (_ BitVec 64))) (size!2129 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!909 0))(
  ( (ValueCellFull!909 (v!2585 V!2987)) (EmptyCell!909) )
))
(declare-datatypes ((array!3962 0))(
  ( (array!3963 (arr!1889 (Array (_ BitVec 32) ValueCell!909)) (size!2130 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!726 0))(
  ( (LongMapFixedSize!727 (defaultEntry!2266 Int) (mask!6259 (_ BitVec 32)) (extraKeys!2117 (_ BitVec 32)) (zeroValue!2164 V!2987) (minValue!2164 V!2987) (_size!412 (_ BitVec 32)) (_keys!3926 array!3960) (_values!2249 array!3962) (_vacant!412 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!534 0))(
  ( (Cell!535 (v!2586 LongMapFixedSize!726)) )
))
(declare-datatypes ((LongMap!534 0))(
  ( (LongMap!535 (underlying!278 Cell!534)) )
))
(declare-fun thiss!992 () LongMap!534)

(assert (=> b!77359 (= res!40609 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2129 (_keys!3926 (v!2586 (underlying!278 thiss!992)))))))))

(declare-fun mapNonEmpty!3281 () Bool)

(declare-fun mapRes!3282 () Bool)

(declare-fun tp!8728 () Bool)

(declare-fun e!50588 () Bool)

(assert (=> mapNonEmpty!3281 (= mapRes!3282 (and tp!8728 e!50588))))

(declare-fun mapValue!3282 () ValueCell!909)

(declare-fun newMap!16 () LongMapFixedSize!726)

(declare-fun mapKey!3281 () (_ BitVec 32))

(declare-fun mapRest!3281 () (Array (_ BitVec 32) ValueCell!909))

(assert (=> mapNonEmpty!3281 (= (arr!1889 (_values!2249 newMap!16)) (store mapRest!3281 mapKey!3281 mapValue!3282))))

(declare-fun b!77360 () Bool)

(declare-fun e!50580 () Bool)

(declare-fun e!50596 () Bool)

(assert (=> b!77360 (= e!50580 (and e!50596 mapRes!3282))))

(declare-fun condMapEmpty!3282 () Bool)

(declare-fun mapDefault!3282 () ValueCell!909)

(assert (=> b!77360 (= condMapEmpty!3282 (= (arr!1889 (_values!2249 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!909)) mapDefault!3282)))))

(declare-fun b!77361 () Bool)

(declare-fun e!50586 () Bool)

(declare-fun e!50584 () Bool)

(assert (=> b!77361 (= e!50586 e!50584)))

(declare-fun mapNonEmpty!3282 () Bool)

(declare-fun mapRes!3281 () Bool)

(declare-fun tp!8730 () Bool)

(declare-fun e!50583 () Bool)

(assert (=> mapNonEmpty!3282 (= mapRes!3281 (and tp!8730 e!50583))))

(declare-fun mapRest!3282 () (Array (_ BitVec 32) ValueCell!909))

(declare-fun mapKey!3282 () (_ BitVec 32))

(declare-fun mapValue!3281 () ValueCell!909)

(assert (=> mapNonEmpty!3282 (= (arr!1889 (_values!2249 (v!2586 (underlying!278 thiss!992)))) (store mapRest!3282 mapKey!3282 mapValue!3281))))

(declare-fun b!77362 () Bool)

(declare-datatypes ((Unit!2248 0))(
  ( (Unit!2249) )
))
(declare-fun e!50585 () Unit!2248)

(declare-fun Unit!2250 () Unit!2248)

(assert (=> b!77362 (= e!50585 Unit!2250)))

(declare-fun lt!35384 () Unit!2248)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!61 (array!3960 array!3962 (_ BitVec 32) (_ BitVec 32) V!2987 V!2987 (_ BitVec 64) (_ BitVec 32) Int) Unit!2248)

(assert (=> b!77362 (= lt!35384 (lemmaListMapContainsThenArrayContainsFrom!61 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (_values!2249 (v!2586 (underlying!278 thiss!992))) (mask!6259 (v!2586 (underlying!278 thiss!992))) (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) (zeroValue!2164 (v!2586 (underlying!278 thiss!992))) (minValue!2164 (v!2586 (underlying!278 thiss!992))) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2266 (v!2586 (underlying!278 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3960 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!77362 (arrayContainsKey!0 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!35382 () Unit!2248)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3960 (_ BitVec 32) (_ BitVec 32)) Unit!2248)

(assert (=> b!77362 (= lt!35382 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3926 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1527 0))(
  ( (Nil!1524) (Cons!1523 (h!2111 (_ BitVec 64)) (t!5165 List!1527)) )
))
(declare-fun arrayNoDuplicates!0 (array!3960 (_ BitVec 32) List!1527) Bool)

(assert (=> b!77362 (arrayNoDuplicates!0 (_keys!3926 (v!2586 (underlying!278 thiss!992))) from!355 Nil!1524)))

(declare-fun lt!35386 () Unit!2248)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3960 (_ BitVec 32) (_ BitVec 64) List!1527) Unit!2248)

(assert (=> b!77362 (= lt!35386 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) (Cons!1523 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) Nil!1524)))))

(assert (=> b!77362 false))

(declare-fun b!77363 () Bool)

(declare-fun Unit!2251 () Unit!2248)

(assert (=> b!77363 (= e!50585 Unit!2251)))

(declare-fun b!77364 () Bool)

(declare-fun e!50590 () Bool)

(declare-fun e!50595 () Bool)

(assert (=> b!77364 (= e!50590 e!50595)))

(declare-fun res!40614 () Bool)

(assert (=> b!77364 (=> (not res!40614) (not e!50595))))

(declare-datatypes ((tuple2!2180 0))(
  ( (tuple2!2181 (_1!1100 Bool) (_2!1100 LongMapFixedSize!726)) )
))
(declare-fun lt!35394 () tuple2!2180)

(assert (=> b!77364 (= res!40614 (and (_1!1100 lt!35394) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!35397 () Unit!2248)

(assert (=> b!77364 (= lt!35397 e!50585)))

(declare-datatypes ((tuple2!2182 0))(
  ( (tuple2!2183 (_1!1101 (_ BitVec 64)) (_2!1101 V!2987)) )
))
(declare-datatypes ((List!1528 0))(
  ( (Nil!1525) (Cons!1524 (h!2112 tuple2!2182) (t!5166 List!1528)) )
))
(declare-datatypes ((ListLongMap!1459 0))(
  ( (ListLongMap!1460 (toList!745 List!1528)) )
))
(declare-fun lt!35387 () ListLongMap!1459)

(declare-fun c!11809 () Bool)

(declare-fun contains!742 (ListLongMap!1459 (_ BitVec 64)) Bool)

(assert (=> b!77364 (= c!11809 (contains!742 lt!35387 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355)))))

(declare-fun lt!35383 () V!2987)

(declare-fun update!110 (LongMapFixedSize!726 (_ BitVec 64) V!2987) tuple2!2180)

(assert (=> b!77364 (= lt!35394 (update!110 newMap!16 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) lt!35383))))

(declare-fun mapIsEmpty!3281 () Bool)

(assert (=> mapIsEmpty!3281 mapRes!3281))

(declare-fun b!77365 () Bool)

(declare-fun e!50582 () Bool)

(declare-fun tp_is_empty!2505 () Bool)

(assert (=> b!77365 (= e!50582 tp_is_empty!2505)))

(declare-fun e!50587 () Bool)

(declare-fun array_inv!1123 (array!3960) Bool)

(declare-fun array_inv!1124 (array!3962) Bool)

(assert (=> b!77366 (= e!50587 (and tp!8729 tp_is_empty!2505 (array_inv!1123 (_keys!3926 newMap!16)) (array_inv!1124 (_values!2249 newMap!16)) e!50580))))

(declare-fun b!77367 () Bool)

(declare-fun e!50592 () Bool)

(assert (=> b!77367 (= e!50592 e!50590)))

(declare-fun res!40613 () Bool)

(assert (=> b!77367 (=> (not res!40613) (not e!50590))))

(assert (=> b!77367 (= res!40613 (and (not (= (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1182 (ValueCell!909 V!2987) V!2987)

(declare-fun dynLambda!343 (Int (_ BitVec 64)) V!2987)

(assert (=> b!77367 (= lt!35383 (get!1182 (select (arr!1889 (_values!2249 (v!2586 (underlying!278 thiss!992)))) from!355) (dynLambda!343 (defaultEntry!2266 (v!2586 (underlying!278 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!3282 () Bool)

(assert (=> mapIsEmpty!3282 mapRes!3282))

(declare-fun b!77368 () Bool)

(declare-fun e!50594 () Bool)

(assert (=> b!77368 (= e!50594 (and e!50582 mapRes!3281))))

(declare-fun condMapEmpty!3281 () Bool)

(declare-fun mapDefault!3281 () ValueCell!909)

(assert (=> b!77368 (= condMapEmpty!3281 (= (arr!1889 (_values!2249 (v!2586 (underlying!278 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!909)) mapDefault!3281)))))

(declare-fun b!77369 () Bool)

(assert (=> b!77369 (= e!50596 tp_is_empty!2505)))

(declare-fun b!77370 () Bool)

(assert (=> b!77370 (= e!50583 tp_is_empty!2505)))

(declare-fun b!77371 () Bool)

(assert (=> b!77371 (= e!50588 tp_is_empty!2505)))

(declare-fun e!50593 () Bool)

(assert (=> b!77372 (= e!50593 (and tp!8727 tp_is_empty!2505 (array_inv!1123 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) (array_inv!1124 (_values!2249 (v!2586 (underlying!278 thiss!992)))) e!50594))))

(declare-fun res!40612 () Bool)

(assert (=> start!10156 (=> (not res!40612) (not e!50589))))

(declare-fun valid!309 (LongMap!534) Bool)

(assert (=> start!10156 (= res!40612 (valid!309 thiss!992))))

(assert (=> start!10156 e!50589))

(assert (=> start!10156 e!50586))

(assert (=> start!10156 true))

(assert (=> start!10156 e!50587))

(declare-fun b!77373 () Bool)

(declare-fun res!40608 () Bool)

(assert (=> b!77373 (=> (not res!40608) (not e!50589))))

(declare-fun valid!310 (LongMapFixedSize!726) Bool)

(assert (=> b!77373 (= res!40608 (valid!310 newMap!16))))

(declare-fun b!77374 () Bool)

(assert (=> b!77374 (= e!50584 e!50593)))

(declare-fun b!77375 () Bool)

(declare-fun res!40610 () Bool)

(assert (=> b!77375 (=> (not res!40610) (not e!50589))))

(assert (=> b!77375 (= res!40610 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6259 newMap!16)) (_size!412 (v!2586 (underlying!278 thiss!992)))))))

(declare-fun b!77376 () Bool)

(assert (=> b!77376 (= e!50589 e!50592)))

(declare-fun res!40611 () Bool)

(assert (=> b!77376 (=> (not res!40611) (not e!50592))))

(declare-fun lt!35391 () ListLongMap!1459)

(assert (=> b!77376 (= res!40611 (= lt!35391 lt!35387))))

(declare-fun map!1175 (LongMapFixedSize!726) ListLongMap!1459)

(assert (=> b!77376 (= lt!35387 (map!1175 newMap!16))))

(declare-fun getCurrentListMap!433 (array!3960 array!3962 (_ BitVec 32) (_ BitVec 32) V!2987 V!2987 (_ BitVec 32) Int) ListLongMap!1459)

(assert (=> b!77376 (= lt!35391 (getCurrentListMap!433 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (_values!2249 (v!2586 (underlying!278 thiss!992))) (mask!6259 (v!2586 (underlying!278 thiss!992))) (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) (zeroValue!2164 (v!2586 (underlying!278 thiss!992))) (minValue!2164 (v!2586 (underlying!278 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2266 (v!2586 (underlying!278 thiss!992)))))))

(declare-fun b!77377 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!77377 (= e!50595 (not (validMask!0 (mask!6259 (v!2586 (underlying!278 thiss!992))))))))

(declare-fun lt!35381 () tuple2!2182)

(declare-fun lt!35393 () tuple2!2182)

(declare-fun lt!35396 () ListLongMap!1459)

(declare-fun lt!35390 () ListLongMap!1459)

(declare-fun +!106 (ListLongMap!1459 tuple2!2182) ListLongMap!1459)

(assert (=> b!77377 (= (+!106 lt!35390 lt!35393) (+!106 (+!106 lt!35396 lt!35393) lt!35381))))

(assert (=> b!77377 (= lt!35393 (tuple2!2183 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2164 (v!2586 (underlying!278 thiss!992)))))))

(declare-fun lt!35392 () Unit!2248)

(declare-fun addCommutativeForDiffKeys!25 (ListLongMap!1459 (_ BitVec 64) V!2987 (_ BitVec 64) V!2987) Unit!2248)

(assert (=> b!77377 (= lt!35392 (addCommutativeForDiffKeys!25 lt!35396 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) lt!35383 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2164 (v!2586 (underlying!278 thiss!992)))))))

(declare-fun lt!35380 () ListLongMap!1459)

(assert (=> b!77377 (= lt!35380 lt!35390)))

(assert (=> b!77377 (= lt!35390 (+!106 lt!35396 lt!35381))))

(declare-fun lt!35395 () ListLongMap!1459)

(declare-fun lt!35388 () tuple2!2182)

(assert (=> b!77377 (= lt!35380 (+!106 lt!35395 lt!35388))))

(declare-fun lt!35385 () ListLongMap!1459)

(assert (=> b!77377 (= lt!35396 (+!106 lt!35385 lt!35388))))

(assert (=> b!77377 (= lt!35388 (tuple2!2183 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2164 (v!2586 (underlying!278 thiss!992)))))))

(assert (=> b!77377 (= lt!35395 (+!106 lt!35385 lt!35381))))

(assert (=> b!77377 (= lt!35381 (tuple2!2183 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) lt!35383))))

(declare-fun lt!35389 () Unit!2248)

(assert (=> b!77377 (= lt!35389 (addCommutativeForDiffKeys!25 lt!35385 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) lt!35383 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2164 (v!2586 (underlying!278 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!70 (array!3960 array!3962 (_ BitVec 32) (_ BitVec 32) V!2987 V!2987 (_ BitVec 32) Int) ListLongMap!1459)

(assert (=> b!77377 (= lt!35385 (getCurrentListMapNoExtraKeys!70 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (_values!2249 (v!2586 (underlying!278 thiss!992))) (mask!6259 (v!2586 (underlying!278 thiss!992))) (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) (zeroValue!2164 (v!2586 (underlying!278 thiss!992))) (minValue!2164 (v!2586 (underlying!278 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2266 (v!2586 (underlying!278 thiss!992)))))))

(assert (= (and start!10156 res!40612) b!77359))

(assert (= (and b!77359 res!40609) b!77373))

(assert (= (and b!77373 res!40608) b!77375))

(assert (= (and b!77375 res!40610) b!77376))

(assert (= (and b!77376 res!40611) b!77367))

(assert (= (and b!77367 res!40613) b!77364))

(assert (= (and b!77364 c!11809) b!77362))

(assert (= (and b!77364 (not c!11809)) b!77363))

(assert (= (and b!77364 res!40614) b!77377))

(assert (= (and b!77368 condMapEmpty!3281) mapIsEmpty!3281))

(assert (= (and b!77368 (not condMapEmpty!3281)) mapNonEmpty!3282))

(get-info :version)

(assert (= (and mapNonEmpty!3282 ((_ is ValueCellFull!909) mapValue!3281)) b!77370))

(assert (= (and b!77368 ((_ is ValueCellFull!909) mapDefault!3281)) b!77365))

(assert (= b!77372 b!77368))

(assert (= b!77374 b!77372))

(assert (= b!77361 b!77374))

(assert (= start!10156 b!77361))

(assert (= (and b!77360 condMapEmpty!3282) mapIsEmpty!3282))

(assert (= (and b!77360 (not condMapEmpty!3282)) mapNonEmpty!3281))

(assert (= (and mapNonEmpty!3281 ((_ is ValueCellFull!909) mapValue!3282)) b!77371))

(assert (= (and b!77360 ((_ is ValueCellFull!909) mapDefault!3282)) b!77369))

(assert (= b!77366 b!77360))

(assert (= start!10156 b!77366))

(declare-fun b_lambda!3475 () Bool)

(assert (=> (not b_lambda!3475) (not b!77367)))

(declare-fun t!5162 () Bool)

(declare-fun tb!1609 () Bool)

(assert (=> (and b!77372 (= (defaultEntry!2266 (v!2586 (underlying!278 thiss!992))) (defaultEntry!2266 (v!2586 (underlying!278 thiss!992)))) t!5162) tb!1609))

(declare-fun result!2795 () Bool)

(assert (=> tb!1609 (= result!2795 tp_is_empty!2505)))

(assert (=> b!77367 t!5162))

(declare-fun b_and!4753 () Bool)

(assert (= b_and!4749 (and (=> t!5162 result!2795) b_and!4753)))

(declare-fun tb!1611 () Bool)

(declare-fun t!5164 () Bool)

(assert (=> (and b!77366 (= (defaultEntry!2266 newMap!16) (defaultEntry!2266 (v!2586 (underlying!278 thiss!992)))) t!5164) tb!1611))

(declare-fun result!2799 () Bool)

(assert (= result!2799 result!2795))

(assert (=> b!77367 t!5164))

(declare-fun b_and!4755 () Bool)

(assert (= b_and!4751 (and (=> t!5164 result!2799) b_and!4755)))

(declare-fun m!77271 () Bool)

(assert (=> b!77377 m!77271))

(declare-fun m!77273 () Bool)

(assert (=> b!77377 m!77273))

(declare-fun m!77275 () Bool)

(assert (=> b!77377 m!77275))

(declare-fun m!77277 () Bool)

(assert (=> b!77377 m!77277))

(assert (=> b!77377 m!77271))

(declare-fun m!77279 () Bool)

(assert (=> b!77377 m!77279))

(assert (=> b!77377 m!77271))

(declare-fun m!77281 () Bool)

(assert (=> b!77377 m!77281))

(declare-fun m!77283 () Bool)

(assert (=> b!77377 m!77283))

(declare-fun m!77285 () Bool)

(assert (=> b!77377 m!77285))

(declare-fun m!77287 () Bool)

(assert (=> b!77377 m!77287))

(declare-fun m!77289 () Bool)

(assert (=> b!77377 m!77289))

(declare-fun m!77291 () Bool)

(assert (=> b!77377 m!77291))

(assert (=> b!77377 m!77279))

(declare-fun m!77293 () Bool)

(assert (=> b!77377 m!77293))

(declare-fun m!77295 () Bool)

(assert (=> b!77373 m!77295))

(declare-fun m!77297 () Bool)

(assert (=> b!77362 m!77297))

(declare-fun m!77299 () Bool)

(assert (=> b!77362 m!77299))

(assert (=> b!77362 m!77271))

(declare-fun m!77301 () Bool)

(assert (=> b!77362 m!77301))

(assert (=> b!77362 m!77271))

(assert (=> b!77362 m!77271))

(declare-fun m!77303 () Bool)

(assert (=> b!77362 m!77303))

(assert (=> b!77362 m!77271))

(declare-fun m!77305 () Bool)

(assert (=> b!77362 m!77305))

(assert (=> b!77367 m!77271))

(declare-fun m!77307 () Bool)

(assert (=> b!77367 m!77307))

(declare-fun m!77309 () Bool)

(assert (=> b!77367 m!77309))

(assert (=> b!77367 m!77307))

(assert (=> b!77367 m!77309))

(declare-fun m!77311 () Bool)

(assert (=> b!77367 m!77311))

(declare-fun m!77313 () Bool)

(assert (=> b!77376 m!77313))

(declare-fun m!77315 () Bool)

(assert (=> b!77376 m!77315))

(assert (=> b!77364 m!77271))

(assert (=> b!77364 m!77271))

(declare-fun m!77317 () Bool)

(assert (=> b!77364 m!77317))

(assert (=> b!77364 m!77271))

(declare-fun m!77319 () Bool)

(assert (=> b!77364 m!77319))

(declare-fun m!77321 () Bool)

(assert (=> b!77366 m!77321))

(declare-fun m!77323 () Bool)

(assert (=> b!77366 m!77323))

(declare-fun m!77325 () Bool)

(assert (=> start!10156 m!77325))

(declare-fun m!77327 () Bool)

(assert (=> b!77372 m!77327))

(declare-fun m!77329 () Bool)

(assert (=> b!77372 m!77329))

(declare-fun m!77331 () Bool)

(assert (=> mapNonEmpty!3282 m!77331))

(declare-fun m!77333 () Bool)

(assert (=> mapNonEmpty!3281 m!77333))

(check-sat (not b!77373) (not mapNonEmpty!3281) (not mapNonEmpty!3282) (not b_next!2179) (not b!77367) (not b!77366) (not b_next!2177) (not b!77376) b_and!4755 (not start!10156) (not b!77372) b_and!4753 tp_is_empty!2505 (not b!77364) (not b!77377) (not b!77362) (not b_lambda!3475))
(check-sat b_and!4753 b_and!4755 (not b_next!2177) (not b_next!2179))
(get-model)

(declare-fun b_lambda!3479 () Bool)

(assert (= b_lambda!3475 (or (and b!77372 b_free!2177) (and b!77366 b_free!2179 (= (defaultEntry!2266 newMap!16) (defaultEntry!2266 (v!2586 (underlying!278 thiss!992))))) b_lambda!3479)))

(check-sat (not b!77373) (not mapNonEmpty!3281) (not mapNonEmpty!3282) (not b_next!2179) (not b!77367) (not b!77366) (not b!77376) (not b!77362) b_and!4755 (not start!10156) (not b!77372) b_and!4753 tp_is_empty!2505 (not b!77364) (not b!77377) (not b_lambda!3479) (not b_next!2177))
(check-sat b_and!4753 b_and!4755 (not b_next!2177) (not b_next!2179))
(get-model)

(declare-fun d!18353 () Bool)

(assert (=> d!18353 (= (array_inv!1123 (_keys!3926 newMap!16)) (bvsge (size!2129 (_keys!3926 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!77366 d!18353))

(declare-fun d!18355 () Bool)

(assert (=> d!18355 (= (array_inv!1124 (_values!2249 newMap!16)) (bvsge (size!2130 (_values!2249 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!77366 d!18355))

(declare-fun d!18357 () Bool)

(assert (=> d!18357 (not (arrayContainsKey!0 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!35454 () Unit!2248)

(declare-fun choose!68 (array!3960 (_ BitVec 32) (_ BitVec 64) List!1527) Unit!2248)

(assert (=> d!18357 (= lt!35454 (choose!68 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) (Cons!1523 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) Nil!1524)))))

(assert (=> d!18357 (bvslt (size!2129 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!18357 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) (Cons!1523 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) Nil!1524)) lt!35454)))

(declare-fun bs!3285 () Bool)

(assert (= bs!3285 d!18357))

(assert (=> bs!3285 m!77271))

(assert (=> bs!3285 m!77303))

(assert (=> bs!3285 m!77271))

(declare-fun m!77399 () Bool)

(assert (=> bs!3285 m!77399))

(assert (=> b!77362 d!18357))

(declare-fun d!18359 () Bool)

(assert (=> d!18359 (arrayNoDuplicates!0 (_keys!3926 (v!2586 (underlying!278 thiss!992))) from!355 Nil!1524)))

(declare-fun lt!35457 () Unit!2248)

(declare-fun choose!39 (array!3960 (_ BitVec 32) (_ BitVec 32)) Unit!2248)

(assert (=> d!18359 (= lt!35457 (choose!39 (_keys!3926 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!18359 (bvslt (size!2129 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!18359 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3926 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000000000000000 from!355) lt!35457)))

(declare-fun bs!3286 () Bool)

(assert (= bs!3286 d!18359))

(assert (=> bs!3286 m!77299))

(declare-fun m!77401 () Bool)

(assert (=> bs!3286 m!77401))

(assert (=> b!77362 d!18359))

(declare-fun d!18361 () Bool)

(declare-fun res!40640 () Bool)

(declare-fun e!50652 () Bool)

(assert (=> d!18361 (=> res!40640 e!50652)))

(assert (=> d!18361 (= res!40640 (= (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355)))))

(assert (=> d!18361 (= (arrayContainsKey!0 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!50652)))

(declare-fun b!77443 () Bool)

(declare-fun e!50653 () Bool)

(assert (=> b!77443 (= e!50652 e!50653)))

(declare-fun res!40641 () Bool)

(assert (=> b!77443 (=> (not res!40641) (not e!50653))))

(assert (=> b!77443 (= res!40641 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2129 (_keys!3926 (v!2586 (underlying!278 thiss!992))))))))

(declare-fun b!77444 () Bool)

(assert (=> b!77444 (= e!50653 (arrayContainsKey!0 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!18361 (not res!40640)) b!77443))

(assert (= (and b!77443 res!40641) b!77444))

(declare-fun m!77403 () Bool)

(assert (=> d!18361 m!77403))

(assert (=> b!77444 m!77271))

(declare-fun m!77405 () Bool)

(assert (=> b!77444 m!77405))

(assert (=> b!77362 d!18361))

(declare-fun d!18363 () Bool)

(declare-fun e!50656 () Bool)

(assert (=> d!18363 e!50656))

(declare-fun c!11815 () Bool)

(assert (=> d!18363 (= c!11815 (and (not (= (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!35460 () Unit!2248)

(declare-fun choose!459 (array!3960 array!3962 (_ BitVec 32) (_ BitVec 32) V!2987 V!2987 (_ BitVec 64) (_ BitVec 32) Int) Unit!2248)

(assert (=> d!18363 (= lt!35460 (choose!459 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (_values!2249 (v!2586 (underlying!278 thiss!992))) (mask!6259 (v!2586 (underlying!278 thiss!992))) (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) (zeroValue!2164 (v!2586 (underlying!278 thiss!992))) (minValue!2164 (v!2586 (underlying!278 thiss!992))) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2266 (v!2586 (underlying!278 thiss!992)))))))

(assert (=> d!18363 (validMask!0 (mask!6259 (v!2586 (underlying!278 thiss!992))))))

(assert (=> d!18363 (= (lemmaListMapContainsThenArrayContainsFrom!61 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (_values!2249 (v!2586 (underlying!278 thiss!992))) (mask!6259 (v!2586 (underlying!278 thiss!992))) (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) (zeroValue!2164 (v!2586 (underlying!278 thiss!992))) (minValue!2164 (v!2586 (underlying!278 thiss!992))) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2266 (v!2586 (underlying!278 thiss!992)))) lt!35460)))

(declare-fun b!77449 () Bool)

(assert (=> b!77449 (= e!50656 (arrayContainsKey!0 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!77450 () Bool)

(assert (=> b!77450 (= e!50656 (ite (= (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!18363 c!11815) b!77449))

(assert (= (and d!18363 (not c!11815)) b!77450))

(assert (=> d!18363 m!77271))

(declare-fun m!77407 () Bool)

(assert (=> d!18363 m!77407))

(assert (=> d!18363 m!77275))

(assert (=> b!77449 m!77271))

(assert (=> b!77449 m!77303))

(assert (=> b!77362 d!18363))

(declare-fun d!18365 () Bool)

(declare-fun res!40649 () Bool)

(declare-fun e!50667 () Bool)

(assert (=> d!18365 (=> res!40649 e!50667)))

(assert (=> d!18365 (= res!40649 (bvsge from!355 (size!2129 (_keys!3926 (v!2586 (underlying!278 thiss!992))))))))

(assert (=> d!18365 (= (arrayNoDuplicates!0 (_keys!3926 (v!2586 (underlying!278 thiss!992))) from!355 Nil!1524) e!50667)))

(declare-fun b!77461 () Bool)

(declare-fun e!50668 () Bool)

(declare-fun e!50665 () Bool)

(assert (=> b!77461 (= e!50668 e!50665)))

(declare-fun c!11818 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!77461 (= c!11818 (validKeyInArray!0 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355)))))

(declare-fun b!77462 () Bool)

(declare-fun call!6976 () Bool)

(assert (=> b!77462 (= e!50665 call!6976)))

(declare-fun b!77463 () Bool)

(declare-fun e!50666 () Bool)

(declare-fun contains!743 (List!1527 (_ BitVec 64)) Bool)

(assert (=> b!77463 (= e!50666 (contains!743 Nil!1524 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355)))))

(declare-fun b!77464 () Bool)

(assert (=> b!77464 (= e!50667 e!50668)))

(declare-fun res!40648 () Bool)

(assert (=> b!77464 (=> (not res!40648) (not e!50668))))

(assert (=> b!77464 (= res!40648 (not e!50666))))

(declare-fun res!40650 () Bool)

(assert (=> b!77464 (=> (not res!40650) (not e!50666))))

(assert (=> b!77464 (= res!40650 (validKeyInArray!0 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355)))))

(declare-fun b!77465 () Bool)

(assert (=> b!77465 (= e!50665 call!6976)))

(declare-fun bm!6973 () Bool)

(assert (=> bm!6973 (= call!6976 (arrayNoDuplicates!0 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!11818 (Cons!1523 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) Nil!1524) Nil!1524)))))

(assert (= (and d!18365 (not res!40649)) b!77464))

(assert (= (and b!77464 res!40650) b!77463))

(assert (= (and b!77464 res!40648) b!77461))

(assert (= (and b!77461 c!11818) b!77462))

(assert (= (and b!77461 (not c!11818)) b!77465))

(assert (= (or b!77462 b!77465) bm!6973))

(assert (=> b!77461 m!77271))

(assert (=> b!77461 m!77271))

(declare-fun m!77409 () Bool)

(assert (=> b!77461 m!77409))

(assert (=> b!77463 m!77271))

(assert (=> b!77463 m!77271))

(declare-fun m!77411 () Bool)

(assert (=> b!77463 m!77411))

(assert (=> b!77464 m!77271))

(assert (=> b!77464 m!77271))

(assert (=> b!77464 m!77409))

(assert (=> bm!6973 m!77271))

(declare-fun m!77413 () Bool)

(assert (=> bm!6973 m!77413))

(assert (=> b!77362 d!18365))

(declare-fun d!18367 () Bool)

(assert (=> d!18367 (= (map!1175 newMap!16) (getCurrentListMap!433 (_keys!3926 newMap!16) (_values!2249 newMap!16) (mask!6259 newMap!16) (extraKeys!2117 newMap!16) (zeroValue!2164 newMap!16) (minValue!2164 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2266 newMap!16)))))

(declare-fun bs!3287 () Bool)

(assert (= bs!3287 d!18367))

(declare-fun m!77415 () Bool)

(assert (=> bs!3287 m!77415))

(assert (=> b!77376 d!18367))

(declare-fun b!77508 () Bool)

(declare-fun e!50695 () Unit!2248)

(declare-fun lt!35506 () Unit!2248)

(assert (=> b!77508 (= e!50695 lt!35506)))

(declare-fun lt!35513 () ListLongMap!1459)

(assert (=> b!77508 (= lt!35513 (getCurrentListMapNoExtraKeys!70 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (_values!2249 (v!2586 (underlying!278 thiss!992))) (mask!6259 (v!2586 (underlying!278 thiss!992))) (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) (zeroValue!2164 (v!2586 (underlying!278 thiss!992))) (minValue!2164 (v!2586 (underlying!278 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2266 (v!2586 (underlying!278 thiss!992)))))))

(declare-fun lt!35522 () (_ BitVec 64))

(assert (=> b!77508 (= lt!35522 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!35509 () (_ BitVec 64))

(assert (=> b!77508 (= lt!35509 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!35518 () Unit!2248)

(declare-fun addStillContains!54 (ListLongMap!1459 (_ BitVec 64) V!2987 (_ BitVec 64)) Unit!2248)

(assert (=> b!77508 (= lt!35518 (addStillContains!54 lt!35513 lt!35522 (zeroValue!2164 (v!2586 (underlying!278 thiss!992))) lt!35509))))

(assert (=> b!77508 (contains!742 (+!106 lt!35513 (tuple2!2183 lt!35522 (zeroValue!2164 (v!2586 (underlying!278 thiss!992))))) lt!35509)))

(declare-fun lt!35520 () Unit!2248)

(assert (=> b!77508 (= lt!35520 lt!35518)))

(declare-fun lt!35516 () ListLongMap!1459)

(assert (=> b!77508 (= lt!35516 (getCurrentListMapNoExtraKeys!70 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (_values!2249 (v!2586 (underlying!278 thiss!992))) (mask!6259 (v!2586 (underlying!278 thiss!992))) (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) (zeroValue!2164 (v!2586 (underlying!278 thiss!992))) (minValue!2164 (v!2586 (underlying!278 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2266 (v!2586 (underlying!278 thiss!992)))))))

(declare-fun lt!35505 () (_ BitVec 64))

(assert (=> b!77508 (= lt!35505 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!35515 () (_ BitVec 64))

(assert (=> b!77508 (= lt!35515 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!35524 () Unit!2248)

(declare-fun addApplyDifferent!54 (ListLongMap!1459 (_ BitVec 64) V!2987 (_ BitVec 64)) Unit!2248)

(assert (=> b!77508 (= lt!35524 (addApplyDifferent!54 lt!35516 lt!35505 (minValue!2164 (v!2586 (underlying!278 thiss!992))) lt!35515))))

(declare-fun apply!78 (ListLongMap!1459 (_ BitVec 64)) V!2987)

(assert (=> b!77508 (= (apply!78 (+!106 lt!35516 (tuple2!2183 lt!35505 (minValue!2164 (v!2586 (underlying!278 thiss!992))))) lt!35515) (apply!78 lt!35516 lt!35515))))

(declare-fun lt!35512 () Unit!2248)

(assert (=> b!77508 (= lt!35512 lt!35524)))

(declare-fun lt!35521 () ListLongMap!1459)

(assert (=> b!77508 (= lt!35521 (getCurrentListMapNoExtraKeys!70 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (_values!2249 (v!2586 (underlying!278 thiss!992))) (mask!6259 (v!2586 (underlying!278 thiss!992))) (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) (zeroValue!2164 (v!2586 (underlying!278 thiss!992))) (minValue!2164 (v!2586 (underlying!278 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2266 (v!2586 (underlying!278 thiss!992)))))))

(declare-fun lt!35514 () (_ BitVec 64))

(assert (=> b!77508 (= lt!35514 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!35517 () (_ BitVec 64))

(assert (=> b!77508 (= lt!35517 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!35508 () Unit!2248)

(assert (=> b!77508 (= lt!35508 (addApplyDifferent!54 lt!35521 lt!35514 (zeroValue!2164 (v!2586 (underlying!278 thiss!992))) lt!35517))))

(assert (=> b!77508 (= (apply!78 (+!106 lt!35521 (tuple2!2183 lt!35514 (zeroValue!2164 (v!2586 (underlying!278 thiss!992))))) lt!35517) (apply!78 lt!35521 lt!35517))))

(declare-fun lt!35507 () Unit!2248)

(assert (=> b!77508 (= lt!35507 lt!35508)))

(declare-fun lt!35510 () ListLongMap!1459)

(assert (=> b!77508 (= lt!35510 (getCurrentListMapNoExtraKeys!70 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (_values!2249 (v!2586 (underlying!278 thiss!992))) (mask!6259 (v!2586 (underlying!278 thiss!992))) (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) (zeroValue!2164 (v!2586 (underlying!278 thiss!992))) (minValue!2164 (v!2586 (underlying!278 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2266 (v!2586 (underlying!278 thiss!992)))))))

(declare-fun lt!35511 () (_ BitVec 64))

(assert (=> b!77508 (= lt!35511 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!35523 () (_ BitVec 64))

(assert (=> b!77508 (= lt!35523 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!77508 (= lt!35506 (addApplyDifferent!54 lt!35510 lt!35511 (minValue!2164 (v!2586 (underlying!278 thiss!992))) lt!35523))))

(assert (=> b!77508 (= (apply!78 (+!106 lt!35510 (tuple2!2183 lt!35511 (minValue!2164 (v!2586 (underlying!278 thiss!992))))) lt!35523) (apply!78 lt!35510 lt!35523))))

(declare-fun b!77509 () Bool)

(declare-fun e!50706 () Bool)

(declare-fun e!50699 () Bool)

(assert (=> b!77509 (= e!50706 e!50699)))

(declare-fun res!40674 () Bool)

(declare-fun call!6993 () Bool)

(assert (=> b!77509 (= res!40674 call!6993)))

(assert (=> b!77509 (=> (not res!40674) (not e!50699))))

(declare-fun b!77510 () Bool)

(assert (=> b!77510 (= e!50706 (not call!6993))))

(declare-fun b!77511 () Bool)

(declare-fun c!11835 () Bool)

(assert (=> b!77511 (= c!11835 (and (not (= (bvand (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!50704 () ListLongMap!1459)

(declare-fun e!50702 () ListLongMap!1459)

(assert (=> b!77511 (= e!50704 e!50702)))

(declare-fun bm!6988 () Bool)

(declare-fun call!6992 () ListLongMap!1459)

(declare-fun call!6997 () ListLongMap!1459)

(assert (=> bm!6988 (= call!6992 call!6997)))

(declare-fun b!77512 () Bool)

(declare-fun e!50697 () ListLongMap!1459)

(assert (=> b!77512 (= e!50697 e!50704)))

(declare-fun c!11833 () Bool)

(assert (=> b!77512 (= c!11833 (and (not (= (bvand (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!77513 () Bool)

(declare-fun Unit!2256 () Unit!2248)

(assert (=> b!77513 (= e!50695 Unit!2256)))

(declare-fun b!77514 () Bool)

(assert (=> b!77514 (= e!50702 call!6992)))

(declare-fun b!77515 () Bool)

(declare-fun res!40671 () Bool)

(declare-fun e!50703 () Bool)

(assert (=> b!77515 (=> (not res!40671) (not e!50703))))

(assert (=> b!77515 (= res!40671 e!50706)))

(declare-fun c!11832 () Bool)

(assert (=> b!77515 (= c!11832 (not (= (bvand (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!6989 () Bool)

(declare-fun lt!35526 () ListLongMap!1459)

(assert (=> bm!6989 (= call!6993 (contains!742 lt!35526 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!77516 () Bool)

(declare-fun e!50700 () Bool)

(declare-fun e!50707 () Bool)

(assert (=> b!77516 (= e!50700 e!50707)))

(declare-fun res!40670 () Bool)

(declare-fun call!6995 () Bool)

(assert (=> b!77516 (= res!40670 call!6995)))

(assert (=> b!77516 (=> (not res!40670) (not e!50707))))

(declare-fun b!77517 () Bool)

(assert (=> b!77517 (= e!50703 e!50700)))

(declare-fun c!11836 () Bool)

(assert (=> b!77517 (= c!11836 (not (= (bvand (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!6990 () Bool)

(declare-fun call!6996 () ListLongMap!1459)

(declare-fun call!6991 () ListLongMap!1459)

(assert (=> bm!6990 (= call!6996 call!6991)))

(declare-fun b!77518 () Bool)

(declare-fun e!50696 () Bool)

(assert (=> b!77518 (= e!50696 (validKeyInArray!0 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun d!18369 () Bool)

(assert (=> d!18369 e!50703))

(declare-fun res!40675 () Bool)

(assert (=> d!18369 (=> (not res!40675) (not e!50703))))

(assert (=> d!18369 (= res!40675 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2129 (_keys!3926 (v!2586 (underlying!278 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2129 (_keys!3926 (v!2586 (underlying!278 thiss!992))))))))))

(declare-fun lt!35525 () ListLongMap!1459)

(assert (=> d!18369 (= lt!35526 lt!35525)))

(declare-fun lt!35519 () Unit!2248)

(assert (=> d!18369 (= lt!35519 e!50695)))

(declare-fun c!11834 () Bool)

(assert (=> d!18369 (= c!11834 e!50696)))

(declare-fun res!40673 () Bool)

(assert (=> d!18369 (=> (not res!40673) (not e!50696))))

(assert (=> d!18369 (= res!40673 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2129 (_keys!3926 (v!2586 (underlying!278 thiss!992))))))))

(assert (=> d!18369 (= lt!35525 e!50697)))

(declare-fun c!11831 () Bool)

(assert (=> d!18369 (= c!11831 (and (not (= (bvand (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!18369 (validMask!0 (mask!6259 (v!2586 (underlying!278 thiss!992))))))

(assert (=> d!18369 (= (getCurrentListMap!433 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (_values!2249 (v!2586 (underlying!278 thiss!992))) (mask!6259 (v!2586 (underlying!278 thiss!992))) (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) (zeroValue!2164 (v!2586 (underlying!278 thiss!992))) (minValue!2164 (v!2586 (underlying!278 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2266 (v!2586 (underlying!278 thiss!992)))) lt!35526)))

(declare-fun b!77519 () Bool)

(assert (=> b!77519 (= e!50707 (= (apply!78 lt!35526 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2164 (v!2586 (underlying!278 thiss!992)))))))

(declare-fun b!77520 () Bool)

(declare-fun e!50705 () Bool)

(assert (=> b!77520 (= e!50705 (= (apply!78 lt!35526 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1182 (select (arr!1889 (_values!2249 (v!2586 (underlying!278 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!343 (defaultEntry!2266 (v!2586 (underlying!278 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!77520 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2130 (_values!2249 (v!2586 (underlying!278 thiss!992))))))))

(assert (=> b!77520 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2129 (_keys!3926 (v!2586 (underlying!278 thiss!992))))))))

(declare-fun bm!6991 () Bool)

(declare-fun call!6994 () ListLongMap!1459)

(assert (=> bm!6991 (= call!6994 (getCurrentListMapNoExtraKeys!70 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (_values!2249 (v!2586 (underlying!278 thiss!992))) (mask!6259 (v!2586 (underlying!278 thiss!992))) (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) (zeroValue!2164 (v!2586 (underlying!278 thiss!992))) (minValue!2164 (v!2586 (underlying!278 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2266 (v!2586 (underlying!278 thiss!992)))))))

(declare-fun b!77521 () Bool)

(declare-fun e!50698 () Bool)

(assert (=> b!77521 (= e!50698 (validKeyInArray!0 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun bm!6992 () Bool)

(assert (=> bm!6992 (= call!6995 (contains!742 lt!35526 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!77522 () Bool)

(assert (=> b!77522 (= e!50700 (not call!6995))))

(declare-fun b!77523 () Bool)

(assert (=> b!77523 (= e!50704 call!6996)))

(declare-fun bm!6993 () Bool)

(assert (=> bm!6993 (= call!6997 call!6994)))

(declare-fun bm!6994 () Bool)

(assert (=> bm!6994 (= call!6991 (+!106 (ite c!11831 call!6994 (ite c!11833 call!6997 call!6992)) (ite (or c!11831 c!11833) (tuple2!2183 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2164 (v!2586 (underlying!278 thiss!992)))) (tuple2!2183 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2164 (v!2586 (underlying!278 thiss!992)))))))))

(declare-fun b!77524 () Bool)

(assert (=> b!77524 (= e!50702 call!6996)))

(declare-fun b!77525 () Bool)

(assert (=> b!77525 (= e!50697 (+!106 call!6991 (tuple2!2183 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2164 (v!2586 (underlying!278 thiss!992))))))))

(declare-fun b!77526 () Bool)

(declare-fun res!40669 () Bool)

(assert (=> b!77526 (=> (not res!40669) (not e!50703))))

(declare-fun e!50701 () Bool)

(assert (=> b!77526 (= res!40669 e!50701)))

(declare-fun res!40677 () Bool)

(assert (=> b!77526 (=> res!40677 e!50701)))

(assert (=> b!77526 (= res!40677 (not e!50698))))

(declare-fun res!40672 () Bool)

(assert (=> b!77526 (=> (not res!40672) (not e!50698))))

(assert (=> b!77526 (= res!40672 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2129 (_keys!3926 (v!2586 (underlying!278 thiss!992))))))))

(declare-fun b!77527 () Bool)

(assert (=> b!77527 (= e!50701 e!50705)))

(declare-fun res!40676 () Bool)

(assert (=> b!77527 (=> (not res!40676) (not e!50705))))

(assert (=> b!77527 (= res!40676 (contains!742 lt!35526 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!77527 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2129 (_keys!3926 (v!2586 (underlying!278 thiss!992))))))))

(declare-fun b!77528 () Bool)

(assert (=> b!77528 (= e!50699 (= (apply!78 lt!35526 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2164 (v!2586 (underlying!278 thiss!992)))))))

(assert (= (and d!18369 c!11831) b!77525))

(assert (= (and d!18369 (not c!11831)) b!77512))

(assert (= (and b!77512 c!11833) b!77523))

(assert (= (and b!77512 (not c!11833)) b!77511))

(assert (= (and b!77511 c!11835) b!77524))

(assert (= (and b!77511 (not c!11835)) b!77514))

(assert (= (or b!77524 b!77514) bm!6988))

(assert (= (or b!77523 bm!6988) bm!6993))

(assert (= (or b!77523 b!77524) bm!6990))

(assert (= (or b!77525 bm!6993) bm!6991))

(assert (= (or b!77525 bm!6990) bm!6994))

(assert (= (and d!18369 res!40673) b!77518))

(assert (= (and d!18369 c!11834) b!77508))

(assert (= (and d!18369 (not c!11834)) b!77513))

(assert (= (and d!18369 res!40675) b!77526))

(assert (= (and b!77526 res!40672) b!77521))

(assert (= (and b!77526 (not res!40677)) b!77527))

(assert (= (and b!77527 res!40676) b!77520))

(assert (= (and b!77526 res!40669) b!77515))

(assert (= (and b!77515 c!11832) b!77509))

(assert (= (and b!77515 (not c!11832)) b!77510))

(assert (= (and b!77509 res!40674) b!77528))

(assert (= (or b!77509 b!77510) bm!6989))

(assert (= (and b!77515 res!40671) b!77517))

(assert (= (and b!77517 c!11836) b!77516))

(assert (= (and b!77517 (not c!11836)) b!77522))

(assert (= (and b!77516 res!40670) b!77519))

(assert (= (or b!77516 b!77522) bm!6992))

(declare-fun b_lambda!3481 () Bool)

(assert (=> (not b_lambda!3481) (not b!77520)))

(assert (=> b!77520 t!5162))

(declare-fun b_and!4765 () Bool)

(assert (= b_and!4753 (and (=> t!5162 result!2795) b_and!4765)))

(assert (=> b!77520 t!5164))

(declare-fun b_and!4767 () Bool)

(assert (= b_and!4755 (and (=> t!5164 result!2799) b_and!4767)))

(assert (=> b!77527 m!77403))

(assert (=> b!77527 m!77403))

(declare-fun m!77417 () Bool)

(assert (=> b!77527 m!77417))

(declare-fun m!77419 () Bool)

(assert (=> b!77525 m!77419))

(declare-fun m!77421 () Bool)

(assert (=> b!77519 m!77421))

(assert (=> bm!6991 m!77289))

(declare-fun m!77423 () Bool)

(assert (=> bm!6994 m!77423))

(declare-fun m!77425 () Bool)

(assert (=> b!77528 m!77425))

(assert (=> b!77521 m!77403))

(assert (=> b!77521 m!77403))

(declare-fun m!77427 () Bool)

(assert (=> b!77521 m!77427))

(declare-fun m!77429 () Bool)

(assert (=> bm!6992 m!77429))

(declare-fun m!77431 () Bool)

(assert (=> bm!6989 m!77431))

(assert (=> b!77518 m!77403))

(assert (=> b!77518 m!77403))

(assert (=> b!77518 m!77427))

(assert (=> d!18369 m!77275))

(declare-fun m!77433 () Bool)

(assert (=> b!77508 m!77433))

(declare-fun m!77435 () Bool)

(assert (=> b!77508 m!77435))

(declare-fun m!77437 () Bool)

(assert (=> b!77508 m!77437))

(declare-fun m!77439 () Bool)

(assert (=> b!77508 m!77439))

(declare-fun m!77441 () Bool)

(assert (=> b!77508 m!77441))

(declare-fun m!77443 () Bool)

(assert (=> b!77508 m!77443))

(declare-fun m!77445 () Bool)

(assert (=> b!77508 m!77445))

(declare-fun m!77447 () Bool)

(assert (=> b!77508 m!77447))

(declare-fun m!77449 () Bool)

(assert (=> b!77508 m!77449))

(assert (=> b!77508 m!77443))

(declare-fun m!77451 () Bool)

(assert (=> b!77508 m!77451))

(declare-fun m!77453 () Bool)

(assert (=> b!77508 m!77453))

(declare-fun m!77455 () Bool)

(assert (=> b!77508 m!77455))

(assert (=> b!77508 m!77453))

(assert (=> b!77508 m!77437))

(declare-fun m!77457 () Bool)

(assert (=> b!77508 m!77457))

(assert (=> b!77508 m!77433))

(assert (=> b!77508 m!77403))

(declare-fun m!77459 () Bool)

(assert (=> b!77508 m!77459))

(assert (=> b!77508 m!77289))

(declare-fun m!77461 () Bool)

(assert (=> b!77508 m!77461))

(assert (=> b!77520 m!77403))

(assert (=> b!77520 m!77403))

(declare-fun m!77463 () Bool)

(assert (=> b!77520 m!77463))

(declare-fun m!77465 () Bool)

(assert (=> b!77520 m!77465))

(assert (=> b!77520 m!77309))

(declare-fun m!77467 () Bool)

(assert (=> b!77520 m!77467))

(assert (=> b!77520 m!77465))

(assert (=> b!77520 m!77309))

(assert (=> b!77376 d!18369))

(declare-fun d!18371 () Bool)

(declare-fun c!11839 () Bool)

(assert (=> d!18371 (= c!11839 ((_ is ValueCellFull!909) (select (arr!1889 (_values!2249 (v!2586 (underlying!278 thiss!992)))) from!355)))))

(declare-fun e!50710 () V!2987)

(assert (=> d!18371 (= (get!1182 (select (arr!1889 (_values!2249 (v!2586 (underlying!278 thiss!992)))) from!355) (dynLambda!343 (defaultEntry!2266 (v!2586 (underlying!278 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!50710)))

(declare-fun b!77533 () Bool)

(declare-fun get!1184 (ValueCell!909 V!2987) V!2987)

(assert (=> b!77533 (= e!50710 (get!1184 (select (arr!1889 (_values!2249 (v!2586 (underlying!278 thiss!992)))) from!355) (dynLambda!343 (defaultEntry!2266 (v!2586 (underlying!278 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!77534 () Bool)

(declare-fun get!1185 (ValueCell!909 V!2987) V!2987)

(assert (=> b!77534 (= e!50710 (get!1185 (select (arr!1889 (_values!2249 (v!2586 (underlying!278 thiss!992)))) from!355) (dynLambda!343 (defaultEntry!2266 (v!2586 (underlying!278 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!18371 c!11839) b!77533))

(assert (= (and d!18371 (not c!11839)) b!77534))

(assert (=> b!77533 m!77307))

(assert (=> b!77533 m!77309))

(declare-fun m!77469 () Bool)

(assert (=> b!77533 m!77469))

(assert (=> b!77534 m!77307))

(assert (=> b!77534 m!77309))

(declare-fun m!77471 () Bool)

(assert (=> b!77534 m!77471))

(assert (=> b!77367 d!18371))

(declare-fun d!18373 () Bool)

(assert (=> d!18373 (= (valid!309 thiss!992) (valid!310 (v!2586 (underlying!278 thiss!992))))))

(declare-fun bs!3288 () Bool)

(assert (= bs!3288 d!18373))

(declare-fun m!77473 () Bool)

(assert (=> bs!3288 m!77473))

(assert (=> start!10156 d!18373))

(declare-fun d!18375 () Bool)

(declare-fun res!40684 () Bool)

(declare-fun e!50713 () Bool)

(assert (=> d!18375 (=> (not res!40684) (not e!50713))))

(declare-fun simpleValid!53 (LongMapFixedSize!726) Bool)

(assert (=> d!18375 (= res!40684 (simpleValid!53 newMap!16))))

(assert (=> d!18375 (= (valid!310 newMap!16) e!50713)))

(declare-fun b!77541 () Bool)

(declare-fun res!40685 () Bool)

(assert (=> b!77541 (=> (not res!40685) (not e!50713))))

(declare-fun arrayCountValidKeys!0 (array!3960 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!77541 (= res!40685 (= (arrayCountValidKeys!0 (_keys!3926 newMap!16) #b00000000000000000000000000000000 (size!2129 (_keys!3926 newMap!16))) (_size!412 newMap!16)))))

(declare-fun b!77542 () Bool)

(declare-fun res!40686 () Bool)

(assert (=> b!77542 (=> (not res!40686) (not e!50713))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3960 (_ BitVec 32)) Bool)

(assert (=> b!77542 (= res!40686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3926 newMap!16) (mask!6259 newMap!16)))))

(declare-fun b!77543 () Bool)

(assert (=> b!77543 (= e!50713 (arrayNoDuplicates!0 (_keys!3926 newMap!16) #b00000000000000000000000000000000 Nil!1524))))

(assert (= (and d!18375 res!40684) b!77541))

(assert (= (and b!77541 res!40685) b!77542))

(assert (= (and b!77542 res!40686) b!77543))

(declare-fun m!77475 () Bool)

(assert (=> d!18375 m!77475))

(declare-fun m!77477 () Bool)

(assert (=> b!77541 m!77477))

(declare-fun m!77479 () Bool)

(assert (=> b!77542 m!77479))

(declare-fun m!77481 () Bool)

(assert (=> b!77543 m!77481))

(assert (=> b!77373 d!18375))

(declare-fun d!18377 () Bool)

(declare-fun e!50716 () Bool)

(assert (=> d!18377 e!50716))

(declare-fun res!40692 () Bool)

(assert (=> d!18377 (=> (not res!40692) (not e!50716))))

(declare-fun lt!35538 () ListLongMap!1459)

(assert (=> d!18377 (= res!40692 (contains!742 lt!35538 (_1!1101 lt!35381)))))

(declare-fun lt!35537 () List!1528)

(assert (=> d!18377 (= lt!35538 (ListLongMap!1460 lt!35537))))

(declare-fun lt!35535 () Unit!2248)

(declare-fun lt!35536 () Unit!2248)

(assert (=> d!18377 (= lt!35535 lt!35536)))

(declare-datatypes ((Option!141 0))(
  ( (Some!140 (v!2590 V!2987)) (None!139) )
))
(declare-fun getValueByKey!135 (List!1528 (_ BitVec 64)) Option!141)

(assert (=> d!18377 (= (getValueByKey!135 lt!35537 (_1!1101 lt!35381)) (Some!140 (_2!1101 lt!35381)))))

(declare-fun lemmaContainsTupThenGetReturnValue!54 (List!1528 (_ BitVec 64) V!2987) Unit!2248)

(assert (=> d!18377 (= lt!35536 (lemmaContainsTupThenGetReturnValue!54 lt!35537 (_1!1101 lt!35381) (_2!1101 lt!35381)))))

(declare-fun insertStrictlySorted!56 (List!1528 (_ BitVec 64) V!2987) List!1528)

(assert (=> d!18377 (= lt!35537 (insertStrictlySorted!56 (toList!745 lt!35385) (_1!1101 lt!35381) (_2!1101 lt!35381)))))

(assert (=> d!18377 (= (+!106 lt!35385 lt!35381) lt!35538)))

(declare-fun b!77548 () Bool)

(declare-fun res!40691 () Bool)

(assert (=> b!77548 (=> (not res!40691) (not e!50716))))

(assert (=> b!77548 (= res!40691 (= (getValueByKey!135 (toList!745 lt!35538) (_1!1101 lt!35381)) (Some!140 (_2!1101 lt!35381))))))

(declare-fun b!77549 () Bool)

(declare-fun contains!744 (List!1528 tuple2!2182) Bool)

(assert (=> b!77549 (= e!50716 (contains!744 (toList!745 lt!35538) lt!35381))))

(assert (= (and d!18377 res!40692) b!77548))

(assert (= (and b!77548 res!40691) b!77549))

(declare-fun m!77483 () Bool)

(assert (=> d!18377 m!77483))

(declare-fun m!77485 () Bool)

(assert (=> d!18377 m!77485))

(declare-fun m!77487 () Bool)

(assert (=> d!18377 m!77487))

(declare-fun m!77489 () Bool)

(assert (=> d!18377 m!77489))

(declare-fun m!77491 () Bool)

(assert (=> b!77548 m!77491))

(declare-fun m!77493 () Bool)

(assert (=> b!77549 m!77493))

(assert (=> b!77377 d!18377))

(declare-fun b!77574 () Bool)

(declare-fun e!50732 () Bool)

(declare-fun e!50735 () Bool)

(assert (=> b!77574 (= e!50732 e!50735)))

(declare-fun c!11851 () Bool)

(assert (=> b!77574 (= c!11851 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2129 (_keys!3926 (v!2586 (underlying!278 thiss!992))))))))

(declare-fun b!77575 () Bool)

(declare-fun res!40704 () Bool)

(declare-fun e!50737 () Bool)

(assert (=> b!77575 (=> (not res!40704) (not e!50737))))

(declare-fun lt!35553 () ListLongMap!1459)

(assert (=> b!77575 (= res!40704 (not (contains!742 lt!35553 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!18379 () Bool)

(assert (=> d!18379 e!50737))

(declare-fun res!40703 () Bool)

(assert (=> d!18379 (=> (not res!40703) (not e!50737))))

(assert (=> d!18379 (= res!40703 (not (contains!742 lt!35553 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!50731 () ListLongMap!1459)

(assert (=> d!18379 (= lt!35553 e!50731)))

(declare-fun c!11850 () Bool)

(assert (=> d!18379 (= c!11850 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2129 (_keys!3926 (v!2586 (underlying!278 thiss!992))))))))

(assert (=> d!18379 (validMask!0 (mask!6259 (v!2586 (underlying!278 thiss!992))))))

(assert (=> d!18379 (= (getCurrentListMapNoExtraKeys!70 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (_values!2249 (v!2586 (underlying!278 thiss!992))) (mask!6259 (v!2586 (underlying!278 thiss!992))) (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) (zeroValue!2164 (v!2586 (underlying!278 thiss!992))) (minValue!2164 (v!2586 (underlying!278 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2266 (v!2586 (underlying!278 thiss!992)))) lt!35553)))

(declare-fun b!77576 () Bool)

(declare-fun e!50734 () Bool)

(assert (=> b!77576 (= e!50732 e!50734)))

(assert (=> b!77576 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2129 (_keys!3926 (v!2586 (underlying!278 thiss!992))))))))

(declare-fun res!40702 () Bool)

(assert (=> b!77576 (= res!40702 (contains!742 lt!35553 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!77576 (=> (not res!40702) (not e!50734))))

(declare-fun b!77577 () Bool)

(declare-fun isEmpty!330 (ListLongMap!1459) Bool)

(assert (=> b!77577 (= e!50735 (isEmpty!330 lt!35553))))

(declare-fun b!77578 () Bool)

(declare-fun e!50736 () ListLongMap!1459)

(assert (=> b!77578 (= e!50731 e!50736)))

(declare-fun c!11848 () Bool)

(assert (=> b!77578 (= c!11848 (validKeyInArray!0 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!77579 () Bool)

(assert (=> b!77579 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2129 (_keys!3926 (v!2586 (underlying!278 thiss!992))))))))

(assert (=> b!77579 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2130 (_values!2249 (v!2586 (underlying!278 thiss!992))))))))

(assert (=> b!77579 (= e!50734 (= (apply!78 lt!35553 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1182 (select (arr!1889 (_values!2249 (v!2586 (underlying!278 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!343 (defaultEntry!2266 (v!2586 (underlying!278 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!77580 () Bool)

(assert (=> b!77580 (= e!50735 (= lt!35553 (getCurrentListMapNoExtraKeys!70 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (_values!2249 (v!2586 (underlying!278 thiss!992))) (mask!6259 (v!2586 (underlying!278 thiss!992))) (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) (zeroValue!2164 (v!2586 (underlying!278 thiss!992))) (minValue!2164 (v!2586 (underlying!278 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2266 (v!2586 (underlying!278 thiss!992))))))))

(declare-fun b!77581 () Bool)

(declare-fun lt!35558 () Unit!2248)

(declare-fun lt!35555 () Unit!2248)

(assert (=> b!77581 (= lt!35558 lt!35555)))

(declare-fun lt!35557 () (_ BitVec 64))

(declare-fun lt!35554 () V!2987)

(declare-fun lt!35559 () (_ BitVec 64))

(declare-fun lt!35556 () ListLongMap!1459)

(assert (=> b!77581 (not (contains!742 (+!106 lt!35556 (tuple2!2183 lt!35559 lt!35554)) lt!35557))))

(declare-fun addStillNotContains!29 (ListLongMap!1459 (_ BitVec 64) V!2987 (_ BitVec 64)) Unit!2248)

(assert (=> b!77581 (= lt!35555 (addStillNotContains!29 lt!35556 lt!35559 lt!35554 lt!35557))))

(assert (=> b!77581 (= lt!35557 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!77581 (= lt!35554 (get!1182 (select (arr!1889 (_values!2249 (v!2586 (underlying!278 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!343 (defaultEntry!2266 (v!2586 (underlying!278 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!77581 (= lt!35559 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun call!7000 () ListLongMap!1459)

(assert (=> b!77581 (= lt!35556 call!7000)))

(assert (=> b!77581 (= e!50736 (+!106 call!7000 (tuple2!2183 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1182 (select (arr!1889 (_values!2249 (v!2586 (underlying!278 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!343 (defaultEntry!2266 (v!2586 (underlying!278 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!77582 () Bool)

(assert (=> b!77582 (= e!50737 e!50732)))

(declare-fun c!11849 () Bool)

(declare-fun e!50733 () Bool)

(assert (=> b!77582 (= c!11849 e!50733)))

(declare-fun res!40701 () Bool)

(assert (=> b!77582 (=> (not res!40701) (not e!50733))))

(assert (=> b!77582 (= res!40701 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2129 (_keys!3926 (v!2586 (underlying!278 thiss!992))))))))

(declare-fun b!77583 () Bool)

(assert (=> b!77583 (= e!50731 (ListLongMap!1460 Nil!1525))))

(declare-fun b!77584 () Bool)

(assert (=> b!77584 (= e!50733 (validKeyInArray!0 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!77584 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!77585 () Bool)

(assert (=> b!77585 (= e!50736 call!7000)))

(declare-fun bm!6997 () Bool)

(assert (=> bm!6997 (= call!7000 (getCurrentListMapNoExtraKeys!70 (_keys!3926 (v!2586 (underlying!278 thiss!992))) (_values!2249 (v!2586 (underlying!278 thiss!992))) (mask!6259 (v!2586 (underlying!278 thiss!992))) (extraKeys!2117 (v!2586 (underlying!278 thiss!992))) (zeroValue!2164 (v!2586 (underlying!278 thiss!992))) (minValue!2164 (v!2586 (underlying!278 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2266 (v!2586 (underlying!278 thiss!992)))))))

(assert (= (and d!18379 c!11850) b!77583))

(assert (= (and d!18379 (not c!11850)) b!77578))

(assert (= (and b!77578 c!11848) b!77581))

(assert (= (and b!77578 (not c!11848)) b!77585))

(assert (= (or b!77581 b!77585) bm!6997))

(assert (= (and d!18379 res!40703) b!77575))

(assert (= (and b!77575 res!40704) b!77582))

(assert (= (and b!77582 res!40701) b!77584))

(assert (= (and b!77582 c!11849) b!77576))

(assert (= (and b!77582 (not c!11849)) b!77574))

(assert (= (and b!77576 res!40702) b!77579))

(assert (= (and b!77574 c!11851) b!77580))

(assert (= (and b!77574 (not c!11851)) b!77577))

(declare-fun b_lambda!3483 () Bool)

(assert (=> (not b_lambda!3483) (not b!77579)))

(assert (=> b!77579 t!5162))

(declare-fun b_and!4769 () Bool)

(assert (= b_and!4765 (and (=> t!5162 result!2795) b_and!4769)))

(assert (=> b!77579 t!5164))

(declare-fun b_and!4771 () Bool)

(assert (= b_and!4767 (and (=> t!5164 result!2799) b_and!4771)))

(declare-fun b_lambda!3485 () Bool)

(assert (=> (not b_lambda!3485) (not b!77581)))

(assert (=> b!77581 t!5162))

(declare-fun b_and!4773 () Bool)

(assert (= b_and!4769 (and (=> t!5162 result!2795) b_and!4773)))

(assert (=> b!77581 t!5164))

(declare-fun b_and!4775 () Bool)

(assert (= b_and!4771 (and (=> t!5164 result!2799) b_and!4775)))

(assert (=> b!77578 m!77403))

(assert (=> b!77578 m!77403))

(assert (=> b!77578 m!77427))

(declare-fun m!77495 () Bool)

(assert (=> b!77581 m!77495))

(declare-fun m!77497 () Bool)

(assert (=> b!77581 m!77497))

(assert (=> b!77581 m!77465))

(assert (=> b!77581 m!77309))

(assert (=> b!77581 m!77467))

(declare-fun m!77499 () Bool)

(assert (=> b!77581 m!77499))

(assert (=> b!77581 m!77403))

(assert (=> b!77581 m!77309))

(assert (=> b!77581 m!77499))

(declare-fun m!77501 () Bool)

(assert (=> b!77581 m!77501))

(assert (=> b!77581 m!77465))

(declare-fun m!77503 () Bool)

(assert (=> bm!6997 m!77503))

(declare-fun m!77505 () Bool)

(assert (=> d!18379 m!77505))

(assert (=> d!18379 m!77275))

(assert (=> b!77584 m!77403))

(assert (=> b!77584 m!77403))

(assert (=> b!77584 m!77427))

(declare-fun m!77507 () Bool)

(assert (=> b!77575 m!77507))

(assert (=> b!77579 m!77403))

(declare-fun m!77509 () Bool)

(assert (=> b!77579 m!77509))

(assert (=> b!77579 m!77465))

(assert (=> b!77579 m!77465))

(assert (=> b!77579 m!77309))

(assert (=> b!77579 m!77467))

(assert (=> b!77579 m!77403))

(assert (=> b!77579 m!77309))

(assert (=> b!77576 m!77403))

(assert (=> b!77576 m!77403))

(declare-fun m!77511 () Bool)

(assert (=> b!77576 m!77511))

(assert (=> b!77580 m!77503))

(declare-fun m!77513 () Bool)

(assert (=> b!77577 m!77513))

(assert (=> b!77377 d!18379))

(declare-fun d!18381 () Bool)

(declare-fun e!50738 () Bool)

(assert (=> d!18381 e!50738))

(declare-fun res!40706 () Bool)

(assert (=> d!18381 (=> (not res!40706) (not e!50738))))

(declare-fun lt!35563 () ListLongMap!1459)

(assert (=> d!18381 (= res!40706 (contains!742 lt!35563 (_1!1101 lt!35388)))))

(declare-fun lt!35562 () List!1528)

(assert (=> d!18381 (= lt!35563 (ListLongMap!1460 lt!35562))))

(declare-fun lt!35560 () Unit!2248)

(declare-fun lt!35561 () Unit!2248)

(assert (=> d!18381 (= lt!35560 lt!35561)))

(assert (=> d!18381 (= (getValueByKey!135 lt!35562 (_1!1101 lt!35388)) (Some!140 (_2!1101 lt!35388)))))

(assert (=> d!18381 (= lt!35561 (lemmaContainsTupThenGetReturnValue!54 lt!35562 (_1!1101 lt!35388) (_2!1101 lt!35388)))))

(assert (=> d!18381 (= lt!35562 (insertStrictlySorted!56 (toList!745 lt!35395) (_1!1101 lt!35388) (_2!1101 lt!35388)))))

(assert (=> d!18381 (= (+!106 lt!35395 lt!35388) lt!35563)))

(declare-fun b!77586 () Bool)

(declare-fun res!40705 () Bool)

(assert (=> b!77586 (=> (not res!40705) (not e!50738))))

(assert (=> b!77586 (= res!40705 (= (getValueByKey!135 (toList!745 lt!35563) (_1!1101 lt!35388)) (Some!140 (_2!1101 lt!35388))))))

(declare-fun b!77587 () Bool)

(assert (=> b!77587 (= e!50738 (contains!744 (toList!745 lt!35563) lt!35388))))

(assert (= (and d!18381 res!40706) b!77586))

(assert (= (and b!77586 res!40705) b!77587))

(declare-fun m!77515 () Bool)

(assert (=> d!18381 m!77515))

(declare-fun m!77517 () Bool)

(assert (=> d!18381 m!77517))

(declare-fun m!77519 () Bool)

(assert (=> d!18381 m!77519))

(declare-fun m!77521 () Bool)

(assert (=> d!18381 m!77521))

(declare-fun m!77523 () Bool)

(assert (=> b!77586 m!77523))

(declare-fun m!77525 () Bool)

(assert (=> b!77587 m!77525))

(assert (=> b!77377 d!18381))

(declare-fun d!18383 () Bool)

(assert (=> d!18383 (= (+!106 (+!106 lt!35396 (tuple2!2183 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) lt!35383)) (tuple2!2183 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2164 (v!2586 (underlying!278 thiss!992))))) (+!106 (+!106 lt!35396 (tuple2!2183 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2164 (v!2586 (underlying!278 thiss!992))))) (tuple2!2183 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) lt!35383)))))

(declare-fun lt!35566 () Unit!2248)

(declare-fun choose!460 (ListLongMap!1459 (_ BitVec 64) V!2987 (_ BitVec 64) V!2987) Unit!2248)

(assert (=> d!18383 (= lt!35566 (choose!460 lt!35396 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) lt!35383 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2164 (v!2586 (underlying!278 thiss!992)))))))

(assert (=> d!18383 (not (= (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!18383 (= (addCommutativeForDiffKeys!25 lt!35396 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) lt!35383 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2164 (v!2586 (underlying!278 thiss!992)))) lt!35566)))

(declare-fun bs!3289 () Bool)

(assert (= bs!3289 d!18383))

(declare-fun m!77527 () Bool)

(assert (=> bs!3289 m!77527))

(declare-fun m!77529 () Bool)

(assert (=> bs!3289 m!77529))

(assert (=> bs!3289 m!77527))

(assert (=> bs!3289 m!77271))

(declare-fun m!77531 () Bool)

(assert (=> bs!3289 m!77531))

(declare-fun m!77533 () Bool)

(assert (=> bs!3289 m!77533))

(declare-fun m!77535 () Bool)

(assert (=> bs!3289 m!77535))

(assert (=> bs!3289 m!77533))

(assert (=> b!77377 d!18383))

(declare-fun d!18385 () Bool)

(declare-fun e!50739 () Bool)

(assert (=> d!18385 e!50739))

(declare-fun res!40708 () Bool)

(assert (=> d!18385 (=> (not res!40708) (not e!50739))))

(declare-fun lt!35570 () ListLongMap!1459)

(assert (=> d!18385 (= res!40708 (contains!742 lt!35570 (_1!1101 lt!35393)))))

(declare-fun lt!35569 () List!1528)

(assert (=> d!18385 (= lt!35570 (ListLongMap!1460 lt!35569))))

(declare-fun lt!35567 () Unit!2248)

(declare-fun lt!35568 () Unit!2248)

(assert (=> d!18385 (= lt!35567 lt!35568)))

(assert (=> d!18385 (= (getValueByKey!135 lt!35569 (_1!1101 lt!35393)) (Some!140 (_2!1101 lt!35393)))))

(assert (=> d!18385 (= lt!35568 (lemmaContainsTupThenGetReturnValue!54 lt!35569 (_1!1101 lt!35393) (_2!1101 lt!35393)))))

(assert (=> d!18385 (= lt!35569 (insertStrictlySorted!56 (toList!745 lt!35390) (_1!1101 lt!35393) (_2!1101 lt!35393)))))

(assert (=> d!18385 (= (+!106 lt!35390 lt!35393) lt!35570)))

(declare-fun b!77588 () Bool)

(declare-fun res!40707 () Bool)

(assert (=> b!77588 (=> (not res!40707) (not e!50739))))

(assert (=> b!77588 (= res!40707 (= (getValueByKey!135 (toList!745 lt!35570) (_1!1101 lt!35393)) (Some!140 (_2!1101 lt!35393))))))

(declare-fun b!77589 () Bool)

(assert (=> b!77589 (= e!50739 (contains!744 (toList!745 lt!35570) lt!35393))))

(assert (= (and d!18385 res!40708) b!77588))

(assert (= (and b!77588 res!40707) b!77589))

(declare-fun m!77537 () Bool)

(assert (=> d!18385 m!77537))

(declare-fun m!77539 () Bool)

(assert (=> d!18385 m!77539))

(declare-fun m!77541 () Bool)

(assert (=> d!18385 m!77541))

(declare-fun m!77543 () Bool)

(assert (=> d!18385 m!77543))

(declare-fun m!77545 () Bool)

(assert (=> b!77588 m!77545))

(declare-fun m!77547 () Bool)

(assert (=> b!77589 m!77547))

(assert (=> b!77377 d!18385))

(declare-fun d!18387 () Bool)

(declare-fun e!50740 () Bool)

(assert (=> d!18387 e!50740))

(declare-fun res!40710 () Bool)

(assert (=> d!18387 (=> (not res!40710) (not e!50740))))

(declare-fun lt!35574 () ListLongMap!1459)

(assert (=> d!18387 (= res!40710 (contains!742 lt!35574 (_1!1101 lt!35381)))))

(declare-fun lt!35573 () List!1528)

(assert (=> d!18387 (= lt!35574 (ListLongMap!1460 lt!35573))))

(declare-fun lt!35571 () Unit!2248)

(declare-fun lt!35572 () Unit!2248)

(assert (=> d!18387 (= lt!35571 lt!35572)))

(assert (=> d!18387 (= (getValueByKey!135 lt!35573 (_1!1101 lt!35381)) (Some!140 (_2!1101 lt!35381)))))

(assert (=> d!18387 (= lt!35572 (lemmaContainsTupThenGetReturnValue!54 lt!35573 (_1!1101 lt!35381) (_2!1101 lt!35381)))))

(assert (=> d!18387 (= lt!35573 (insertStrictlySorted!56 (toList!745 (+!106 lt!35396 lt!35393)) (_1!1101 lt!35381) (_2!1101 lt!35381)))))

(assert (=> d!18387 (= (+!106 (+!106 lt!35396 lt!35393) lt!35381) lt!35574)))

(declare-fun b!77590 () Bool)

(declare-fun res!40709 () Bool)

(assert (=> b!77590 (=> (not res!40709) (not e!50740))))

(assert (=> b!77590 (= res!40709 (= (getValueByKey!135 (toList!745 lt!35574) (_1!1101 lt!35381)) (Some!140 (_2!1101 lt!35381))))))

(declare-fun b!77591 () Bool)

(assert (=> b!77591 (= e!50740 (contains!744 (toList!745 lt!35574) lt!35381))))

(assert (= (and d!18387 res!40710) b!77590))

(assert (= (and b!77590 res!40709) b!77591))

(declare-fun m!77549 () Bool)

(assert (=> d!18387 m!77549))

(declare-fun m!77551 () Bool)

(assert (=> d!18387 m!77551))

(declare-fun m!77553 () Bool)

(assert (=> d!18387 m!77553))

(declare-fun m!77555 () Bool)

(assert (=> d!18387 m!77555))

(declare-fun m!77557 () Bool)

(assert (=> b!77590 m!77557))

(declare-fun m!77559 () Bool)

(assert (=> b!77591 m!77559))

(assert (=> b!77377 d!18387))

(declare-fun d!18389 () Bool)

(declare-fun e!50741 () Bool)

(assert (=> d!18389 e!50741))

(declare-fun res!40712 () Bool)

(assert (=> d!18389 (=> (not res!40712) (not e!50741))))

(declare-fun lt!35578 () ListLongMap!1459)

(assert (=> d!18389 (= res!40712 (contains!742 lt!35578 (_1!1101 lt!35393)))))

(declare-fun lt!35577 () List!1528)

(assert (=> d!18389 (= lt!35578 (ListLongMap!1460 lt!35577))))

(declare-fun lt!35575 () Unit!2248)

(declare-fun lt!35576 () Unit!2248)

(assert (=> d!18389 (= lt!35575 lt!35576)))

(assert (=> d!18389 (= (getValueByKey!135 lt!35577 (_1!1101 lt!35393)) (Some!140 (_2!1101 lt!35393)))))

(assert (=> d!18389 (= lt!35576 (lemmaContainsTupThenGetReturnValue!54 lt!35577 (_1!1101 lt!35393) (_2!1101 lt!35393)))))

(assert (=> d!18389 (= lt!35577 (insertStrictlySorted!56 (toList!745 lt!35396) (_1!1101 lt!35393) (_2!1101 lt!35393)))))

(assert (=> d!18389 (= (+!106 lt!35396 lt!35393) lt!35578)))

(declare-fun b!77592 () Bool)

(declare-fun res!40711 () Bool)

(assert (=> b!77592 (=> (not res!40711) (not e!50741))))

(assert (=> b!77592 (= res!40711 (= (getValueByKey!135 (toList!745 lt!35578) (_1!1101 lt!35393)) (Some!140 (_2!1101 lt!35393))))))

(declare-fun b!77593 () Bool)

(assert (=> b!77593 (= e!50741 (contains!744 (toList!745 lt!35578) lt!35393))))

(assert (= (and d!18389 res!40712) b!77592))

(assert (= (and b!77592 res!40711) b!77593))

(declare-fun m!77561 () Bool)

(assert (=> d!18389 m!77561))

(declare-fun m!77563 () Bool)

(assert (=> d!18389 m!77563))

(declare-fun m!77565 () Bool)

(assert (=> d!18389 m!77565))

(declare-fun m!77567 () Bool)

(assert (=> d!18389 m!77567))

(declare-fun m!77569 () Bool)

(assert (=> b!77592 m!77569))

(declare-fun m!77571 () Bool)

(assert (=> b!77593 m!77571))

(assert (=> b!77377 d!18389))

(declare-fun d!18391 () Bool)

(declare-fun e!50742 () Bool)

(assert (=> d!18391 e!50742))

(declare-fun res!40714 () Bool)

(assert (=> d!18391 (=> (not res!40714) (not e!50742))))

(declare-fun lt!35582 () ListLongMap!1459)

(assert (=> d!18391 (= res!40714 (contains!742 lt!35582 (_1!1101 lt!35388)))))

(declare-fun lt!35581 () List!1528)

(assert (=> d!18391 (= lt!35582 (ListLongMap!1460 lt!35581))))

(declare-fun lt!35579 () Unit!2248)

(declare-fun lt!35580 () Unit!2248)

(assert (=> d!18391 (= lt!35579 lt!35580)))

(assert (=> d!18391 (= (getValueByKey!135 lt!35581 (_1!1101 lt!35388)) (Some!140 (_2!1101 lt!35388)))))

(assert (=> d!18391 (= lt!35580 (lemmaContainsTupThenGetReturnValue!54 lt!35581 (_1!1101 lt!35388) (_2!1101 lt!35388)))))

(assert (=> d!18391 (= lt!35581 (insertStrictlySorted!56 (toList!745 lt!35385) (_1!1101 lt!35388) (_2!1101 lt!35388)))))

(assert (=> d!18391 (= (+!106 lt!35385 lt!35388) lt!35582)))

(declare-fun b!77594 () Bool)

(declare-fun res!40713 () Bool)

(assert (=> b!77594 (=> (not res!40713) (not e!50742))))

(assert (=> b!77594 (= res!40713 (= (getValueByKey!135 (toList!745 lt!35582) (_1!1101 lt!35388)) (Some!140 (_2!1101 lt!35388))))))

(declare-fun b!77595 () Bool)

(assert (=> b!77595 (= e!50742 (contains!744 (toList!745 lt!35582) lt!35388))))

(assert (= (and d!18391 res!40714) b!77594))

(assert (= (and b!77594 res!40713) b!77595))

(declare-fun m!77573 () Bool)

(assert (=> d!18391 m!77573))

(declare-fun m!77575 () Bool)

(assert (=> d!18391 m!77575))

(declare-fun m!77577 () Bool)

(assert (=> d!18391 m!77577))

(declare-fun m!77579 () Bool)

(assert (=> d!18391 m!77579))

(declare-fun m!77581 () Bool)

(assert (=> b!77594 m!77581))

(declare-fun m!77583 () Bool)

(assert (=> b!77595 m!77583))

(assert (=> b!77377 d!18391))

(declare-fun d!18393 () Bool)

(assert (=> d!18393 (= (validMask!0 (mask!6259 (v!2586 (underlying!278 thiss!992)))) (and (or (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000000000000111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000000000001111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000000000011111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000000000111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000000001111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000000011111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000000111111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000001111111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000011111111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000000000000000111111111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000000000000001111111111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000000000000011111111111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000000000000111111111111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000000000001111111111111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000000000011111111111111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000000000111111111111111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000000001111111111111111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000000011111111111111111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000000111111111111111111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000001111111111111111111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000011111111111111111111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000000111111111111111111111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000001111111111111111111111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000011111111111111111111111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00000111111111111111111111111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00001111111111111111111111111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00011111111111111111111111111111) (= (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!6259 (v!2586 (underlying!278 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!77377 d!18393))

(declare-fun d!18395 () Bool)

(declare-fun e!50743 () Bool)

(assert (=> d!18395 e!50743))

(declare-fun res!40716 () Bool)

(assert (=> d!18395 (=> (not res!40716) (not e!50743))))

(declare-fun lt!35586 () ListLongMap!1459)

(assert (=> d!18395 (= res!40716 (contains!742 lt!35586 (_1!1101 lt!35381)))))

(declare-fun lt!35585 () List!1528)

(assert (=> d!18395 (= lt!35586 (ListLongMap!1460 lt!35585))))

(declare-fun lt!35583 () Unit!2248)

(declare-fun lt!35584 () Unit!2248)

(assert (=> d!18395 (= lt!35583 lt!35584)))

(assert (=> d!18395 (= (getValueByKey!135 lt!35585 (_1!1101 lt!35381)) (Some!140 (_2!1101 lt!35381)))))

(assert (=> d!18395 (= lt!35584 (lemmaContainsTupThenGetReturnValue!54 lt!35585 (_1!1101 lt!35381) (_2!1101 lt!35381)))))

(assert (=> d!18395 (= lt!35585 (insertStrictlySorted!56 (toList!745 lt!35396) (_1!1101 lt!35381) (_2!1101 lt!35381)))))

(assert (=> d!18395 (= (+!106 lt!35396 lt!35381) lt!35586)))

(declare-fun b!77596 () Bool)

(declare-fun res!40715 () Bool)

(assert (=> b!77596 (=> (not res!40715) (not e!50743))))

(assert (=> b!77596 (= res!40715 (= (getValueByKey!135 (toList!745 lt!35586) (_1!1101 lt!35381)) (Some!140 (_2!1101 lt!35381))))))

(declare-fun b!77597 () Bool)

(assert (=> b!77597 (= e!50743 (contains!744 (toList!745 lt!35586) lt!35381))))

(assert (= (and d!18395 res!40716) b!77596))

(assert (= (and b!77596 res!40715) b!77597))

(declare-fun m!77585 () Bool)

(assert (=> d!18395 m!77585))

(declare-fun m!77587 () Bool)

(assert (=> d!18395 m!77587))

(declare-fun m!77589 () Bool)

(assert (=> d!18395 m!77589))

(declare-fun m!77591 () Bool)

(assert (=> d!18395 m!77591))

(declare-fun m!77593 () Bool)

(assert (=> b!77596 m!77593))

(declare-fun m!77595 () Bool)

(assert (=> b!77597 m!77595))

(assert (=> b!77377 d!18395))

(declare-fun d!18397 () Bool)

(assert (=> d!18397 (= (+!106 (+!106 lt!35385 (tuple2!2183 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) lt!35383)) (tuple2!2183 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2164 (v!2586 (underlying!278 thiss!992))))) (+!106 (+!106 lt!35385 (tuple2!2183 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2164 (v!2586 (underlying!278 thiss!992))))) (tuple2!2183 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) lt!35383)))))

(declare-fun lt!35587 () Unit!2248)

(assert (=> d!18397 (= lt!35587 (choose!460 lt!35385 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) lt!35383 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2164 (v!2586 (underlying!278 thiss!992)))))))

(assert (=> d!18397 (not (= (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!18397 (= (addCommutativeForDiffKeys!25 lt!35385 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) lt!35383 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2164 (v!2586 (underlying!278 thiss!992)))) lt!35587)))

(declare-fun bs!3290 () Bool)

(assert (= bs!3290 d!18397))

(declare-fun m!77597 () Bool)

(assert (=> bs!3290 m!77597))

(declare-fun m!77599 () Bool)

(assert (=> bs!3290 m!77599))

(assert (=> bs!3290 m!77597))

(assert (=> bs!3290 m!77271))

(declare-fun m!77601 () Bool)

(assert (=> bs!3290 m!77601))

(declare-fun m!77603 () Bool)

(assert (=> bs!3290 m!77603))

(declare-fun m!77605 () Bool)

(assert (=> bs!3290 m!77605))

(assert (=> bs!3290 m!77603))

(assert (=> b!77377 d!18397))

(declare-fun d!18399 () Bool)

(assert (=> d!18399 (= (array_inv!1123 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) (bvsge (size!2129 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!77372 d!18399))

(declare-fun d!18401 () Bool)

(assert (=> d!18401 (= (array_inv!1124 (_values!2249 (v!2586 (underlying!278 thiss!992)))) (bvsge (size!2130 (_values!2249 (v!2586 (underlying!278 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!77372 d!18401))

(declare-fun d!18403 () Bool)

(declare-fun e!50749 () Bool)

(assert (=> d!18403 e!50749))

(declare-fun res!40719 () Bool)

(assert (=> d!18403 (=> res!40719 e!50749)))

(declare-fun lt!35597 () Bool)

(assert (=> d!18403 (= res!40719 (not lt!35597))))

(declare-fun lt!35598 () Bool)

(assert (=> d!18403 (= lt!35597 lt!35598)))

(declare-fun lt!35599 () Unit!2248)

(declare-fun e!50748 () Unit!2248)

(assert (=> d!18403 (= lt!35599 e!50748)))

(declare-fun c!11854 () Bool)

(assert (=> d!18403 (= c!11854 lt!35598)))

(declare-fun containsKey!139 (List!1528 (_ BitVec 64)) Bool)

(assert (=> d!18403 (= lt!35598 (containsKey!139 (toList!745 lt!35387) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355)))))

(assert (=> d!18403 (= (contains!742 lt!35387 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355)) lt!35597)))

(declare-fun b!77604 () Bool)

(declare-fun lt!35596 () Unit!2248)

(assert (=> b!77604 (= e!50748 lt!35596)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!88 (List!1528 (_ BitVec 64)) Unit!2248)

(assert (=> b!77604 (= lt!35596 (lemmaContainsKeyImpliesGetValueByKeyDefined!88 (toList!745 lt!35387) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355)))))

(declare-fun isDefined!89 (Option!141) Bool)

(assert (=> b!77604 (isDefined!89 (getValueByKey!135 (toList!745 lt!35387) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355)))))

(declare-fun b!77605 () Bool)

(declare-fun Unit!2257 () Unit!2248)

(assert (=> b!77605 (= e!50748 Unit!2257)))

(declare-fun b!77606 () Bool)

(assert (=> b!77606 (= e!50749 (isDefined!89 (getValueByKey!135 (toList!745 lt!35387) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355))))))

(assert (= (and d!18403 c!11854) b!77604))

(assert (= (and d!18403 (not c!11854)) b!77605))

(assert (= (and d!18403 (not res!40719)) b!77606))

(assert (=> d!18403 m!77271))

(declare-fun m!77607 () Bool)

(assert (=> d!18403 m!77607))

(assert (=> b!77604 m!77271))

(declare-fun m!77609 () Bool)

(assert (=> b!77604 m!77609))

(assert (=> b!77604 m!77271))

(declare-fun m!77611 () Bool)

(assert (=> b!77604 m!77611))

(assert (=> b!77604 m!77611))

(declare-fun m!77613 () Bool)

(assert (=> b!77604 m!77613))

(assert (=> b!77606 m!77271))

(assert (=> b!77606 m!77611))

(assert (=> b!77606 m!77611))

(assert (=> b!77606 m!77613))

(assert (=> b!77364 d!18403))

(declare-fun e!50803 () Bool)

(declare-datatypes ((SeekEntryResult!249 0))(
  ( (MissingZero!249 (index!3130 (_ BitVec 32))) (Found!249 (index!3131 (_ BitVec 32))) (Intermediate!249 (undefined!1061 Bool) (index!3132 (_ BitVec 32)) (x!11515 (_ BitVec 32))) (Undefined!249) (MissingVacant!249 (index!3133 (_ BitVec 32))) )
))
(declare-fun lt!35676 () SeekEntryResult!249)

(declare-fun b!77688 () Bool)

(assert (=> b!77688 (= e!50803 (= (select (arr!1888 (_keys!3926 newMap!16)) (index!3131 lt!35676)) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355)))))

(declare-fun bm!7046 () Bool)

(declare-fun call!7071 () ListLongMap!1459)

(declare-fun lt!35666 () tuple2!2180)

(assert (=> bm!7046 (= call!7071 (map!1175 (_2!1100 lt!35666)))))

(declare-fun bm!7047 () Bool)

(declare-fun call!7068 () ListLongMap!1459)

(assert (=> bm!7047 (= call!7068 (map!1175 newMap!16))))

(declare-fun b!77689 () Bool)

(declare-fun e!50796 () Bool)

(declare-fun e!50797 () Bool)

(assert (=> b!77689 (= e!50796 e!50797)))

(declare-fun res!40761 () Bool)

(declare-fun call!7067 () Bool)

(assert (=> b!77689 (= res!40761 call!7067)))

(assert (=> b!77689 (=> (not res!40761) (not e!50797))))

(declare-fun b!77690 () Bool)

(declare-fun e!50802 () Bool)

(declare-fun e!50810 () Bool)

(assert (=> b!77690 (= e!50802 e!50810)))

(declare-fun res!40755 () Bool)

(assert (=> b!77690 (= res!40755 (contains!742 call!7071 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355)))))

(assert (=> b!77690 (=> (not res!40755) (not e!50810))))

(declare-fun b!77691 () Bool)

(declare-fun call!7059 () Bool)

(assert (=> b!77691 (= e!50797 (not call!7059))))

(declare-fun b!77692 () Bool)

(declare-fun res!40758 () Bool)

(declare-fun lt!35675 () SeekEntryResult!249)

(assert (=> b!77692 (= res!40758 (= (select (arr!1888 (_keys!3926 newMap!16)) (index!3133 lt!35675)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!50792 () Bool)

(assert (=> b!77692 (=> (not res!40758) (not e!50792))))

(declare-fun d!18405 () Bool)

(declare-fun e!50800 () Bool)

(assert (=> d!18405 e!50800))

(declare-fun res!40759 () Bool)

(assert (=> d!18405 (=> (not res!40759) (not e!50800))))

(assert (=> d!18405 (= res!40759 (valid!310 (_2!1100 lt!35666)))))

(declare-fun e!50794 () tuple2!2180)

(assert (=> d!18405 (= lt!35666 e!50794)))

(declare-fun c!11883 () Bool)

(assert (=> d!18405 (= c!11883 (= (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) (bvneg (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355))))))

(assert (=> d!18405 (valid!310 newMap!16)))

(assert (=> d!18405 (= (update!110 newMap!16 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) lt!35383) lt!35666)))

(declare-fun b!77687 () Bool)

(declare-fun e!50805 () tuple2!2180)

(declare-fun lt!35654 () tuple2!2180)

(assert (=> b!77687 (= e!50805 (tuple2!2181 (_1!1100 lt!35654) (_2!1100 lt!35654)))))

(declare-fun call!7060 () tuple2!2180)

(assert (=> b!77687 (= lt!35654 call!7060)))

(declare-fun bm!7048 () Bool)

(declare-fun call!7052 () Bool)

(declare-fun call!7054 () Bool)

(assert (=> bm!7048 (= call!7052 call!7054)))

(declare-fun b!77693 () Bool)

(declare-fun e!50804 () Unit!2248)

(declare-fun lt!35671 () Unit!2248)

(assert (=> b!77693 (= e!50804 lt!35671)))

(declare-fun call!7057 () Unit!2248)

(assert (=> b!77693 (= lt!35671 call!7057)))

(declare-fun call!7062 () SeekEntryResult!249)

(assert (=> b!77693 (= lt!35675 call!7062)))

(declare-fun c!11888 () Bool)

(assert (=> b!77693 (= c!11888 ((_ is MissingZero!249) lt!35675))))

(declare-fun e!50809 () Bool)

(assert (=> b!77693 e!50809))

(declare-fun bm!7049 () Bool)

(assert (=> bm!7049 (= call!7054 (arrayContainsKey!0 (_keys!3926 newMap!16) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!77694 () Bool)

(declare-fun lt!35670 () Unit!2248)

(declare-fun lt!35667 () Unit!2248)

(assert (=> b!77694 (= lt!35670 lt!35667)))

(declare-fun call!7050 () ListLongMap!1459)

(declare-fun call!7051 () ListLongMap!1459)

(assert (=> b!77694 (= call!7050 call!7051)))

(declare-fun lt!35674 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!27 (array!3960 array!3962 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2987 V!2987 V!2987 Int) Unit!2248)

(assert (=> b!77694 (= lt!35667 (lemmaChangeZeroKeyThenAddPairToListMap!27 (_keys!3926 newMap!16) (_values!2249 newMap!16) (mask!6259 newMap!16) (extraKeys!2117 newMap!16) lt!35674 (zeroValue!2164 newMap!16) lt!35383 (minValue!2164 newMap!16) (defaultEntry!2266 newMap!16)))))

(assert (=> b!77694 (= lt!35674 (bvor (extraKeys!2117 newMap!16) #b00000000000000000000000000000001))))

(declare-fun e!50812 () tuple2!2180)

(assert (=> b!77694 (= e!50812 (tuple2!2181 true (LongMapFixedSize!727 (defaultEntry!2266 newMap!16) (mask!6259 newMap!16) (bvor (extraKeys!2117 newMap!16) #b00000000000000000000000000000001) lt!35383 (minValue!2164 newMap!16) (_size!412 newMap!16) (_keys!3926 newMap!16) (_values!2249 newMap!16) (_vacant!412 newMap!16))))))

(declare-fun c!11885 () Bool)

(declare-fun lt!35661 () SeekEntryResult!249)

(declare-fun bm!7050 () Bool)

(declare-fun updateHelperNewKey!27 (LongMapFixedSize!726 (_ BitVec 64) V!2987 (_ BitVec 32)) tuple2!2180)

(assert (=> bm!7050 (= call!7060 (updateHelperNewKey!27 newMap!16 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) lt!35383 (ite c!11885 (index!3133 lt!35661) (index!3130 lt!35661))))))

(declare-fun b!77695 () Bool)

(declare-fun c!11886 () Bool)

(declare-fun lt!35673 () SeekEntryResult!249)

(assert (=> b!77695 (= c!11886 ((_ is MissingVacant!249) lt!35673))))

(declare-fun e!50811 () Bool)

(assert (=> b!77695 (= e!50811 e!50796)))

(declare-fun b!77696 () Bool)

(assert (=> b!77696 (= e!50810 (= call!7071 (+!106 call!7068 (tuple2!2183 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) lt!35383))))))

(declare-fun b!77697 () Bool)

(declare-fun e!50806 () Bool)

(declare-fun lt!35655 () SeekEntryResult!249)

(assert (=> b!77697 (= e!50806 (= (select (arr!1888 (_keys!3926 newMap!16)) (index!3131 lt!35655)) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355)))))

(declare-fun b!77698 () Bool)

(assert (=> b!77698 (= e!50794 e!50812)))

(declare-fun c!11893 () Bool)

(assert (=> b!77698 (= c!11893 (= (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!7051 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!27 (array!3960 array!3962 (_ BitVec 32) (_ BitVec 32) V!2987 V!2987 (_ BitVec 64) Int) Unit!2248)

(assert (=> bm!7051 (= call!7057 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!27 (_keys!3926 newMap!16) (_values!2249 newMap!16) (mask!6259 newMap!16) (extraKeys!2117 newMap!16) (zeroValue!2164 newMap!16) (minValue!2164 newMap!16) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) (defaultEntry!2266 newMap!16)))))

(declare-fun b!77699 () Bool)

(declare-fun e!50799 () ListLongMap!1459)

(declare-fun call!7072 () ListLongMap!1459)

(assert (=> b!77699 (= e!50799 call!7072)))

(declare-fun b!77700 () Bool)

(declare-fun res!40751 () Bool)

(declare-fun e!50808 () Bool)

(assert (=> b!77700 (=> (not res!40751) (not e!50808))))

(assert (=> b!77700 (= res!40751 (= (select (arr!1888 (_keys!3926 newMap!16)) (index!3130 lt!35675)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!77701 () Bool)

(declare-fun res!40760 () Bool)

(declare-fun e!50793 () Bool)

(assert (=> b!77701 (=> (not res!40760) (not e!50793))))

(assert (=> b!77701 (= res!40760 (= (select (arr!1888 (_keys!3926 newMap!16)) (index!3130 lt!35673)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!7052 () Bool)

(declare-fun call!7064 () ListLongMap!1459)

(assert (=> bm!7052 (= call!7051 call!7064)))

(declare-fun bm!7053 () Bool)

(declare-fun call!7063 () ListLongMap!1459)

(assert (=> bm!7053 (= call!7050 call!7063)))

(declare-fun b!77702 () Bool)

(assert (=> b!77702 (= e!50792 (not call!7052))))

(declare-fun b!77703 () Bool)

(assert (=> b!77703 (= e!50796 ((_ is Undefined!249) lt!35673))))

(declare-fun bm!7054 () Bool)

(declare-fun call!7049 () Bool)

(assert (=> bm!7054 (= call!7067 call!7049)))

(declare-fun b!77704 () Bool)

(declare-fun lt!35656 () Unit!2248)

(declare-fun lt!35680 () Unit!2248)

(assert (=> b!77704 (= lt!35656 lt!35680)))

(assert (=> b!77704 (contains!742 call!7072 (select (arr!1888 (_keys!3926 newMap!16)) (index!3131 lt!35661)))))

(declare-fun lt!35672 () array!3962)

(declare-fun lemmaValidKeyInArrayIsInListMap!85 (array!3960 array!3962 (_ BitVec 32) (_ BitVec 32) V!2987 V!2987 (_ BitVec 32) Int) Unit!2248)

(assert (=> b!77704 (= lt!35680 (lemmaValidKeyInArrayIsInListMap!85 (_keys!3926 newMap!16) lt!35672 (mask!6259 newMap!16) (extraKeys!2117 newMap!16) (zeroValue!2164 newMap!16) (minValue!2164 newMap!16) (index!3131 lt!35661) (defaultEntry!2266 newMap!16)))))

(assert (=> b!77704 (= lt!35672 (array!3963 (store (arr!1889 (_values!2249 newMap!16)) (index!3131 lt!35661) (ValueCellFull!909 lt!35383)) (size!2130 (_values!2249 newMap!16))))))

(declare-fun lt!35677 () Unit!2248)

(declare-fun lt!35660 () Unit!2248)

(assert (=> b!77704 (= lt!35677 lt!35660)))

(assert (=> b!77704 (= call!7063 call!7064)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!27 (array!3960 array!3962 (_ BitVec 32) (_ BitVec 32) V!2987 V!2987 (_ BitVec 32) (_ BitVec 64) V!2987 Int) Unit!2248)

(assert (=> b!77704 (= lt!35660 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!27 (_keys!3926 newMap!16) (_values!2249 newMap!16) (mask!6259 newMap!16) (extraKeys!2117 newMap!16) (zeroValue!2164 newMap!16) (minValue!2164 newMap!16) (index!3131 lt!35661) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) lt!35383 (defaultEntry!2266 newMap!16)))))

(declare-fun lt!35663 () Unit!2248)

(declare-fun e!50801 () Unit!2248)

(assert (=> b!77704 (= lt!35663 e!50801)))

(declare-fun c!11882 () Bool)

(declare-fun call!7058 () Bool)

(assert (=> b!77704 (= c!11882 call!7058)))

(declare-fun e!50807 () tuple2!2180)

(assert (=> b!77704 (= e!50807 (tuple2!2181 true (LongMapFixedSize!727 (defaultEntry!2266 newMap!16) (mask!6259 newMap!16) (extraKeys!2117 newMap!16) (zeroValue!2164 newMap!16) (minValue!2164 newMap!16) (_size!412 newMap!16) (_keys!3926 newMap!16) (array!3963 (store (arr!1889 (_values!2249 newMap!16)) (index!3131 lt!35661) (ValueCellFull!909 lt!35383)) (size!2130 (_values!2249 newMap!16))) (_vacant!412 newMap!16))))))

(declare-fun b!77705 () Bool)

(declare-fun e!50795 () Bool)

(assert (=> b!77705 (= e!50795 e!50792)))

(declare-fun res!40748 () Bool)

(declare-fun call!7065 () Bool)

(assert (=> b!77705 (= res!40748 call!7065)))

(assert (=> b!77705 (=> (not res!40748) (not e!50792))))

(declare-fun bm!7055 () Bool)

(assert (=> bm!7055 (= call!7059 call!7054)))

(declare-fun b!77706 () Bool)

(declare-fun res!40753 () Bool)

(assert (=> b!77706 (=> (not res!40753) (not e!50808))))

(assert (=> b!77706 (= res!40753 call!7065)))

(assert (=> b!77706 (= e!50809 e!50808)))

(declare-fun bm!7056 () Bool)

(declare-fun call!7070 () SeekEntryResult!249)

(assert (=> bm!7056 (= call!7062 call!7070)))

(declare-fun b!77707 () Bool)

(declare-fun call!7056 () ListLongMap!1459)

(assert (=> b!77707 (= e!50799 call!7056)))

(declare-fun b!77708 () Bool)

(assert (=> b!77708 (= e!50805 e!50807)))

(declare-fun c!11890 () Bool)

(assert (=> b!77708 (= c!11890 ((_ is MissingZero!249) lt!35661))))

(declare-fun b!77709 () Bool)

(declare-fun Unit!2258 () Unit!2248)

(assert (=> b!77709 (= e!50801 Unit!2258)))

(declare-fun lt!35657 () Unit!2248)

(assert (=> b!77709 (= lt!35657 call!7057)))

(declare-fun call!7066 () SeekEntryResult!249)

(assert (=> b!77709 (= lt!35673 call!7066)))

(declare-fun c!11887 () Bool)

(assert (=> b!77709 (= c!11887 ((_ is MissingZero!249) lt!35673))))

(assert (=> b!77709 e!50811))

(declare-fun lt!35679 () Unit!2248)

(assert (=> b!77709 (= lt!35679 lt!35657)))

(assert (=> b!77709 false))

(declare-fun call!7061 () ListLongMap!1459)

(declare-fun bm!7057 () Bool)

(assert (=> bm!7057 (= call!7063 (+!106 (ite c!11883 (ite c!11893 call!7061 call!7051) call!7056) (ite c!11883 (ite c!11893 (tuple2!2183 #b0000000000000000000000000000000000000000000000000000000000000000 lt!35383) (tuple2!2183 #b1000000000000000000000000000000000000000000000000000000000000000 lt!35383)) (tuple2!2183 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) lt!35383))))))

(declare-fun b!77710 () Bool)

(assert (=> b!77710 (= e!50808 (not call!7052))))

(declare-fun bm!7058 () Bool)

(declare-fun call!7053 () Bool)

(declare-fun call!7069 () Bool)

(assert (=> bm!7058 (= call!7053 call!7069)))

(declare-fun b!77711 () Bool)

(assert (=> b!77711 (= e!50795 ((_ is Undefined!249) lt!35675))))

(declare-fun b!77712 () Bool)

(assert (=> b!77712 (= e!50793 (not call!7059))))

(declare-fun b!77713 () Bool)

(declare-fun res!40754 () Bool)

(assert (=> b!77713 (= res!40754 call!7049)))

(assert (=> b!77713 (=> (not res!40754) (not e!50803))))

(declare-fun bm!7059 () Bool)

(assert (=> bm!7059 (= call!7061 call!7056)))

(declare-fun bm!7060 () Bool)

(assert (=> bm!7060 (= call!7066 call!7070)))

(declare-fun b!77714 () Bool)

(declare-fun res!40756 () Bool)

(assert (=> b!77714 (= res!40756 call!7053)))

(assert (=> b!77714 (=> (not res!40756) (not e!50806))))

(declare-fun b!77715 () Bool)

(declare-fun c!11891 () Bool)

(assert (=> b!77715 (= c!11891 ((_ is MissingVacant!249) lt!35675))))

(assert (=> b!77715 (= e!50809 e!50795)))

(declare-fun b!77716 () Bool)

(declare-fun res!40752 () Bool)

(assert (=> b!77716 (= res!40752 (= (select (arr!1888 (_keys!3926 newMap!16)) (index!3133 lt!35673)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!77716 (=> (not res!40752) (not e!50797))))

(declare-fun b!77717 () Bool)

(declare-fun lt!35658 () Unit!2248)

(assert (=> b!77717 (= e!50801 lt!35658)))

(declare-fun call!7055 () Unit!2248)

(assert (=> b!77717 (= lt!35658 call!7055)))

(assert (=> b!77717 (= lt!35676 call!7066)))

(declare-fun res!40749 () Bool)

(assert (=> b!77717 (= res!40749 ((_ is Found!249) lt!35676))))

(assert (=> b!77717 (=> (not res!40749) (not e!50803))))

(assert (=> b!77717 e!50803))

(declare-fun b!77718 () Bool)

(assert (=> b!77718 (= c!11885 ((_ is MissingVacant!249) lt!35661))))

(declare-fun e!50798 () tuple2!2180)

(assert (=> b!77718 (= e!50798 e!50805)))

(declare-fun bm!7061 () Bool)

(declare-fun c!11892 () Bool)

(declare-fun c!11881 () Bool)

(assert (=> bm!7061 (= c!11892 c!11881)))

(assert (=> bm!7061 (= call!7058 (contains!742 e!50799 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355)))))

(declare-fun b!77719 () Bool)

(declare-fun lt!35659 () Unit!2248)

(declare-fun lt!35664 () Unit!2248)

(assert (=> b!77719 (= lt!35659 lt!35664)))

(assert (=> b!77719 (= call!7050 call!7061)))

(declare-fun lt!35678 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!27 (array!3960 array!3962 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2987 V!2987 V!2987 Int) Unit!2248)

(assert (=> b!77719 (= lt!35664 (lemmaChangeLongMinValueKeyThenAddPairToListMap!27 (_keys!3926 newMap!16) (_values!2249 newMap!16) (mask!6259 newMap!16) (extraKeys!2117 newMap!16) lt!35678 (zeroValue!2164 newMap!16) (minValue!2164 newMap!16) lt!35383 (defaultEntry!2266 newMap!16)))))

(assert (=> b!77719 (= lt!35678 (bvor (extraKeys!2117 newMap!16) #b00000000000000000000000000000010))))

(assert (=> b!77719 (= e!50812 (tuple2!2181 true (LongMapFixedSize!727 (defaultEntry!2266 newMap!16) (mask!6259 newMap!16) (bvor (extraKeys!2117 newMap!16) #b00000000000000000000000000000010) (zeroValue!2164 newMap!16) lt!35383 (_size!412 newMap!16) (_keys!3926 newMap!16) (_values!2249 newMap!16) (_vacant!412 newMap!16))))))

(declare-fun b!77720 () Bool)

(declare-fun res!40750 () Bool)

(assert (=> b!77720 (=> (not res!40750) (not e!50793))))

(assert (=> b!77720 (= res!40750 call!7067)))

(assert (=> b!77720 (= e!50811 e!50793)))

(declare-fun bm!7062 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3960 (_ BitVec 32)) SeekEntryResult!249)

(assert (=> bm!7062 (= call!7070 (seekEntryOrOpen!0 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) (_keys!3926 newMap!16) (mask!6259 newMap!16)))))

(declare-fun bm!7063 () Bool)

(assert (=> bm!7063 (= call!7049 call!7069)))

(declare-fun b!77721 () Bool)

(assert (=> b!77721 (= e!50800 e!50802)))

(declare-fun c!11884 () Bool)

(assert (=> b!77721 (= c!11884 (_1!1100 lt!35666))))

(declare-fun b!77722 () Bool)

(assert (=> b!77722 (= e!50802 (= call!7071 call!7068))))

(declare-fun bm!7064 () Bool)

(assert (=> bm!7064 (= call!7072 (getCurrentListMap!433 (_keys!3926 newMap!16) (ite c!11881 (_values!2249 newMap!16) lt!35672) (mask!6259 newMap!16) (extraKeys!2117 newMap!16) (zeroValue!2164 newMap!16) (minValue!2164 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2266 newMap!16)))))

(declare-fun bm!7065 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!27 (array!3960 array!3962 (_ BitVec 32) (_ BitVec 32) V!2987 V!2987 (_ BitVec 64) Int) Unit!2248)

(assert (=> bm!7065 (= call!7055 (lemmaInListMapThenSeekEntryOrOpenFindsIt!27 (_keys!3926 newMap!16) (_values!2249 newMap!16) (mask!6259 newMap!16) (extraKeys!2117 newMap!16) (zeroValue!2164 newMap!16) (minValue!2164 newMap!16) (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) (defaultEntry!2266 newMap!16)))))

(declare-fun b!77723 () Bool)

(declare-fun lt!35668 () Unit!2248)

(assert (=> b!77723 (= lt!35668 e!50804)))

(declare-fun c!11889 () Bool)

(assert (=> b!77723 (= c!11889 call!7058)))

(assert (=> b!77723 (= e!50798 (tuple2!2181 false newMap!16))))

(declare-fun bm!7066 () Bool)

(assert (=> bm!7066 (= call!7056 (getCurrentListMap!433 (_keys!3926 newMap!16) (_values!2249 newMap!16) (mask!6259 newMap!16) (ite c!11883 (ite c!11893 (extraKeys!2117 newMap!16) lt!35678) (extraKeys!2117 newMap!16)) (zeroValue!2164 newMap!16) (ite c!11883 (ite c!11893 (minValue!2164 newMap!16) lt!35383) (minValue!2164 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2266 newMap!16)))))

(declare-fun bm!7067 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!7067 (= call!7069 (inRange!0 (ite c!11881 (ite c!11889 (index!3131 lt!35655) (ite c!11888 (index!3130 lt!35675) (index!3133 lt!35675))) (ite c!11882 (index!3131 lt!35676) (ite c!11887 (index!3130 lt!35673) (index!3133 lt!35673)))) (mask!6259 newMap!16)))))

(declare-fun bm!7068 () Bool)

(assert (=> bm!7068 (= call!7064 (getCurrentListMap!433 (_keys!3926 newMap!16) (ite c!11883 (_values!2249 newMap!16) (array!3963 (store (arr!1889 (_values!2249 newMap!16)) (index!3131 lt!35661) (ValueCellFull!909 lt!35383)) (size!2130 (_values!2249 newMap!16)))) (mask!6259 newMap!16) (ite (and c!11883 c!11893) lt!35674 (extraKeys!2117 newMap!16)) (ite (and c!11883 c!11893) lt!35383 (zeroValue!2164 newMap!16)) (minValue!2164 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2266 newMap!16)))))

(declare-fun b!77724 () Bool)

(declare-fun lt!35665 () tuple2!2180)

(assert (=> b!77724 (= lt!35665 call!7060)))

(assert (=> b!77724 (= e!50807 (tuple2!2181 (_1!1100 lt!35665) (_2!1100 lt!35665)))))

(declare-fun b!77725 () Bool)

(declare-fun Unit!2259 () Unit!2248)

(assert (=> b!77725 (= e!50804 Unit!2259)))

(declare-fun lt!35662 () Unit!2248)

(assert (=> b!77725 (= lt!35662 call!7055)))

(assert (=> b!77725 (= lt!35655 call!7062)))

(declare-fun res!40757 () Bool)

(assert (=> b!77725 (= res!40757 ((_ is Found!249) lt!35655))))

(assert (=> b!77725 (=> (not res!40757) (not e!50806))))

(assert (=> b!77725 e!50806))

(declare-fun lt!35669 () Unit!2248)

(assert (=> b!77725 (= lt!35669 lt!35662)))

(assert (=> b!77725 false))

(declare-fun bm!7069 () Bool)

(assert (=> bm!7069 (= call!7065 call!7053)))

(declare-fun b!77726 () Bool)

(assert (=> b!77726 (= e!50794 e!50798)))

(assert (=> b!77726 (= lt!35661 (seekEntryOrOpen!0 (select (arr!1888 (_keys!3926 (v!2586 (underlying!278 thiss!992)))) from!355) (_keys!3926 newMap!16) (mask!6259 newMap!16)))))

(assert (=> b!77726 (= c!11881 ((_ is Undefined!249) lt!35661))))

(assert (= (and d!18405 c!11883) b!77698))

(assert (= (and d!18405 (not c!11883)) b!77726))

(assert (= (and b!77698 c!11893) b!77694))

(assert (= (and b!77698 (not c!11893)) b!77719))

(assert (= (or b!77694 b!77719) bm!7052))

(assert (= (or b!77694 b!77719) bm!7059))

(assert (= (or b!77694 b!77719) bm!7053))

(assert (= (and b!77726 c!11881) b!77723))

(assert (= (and b!77726 (not c!11881)) b!77718))

(assert (= (and b!77723 c!11889) b!77725))

(assert (= (and b!77723 (not c!11889)) b!77693))

(assert (= (and b!77725 res!40757) b!77714))

(assert (= (and b!77714 res!40756) b!77697))

(assert (= (and b!77693 c!11888) b!77706))

(assert (= (and b!77693 (not c!11888)) b!77715))

(assert (= (and b!77706 res!40753) b!77700))

(assert (= (and b!77700 res!40751) b!77710))

(assert (= (and b!77715 c!11891) b!77705))

(assert (= (and b!77715 (not c!11891)) b!77711))

(assert (= (and b!77705 res!40748) b!77692))

(assert (= (and b!77692 res!40758) b!77702))

(assert (= (or b!77706 b!77705) bm!7069))

(assert (= (or b!77710 b!77702) bm!7048))

(assert (= (or b!77714 bm!7069) bm!7058))

(assert (= (or b!77725 b!77693) bm!7056))

(assert (= (and b!77718 c!11885) b!77687))

(assert (= (and b!77718 (not c!11885)) b!77708))

(assert (= (and b!77708 c!11890) b!77724))

(assert (= (and b!77708 (not c!11890)) b!77704))

(assert (= (and b!77704 c!11882) b!77717))

(assert (= (and b!77704 (not c!11882)) b!77709))

(assert (= (and b!77717 res!40749) b!77713))

(assert (= (and b!77713 res!40754) b!77688))

(assert (= (and b!77709 c!11887) b!77720))

(assert (= (and b!77709 (not c!11887)) b!77695))

(assert (= (and b!77720 res!40750) b!77701))

(assert (= (and b!77701 res!40760) b!77712))

(assert (= (and b!77695 c!11886) b!77689))

(assert (= (and b!77695 (not c!11886)) b!77703))

(assert (= (and b!77689 res!40761) b!77716))

(assert (= (and b!77716 res!40752) b!77691))

(assert (= (or b!77720 b!77689) bm!7054))

(assert (= (or b!77712 b!77691) bm!7055))

(assert (= (or b!77713 bm!7054) bm!7063))

(assert (= (or b!77717 b!77709) bm!7060))

(assert (= (or b!77687 b!77724) bm!7050))

(assert (= (or bm!7048 bm!7055) bm!7049))

(assert (= (or bm!7058 bm!7063) bm!7067))

(assert (= (or b!77693 b!77709) bm!7051))

(assert (= (or b!77723 b!77704) bm!7064))

(assert (= (or b!77725 b!77717) bm!7065))

(assert (= (or bm!7056 bm!7060) bm!7062))

(assert (= (or b!77723 b!77704) bm!7061))

(assert (= (and bm!7061 c!11892) b!77699))

(assert (= (and bm!7061 (not c!11892)) b!77707))

(assert (= (or bm!7052 b!77704) bm!7068))

(assert (= (or bm!7059 b!77704 b!77707) bm!7066))

(assert (= (or bm!7053 b!77704) bm!7057))

(assert (= (and d!18405 res!40759) b!77721))

(assert (= (and b!77721 c!11884) b!77690))

(assert (= (and b!77721 (not c!11884)) b!77722))

(assert (= (and b!77690 res!40755) b!77696))

(assert (= (or b!77690 b!77696 b!77722) bm!7046))

(assert (= (or b!77696 b!77722) bm!7047))

(declare-fun m!77615 () Bool)

(assert (=> b!77697 m!77615))

(declare-fun m!77617 () Bool)

(assert (=> d!18405 m!77617))

(assert (=> d!18405 m!77295))

(declare-fun m!77619 () Bool)

(assert (=> b!77696 m!77619))

(declare-fun m!77621 () Bool)

(assert (=> b!77700 m!77621))

(assert (=> bm!7051 m!77271))

(declare-fun m!77623 () Bool)

(assert (=> bm!7051 m!77623))

(declare-fun m!77625 () Bool)

(assert (=> bm!7066 m!77625))

(assert (=> bm!7061 m!77271))

(declare-fun m!77627 () Bool)

(assert (=> bm!7061 m!77627))

(declare-fun m!77629 () Bool)

(assert (=> bm!7067 m!77629))

(assert (=> b!77726 m!77271))

(declare-fun m!77631 () Bool)

(assert (=> b!77726 m!77631))

(assert (=> bm!7062 m!77271))

(assert (=> bm!7062 m!77631))

(declare-fun m!77633 () Bool)

(assert (=> b!77704 m!77633))

(declare-fun m!77635 () Bool)

(assert (=> b!77704 m!77635))

(assert (=> b!77704 m!77271))

(declare-fun m!77637 () Bool)

(assert (=> b!77704 m!77637))

(declare-fun m!77639 () Bool)

(assert (=> b!77704 m!77639))

(declare-fun m!77641 () Bool)

(assert (=> b!77704 m!77641))

(assert (=> b!77704 m!77633))

(declare-fun m!77643 () Bool)

(assert (=> bm!7046 m!77643))

(declare-fun m!77645 () Bool)

(assert (=> bm!7064 m!77645))

(declare-fun m!77647 () Bool)

(assert (=> bm!7057 m!77647))

(assert (=> b!77690 m!77271))

(declare-fun m!77649 () Bool)

(assert (=> b!77690 m!77649))

(assert (=> bm!7065 m!77271))

(declare-fun m!77651 () Bool)

(assert (=> bm!7065 m!77651))

(assert (=> bm!7049 m!77271))

(declare-fun m!77653 () Bool)

(assert (=> bm!7049 m!77653))

(declare-fun m!77655 () Bool)

(assert (=> b!77694 m!77655))

(declare-fun m!77657 () Bool)

(assert (=> b!77716 m!77657))

(declare-fun m!77659 () Bool)

(assert (=> b!77701 m!77659))

(declare-fun m!77661 () Bool)

(assert (=> b!77692 m!77661))

(declare-fun m!77663 () Bool)

(assert (=> b!77719 m!77663))

(assert (=> bm!7047 m!77313))

(assert (=> bm!7050 m!77271))

(declare-fun m!77665 () Bool)

(assert (=> bm!7050 m!77665))

(declare-fun m!77667 () Bool)

(assert (=> b!77688 m!77667))

(assert (=> bm!7068 m!77641))

(declare-fun m!77669 () Bool)

(assert (=> bm!7068 m!77669))

(assert (=> b!77364 d!18405))

(declare-fun mapNonEmpty!3291 () Bool)

(declare-fun mapRes!3291 () Bool)

(declare-fun tp!8745 () Bool)

(declare-fun e!50817 () Bool)

(assert (=> mapNonEmpty!3291 (= mapRes!3291 (and tp!8745 e!50817))))

(declare-fun mapKey!3291 () (_ BitVec 32))

(declare-fun mapRest!3291 () (Array (_ BitVec 32) ValueCell!909))

(declare-fun mapValue!3291 () ValueCell!909)

(assert (=> mapNonEmpty!3291 (= mapRest!3282 (store mapRest!3291 mapKey!3291 mapValue!3291))))

(declare-fun b!77734 () Bool)

(declare-fun e!50818 () Bool)

(assert (=> b!77734 (= e!50818 tp_is_empty!2505)))

(declare-fun b!77733 () Bool)

(assert (=> b!77733 (= e!50817 tp_is_empty!2505)))

(declare-fun mapIsEmpty!3291 () Bool)

(assert (=> mapIsEmpty!3291 mapRes!3291))

(declare-fun condMapEmpty!3291 () Bool)

(declare-fun mapDefault!3291 () ValueCell!909)

(assert (=> mapNonEmpty!3282 (= condMapEmpty!3291 (= mapRest!3282 ((as const (Array (_ BitVec 32) ValueCell!909)) mapDefault!3291)))))

(assert (=> mapNonEmpty!3282 (= tp!8730 (and e!50818 mapRes!3291))))

(assert (= (and mapNonEmpty!3282 condMapEmpty!3291) mapIsEmpty!3291))

(assert (= (and mapNonEmpty!3282 (not condMapEmpty!3291)) mapNonEmpty!3291))

(assert (= (and mapNonEmpty!3291 ((_ is ValueCellFull!909) mapValue!3291)) b!77733))

(assert (= (and mapNonEmpty!3282 ((_ is ValueCellFull!909) mapDefault!3291)) b!77734))

(declare-fun m!77671 () Bool)

(assert (=> mapNonEmpty!3291 m!77671))

(declare-fun mapNonEmpty!3292 () Bool)

(declare-fun mapRes!3292 () Bool)

(declare-fun tp!8746 () Bool)

(declare-fun e!50819 () Bool)

(assert (=> mapNonEmpty!3292 (= mapRes!3292 (and tp!8746 e!50819))))

(declare-fun mapKey!3292 () (_ BitVec 32))

(declare-fun mapRest!3292 () (Array (_ BitVec 32) ValueCell!909))

(declare-fun mapValue!3292 () ValueCell!909)

(assert (=> mapNonEmpty!3292 (= mapRest!3281 (store mapRest!3292 mapKey!3292 mapValue!3292))))

(declare-fun b!77736 () Bool)

(declare-fun e!50820 () Bool)

(assert (=> b!77736 (= e!50820 tp_is_empty!2505)))

(declare-fun b!77735 () Bool)

(assert (=> b!77735 (= e!50819 tp_is_empty!2505)))

(declare-fun mapIsEmpty!3292 () Bool)

(assert (=> mapIsEmpty!3292 mapRes!3292))

(declare-fun condMapEmpty!3292 () Bool)

(declare-fun mapDefault!3292 () ValueCell!909)

(assert (=> mapNonEmpty!3281 (= condMapEmpty!3292 (= mapRest!3281 ((as const (Array (_ BitVec 32) ValueCell!909)) mapDefault!3292)))))

(assert (=> mapNonEmpty!3281 (= tp!8728 (and e!50820 mapRes!3292))))

(assert (= (and mapNonEmpty!3281 condMapEmpty!3292) mapIsEmpty!3292))

(assert (= (and mapNonEmpty!3281 (not condMapEmpty!3292)) mapNonEmpty!3292))

(assert (= (and mapNonEmpty!3292 ((_ is ValueCellFull!909) mapValue!3292)) b!77735))

(assert (= (and mapNonEmpty!3281 ((_ is ValueCellFull!909) mapDefault!3292)) b!77736))

(declare-fun m!77673 () Bool)

(assert (=> mapNonEmpty!3292 m!77673))

(declare-fun b_lambda!3487 () Bool)

(assert (= b_lambda!3481 (or (and b!77372 b_free!2177) (and b!77366 b_free!2179 (= (defaultEntry!2266 newMap!16) (defaultEntry!2266 (v!2586 (underlying!278 thiss!992))))) b_lambda!3487)))

(declare-fun b_lambda!3489 () Bool)

(assert (= b_lambda!3485 (or (and b!77372 b_free!2177) (and b!77366 b_free!2179 (= (defaultEntry!2266 newMap!16) (defaultEntry!2266 (v!2586 (underlying!278 thiss!992))))) b_lambda!3489)))

(declare-fun b_lambda!3491 () Bool)

(assert (= b_lambda!3483 (or (and b!77372 b_free!2177) (and b!77366 b_free!2179 (= (defaultEntry!2266 newMap!16) (defaultEntry!2266 (v!2586 (underlying!278 thiss!992))))) b_lambda!3491)))

(check-sat (not b!77595) (not b!77518) (not b!77604) b_and!4773 (not bm!7065) (not b!77576) (not d!18377) (not b!77606) (not d!18357) (not d!18383) (not b!77594) (not d!18385) (not b!77548) (not bm!7051) (not d!18403) (not d!18367) (not mapNonEmpty!3292) (not d!18373) (not b!77463) (not b!77520) (not bm!7068) (not d!18395) (not d!18405) (not bm!6989) (not b!77579) (not b!77519) (not b!77577) b_and!4775 (not b!77541) (not b!77444) (not b!77549) (not b!77596) (not b!77508) (not d!18397) (not b!77525) (not b_next!2179) (not bm!6997) (not b!77581) (not b!77586) (not b!77527) (not b!77528) (not d!18389) (not b!77696) (not d!18375) (not d!18387) (not b!77726) (not mapNonEmpty!3291) (not b!77588) (not b!77597) (not b!77719) (not bm!7066) (not d!18369) (not bm!7061) (not d!18359) (not bm!7062) (not b!77589) (not b!77533) (not bm!6994) (not b!77592) (not bm!7067) tp_is_empty!2505 (not b!77542) (not bm!7047) (not b!77587) (not b!77694) (not bm!7046) (not b!77584) (not b_lambda!3479) (not b_next!2177) (not b!77578) (not b!77590) (not b_lambda!3489) (not bm!7057) (not b!77464) (not bm!7049) (not bm!7050) (not bm!6973) (not b!77690) (not d!18381) (not b!77580) (not b!77575) (not bm!6991) (not d!18391) (not b!77521) (not bm!6992) (not b_lambda!3491) (not b_lambda!3487) (not b!77461) (not d!18379) (not b!77534) (not b!77593) (not d!18363) (not b!77704) (not b!77591) (not b!77543) (not bm!7064) (not b!77449))
(check-sat b_and!4773 b_and!4775 (not b_next!2177) (not b_next!2179))

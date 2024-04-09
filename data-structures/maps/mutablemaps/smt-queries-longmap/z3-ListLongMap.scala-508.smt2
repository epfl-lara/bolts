; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12154 () Bool)

(assert start!12154)

(declare-fun b!102606 () Bool)

(declare-fun b_free!2489 () Bool)

(declare-fun b_next!2489 () Bool)

(assert (=> b!102606 (= b_free!2489 (not b_next!2489))))

(declare-fun tp!9779 () Bool)

(declare-fun b_and!6337 () Bool)

(assert (=> b!102606 (= tp!9779 b_and!6337)))

(declare-fun b!102601 () Bool)

(declare-fun b_free!2491 () Bool)

(declare-fun b_next!2491 () Bool)

(assert (=> b!102601 (= b_free!2491 (not b_next!2491))))

(declare-fun tp!9778 () Bool)

(declare-fun b_and!6339 () Bool)

(assert (=> b!102601 (= tp!9778 b_and!6339)))

(declare-fun b!102591 () Bool)

(declare-fun e!66803 () Bool)

(declare-fun e!66810 () Bool)

(declare-fun mapRes!3864 () Bool)

(assert (=> b!102591 (= e!66803 (and e!66810 mapRes!3864))))

(declare-fun condMapEmpty!3863 () Bool)

(declare-datatypes ((V!3195 0))(
  ( (V!3196 (val!1375 Int)) )
))
(declare-datatypes ((array!4308 0))(
  ( (array!4309 (arr!2044 (Array (_ BitVec 32) (_ BitVec 64))) (size!2298 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!987 0))(
  ( (ValueCellFull!987 (v!2862 V!3195)) (EmptyCell!987) )
))
(declare-datatypes ((array!4310 0))(
  ( (array!4311 (arr!2045 (Array (_ BitVec 32) ValueCell!987)) (size!2299 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!882 0))(
  ( (LongMapFixedSize!883 (defaultEntry!2552 Int) (mask!6683 (_ BitVec 32)) (extraKeys!2361 (_ BitVec 32)) (zeroValue!2429 V!3195) (minValue!2429 V!3195) (_size!490 (_ BitVec 32)) (_keys!4254 array!4308) (_values!2535 array!4310) (_vacant!490 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!882)

(declare-fun mapDefault!3864 () ValueCell!987)

(assert (=> b!102591 (= condMapEmpty!3863 (= (arr!2045 (_values!2535 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!987)) mapDefault!3864)))))

(declare-fun res!51313 () Bool)

(declare-fun e!66801 () Bool)

(assert (=> start!12154 (=> (not res!51313) (not e!66801))))

(declare-datatypes ((Cell!686 0))(
  ( (Cell!687 (v!2863 LongMapFixedSize!882)) )
))
(declare-datatypes ((LongMap!686 0))(
  ( (LongMap!687 (underlying!354 Cell!686)) )
))
(declare-fun thiss!992 () LongMap!686)

(declare-fun valid!399 (LongMap!686) Bool)

(assert (=> start!12154 (= res!51313 (valid!399 thiss!992))))

(assert (=> start!12154 e!66801))

(declare-fun e!66797 () Bool)

(assert (=> start!12154 e!66797))

(assert (=> start!12154 true))

(declare-fun e!66796 () Bool)

(assert (=> start!12154 e!66796))

(declare-fun b!102592 () Bool)

(declare-fun e!66795 () Bool)

(assert (=> b!102592 (= e!66801 e!66795)))

(declare-fun res!51315 () Bool)

(assert (=> b!102592 (=> (not res!51315) (not e!66795))))

(declare-datatypes ((tuple2!2384 0))(
  ( (tuple2!2385 (_1!1202 (_ BitVec 64)) (_2!1202 V!3195)) )
))
(declare-datatypes ((List!1628 0))(
  ( (Nil!1625) (Cons!1624 (h!2220 tuple2!2384) (t!5678 List!1628)) )
))
(declare-datatypes ((ListLongMap!1569 0))(
  ( (ListLongMap!1570 (toList!800 List!1628)) )
))
(declare-fun lt!52129 () ListLongMap!1569)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lt!52127 () ListLongMap!1569)

(assert (=> b!102592 (= res!51315 (and (= lt!52127 lt!52129) (not (= (select (arr!2044 (_keys!4254 (v!2863 (underlying!354 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2044 (_keys!4254 (v!2863 (underlying!354 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1272 (LongMapFixedSize!882) ListLongMap!1569)

(assert (=> b!102592 (= lt!52129 (map!1272 newMap!16))))

(declare-fun getCurrentListMap!479 (array!4308 array!4310 (_ BitVec 32) (_ BitVec 32) V!3195 V!3195 (_ BitVec 32) Int) ListLongMap!1569)

(assert (=> b!102592 (= lt!52127 (getCurrentListMap!479 (_keys!4254 (v!2863 (underlying!354 thiss!992))) (_values!2535 (v!2863 (underlying!354 thiss!992))) (mask!6683 (v!2863 (underlying!354 thiss!992))) (extraKeys!2361 (v!2863 (underlying!354 thiss!992))) (zeroValue!2429 (v!2863 (underlying!354 thiss!992))) (minValue!2429 (v!2863 (underlying!354 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2552 (v!2863 (underlying!354 thiss!992)))))))

(declare-fun b!102593 () Bool)

(declare-fun res!51312 () Bool)

(assert (=> b!102593 (=> (not res!51312) (not e!66801))))

(assert (=> b!102593 (= res!51312 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6683 newMap!16)) (_size!490 (v!2863 (underlying!354 thiss!992)))))))

(declare-fun b!102594 () Bool)

(declare-fun e!66800 () Bool)

(declare-fun e!66802 () Bool)

(declare-fun mapRes!3863 () Bool)

(assert (=> b!102594 (= e!66800 (and e!66802 mapRes!3863))))

(declare-fun condMapEmpty!3864 () Bool)

(declare-fun mapDefault!3863 () ValueCell!987)

(assert (=> b!102594 (= condMapEmpty!3864 (= (arr!2045 (_values!2535 (v!2863 (underlying!354 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!987)) mapDefault!3863)))))

(declare-fun b!102595 () Bool)

(declare-fun res!51311 () Bool)

(assert (=> b!102595 (=> (not res!51311) (not e!66801))))

(declare-fun valid!400 (LongMapFixedSize!882) Bool)

(assert (=> b!102595 (= res!51311 (valid!400 newMap!16))))

(declare-fun mapNonEmpty!3863 () Bool)

(declare-fun tp!9777 () Bool)

(declare-fun e!66804 () Bool)

(assert (=> mapNonEmpty!3863 (= mapRes!3863 (and tp!9777 e!66804))))

(declare-fun mapKey!3863 () (_ BitVec 32))

(declare-fun mapRest!3864 () (Array (_ BitVec 32) ValueCell!987))

(declare-fun mapValue!3864 () ValueCell!987)

(assert (=> mapNonEmpty!3863 (= (arr!2045 (_values!2535 (v!2863 (underlying!354 thiss!992)))) (store mapRest!3864 mapKey!3863 mapValue!3864))))

(declare-fun b!102596 () Bool)

(declare-datatypes ((Unit!3148 0))(
  ( (Unit!3149) )
))
(declare-fun e!66809 () Unit!3148)

(declare-fun Unit!3150 () Unit!3148)

(assert (=> b!102596 (= e!66809 Unit!3150)))

(declare-fun b!102597 () Bool)

(declare-fun Unit!3151 () Unit!3148)

(assert (=> b!102597 (= e!66809 Unit!3151)))

(declare-fun lt!52131 () Unit!3148)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!106 (array!4308 array!4310 (_ BitVec 32) (_ BitVec 32) V!3195 V!3195 (_ BitVec 64) (_ BitVec 32) Int) Unit!3148)

(assert (=> b!102597 (= lt!52131 (lemmaListMapContainsThenArrayContainsFrom!106 (_keys!4254 (v!2863 (underlying!354 thiss!992))) (_values!2535 (v!2863 (underlying!354 thiss!992))) (mask!6683 (v!2863 (underlying!354 thiss!992))) (extraKeys!2361 (v!2863 (underlying!354 thiss!992))) (zeroValue!2429 (v!2863 (underlying!354 thiss!992))) (minValue!2429 (v!2863 (underlying!354 thiss!992))) (select (arr!2044 (_keys!4254 (v!2863 (underlying!354 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2552 (v!2863 (underlying!354 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4308 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!102597 (arrayContainsKey!0 (_keys!4254 (v!2863 (underlying!354 thiss!992))) (select (arr!2044 (_keys!4254 (v!2863 (underlying!354 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!52132 () Unit!3148)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4308 (_ BitVec 32) (_ BitVec 32)) Unit!3148)

(assert (=> b!102597 (= lt!52132 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4254 (v!2863 (underlying!354 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1629 0))(
  ( (Nil!1626) (Cons!1625 (h!2221 (_ BitVec 64)) (t!5679 List!1629)) )
))
(declare-fun arrayNoDuplicates!0 (array!4308 (_ BitVec 32) List!1629) Bool)

(assert (=> b!102597 (arrayNoDuplicates!0 (_keys!4254 (v!2863 (underlying!354 thiss!992))) from!355 Nil!1626)))

(declare-fun lt!52126 () Unit!3148)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4308 (_ BitVec 32) (_ BitVec 64) List!1629) Unit!3148)

(assert (=> b!102597 (= lt!52126 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4254 (v!2863 (underlying!354 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2044 (_keys!4254 (v!2863 (underlying!354 thiss!992)))) from!355) (Cons!1625 (select (arr!2044 (_keys!4254 (v!2863 (underlying!354 thiss!992)))) from!355) Nil!1626)))))

(assert (=> b!102597 false))

(declare-fun b!102598 () Bool)

(declare-fun tp_is_empty!2661 () Bool)

(assert (=> b!102598 (= e!66804 tp_is_empty!2661)))

(declare-fun mapNonEmpty!3864 () Bool)

(declare-fun tp!9780 () Bool)

(declare-fun e!66799 () Bool)

(assert (=> mapNonEmpty!3864 (= mapRes!3864 (and tp!9780 e!66799))))

(declare-fun mapValue!3863 () ValueCell!987)

(declare-fun mapKey!3864 () (_ BitVec 32))

(declare-fun mapRest!3863 () (Array (_ BitVec 32) ValueCell!987))

(assert (=> mapNonEmpty!3864 (= (arr!2045 (_values!2535 newMap!16)) (store mapRest!3863 mapKey!3864 mapValue!3863))))

(declare-fun b!102599 () Bool)

(declare-fun e!66798 () Bool)

(assert (=> b!102599 (= e!66795 e!66798)))

(declare-fun res!51314 () Bool)

(assert (=> b!102599 (=> (not res!51314) (not e!66798))))

(declare-datatypes ((tuple2!2386 0))(
  ( (tuple2!2387 (_1!1203 Bool) (_2!1203 LongMapFixedSize!882)) )
))
(declare-fun lt!52130 () tuple2!2386)

(assert (=> b!102599 (= res!51314 (and (_1!1203 lt!52130) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!52128 () Unit!3148)

(assert (=> b!102599 (= lt!52128 e!66809)))

(declare-fun c!17669 () Bool)

(declare-fun contains!820 (ListLongMap!1569 (_ BitVec 64)) Bool)

(assert (=> b!102599 (= c!17669 (contains!820 lt!52129 (select (arr!2044 (_keys!4254 (v!2863 (underlying!354 thiss!992)))) from!355)))))

(declare-fun update!153 (LongMapFixedSize!882 (_ BitVec 64) V!3195) tuple2!2386)

(declare-fun get!1325 (ValueCell!987 V!3195) V!3195)

(declare-fun dynLambda!385 (Int (_ BitVec 64)) V!3195)

(assert (=> b!102599 (= lt!52130 (update!153 newMap!16 (select (arr!2044 (_keys!4254 (v!2863 (underlying!354 thiss!992)))) from!355) (get!1325 (select (arr!2045 (_values!2535 (v!2863 (underlying!354 thiss!992)))) from!355) (dynLambda!385 (defaultEntry!2552 (v!2863 (underlying!354 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!102600 () Bool)

(declare-fun e!66808 () Bool)

(assert (=> b!102600 (= e!66797 e!66808)))

(declare-fun array_inv!1229 (array!4308) Bool)

(declare-fun array_inv!1230 (array!4310) Bool)

(assert (=> b!102601 (= e!66796 (and tp!9778 tp_is_empty!2661 (array_inv!1229 (_keys!4254 newMap!16)) (array_inv!1230 (_values!2535 newMap!16)) e!66803))))

(declare-fun b!102602 () Bool)

(declare-fun e!66805 () Bool)

(assert (=> b!102602 (= e!66808 e!66805)))

(declare-fun mapIsEmpty!3863 () Bool)

(assert (=> mapIsEmpty!3863 mapRes!3863))

(declare-fun mapIsEmpty!3864 () Bool)

(assert (=> mapIsEmpty!3864 mapRes!3864))

(declare-fun b!102603 () Bool)

(assert (=> b!102603 (= e!66802 tp_is_empty!2661)))

(declare-fun b!102604 () Bool)

(assert (=> b!102604 (= e!66799 tp_is_empty!2661)))

(declare-fun b!102605 () Bool)

(assert (=> b!102605 (= e!66810 tp_is_empty!2661)))

(assert (=> b!102606 (= e!66805 (and tp!9779 tp_is_empty!2661 (array_inv!1229 (_keys!4254 (v!2863 (underlying!354 thiss!992)))) (array_inv!1230 (_values!2535 (v!2863 (underlying!354 thiss!992)))) e!66800))))

(declare-fun b!102607 () Bool)

(assert (=> b!102607 (= e!66798 false)))

(declare-fun lt!52133 () ListLongMap!1569)

(declare-fun getCurrentListMapNoExtraKeys!107 (array!4308 array!4310 (_ BitVec 32) (_ BitVec 32) V!3195 V!3195 (_ BitVec 32) Int) ListLongMap!1569)

(assert (=> b!102607 (= lt!52133 (getCurrentListMapNoExtraKeys!107 (_keys!4254 (v!2863 (underlying!354 thiss!992))) (_values!2535 (v!2863 (underlying!354 thiss!992))) (mask!6683 (v!2863 (underlying!354 thiss!992))) (extraKeys!2361 (v!2863 (underlying!354 thiss!992))) (zeroValue!2429 (v!2863 (underlying!354 thiss!992))) (minValue!2429 (v!2863 (underlying!354 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2552 (v!2863 (underlying!354 thiss!992)))))))

(declare-fun b!102608 () Bool)

(declare-fun res!51316 () Bool)

(assert (=> b!102608 (=> (not res!51316) (not e!66801))))

(assert (=> b!102608 (= res!51316 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2298 (_keys!4254 (v!2863 (underlying!354 thiss!992)))))))))

(assert (= (and start!12154 res!51313) b!102608))

(assert (= (and b!102608 res!51316) b!102595))

(assert (= (and b!102595 res!51311) b!102593))

(assert (= (and b!102593 res!51312) b!102592))

(assert (= (and b!102592 res!51315) b!102599))

(assert (= (and b!102599 c!17669) b!102597))

(assert (= (and b!102599 (not c!17669)) b!102596))

(assert (= (and b!102599 res!51314) b!102607))

(assert (= (and b!102594 condMapEmpty!3864) mapIsEmpty!3863))

(assert (= (and b!102594 (not condMapEmpty!3864)) mapNonEmpty!3863))

(get-info :version)

(assert (= (and mapNonEmpty!3863 ((_ is ValueCellFull!987) mapValue!3864)) b!102598))

(assert (= (and b!102594 ((_ is ValueCellFull!987) mapDefault!3863)) b!102603))

(assert (= b!102606 b!102594))

(assert (= b!102602 b!102606))

(assert (= b!102600 b!102602))

(assert (= start!12154 b!102600))

(assert (= (and b!102591 condMapEmpty!3863) mapIsEmpty!3864))

(assert (= (and b!102591 (not condMapEmpty!3863)) mapNonEmpty!3864))

(assert (= (and mapNonEmpty!3864 ((_ is ValueCellFull!987) mapValue!3863)) b!102604))

(assert (= (and b!102591 ((_ is ValueCellFull!987) mapDefault!3864)) b!102605))

(assert (= b!102601 b!102591))

(assert (= start!12154 b!102601))

(declare-fun b_lambda!4609 () Bool)

(assert (=> (not b_lambda!4609) (not b!102599)))

(declare-fun t!5675 () Bool)

(declare-fun tb!2017 () Bool)

(assert (=> (and b!102606 (= (defaultEntry!2552 (v!2863 (underlying!354 thiss!992))) (defaultEntry!2552 (v!2863 (underlying!354 thiss!992)))) t!5675) tb!2017))

(declare-fun result!3395 () Bool)

(assert (=> tb!2017 (= result!3395 tp_is_empty!2661)))

(assert (=> b!102599 t!5675))

(declare-fun b_and!6341 () Bool)

(assert (= b_and!6337 (and (=> t!5675 result!3395) b_and!6341)))

(declare-fun t!5677 () Bool)

(declare-fun tb!2019 () Bool)

(assert (=> (and b!102601 (= (defaultEntry!2552 newMap!16) (defaultEntry!2552 (v!2863 (underlying!354 thiss!992)))) t!5677) tb!2019))

(declare-fun result!3399 () Bool)

(assert (= result!3399 result!3395))

(assert (=> b!102599 t!5677))

(declare-fun b_and!6343 () Bool)

(assert (= b_and!6339 (and (=> t!5677 result!3399) b_and!6343)))

(declare-fun m!113635 () Bool)

(assert (=> b!102597 m!113635))

(declare-fun m!113637 () Bool)

(assert (=> b!102597 m!113637))

(declare-fun m!113639 () Bool)

(assert (=> b!102597 m!113639))

(declare-fun m!113641 () Bool)

(assert (=> b!102597 m!113641))

(assert (=> b!102597 m!113639))

(assert (=> b!102597 m!113639))

(declare-fun m!113643 () Bool)

(assert (=> b!102597 m!113643))

(assert (=> b!102597 m!113639))

(declare-fun m!113645 () Bool)

(assert (=> b!102597 m!113645))

(declare-fun m!113647 () Bool)

(assert (=> mapNonEmpty!3863 m!113647))

(declare-fun m!113649 () Bool)

(assert (=> b!102601 m!113649))

(declare-fun m!113651 () Bool)

(assert (=> b!102601 m!113651))

(declare-fun m!113653 () Bool)

(assert (=> b!102599 m!113653))

(declare-fun m!113655 () Bool)

(assert (=> b!102599 m!113655))

(declare-fun m!113657 () Bool)

(assert (=> b!102599 m!113657))

(assert (=> b!102599 m!113639))

(declare-fun m!113659 () Bool)

(assert (=> b!102599 m!113659))

(assert (=> b!102599 m!113639))

(assert (=> b!102599 m!113655))

(assert (=> b!102599 m!113639))

(assert (=> b!102599 m!113657))

(declare-fun m!113661 () Bool)

(assert (=> b!102599 m!113661))

(assert (=> b!102599 m!113653))

(declare-fun m!113663 () Bool)

(assert (=> start!12154 m!113663))

(assert (=> b!102592 m!113639))

(declare-fun m!113665 () Bool)

(assert (=> b!102592 m!113665))

(declare-fun m!113667 () Bool)

(assert (=> b!102592 m!113667))

(declare-fun m!113669 () Bool)

(assert (=> b!102607 m!113669))

(declare-fun m!113671 () Bool)

(assert (=> b!102606 m!113671))

(declare-fun m!113673 () Bool)

(assert (=> b!102606 m!113673))

(declare-fun m!113675 () Bool)

(assert (=> b!102595 m!113675))

(declare-fun m!113677 () Bool)

(assert (=> mapNonEmpty!3864 m!113677))

(check-sat (not b!102599) b_and!6343 (not b!102592) (not start!12154) (not b_next!2489) (not b!102597) (not b!102601) (not b!102607) (not b!102606) (not b!102595) tp_is_empty!2661 (not mapNonEmpty!3863) (not mapNonEmpty!3864) (not b_next!2491) (not b_lambda!4609) b_and!6341)
(check-sat b_and!6341 b_and!6343 (not b_next!2489) (not b_next!2491))

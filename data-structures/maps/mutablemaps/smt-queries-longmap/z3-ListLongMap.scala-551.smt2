; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14684 () Bool)

(assert start!14684)

(declare-fun b!139022 () Bool)

(declare-fun b_free!3005 () Bool)

(declare-fun b_next!3005 () Bool)

(assert (=> b!139022 (= b_free!3005 (not b_next!3005))))

(declare-fun tp!11482 () Bool)

(declare-fun b_and!8689 () Bool)

(assert (=> b!139022 (= tp!11482 b_and!8689)))

(declare-fun b!139025 () Bool)

(declare-fun b_free!3007 () Bool)

(declare-fun b_next!3007 () Bool)

(assert (=> b!139025 (= b_free!3007 (not b_next!3007))))

(declare-fun tp!11481 () Bool)

(declare-fun b_and!8691 () Bool)

(assert (=> b!139025 (= tp!11481 b_and!8691)))

(declare-datatypes ((V!3539 0))(
  ( (V!3540 (val!1504 Int)) )
))
(declare-datatypes ((array!4870 0))(
  ( (array!4871 (arr!2302 (Array (_ BitVec 32) (_ BitVec 64))) (size!2574 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1116 0))(
  ( (ValueCellFull!1116 (v!3265 V!3539)) (EmptyCell!1116) )
))
(declare-datatypes ((array!4872 0))(
  ( (array!4873 (arr!2303 (Array (_ BitVec 32) ValueCell!1116)) (size!2575 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1140 0))(
  ( (LongMapFixedSize!1141 (defaultEntry!2932 Int) (mask!7268 (_ BitVec 32)) (extraKeys!2687 (_ BitVec 32)) (zeroValue!2782 V!3539) (minValue!2782 V!3539) (_size!619 (_ BitVec 32)) (_keys!4691 array!4870) (_values!2915 array!4872) (_vacant!619 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!928 0))(
  ( (Cell!929 (v!3266 LongMapFixedSize!1140)) )
))
(declare-datatypes ((LongMap!928 0))(
  ( (LongMap!929 (underlying!475 Cell!928)) )
))
(declare-fun thiss!992 () LongMap!928)

(declare-fun e!90638 () Bool)

(declare-fun tp_is_empty!2919 () Bool)

(declare-fun e!90643 () Bool)

(declare-fun array_inv!1423 (array!4870) Bool)

(declare-fun array_inv!1424 (array!4872) Bool)

(assert (=> b!139022 (= e!90643 (and tp!11482 tp_is_empty!2919 (array_inv!1423 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) (array_inv!1424 (_values!2915 (v!3266 (underlying!475 thiss!992)))) e!90638))))

(declare-fun b!139023 () Bool)

(declare-fun e!90632 () Bool)

(assert (=> b!139023 (= e!90632 tp_is_empty!2919)))

(declare-fun b!139024 () Bool)

(declare-fun e!90639 () Bool)

(declare-fun e!90635 () Bool)

(declare-fun mapRes!4794 () Bool)

(assert (=> b!139024 (= e!90639 (and e!90635 mapRes!4794))))

(declare-fun condMapEmpty!4793 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!1140)

(declare-fun mapDefault!4794 () ValueCell!1116)

(assert (=> b!139024 (= condMapEmpty!4793 (= (arr!2303 (_values!2915 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1116)) mapDefault!4794)))))

(declare-fun mapIsEmpty!4793 () Bool)

(declare-fun mapRes!4793 () Bool)

(assert (=> mapIsEmpty!4793 mapRes!4793))

(declare-fun e!90637 () Bool)

(assert (=> b!139025 (= e!90637 (and tp!11481 tp_is_empty!2919 (array_inv!1423 (_keys!4691 newMap!16)) (array_inv!1424 (_values!2915 newMap!16)) e!90639))))

(declare-fun b!139026 () Bool)

(declare-fun e!90634 () Bool)

(assert (=> b!139026 (= e!90634 e!90643)))

(declare-fun b!139027 () Bool)

(declare-fun res!66545 () Bool)

(declare-fun e!90640 () Bool)

(assert (=> b!139027 (=> (not res!66545) (not e!90640))))

(assert (=> b!139027 (= res!66545 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7268 newMap!16)) (_size!619 (v!3266 (underlying!475 thiss!992)))))))

(declare-fun b!139028 () Bool)

(declare-fun e!90641 () Bool)

(assert (=> b!139028 (= e!90641 e!90634)))

(declare-fun mapIsEmpty!4794 () Bool)

(assert (=> mapIsEmpty!4794 mapRes!4794))

(declare-fun res!66548 () Bool)

(assert (=> start!14684 (=> (not res!66548) (not e!90640))))

(declare-fun valid!548 (LongMap!928) Bool)

(assert (=> start!14684 (= res!66548 (valid!548 thiss!992))))

(assert (=> start!14684 e!90640))

(assert (=> start!14684 e!90641))

(assert (=> start!14684 true))

(assert (=> start!14684 e!90637))

(declare-fun b!139029 () Bool)

(declare-fun e!90642 () Bool)

(assert (=> b!139029 (= e!90642 tp_is_empty!2919)))

(declare-fun b!139030 () Bool)

(declare-fun e!90636 () Bool)

(assert (=> b!139030 (= e!90636 tp_is_empty!2919)))

(declare-fun mapNonEmpty!4793 () Bool)

(declare-fun tp!11483 () Bool)

(assert (=> mapNonEmpty!4793 (= mapRes!4793 (and tp!11483 e!90632))))

(declare-fun mapValue!4794 () ValueCell!1116)

(declare-fun mapRest!4793 () (Array (_ BitVec 32) ValueCell!1116))

(declare-fun mapKey!4794 () (_ BitVec 32))

(assert (=> mapNonEmpty!4793 (= (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) (store mapRest!4793 mapKey!4794 mapValue!4794))))

(declare-fun b!139031 () Bool)

(assert (=> b!139031 (= e!90638 (and e!90636 mapRes!4793))))

(declare-fun condMapEmpty!4794 () Bool)

(declare-fun mapDefault!4793 () ValueCell!1116)

(assert (=> b!139031 (= condMapEmpty!4794 (= (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1116)) mapDefault!4793)))))

(declare-fun b!139032 () Bool)

(declare-fun e!90631 () Bool)

(assert (=> b!139032 (= e!90640 e!90631)))

(declare-fun res!66549 () Bool)

(assert (=> b!139032 (=> (not res!66549) (not e!90631))))

(declare-datatypes ((tuple2!2662 0))(
  ( (tuple2!2663 (_1!1341 (_ BitVec 64)) (_2!1341 V!3539)) )
))
(declare-datatypes ((List!1754 0))(
  ( (Nil!1751) (Cons!1750 (h!2357 tuple2!2662) (t!6326 List!1754)) )
))
(declare-datatypes ((ListLongMap!1735 0))(
  ( (ListLongMap!1736 (toList!883 List!1754)) )
))
(declare-fun lt!72809 () ListLongMap!1735)

(declare-fun lt!72807 () ListLongMap!1735)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!139032 (= res!66549 (and (= lt!72809 lt!72807) (not (= (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1430 (LongMapFixedSize!1140) ListLongMap!1735)

(assert (=> b!139032 (= lt!72807 (map!1430 newMap!16))))

(declare-fun getCurrentListMap!551 (array!4870 array!4872 (_ BitVec 32) (_ BitVec 32) V!3539 V!3539 (_ BitVec 32) Int) ListLongMap!1735)

(assert (=> b!139032 (= lt!72809 (getCurrentListMap!551 (_keys!4691 (v!3266 (underlying!475 thiss!992))) (_values!2915 (v!3266 (underlying!475 thiss!992))) (mask!7268 (v!3266 (underlying!475 thiss!992))) (extraKeys!2687 (v!3266 (underlying!475 thiss!992))) (zeroValue!2782 (v!3266 (underlying!475 thiss!992))) (minValue!2782 (v!3266 (underlying!475 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2932 (v!3266 (underlying!475 thiss!992)))))))

(declare-fun b!139033 () Bool)

(assert (=> b!139033 (= e!90635 tp_is_empty!2919)))

(declare-fun b!139034 () Bool)

(declare-fun res!66547 () Bool)

(assert (=> b!139034 (=> (not res!66547) (not e!90640))))

(declare-fun valid!549 (LongMapFixedSize!1140) Bool)

(assert (=> b!139034 (= res!66547 (valid!549 newMap!16))))

(declare-fun mapNonEmpty!4794 () Bool)

(declare-fun tp!11484 () Bool)

(assert (=> mapNonEmpty!4794 (= mapRes!4794 (and tp!11484 e!90642))))

(declare-fun mapValue!4793 () ValueCell!1116)

(declare-fun mapRest!4794 () (Array (_ BitVec 32) ValueCell!1116))

(declare-fun mapKey!4793 () (_ BitVec 32))

(assert (=> mapNonEmpty!4794 (= (arr!2303 (_values!2915 newMap!16)) (store mapRest!4794 mapKey!4793 mapValue!4793))))

(declare-fun b!139035 () Bool)

(declare-fun e!90630 () Bool)

(assert (=> b!139035 (= e!90631 e!90630)))

(declare-fun res!66550 () Bool)

(assert (=> b!139035 (=> (not res!66550) (not e!90630))))

(declare-fun contains!915 (ListLongMap!1735 (_ BitVec 64)) Bool)

(assert (=> b!139035 (= res!66550 (contains!915 lt!72807 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2664 0))(
  ( (tuple2!2665 (_1!1342 Bool) (_2!1342 LongMapFixedSize!1140)) )
))
(declare-fun lt!72808 () tuple2!2664)

(declare-fun update!205 (LongMapFixedSize!1140 (_ BitVec 64) V!3539) tuple2!2664)

(declare-fun get!1524 (ValueCell!1116 V!3539) V!3539)

(declare-fun dynLambda!438 (Int (_ BitVec 64)) V!3539)

(assert (=> b!139035 (= lt!72808 (update!205 newMap!16 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) (get!1524 (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) from!355) (dynLambda!438 (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!139036 () Bool)

(declare-fun res!66546 () Bool)

(assert (=> b!139036 (=> (not res!66546) (not e!90640))))

(assert (=> b!139036 (= res!66546 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2574 (_keys!4691 (v!3266 (underlying!475 thiss!992)))))))))

(declare-fun b!139037 () Bool)

(assert (=> b!139037 (= e!90630 (not (bvslt (size!2574 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) #b01111111111111111111111111111111)))))

(declare-datatypes ((List!1755 0))(
  ( (Nil!1752) (Cons!1751 (h!2358 (_ BitVec 64)) (t!6327 List!1755)) )
))
(declare-fun arrayNoDuplicates!0 (array!4870 (_ BitVec 32) List!1755) Bool)

(assert (=> b!139037 (arrayNoDuplicates!0 (_keys!4691 (v!3266 (underlying!475 thiss!992))) from!355 Nil!1752)))

(declare-datatypes ((Unit!4385 0))(
  ( (Unit!4386) )
))
(declare-fun lt!72810 () Unit!4385)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4870 (_ BitVec 32) (_ BitVec 32)) Unit!4385)

(assert (=> b!139037 (= lt!72810 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4691 (v!3266 (underlying!475 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!4870 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!139037 (arrayContainsKey!0 (_keys!4691 (v!3266 (underlying!475 thiss!992))) (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!72806 () Unit!4385)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!141 (array!4870 array!4872 (_ BitVec 32) (_ BitVec 32) V!3539 V!3539 (_ BitVec 64) (_ BitVec 32) Int) Unit!4385)

(assert (=> b!139037 (= lt!72806 (lemmaListMapContainsThenArrayContainsFrom!141 (_keys!4691 (v!3266 (underlying!475 thiss!992))) (_values!2915 (v!3266 (underlying!475 thiss!992))) (mask!7268 (v!3266 (underlying!475 thiss!992))) (extraKeys!2687 (v!3266 (underlying!475 thiss!992))) (zeroValue!2782 (v!3266 (underlying!475 thiss!992))) (minValue!2782 (v!3266 (underlying!475 thiss!992))) (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2932 (v!3266 (underlying!475 thiss!992)))))))

(assert (= (and start!14684 res!66548) b!139036))

(assert (= (and b!139036 res!66546) b!139034))

(assert (= (and b!139034 res!66547) b!139027))

(assert (= (and b!139027 res!66545) b!139032))

(assert (= (and b!139032 res!66549) b!139035))

(assert (= (and b!139035 res!66550) b!139037))

(assert (= (and b!139031 condMapEmpty!4794) mapIsEmpty!4793))

(assert (= (and b!139031 (not condMapEmpty!4794)) mapNonEmpty!4793))

(get-info :version)

(assert (= (and mapNonEmpty!4793 ((_ is ValueCellFull!1116) mapValue!4794)) b!139023))

(assert (= (and b!139031 ((_ is ValueCellFull!1116) mapDefault!4793)) b!139030))

(assert (= b!139022 b!139031))

(assert (= b!139026 b!139022))

(assert (= b!139028 b!139026))

(assert (= start!14684 b!139028))

(assert (= (and b!139024 condMapEmpty!4793) mapIsEmpty!4794))

(assert (= (and b!139024 (not condMapEmpty!4793)) mapNonEmpty!4794))

(assert (= (and mapNonEmpty!4794 ((_ is ValueCellFull!1116) mapValue!4793)) b!139029))

(assert (= (and b!139024 ((_ is ValueCellFull!1116) mapDefault!4794)) b!139033))

(assert (= b!139025 b!139024))

(assert (= start!14684 b!139025))

(declare-fun b_lambda!6263 () Bool)

(assert (=> (not b_lambda!6263) (not b!139035)))

(declare-fun t!6323 () Bool)

(declare-fun tb!2533 () Bool)

(assert (=> (and b!139022 (= (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) (defaultEntry!2932 (v!3266 (underlying!475 thiss!992)))) t!6323) tb!2533))

(declare-fun result!4151 () Bool)

(assert (=> tb!2533 (= result!4151 tp_is_empty!2919)))

(assert (=> b!139035 t!6323))

(declare-fun b_and!8693 () Bool)

(assert (= b_and!8689 (and (=> t!6323 result!4151) b_and!8693)))

(declare-fun t!6325 () Bool)

(declare-fun tb!2535 () Bool)

(assert (=> (and b!139025 (= (defaultEntry!2932 newMap!16) (defaultEntry!2932 (v!3266 (underlying!475 thiss!992)))) t!6325) tb!2535))

(declare-fun result!4155 () Bool)

(assert (= result!4155 result!4151))

(assert (=> b!139035 t!6325))

(declare-fun b_and!8695 () Bool)

(assert (= b_and!8691 (and (=> t!6325 result!4155) b_and!8695)))

(declare-fun m!166331 () Bool)

(assert (=> start!14684 m!166331))

(declare-fun m!166333 () Bool)

(assert (=> b!139037 m!166333))

(declare-fun m!166335 () Bool)

(assert (=> b!139037 m!166335))

(declare-fun m!166337 () Bool)

(assert (=> b!139037 m!166337))

(declare-fun m!166339 () Bool)

(assert (=> b!139037 m!166339))

(assert (=> b!139037 m!166337))

(assert (=> b!139037 m!166337))

(declare-fun m!166341 () Bool)

(assert (=> b!139037 m!166341))

(declare-fun m!166343 () Bool)

(assert (=> b!139034 m!166343))

(declare-fun m!166345 () Bool)

(assert (=> mapNonEmpty!4794 m!166345))

(declare-fun m!166347 () Bool)

(assert (=> b!139035 m!166347))

(declare-fun m!166349 () Bool)

(assert (=> b!139035 m!166349))

(declare-fun m!166351 () Bool)

(assert (=> b!139035 m!166351))

(assert (=> b!139035 m!166337))

(assert (=> b!139035 m!166337))

(declare-fun m!166353 () Bool)

(assert (=> b!139035 m!166353))

(assert (=> b!139035 m!166349))

(assert (=> b!139035 m!166337))

(assert (=> b!139035 m!166351))

(declare-fun m!166355 () Bool)

(assert (=> b!139035 m!166355))

(assert (=> b!139035 m!166347))

(declare-fun m!166357 () Bool)

(assert (=> mapNonEmpty!4793 m!166357))

(declare-fun m!166359 () Bool)

(assert (=> b!139025 m!166359))

(declare-fun m!166361 () Bool)

(assert (=> b!139025 m!166361))

(declare-fun m!166363 () Bool)

(assert (=> b!139022 m!166363))

(declare-fun m!166365 () Bool)

(assert (=> b!139022 m!166365))

(assert (=> b!139032 m!166337))

(declare-fun m!166367 () Bool)

(assert (=> b!139032 m!166367))

(declare-fun m!166369 () Bool)

(assert (=> b!139032 m!166369))

(check-sat b_and!8693 (not b!139034) (not b!139035) (not b_lambda!6263) (not b_next!3007) (not b!139025) (not start!14684) tp_is_empty!2919 (not mapNonEmpty!4793) (not b!139032) (not b!139037) (not b!139022) (not b_next!3005) b_and!8695 (not mapNonEmpty!4794))
(check-sat b_and!8693 b_and!8695 (not b_next!3005) (not b_next!3007))
(get-model)

(declare-fun b_lambda!6267 () Bool)

(assert (= b_lambda!6263 (or (and b!139022 b_free!3005) (and b!139025 b_free!3007 (= (defaultEntry!2932 newMap!16) (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))))) b_lambda!6267)))

(check-sat b_and!8693 (not b!139034) (not b!139035) (not b_next!3007) (not b_lambda!6267) (not b!139025) (not start!14684) tp_is_empty!2919 (not mapNonEmpty!4793) (not b!139032) (not b!139037) (not b!139022) (not b_next!3005) b_and!8695 (not mapNonEmpty!4794))
(check-sat b_and!8693 b_and!8695 (not b_next!3005) (not b_next!3007))
(get-model)

(declare-fun d!43403 () Bool)

(assert (=> d!43403 (= (valid!548 thiss!992) (valid!549 (v!3266 (underlying!475 thiss!992))))))

(declare-fun bs!5829 () Bool)

(assert (= bs!5829 d!43403))

(declare-fun m!166411 () Bool)

(assert (=> bs!5829 m!166411))

(assert (=> start!14684 d!43403))

(declare-fun d!43405 () Bool)

(declare-fun e!90693 () Bool)

(assert (=> d!43405 e!90693))

(declare-fun res!66571 () Bool)

(assert (=> d!43405 (=> res!66571 e!90693)))

(declare-fun lt!72834 () Bool)

(assert (=> d!43405 (= res!66571 (not lt!72834))))

(declare-fun lt!72835 () Bool)

(assert (=> d!43405 (= lt!72834 lt!72835)))

(declare-fun lt!72837 () Unit!4385)

(declare-fun e!90694 () Unit!4385)

(assert (=> d!43405 (= lt!72837 e!90694)))

(declare-fun c!26024 () Bool)

(assert (=> d!43405 (= c!26024 lt!72835)))

(declare-fun containsKey!178 (List!1754 (_ BitVec 64)) Bool)

(assert (=> d!43405 (= lt!72835 (containsKey!178 (toList!883 lt!72807) (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355)))))

(assert (=> d!43405 (= (contains!915 lt!72807 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355)) lt!72834)))

(declare-fun b!139096 () Bool)

(declare-fun lt!72836 () Unit!4385)

(assert (=> b!139096 (= e!90694 lt!72836)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!127 (List!1754 (_ BitVec 64)) Unit!4385)

(assert (=> b!139096 (= lt!72836 (lemmaContainsKeyImpliesGetValueByKeyDefined!127 (toList!883 lt!72807) (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355)))))

(declare-datatypes ((Option!180 0))(
  ( (Some!179 (v!3270 V!3539)) (None!178) )
))
(declare-fun isDefined!128 (Option!180) Bool)

(declare-fun getValueByKey!174 (List!1754 (_ BitVec 64)) Option!180)

(assert (=> b!139096 (isDefined!128 (getValueByKey!174 (toList!883 lt!72807) (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355)))))

(declare-fun b!139097 () Bool)

(declare-fun Unit!4389 () Unit!4385)

(assert (=> b!139097 (= e!90694 Unit!4389)))

(declare-fun b!139098 () Bool)

(assert (=> b!139098 (= e!90693 (isDefined!128 (getValueByKey!174 (toList!883 lt!72807) (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355))))))

(assert (= (and d!43405 c!26024) b!139096))

(assert (= (and d!43405 (not c!26024)) b!139097))

(assert (= (and d!43405 (not res!66571)) b!139098))

(assert (=> d!43405 m!166337))

(declare-fun m!166413 () Bool)

(assert (=> d!43405 m!166413))

(assert (=> b!139096 m!166337))

(declare-fun m!166415 () Bool)

(assert (=> b!139096 m!166415))

(assert (=> b!139096 m!166337))

(declare-fun m!166417 () Bool)

(assert (=> b!139096 m!166417))

(assert (=> b!139096 m!166417))

(declare-fun m!166419 () Bool)

(assert (=> b!139096 m!166419))

(assert (=> b!139098 m!166337))

(assert (=> b!139098 m!166417))

(assert (=> b!139098 m!166417))

(assert (=> b!139098 m!166419))

(assert (=> b!139035 d!43405))

(declare-fun b!139179 () Bool)

(declare-fun lt!72911 () Unit!4385)

(declare-fun e!90742 () Unit!4385)

(assert (=> b!139179 (= lt!72911 e!90742)))

(declare-fun c!26055 () Bool)

(declare-fun call!15392 () Bool)

(assert (=> b!139179 (= c!26055 call!15392)))

(declare-fun e!90753 () tuple2!2664)

(assert (=> b!139179 (= e!90753 (tuple2!2665 false newMap!16))))

(declare-fun bm!15375 () Bool)

(declare-fun call!15378 () Bool)

(declare-fun call!15399 () Bool)

(assert (=> bm!15375 (= call!15378 call!15399)))

(declare-fun bm!15376 () Bool)

(declare-fun call!15385 () Unit!4385)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!64 (array!4870 array!4872 (_ BitVec 32) (_ BitVec 32) V!3539 V!3539 (_ BitVec 64) Int) Unit!4385)

(assert (=> bm!15376 (= call!15385 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!64 (_keys!4691 newMap!16) (_values!2915 newMap!16) (mask!7268 newMap!16) (extraKeys!2687 newMap!16) (zeroValue!2782 newMap!16) (minValue!2782 newMap!16) (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) (defaultEntry!2932 newMap!16)))))

(declare-fun b!139180 () Bool)

(declare-fun e!90741 () tuple2!2664)

(assert (=> b!139180 (= e!90741 e!90753)))

(declare-datatypes ((SeekEntryResult!288 0))(
  ( (MissingZero!288 (index!3315 (_ BitVec 32))) (Found!288 (index!3316 (_ BitVec 32))) (Intermediate!288 (undefined!1100 Bool) (index!3317 (_ BitVec 32)) (x!16091 (_ BitVec 32))) (Undefined!288) (MissingVacant!288 (index!3318 (_ BitVec 32))) )
))
(declare-fun lt!72915 () SeekEntryResult!288)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4870 (_ BitVec 32)) SeekEntryResult!288)

(assert (=> b!139180 (= lt!72915 (seekEntryOrOpen!0 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) (_keys!4691 newMap!16) (mask!7268 newMap!16)))))

(declare-fun c!26057 () Bool)

(assert (=> b!139180 (= c!26057 ((_ is Undefined!288) lt!72915))))

(declare-fun b!139181 () Bool)

(declare-fun e!90757 () Bool)

(declare-fun call!15382 () Bool)

(assert (=> b!139181 (= e!90757 (not call!15382))))

(declare-fun b!139182 () Bool)

(declare-fun call!15391 () ListLongMap!1735)

(declare-fun c!26061 () Bool)

(declare-fun call!15390 () ListLongMap!1735)

(declare-fun e!90754 () ListLongMap!1735)

(assert (=> b!139182 (= e!90754 (ite c!26061 call!15390 call!15391))))

(declare-fun b!139183 () Bool)

(declare-fun lt!72918 () tuple2!2664)

(declare-fun call!15381 () tuple2!2664)

(assert (=> b!139183 (= lt!72918 call!15381)))

(declare-fun e!90747 () tuple2!2664)

(assert (=> b!139183 (= e!90747 (tuple2!2665 (_1!1342 lt!72918) (_2!1342 lt!72918)))))

(declare-fun b!139184 () Bool)

(declare-fun e!90737 () Bool)

(declare-fun e!90744 () Bool)

(assert (=> b!139184 (= e!90737 e!90744)))

(declare-fun res!66602 () Bool)

(declare-fun call!15400 () Bool)

(assert (=> b!139184 (= res!66602 call!15400)))

(assert (=> b!139184 (=> (not res!66602) (not e!90744))))

(declare-fun c!26053 () Bool)

(declare-fun call!15387 () ListLongMap!1735)

(declare-fun bm!15377 () Bool)

(declare-fun +!173 (ListLongMap!1735 tuple2!2662) ListLongMap!1735)

(assert (=> bm!15377 (= call!15387 (+!173 e!90754 (ite c!26053 (ite c!26061 (tuple2!2663 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1524 (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) from!355) (dynLambda!438 (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2663 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1524 (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) from!355) (dynLambda!438 (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2663 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) (get!1524 (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) from!355) (dynLambda!438 (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun c!26063 () Bool)

(assert (=> bm!15377 (= c!26063 c!26053)))

(declare-fun lt!72917 () SeekEntryResult!288)

(declare-fun b!139185 () Bool)

(declare-fun e!90749 () Bool)

(assert (=> b!139185 (= e!90749 (= (select (arr!2302 (_keys!4691 newMap!16)) (index!3316 lt!72917)) (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355)))))

(declare-fun bm!15378 () Bool)

(declare-fun call!15401 () SeekEntryResult!288)

(declare-fun call!15380 () SeekEntryResult!288)

(assert (=> bm!15378 (= call!15401 call!15380)))

(declare-fun b!139186 () Bool)

(declare-fun res!66600 () Bool)

(assert (=> b!139186 (=> (not res!66600) (not e!90757))))

(assert (=> b!139186 (= res!66600 call!15378)))

(declare-fun e!90751 () Bool)

(assert (=> b!139186 (= e!90751 e!90757)))

(declare-fun b!139187 () Bool)

(declare-fun e!90738 () Bool)

(declare-fun e!90756 () Bool)

(assert (=> b!139187 (= e!90738 e!90756)))

(declare-fun res!66606 () Bool)

(declare-fun call!15389 () ListLongMap!1735)

(assert (=> b!139187 (= res!66606 (contains!915 call!15389 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355)))))

(assert (=> b!139187 (=> (not res!66606) (not e!90756))))

(declare-fun b!139188 () Bool)

(declare-fun e!90740 () Unit!4385)

(declare-fun lt!72912 () Unit!4385)

(assert (=> b!139188 (= e!90740 lt!72912)))

(declare-fun call!15379 () Unit!4385)

(assert (=> b!139188 (= lt!72912 call!15379)))

(assert (=> b!139188 (= lt!72917 call!15401)))

(declare-fun res!66603 () Bool)

(assert (=> b!139188 (= res!66603 ((_ is Found!288) lt!72917))))

(assert (=> b!139188 (=> (not res!66603) (not e!90749))))

(assert (=> b!139188 e!90749))

(declare-fun bm!15379 () Bool)

(declare-fun call!15384 () Bool)

(assert (=> bm!15379 (= call!15384 (arrayContainsKey!0 (_keys!4691 newMap!16) (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!139189 () Bool)

(declare-fun e!90745 () tuple2!2664)

(assert (=> b!139189 (= e!90741 e!90745)))

(assert (=> b!139189 (= c!26061 (= (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!72904 () SeekEntryResult!288)

(declare-fun c!26052 () Bool)

(declare-fun lt!72914 () SeekEntryResult!288)

(declare-fun call!15388 () Bool)

(declare-fun c!26054 () Bool)

(declare-fun bm!15380 () Bool)

(declare-fun c!26062 () Bool)

(declare-fun lt!72895 () SeekEntryResult!288)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!15380 (= call!15388 (inRange!0 (ite c!26057 (ite c!26055 (index!3316 lt!72904) (ite c!26052 (index!3315 lt!72914) (index!3318 lt!72914))) (ite c!26054 (index!3316 lt!72917) (ite c!26062 (index!3315 lt!72895) (index!3318 lt!72895)))) (mask!7268 newMap!16)))))

(declare-fun bm!15381 () Bool)

(declare-fun call!15386 () Bool)

(assert (=> bm!15381 (= call!15386 call!15384)))

(declare-fun b!139190 () Bool)

(declare-fun lt!72910 () Unit!4385)

(declare-fun lt!72896 () Unit!4385)

(assert (=> b!139190 (= lt!72910 lt!72896)))

(assert (=> b!139190 call!15392))

(declare-fun lt!72901 () array!4872)

(declare-fun lemmaValidKeyInArrayIsInListMap!122 (array!4870 array!4872 (_ BitVec 32) (_ BitVec 32) V!3539 V!3539 (_ BitVec 32) Int) Unit!4385)

(assert (=> b!139190 (= lt!72896 (lemmaValidKeyInArrayIsInListMap!122 (_keys!4691 newMap!16) lt!72901 (mask!7268 newMap!16) (extraKeys!2687 newMap!16) (zeroValue!2782 newMap!16) (minValue!2782 newMap!16) (index!3316 lt!72915) (defaultEntry!2932 newMap!16)))))

(assert (=> b!139190 (= lt!72901 (array!4873 (store (arr!2303 (_values!2915 newMap!16)) (index!3316 lt!72915) (ValueCellFull!1116 (get!1524 (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) from!355) (dynLambda!438 (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2575 (_values!2915 newMap!16))))))

(declare-fun lt!72892 () Unit!4385)

(declare-fun lt!72894 () Unit!4385)

(assert (=> b!139190 (= lt!72892 lt!72894)))

(declare-fun call!15397 () ListLongMap!1735)

(assert (=> b!139190 (= call!15387 call!15397)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!64 (array!4870 array!4872 (_ BitVec 32) (_ BitVec 32) V!3539 V!3539 (_ BitVec 32) (_ BitVec 64) V!3539 Int) Unit!4385)

(assert (=> b!139190 (= lt!72894 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!64 (_keys!4691 newMap!16) (_values!2915 newMap!16) (mask!7268 newMap!16) (extraKeys!2687 newMap!16) (zeroValue!2782 newMap!16) (minValue!2782 newMap!16) (index!3316 lt!72915) (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) (get!1524 (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) from!355) (dynLambda!438 (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2932 newMap!16)))))

(declare-fun lt!72903 () Unit!4385)

(assert (=> b!139190 (= lt!72903 e!90740)))

(assert (=> b!139190 (= c!26054 (contains!915 (getCurrentListMap!551 (_keys!4691 newMap!16) (_values!2915 newMap!16) (mask!7268 newMap!16) (extraKeys!2687 newMap!16) (zeroValue!2782 newMap!16) (minValue!2782 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2932 newMap!16)) (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355)))))

(assert (=> b!139190 (= e!90747 (tuple2!2665 true (LongMapFixedSize!1141 (defaultEntry!2932 newMap!16) (mask!7268 newMap!16) (extraKeys!2687 newMap!16) (zeroValue!2782 newMap!16) (minValue!2782 newMap!16) (_size!619 newMap!16) (_keys!4691 newMap!16) (array!4873 (store (arr!2303 (_values!2915 newMap!16)) (index!3316 lt!72915) (ValueCellFull!1116 (get!1524 (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) from!355) (dynLambda!438 (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2575 (_values!2915 newMap!16))) (_vacant!619 newMap!16))))))

(declare-fun b!139191 () Bool)

(assert (=> b!139191 (= e!90754 (getCurrentListMap!551 (_keys!4691 newMap!16) (_values!2915 newMap!16) (mask!7268 newMap!16) (extraKeys!2687 newMap!16) (zeroValue!2782 newMap!16) (minValue!2782 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2932 newMap!16)))))

(declare-fun b!139192 () Bool)

(declare-fun c!26059 () Bool)

(assert (=> b!139192 (= c!26059 ((_ is MissingVacant!288) lt!72895))))

(declare-fun e!90748 () Bool)

(assert (=> b!139192 (= e!90748 e!90737)))

(declare-fun b!139193 () Bool)

(declare-fun e!90755 () Bool)

(declare-fun e!90739 () Bool)

(assert (=> b!139193 (= e!90755 e!90739)))

(declare-fun res!66613 () Bool)

(assert (=> b!139193 (= res!66613 call!15378)))

(assert (=> b!139193 (=> (not res!66613) (not e!90739))))

(declare-fun b!139194 () Bool)

(declare-fun e!90750 () Bool)

(assert (=> b!139194 (= e!90750 e!90738)))

(declare-fun c!26056 () Bool)

(declare-fun lt!72897 () tuple2!2664)

(assert (=> b!139194 (= c!26056 (_1!1342 lt!72897))))

(declare-fun bm!15382 () Bool)

(assert (=> bm!15382 (= call!15380 (seekEntryOrOpen!0 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) (_keys!4691 newMap!16) (mask!7268 newMap!16)))))

(declare-fun b!139195 () Bool)

(assert (=> b!139195 (= e!90755 ((_ is Undefined!288) lt!72914))))

(declare-fun b!139196 () Bool)

(declare-fun res!66609 () Bool)

(assert (=> b!139196 (=> (not res!66609) (not e!90757))))

(assert (=> b!139196 (= res!66609 (= (select (arr!2302 (_keys!4691 newMap!16)) (index!3315 lt!72914)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!15383 () ListLongMap!1735)

(declare-fun b!139197 () Bool)

(assert (=> b!139197 (= e!90756 (= call!15389 (+!173 call!15383 (tuple2!2663 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) (get!1524 (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) from!355) (dynLambda!438 (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!90746 () Bool)

(declare-fun b!139198 () Bool)

(assert (=> b!139198 (= e!90746 (= (select (arr!2302 (_keys!4691 newMap!16)) (index!3316 lt!72904)) (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355)))))

(declare-fun b!139199 () Bool)

(declare-fun lt!72893 () Unit!4385)

(declare-fun lt!72909 () Unit!4385)

(assert (=> b!139199 (= lt!72893 lt!72909)))

(declare-fun call!15393 () ListLongMap!1735)

(assert (=> b!139199 (= call!15393 call!15390)))

(declare-fun lt!72900 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!64 (array!4870 array!4872 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3539 V!3539 V!3539 Int) Unit!4385)

(assert (=> b!139199 (= lt!72909 (lemmaChangeLongMinValueKeyThenAddPairToListMap!64 (_keys!4691 newMap!16) (_values!2915 newMap!16) (mask!7268 newMap!16) (extraKeys!2687 newMap!16) lt!72900 (zeroValue!2782 newMap!16) (minValue!2782 newMap!16) (get!1524 (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) from!355) (dynLambda!438 (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2932 newMap!16)))))

(assert (=> b!139199 (= lt!72900 (bvor (extraKeys!2687 newMap!16) #b00000000000000000000000000000010))))

(assert (=> b!139199 (= e!90745 (tuple2!2665 true (LongMapFixedSize!1141 (defaultEntry!2932 newMap!16) (mask!7268 newMap!16) (bvor (extraKeys!2687 newMap!16) #b00000000000000000000000000000010) (zeroValue!2782 newMap!16) (get!1524 (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) from!355) (dynLambda!438 (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (_size!619 newMap!16) (_keys!4691 newMap!16) (_values!2915 newMap!16) (_vacant!619 newMap!16))))))

(declare-fun b!139200 () Bool)

(declare-fun res!66611 () Bool)

(declare-fun e!90752 () Bool)

(assert (=> b!139200 (=> (not res!66611) (not e!90752))))

(assert (=> b!139200 (= res!66611 call!15400)))

(assert (=> b!139200 (= e!90748 e!90752)))

(declare-fun bm!15383 () Bool)

(declare-fun call!15394 () Bool)

(assert (=> bm!15383 (= call!15400 call!15394)))

(declare-fun b!139201 () Bool)

(assert (=> b!139201 (= e!90744 (not call!15386))))

(declare-fun bm!15384 () Bool)

(assert (=> bm!15384 (= call!15397 (getCurrentListMap!551 (_keys!4691 newMap!16) (ite c!26053 (_values!2915 newMap!16) (array!4873 (store (arr!2303 (_values!2915 newMap!16)) (index!3316 lt!72915) (ValueCellFull!1116 (get!1524 (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) from!355) (dynLambda!438 (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2575 (_values!2915 newMap!16)))) (mask!7268 newMap!16) (ite c!26053 (ite c!26061 (extraKeys!2687 newMap!16) lt!72900) (extraKeys!2687 newMap!16)) (zeroValue!2782 newMap!16) (ite c!26053 (ite c!26061 (minValue!2782 newMap!16) (get!1524 (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) from!355) (dynLambda!438 (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2782 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2932 newMap!16)))))

(declare-fun b!139202 () Bool)

(declare-fun lt!72899 () Unit!4385)

(declare-fun lt!72907 () Unit!4385)

(assert (=> b!139202 (= lt!72899 lt!72907)))

(assert (=> b!139202 (= call!15393 call!15391)))

(declare-fun lt!72905 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!64 (array!4870 array!4872 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3539 V!3539 V!3539 Int) Unit!4385)

(assert (=> b!139202 (= lt!72907 (lemmaChangeZeroKeyThenAddPairToListMap!64 (_keys!4691 newMap!16) (_values!2915 newMap!16) (mask!7268 newMap!16) (extraKeys!2687 newMap!16) lt!72905 (zeroValue!2782 newMap!16) (get!1524 (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) from!355) (dynLambda!438 (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2782 newMap!16) (defaultEntry!2932 newMap!16)))))

(assert (=> b!139202 (= lt!72905 (bvor (extraKeys!2687 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!139202 (= e!90745 (tuple2!2665 true (LongMapFixedSize!1141 (defaultEntry!2932 newMap!16) (mask!7268 newMap!16) (bvor (extraKeys!2687 newMap!16) #b00000000000000000000000000000001) (get!1524 (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) from!355) (dynLambda!438 (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2782 newMap!16) (_size!619 newMap!16) (_keys!4691 newMap!16) (_values!2915 newMap!16) (_vacant!619 newMap!16))))))

(declare-fun bm!15385 () Bool)

(assert (=> bm!15385 (= call!15393 call!15387)))

(declare-fun b!139203 () Bool)

(declare-fun c!26060 () Bool)

(assert (=> b!139203 (= c!26060 ((_ is MissingVacant!288) lt!72915))))

(declare-fun e!90743 () tuple2!2664)

(assert (=> b!139203 (= e!90753 e!90743)))

(declare-fun bm!15386 () Bool)

(declare-fun call!15398 () ListLongMap!1735)

(assert (=> bm!15386 (= call!15392 (contains!915 call!15398 (ite c!26057 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) (select (arr!2302 (_keys!4691 newMap!16)) (index!3316 lt!72915)))))))

(declare-fun b!139204 () Bool)

(declare-fun res!66608 () Bool)

(assert (=> b!139204 (= res!66608 (= (select (arr!2302 (_keys!4691 newMap!16)) (index!3318 lt!72895)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!139204 (=> (not res!66608) (not e!90744))))

(declare-fun b!139205 () Bool)

(assert (=> b!139205 (= e!90743 e!90747)))

(declare-fun c!26058 () Bool)

(assert (=> b!139205 (= c!26058 ((_ is MissingZero!288) lt!72915))))

(declare-fun b!139206 () Bool)

(assert (=> b!139206 (= e!90737 ((_ is Undefined!288) lt!72895))))

(declare-fun b!139207 () Bool)

(assert (=> b!139207 (= e!90752 (not call!15386))))

(declare-fun bm!15387 () Bool)

(assert (=> bm!15387 (= call!15383 (map!1430 newMap!16))))

(declare-fun b!139208 () Bool)

(declare-fun res!66612 () Bool)

(assert (=> b!139208 (= res!66612 (= (select (arr!2302 (_keys!4691 newMap!16)) (index!3318 lt!72914)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!139208 (=> (not res!66612) (not e!90739))))

(declare-fun b!139209 () Bool)

(declare-fun lt!72898 () tuple2!2664)

(assert (=> b!139209 (= e!90743 (tuple2!2665 (_1!1342 lt!72898) (_2!1342 lt!72898)))))

(assert (=> b!139209 (= lt!72898 call!15381)))

(declare-fun call!15396 () ListLongMap!1735)

(declare-fun bm!15388 () Bool)

(assert (=> bm!15388 (= call!15396 (getCurrentListMap!551 (_keys!4691 newMap!16) (ite (or c!26053 c!26057) (_values!2915 newMap!16) lt!72901) (mask!7268 newMap!16) (ite (and c!26053 c!26061) lt!72905 (extraKeys!2687 newMap!16)) (ite (and c!26053 c!26061) (get!1524 (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) from!355) (dynLambda!438 (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2782 newMap!16)) (minValue!2782 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2932 newMap!16)))))

(declare-fun bm!15389 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!64 (array!4870 array!4872 (_ BitVec 32) (_ BitVec 32) V!3539 V!3539 (_ BitVec 64) Int) Unit!4385)

(assert (=> bm!15389 (= call!15379 (lemmaInListMapThenSeekEntryOrOpenFindsIt!64 (_keys!4691 newMap!16) (_values!2915 newMap!16) (mask!7268 newMap!16) (extraKeys!2687 newMap!16) (zeroValue!2782 newMap!16) (minValue!2782 newMap!16) (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) (defaultEntry!2932 newMap!16)))))

(declare-fun d!43407 () Bool)

(assert (=> d!43407 e!90750))

(declare-fun res!66605 () Bool)

(assert (=> d!43407 (=> (not res!66605) (not e!90750))))

(assert (=> d!43407 (= res!66605 (valid!549 (_2!1342 lt!72897)))))

(assert (=> d!43407 (= lt!72897 e!90741)))

(assert (=> d!43407 (= c!26053 (= (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) (bvneg (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355))))))

(assert (=> d!43407 (valid!549 newMap!16)))

(assert (=> d!43407 (= (update!205 newMap!16 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) (get!1524 (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) from!355) (dynLambda!438 (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) lt!72897)))

(declare-fun bm!15390 () Bool)

(assert (=> bm!15390 (= call!15394 call!15388)))

(declare-fun b!139210 () Bool)

(declare-fun res!66601 () Bool)

(assert (=> b!139210 (= res!66601 call!15399)))

(assert (=> b!139210 (=> (not res!66601) (not e!90746))))

(declare-fun bm!15391 () Bool)

(assert (=> bm!15391 (= call!15391 call!15396)))

(declare-fun bm!15392 () Bool)

(assert (=> bm!15392 (= call!15399 call!15388)))

(declare-fun bm!15393 () Bool)

(declare-fun updateHelperNewKey!64 (LongMapFixedSize!1140 (_ BitVec 64) V!3539 (_ BitVec 32)) tuple2!2664)

(assert (=> bm!15393 (= call!15381 (updateHelperNewKey!64 newMap!16 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) (get!1524 (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) from!355) (dynLambda!438 (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!26060 (index!3318 lt!72915) (index!3315 lt!72915))))))

(declare-fun b!139211 () Bool)

(declare-fun Unit!4390 () Unit!4385)

(assert (=> b!139211 (= e!90740 Unit!4390)))

(declare-fun lt!72916 () Unit!4385)

(assert (=> b!139211 (= lt!72916 call!15385)))

(assert (=> b!139211 (= lt!72895 call!15401)))

(assert (=> b!139211 (= c!26062 ((_ is MissingZero!288) lt!72895))))

(assert (=> b!139211 e!90748))

(declare-fun lt!72913 () Unit!4385)

(assert (=> b!139211 (= lt!72913 lt!72916)))

(assert (=> b!139211 false))

(declare-fun bm!15394 () Bool)

(declare-fun call!15395 () SeekEntryResult!288)

(assert (=> bm!15394 (= call!15395 call!15380)))

(declare-fun bm!15395 () Bool)

(assert (=> bm!15395 (= call!15389 (map!1430 (_2!1342 lt!72897)))))

(declare-fun b!139212 () Bool)

(declare-fun lt!72902 () Unit!4385)

(assert (=> b!139212 (= e!90742 lt!72902)))

(assert (=> b!139212 (= lt!72902 call!15385)))

(assert (=> b!139212 (= lt!72914 call!15395)))

(assert (=> b!139212 (= c!26052 ((_ is MissingZero!288) lt!72914))))

(assert (=> b!139212 e!90751))

(declare-fun b!139213 () Bool)

(declare-fun res!66607 () Bool)

(assert (=> b!139213 (=> (not res!66607) (not e!90752))))

(assert (=> b!139213 (= res!66607 (= (select (arr!2302 (_keys!4691 newMap!16)) (index!3315 lt!72895)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!15396 () Bool)

(assert (=> bm!15396 (= call!15382 call!15384)))

(declare-fun b!139214 () Bool)

(declare-fun Unit!4391 () Unit!4385)

(assert (=> b!139214 (= e!90742 Unit!4391)))

(declare-fun lt!72908 () Unit!4385)

(assert (=> b!139214 (= lt!72908 call!15379)))

(assert (=> b!139214 (= lt!72904 call!15395)))

(declare-fun res!66610 () Bool)

(assert (=> b!139214 (= res!66610 ((_ is Found!288) lt!72904))))

(assert (=> b!139214 (=> (not res!66610) (not e!90746))))

(assert (=> b!139214 e!90746))

(declare-fun lt!72906 () Unit!4385)

(assert (=> b!139214 (= lt!72906 lt!72908)))

(assert (=> b!139214 false))

(declare-fun bm!15397 () Bool)

(assert (=> bm!15397 (= call!15390 call!15397)))

(declare-fun b!139215 () Bool)

(declare-fun res!66604 () Bool)

(assert (=> b!139215 (= res!66604 call!15394)))

(assert (=> b!139215 (=> (not res!66604) (not e!90749))))

(declare-fun b!139216 () Bool)

(assert (=> b!139216 (= e!90738 (= call!15389 call!15383))))

(declare-fun b!139217 () Bool)

(declare-fun c!26051 () Bool)

(assert (=> b!139217 (= c!26051 ((_ is MissingVacant!288) lt!72914))))

(assert (=> b!139217 (= e!90751 e!90755)))

(declare-fun bm!15398 () Bool)

(assert (=> bm!15398 (= call!15398 call!15396)))

(declare-fun b!139218 () Bool)

(assert (=> b!139218 (= e!90739 (not call!15382))))

(assert (= (and d!43407 c!26053) b!139189))

(assert (= (and d!43407 (not c!26053)) b!139180))

(assert (= (and b!139189 c!26061) b!139202))

(assert (= (and b!139189 (not c!26061)) b!139199))

(assert (= (or b!139202 b!139199) bm!15397))

(assert (= (or b!139202 b!139199) bm!15391))

(assert (= (or b!139202 b!139199) bm!15385))

(assert (= (and b!139180 c!26057) b!139179))

(assert (= (and b!139180 (not c!26057)) b!139203))

(assert (= (and b!139179 c!26055) b!139214))

(assert (= (and b!139179 (not c!26055)) b!139212))

(assert (= (and b!139214 res!66610) b!139210))

(assert (= (and b!139210 res!66601) b!139198))

(assert (= (and b!139212 c!26052) b!139186))

(assert (= (and b!139212 (not c!26052)) b!139217))

(assert (= (and b!139186 res!66600) b!139196))

(assert (= (and b!139196 res!66609) b!139181))

(assert (= (and b!139217 c!26051) b!139193))

(assert (= (and b!139217 (not c!26051)) b!139195))

(assert (= (and b!139193 res!66613) b!139208))

(assert (= (and b!139208 res!66612) b!139218))

(assert (= (or b!139186 b!139193) bm!15375))

(assert (= (or b!139181 b!139218) bm!15396))

(assert (= (or b!139210 bm!15375) bm!15392))

(assert (= (or b!139214 b!139212) bm!15394))

(assert (= (and b!139203 c!26060) b!139209))

(assert (= (and b!139203 (not c!26060)) b!139205))

(assert (= (and b!139205 c!26058) b!139183))

(assert (= (and b!139205 (not c!26058)) b!139190))

(assert (= (and b!139190 c!26054) b!139188))

(assert (= (and b!139190 (not c!26054)) b!139211))

(assert (= (and b!139188 res!66603) b!139215))

(assert (= (and b!139215 res!66604) b!139185))

(assert (= (and b!139211 c!26062) b!139200))

(assert (= (and b!139211 (not c!26062)) b!139192))

(assert (= (and b!139200 res!66611) b!139213))

(assert (= (and b!139213 res!66607) b!139207))

(assert (= (and b!139192 c!26059) b!139184))

(assert (= (and b!139192 (not c!26059)) b!139206))

(assert (= (and b!139184 res!66602) b!139204))

(assert (= (and b!139204 res!66608) b!139201))

(assert (= (or b!139200 b!139184) bm!15383))

(assert (= (or b!139207 b!139201) bm!15381))

(assert (= (or b!139215 bm!15383) bm!15390))

(assert (= (or b!139188 b!139211) bm!15378))

(assert (= (or b!139209 b!139183) bm!15393))

(assert (= (or b!139179 b!139190) bm!15398))

(assert (= (or bm!15396 bm!15381) bm!15379))

(assert (= (or bm!15392 bm!15390) bm!15380))

(assert (= (or bm!15394 bm!15378) bm!15382))

(assert (= (or b!139214 b!139188) bm!15389))

(assert (= (or b!139212 b!139211) bm!15376))

(assert (= (or b!139179 b!139190) bm!15386))

(assert (= (or bm!15397 b!139190) bm!15384))

(assert (= (or bm!15391 bm!15398) bm!15388))

(assert (= (or bm!15385 b!139190) bm!15377))

(assert (= (and bm!15377 c!26063) b!139182))

(assert (= (and bm!15377 (not c!26063)) b!139191))

(assert (= (and d!43407 res!66605) b!139194))

(assert (= (and b!139194 c!26056) b!139187))

(assert (= (and b!139194 (not c!26056)) b!139216))

(assert (= (and b!139187 res!66606) b!139197))

(assert (= (or b!139197 b!139216) bm!15387))

(assert (= (or b!139187 b!139197 b!139216) bm!15395))

(assert (=> bm!15379 m!166337))

(declare-fun m!166421 () Bool)

(assert (=> bm!15379 m!166421))

(declare-fun m!166423 () Bool)

(assert (=> b!139197 m!166423))

(declare-fun m!166425 () Bool)

(assert (=> b!139190 m!166425))

(declare-fun m!166427 () Bool)

(assert (=> b!139190 m!166427))

(assert (=> b!139190 m!166425))

(assert (=> b!139190 m!166337))

(declare-fun m!166429 () Bool)

(assert (=> b!139190 m!166429))

(assert (=> b!139190 m!166337))

(assert (=> b!139190 m!166351))

(declare-fun m!166431 () Bool)

(assert (=> b!139190 m!166431))

(declare-fun m!166433 () Bool)

(assert (=> b!139190 m!166433))

(declare-fun m!166435 () Bool)

(assert (=> b!139208 m!166435))

(assert (=> bm!15384 m!166427))

(declare-fun m!166437 () Bool)

(assert (=> bm!15384 m!166437))

(assert (=> b!139202 m!166351))

(declare-fun m!166439 () Bool)

(assert (=> b!139202 m!166439))

(declare-fun m!166441 () Bool)

(assert (=> bm!15380 m!166441))

(assert (=> bm!15387 m!166367))

(assert (=> b!139187 m!166337))

(declare-fun m!166443 () Bool)

(assert (=> b!139187 m!166443))

(declare-fun m!166445 () Bool)

(assert (=> bm!15377 m!166445))

(declare-fun m!166447 () Bool)

(assert (=> b!139198 m!166447))

(declare-fun m!166449 () Bool)

(assert (=> d!43407 m!166449))

(assert (=> d!43407 m!166343))

(assert (=> bm!15382 m!166337))

(declare-fun m!166451 () Bool)

(assert (=> bm!15382 m!166451))

(assert (=> bm!15389 m!166337))

(declare-fun m!166453 () Bool)

(assert (=> bm!15389 m!166453))

(declare-fun m!166455 () Bool)

(assert (=> bm!15395 m!166455))

(declare-fun m!166457 () Bool)

(assert (=> b!139196 m!166457))

(declare-fun m!166459 () Bool)

(assert (=> b!139213 m!166459))

(declare-fun m!166461 () Bool)

(assert (=> b!139185 m!166461))

(assert (=> bm!15393 m!166337))

(assert (=> bm!15393 m!166351))

(declare-fun m!166463 () Bool)

(assert (=> bm!15393 m!166463))

(declare-fun m!166465 () Bool)

(assert (=> bm!15388 m!166465))

(declare-fun m!166467 () Bool)

(assert (=> b!139204 m!166467))

(assert (=> b!139191 m!166425))

(assert (=> b!139180 m!166337))

(assert (=> b!139180 m!166451))

(assert (=> b!139199 m!166351))

(declare-fun m!166469 () Bool)

(assert (=> b!139199 m!166469))

(declare-fun m!166471 () Bool)

(assert (=> bm!15386 m!166471))

(declare-fun m!166473 () Bool)

(assert (=> bm!15386 m!166473))

(assert (=> bm!15376 m!166337))

(declare-fun m!166475 () Bool)

(assert (=> bm!15376 m!166475))

(assert (=> b!139035 d!43407))

(declare-fun d!43409 () Bool)

(declare-fun c!26066 () Bool)

(assert (=> d!43409 (= c!26066 ((_ is ValueCellFull!1116) (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) from!355)))))

(declare-fun e!90760 () V!3539)

(assert (=> d!43409 (= (get!1524 (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) from!355) (dynLambda!438 (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!90760)))

(declare-fun b!139223 () Bool)

(declare-fun get!1526 (ValueCell!1116 V!3539) V!3539)

(assert (=> b!139223 (= e!90760 (get!1526 (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) from!355) (dynLambda!438 (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!139224 () Bool)

(declare-fun get!1527 (ValueCell!1116 V!3539) V!3539)

(assert (=> b!139224 (= e!90760 (get!1527 (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) from!355) (dynLambda!438 (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!43409 c!26066) b!139223))

(assert (= (and d!43409 (not c!26066)) b!139224))

(assert (=> b!139223 m!166347))

(assert (=> b!139223 m!166349))

(declare-fun m!166477 () Bool)

(assert (=> b!139223 m!166477))

(assert (=> b!139224 m!166347))

(assert (=> b!139224 m!166349))

(declare-fun m!166479 () Bool)

(assert (=> b!139224 m!166479))

(assert (=> b!139035 d!43409))

(declare-fun d!43411 () Bool)

(assert (=> d!43411 (= (array_inv!1423 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) (bvsge (size!2574 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!139022 d!43411))

(declare-fun d!43413 () Bool)

(assert (=> d!43413 (= (array_inv!1424 (_values!2915 (v!3266 (underlying!475 thiss!992)))) (bvsge (size!2575 (_values!2915 (v!3266 (underlying!475 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!139022 d!43413))

(declare-fun d!43415 () Bool)

(declare-fun res!66620 () Bool)

(declare-fun e!90763 () Bool)

(assert (=> d!43415 (=> (not res!66620) (not e!90763))))

(declare-fun simpleValid!94 (LongMapFixedSize!1140) Bool)

(assert (=> d!43415 (= res!66620 (simpleValid!94 newMap!16))))

(assert (=> d!43415 (= (valid!549 newMap!16) e!90763)))

(declare-fun b!139231 () Bool)

(declare-fun res!66621 () Bool)

(assert (=> b!139231 (=> (not res!66621) (not e!90763))))

(declare-fun arrayCountValidKeys!0 (array!4870 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!139231 (= res!66621 (= (arrayCountValidKeys!0 (_keys!4691 newMap!16) #b00000000000000000000000000000000 (size!2574 (_keys!4691 newMap!16))) (_size!619 newMap!16)))))

(declare-fun b!139232 () Bool)

(declare-fun res!66622 () Bool)

(assert (=> b!139232 (=> (not res!66622) (not e!90763))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4870 (_ BitVec 32)) Bool)

(assert (=> b!139232 (= res!66622 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4691 newMap!16) (mask!7268 newMap!16)))))

(declare-fun b!139233 () Bool)

(assert (=> b!139233 (= e!90763 (arrayNoDuplicates!0 (_keys!4691 newMap!16) #b00000000000000000000000000000000 Nil!1752))))

(assert (= (and d!43415 res!66620) b!139231))

(assert (= (and b!139231 res!66621) b!139232))

(assert (= (and b!139232 res!66622) b!139233))

(declare-fun m!166481 () Bool)

(assert (=> d!43415 m!166481))

(declare-fun m!166483 () Bool)

(assert (=> b!139231 m!166483))

(declare-fun m!166485 () Bool)

(assert (=> b!139232 m!166485))

(declare-fun m!166487 () Bool)

(assert (=> b!139233 m!166487))

(assert (=> b!139034 d!43415))

(declare-fun d!43417 () Bool)

(assert (=> d!43417 (= (array_inv!1423 (_keys!4691 newMap!16)) (bvsge (size!2574 (_keys!4691 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!139025 d!43417))

(declare-fun d!43419 () Bool)

(assert (=> d!43419 (= (array_inv!1424 (_values!2915 newMap!16)) (bvsge (size!2575 (_values!2915 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!139025 d!43419))

(declare-fun b!139244 () Bool)

(declare-fun e!90774 () Bool)

(declare-fun e!90773 () Bool)

(assert (=> b!139244 (= e!90774 e!90773)))

(declare-fun res!66630 () Bool)

(assert (=> b!139244 (=> (not res!66630) (not e!90773))))

(declare-fun e!90772 () Bool)

(assert (=> b!139244 (= res!66630 (not e!90772))))

(declare-fun res!66631 () Bool)

(assert (=> b!139244 (=> (not res!66631) (not e!90772))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!139244 (= res!66631 (validKeyInArray!0 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355)))))

(declare-fun b!139245 () Bool)

(declare-fun contains!917 (List!1755 (_ BitVec 64)) Bool)

(assert (=> b!139245 (= e!90772 (contains!917 Nil!1752 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355)))))

(declare-fun c!26069 () Bool)

(declare-fun bm!15401 () Bool)

(declare-fun call!15404 () Bool)

(assert (=> bm!15401 (= call!15404 (arrayNoDuplicates!0 (_keys!4691 (v!3266 (underlying!475 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!26069 (Cons!1751 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) Nil!1752) Nil!1752)))))

(declare-fun d!43421 () Bool)

(declare-fun res!66629 () Bool)

(assert (=> d!43421 (=> res!66629 e!90774)))

(assert (=> d!43421 (= res!66629 (bvsge from!355 (size!2574 (_keys!4691 (v!3266 (underlying!475 thiss!992))))))))

(assert (=> d!43421 (= (arrayNoDuplicates!0 (_keys!4691 (v!3266 (underlying!475 thiss!992))) from!355 Nil!1752) e!90774)))

(declare-fun b!139246 () Bool)

(declare-fun e!90775 () Bool)

(assert (=> b!139246 (= e!90775 call!15404)))

(declare-fun b!139247 () Bool)

(assert (=> b!139247 (= e!90775 call!15404)))

(declare-fun b!139248 () Bool)

(assert (=> b!139248 (= e!90773 e!90775)))

(assert (=> b!139248 (= c!26069 (validKeyInArray!0 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355)))))

(assert (= (and d!43421 (not res!66629)) b!139244))

(assert (= (and b!139244 res!66631) b!139245))

(assert (= (and b!139244 res!66630) b!139248))

(assert (= (and b!139248 c!26069) b!139246))

(assert (= (and b!139248 (not c!26069)) b!139247))

(assert (= (or b!139246 b!139247) bm!15401))

(assert (=> b!139244 m!166337))

(assert (=> b!139244 m!166337))

(declare-fun m!166489 () Bool)

(assert (=> b!139244 m!166489))

(assert (=> b!139245 m!166337))

(assert (=> b!139245 m!166337))

(declare-fun m!166491 () Bool)

(assert (=> b!139245 m!166491))

(assert (=> bm!15401 m!166337))

(declare-fun m!166493 () Bool)

(assert (=> bm!15401 m!166493))

(assert (=> b!139248 m!166337))

(assert (=> b!139248 m!166337))

(assert (=> b!139248 m!166489))

(assert (=> b!139037 d!43421))

(declare-fun d!43423 () Bool)

(assert (=> d!43423 (arrayNoDuplicates!0 (_keys!4691 (v!3266 (underlying!475 thiss!992))) from!355 Nil!1752)))

(declare-fun lt!72921 () Unit!4385)

(declare-fun choose!39 (array!4870 (_ BitVec 32) (_ BitVec 32)) Unit!4385)

(assert (=> d!43423 (= lt!72921 (choose!39 (_keys!4691 (v!3266 (underlying!475 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!43423 (bvslt (size!2574 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!43423 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4691 (v!3266 (underlying!475 thiss!992))) #b00000000000000000000000000000000 from!355) lt!72921)))

(declare-fun bs!5830 () Bool)

(assert (= bs!5830 d!43423))

(assert (=> bs!5830 m!166335))

(declare-fun m!166495 () Bool)

(assert (=> bs!5830 m!166495))

(assert (=> b!139037 d!43423))

(declare-fun d!43425 () Bool)

(declare-fun res!66636 () Bool)

(declare-fun e!90780 () Bool)

(assert (=> d!43425 (=> res!66636 e!90780)))

(assert (=> d!43425 (= res!66636 (= (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355)))))

(assert (=> d!43425 (= (arrayContainsKey!0 (_keys!4691 (v!3266 (underlying!475 thiss!992))) (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!90780)))

(declare-fun b!139253 () Bool)

(declare-fun e!90781 () Bool)

(assert (=> b!139253 (= e!90780 e!90781)))

(declare-fun res!66637 () Bool)

(assert (=> b!139253 (=> (not res!66637) (not e!90781))))

(assert (=> b!139253 (= res!66637 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2574 (_keys!4691 (v!3266 (underlying!475 thiss!992))))))))

(declare-fun b!139254 () Bool)

(assert (=> b!139254 (= e!90781 (arrayContainsKey!0 (_keys!4691 (v!3266 (underlying!475 thiss!992))) (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!43425 (not res!66636)) b!139253))

(assert (= (and b!139253 res!66637) b!139254))

(declare-fun m!166497 () Bool)

(assert (=> d!43425 m!166497))

(assert (=> b!139254 m!166337))

(declare-fun m!166499 () Bool)

(assert (=> b!139254 m!166499))

(assert (=> b!139037 d!43425))

(declare-fun d!43427 () Bool)

(declare-fun e!90784 () Bool)

(assert (=> d!43427 e!90784))

(declare-fun c!26072 () Bool)

(assert (=> d!43427 (= c!26072 (and (not (= (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!72924 () Unit!4385)

(declare-fun choose!862 (array!4870 array!4872 (_ BitVec 32) (_ BitVec 32) V!3539 V!3539 (_ BitVec 64) (_ BitVec 32) Int) Unit!4385)

(assert (=> d!43427 (= lt!72924 (choose!862 (_keys!4691 (v!3266 (underlying!475 thiss!992))) (_values!2915 (v!3266 (underlying!475 thiss!992))) (mask!7268 (v!3266 (underlying!475 thiss!992))) (extraKeys!2687 (v!3266 (underlying!475 thiss!992))) (zeroValue!2782 (v!3266 (underlying!475 thiss!992))) (minValue!2782 (v!3266 (underlying!475 thiss!992))) (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2932 (v!3266 (underlying!475 thiss!992)))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!43427 (validMask!0 (mask!7268 (v!3266 (underlying!475 thiss!992))))))

(assert (=> d!43427 (= (lemmaListMapContainsThenArrayContainsFrom!141 (_keys!4691 (v!3266 (underlying!475 thiss!992))) (_values!2915 (v!3266 (underlying!475 thiss!992))) (mask!7268 (v!3266 (underlying!475 thiss!992))) (extraKeys!2687 (v!3266 (underlying!475 thiss!992))) (zeroValue!2782 (v!3266 (underlying!475 thiss!992))) (minValue!2782 (v!3266 (underlying!475 thiss!992))) (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2932 (v!3266 (underlying!475 thiss!992)))) lt!72924)))

(declare-fun b!139259 () Bool)

(assert (=> b!139259 (= e!90784 (arrayContainsKey!0 (_keys!4691 (v!3266 (underlying!475 thiss!992))) (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!139260 () Bool)

(assert (=> b!139260 (= e!90784 (ite (= (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2687 (v!3266 (underlying!475 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2687 (v!3266 (underlying!475 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!43427 c!26072) b!139259))

(assert (= (and d!43427 (not c!26072)) b!139260))

(assert (=> d!43427 m!166337))

(declare-fun m!166501 () Bool)

(assert (=> d!43427 m!166501))

(declare-fun m!166503 () Bool)

(assert (=> d!43427 m!166503))

(assert (=> b!139259 m!166337))

(assert (=> b!139259 m!166341))

(assert (=> b!139037 d!43427))

(declare-fun d!43429 () Bool)

(assert (=> d!43429 (= (map!1430 newMap!16) (getCurrentListMap!551 (_keys!4691 newMap!16) (_values!2915 newMap!16) (mask!7268 newMap!16) (extraKeys!2687 newMap!16) (zeroValue!2782 newMap!16) (minValue!2782 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2932 newMap!16)))))

(declare-fun bs!5831 () Bool)

(assert (= bs!5831 d!43429))

(assert (=> bs!5831 m!166425))

(assert (=> b!139032 d!43429))

(declare-fun bm!15416 () Bool)

(declare-fun call!15419 () ListLongMap!1735)

(declare-fun getCurrentListMapNoExtraKeys!140 (array!4870 array!4872 (_ BitVec 32) (_ BitVec 32) V!3539 V!3539 (_ BitVec 32) Int) ListLongMap!1735)

(assert (=> bm!15416 (= call!15419 (getCurrentListMapNoExtraKeys!140 (_keys!4691 (v!3266 (underlying!475 thiss!992))) (_values!2915 (v!3266 (underlying!475 thiss!992))) (mask!7268 (v!3266 (underlying!475 thiss!992))) (extraKeys!2687 (v!3266 (underlying!475 thiss!992))) (zeroValue!2782 (v!3266 (underlying!475 thiss!992))) (minValue!2782 (v!3266 (underlying!475 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2932 (v!3266 (underlying!475 thiss!992)))))))

(declare-fun bm!15417 () Bool)

(declare-fun call!15421 () ListLongMap!1735)

(declare-fun call!15422 () ListLongMap!1735)

(assert (=> bm!15417 (= call!15421 call!15422)))

(declare-fun b!139303 () Bool)

(declare-fun e!90813 () Bool)

(declare-fun call!15420 () Bool)

(assert (=> b!139303 (= e!90813 (not call!15420))))

(declare-fun bm!15418 () Bool)

(declare-fun call!15425 () ListLongMap!1735)

(declare-fun c!26088 () Bool)

(declare-fun call!15423 () ListLongMap!1735)

(declare-fun c!26089 () Bool)

(assert (=> bm!15418 (= call!15422 (+!173 (ite c!26089 call!15419 (ite c!26088 call!15425 call!15423)) (ite (or c!26089 c!26088) (tuple2!2663 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2782 (v!3266 (underlying!475 thiss!992)))) (tuple2!2663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2782 (v!3266 (underlying!475 thiss!992)))))))))

(declare-fun b!139304 () Bool)

(declare-fun e!90818 () Unit!4385)

(declare-fun Unit!4392 () Unit!4385)

(assert (=> b!139304 (= e!90818 Unit!4392)))

(declare-fun e!90812 () Bool)

(declare-fun b!139305 () Bool)

(declare-fun lt!72979 () ListLongMap!1735)

(declare-fun apply!119 (ListLongMap!1735 (_ BitVec 64)) V!3539)

(assert (=> b!139305 (= e!90812 (= (apply!119 lt!72979 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1524 (select (arr!2303 (_values!2915 (v!3266 (underlying!475 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!438 (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!139305 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2575 (_values!2915 (v!3266 (underlying!475 thiss!992))))))))

(assert (=> b!139305 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2574 (_keys!4691 (v!3266 (underlying!475 thiss!992))))))))

(declare-fun b!139306 () Bool)

(declare-fun e!90823 () Bool)

(assert (=> b!139306 (= e!90823 (= (apply!119 lt!72979 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2782 (v!3266 (underlying!475 thiss!992)))))))

(declare-fun b!139307 () Bool)

(declare-fun e!90815 () Bool)

(assert (=> b!139307 (= e!90815 e!90813)))

(declare-fun c!26085 () Bool)

(assert (=> b!139307 (= c!26085 (not (= (bvand (extraKeys!2687 (v!3266 (underlying!475 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!139308 () Bool)

(declare-fun e!90821 () Bool)

(assert (=> b!139308 (= e!90813 e!90821)))

(declare-fun res!66657 () Bool)

(assert (=> b!139308 (= res!66657 call!15420)))

(assert (=> b!139308 (=> (not res!66657) (not e!90821))))

(declare-fun b!139309 () Bool)

(declare-fun e!90817 () Bool)

(assert (=> b!139309 (= e!90817 e!90823)))

(declare-fun res!66662 () Bool)

(declare-fun call!15424 () Bool)

(assert (=> b!139309 (= res!66662 call!15424)))

(assert (=> b!139309 (=> (not res!66662) (not e!90823))))

(declare-fun b!139311 () Bool)

(declare-fun e!90819 () ListLongMap!1735)

(assert (=> b!139311 (= e!90819 call!15421)))

(declare-fun b!139312 () Bool)

(declare-fun e!90816 () ListLongMap!1735)

(assert (=> b!139312 (= e!90816 (+!173 call!15422 (tuple2!2663 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2782 (v!3266 (underlying!475 thiss!992))))))))

(declare-fun b!139313 () Bool)

(assert (=> b!139313 (= e!90819 call!15423)))

(declare-fun b!139314 () Bool)

(declare-fun e!90814 () ListLongMap!1735)

(assert (=> b!139314 (= e!90814 call!15421)))

(declare-fun b!139315 () Bool)

(declare-fun e!90820 () Bool)

(assert (=> b!139315 (= e!90820 (validKeyInArray!0 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!139316 () Bool)

(declare-fun lt!72981 () Unit!4385)

(assert (=> b!139316 (= e!90818 lt!72981)))

(declare-fun lt!72987 () ListLongMap!1735)

(assert (=> b!139316 (= lt!72987 (getCurrentListMapNoExtraKeys!140 (_keys!4691 (v!3266 (underlying!475 thiss!992))) (_values!2915 (v!3266 (underlying!475 thiss!992))) (mask!7268 (v!3266 (underlying!475 thiss!992))) (extraKeys!2687 (v!3266 (underlying!475 thiss!992))) (zeroValue!2782 (v!3266 (underlying!475 thiss!992))) (minValue!2782 (v!3266 (underlying!475 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2932 (v!3266 (underlying!475 thiss!992)))))))

(declare-fun lt!72973 () (_ BitVec 64))

(assert (=> b!139316 (= lt!72973 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!72971 () (_ BitVec 64))

(assert (=> b!139316 (= lt!72971 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!72970 () Unit!4385)

(declare-fun addStillContains!95 (ListLongMap!1735 (_ BitVec 64) V!3539 (_ BitVec 64)) Unit!4385)

(assert (=> b!139316 (= lt!72970 (addStillContains!95 lt!72987 lt!72973 (zeroValue!2782 (v!3266 (underlying!475 thiss!992))) lt!72971))))

(assert (=> b!139316 (contains!915 (+!173 lt!72987 (tuple2!2663 lt!72973 (zeroValue!2782 (v!3266 (underlying!475 thiss!992))))) lt!72971)))

(declare-fun lt!72988 () Unit!4385)

(assert (=> b!139316 (= lt!72988 lt!72970)))

(declare-fun lt!72974 () ListLongMap!1735)

(assert (=> b!139316 (= lt!72974 (getCurrentListMapNoExtraKeys!140 (_keys!4691 (v!3266 (underlying!475 thiss!992))) (_values!2915 (v!3266 (underlying!475 thiss!992))) (mask!7268 (v!3266 (underlying!475 thiss!992))) (extraKeys!2687 (v!3266 (underlying!475 thiss!992))) (zeroValue!2782 (v!3266 (underlying!475 thiss!992))) (minValue!2782 (v!3266 (underlying!475 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2932 (v!3266 (underlying!475 thiss!992)))))))

(declare-fun lt!72980 () (_ BitVec 64))

(assert (=> b!139316 (= lt!72980 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!72986 () (_ BitVec 64))

(assert (=> b!139316 (= lt!72986 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!72969 () Unit!4385)

(declare-fun addApplyDifferent!95 (ListLongMap!1735 (_ BitVec 64) V!3539 (_ BitVec 64)) Unit!4385)

(assert (=> b!139316 (= lt!72969 (addApplyDifferent!95 lt!72974 lt!72980 (minValue!2782 (v!3266 (underlying!475 thiss!992))) lt!72986))))

(assert (=> b!139316 (= (apply!119 (+!173 lt!72974 (tuple2!2663 lt!72980 (minValue!2782 (v!3266 (underlying!475 thiss!992))))) lt!72986) (apply!119 lt!72974 lt!72986))))

(declare-fun lt!72989 () Unit!4385)

(assert (=> b!139316 (= lt!72989 lt!72969)))

(declare-fun lt!72985 () ListLongMap!1735)

(assert (=> b!139316 (= lt!72985 (getCurrentListMapNoExtraKeys!140 (_keys!4691 (v!3266 (underlying!475 thiss!992))) (_values!2915 (v!3266 (underlying!475 thiss!992))) (mask!7268 (v!3266 (underlying!475 thiss!992))) (extraKeys!2687 (v!3266 (underlying!475 thiss!992))) (zeroValue!2782 (v!3266 (underlying!475 thiss!992))) (minValue!2782 (v!3266 (underlying!475 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2932 (v!3266 (underlying!475 thiss!992)))))))

(declare-fun lt!72983 () (_ BitVec 64))

(assert (=> b!139316 (= lt!72983 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!72976 () (_ BitVec 64))

(assert (=> b!139316 (= lt!72976 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!72977 () Unit!4385)

(assert (=> b!139316 (= lt!72977 (addApplyDifferent!95 lt!72985 lt!72983 (zeroValue!2782 (v!3266 (underlying!475 thiss!992))) lt!72976))))

(assert (=> b!139316 (= (apply!119 (+!173 lt!72985 (tuple2!2663 lt!72983 (zeroValue!2782 (v!3266 (underlying!475 thiss!992))))) lt!72976) (apply!119 lt!72985 lt!72976))))

(declare-fun lt!72990 () Unit!4385)

(assert (=> b!139316 (= lt!72990 lt!72977)))

(declare-fun lt!72984 () ListLongMap!1735)

(assert (=> b!139316 (= lt!72984 (getCurrentListMapNoExtraKeys!140 (_keys!4691 (v!3266 (underlying!475 thiss!992))) (_values!2915 (v!3266 (underlying!475 thiss!992))) (mask!7268 (v!3266 (underlying!475 thiss!992))) (extraKeys!2687 (v!3266 (underlying!475 thiss!992))) (zeroValue!2782 (v!3266 (underlying!475 thiss!992))) (minValue!2782 (v!3266 (underlying!475 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2932 (v!3266 (underlying!475 thiss!992)))))))

(declare-fun lt!72982 () (_ BitVec 64))

(assert (=> b!139316 (= lt!72982 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!72978 () (_ BitVec 64))

(assert (=> b!139316 (= lt!72978 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!139316 (= lt!72981 (addApplyDifferent!95 lt!72984 lt!72982 (minValue!2782 (v!3266 (underlying!475 thiss!992))) lt!72978))))

(assert (=> b!139316 (= (apply!119 (+!173 lt!72984 (tuple2!2663 lt!72982 (minValue!2782 (v!3266 (underlying!475 thiss!992))))) lt!72978) (apply!119 lt!72984 lt!72978))))

(declare-fun b!139317 () Bool)

(assert (=> b!139317 (= e!90817 (not call!15424))))

(declare-fun bm!15419 () Bool)

(assert (=> bm!15419 (= call!15425 call!15419)))

(declare-fun bm!15420 () Bool)

(assert (=> bm!15420 (= call!15420 (contains!915 lt!72979 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!15421 () Bool)

(assert (=> bm!15421 (= call!15424 (contains!915 lt!72979 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!139318 () Bool)

(declare-fun e!90811 () Bool)

(assert (=> b!139318 (= e!90811 (validKeyInArray!0 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!139319 () Bool)

(declare-fun e!90822 () Bool)

(assert (=> b!139319 (= e!90822 e!90812)))

(declare-fun res!66659 () Bool)

(assert (=> b!139319 (=> (not res!66659) (not e!90812))))

(assert (=> b!139319 (= res!66659 (contains!915 lt!72979 (select (arr!2302 (_keys!4691 (v!3266 (underlying!475 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!139319 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2574 (_keys!4691 (v!3266 (underlying!475 thiss!992))))))))

(declare-fun b!139320 () Bool)

(assert (=> b!139320 (= e!90816 e!90814)))

(assert (=> b!139320 (= c!26088 (and (not (= (bvand (extraKeys!2687 (v!3266 (underlying!475 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2687 (v!3266 (underlying!475 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!43431 () Bool)

(assert (=> d!43431 e!90815))

(declare-fun res!66660 () Bool)

(assert (=> d!43431 (=> (not res!66660) (not e!90815))))

(assert (=> d!43431 (= res!66660 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2574 (_keys!4691 (v!3266 (underlying!475 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2574 (_keys!4691 (v!3266 (underlying!475 thiss!992))))))))))

(declare-fun lt!72975 () ListLongMap!1735)

(assert (=> d!43431 (= lt!72979 lt!72975)))

(declare-fun lt!72972 () Unit!4385)

(assert (=> d!43431 (= lt!72972 e!90818)))

(declare-fun c!26090 () Bool)

(assert (=> d!43431 (= c!26090 e!90820)))

(declare-fun res!66656 () Bool)

(assert (=> d!43431 (=> (not res!66656) (not e!90820))))

(assert (=> d!43431 (= res!66656 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2574 (_keys!4691 (v!3266 (underlying!475 thiss!992))))))))

(assert (=> d!43431 (= lt!72975 e!90816)))

(assert (=> d!43431 (= c!26089 (and (not (= (bvand (extraKeys!2687 (v!3266 (underlying!475 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2687 (v!3266 (underlying!475 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!43431 (validMask!0 (mask!7268 (v!3266 (underlying!475 thiss!992))))))

(assert (=> d!43431 (= (getCurrentListMap!551 (_keys!4691 (v!3266 (underlying!475 thiss!992))) (_values!2915 (v!3266 (underlying!475 thiss!992))) (mask!7268 (v!3266 (underlying!475 thiss!992))) (extraKeys!2687 (v!3266 (underlying!475 thiss!992))) (zeroValue!2782 (v!3266 (underlying!475 thiss!992))) (minValue!2782 (v!3266 (underlying!475 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2932 (v!3266 (underlying!475 thiss!992)))) lt!72979)))

(declare-fun b!139310 () Bool)

(assert (=> b!139310 (= e!90821 (= (apply!119 lt!72979 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2782 (v!3266 (underlying!475 thiss!992)))))))

(declare-fun bm!15422 () Bool)

(assert (=> bm!15422 (= call!15423 call!15425)))

(declare-fun b!139321 () Bool)

(declare-fun res!66663 () Bool)

(assert (=> b!139321 (=> (not res!66663) (not e!90815))))

(assert (=> b!139321 (= res!66663 e!90817)))

(declare-fun c!26087 () Bool)

(assert (=> b!139321 (= c!26087 (not (= (bvand (extraKeys!2687 (v!3266 (underlying!475 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!139322 () Bool)

(declare-fun res!66664 () Bool)

(assert (=> b!139322 (=> (not res!66664) (not e!90815))))

(assert (=> b!139322 (= res!66664 e!90822)))

(declare-fun res!66658 () Bool)

(assert (=> b!139322 (=> res!66658 e!90822)))

(assert (=> b!139322 (= res!66658 (not e!90811))))

(declare-fun res!66661 () Bool)

(assert (=> b!139322 (=> (not res!66661) (not e!90811))))

(assert (=> b!139322 (= res!66661 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2574 (_keys!4691 (v!3266 (underlying!475 thiss!992))))))))

(declare-fun b!139323 () Bool)

(declare-fun c!26086 () Bool)

(assert (=> b!139323 (= c!26086 (and (not (= (bvand (extraKeys!2687 (v!3266 (underlying!475 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2687 (v!3266 (underlying!475 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!139323 (= e!90814 e!90819)))

(assert (= (and d!43431 c!26089) b!139312))

(assert (= (and d!43431 (not c!26089)) b!139320))

(assert (= (and b!139320 c!26088) b!139314))

(assert (= (and b!139320 (not c!26088)) b!139323))

(assert (= (and b!139323 c!26086) b!139311))

(assert (= (and b!139323 (not c!26086)) b!139313))

(assert (= (or b!139311 b!139313) bm!15422))

(assert (= (or b!139314 bm!15422) bm!15419))

(assert (= (or b!139314 b!139311) bm!15417))

(assert (= (or b!139312 bm!15419) bm!15416))

(assert (= (or b!139312 bm!15417) bm!15418))

(assert (= (and d!43431 res!66656) b!139315))

(assert (= (and d!43431 c!26090) b!139316))

(assert (= (and d!43431 (not c!26090)) b!139304))

(assert (= (and d!43431 res!66660) b!139322))

(assert (= (and b!139322 res!66661) b!139318))

(assert (= (and b!139322 (not res!66658)) b!139319))

(assert (= (and b!139319 res!66659) b!139305))

(assert (= (and b!139322 res!66664) b!139321))

(assert (= (and b!139321 c!26087) b!139309))

(assert (= (and b!139321 (not c!26087)) b!139317))

(assert (= (and b!139309 res!66662) b!139306))

(assert (= (or b!139309 b!139317) bm!15421))

(assert (= (and b!139321 res!66663) b!139307))

(assert (= (and b!139307 c!26085) b!139308))

(assert (= (and b!139307 (not c!26085)) b!139303))

(assert (= (and b!139308 res!66657) b!139310))

(assert (= (or b!139308 b!139303) bm!15420))

(declare-fun b_lambda!6269 () Bool)

(assert (=> (not b_lambda!6269) (not b!139305)))

(assert (=> b!139305 t!6323))

(declare-fun b_and!8705 () Bool)

(assert (= b_and!8693 (and (=> t!6323 result!4151) b_and!8705)))

(assert (=> b!139305 t!6325))

(declare-fun b_and!8707 () Bool)

(assert (= b_and!8695 (and (=> t!6325 result!4155) b_and!8707)))

(declare-fun m!166505 () Bool)

(assert (=> bm!15416 m!166505))

(assert (=> b!139315 m!166497))

(assert (=> b!139315 m!166497))

(declare-fun m!166507 () Bool)

(assert (=> b!139315 m!166507))

(declare-fun m!166509 () Bool)

(assert (=> b!139305 m!166509))

(assert (=> b!139305 m!166497))

(assert (=> b!139305 m!166497))

(declare-fun m!166511 () Bool)

(assert (=> b!139305 m!166511))

(assert (=> b!139305 m!166509))

(assert (=> b!139305 m!166349))

(declare-fun m!166513 () Bool)

(assert (=> b!139305 m!166513))

(assert (=> b!139305 m!166349))

(declare-fun m!166515 () Bool)

(assert (=> b!139306 m!166515))

(declare-fun m!166517 () Bool)

(assert (=> b!139312 m!166517))

(declare-fun m!166519 () Bool)

(assert (=> b!139310 m!166519))

(declare-fun m!166521 () Bool)

(assert (=> bm!15420 m!166521))

(declare-fun m!166523 () Bool)

(assert (=> bm!15421 m!166523))

(declare-fun m!166525 () Bool)

(assert (=> b!139316 m!166525))

(declare-fun m!166527 () Bool)

(assert (=> b!139316 m!166527))

(declare-fun m!166529 () Bool)

(assert (=> b!139316 m!166529))

(declare-fun m!166531 () Bool)

(assert (=> b!139316 m!166531))

(declare-fun m!166533 () Bool)

(assert (=> b!139316 m!166533))

(assert (=> b!139316 m!166497))

(assert (=> b!139316 m!166527))

(declare-fun m!166535 () Bool)

(assert (=> b!139316 m!166535))

(declare-fun m!166537 () Bool)

(assert (=> b!139316 m!166537))

(assert (=> b!139316 m!166505))

(declare-fun m!166539 () Bool)

(assert (=> b!139316 m!166539))

(declare-fun m!166541 () Bool)

(assert (=> b!139316 m!166541))

(declare-fun m!166543 () Bool)

(assert (=> b!139316 m!166543))

(declare-fun m!166545 () Bool)

(assert (=> b!139316 m!166545))

(assert (=> b!139316 m!166525))

(declare-fun m!166547 () Bool)

(assert (=> b!139316 m!166547))

(declare-fun m!166549 () Bool)

(assert (=> b!139316 m!166549))

(assert (=> b!139316 m!166531))

(declare-fun m!166551 () Bool)

(assert (=> b!139316 m!166551))

(declare-fun m!166553 () Bool)

(assert (=> b!139316 m!166553))

(assert (=> b!139316 m!166541))

(assert (=> d!43431 m!166503))

(assert (=> b!139319 m!166497))

(assert (=> b!139319 m!166497))

(declare-fun m!166555 () Bool)

(assert (=> b!139319 m!166555))

(assert (=> b!139318 m!166497))

(assert (=> b!139318 m!166497))

(assert (=> b!139318 m!166507))

(declare-fun m!166557 () Bool)

(assert (=> bm!15418 m!166557))

(assert (=> b!139032 d!43431))

(declare-fun b!139330 () Bool)

(declare-fun e!90829 () Bool)

(assert (=> b!139330 (= e!90829 tp_is_empty!2919)))

(declare-fun mapNonEmpty!4803 () Bool)

(declare-fun mapRes!4803 () Bool)

(declare-fun tp!11499 () Bool)

(assert (=> mapNonEmpty!4803 (= mapRes!4803 (and tp!11499 e!90829))))

(declare-fun mapKey!4803 () (_ BitVec 32))

(declare-fun mapRest!4803 () (Array (_ BitVec 32) ValueCell!1116))

(declare-fun mapValue!4803 () ValueCell!1116)

(assert (=> mapNonEmpty!4803 (= mapRest!4793 (store mapRest!4803 mapKey!4803 mapValue!4803))))

(declare-fun b!139331 () Bool)

(declare-fun e!90828 () Bool)

(assert (=> b!139331 (= e!90828 tp_is_empty!2919)))

(declare-fun condMapEmpty!4803 () Bool)

(declare-fun mapDefault!4803 () ValueCell!1116)

(assert (=> mapNonEmpty!4793 (= condMapEmpty!4803 (= mapRest!4793 ((as const (Array (_ BitVec 32) ValueCell!1116)) mapDefault!4803)))))

(assert (=> mapNonEmpty!4793 (= tp!11483 (and e!90828 mapRes!4803))))

(declare-fun mapIsEmpty!4803 () Bool)

(assert (=> mapIsEmpty!4803 mapRes!4803))

(assert (= (and mapNonEmpty!4793 condMapEmpty!4803) mapIsEmpty!4803))

(assert (= (and mapNonEmpty!4793 (not condMapEmpty!4803)) mapNonEmpty!4803))

(assert (= (and mapNonEmpty!4803 ((_ is ValueCellFull!1116) mapValue!4803)) b!139330))

(assert (= (and mapNonEmpty!4793 ((_ is ValueCellFull!1116) mapDefault!4803)) b!139331))

(declare-fun m!166559 () Bool)

(assert (=> mapNonEmpty!4803 m!166559))

(declare-fun b!139332 () Bool)

(declare-fun e!90831 () Bool)

(assert (=> b!139332 (= e!90831 tp_is_empty!2919)))

(declare-fun mapNonEmpty!4804 () Bool)

(declare-fun mapRes!4804 () Bool)

(declare-fun tp!11500 () Bool)

(assert (=> mapNonEmpty!4804 (= mapRes!4804 (and tp!11500 e!90831))))

(declare-fun mapValue!4804 () ValueCell!1116)

(declare-fun mapKey!4804 () (_ BitVec 32))

(declare-fun mapRest!4804 () (Array (_ BitVec 32) ValueCell!1116))

(assert (=> mapNonEmpty!4804 (= mapRest!4794 (store mapRest!4804 mapKey!4804 mapValue!4804))))

(declare-fun b!139333 () Bool)

(declare-fun e!90830 () Bool)

(assert (=> b!139333 (= e!90830 tp_is_empty!2919)))

(declare-fun condMapEmpty!4804 () Bool)

(declare-fun mapDefault!4804 () ValueCell!1116)

(assert (=> mapNonEmpty!4794 (= condMapEmpty!4804 (= mapRest!4794 ((as const (Array (_ BitVec 32) ValueCell!1116)) mapDefault!4804)))))

(assert (=> mapNonEmpty!4794 (= tp!11484 (and e!90830 mapRes!4804))))

(declare-fun mapIsEmpty!4804 () Bool)

(assert (=> mapIsEmpty!4804 mapRes!4804))

(assert (= (and mapNonEmpty!4794 condMapEmpty!4804) mapIsEmpty!4804))

(assert (= (and mapNonEmpty!4794 (not condMapEmpty!4804)) mapNonEmpty!4804))

(assert (= (and mapNonEmpty!4804 ((_ is ValueCellFull!1116) mapValue!4804)) b!139332))

(assert (= (and mapNonEmpty!4794 ((_ is ValueCellFull!1116) mapDefault!4804)) b!139333))

(declare-fun m!166561 () Bool)

(assert (=> mapNonEmpty!4804 m!166561))

(declare-fun b_lambda!6271 () Bool)

(assert (= b_lambda!6269 (or (and b!139022 b_free!3005) (and b!139025 b_free!3007 (= (defaultEntry!2932 newMap!16) (defaultEntry!2932 (v!3266 (underlying!475 thiss!992))))) b_lambda!6271)))

(check-sat (not b!139199) (not b!139223) (not b!139259) (not b!139312) (not b!139318) b_and!8705 (not bm!15376) (not b!139315) (not d!43405) (not bm!15379) (not b!139096) (not b!139224) (not d!43407) (not b!139310) (not b!139248) (not b!139232) (not bm!15393) (not b!139254) (not b_lambda!6271) (not b!139233) (not bm!15380) (not b_next!3005) (not d!43415) (not d!43429) (not bm!15384) (not bm!15395) (not mapNonEmpty!4804) (not b!139231) (not b!139187) (not b!139098) (not b!139319) (not d!43431) (not b!139202) (not b!139197) (not b_next!3007) (not bm!15418) (not d!43403) (not b_lambda!6267) (not b!139305) (not bm!15389) (not b!139191) (not b!139316) (not bm!15387) (not b!139180) tp_is_empty!2919 (not bm!15386) (not b!139244) (not d!43427) b_and!8707 (not bm!15421) (not bm!15388) (not b!139306) (not bm!15401) (not d!43423) (not bm!15420) (not b!139245) (not bm!15416) (not mapNonEmpty!4803) (not bm!15377) (not bm!15382) (not b!139190))
(check-sat b_and!8705 b_and!8707 (not b_next!3005) (not b_next!3007))

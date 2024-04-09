; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22092 () Bool)

(assert start!22092)

(declare-fun b!228947 () Bool)

(declare-fun b_free!6147 () Bool)

(declare-fun b_next!6147 () Bool)

(assert (=> b!228947 (= b_free!6147 (not b_next!6147))))

(declare-fun tp!21583 () Bool)

(declare-fun b_and!13063 () Bool)

(assert (=> b!228947 (= tp!21583 b_and!13063)))

(declare-fun b!228943 () Bool)

(declare-datatypes ((Unit!6970 0))(
  ( (Unit!6971) )
))
(declare-fun e!148544 () Unit!6970)

(declare-fun Unit!6972 () Unit!6970)

(assert (=> b!228943 (= e!148544 Unit!6972)))

(declare-fun lt!115220 () Unit!6970)

(declare-datatypes ((V!7659 0))(
  ( (V!7660 (val!3049 Int)) )
))
(declare-datatypes ((ValueCell!2661 0))(
  ( (ValueCellFull!2661 (v!5065 V!7659)) (EmptyCell!2661) )
))
(declare-datatypes ((array!11260 0))(
  ( (array!11261 (arr!5349 (Array (_ BitVec 32) ValueCell!2661)) (size!5682 (_ BitVec 32))) )
))
(declare-datatypes ((array!11262 0))(
  ( (array!11263 (arr!5350 (Array (_ BitVec 32) (_ BitVec 64))) (size!5683 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3222 0))(
  ( (LongMapFixedSize!3223 (defaultEntry!4270 Int) (mask!10146 (_ BitVec 32)) (extraKeys!4007 (_ BitVec 32)) (zeroValue!4111 V!7659) (minValue!4111 V!7659) (_size!1660 (_ BitVec 32)) (_keys!6324 array!11262) (_values!4253 array!11260) (_vacant!1660 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3222)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!278 (array!11262 array!11260 (_ BitVec 32) (_ BitVec 32) V!7659 V!7659 (_ BitVec 64) Int) Unit!6970)

(assert (=> b!228943 (= lt!115220 (lemmaInListMapThenSeekEntryOrOpenFindsIt!278 (_keys!6324 thiss!1504) (_values!4253 thiss!1504) (mask!10146 thiss!1504) (extraKeys!4007 thiss!1504) (zeroValue!4111 thiss!1504) (minValue!4111 thiss!1504) key!932 (defaultEntry!4270 thiss!1504)))))

(assert (=> b!228943 false))

(declare-datatypes ((SeekEntryResult!925 0))(
  ( (MissingZero!925 (index!5870 (_ BitVec 32))) (Found!925 (index!5871 (_ BitVec 32))) (Intermediate!925 (undefined!1737 Bool) (index!5872 (_ BitVec 32)) (x!23369 (_ BitVec 32))) (Undefined!925) (MissingVacant!925 (index!5873 (_ BitVec 32))) )
))
(declare-fun lt!115216 () SeekEntryResult!925)

(declare-fun c!37958 () Bool)

(declare-fun bm!21270 () Bool)

(declare-fun call!21273 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21270 (= call!21273 (inRange!0 (ite c!37958 (index!5870 lt!115216) (index!5873 lt!115216)) (mask!10146 thiss!1504)))))

(declare-fun bm!21271 () Bool)

(declare-fun call!21274 () Bool)

(declare-fun arrayContainsKey!0 (array!11262 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21271 (= call!21274 (arrayContainsKey!0 (_keys!6324 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!228944 () Bool)

(declare-fun e!148541 () Bool)

(assert (=> b!228944 (= e!148541 (not call!21274))))

(declare-fun b!228945 () Bool)

(declare-fun e!148548 () Bool)

(declare-fun tp_is_empty!6009 () Bool)

(assert (=> b!228945 (= e!148548 tp_is_empty!6009)))

(declare-fun b!228946 () Bool)

(declare-fun e!148542 () Bool)

(declare-fun e!148545 () Bool)

(assert (=> b!228946 (= e!148542 e!148545)))

(declare-fun res!112703 () Bool)

(assert (=> b!228946 (=> (not res!112703) (not e!148545))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!228946 (= res!112703 (or (= lt!115216 (MissingZero!925 index!297)) (= lt!115216 (MissingVacant!925 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11262 (_ BitVec 32)) SeekEntryResult!925)

(assert (=> b!228946 (= lt!115216 (seekEntryOrOpen!0 key!932 (_keys!6324 thiss!1504) (mask!10146 thiss!1504)))))

(declare-fun e!148549 () Bool)

(declare-fun e!148543 () Bool)

(declare-fun array_inv!3523 (array!11262) Bool)

(declare-fun array_inv!3524 (array!11260) Bool)

(assert (=> b!228947 (= e!148543 (and tp!21583 tp_is_empty!6009 (array_inv!3523 (_keys!6324 thiss!1504)) (array_inv!3524 (_values!4253 thiss!1504)) e!148549))))

(declare-fun b!228948 () Bool)

(declare-fun e!148550 () Unit!6970)

(declare-fun Unit!6973 () Unit!6970)

(assert (=> b!228948 (= e!148550 Unit!6973)))

(declare-fun b!228949 () Bool)

(declare-fun res!112697 () Bool)

(assert (=> b!228949 (=> (not res!112697) (not e!148542))))

(assert (=> b!228949 (= res!112697 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!228950 () Bool)

(declare-fun mapRes!10183 () Bool)

(assert (=> b!228950 (= e!148549 (and e!148548 mapRes!10183))))

(declare-fun condMapEmpty!10183 () Bool)

(declare-fun mapDefault!10183 () ValueCell!2661)

(assert (=> b!228950 (= condMapEmpty!10183 (= (arr!5349 (_values!4253 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2661)) mapDefault!10183)))))

(declare-fun b!228951 () Bool)

(declare-fun res!112698 () Bool)

(assert (=> b!228951 (= res!112698 (= (select (arr!5350 (_keys!6324 thiss!1504)) (index!5873 lt!115216)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!148555 () Bool)

(assert (=> b!228951 (=> (not res!112698) (not e!148555))))

(declare-fun b!228952 () Bool)

(declare-fun res!112704 () Bool)

(declare-fun e!148552 () Bool)

(assert (=> b!228952 (=> res!112704 e!148552)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11262 (_ BitVec 32)) Bool)

(assert (=> b!228952 (= res!112704 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6324 thiss!1504) (mask!10146 thiss!1504))))))

(declare-fun b!228953 () Bool)

(declare-fun e!148546 () Bool)

(assert (=> b!228953 (= e!148545 e!148546)))

(declare-fun res!112700 () Bool)

(assert (=> b!228953 (=> (not res!112700) (not e!148546))))

(assert (=> b!228953 (= res!112700 (inRange!0 index!297 (mask!10146 thiss!1504)))))

(declare-fun lt!115219 () Unit!6970)

(assert (=> b!228953 (= lt!115219 e!148544)))

(declare-fun c!37960 () Bool)

(declare-datatypes ((tuple2!4494 0))(
  ( (tuple2!4495 (_1!2257 (_ BitVec 64)) (_2!2257 V!7659)) )
))
(declare-datatypes ((List!3441 0))(
  ( (Nil!3438) (Cons!3437 (h!4085 tuple2!4494) (t!8408 List!3441)) )
))
(declare-datatypes ((ListLongMap!3421 0))(
  ( (ListLongMap!3422 (toList!1726 List!3441)) )
))
(declare-fun contains!1594 (ListLongMap!3421 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1249 (array!11262 array!11260 (_ BitVec 32) (_ BitVec 32) V!7659 V!7659 (_ BitVec 32) Int) ListLongMap!3421)

(assert (=> b!228953 (= c!37960 (contains!1594 (getCurrentListMap!1249 (_keys!6324 thiss!1504) (_values!4253 thiss!1504) (mask!10146 thiss!1504) (extraKeys!4007 thiss!1504) (zeroValue!4111 thiss!1504) (minValue!4111 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4270 thiss!1504)) key!932))))

(declare-fun b!228954 () Bool)

(declare-fun e!148554 () Bool)

(assert (=> b!228954 (= e!148554 e!148555)))

(declare-fun res!112695 () Bool)

(assert (=> b!228954 (= res!112695 call!21273)))

(assert (=> b!228954 (=> (not res!112695) (not e!148555))))

(declare-fun b!228955 () Bool)

(assert (=> b!228955 (= e!148546 (not e!148552))))

(declare-fun res!112696 () Bool)

(assert (=> b!228955 (=> res!112696 e!148552)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!228955 (= res!112696 (not (validMask!0 (mask!10146 thiss!1504))))))

(declare-fun lt!115217 () array!11262)

(assert (=> b!228955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!115217 (mask!10146 thiss!1504))))

(declare-fun lt!115213 () Unit!6970)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11262 (_ BitVec 32) (_ BitVec 32)) Unit!6970)

(assert (=> b!228955 (= lt!115213 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6324 thiss!1504) index!297 (mask!10146 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11262 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!228955 (= (arrayCountValidKeys!0 lt!115217 #b00000000000000000000000000000000 (size!5683 (_keys!6324 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6324 thiss!1504) #b00000000000000000000000000000000 (size!5683 (_keys!6324 thiss!1504)))))))

(declare-fun lt!115218 () Unit!6970)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11262 (_ BitVec 32) (_ BitVec 64)) Unit!6970)

(assert (=> b!228955 (= lt!115218 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6324 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3442 0))(
  ( (Nil!3439) (Cons!3438 (h!4086 (_ BitVec 64)) (t!8409 List!3442)) )
))
(declare-fun arrayNoDuplicates!0 (array!11262 (_ BitVec 32) List!3442) Bool)

(assert (=> b!228955 (arrayNoDuplicates!0 lt!115217 #b00000000000000000000000000000000 Nil!3439)))

(assert (=> b!228955 (= lt!115217 (array!11263 (store (arr!5350 (_keys!6324 thiss!1504)) index!297 key!932) (size!5683 (_keys!6324 thiss!1504))))))

(declare-fun lt!115215 () Unit!6970)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11262 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3442) Unit!6970)

(assert (=> b!228955 (= lt!115215 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6324 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3439))))

(declare-fun lt!115214 () Unit!6970)

(assert (=> b!228955 (= lt!115214 e!148550)))

(declare-fun c!37961 () Bool)

(assert (=> b!228955 (= c!37961 (arrayContainsKey!0 (_keys!6324 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!228956 () Bool)

(declare-fun res!112699 () Bool)

(assert (=> b!228956 (=> (not res!112699) (not e!148541))))

(assert (=> b!228956 (= res!112699 call!21273)))

(declare-fun e!148547 () Bool)

(assert (=> b!228956 (= e!148547 e!148541)))

(declare-fun b!228957 () Bool)

(assert (=> b!228957 (= e!148552 true)))

(declare-fun lt!115212 () Bool)

(assert (=> b!228957 (= lt!115212 (arrayNoDuplicates!0 (_keys!6324 thiss!1504) #b00000000000000000000000000000000 Nil!3439))))

(declare-fun b!228958 () Bool)

(declare-fun lt!115211 () Unit!6970)

(assert (=> b!228958 (= e!148544 lt!115211)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!291 (array!11262 array!11260 (_ BitVec 32) (_ BitVec 32) V!7659 V!7659 (_ BitVec 64) Int) Unit!6970)

(assert (=> b!228958 (= lt!115211 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!291 (_keys!6324 thiss!1504) (_values!4253 thiss!1504) (mask!10146 thiss!1504) (extraKeys!4007 thiss!1504) (zeroValue!4111 thiss!1504) (minValue!4111 thiss!1504) key!932 (defaultEntry!4270 thiss!1504)))))

(get-info :version)

(assert (=> b!228958 (= c!37958 ((_ is MissingZero!925) lt!115216))))

(assert (=> b!228958 e!148547))

(declare-fun mapNonEmpty!10183 () Bool)

(declare-fun tp!21582 () Bool)

(declare-fun e!148553 () Bool)

(assert (=> mapNonEmpty!10183 (= mapRes!10183 (and tp!21582 e!148553))))

(declare-fun mapValue!10183 () ValueCell!2661)

(declare-fun mapRest!10183 () (Array (_ BitVec 32) ValueCell!2661))

(declare-fun mapKey!10183 () (_ BitVec 32))

(assert (=> mapNonEmpty!10183 (= (arr!5349 (_values!4253 thiss!1504)) (store mapRest!10183 mapKey!10183 mapValue!10183))))

(declare-fun b!228959 () Bool)

(declare-fun res!112701 () Bool)

(assert (=> b!228959 (=> (not res!112701) (not e!148541))))

(assert (=> b!228959 (= res!112701 (= (select (arr!5350 (_keys!6324 thiss!1504)) (index!5870 lt!115216)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!228960 () Bool)

(assert (=> b!228960 (= e!148554 ((_ is Undefined!925) lt!115216))))

(declare-fun mapIsEmpty!10183 () Bool)

(assert (=> mapIsEmpty!10183 mapRes!10183))

(declare-fun b!228961 () Bool)

(assert (=> b!228961 (= e!148553 tp_is_empty!6009)))

(declare-fun b!228962 () Bool)

(declare-fun c!37959 () Bool)

(assert (=> b!228962 (= c!37959 ((_ is MissingVacant!925) lt!115216))))

(assert (=> b!228962 (= e!148547 e!148554)))

(declare-fun b!228963 () Bool)

(declare-fun res!112705 () Bool)

(assert (=> b!228963 (=> res!112705 e!148552)))

(assert (=> b!228963 (= res!112705 (or (not (= (size!5682 (_values!4253 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10146 thiss!1504)))) (not (= (size!5683 (_keys!6324 thiss!1504)) (size!5682 (_values!4253 thiss!1504)))) (bvslt (mask!10146 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4007 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4007 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun res!112702 () Bool)

(assert (=> start!22092 (=> (not res!112702) (not e!148542))))

(declare-fun valid!1277 (LongMapFixedSize!3222) Bool)

(assert (=> start!22092 (= res!112702 (valid!1277 thiss!1504))))

(assert (=> start!22092 e!148542))

(assert (=> start!22092 e!148543))

(assert (=> start!22092 true))

(declare-fun b!228964 () Bool)

(assert (=> b!228964 (= e!148555 (not call!21274))))

(declare-fun b!228965 () Bool)

(declare-fun Unit!6974 () Unit!6970)

(assert (=> b!228965 (= e!148550 Unit!6974)))

(declare-fun lt!115221 () Unit!6970)

(declare-fun lemmaArrayContainsKeyThenInListMap!112 (array!11262 array!11260 (_ BitVec 32) (_ BitVec 32) V!7659 V!7659 (_ BitVec 64) (_ BitVec 32) Int) Unit!6970)

(assert (=> b!228965 (= lt!115221 (lemmaArrayContainsKeyThenInListMap!112 (_keys!6324 thiss!1504) (_values!4253 thiss!1504) (mask!10146 thiss!1504) (extraKeys!4007 thiss!1504) (zeroValue!4111 thiss!1504) (minValue!4111 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4270 thiss!1504)))))

(assert (=> b!228965 false))

(assert (= (and start!22092 res!112702) b!228949))

(assert (= (and b!228949 res!112697) b!228946))

(assert (= (and b!228946 res!112703) b!228953))

(assert (= (and b!228953 c!37960) b!228943))

(assert (= (and b!228953 (not c!37960)) b!228958))

(assert (= (and b!228958 c!37958) b!228956))

(assert (= (and b!228958 (not c!37958)) b!228962))

(assert (= (and b!228956 res!112699) b!228959))

(assert (= (and b!228959 res!112701) b!228944))

(assert (= (and b!228962 c!37959) b!228954))

(assert (= (and b!228962 (not c!37959)) b!228960))

(assert (= (and b!228954 res!112695) b!228951))

(assert (= (and b!228951 res!112698) b!228964))

(assert (= (or b!228956 b!228954) bm!21270))

(assert (= (or b!228944 b!228964) bm!21271))

(assert (= (and b!228953 res!112700) b!228955))

(assert (= (and b!228955 c!37961) b!228965))

(assert (= (and b!228955 (not c!37961)) b!228948))

(assert (= (and b!228955 (not res!112696)) b!228963))

(assert (= (and b!228963 (not res!112705)) b!228952))

(assert (= (and b!228952 (not res!112704)) b!228957))

(assert (= (and b!228950 condMapEmpty!10183) mapIsEmpty!10183))

(assert (= (and b!228950 (not condMapEmpty!10183)) mapNonEmpty!10183))

(assert (= (and mapNonEmpty!10183 ((_ is ValueCellFull!2661) mapValue!10183)) b!228961))

(assert (= (and b!228950 ((_ is ValueCellFull!2661) mapDefault!10183)) b!228945))

(assert (= b!228947 b!228950))

(assert (= start!22092 b!228947))

(declare-fun m!250589 () Bool)

(assert (=> b!228958 m!250589))

(declare-fun m!250591 () Bool)

(assert (=> mapNonEmpty!10183 m!250591))

(declare-fun m!250593 () Bool)

(assert (=> b!228951 m!250593))

(declare-fun m!250595 () Bool)

(assert (=> bm!21270 m!250595))

(declare-fun m!250597 () Bool)

(assert (=> b!228955 m!250597))

(declare-fun m!250599 () Bool)

(assert (=> b!228955 m!250599))

(declare-fun m!250601 () Bool)

(assert (=> b!228955 m!250601))

(declare-fun m!250603 () Bool)

(assert (=> b!228955 m!250603))

(declare-fun m!250605 () Bool)

(assert (=> b!228955 m!250605))

(declare-fun m!250607 () Bool)

(assert (=> b!228955 m!250607))

(declare-fun m!250609 () Bool)

(assert (=> b!228955 m!250609))

(declare-fun m!250611 () Bool)

(assert (=> b!228955 m!250611))

(declare-fun m!250613 () Bool)

(assert (=> b!228955 m!250613))

(declare-fun m!250615 () Bool)

(assert (=> b!228955 m!250615))

(declare-fun m!250617 () Bool)

(assert (=> b!228965 m!250617))

(declare-fun m!250619 () Bool)

(assert (=> b!228957 m!250619))

(declare-fun m!250621 () Bool)

(assert (=> b!228952 m!250621))

(assert (=> bm!21271 m!250599))

(declare-fun m!250623 () Bool)

(assert (=> b!228943 m!250623))

(declare-fun m!250625 () Bool)

(assert (=> start!22092 m!250625))

(declare-fun m!250627 () Bool)

(assert (=> b!228953 m!250627))

(declare-fun m!250629 () Bool)

(assert (=> b!228953 m!250629))

(assert (=> b!228953 m!250629))

(declare-fun m!250631 () Bool)

(assert (=> b!228953 m!250631))

(declare-fun m!250633 () Bool)

(assert (=> b!228946 m!250633))

(declare-fun m!250635 () Bool)

(assert (=> b!228947 m!250635))

(declare-fun m!250637 () Bool)

(assert (=> b!228947 m!250637))

(declare-fun m!250639 () Bool)

(assert (=> b!228959 m!250639))

(check-sat (not b!228953) (not b!228943) b_and!13063 (not b!228947) (not bm!21271) (not mapNonEmpty!10183) tp_is_empty!6009 (not b!228955) (not b_next!6147) (not b!228946) (not start!22092) (not b!228965) (not bm!21270) (not b!228952) (not b!228957) (not b!228958))
(check-sat b_and!13063 (not b_next!6147))

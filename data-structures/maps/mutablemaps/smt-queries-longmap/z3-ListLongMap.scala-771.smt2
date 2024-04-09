; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18154 () Bool)

(assert start!18154)

(declare-fun b!180597 () Bool)

(declare-fun b_free!4467 () Bool)

(declare-fun b_next!4467 () Bool)

(assert (=> b!180597 (= b_free!4467 (not b_next!4467))))

(declare-fun tp!16141 () Bool)

(declare-fun b_and!11021 () Bool)

(assert (=> b!180597 (= tp!16141 b_and!11021)))

(declare-fun res!85547 () Bool)

(declare-fun e!118980 () Bool)

(assert (=> start!18154 (=> (not res!85547) (not e!118980))))

(declare-datatypes ((V!5299 0))(
  ( (V!5300 (val!2164 Int)) )
))
(declare-datatypes ((ValueCell!1776 0))(
  ( (ValueCellFull!1776 (v!4054 V!5299)) (EmptyCell!1776) )
))
(declare-datatypes ((array!7652 0))(
  ( (array!7653 (arr!3622 (Array (_ BitVec 32) (_ BitVec 64))) (size!3930 (_ BitVec 32))) )
))
(declare-datatypes ((array!7654 0))(
  ( (array!7655 (arr!3623 (Array (_ BitVec 32) ValueCell!1776)) (size!3931 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2460 0))(
  ( (LongMapFixedSize!2461 (defaultEntry!3707 Int) (mask!8712 (_ BitVec 32)) (extraKeys!3444 (_ BitVec 32)) (zeroValue!3548 V!5299) (minValue!3548 V!5299) (_size!1279 (_ BitVec 32)) (_keys!5601 array!7652) (_values!3690 array!7654) (_vacant!1279 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2460)

(declare-fun valid!1014 (LongMapFixedSize!2460) Bool)

(assert (=> start!18154 (= res!85547 (valid!1014 thiss!1248))))

(assert (=> start!18154 e!118980))

(declare-fun e!118979 () Bool)

(assert (=> start!18154 e!118979))

(assert (=> start!18154 true))

(declare-fun b!180589 () Bool)

(declare-fun e!118976 () Bool)

(declare-fun tp_is_empty!4239 () Bool)

(assert (=> b!180589 (= e!118976 tp_is_empty!4239)))

(declare-fun b!180590 () Bool)

(declare-fun e!118982 () Bool)

(declare-fun mapRes!7261 () Bool)

(assert (=> b!180590 (= e!118982 (and e!118976 mapRes!7261))))

(declare-fun condMapEmpty!7261 () Bool)

(declare-fun mapDefault!7261 () ValueCell!1776)

(assert (=> b!180590 (= condMapEmpty!7261 (= (arr!3623 (_values!3690 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1776)) mapDefault!7261)))))

(declare-fun mapNonEmpty!7261 () Bool)

(declare-fun tp!16140 () Bool)

(declare-fun e!118978 () Bool)

(assert (=> mapNonEmpty!7261 (= mapRes!7261 (and tp!16140 e!118978))))

(declare-fun mapRest!7261 () (Array (_ BitVec 32) ValueCell!1776))

(declare-fun mapValue!7261 () ValueCell!1776)

(declare-fun mapKey!7261 () (_ BitVec 32))

(assert (=> mapNonEmpty!7261 (= (arr!3623 (_values!3690 thiss!1248)) (store mapRest!7261 mapKey!7261 mapValue!7261))))

(declare-fun b!180591 () Bool)

(declare-fun res!85549 () Bool)

(declare-fun e!118981 () Bool)

(assert (=> b!180591 (=> (not res!85549) (not e!118981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!180591 (= res!85549 (validMask!0 (mask!8712 thiss!1248)))))

(declare-fun b!180592 () Bool)

(assert (=> b!180592 (= e!118980 e!118981)))

(declare-fun res!85546 () Bool)

(assert (=> b!180592 (=> (not res!85546) (not e!118981))))

(declare-datatypes ((SeekEntryResult!605 0))(
  ( (MissingZero!605 (index!4590 (_ BitVec 32))) (Found!605 (index!4591 (_ BitVec 32))) (Intermediate!605 (undefined!1417 Bool) (index!4592 (_ BitVec 32)) (x!19757 (_ BitVec 32))) (Undefined!605) (MissingVacant!605 (index!4593 (_ BitVec 32))) )
))
(declare-fun lt!89295 () SeekEntryResult!605)

(get-info :version)

(assert (=> b!180592 (= res!85546 (and (not ((_ is Undefined!605) lt!89295)) (not ((_ is MissingVacant!605) lt!89295)) (not ((_ is MissingZero!605) lt!89295)) ((_ is Found!605) lt!89295)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7652 (_ BitVec 32)) SeekEntryResult!605)

(assert (=> b!180592 (= lt!89295 (seekEntryOrOpen!0 key!828 (_keys!5601 thiss!1248) (mask!8712 thiss!1248)))))

(declare-fun b!180593 () Bool)

(declare-fun res!85545 () Bool)

(assert (=> b!180593 (=> (not res!85545) (not e!118981))))

(declare-datatypes ((tuple2!3370 0))(
  ( (tuple2!3371 (_1!1695 (_ BitVec 64)) (_2!1695 V!5299)) )
))
(declare-datatypes ((List!2319 0))(
  ( (Nil!2316) (Cons!2315 (h!2940 tuple2!3370) (t!7177 List!2319)) )
))
(declare-datatypes ((ListLongMap!2301 0))(
  ( (ListLongMap!2302 (toList!1166 List!2319)) )
))
(declare-fun contains!1236 (ListLongMap!2301 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!809 (array!7652 array!7654 (_ BitVec 32) (_ BitVec 32) V!5299 V!5299 (_ BitVec 32) Int) ListLongMap!2301)

(assert (=> b!180593 (= res!85545 (contains!1236 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248)) key!828))))

(declare-fun b!180594 () Bool)

(assert (=> b!180594 (= e!118978 tp_is_empty!4239)))

(declare-fun b!180595 () Bool)

(assert (=> b!180595 (= e!118981 (not (= (size!3931 (_values!3690 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8712 thiss!1248)))))))

(declare-fun b!180596 () Bool)

(declare-fun res!85548 () Bool)

(assert (=> b!180596 (=> (not res!85548) (not e!118980))))

(assert (=> b!180596 (= res!85548 (not (= key!828 (bvneg key!828))))))

(declare-fun array_inv!2323 (array!7652) Bool)

(declare-fun array_inv!2324 (array!7654) Bool)

(assert (=> b!180597 (= e!118979 (and tp!16141 tp_is_empty!4239 (array_inv!2323 (_keys!5601 thiss!1248)) (array_inv!2324 (_values!3690 thiss!1248)) e!118982))))

(declare-fun mapIsEmpty!7261 () Bool)

(assert (=> mapIsEmpty!7261 mapRes!7261))

(assert (= (and start!18154 res!85547) b!180596))

(assert (= (and b!180596 res!85548) b!180592))

(assert (= (and b!180592 res!85546) b!180593))

(assert (= (and b!180593 res!85545) b!180591))

(assert (= (and b!180591 res!85549) b!180595))

(assert (= (and b!180590 condMapEmpty!7261) mapIsEmpty!7261))

(assert (= (and b!180590 (not condMapEmpty!7261)) mapNonEmpty!7261))

(assert (= (and mapNonEmpty!7261 ((_ is ValueCellFull!1776) mapValue!7261)) b!180594))

(assert (= (and b!180590 ((_ is ValueCellFull!1776) mapDefault!7261)) b!180589))

(assert (= b!180597 b!180590))

(assert (= start!18154 b!180597))

(declare-fun m!208593 () Bool)

(assert (=> mapNonEmpty!7261 m!208593))

(declare-fun m!208595 () Bool)

(assert (=> b!180592 m!208595))

(declare-fun m!208597 () Bool)

(assert (=> b!180597 m!208597))

(declare-fun m!208599 () Bool)

(assert (=> b!180597 m!208599))

(declare-fun m!208601 () Bool)

(assert (=> b!180591 m!208601))

(declare-fun m!208603 () Bool)

(assert (=> b!180593 m!208603))

(assert (=> b!180593 m!208603))

(declare-fun m!208605 () Bool)

(assert (=> b!180593 m!208605))

(declare-fun m!208607 () Bool)

(assert (=> start!18154 m!208607))

(check-sat (not start!18154) (not b!180593) (not mapNonEmpty!7261) (not b!180597) b_and!11021 (not b_next!4467) tp_is_empty!4239 (not b!180591) (not b!180592))
(check-sat b_and!11021 (not b_next!4467))
(get-model)

(declare-fun d!54165 () Bool)

(assert (=> d!54165 (= (array_inv!2323 (_keys!5601 thiss!1248)) (bvsge (size!3930 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!180597 d!54165))

(declare-fun d!54167 () Bool)

(assert (=> d!54167 (= (array_inv!2324 (_values!3690 thiss!1248)) (bvsge (size!3931 (_values!3690 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!180597 d!54167))

(declare-fun d!54169 () Bool)

(assert (=> d!54169 (= (validMask!0 (mask!8712 thiss!1248)) (and (or (= (mask!8712 thiss!1248) #b00000000000000000000000000000111) (= (mask!8712 thiss!1248) #b00000000000000000000000000001111) (= (mask!8712 thiss!1248) #b00000000000000000000000000011111) (= (mask!8712 thiss!1248) #b00000000000000000000000000111111) (= (mask!8712 thiss!1248) #b00000000000000000000000001111111) (= (mask!8712 thiss!1248) #b00000000000000000000000011111111) (= (mask!8712 thiss!1248) #b00000000000000000000000111111111) (= (mask!8712 thiss!1248) #b00000000000000000000001111111111) (= (mask!8712 thiss!1248) #b00000000000000000000011111111111) (= (mask!8712 thiss!1248) #b00000000000000000000111111111111) (= (mask!8712 thiss!1248) #b00000000000000000001111111111111) (= (mask!8712 thiss!1248) #b00000000000000000011111111111111) (= (mask!8712 thiss!1248) #b00000000000000000111111111111111) (= (mask!8712 thiss!1248) #b00000000000000001111111111111111) (= (mask!8712 thiss!1248) #b00000000000000011111111111111111) (= (mask!8712 thiss!1248) #b00000000000000111111111111111111) (= (mask!8712 thiss!1248) #b00000000000001111111111111111111) (= (mask!8712 thiss!1248) #b00000000000011111111111111111111) (= (mask!8712 thiss!1248) #b00000000000111111111111111111111) (= (mask!8712 thiss!1248) #b00000000001111111111111111111111) (= (mask!8712 thiss!1248) #b00000000011111111111111111111111) (= (mask!8712 thiss!1248) #b00000000111111111111111111111111) (= (mask!8712 thiss!1248) #b00000001111111111111111111111111) (= (mask!8712 thiss!1248) #b00000011111111111111111111111111) (= (mask!8712 thiss!1248) #b00000111111111111111111111111111) (= (mask!8712 thiss!1248) #b00001111111111111111111111111111) (= (mask!8712 thiss!1248) #b00011111111111111111111111111111) (= (mask!8712 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8712 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!180591 d!54169))

(declare-fun d!54171 () Bool)

(declare-fun res!85571 () Bool)

(declare-fun e!119006 () Bool)

(assert (=> d!54171 (=> (not res!85571) (not e!119006))))

(declare-fun simpleValid!165 (LongMapFixedSize!2460) Bool)

(assert (=> d!54171 (= res!85571 (simpleValid!165 thiss!1248))))

(assert (=> d!54171 (= (valid!1014 thiss!1248) e!119006)))

(declare-fun b!180631 () Bool)

(declare-fun res!85572 () Bool)

(assert (=> b!180631 (=> (not res!85572) (not e!119006))))

(declare-fun arrayCountValidKeys!0 (array!7652 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!180631 (= res!85572 (= (arrayCountValidKeys!0 (_keys!5601 thiss!1248) #b00000000000000000000000000000000 (size!3930 (_keys!5601 thiss!1248))) (_size!1279 thiss!1248)))))

(declare-fun b!180632 () Bool)

(declare-fun res!85573 () Bool)

(assert (=> b!180632 (=> (not res!85573) (not e!119006))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7652 (_ BitVec 32)) Bool)

(assert (=> b!180632 (= res!85573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5601 thiss!1248) (mask!8712 thiss!1248)))))

(declare-fun b!180633 () Bool)

(declare-datatypes ((List!2321 0))(
  ( (Nil!2318) (Cons!2317 (h!2942 (_ BitVec 64)) (t!7181 List!2321)) )
))
(declare-fun arrayNoDuplicates!0 (array!7652 (_ BitVec 32) List!2321) Bool)

(assert (=> b!180633 (= e!119006 (arrayNoDuplicates!0 (_keys!5601 thiss!1248) #b00000000000000000000000000000000 Nil!2318))))

(assert (= (and d!54171 res!85571) b!180631))

(assert (= (and b!180631 res!85572) b!180632))

(assert (= (and b!180632 res!85573) b!180633))

(declare-fun m!208625 () Bool)

(assert (=> d!54171 m!208625))

(declare-fun m!208627 () Bool)

(assert (=> b!180631 m!208627))

(declare-fun m!208629 () Bool)

(assert (=> b!180632 m!208629))

(declare-fun m!208631 () Bool)

(assert (=> b!180633 m!208631))

(assert (=> start!18154 d!54171))

(declare-fun d!54173 () Bool)

(declare-fun e!119011 () Bool)

(assert (=> d!54173 e!119011))

(declare-fun res!85576 () Bool)

(assert (=> d!54173 (=> res!85576 e!119011)))

(declare-fun lt!89308 () Bool)

(assert (=> d!54173 (= res!85576 (not lt!89308))))

(declare-fun lt!89310 () Bool)

(assert (=> d!54173 (= lt!89308 lt!89310)))

(declare-datatypes ((Unit!5493 0))(
  ( (Unit!5494) )
))
(declare-fun lt!89309 () Unit!5493)

(declare-fun e!119012 () Unit!5493)

(assert (=> d!54173 (= lt!89309 e!119012)))

(declare-fun c!32326 () Bool)

(assert (=> d!54173 (= c!32326 lt!89310)))

(declare-fun containsKey!210 (List!2319 (_ BitVec 64)) Bool)

(assert (=> d!54173 (= lt!89310 (containsKey!210 (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248))) key!828))))

(assert (=> d!54173 (= (contains!1236 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248)) key!828) lt!89308)))

(declare-fun b!180640 () Bool)

(declare-fun lt!89307 () Unit!5493)

(assert (=> b!180640 (= e!119012 lt!89307)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!159 (List!2319 (_ BitVec 64)) Unit!5493)

(assert (=> b!180640 (= lt!89307 (lemmaContainsKeyImpliesGetValueByKeyDefined!159 (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248))) key!828))))

(declare-datatypes ((Option!212 0))(
  ( (Some!211 (v!4056 V!5299)) (None!210) )
))
(declare-fun isDefined!160 (Option!212) Bool)

(declare-fun getValueByKey!206 (List!2319 (_ BitVec 64)) Option!212)

(assert (=> b!180640 (isDefined!160 (getValueByKey!206 (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248))) key!828))))

(declare-fun b!180641 () Bool)

(declare-fun Unit!5495 () Unit!5493)

(assert (=> b!180641 (= e!119012 Unit!5495)))

(declare-fun b!180642 () Bool)

(assert (=> b!180642 (= e!119011 (isDefined!160 (getValueByKey!206 (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248))) key!828)))))

(assert (= (and d!54173 c!32326) b!180640))

(assert (= (and d!54173 (not c!32326)) b!180641))

(assert (= (and d!54173 (not res!85576)) b!180642))

(declare-fun m!208633 () Bool)

(assert (=> d!54173 m!208633))

(declare-fun m!208635 () Bool)

(assert (=> b!180640 m!208635))

(declare-fun m!208637 () Bool)

(assert (=> b!180640 m!208637))

(assert (=> b!180640 m!208637))

(declare-fun m!208639 () Bool)

(assert (=> b!180640 m!208639))

(assert (=> b!180642 m!208637))

(assert (=> b!180642 m!208637))

(assert (=> b!180642 m!208639))

(assert (=> b!180593 d!54173))

(declare-fun b!180685 () Bool)

(declare-fun c!32344 () Bool)

(assert (=> b!180685 (= c!32344 (and (not (= (bvand (extraKeys!3444 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3444 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!119046 () ListLongMap!2301)

(declare-fun e!119039 () ListLongMap!2301)

(assert (=> b!180685 (= e!119046 e!119039)))

(declare-fun bm!18266 () Bool)

(declare-fun call!18271 () Bool)

(declare-fun lt!89365 () ListLongMap!2301)

(assert (=> bm!18266 (= call!18271 (contains!1236 lt!89365 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!180687 () Bool)

(declare-fun e!119040 () Bool)

(assert (=> b!180687 (= e!119040 (not call!18271))))

(declare-fun b!180688 () Bool)

(declare-fun e!119050 () Bool)

(declare-fun call!18273 () Bool)

(assert (=> b!180688 (= e!119050 (not call!18273))))

(declare-fun bm!18267 () Bool)

(declare-fun call!18275 () ListLongMap!2301)

(declare-fun call!18274 () ListLongMap!2301)

(assert (=> bm!18267 (= call!18275 call!18274)))

(declare-fun b!180689 () Bool)

(declare-fun res!85597 () Bool)

(declare-fun e!119051 () Bool)

(assert (=> b!180689 (=> (not res!85597) (not e!119051))))

(declare-fun e!119048 () Bool)

(assert (=> b!180689 (= res!85597 e!119048)))

(declare-fun res!85602 () Bool)

(assert (=> b!180689 (=> res!85602 e!119048)))

(declare-fun e!119043 () Bool)

(assert (=> b!180689 (= res!85602 (not e!119043))))

(declare-fun res!85603 () Bool)

(assert (=> b!180689 (=> (not res!85603) (not e!119043))))

(assert (=> b!180689 (= res!85603 (bvslt #b00000000000000000000000000000000 (size!3930 (_keys!5601 thiss!1248))))))

(declare-fun bm!18268 () Bool)

(assert (=> bm!18268 (= call!18273 (contains!1236 lt!89365 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!180690 () Bool)

(declare-fun e!119049 () Bool)

(declare-fun apply!150 (ListLongMap!2301 (_ BitVec 64)) V!5299)

(assert (=> b!180690 (= e!119049 (= (apply!150 lt!89365 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3548 thiss!1248)))))

(declare-fun b!180691 () Bool)

(declare-fun e!119045 () Bool)

(assert (=> b!180691 (= e!119045 (= (apply!150 lt!89365 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3548 thiss!1248)))))

(declare-fun b!180692 () Bool)

(declare-fun call!18269 () ListLongMap!2301)

(assert (=> b!180692 (= e!119039 call!18269)))

(declare-fun call!18270 () ListLongMap!2301)

(declare-fun c!32342 () Bool)

(declare-fun c!32340 () Bool)

(declare-fun bm!18269 () Bool)

(declare-fun +!265 (ListLongMap!2301 tuple2!3370) ListLongMap!2301)

(assert (=> bm!18269 (= call!18270 (+!265 (ite c!32340 call!18274 (ite c!32342 call!18275 call!18269)) (ite (or c!32340 c!32342) (tuple2!3371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3548 thiss!1248)) (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248)))))))

(declare-fun b!180693 () Bool)

(declare-fun e!119044 () Unit!5493)

(declare-fun lt!89357 () Unit!5493)

(assert (=> b!180693 (= e!119044 lt!89357)))

(declare-fun lt!89374 () ListLongMap!2301)

(declare-fun getCurrentListMapNoExtraKeys!180 (array!7652 array!7654 (_ BitVec 32) (_ BitVec 32) V!5299 V!5299 (_ BitVec 32) Int) ListLongMap!2301)

(assert (=> b!180693 (= lt!89374 (getCurrentListMapNoExtraKeys!180 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248)))))

(declare-fun lt!89358 () (_ BitVec 64))

(assert (=> b!180693 (= lt!89358 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!89362 () (_ BitVec 64))

(assert (=> b!180693 (= lt!89362 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!89367 () Unit!5493)

(declare-fun addStillContains!126 (ListLongMap!2301 (_ BitVec 64) V!5299 (_ BitVec 64)) Unit!5493)

(assert (=> b!180693 (= lt!89367 (addStillContains!126 lt!89374 lt!89358 (zeroValue!3548 thiss!1248) lt!89362))))

(assert (=> b!180693 (contains!1236 (+!265 lt!89374 (tuple2!3371 lt!89358 (zeroValue!3548 thiss!1248))) lt!89362)))

(declare-fun lt!89376 () Unit!5493)

(assert (=> b!180693 (= lt!89376 lt!89367)))

(declare-fun lt!89364 () ListLongMap!2301)

(assert (=> b!180693 (= lt!89364 (getCurrentListMapNoExtraKeys!180 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248)))))

(declare-fun lt!89366 () (_ BitVec 64))

(assert (=> b!180693 (= lt!89366 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!89373 () (_ BitVec 64))

(assert (=> b!180693 (= lt!89373 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!89369 () Unit!5493)

(declare-fun addApplyDifferent!126 (ListLongMap!2301 (_ BitVec 64) V!5299 (_ BitVec 64)) Unit!5493)

(assert (=> b!180693 (= lt!89369 (addApplyDifferent!126 lt!89364 lt!89366 (minValue!3548 thiss!1248) lt!89373))))

(assert (=> b!180693 (= (apply!150 (+!265 lt!89364 (tuple2!3371 lt!89366 (minValue!3548 thiss!1248))) lt!89373) (apply!150 lt!89364 lt!89373))))

(declare-fun lt!89360 () Unit!5493)

(assert (=> b!180693 (= lt!89360 lt!89369)))

(declare-fun lt!89371 () ListLongMap!2301)

(assert (=> b!180693 (= lt!89371 (getCurrentListMapNoExtraKeys!180 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248)))))

(declare-fun lt!89363 () (_ BitVec 64))

(assert (=> b!180693 (= lt!89363 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!89370 () (_ BitVec 64))

(assert (=> b!180693 (= lt!89370 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!89372 () Unit!5493)

(assert (=> b!180693 (= lt!89372 (addApplyDifferent!126 lt!89371 lt!89363 (zeroValue!3548 thiss!1248) lt!89370))))

(assert (=> b!180693 (= (apply!150 (+!265 lt!89371 (tuple2!3371 lt!89363 (zeroValue!3548 thiss!1248))) lt!89370) (apply!150 lt!89371 lt!89370))))

(declare-fun lt!89375 () Unit!5493)

(assert (=> b!180693 (= lt!89375 lt!89372)))

(declare-fun lt!89356 () ListLongMap!2301)

(assert (=> b!180693 (= lt!89356 (getCurrentListMapNoExtraKeys!180 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248)))))

(declare-fun lt!89361 () (_ BitVec 64))

(assert (=> b!180693 (= lt!89361 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!89368 () (_ BitVec 64))

(assert (=> b!180693 (= lt!89368 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!180693 (= lt!89357 (addApplyDifferent!126 lt!89356 lt!89361 (minValue!3548 thiss!1248) lt!89368))))

(assert (=> b!180693 (= (apply!150 (+!265 lt!89356 (tuple2!3371 lt!89361 (minValue!3548 thiss!1248))) lt!89368) (apply!150 lt!89356 lt!89368))))

(declare-fun b!180694 () Bool)

(declare-fun res!85601 () Bool)

(assert (=> b!180694 (=> (not res!85601) (not e!119051))))

(assert (=> b!180694 (= res!85601 e!119050)))

(declare-fun c!32339 () Bool)

(assert (=> b!180694 (= c!32339 (not (= (bvand (extraKeys!3444 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!180695 () Bool)

(declare-fun call!18272 () ListLongMap!2301)

(assert (=> b!180695 (= e!119046 call!18272)))

(declare-fun b!180696 () Bool)

(declare-fun e!119041 () Bool)

(declare-fun get!2068 (ValueCell!1776 V!5299) V!5299)

(declare-fun dynLambda!488 (Int (_ BitVec 64)) V!5299)

(assert (=> b!180696 (= e!119041 (= (apply!150 lt!89365 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000)) (get!2068 (select (arr!3623 (_values!3690 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!488 (defaultEntry!3707 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!180696 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3931 (_values!3690 thiss!1248))))))

(assert (=> b!180696 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3930 (_keys!5601 thiss!1248))))))

(declare-fun b!180697 () Bool)

(assert (=> b!180697 (= e!119050 e!119045)))

(declare-fun res!85599 () Bool)

(assert (=> b!180697 (= res!85599 call!18273)))

(assert (=> b!180697 (=> (not res!85599) (not e!119045))))

(declare-fun b!180686 () Bool)

(assert (=> b!180686 (= e!119051 e!119040)))

(declare-fun c!32343 () Bool)

(assert (=> b!180686 (= c!32343 (not (= (bvand (extraKeys!3444 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!54175 () Bool)

(assert (=> d!54175 e!119051))

(declare-fun res!85595 () Bool)

(assert (=> d!54175 (=> (not res!85595) (not e!119051))))

(assert (=> d!54175 (= res!85595 (or (bvsge #b00000000000000000000000000000000 (size!3930 (_keys!5601 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3930 (_keys!5601 thiss!1248))))))))

(declare-fun lt!89355 () ListLongMap!2301)

(assert (=> d!54175 (= lt!89365 lt!89355)))

(declare-fun lt!89359 () Unit!5493)

(assert (=> d!54175 (= lt!89359 e!119044)))

(declare-fun c!32341 () Bool)

(declare-fun e!119042 () Bool)

(assert (=> d!54175 (= c!32341 e!119042)))

(declare-fun res!85598 () Bool)

(assert (=> d!54175 (=> (not res!85598) (not e!119042))))

(assert (=> d!54175 (= res!85598 (bvslt #b00000000000000000000000000000000 (size!3930 (_keys!5601 thiss!1248))))))

(declare-fun e!119047 () ListLongMap!2301)

(assert (=> d!54175 (= lt!89355 e!119047)))

(assert (=> d!54175 (= c!32340 (and (not (= (bvand (extraKeys!3444 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3444 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!54175 (validMask!0 (mask!8712 thiss!1248))))

(assert (=> d!54175 (= (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248)) lt!89365)))

(declare-fun b!180698 () Bool)

(assert (=> b!180698 (= e!119039 call!18272)))

(declare-fun b!180699 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!180699 (= e!119043 (validKeyInArray!0 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!180700 () Bool)

(assert (=> b!180700 (= e!119040 e!119049)))

(declare-fun res!85596 () Bool)

(assert (=> b!180700 (= res!85596 call!18271)))

(assert (=> b!180700 (=> (not res!85596) (not e!119049))))

(declare-fun b!180701 () Bool)

(assert (=> b!180701 (= e!119047 (+!265 call!18270 (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248))))))

(declare-fun b!180702 () Bool)

(assert (=> b!180702 (= e!119047 e!119046)))

(assert (=> b!180702 (= c!32342 (and (not (= (bvand (extraKeys!3444 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3444 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!18270 () Bool)

(assert (=> bm!18270 (= call!18274 (getCurrentListMapNoExtraKeys!180 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248)))))

(declare-fun b!180703 () Bool)

(declare-fun Unit!5496 () Unit!5493)

(assert (=> b!180703 (= e!119044 Unit!5496)))

(declare-fun b!180704 () Bool)

(assert (=> b!180704 (= e!119048 e!119041)))

(declare-fun res!85600 () Bool)

(assert (=> b!180704 (=> (not res!85600) (not e!119041))))

(assert (=> b!180704 (= res!85600 (contains!1236 lt!89365 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!180704 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3930 (_keys!5601 thiss!1248))))))

(declare-fun bm!18271 () Bool)

(assert (=> bm!18271 (= call!18272 call!18270)))

(declare-fun bm!18272 () Bool)

(assert (=> bm!18272 (= call!18269 call!18275)))

(declare-fun b!180705 () Bool)

(assert (=> b!180705 (= e!119042 (validKeyInArray!0 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!54175 c!32340) b!180701))

(assert (= (and d!54175 (not c!32340)) b!180702))

(assert (= (and b!180702 c!32342) b!180695))

(assert (= (and b!180702 (not c!32342)) b!180685))

(assert (= (and b!180685 c!32344) b!180698))

(assert (= (and b!180685 (not c!32344)) b!180692))

(assert (= (or b!180698 b!180692) bm!18272))

(assert (= (or b!180695 bm!18272) bm!18267))

(assert (= (or b!180695 b!180698) bm!18271))

(assert (= (or b!180701 bm!18267) bm!18270))

(assert (= (or b!180701 bm!18271) bm!18269))

(assert (= (and d!54175 res!85598) b!180705))

(assert (= (and d!54175 c!32341) b!180693))

(assert (= (and d!54175 (not c!32341)) b!180703))

(assert (= (and d!54175 res!85595) b!180689))

(assert (= (and b!180689 res!85603) b!180699))

(assert (= (and b!180689 (not res!85602)) b!180704))

(assert (= (and b!180704 res!85600) b!180696))

(assert (= (and b!180689 res!85597) b!180694))

(assert (= (and b!180694 c!32339) b!180697))

(assert (= (and b!180694 (not c!32339)) b!180688))

(assert (= (and b!180697 res!85599) b!180691))

(assert (= (or b!180697 b!180688) bm!18268))

(assert (= (and b!180694 res!85601) b!180686))

(assert (= (and b!180686 c!32343) b!180700))

(assert (= (and b!180686 (not c!32343)) b!180687))

(assert (= (and b!180700 res!85596) b!180690))

(assert (= (or b!180700 b!180687) bm!18266))

(declare-fun b_lambda!7153 () Bool)

(assert (=> (not b_lambda!7153) (not b!180696)))

(declare-fun t!7180 () Bool)

(declare-fun tb!2819 () Bool)

(assert (=> (and b!180597 (= (defaultEntry!3707 thiss!1248) (defaultEntry!3707 thiss!1248)) t!7180) tb!2819))

(declare-fun result!4719 () Bool)

(assert (=> tb!2819 (= result!4719 tp_is_empty!4239)))

(assert (=> b!180696 t!7180))

(declare-fun b_and!11025 () Bool)

(assert (= b_and!11021 (and (=> t!7180 result!4719) b_and!11025)))

(assert (=> d!54175 m!208601))

(declare-fun m!208641 () Bool)

(assert (=> b!180693 m!208641))

(declare-fun m!208643 () Bool)

(assert (=> b!180693 m!208643))

(declare-fun m!208645 () Bool)

(assert (=> b!180693 m!208645))

(declare-fun m!208647 () Bool)

(assert (=> b!180693 m!208647))

(declare-fun m!208649 () Bool)

(assert (=> b!180693 m!208649))

(declare-fun m!208651 () Bool)

(assert (=> b!180693 m!208651))

(declare-fun m!208653 () Bool)

(assert (=> b!180693 m!208653))

(declare-fun m!208655 () Bool)

(assert (=> b!180693 m!208655))

(declare-fun m!208657 () Bool)

(assert (=> b!180693 m!208657))

(declare-fun m!208659 () Bool)

(assert (=> b!180693 m!208659))

(declare-fun m!208661 () Bool)

(assert (=> b!180693 m!208661))

(declare-fun m!208663 () Bool)

(assert (=> b!180693 m!208663))

(assert (=> b!180693 m!208647))

(declare-fun m!208665 () Bool)

(assert (=> b!180693 m!208665))

(assert (=> b!180693 m!208643))

(declare-fun m!208667 () Bool)

(assert (=> b!180693 m!208667))

(assert (=> b!180693 m!208651))

(declare-fun m!208669 () Bool)

(assert (=> b!180693 m!208669))

(assert (=> b!180693 m!208659))

(declare-fun m!208671 () Bool)

(assert (=> b!180693 m!208671))

(declare-fun m!208673 () Bool)

(assert (=> b!180693 m!208673))

(declare-fun m!208675 () Bool)

(assert (=> bm!18268 m!208675))

(assert (=> bm!18270 m!208655))

(declare-fun m!208677 () Bool)

(assert (=> b!180691 m!208677))

(declare-fun m!208679 () Bool)

(assert (=> b!180690 m!208679))

(declare-fun m!208681 () Bool)

(assert (=> b!180701 m!208681))

(assert (=> b!180696 m!208673))

(declare-fun m!208683 () Bool)

(assert (=> b!180696 m!208683))

(declare-fun m!208685 () Bool)

(assert (=> b!180696 m!208685))

(declare-fun m!208687 () Bool)

(assert (=> b!180696 m!208687))

(declare-fun m!208689 () Bool)

(assert (=> b!180696 m!208689))

(assert (=> b!180696 m!208687))

(assert (=> b!180696 m!208685))

(assert (=> b!180696 m!208673))

(assert (=> b!180704 m!208673))

(assert (=> b!180704 m!208673))

(declare-fun m!208691 () Bool)

(assert (=> b!180704 m!208691))

(declare-fun m!208693 () Bool)

(assert (=> bm!18266 m!208693))

(declare-fun m!208695 () Bool)

(assert (=> bm!18269 m!208695))

(assert (=> b!180699 m!208673))

(assert (=> b!180699 m!208673))

(declare-fun m!208697 () Bool)

(assert (=> b!180699 m!208697))

(assert (=> b!180705 m!208673))

(assert (=> b!180705 m!208673))

(assert (=> b!180705 m!208697))

(assert (=> b!180593 d!54175))

(declare-fun b!180720 () Bool)

(declare-fun e!119060 () SeekEntryResult!605)

(declare-fun lt!89385 () SeekEntryResult!605)

(assert (=> b!180720 (= e!119060 (MissingZero!605 (index!4592 lt!89385)))))

(declare-fun b!180721 () Bool)

(declare-fun c!32351 () Bool)

(declare-fun lt!89383 () (_ BitVec 64))

(assert (=> b!180721 (= c!32351 (= lt!89383 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!119058 () SeekEntryResult!605)

(assert (=> b!180721 (= e!119058 e!119060)))

(declare-fun b!180722 () Bool)

(declare-fun e!119059 () SeekEntryResult!605)

(assert (=> b!180722 (= e!119059 e!119058)))

(assert (=> b!180722 (= lt!89383 (select (arr!3622 (_keys!5601 thiss!1248)) (index!4592 lt!89385)))))

(declare-fun c!32353 () Bool)

(assert (=> b!180722 (= c!32353 (= lt!89383 key!828))))

(declare-fun d!54177 () Bool)

(declare-fun lt!89384 () SeekEntryResult!605)

(assert (=> d!54177 (and (or ((_ is Undefined!605) lt!89384) (not ((_ is Found!605) lt!89384)) (and (bvsge (index!4591 lt!89384) #b00000000000000000000000000000000) (bvslt (index!4591 lt!89384) (size!3930 (_keys!5601 thiss!1248))))) (or ((_ is Undefined!605) lt!89384) ((_ is Found!605) lt!89384) (not ((_ is MissingZero!605) lt!89384)) (and (bvsge (index!4590 lt!89384) #b00000000000000000000000000000000) (bvslt (index!4590 lt!89384) (size!3930 (_keys!5601 thiss!1248))))) (or ((_ is Undefined!605) lt!89384) ((_ is Found!605) lt!89384) ((_ is MissingZero!605) lt!89384) (not ((_ is MissingVacant!605) lt!89384)) (and (bvsge (index!4593 lt!89384) #b00000000000000000000000000000000) (bvslt (index!4593 lt!89384) (size!3930 (_keys!5601 thiss!1248))))) (or ((_ is Undefined!605) lt!89384) (ite ((_ is Found!605) lt!89384) (= (select (arr!3622 (_keys!5601 thiss!1248)) (index!4591 lt!89384)) key!828) (ite ((_ is MissingZero!605) lt!89384) (= (select (arr!3622 (_keys!5601 thiss!1248)) (index!4590 lt!89384)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!605) lt!89384) (= (select (arr!3622 (_keys!5601 thiss!1248)) (index!4593 lt!89384)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!54177 (= lt!89384 e!119059)))

(declare-fun c!32352 () Bool)

(assert (=> d!54177 (= c!32352 (and ((_ is Intermediate!605) lt!89385) (undefined!1417 lt!89385)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7652 (_ BitVec 32)) SeekEntryResult!605)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!54177 (= lt!89385 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8712 thiss!1248)) key!828 (_keys!5601 thiss!1248) (mask!8712 thiss!1248)))))

(assert (=> d!54177 (validMask!0 (mask!8712 thiss!1248))))

(assert (=> d!54177 (= (seekEntryOrOpen!0 key!828 (_keys!5601 thiss!1248) (mask!8712 thiss!1248)) lt!89384)))

(declare-fun b!180723 () Bool)

(assert (=> b!180723 (= e!119059 Undefined!605)))

(declare-fun b!180724 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7652 (_ BitVec 32)) SeekEntryResult!605)

(assert (=> b!180724 (= e!119060 (seekKeyOrZeroReturnVacant!0 (x!19757 lt!89385) (index!4592 lt!89385) (index!4592 lt!89385) key!828 (_keys!5601 thiss!1248) (mask!8712 thiss!1248)))))

(declare-fun b!180725 () Bool)

(assert (=> b!180725 (= e!119058 (Found!605 (index!4592 lt!89385)))))

(assert (= (and d!54177 c!32352) b!180723))

(assert (= (and d!54177 (not c!32352)) b!180722))

(assert (= (and b!180722 c!32353) b!180725))

(assert (= (and b!180722 (not c!32353)) b!180721))

(assert (= (and b!180721 c!32351) b!180720))

(assert (= (and b!180721 (not c!32351)) b!180724))

(declare-fun m!208699 () Bool)

(assert (=> b!180722 m!208699))

(assert (=> d!54177 m!208601))

(declare-fun m!208701 () Bool)

(assert (=> d!54177 m!208701))

(declare-fun m!208703 () Bool)

(assert (=> d!54177 m!208703))

(declare-fun m!208705 () Bool)

(assert (=> d!54177 m!208705))

(assert (=> d!54177 m!208703))

(declare-fun m!208707 () Bool)

(assert (=> d!54177 m!208707))

(declare-fun m!208709 () Bool)

(assert (=> d!54177 m!208709))

(declare-fun m!208711 () Bool)

(assert (=> b!180724 m!208711))

(assert (=> b!180592 d!54177))

(declare-fun mapNonEmpty!7267 () Bool)

(declare-fun mapRes!7267 () Bool)

(declare-fun tp!16150 () Bool)

(declare-fun e!119066 () Bool)

(assert (=> mapNonEmpty!7267 (= mapRes!7267 (and tp!16150 e!119066))))

(declare-fun mapValue!7267 () ValueCell!1776)

(declare-fun mapKey!7267 () (_ BitVec 32))

(declare-fun mapRest!7267 () (Array (_ BitVec 32) ValueCell!1776))

(assert (=> mapNonEmpty!7267 (= mapRest!7261 (store mapRest!7267 mapKey!7267 mapValue!7267))))

(declare-fun condMapEmpty!7267 () Bool)

(declare-fun mapDefault!7267 () ValueCell!1776)

(assert (=> mapNonEmpty!7261 (= condMapEmpty!7267 (= mapRest!7261 ((as const (Array (_ BitVec 32) ValueCell!1776)) mapDefault!7267)))))

(declare-fun e!119065 () Bool)

(assert (=> mapNonEmpty!7261 (= tp!16140 (and e!119065 mapRes!7267))))

(declare-fun b!180733 () Bool)

(assert (=> b!180733 (= e!119065 tp_is_empty!4239)))

(declare-fun b!180732 () Bool)

(assert (=> b!180732 (= e!119066 tp_is_empty!4239)))

(declare-fun mapIsEmpty!7267 () Bool)

(assert (=> mapIsEmpty!7267 mapRes!7267))

(assert (= (and mapNonEmpty!7261 condMapEmpty!7267) mapIsEmpty!7267))

(assert (= (and mapNonEmpty!7261 (not condMapEmpty!7267)) mapNonEmpty!7267))

(assert (= (and mapNonEmpty!7267 ((_ is ValueCellFull!1776) mapValue!7267)) b!180732))

(assert (= (and mapNonEmpty!7261 ((_ is ValueCellFull!1776) mapDefault!7267)) b!180733))

(declare-fun m!208713 () Bool)

(assert (=> mapNonEmpty!7267 m!208713))

(declare-fun b_lambda!7155 () Bool)

(assert (= b_lambda!7153 (or (and b!180597 b_free!4467) b_lambda!7155)))

(check-sat (not b!180631) (not d!54177) (not b!180642) (not d!54173) (not bm!18270) (not b_next!4467) (not b!180704) (not b!180699) (not b!180632) (not b!180633) (not b!180693) (not b!180724) (not b!180640) (not mapNonEmpty!7267) (not bm!18269) (not bm!18266) (not b!180701) (not d!54175) (not b_lambda!7155) tp_is_empty!4239 (not b!180690) b_and!11025 (not b!180696) (not b!180705) (not b!180691) (not d!54171) (not bm!18268))
(check-sat b_and!11025 (not b_next!4467))
(get-model)

(declare-fun d!54179 () Bool)

(declare-fun get!2069 (Option!212) V!5299)

(assert (=> d!54179 (= (apply!150 lt!89365 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2069 (getValueByKey!206 (toList!1166 lt!89365) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7381 () Bool)

(assert (= bs!7381 d!54179))

(declare-fun m!208715 () Bool)

(assert (=> bs!7381 m!208715))

(assert (=> bs!7381 m!208715))

(declare-fun m!208717 () Bool)

(assert (=> bs!7381 m!208717))

(assert (=> b!180691 d!54179))

(declare-fun d!54181 () Bool)

(assert (=> d!54181 (= (apply!150 lt!89365 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2069 (getValueByKey!206 (toList!1166 lt!89365) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7382 () Bool)

(assert (= bs!7382 d!54181))

(declare-fun m!208719 () Bool)

(assert (=> bs!7382 m!208719))

(assert (=> bs!7382 m!208719))

(declare-fun m!208721 () Bool)

(assert (=> bs!7382 m!208721))

(assert (=> b!180690 d!54181))

(declare-fun d!54183 () Bool)

(declare-fun isEmpty!460 (Option!212) Bool)

(assert (=> d!54183 (= (isDefined!160 (getValueByKey!206 (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248))) key!828)) (not (isEmpty!460 (getValueByKey!206 (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248))) key!828))))))

(declare-fun bs!7383 () Bool)

(assert (= bs!7383 d!54183))

(assert (=> bs!7383 m!208637))

(declare-fun m!208723 () Bool)

(assert (=> bs!7383 m!208723))

(assert (=> b!180642 d!54183))

(declare-fun b!180743 () Bool)

(declare-fun e!119071 () Option!212)

(declare-fun e!119072 () Option!212)

(assert (=> b!180743 (= e!119071 e!119072)))

(declare-fun c!32359 () Bool)

(assert (=> b!180743 (= c!32359 (and ((_ is Cons!2315) (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248)))) (not (= (_1!1695 (h!2940 (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248))))) key!828))))))

(declare-fun b!180742 () Bool)

(assert (=> b!180742 (= e!119071 (Some!211 (_2!1695 (h!2940 (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248)))))))))

(declare-fun b!180745 () Bool)

(assert (=> b!180745 (= e!119072 None!210)))

(declare-fun d!54185 () Bool)

(declare-fun c!32358 () Bool)

(assert (=> d!54185 (= c!32358 (and ((_ is Cons!2315) (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248)))) (= (_1!1695 (h!2940 (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248))))) key!828)))))

(assert (=> d!54185 (= (getValueByKey!206 (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248))) key!828) e!119071)))

(declare-fun b!180744 () Bool)

(assert (=> b!180744 (= e!119072 (getValueByKey!206 (t!7177 (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248)))) key!828))))

(assert (= (and d!54185 c!32358) b!180742))

(assert (= (and d!54185 (not c!32358)) b!180743))

(assert (= (and b!180743 c!32359) b!180744))

(assert (= (and b!180743 (not c!32359)) b!180745))

(declare-fun m!208725 () Bool)

(assert (=> b!180744 m!208725))

(assert (=> b!180642 d!54185))

(declare-fun d!54187 () Bool)

(assert (=> d!54187 (= (validKeyInArray!0 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!180699 d!54187))

(assert (=> d!54175 d!54169))

(declare-fun d!54189 () Bool)

(declare-fun e!119073 () Bool)

(assert (=> d!54189 e!119073))

(declare-fun res!85604 () Bool)

(assert (=> d!54189 (=> res!85604 e!119073)))

(declare-fun lt!89387 () Bool)

(assert (=> d!54189 (= res!85604 (not lt!89387))))

(declare-fun lt!89389 () Bool)

(assert (=> d!54189 (= lt!89387 lt!89389)))

(declare-fun lt!89388 () Unit!5493)

(declare-fun e!119074 () Unit!5493)

(assert (=> d!54189 (= lt!89388 e!119074)))

(declare-fun c!32360 () Bool)

(assert (=> d!54189 (= c!32360 lt!89389)))

(assert (=> d!54189 (= lt!89389 (containsKey!210 (toList!1166 lt!89365) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!54189 (= (contains!1236 lt!89365 #b0000000000000000000000000000000000000000000000000000000000000000) lt!89387)))

(declare-fun b!180746 () Bool)

(declare-fun lt!89386 () Unit!5493)

(assert (=> b!180746 (= e!119074 lt!89386)))

(assert (=> b!180746 (= lt!89386 (lemmaContainsKeyImpliesGetValueByKeyDefined!159 (toList!1166 lt!89365) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!180746 (isDefined!160 (getValueByKey!206 (toList!1166 lt!89365) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!180747 () Bool)

(declare-fun Unit!5497 () Unit!5493)

(assert (=> b!180747 (= e!119074 Unit!5497)))

(declare-fun b!180748 () Bool)

(assert (=> b!180748 (= e!119073 (isDefined!160 (getValueByKey!206 (toList!1166 lt!89365) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54189 c!32360) b!180746))

(assert (= (and d!54189 (not c!32360)) b!180747))

(assert (= (and d!54189 (not res!85604)) b!180748))

(declare-fun m!208727 () Bool)

(assert (=> d!54189 m!208727))

(declare-fun m!208729 () Bool)

(assert (=> b!180746 m!208729))

(assert (=> b!180746 m!208715))

(assert (=> b!180746 m!208715))

(declare-fun m!208731 () Bool)

(assert (=> b!180746 m!208731))

(assert (=> b!180748 m!208715))

(assert (=> b!180748 m!208715))

(assert (=> b!180748 m!208731))

(assert (=> bm!18268 d!54189))

(declare-fun b!180767 () Bool)

(declare-fun lt!89395 () SeekEntryResult!605)

(assert (=> b!180767 (and (bvsge (index!4592 lt!89395) #b00000000000000000000000000000000) (bvslt (index!4592 lt!89395) (size!3930 (_keys!5601 thiss!1248))))))

(declare-fun res!85613 () Bool)

(assert (=> b!180767 (= res!85613 (= (select (arr!3622 (_keys!5601 thiss!1248)) (index!4592 lt!89395)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!119089 () Bool)

(assert (=> b!180767 (=> res!85613 e!119089)))

(declare-fun b!180768 () Bool)

(assert (=> b!180768 (and (bvsge (index!4592 lt!89395) #b00000000000000000000000000000000) (bvslt (index!4592 lt!89395) (size!3930 (_keys!5601 thiss!1248))))))

(assert (=> b!180768 (= e!119089 (= (select (arr!3622 (_keys!5601 thiss!1248)) (index!4592 lt!89395)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!180769 () Bool)

(declare-fun e!119087 () Bool)

(assert (=> b!180769 (= e!119087 (bvsge (x!19757 lt!89395) #b01111111111111111111111111111110))))

(declare-fun b!180770 () Bool)

(assert (=> b!180770 (and (bvsge (index!4592 lt!89395) #b00000000000000000000000000000000) (bvslt (index!4592 lt!89395) (size!3930 (_keys!5601 thiss!1248))))))

(declare-fun res!85611 () Bool)

(assert (=> b!180770 (= res!85611 (= (select (arr!3622 (_keys!5601 thiss!1248)) (index!4592 lt!89395)) key!828))))

(assert (=> b!180770 (=> res!85611 e!119089)))

(declare-fun e!119086 () Bool)

(assert (=> b!180770 (= e!119086 e!119089)))

(declare-fun b!180771 () Bool)

(declare-fun e!119085 () SeekEntryResult!605)

(assert (=> b!180771 (= e!119085 (Intermediate!605 false (toIndex!0 key!828 (mask!8712 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!180772 () Bool)

(declare-fun e!119088 () SeekEntryResult!605)

(assert (=> b!180772 (= e!119088 (Intermediate!605 true (toIndex!0 key!828 (mask!8712 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!180773 () Bool)

(assert (=> b!180773 (= e!119087 e!119086)))

(declare-fun res!85612 () Bool)

(assert (=> b!180773 (= res!85612 (and ((_ is Intermediate!605) lt!89395) (not (undefined!1417 lt!89395)) (bvslt (x!19757 lt!89395) #b01111111111111111111111111111110) (bvsge (x!19757 lt!89395) #b00000000000000000000000000000000) (bvsge (x!19757 lt!89395) #b00000000000000000000000000000000)))))

(assert (=> b!180773 (=> (not res!85612) (not e!119086))))

(declare-fun d!54191 () Bool)

(assert (=> d!54191 e!119087))

(declare-fun c!32368 () Bool)

(assert (=> d!54191 (= c!32368 (and ((_ is Intermediate!605) lt!89395) (undefined!1417 lt!89395)))))

(assert (=> d!54191 (= lt!89395 e!119088)))

(declare-fun c!32367 () Bool)

(assert (=> d!54191 (= c!32367 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!89394 () (_ BitVec 64))

(assert (=> d!54191 (= lt!89394 (select (arr!3622 (_keys!5601 thiss!1248)) (toIndex!0 key!828 (mask!8712 thiss!1248))))))

(assert (=> d!54191 (validMask!0 (mask!8712 thiss!1248))))

(assert (=> d!54191 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8712 thiss!1248)) key!828 (_keys!5601 thiss!1248) (mask!8712 thiss!1248)) lt!89395)))

(declare-fun b!180774 () Bool)

(assert (=> b!180774 (= e!119088 e!119085)))

(declare-fun c!32369 () Bool)

(assert (=> b!180774 (= c!32369 (or (= lt!89394 key!828) (= (bvadd lt!89394 lt!89394) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!180775 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!180775 (= e!119085 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8712 thiss!1248)) #b00000000000000000000000000000000 (mask!8712 thiss!1248)) key!828 (_keys!5601 thiss!1248) (mask!8712 thiss!1248)))))

(assert (= (and d!54191 c!32367) b!180772))

(assert (= (and d!54191 (not c!32367)) b!180774))

(assert (= (and b!180774 c!32369) b!180771))

(assert (= (and b!180774 (not c!32369)) b!180775))

(assert (= (and d!54191 c!32368) b!180769))

(assert (= (and d!54191 (not c!32368)) b!180773))

(assert (= (and b!180773 res!85612) b!180770))

(assert (= (and b!180770 (not res!85611)) b!180767))

(assert (= (and b!180767 (not res!85613)) b!180768))

(declare-fun m!208733 () Bool)

(assert (=> b!180767 m!208733))

(assert (=> b!180775 m!208703))

(declare-fun m!208735 () Bool)

(assert (=> b!180775 m!208735))

(assert (=> b!180775 m!208735))

(declare-fun m!208737 () Bool)

(assert (=> b!180775 m!208737))

(assert (=> b!180768 m!208733))

(assert (=> d!54191 m!208703))

(declare-fun m!208739 () Bool)

(assert (=> d!54191 m!208739))

(assert (=> d!54191 m!208601))

(assert (=> b!180770 m!208733))

(assert (=> d!54177 d!54191))

(declare-fun d!54193 () Bool)

(declare-fun lt!89401 () (_ BitVec 32))

(declare-fun lt!89400 () (_ BitVec 32))

(assert (=> d!54193 (= lt!89401 (bvmul (bvxor lt!89400 (bvlshr lt!89400 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!54193 (= lt!89400 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!54193 (and (bvsge (mask!8712 thiss!1248) #b00000000000000000000000000000000) (let ((res!85614 (let ((h!2943 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!19774 (bvmul (bvxor h!2943 (bvlshr h!2943 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!19774 (bvlshr x!19774 #b00000000000000000000000000001101)) (mask!8712 thiss!1248)))))) (and (bvslt res!85614 (bvadd (mask!8712 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!85614 #b00000000000000000000000000000000))))))

(assert (=> d!54193 (= (toIndex!0 key!828 (mask!8712 thiss!1248)) (bvand (bvxor lt!89401 (bvlshr lt!89401 #b00000000000000000000000000001101)) (mask!8712 thiss!1248)))))

(assert (=> d!54177 d!54193))

(assert (=> d!54177 d!54169))

(declare-fun d!54195 () Bool)

(assert (=> d!54195 (isDefined!160 (getValueByKey!206 (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248))) key!828))))

(declare-fun lt!89404 () Unit!5493)

(declare-fun choose!966 (List!2319 (_ BitVec 64)) Unit!5493)

(assert (=> d!54195 (= lt!89404 (choose!966 (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248))) key!828))))

(declare-fun e!119092 () Bool)

(assert (=> d!54195 e!119092))

(declare-fun res!85617 () Bool)

(assert (=> d!54195 (=> (not res!85617) (not e!119092))))

(declare-fun isStrictlySorted!336 (List!2319) Bool)

(assert (=> d!54195 (= res!85617 (isStrictlySorted!336 (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248)))))))

(assert (=> d!54195 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!159 (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248))) key!828) lt!89404)))

(declare-fun b!180778 () Bool)

(assert (=> b!180778 (= e!119092 (containsKey!210 (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248))) key!828))))

(assert (= (and d!54195 res!85617) b!180778))

(assert (=> d!54195 m!208637))

(assert (=> d!54195 m!208637))

(assert (=> d!54195 m!208639))

(declare-fun m!208741 () Bool)

(assert (=> d!54195 m!208741))

(declare-fun m!208743 () Bool)

(assert (=> d!54195 m!208743))

(assert (=> b!180778 m!208633))

(assert (=> b!180640 d!54195))

(assert (=> b!180640 d!54183))

(assert (=> b!180640 d!54185))

(declare-fun b!180791 () Bool)

(declare-fun c!32376 () Bool)

(declare-fun lt!89410 () (_ BitVec 64))

(assert (=> b!180791 (= c!32376 (= lt!89410 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!119100 () SeekEntryResult!605)

(declare-fun e!119101 () SeekEntryResult!605)

(assert (=> b!180791 (= e!119100 e!119101)))

(declare-fun b!180792 () Bool)

(assert (=> b!180792 (= e!119101 (seekKeyOrZeroReturnVacant!0 (bvadd (x!19757 lt!89385) #b00000000000000000000000000000001) (nextIndex!0 (index!4592 lt!89385) (x!19757 lt!89385) (mask!8712 thiss!1248)) (index!4592 lt!89385) key!828 (_keys!5601 thiss!1248) (mask!8712 thiss!1248)))))

(declare-fun b!180793 () Bool)

(assert (=> b!180793 (= e!119100 (Found!605 (index!4592 lt!89385)))))

(declare-fun b!180794 () Bool)

(assert (=> b!180794 (= e!119101 (MissingVacant!605 (index!4592 lt!89385)))))

(declare-fun b!180795 () Bool)

(declare-fun e!119099 () SeekEntryResult!605)

(assert (=> b!180795 (= e!119099 e!119100)))

(declare-fun c!32378 () Bool)

(assert (=> b!180795 (= c!32378 (= lt!89410 key!828))))

(declare-fun b!180796 () Bool)

(assert (=> b!180796 (= e!119099 Undefined!605)))

(declare-fun lt!89409 () SeekEntryResult!605)

(declare-fun d!54197 () Bool)

(assert (=> d!54197 (and (or ((_ is Undefined!605) lt!89409) (not ((_ is Found!605) lt!89409)) (and (bvsge (index!4591 lt!89409) #b00000000000000000000000000000000) (bvslt (index!4591 lt!89409) (size!3930 (_keys!5601 thiss!1248))))) (or ((_ is Undefined!605) lt!89409) ((_ is Found!605) lt!89409) (not ((_ is MissingVacant!605) lt!89409)) (not (= (index!4593 lt!89409) (index!4592 lt!89385))) (and (bvsge (index!4593 lt!89409) #b00000000000000000000000000000000) (bvslt (index!4593 lt!89409) (size!3930 (_keys!5601 thiss!1248))))) (or ((_ is Undefined!605) lt!89409) (ite ((_ is Found!605) lt!89409) (= (select (arr!3622 (_keys!5601 thiss!1248)) (index!4591 lt!89409)) key!828) (and ((_ is MissingVacant!605) lt!89409) (= (index!4593 lt!89409) (index!4592 lt!89385)) (= (select (arr!3622 (_keys!5601 thiss!1248)) (index!4593 lt!89409)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!54197 (= lt!89409 e!119099)))

(declare-fun c!32377 () Bool)

(assert (=> d!54197 (= c!32377 (bvsge (x!19757 lt!89385) #b01111111111111111111111111111110))))

(assert (=> d!54197 (= lt!89410 (select (arr!3622 (_keys!5601 thiss!1248)) (index!4592 lt!89385)))))

(assert (=> d!54197 (validMask!0 (mask!8712 thiss!1248))))

(assert (=> d!54197 (= (seekKeyOrZeroReturnVacant!0 (x!19757 lt!89385) (index!4592 lt!89385) (index!4592 lt!89385) key!828 (_keys!5601 thiss!1248) (mask!8712 thiss!1248)) lt!89409)))

(assert (= (and d!54197 c!32377) b!180796))

(assert (= (and d!54197 (not c!32377)) b!180795))

(assert (= (and b!180795 c!32378) b!180793))

(assert (= (and b!180795 (not c!32378)) b!180791))

(assert (= (and b!180791 c!32376) b!180794))

(assert (= (and b!180791 (not c!32376)) b!180792))

(declare-fun m!208745 () Bool)

(assert (=> b!180792 m!208745))

(assert (=> b!180792 m!208745))

(declare-fun m!208747 () Bool)

(assert (=> b!180792 m!208747))

(declare-fun m!208749 () Bool)

(assert (=> d!54197 m!208749))

(declare-fun m!208751 () Bool)

(assert (=> d!54197 m!208751))

(assert (=> d!54197 m!208699))

(assert (=> d!54197 m!208601))

(assert (=> b!180724 d!54197))

(assert (=> b!180705 d!54187))

(declare-fun d!54199 () Bool)

(assert (=> d!54199 (= (apply!150 lt!89365 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000)) (get!2069 (getValueByKey!206 (toList!1166 lt!89365) (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7384 () Bool)

(assert (= bs!7384 d!54199))

(assert (=> bs!7384 m!208673))

(declare-fun m!208753 () Bool)

(assert (=> bs!7384 m!208753))

(assert (=> bs!7384 m!208753))

(declare-fun m!208755 () Bool)

(assert (=> bs!7384 m!208755))

(assert (=> b!180696 d!54199))

(declare-fun d!54201 () Bool)

(declare-fun c!32381 () Bool)

(assert (=> d!54201 (= c!32381 ((_ is ValueCellFull!1776) (select (arr!3623 (_values!3690 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!119104 () V!5299)

(assert (=> d!54201 (= (get!2068 (select (arr!3623 (_values!3690 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!488 (defaultEntry!3707 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!119104)))

(declare-fun b!180801 () Bool)

(declare-fun get!2070 (ValueCell!1776 V!5299) V!5299)

(assert (=> b!180801 (= e!119104 (get!2070 (select (arr!3623 (_values!3690 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!488 (defaultEntry!3707 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!180802 () Bool)

(declare-fun get!2071 (ValueCell!1776 V!5299) V!5299)

(assert (=> b!180802 (= e!119104 (get!2071 (select (arr!3623 (_values!3690 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!488 (defaultEntry!3707 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54201 c!32381) b!180801))

(assert (= (and d!54201 (not c!32381)) b!180802))

(assert (=> b!180801 m!208685))

(assert (=> b!180801 m!208687))

(declare-fun m!208757 () Bool)

(assert (=> b!180801 m!208757))

(assert (=> b!180802 m!208685))

(assert (=> b!180802 m!208687))

(declare-fun m!208759 () Bool)

(assert (=> b!180802 m!208759))

(assert (=> b!180696 d!54201))

(declare-fun d!54203 () Bool)

(declare-fun res!85625 () Bool)

(declare-fun e!119114 () Bool)

(assert (=> d!54203 (=> res!85625 e!119114)))

(assert (=> d!54203 (= res!85625 (bvsge #b00000000000000000000000000000000 (size!3930 (_keys!5601 thiss!1248))))))

(assert (=> d!54203 (= (arrayNoDuplicates!0 (_keys!5601 thiss!1248) #b00000000000000000000000000000000 Nil!2318) e!119114)))

(declare-fun bm!18275 () Bool)

(declare-fun call!18278 () Bool)

(declare-fun c!32384 () Bool)

(assert (=> bm!18275 (= call!18278 (arrayNoDuplicates!0 (_keys!5601 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!32384 (Cons!2317 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000) Nil!2318) Nil!2318)))))

(declare-fun b!180813 () Bool)

(declare-fun e!119113 () Bool)

(assert (=> b!180813 (= e!119113 call!18278)))

(declare-fun b!180814 () Bool)

(assert (=> b!180814 (= e!119113 call!18278)))

(declare-fun b!180815 () Bool)

(declare-fun e!119115 () Bool)

(declare-fun contains!1238 (List!2321 (_ BitVec 64)) Bool)

(assert (=> b!180815 (= e!119115 (contains!1238 Nil!2318 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!180816 () Bool)

(declare-fun e!119116 () Bool)

(assert (=> b!180816 (= e!119114 e!119116)))

(declare-fun res!85626 () Bool)

(assert (=> b!180816 (=> (not res!85626) (not e!119116))))

(assert (=> b!180816 (= res!85626 (not e!119115))))

(declare-fun res!85624 () Bool)

(assert (=> b!180816 (=> (not res!85624) (not e!119115))))

(assert (=> b!180816 (= res!85624 (validKeyInArray!0 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!180817 () Bool)

(assert (=> b!180817 (= e!119116 e!119113)))

(assert (=> b!180817 (= c!32384 (validKeyInArray!0 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!54203 (not res!85625)) b!180816))

(assert (= (and b!180816 res!85624) b!180815))

(assert (= (and b!180816 res!85626) b!180817))

(assert (= (and b!180817 c!32384) b!180814))

(assert (= (and b!180817 (not c!32384)) b!180813))

(assert (= (or b!180814 b!180813) bm!18275))

(assert (=> bm!18275 m!208673))

(declare-fun m!208761 () Bool)

(assert (=> bm!18275 m!208761))

(assert (=> b!180815 m!208673))

(assert (=> b!180815 m!208673))

(declare-fun m!208763 () Bool)

(assert (=> b!180815 m!208763))

(assert (=> b!180816 m!208673))

(assert (=> b!180816 m!208673))

(assert (=> b!180816 m!208697))

(assert (=> b!180817 m!208673))

(assert (=> b!180817 m!208673))

(assert (=> b!180817 m!208697))

(assert (=> b!180633 d!54203))

(declare-fun d!54205 () Bool)

(declare-fun res!85631 () Bool)

(declare-fun e!119121 () Bool)

(assert (=> d!54205 (=> res!85631 e!119121)))

(assert (=> d!54205 (= res!85631 (and ((_ is Cons!2315) (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248)))) (= (_1!1695 (h!2940 (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248))))) key!828)))))

(assert (=> d!54205 (= (containsKey!210 (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248))) key!828) e!119121)))

(declare-fun b!180822 () Bool)

(declare-fun e!119122 () Bool)

(assert (=> b!180822 (= e!119121 e!119122)))

(declare-fun res!85632 () Bool)

(assert (=> b!180822 (=> (not res!85632) (not e!119122))))

(assert (=> b!180822 (= res!85632 (and (or (not ((_ is Cons!2315) (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248))))) (bvsle (_1!1695 (h!2940 (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248))))) key!828)) ((_ is Cons!2315) (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248)))) (bvslt (_1!1695 (h!2940 (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248))))) key!828)))))

(declare-fun b!180823 () Bool)

(assert (=> b!180823 (= e!119122 (containsKey!210 (t!7177 (toList!1166 (getCurrentListMap!809 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248)))) key!828))))

(assert (= (and d!54205 (not res!85631)) b!180822))

(assert (= (and b!180822 res!85632) b!180823))

(declare-fun m!208765 () Bool)

(assert (=> b!180823 m!208765))

(assert (=> d!54173 d!54205))

(declare-fun d!54207 () Bool)

(declare-fun e!119123 () Bool)

(assert (=> d!54207 e!119123))

(declare-fun res!85633 () Bool)

(assert (=> d!54207 (=> res!85633 e!119123)))

(declare-fun lt!89412 () Bool)

(assert (=> d!54207 (= res!85633 (not lt!89412))))

(declare-fun lt!89414 () Bool)

(assert (=> d!54207 (= lt!89412 lt!89414)))

(declare-fun lt!89413 () Unit!5493)

(declare-fun e!119124 () Unit!5493)

(assert (=> d!54207 (= lt!89413 e!119124)))

(declare-fun c!32385 () Bool)

(assert (=> d!54207 (= c!32385 lt!89414)))

(assert (=> d!54207 (= lt!89414 (containsKey!210 (toList!1166 lt!89365) (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!54207 (= (contains!1236 lt!89365 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000)) lt!89412)))

(declare-fun b!180824 () Bool)

(declare-fun lt!89411 () Unit!5493)

(assert (=> b!180824 (= e!119124 lt!89411)))

(assert (=> b!180824 (= lt!89411 (lemmaContainsKeyImpliesGetValueByKeyDefined!159 (toList!1166 lt!89365) (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!180824 (isDefined!160 (getValueByKey!206 (toList!1166 lt!89365) (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!180825 () Bool)

(declare-fun Unit!5498 () Unit!5493)

(assert (=> b!180825 (= e!119124 Unit!5498)))

(declare-fun b!180826 () Bool)

(assert (=> b!180826 (= e!119123 (isDefined!160 (getValueByKey!206 (toList!1166 lt!89365) (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!54207 c!32385) b!180824))

(assert (= (and d!54207 (not c!32385)) b!180825))

(assert (= (and d!54207 (not res!85633)) b!180826))

(assert (=> d!54207 m!208673))

(declare-fun m!208767 () Bool)

(assert (=> d!54207 m!208767))

(assert (=> b!180824 m!208673))

(declare-fun m!208769 () Bool)

(assert (=> b!180824 m!208769))

(assert (=> b!180824 m!208673))

(assert (=> b!180824 m!208753))

(assert (=> b!180824 m!208753))

(declare-fun m!208771 () Bool)

(assert (=> b!180824 m!208771))

(assert (=> b!180826 m!208673))

(assert (=> b!180826 m!208753))

(assert (=> b!180826 m!208753))

(assert (=> b!180826 m!208771))

(assert (=> b!180704 d!54207))

(declare-fun b!180835 () Bool)

(declare-fun e!119131 () Bool)

(declare-fun e!119132 () Bool)

(assert (=> b!180835 (= e!119131 e!119132)))

(declare-fun lt!89422 () (_ BitVec 64))

(assert (=> b!180835 (= lt!89422 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!89421 () Unit!5493)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7652 (_ BitVec 64) (_ BitVec 32)) Unit!5493)

(assert (=> b!180835 (= lt!89421 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5601 thiss!1248) lt!89422 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7652 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!180835 (arrayContainsKey!0 (_keys!5601 thiss!1248) lt!89422 #b00000000000000000000000000000000)))

(declare-fun lt!89423 () Unit!5493)

(assert (=> b!180835 (= lt!89423 lt!89421)))

(declare-fun res!85639 () Bool)

(assert (=> b!180835 (= res!85639 (= (seekEntryOrOpen!0 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000) (_keys!5601 thiss!1248) (mask!8712 thiss!1248)) (Found!605 #b00000000000000000000000000000000)))))

(assert (=> b!180835 (=> (not res!85639) (not e!119132))))

(declare-fun b!180836 () Bool)

(declare-fun e!119133 () Bool)

(assert (=> b!180836 (= e!119133 e!119131)))

(declare-fun c!32388 () Bool)

(assert (=> b!180836 (= c!32388 (validKeyInArray!0 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!54209 () Bool)

(declare-fun res!85638 () Bool)

(assert (=> d!54209 (=> res!85638 e!119133)))

(assert (=> d!54209 (= res!85638 (bvsge #b00000000000000000000000000000000 (size!3930 (_keys!5601 thiss!1248))))))

(assert (=> d!54209 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5601 thiss!1248) (mask!8712 thiss!1248)) e!119133)))

(declare-fun b!180837 () Bool)

(declare-fun call!18281 () Bool)

(assert (=> b!180837 (= e!119132 call!18281)))

(declare-fun bm!18278 () Bool)

(assert (=> bm!18278 (= call!18281 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5601 thiss!1248) (mask!8712 thiss!1248)))))

(declare-fun b!180838 () Bool)

(assert (=> b!180838 (= e!119131 call!18281)))

(assert (= (and d!54209 (not res!85638)) b!180836))

(assert (= (and b!180836 c!32388) b!180835))

(assert (= (and b!180836 (not c!32388)) b!180838))

(assert (= (and b!180835 res!85639) b!180837))

(assert (= (or b!180837 b!180838) bm!18278))

(assert (=> b!180835 m!208673))

(declare-fun m!208773 () Bool)

(assert (=> b!180835 m!208773))

(declare-fun m!208775 () Bool)

(assert (=> b!180835 m!208775))

(assert (=> b!180835 m!208673))

(declare-fun m!208777 () Bool)

(assert (=> b!180835 m!208777))

(assert (=> b!180836 m!208673))

(assert (=> b!180836 m!208673))

(assert (=> b!180836 m!208697))

(declare-fun m!208779 () Bool)

(assert (=> bm!18278 m!208779))

(assert (=> b!180632 d!54209))

(declare-fun d!54211 () Bool)

(declare-fun e!119134 () Bool)

(assert (=> d!54211 e!119134))

(declare-fun res!85640 () Bool)

(assert (=> d!54211 (=> res!85640 e!119134)))

(declare-fun lt!89425 () Bool)

(assert (=> d!54211 (= res!85640 (not lt!89425))))

(declare-fun lt!89427 () Bool)

(assert (=> d!54211 (= lt!89425 lt!89427)))

(declare-fun lt!89426 () Unit!5493)

(declare-fun e!119135 () Unit!5493)

(assert (=> d!54211 (= lt!89426 e!119135)))

(declare-fun c!32389 () Bool)

(assert (=> d!54211 (= c!32389 lt!89427)))

(assert (=> d!54211 (= lt!89427 (containsKey!210 (toList!1166 lt!89365) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!54211 (= (contains!1236 lt!89365 #b1000000000000000000000000000000000000000000000000000000000000000) lt!89425)))

(declare-fun b!180839 () Bool)

(declare-fun lt!89424 () Unit!5493)

(assert (=> b!180839 (= e!119135 lt!89424)))

(assert (=> b!180839 (= lt!89424 (lemmaContainsKeyImpliesGetValueByKeyDefined!159 (toList!1166 lt!89365) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!180839 (isDefined!160 (getValueByKey!206 (toList!1166 lt!89365) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!180840 () Bool)

(declare-fun Unit!5499 () Unit!5493)

(assert (=> b!180840 (= e!119135 Unit!5499)))

(declare-fun b!180841 () Bool)

(assert (=> b!180841 (= e!119134 (isDefined!160 (getValueByKey!206 (toList!1166 lt!89365) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54211 c!32389) b!180839))

(assert (= (and d!54211 (not c!32389)) b!180840))

(assert (= (and d!54211 (not res!85640)) b!180841))

(declare-fun m!208781 () Bool)

(assert (=> d!54211 m!208781))

(declare-fun m!208783 () Bool)

(assert (=> b!180839 m!208783))

(assert (=> b!180839 m!208719))

(assert (=> b!180839 m!208719))

(declare-fun m!208785 () Bool)

(assert (=> b!180839 m!208785))

(assert (=> b!180841 m!208719))

(assert (=> b!180841 m!208719))

(assert (=> b!180841 m!208785))

(assert (=> bm!18266 d!54211))

(declare-fun bm!18281 () Bool)

(declare-fun call!18284 () (_ BitVec 32))

(assert (=> bm!18281 (= call!18284 (arrayCountValidKeys!0 (_keys!5601 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3930 (_keys!5601 thiss!1248))))))

(declare-fun d!54213 () Bool)

(declare-fun lt!89430 () (_ BitVec 32))

(assert (=> d!54213 (and (bvsge lt!89430 #b00000000000000000000000000000000) (bvsle lt!89430 (bvsub (size!3930 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!119140 () (_ BitVec 32))

(assert (=> d!54213 (= lt!89430 e!119140)))

(declare-fun c!32394 () Bool)

(assert (=> d!54213 (= c!32394 (bvsge #b00000000000000000000000000000000 (size!3930 (_keys!5601 thiss!1248))))))

(assert (=> d!54213 (and (bvsle #b00000000000000000000000000000000 (size!3930 (_keys!5601 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3930 (_keys!5601 thiss!1248)) (size!3930 (_keys!5601 thiss!1248))))))

(assert (=> d!54213 (= (arrayCountValidKeys!0 (_keys!5601 thiss!1248) #b00000000000000000000000000000000 (size!3930 (_keys!5601 thiss!1248))) lt!89430)))

(declare-fun b!180850 () Bool)

(declare-fun e!119141 () (_ BitVec 32))

(assert (=> b!180850 (= e!119141 (bvadd #b00000000000000000000000000000001 call!18284))))

(declare-fun b!180851 () Bool)

(assert (=> b!180851 (= e!119140 e!119141)))

(declare-fun c!32395 () Bool)

(assert (=> b!180851 (= c!32395 (validKeyInArray!0 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!180852 () Bool)

(assert (=> b!180852 (= e!119140 #b00000000000000000000000000000000)))

(declare-fun b!180853 () Bool)

(assert (=> b!180853 (= e!119141 call!18284)))

(assert (= (and d!54213 c!32394) b!180852))

(assert (= (and d!54213 (not c!32394)) b!180851))

(assert (= (and b!180851 c!32395) b!180850))

(assert (= (and b!180851 (not c!32395)) b!180853))

(assert (= (or b!180850 b!180853) bm!18281))

(declare-fun m!208787 () Bool)

(assert (=> bm!18281 m!208787))

(assert (=> b!180851 m!208673))

(assert (=> b!180851 m!208673))

(assert (=> b!180851 m!208697))

(assert (=> b!180631 d!54213))

(declare-fun d!54215 () Bool)

(assert (=> d!54215 (= (apply!150 (+!265 lt!89364 (tuple2!3371 lt!89366 (minValue!3548 thiss!1248))) lt!89373) (get!2069 (getValueByKey!206 (toList!1166 (+!265 lt!89364 (tuple2!3371 lt!89366 (minValue!3548 thiss!1248)))) lt!89373)))))

(declare-fun bs!7385 () Bool)

(assert (= bs!7385 d!54215))

(declare-fun m!208789 () Bool)

(assert (=> bs!7385 m!208789))

(assert (=> bs!7385 m!208789))

(declare-fun m!208791 () Bool)

(assert (=> bs!7385 m!208791))

(assert (=> b!180693 d!54215))

(declare-fun b!180878 () Bool)

(declare-fun e!119161 () ListLongMap!2301)

(assert (=> b!180878 (= e!119161 (ListLongMap!2302 Nil!2316))))

(declare-fun bm!18284 () Bool)

(declare-fun call!18287 () ListLongMap!2301)

(assert (=> bm!18284 (= call!18287 (getCurrentListMapNoExtraKeys!180 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3707 thiss!1248)))))

(declare-fun b!180879 () Bool)

(declare-fun res!85651 () Bool)

(declare-fun e!119156 () Bool)

(assert (=> b!180879 (=> (not res!85651) (not e!119156))))

(declare-fun lt!89447 () ListLongMap!2301)

(assert (=> b!180879 (= res!85651 (not (contains!1236 lt!89447 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!180880 () Bool)

(declare-fun e!119159 () Bool)

(declare-fun e!119160 () Bool)

(assert (=> b!180880 (= e!119159 e!119160)))

(assert (=> b!180880 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3930 (_keys!5601 thiss!1248))))))

(declare-fun res!85652 () Bool)

(assert (=> b!180880 (= res!85652 (contains!1236 lt!89447 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!180880 (=> (not res!85652) (not e!119160))))

(declare-fun b!180881 () Bool)

(declare-fun e!119158 () ListLongMap!2301)

(assert (=> b!180881 (= e!119161 e!119158)))

(declare-fun c!32404 () Bool)

(assert (=> b!180881 (= c!32404 (validKeyInArray!0 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!180882 () Bool)

(declare-fun e!119162 () Bool)

(declare-fun isEmpty!461 (ListLongMap!2301) Bool)

(assert (=> b!180882 (= e!119162 (isEmpty!461 lt!89447))))

(declare-fun b!180883 () Bool)

(assert (=> b!180883 (= e!119158 call!18287)))

(declare-fun b!180884 () Bool)

(assert (=> b!180884 (= e!119156 e!119159)))

(declare-fun c!32405 () Bool)

(declare-fun e!119157 () Bool)

(assert (=> b!180884 (= c!32405 e!119157)))

(declare-fun res!85650 () Bool)

(assert (=> b!180884 (=> (not res!85650) (not e!119157))))

(assert (=> b!180884 (= res!85650 (bvslt #b00000000000000000000000000000000 (size!3930 (_keys!5601 thiss!1248))))))

(declare-fun b!180885 () Bool)

(declare-fun lt!89445 () Unit!5493)

(declare-fun lt!89446 () Unit!5493)

(assert (=> b!180885 (= lt!89445 lt!89446)))

(declare-fun lt!89450 () (_ BitVec 64))

(declare-fun lt!89448 () V!5299)

(declare-fun lt!89451 () ListLongMap!2301)

(declare-fun lt!89449 () (_ BitVec 64))

(assert (=> b!180885 (not (contains!1236 (+!265 lt!89451 (tuple2!3371 lt!89449 lt!89448)) lt!89450))))

(declare-fun addStillNotContains!83 (ListLongMap!2301 (_ BitVec 64) V!5299 (_ BitVec 64)) Unit!5493)

(assert (=> b!180885 (= lt!89446 (addStillNotContains!83 lt!89451 lt!89449 lt!89448 lt!89450))))

(assert (=> b!180885 (= lt!89450 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!180885 (= lt!89448 (get!2068 (select (arr!3623 (_values!3690 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!488 (defaultEntry!3707 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!180885 (= lt!89449 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!180885 (= lt!89451 call!18287)))

(assert (=> b!180885 (= e!119158 (+!265 call!18287 (tuple2!3371 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000) (get!2068 (select (arr!3623 (_values!3690 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!488 (defaultEntry!3707 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!54217 () Bool)

(assert (=> d!54217 e!119156))

(declare-fun res!85649 () Bool)

(assert (=> d!54217 (=> (not res!85649) (not e!119156))))

(assert (=> d!54217 (= res!85649 (not (contains!1236 lt!89447 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!54217 (= lt!89447 e!119161)))

(declare-fun c!32407 () Bool)

(assert (=> d!54217 (= c!32407 (bvsge #b00000000000000000000000000000000 (size!3930 (_keys!5601 thiss!1248))))))

(assert (=> d!54217 (validMask!0 (mask!8712 thiss!1248))))

(assert (=> d!54217 (= (getCurrentListMapNoExtraKeys!180 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3707 thiss!1248)) lt!89447)))

(declare-fun b!180886 () Bool)

(assert (=> b!180886 (= e!119159 e!119162)))

(declare-fun c!32406 () Bool)

(assert (=> b!180886 (= c!32406 (bvslt #b00000000000000000000000000000000 (size!3930 (_keys!5601 thiss!1248))))))

(declare-fun b!180887 () Bool)

(assert (=> b!180887 (= e!119162 (= lt!89447 (getCurrentListMapNoExtraKeys!180 (_keys!5601 thiss!1248) (_values!3690 thiss!1248) (mask!8712 thiss!1248) (extraKeys!3444 thiss!1248) (zeroValue!3548 thiss!1248) (minValue!3548 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3707 thiss!1248))))))

(declare-fun b!180888 () Bool)

(assert (=> b!180888 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3930 (_keys!5601 thiss!1248))))))

(assert (=> b!180888 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3931 (_values!3690 thiss!1248))))))

(assert (=> b!180888 (= e!119160 (= (apply!150 lt!89447 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000)) (get!2068 (select (arr!3623 (_values!3690 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!488 (defaultEntry!3707 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!180889 () Bool)

(assert (=> b!180889 (= e!119157 (validKeyInArray!0 (select (arr!3622 (_keys!5601 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!180889 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!54217 c!32407) b!180878))

(assert (= (and d!54217 (not c!32407)) b!180881))

(assert (= (and b!180881 c!32404) b!180885))

(assert (= (and b!180881 (not c!32404)) b!180883))

(assert (= (or b!180885 b!180883) bm!18284))

(assert (= (and d!54217 res!85649) b!180879))

(assert (= (and b!180879 res!85651) b!180884))

(assert (= (and b!180884 res!85650) b!180889))

(assert (= (and b!180884 c!32405) b!180880))

(assert (= (and b!180884 (not c!32405)) b!180886))

(assert (= (and b!180880 res!85652) b!180888))

(assert (= (and b!180886 c!32406) b!180887))

(assert (= (and b!180886 (not c!32406)) b!180882))

(declare-fun b_lambda!7157 () Bool)

(assert (=> (not b_lambda!7157) (not b!180885)))

(assert (=> b!180885 t!7180))

(declare-fun b_and!11027 () Bool)

(assert (= b_and!11025 (and (=> t!7180 result!4719) b_and!11027)))

(declare-fun b_lambda!7159 () Bool)

(assert (=> (not b_lambda!7159) (not b!180888)))

(assert (=> b!180888 t!7180))

(declare-fun b_and!11029 () Bool)

(assert (= b_and!11027 (and (=> t!7180 result!4719) b_and!11029)))

(declare-fun m!208793 () Bool)

(assert (=> b!180882 m!208793))

(declare-fun m!208795 () Bool)

(assert (=> b!180879 m!208795))

(assert (=> b!180880 m!208673))

(assert (=> b!180880 m!208673))

(declare-fun m!208797 () Bool)

(assert (=> b!180880 m!208797))

(assert (=> b!180888 m!208685))

(assert (=> b!180888 m!208687))

(assert (=> b!180888 m!208689))

(assert (=> b!180888 m!208673))

(declare-fun m!208799 () Bool)

(assert (=> b!180888 m!208799))

(assert (=> b!180888 m!208685))

(assert (=> b!180888 m!208687))

(assert (=> b!180888 m!208673))

(declare-fun m!208801 () Bool)

(assert (=> b!180887 m!208801))

(declare-fun m!208803 () Bool)

(assert (=> d!54217 m!208803))

(assert (=> d!54217 m!208601))

(declare-fun m!208805 () Bool)

(assert (=> b!180885 m!208805))

(assert (=> b!180885 m!208805))

(declare-fun m!208807 () Bool)

(assert (=> b!180885 m!208807))

(assert (=> b!180885 m!208685))

(assert (=> b!180885 m!208687))

(assert (=> b!180885 m!208689))

(assert (=> b!180885 m!208685))

(declare-fun m!208809 () Bool)

(assert (=> b!180885 m!208809))

(declare-fun m!208811 () Bool)

(assert (=> b!180885 m!208811))

(assert (=> b!180885 m!208687))

(assert (=> b!180885 m!208673))

(assert (=> b!180881 m!208673))

(assert (=> b!180881 m!208673))

(assert (=> b!180881 m!208697))

(assert (=> b!180889 m!208673))

(assert (=> b!180889 m!208673))

(assert (=> b!180889 m!208697))

(assert (=> bm!18284 m!208801))

(assert (=> b!180693 d!54217))

(declare-fun d!54219 () Bool)

(assert (=> d!54219 (contains!1236 (+!265 lt!89374 (tuple2!3371 lt!89358 (zeroValue!3548 thiss!1248))) lt!89362)))

(declare-fun lt!89454 () Unit!5493)

(declare-fun choose!967 (ListLongMap!2301 (_ BitVec 64) V!5299 (_ BitVec 64)) Unit!5493)

(assert (=> d!54219 (= lt!89454 (choose!967 lt!89374 lt!89358 (zeroValue!3548 thiss!1248) lt!89362))))

(assert (=> d!54219 (contains!1236 lt!89374 lt!89362)))

(assert (=> d!54219 (= (addStillContains!126 lt!89374 lt!89358 (zeroValue!3548 thiss!1248) lt!89362) lt!89454)))

(declare-fun bs!7386 () Bool)

(assert (= bs!7386 d!54219))

(assert (=> bs!7386 m!208643))

(assert (=> bs!7386 m!208643))

(assert (=> bs!7386 m!208667))

(declare-fun m!208813 () Bool)

(assert (=> bs!7386 m!208813))

(declare-fun m!208815 () Bool)

(assert (=> bs!7386 m!208815))

(assert (=> b!180693 d!54219))

(declare-fun d!54221 () Bool)

(assert (=> d!54221 (= (apply!150 (+!265 lt!89371 (tuple2!3371 lt!89363 (zeroValue!3548 thiss!1248))) lt!89370) (apply!150 lt!89371 lt!89370))))

(declare-fun lt!89457 () Unit!5493)

(declare-fun choose!968 (ListLongMap!2301 (_ BitVec 64) V!5299 (_ BitVec 64)) Unit!5493)

(assert (=> d!54221 (= lt!89457 (choose!968 lt!89371 lt!89363 (zeroValue!3548 thiss!1248) lt!89370))))

(declare-fun e!119165 () Bool)

(assert (=> d!54221 e!119165))

(declare-fun res!85655 () Bool)

(assert (=> d!54221 (=> (not res!85655) (not e!119165))))

(assert (=> d!54221 (= res!85655 (contains!1236 lt!89371 lt!89370))))

(assert (=> d!54221 (= (addApplyDifferent!126 lt!89371 lt!89363 (zeroValue!3548 thiss!1248) lt!89370) lt!89457)))

(declare-fun b!180894 () Bool)

(assert (=> b!180894 (= e!119165 (not (= lt!89370 lt!89363)))))

(assert (= (and d!54221 res!85655) b!180894))

(declare-fun m!208817 () Bool)

(assert (=> d!54221 m!208817))

(declare-fun m!208819 () Bool)

(assert (=> d!54221 m!208819))

(assert (=> d!54221 m!208641))

(assert (=> d!54221 m!208659))

(assert (=> d!54221 m!208659))

(assert (=> d!54221 m!208671))

(assert (=> b!180693 d!54221))

(declare-fun d!54223 () Bool)

(assert (=> d!54223 (= (apply!150 (+!265 lt!89356 (tuple2!3371 lt!89361 (minValue!3548 thiss!1248))) lt!89368) (apply!150 lt!89356 lt!89368))))

(declare-fun lt!89458 () Unit!5493)

(assert (=> d!54223 (= lt!89458 (choose!968 lt!89356 lt!89361 (minValue!3548 thiss!1248) lt!89368))))

(declare-fun e!119166 () Bool)

(assert (=> d!54223 e!119166))

(declare-fun res!85656 () Bool)

(assert (=> d!54223 (=> (not res!85656) (not e!119166))))

(assert (=> d!54223 (= res!85656 (contains!1236 lt!89356 lt!89368))))

(assert (=> d!54223 (= (addApplyDifferent!126 lt!89356 lt!89361 (minValue!3548 thiss!1248) lt!89368) lt!89458)))

(declare-fun b!180895 () Bool)

(assert (=> b!180895 (= e!119166 (not (= lt!89368 lt!89361)))))

(assert (= (and d!54223 res!85656) b!180895))

(declare-fun m!208821 () Bool)

(assert (=> d!54223 m!208821))

(declare-fun m!208823 () Bool)

(assert (=> d!54223 m!208823))

(assert (=> d!54223 m!208669))

(assert (=> d!54223 m!208647))

(assert (=> d!54223 m!208647))

(assert (=> d!54223 m!208649))

(assert (=> b!180693 d!54223))

(declare-fun d!54225 () Bool)

(declare-fun e!119169 () Bool)

(assert (=> d!54225 e!119169))

(declare-fun res!85661 () Bool)

(assert (=> d!54225 (=> (not res!85661) (not e!119169))))

(declare-fun lt!89469 () ListLongMap!2301)

(assert (=> d!54225 (= res!85661 (contains!1236 lt!89469 (_1!1695 (tuple2!3371 lt!89361 (minValue!3548 thiss!1248)))))))

(declare-fun lt!89467 () List!2319)

(assert (=> d!54225 (= lt!89469 (ListLongMap!2302 lt!89467))))

(declare-fun lt!89468 () Unit!5493)

(declare-fun lt!89470 () Unit!5493)

(assert (=> d!54225 (= lt!89468 lt!89470)))

(assert (=> d!54225 (= (getValueByKey!206 lt!89467 (_1!1695 (tuple2!3371 lt!89361 (minValue!3548 thiss!1248)))) (Some!211 (_2!1695 (tuple2!3371 lt!89361 (minValue!3548 thiss!1248)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!110 (List!2319 (_ BitVec 64) V!5299) Unit!5493)

(assert (=> d!54225 (= lt!89470 (lemmaContainsTupThenGetReturnValue!110 lt!89467 (_1!1695 (tuple2!3371 lt!89361 (minValue!3548 thiss!1248))) (_2!1695 (tuple2!3371 lt!89361 (minValue!3548 thiss!1248)))))))

(declare-fun insertStrictlySorted!112 (List!2319 (_ BitVec 64) V!5299) List!2319)

(assert (=> d!54225 (= lt!89467 (insertStrictlySorted!112 (toList!1166 lt!89356) (_1!1695 (tuple2!3371 lt!89361 (minValue!3548 thiss!1248))) (_2!1695 (tuple2!3371 lt!89361 (minValue!3548 thiss!1248)))))))

(assert (=> d!54225 (= (+!265 lt!89356 (tuple2!3371 lt!89361 (minValue!3548 thiss!1248))) lt!89469)))

(declare-fun b!180900 () Bool)

(declare-fun res!85662 () Bool)

(assert (=> b!180900 (=> (not res!85662) (not e!119169))))

(assert (=> b!180900 (= res!85662 (= (getValueByKey!206 (toList!1166 lt!89469) (_1!1695 (tuple2!3371 lt!89361 (minValue!3548 thiss!1248)))) (Some!211 (_2!1695 (tuple2!3371 lt!89361 (minValue!3548 thiss!1248))))))))

(declare-fun b!180901 () Bool)

(declare-fun contains!1239 (List!2319 tuple2!3370) Bool)

(assert (=> b!180901 (= e!119169 (contains!1239 (toList!1166 lt!89469) (tuple2!3371 lt!89361 (minValue!3548 thiss!1248))))))

(assert (= (and d!54225 res!85661) b!180900))

(assert (= (and b!180900 res!85662) b!180901))

(declare-fun m!208825 () Bool)

(assert (=> d!54225 m!208825))

(declare-fun m!208827 () Bool)

(assert (=> d!54225 m!208827))

(declare-fun m!208829 () Bool)

(assert (=> d!54225 m!208829))

(declare-fun m!208831 () Bool)

(assert (=> d!54225 m!208831))

(declare-fun m!208833 () Bool)

(assert (=> b!180900 m!208833))

(declare-fun m!208835 () Bool)

(assert (=> b!180901 m!208835))

(assert (=> b!180693 d!54225))

(declare-fun d!54227 () Bool)

(declare-fun e!119170 () Bool)

(assert (=> d!54227 e!119170))

(declare-fun res!85663 () Bool)

(assert (=> d!54227 (=> (not res!85663) (not e!119170))))

(declare-fun lt!89473 () ListLongMap!2301)

(assert (=> d!54227 (= res!85663 (contains!1236 lt!89473 (_1!1695 (tuple2!3371 lt!89363 (zeroValue!3548 thiss!1248)))))))

(declare-fun lt!89471 () List!2319)

(assert (=> d!54227 (= lt!89473 (ListLongMap!2302 lt!89471))))

(declare-fun lt!89472 () Unit!5493)

(declare-fun lt!89474 () Unit!5493)

(assert (=> d!54227 (= lt!89472 lt!89474)))

(assert (=> d!54227 (= (getValueByKey!206 lt!89471 (_1!1695 (tuple2!3371 lt!89363 (zeroValue!3548 thiss!1248)))) (Some!211 (_2!1695 (tuple2!3371 lt!89363 (zeroValue!3548 thiss!1248)))))))

(assert (=> d!54227 (= lt!89474 (lemmaContainsTupThenGetReturnValue!110 lt!89471 (_1!1695 (tuple2!3371 lt!89363 (zeroValue!3548 thiss!1248))) (_2!1695 (tuple2!3371 lt!89363 (zeroValue!3548 thiss!1248)))))))

(assert (=> d!54227 (= lt!89471 (insertStrictlySorted!112 (toList!1166 lt!89371) (_1!1695 (tuple2!3371 lt!89363 (zeroValue!3548 thiss!1248))) (_2!1695 (tuple2!3371 lt!89363 (zeroValue!3548 thiss!1248)))))))

(assert (=> d!54227 (= (+!265 lt!89371 (tuple2!3371 lt!89363 (zeroValue!3548 thiss!1248))) lt!89473)))

(declare-fun b!180902 () Bool)

(declare-fun res!85664 () Bool)

(assert (=> b!180902 (=> (not res!85664) (not e!119170))))

(assert (=> b!180902 (= res!85664 (= (getValueByKey!206 (toList!1166 lt!89473) (_1!1695 (tuple2!3371 lt!89363 (zeroValue!3548 thiss!1248)))) (Some!211 (_2!1695 (tuple2!3371 lt!89363 (zeroValue!3548 thiss!1248))))))))

(declare-fun b!180903 () Bool)

(assert (=> b!180903 (= e!119170 (contains!1239 (toList!1166 lt!89473) (tuple2!3371 lt!89363 (zeroValue!3548 thiss!1248))))))

(assert (= (and d!54227 res!85663) b!180902))

(assert (= (and b!180902 res!85664) b!180903))

(declare-fun m!208837 () Bool)

(assert (=> d!54227 m!208837))

(declare-fun m!208839 () Bool)

(assert (=> d!54227 m!208839))

(declare-fun m!208841 () Bool)

(assert (=> d!54227 m!208841))

(declare-fun m!208843 () Bool)

(assert (=> d!54227 m!208843))

(declare-fun m!208845 () Bool)

(assert (=> b!180902 m!208845))

(declare-fun m!208847 () Bool)

(assert (=> b!180903 m!208847))

(assert (=> b!180693 d!54227))

(declare-fun d!54229 () Bool)

(declare-fun e!119171 () Bool)

(assert (=> d!54229 e!119171))

(declare-fun res!85665 () Bool)

(assert (=> d!54229 (=> res!85665 e!119171)))

(declare-fun lt!89476 () Bool)

(assert (=> d!54229 (= res!85665 (not lt!89476))))

(declare-fun lt!89478 () Bool)

(assert (=> d!54229 (= lt!89476 lt!89478)))

(declare-fun lt!89477 () Unit!5493)

(declare-fun e!119172 () Unit!5493)

(assert (=> d!54229 (= lt!89477 e!119172)))

(declare-fun c!32408 () Bool)

(assert (=> d!54229 (= c!32408 lt!89478)))

(assert (=> d!54229 (= lt!89478 (containsKey!210 (toList!1166 (+!265 lt!89374 (tuple2!3371 lt!89358 (zeroValue!3548 thiss!1248)))) lt!89362))))

(assert (=> d!54229 (= (contains!1236 (+!265 lt!89374 (tuple2!3371 lt!89358 (zeroValue!3548 thiss!1248))) lt!89362) lt!89476)))

(declare-fun b!180904 () Bool)

(declare-fun lt!89475 () Unit!5493)

(assert (=> b!180904 (= e!119172 lt!89475)))

(assert (=> b!180904 (= lt!89475 (lemmaContainsKeyImpliesGetValueByKeyDefined!159 (toList!1166 (+!265 lt!89374 (tuple2!3371 lt!89358 (zeroValue!3548 thiss!1248)))) lt!89362))))

(assert (=> b!180904 (isDefined!160 (getValueByKey!206 (toList!1166 (+!265 lt!89374 (tuple2!3371 lt!89358 (zeroValue!3548 thiss!1248)))) lt!89362))))

(declare-fun b!180905 () Bool)

(declare-fun Unit!5500 () Unit!5493)

(assert (=> b!180905 (= e!119172 Unit!5500)))

(declare-fun b!180906 () Bool)

(assert (=> b!180906 (= e!119171 (isDefined!160 (getValueByKey!206 (toList!1166 (+!265 lt!89374 (tuple2!3371 lt!89358 (zeroValue!3548 thiss!1248)))) lt!89362)))))

(assert (= (and d!54229 c!32408) b!180904))

(assert (= (and d!54229 (not c!32408)) b!180905))

(assert (= (and d!54229 (not res!85665)) b!180906))

(declare-fun m!208849 () Bool)

(assert (=> d!54229 m!208849))

(declare-fun m!208851 () Bool)

(assert (=> b!180904 m!208851))

(declare-fun m!208853 () Bool)

(assert (=> b!180904 m!208853))

(assert (=> b!180904 m!208853))

(declare-fun m!208855 () Bool)

(assert (=> b!180904 m!208855))

(assert (=> b!180906 m!208853))

(assert (=> b!180906 m!208853))

(assert (=> b!180906 m!208855))

(assert (=> b!180693 d!54229))

(declare-fun d!54231 () Bool)

(assert (=> d!54231 (= (apply!150 lt!89371 lt!89370) (get!2069 (getValueByKey!206 (toList!1166 lt!89371) lt!89370)))))

(declare-fun bs!7387 () Bool)

(assert (= bs!7387 d!54231))

(declare-fun m!208857 () Bool)

(assert (=> bs!7387 m!208857))

(assert (=> bs!7387 m!208857))

(declare-fun m!208859 () Bool)

(assert (=> bs!7387 m!208859))

(assert (=> b!180693 d!54231))

(declare-fun d!54233 () Bool)

(assert (=> d!54233 (= (apply!150 lt!89364 lt!89373) (get!2069 (getValueByKey!206 (toList!1166 lt!89364) lt!89373)))))

(declare-fun bs!7388 () Bool)

(assert (= bs!7388 d!54233))

(declare-fun m!208861 () Bool)

(assert (=> bs!7388 m!208861))

(assert (=> bs!7388 m!208861))

(declare-fun m!208863 () Bool)

(assert (=> bs!7388 m!208863))

(assert (=> b!180693 d!54233))

(declare-fun d!54235 () Bool)

(declare-fun e!119173 () Bool)

(assert (=> d!54235 e!119173))

(declare-fun res!85666 () Bool)

(assert (=> d!54235 (=> (not res!85666) (not e!119173))))

(declare-fun lt!89481 () ListLongMap!2301)

(assert (=> d!54235 (= res!85666 (contains!1236 lt!89481 (_1!1695 (tuple2!3371 lt!89366 (minValue!3548 thiss!1248)))))))

(declare-fun lt!89479 () List!2319)

(assert (=> d!54235 (= lt!89481 (ListLongMap!2302 lt!89479))))

(declare-fun lt!89480 () Unit!5493)

(declare-fun lt!89482 () Unit!5493)

(assert (=> d!54235 (= lt!89480 lt!89482)))

(assert (=> d!54235 (= (getValueByKey!206 lt!89479 (_1!1695 (tuple2!3371 lt!89366 (minValue!3548 thiss!1248)))) (Some!211 (_2!1695 (tuple2!3371 lt!89366 (minValue!3548 thiss!1248)))))))

(assert (=> d!54235 (= lt!89482 (lemmaContainsTupThenGetReturnValue!110 lt!89479 (_1!1695 (tuple2!3371 lt!89366 (minValue!3548 thiss!1248))) (_2!1695 (tuple2!3371 lt!89366 (minValue!3548 thiss!1248)))))))

(assert (=> d!54235 (= lt!89479 (insertStrictlySorted!112 (toList!1166 lt!89364) (_1!1695 (tuple2!3371 lt!89366 (minValue!3548 thiss!1248))) (_2!1695 (tuple2!3371 lt!89366 (minValue!3548 thiss!1248)))))))

(assert (=> d!54235 (= (+!265 lt!89364 (tuple2!3371 lt!89366 (minValue!3548 thiss!1248))) lt!89481)))

(declare-fun b!180907 () Bool)

(declare-fun res!85667 () Bool)

(assert (=> b!180907 (=> (not res!85667) (not e!119173))))

(assert (=> b!180907 (= res!85667 (= (getValueByKey!206 (toList!1166 lt!89481) (_1!1695 (tuple2!3371 lt!89366 (minValue!3548 thiss!1248)))) (Some!211 (_2!1695 (tuple2!3371 lt!89366 (minValue!3548 thiss!1248))))))))

(declare-fun b!180908 () Bool)

(assert (=> b!180908 (= e!119173 (contains!1239 (toList!1166 lt!89481) (tuple2!3371 lt!89366 (minValue!3548 thiss!1248))))))

(assert (= (and d!54235 res!85666) b!180907))

(assert (= (and b!180907 res!85667) b!180908))

(declare-fun m!208865 () Bool)

(assert (=> d!54235 m!208865))

(declare-fun m!208867 () Bool)

(assert (=> d!54235 m!208867))

(declare-fun m!208869 () Bool)

(assert (=> d!54235 m!208869))

(declare-fun m!208871 () Bool)

(assert (=> d!54235 m!208871))

(declare-fun m!208873 () Bool)

(assert (=> b!180907 m!208873))

(declare-fun m!208875 () Bool)

(assert (=> b!180908 m!208875))

(assert (=> b!180693 d!54235))

(declare-fun d!54237 () Bool)

(assert (=> d!54237 (= (apply!150 (+!265 lt!89356 (tuple2!3371 lt!89361 (minValue!3548 thiss!1248))) lt!89368) (get!2069 (getValueByKey!206 (toList!1166 (+!265 lt!89356 (tuple2!3371 lt!89361 (minValue!3548 thiss!1248)))) lt!89368)))))

(declare-fun bs!7389 () Bool)

(assert (= bs!7389 d!54237))

(declare-fun m!208877 () Bool)

(assert (=> bs!7389 m!208877))

(assert (=> bs!7389 m!208877))

(declare-fun m!208879 () Bool)

(assert (=> bs!7389 m!208879))

(assert (=> b!180693 d!54237))

(declare-fun d!54239 () Bool)

(assert (=> d!54239 (= (apply!150 (+!265 lt!89364 (tuple2!3371 lt!89366 (minValue!3548 thiss!1248))) lt!89373) (apply!150 lt!89364 lt!89373))))

(declare-fun lt!89483 () Unit!5493)

(assert (=> d!54239 (= lt!89483 (choose!968 lt!89364 lt!89366 (minValue!3548 thiss!1248) lt!89373))))

(declare-fun e!119174 () Bool)

(assert (=> d!54239 e!119174))

(declare-fun res!85668 () Bool)

(assert (=> d!54239 (=> (not res!85668) (not e!119174))))

(assert (=> d!54239 (= res!85668 (contains!1236 lt!89364 lt!89373))))

(assert (=> d!54239 (= (addApplyDifferent!126 lt!89364 lt!89366 (minValue!3548 thiss!1248) lt!89373) lt!89483)))

(declare-fun b!180909 () Bool)

(assert (=> b!180909 (= e!119174 (not (= lt!89373 lt!89366)))))

(assert (= (and d!54239 res!85668) b!180909))

(declare-fun m!208881 () Bool)

(assert (=> d!54239 m!208881))

(declare-fun m!208883 () Bool)

(assert (=> d!54239 m!208883))

(assert (=> d!54239 m!208661))

(assert (=> d!54239 m!208651))

(assert (=> d!54239 m!208651))

(assert (=> d!54239 m!208653))

(assert (=> b!180693 d!54239))

(declare-fun d!54241 () Bool)

(declare-fun e!119175 () Bool)

(assert (=> d!54241 e!119175))

(declare-fun res!85669 () Bool)

(assert (=> d!54241 (=> (not res!85669) (not e!119175))))

(declare-fun lt!89486 () ListLongMap!2301)

(assert (=> d!54241 (= res!85669 (contains!1236 lt!89486 (_1!1695 (tuple2!3371 lt!89358 (zeroValue!3548 thiss!1248)))))))

(declare-fun lt!89484 () List!2319)

(assert (=> d!54241 (= lt!89486 (ListLongMap!2302 lt!89484))))

(declare-fun lt!89485 () Unit!5493)

(declare-fun lt!89487 () Unit!5493)

(assert (=> d!54241 (= lt!89485 lt!89487)))

(assert (=> d!54241 (= (getValueByKey!206 lt!89484 (_1!1695 (tuple2!3371 lt!89358 (zeroValue!3548 thiss!1248)))) (Some!211 (_2!1695 (tuple2!3371 lt!89358 (zeroValue!3548 thiss!1248)))))))

(assert (=> d!54241 (= lt!89487 (lemmaContainsTupThenGetReturnValue!110 lt!89484 (_1!1695 (tuple2!3371 lt!89358 (zeroValue!3548 thiss!1248))) (_2!1695 (tuple2!3371 lt!89358 (zeroValue!3548 thiss!1248)))))))

(assert (=> d!54241 (= lt!89484 (insertStrictlySorted!112 (toList!1166 lt!89374) (_1!1695 (tuple2!3371 lt!89358 (zeroValue!3548 thiss!1248))) (_2!1695 (tuple2!3371 lt!89358 (zeroValue!3548 thiss!1248)))))))

(assert (=> d!54241 (= (+!265 lt!89374 (tuple2!3371 lt!89358 (zeroValue!3548 thiss!1248))) lt!89486)))

(declare-fun b!180910 () Bool)

(declare-fun res!85670 () Bool)

(assert (=> b!180910 (=> (not res!85670) (not e!119175))))

(assert (=> b!180910 (= res!85670 (= (getValueByKey!206 (toList!1166 lt!89486) (_1!1695 (tuple2!3371 lt!89358 (zeroValue!3548 thiss!1248)))) (Some!211 (_2!1695 (tuple2!3371 lt!89358 (zeroValue!3548 thiss!1248))))))))

(declare-fun b!180911 () Bool)

(assert (=> b!180911 (= e!119175 (contains!1239 (toList!1166 lt!89486) (tuple2!3371 lt!89358 (zeroValue!3548 thiss!1248))))))

(assert (= (and d!54241 res!85669) b!180910))

(assert (= (and b!180910 res!85670) b!180911))

(declare-fun m!208885 () Bool)

(assert (=> d!54241 m!208885))

(declare-fun m!208887 () Bool)

(assert (=> d!54241 m!208887))

(declare-fun m!208889 () Bool)

(assert (=> d!54241 m!208889))

(declare-fun m!208891 () Bool)

(assert (=> d!54241 m!208891))

(declare-fun m!208893 () Bool)

(assert (=> b!180910 m!208893))

(declare-fun m!208895 () Bool)

(assert (=> b!180911 m!208895))

(assert (=> b!180693 d!54241))

(declare-fun d!54243 () Bool)

(assert (=> d!54243 (= (apply!150 lt!89356 lt!89368) (get!2069 (getValueByKey!206 (toList!1166 lt!89356) lt!89368)))))

(declare-fun bs!7390 () Bool)

(assert (= bs!7390 d!54243))

(declare-fun m!208897 () Bool)

(assert (=> bs!7390 m!208897))

(assert (=> bs!7390 m!208897))

(declare-fun m!208899 () Bool)

(assert (=> bs!7390 m!208899))

(assert (=> b!180693 d!54243))

(declare-fun d!54245 () Bool)

(assert (=> d!54245 (= (apply!150 (+!265 lt!89371 (tuple2!3371 lt!89363 (zeroValue!3548 thiss!1248))) lt!89370) (get!2069 (getValueByKey!206 (toList!1166 (+!265 lt!89371 (tuple2!3371 lt!89363 (zeroValue!3548 thiss!1248)))) lt!89370)))))

(declare-fun bs!7391 () Bool)

(assert (= bs!7391 d!54245))

(declare-fun m!208901 () Bool)

(assert (=> bs!7391 m!208901))

(assert (=> bs!7391 m!208901))

(declare-fun m!208903 () Bool)

(assert (=> bs!7391 m!208903))

(assert (=> b!180693 d!54245))

(declare-fun b!180920 () Bool)

(declare-fun res!85679 () Bool)

(declare-fun e!119178 () Bool)

(assert (=> b!180920 (=> (not res!85679) (not e!119178))))

(assert (=> b!180920 (= res!85679 (and (= (size!3931 (_values!3690 thiss!1248)) (bvadd (mask!8712 thiss!1248) #b00000000000000000000000000000001)) (= (size!3930 (_keys!5601 thiss!1248)) (size!3931 (_values!3690 thiss!1248))) (bvsge (_size!1279 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1279 thiss!1248) (bvadd (mask!8712 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!180921 () Bool)

(declare-fun res!85681 () Bool)

(assert (=> b!180921 (=> (not res!85681) (not e!119178))))

(declare-fun size!3934 (LongMapFixedSize!2460) (_ BitVec 32))

(assert (=> b!180921 (= res!85681 (bvsge (size!3934 thiss!1248) (_size!1279 thiss!1248)))))

(declare-fun d!54247 () Bool)

(declare-fun res!85682 () Bool)

(assert (=> d!54247 (=> (not res!85682) (not e!119178))))

(assert (=> d!54247 (= res!85682 (validMask!0 (mask!8712 thiss!1248)))))

(assert (=> d!54247 (= (simpleValid!165 thiss!1248) e!119178)))

(declare-fun b!180923 () Bool)

(assert (=> b!180923 (= e!119178 (and (bvsge (extraKeys!3444 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3444 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1279 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!180922 () Bool)

(declare-fun res!85680 () Bool)

(assert (=> b!180922 (=> (not res!85680) (not e!119178))))

(assert (=> b!180922 (= res!85680 (= (size!3934 thiss!1248) (bvadd (_size!1279 thiss!1248) (bvsdiv (bvadd (extraKeys!3444 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!54247 res!85682) b!180920))

(assert (= (and b!180920 res!85679) b!180921))

(assert (= (and b!180921 res!85681) b!180922))

(assert (= (and b!180922 res!85680) b!180923))

(declare-fun m!208905 () Bool)

(assert (=> b!180921 m!208905))

(assert (=> d!54247 m!208601))

(assert (=> b!180922 m!208905))

(assert (=> d!54171 d!54247))

(assert (=> bm!18270 d!54217))

(declare-fun d!54249 () Bool)

(declare-fun e!119179 () Bool)

(assert (=> d!54249 e!119179))

(declare-fun res!85683 () Bool)

(assert (=> d!54249 (=> (not res!85683) (not e!119179))))

(declare-fun lt!89490 () ListLongMap!2301)

(assert (=> d!54249 (= res!85683 (contains!1236 lt!89490 (_1!1695 (ite (or c!32340 c!32342) (tuple2!3371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3548 thiss!1248)) (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248))))))))

(declare-fun lt!89488 () List!2319)

(assert (=> d!54249 (= lt!89490 (ListLongMap!2302 lt!89488))))

(declare-fun lt!89489 () Unit!5493)

(declare-fun lt!89491 () Unit!5493)

(assert (=> d!54249 (= lt!89489 lt!89491)))

(assert (=> d!54249 (= (getValueByKey!206 lt!89488 (_1!1695 (ite (or c!32340 c!32342) (tuple2!3371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3548 thiss!1248)) (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248))))) (Some!211 (_2!1695 (ite (or c!32340 c!32342) (tuple2!3371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3548 thiss!1248)) (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248))))))))

(assert (=> d!54249 (= lt!89491 (lemmaContainsTupThenGetReturnValue!110 lt!89488 (_1!1695 (ite (or c!32340 c!32342) (tuple2!3371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3548 thiss!1248)) (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248)))) (_2!1695 (ite (or c!32340 c!32342) (tuple2!3371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3548 thiss!1248)) (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248))))))))

(assert (=> d!54249 (= lt!89488 (insertStrictlySorted!112 (toList!1166 (ite c!32340 call!18274 (ite c!32342 call!18275 call!18269))) (_1!1695 (ite (or c!32340 c!32342) (tuple2!3371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3548 thiss!1248)) (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248)))) (_2!1695 (ite (or c!32340 c!32342) (tuple2!3371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3548 thiss!1248)) (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248))))))))

(assert (=> d!54249 (= (+!265 (ite c!32340 call!18274 (ite c!32342 call!18275 call!18269)) (ite (or c!32340 c!32342) (tuple2!3371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3548 thiss!1248)) (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248)))) lt!89490)))

(declare-fun b!180924 () Bool)

(declare-fun res!85684 () Bool)

(assert (=> b!180924 (=> (not res!85684) (not e!119179))))

(assert (=> b!180924 (= res!85684 (= (getValueByKey!206 (toList!1166 lt!89490) (_1!1695 (ite (or c!32340 c!32342) (tuple2!3371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3548 thiss!1248)) (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248))))) (Some!211 (_2!1695 (ite (or c!32340 c!32342) (tuple2!3371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3548 thiss!1248)) (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248)))))))))

(declare-fun b!180925 () Bool)

(assert (=> b!180925 (= e!119179 (contains!1239 (toList!1166 lt!89490) (ite (or c!32340 c!32342) (tuple2!3371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3548 thiss!1248)) (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248)))))))

(assert (= (and d!54249 res!85683) b!180924))

(assert (= (and b!180924 res!85684) b!180925))

(declare-fun m!208907 () Bool)

(assert (=> d!54249 m!208907))

(declare-fun m!208909 () Bool)

(assert (=> d!54249 m!208909))

(declare-fun m!208911 () Bool)

(assert (=> d!54249 m!208911))

(declare-fun m!208913 () Bool)

(assert (=> d!54249 m!208913))

(declare-fun m!208915 () Bool)

(assert (=> b!180924 m!208915))

(declare-fun m!208917 () Bool)

(assert (=> b!180925 m!208917))

(assert (=> bm!18269 d!54249))

(declare-fun d!54251 () Bool)

(declare-fun e!119180 () Bool)

(assert (=> d!54251 e!119180))

(declare-fun res!85685 () Bool)

(assert (=> d!54251 (=> (not res!85685) (not e!119180))))

(declare-fun lt!89494 () ListLongMap!2301)

(assert (=> d!54251 (= res!85685 (contains!1236 lt!89494 (_1!1695 (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248)))))))

(declare-fun lt!89492 () List!2319)

(assert (=> d!54251 (= lt!89494 (ListLongMap!2302 lt!89492))))

(declare-fun lt!89493 () Unit!5493)

(declare-fun lt!89495 () Unit!5493)

(assert (=> d!54251 (= lt!89493 lt!89495)))

(assert (=> d!54251 (= (getValueByKey!206 lt!89492 (_1!1695 (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248)))) (Some!211 (_2!1695 (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248)))))))

(assert (=> d!54251 (= lt!89495 (lemmaContainsTupThenGetReturnValue!110 lt!89492 (_1!1695 (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248))) (_2!1695 (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248)))))))

(assert (=> d!54251 (= lt!89492 (insertStrictlySorted!112 (toList!1166 call!18270) (_1!1695 (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248))) (_2!1695 (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248)))))))

(assert (=> d!54251 (= (+!265 call!18270 (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248))) lt!89494)))

(declare-fun b!180926 () Bool)

(declare-fun res!85686 () Bool)

(assert (=> b!180926 (=> (not res!85686) (not e!119180))))

(assert (=> b!180926 (= res!85686 (= (getValueByKey!206 (toList!1166 lt!89494) (_1!1695 (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248)))) (Some!211 (_2!1695 (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248))))))))

(declare-fun b!180927 () Bool)

(assert (=> b!180927 (= e!119180 (contains!1239 (toList!1166 lt!89494) (tuple2!3371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3548 thiss!1248))))))

(assert (= (and d!54251 res!85685) b!180926))

(assert (= (and b!180926 res!85686) b!180927))

(declare-fun m!208919 () Bool)

(assert (=> d!54251 m!208919))

(declare-fun m!208921 () Bool)

(assert (=> d!54251 m!208921))

(declare-fun m!208923 () Bool)

(assert (=> d!54251 m!208923))

(declare-fun m!208925 () Bool)

(assert (=> d!54251 m!208925))

(declare-fun m!208927 () Bool)

(assert (=> b!180926 m!208927))

(declare-fun m!208929 () Bool)

(assert (=> b!180927 m!208929))

(assert (=> b!180701 d!54251))

(declare-fun mapNonEmpty!7268 () Bool)

(declare-fun mapRes!7268 () Bool)

(declare-fun tp!16151 () Bool)

(declare-fun e!119182 () Bool)

(assert (=> mapNonEmpty!7268 (= mapRes!7268 (and tp!16151 e!119182))))

(declare-fun mapRest!7268 () (Array (_ BitVec 32) ValueCell!1776))

(declare-fun mapKey!7268 () (_ BitVec 32))

(declare-fun mapValue!7268 () ValueCell!1776)

(assert (=> mapNonEmpty!7268 (= mapRest!7267 (store mapRest!7268 mapKey!7268 mapValue!7268))))

(declare-fun condMapEmpty!7268 () Bool)

(declare-fun mapDefault!7268 () ValueCell!1776)

(assert (=> mapNonEmpty!7267 (= condMapEmpty!7268 (= mapRest!7267 ((as const (Array (_ BitVec 32) ValueCell!1776)) mapDefault!7268)))))

(declare-fun e!119181 () Bool)

(assert (=> mapNonEmpty!7267 (= tp!16150 (and e!119181 mapRes!7268))))

(declare-fun b!180929 () Bool)

(assert (=> b!180929 (= e!119181 tp_is_empty!4239)))

(declare-fun b!180928 () Bool)

(assert (=> b!180928 (= e!119182 tp_is_empty!4239)))

(declare-fun mapIsEmpty!7268 () Bool)

(assert (=> mapIsEmpty!7268 mapRes!7268))

(assert (= (and mapNonEmpty!7267 condMapEmpty!7268) mapIsEmpty!7268))

(assert (= (and mapNonEmpty!7267 (not condMapEmpty!7268)) mapNonEmpty!7268))

(assert (= (and mapNonEmpty!7268 ((_ is ValueCellFull!1776) mapValue!7268)) b!180928))

(assert (= (and mapNonEmpty!7267 ((_ is ValueCellFull!1776) mapDefault!7268)) b!180929))

(declare-fun m!208931 () Bool)

(assert (=> mapNonEmpty!7268 m!208931))

(declare-fun b_lambda!7161 () Bool)

(assert (= b_lambda!7159 (or (and b!180597 b_free!4467) b_lambda!7161)))

(declare-fun b_lambda!7163 () Bool)

(assert (= b_lambda!7157 (or (and b!180597 b_free!4467) b_lambda!7163)))

(check-sat (not d!54215) (not b!180910) (not b!180908) (not b!180888) (not b!180911) (not b!180922) (not b!180851) (not b!180889) (not b!180907) (not d!54199) (not b!180906) (not d!54237) (not bm!18284) (not d!54221) (not b!180792) (not b!180925) (not b!180903) (not b!180904) (not b!180816) (not b!180835) (not b!180826) (not b!180900) (not b!180880) (not b!180881) (not b!180921) (not b!180748) (not b_lambda!7163) (not bm!18275) (not d!54183) (not b!180902) (not b!180841) (not b!180744) (not bm!18278) (not b!180879) (not b!180839) (not d!54243) (not d!54179) (not b!180836) (not b_next!4467) (not d!54231) (not b_lambda!7155) (not b!180824) tp_is_empty!4239 (not d!54195) (not d!54245) (not d!54219) b_and!11029 (not b!180801) (not b!180926) (not b!180802) (not d!54223) (not d!54207) (not b!180817) (not b!180823) (not b!180924) (not d!54241) (not d!54181) (not d!54233) (not d!54247) (not d!54235) (not d!54227) (not b!180775) (not d!54211) (not d!54189) (not b!180746) (not b!180887) (not bm!18281) (not d!54249) (not d!54239) (not b!180885) (not b_lambda!7161) (not mapNonEmpty!7268) (not b!180778) (not d!54217) (not d!54191) (not b!180927) (not d!54251) (not b!180901) (not d!54225) (not d!54197) (not b!180882) (not b!180815) (not d!54229))
(check-sat b_and!11029 (not b_next!4467))

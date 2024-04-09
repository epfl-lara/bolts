; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22864 () Bool)

(assert start!22864)

(declare-fun b!238051 () Bool)

(declare-fun b_free!6393 () Bool)

(declare-fun b_next!6393 () Bool)

(assert (=> b!238051 (= b_free!6393 (not b_next!6393))))

(declare-fun tp!22377 () Bool)

(declare-fun b_and!13373 () Bool)

(assert (=> b!238051 (= tp!22377 b_and!13373)))

(declare-fun mapIsEmpty!10608 () Bool)

(declare-fun mapRes!10608 () Bool)

(assert (=> mapIsEmpty!10608 mapRes!10608))

(declare-fun b!238042 () Bool)

(declare-fun e!154575 () Bool)

(declare-fun e!154580 () Bool)

(assert (=> b!238042 (= e!154575 (and e!154580 mapRes!10608))))

(declare-fun condMapEmpty!10608 () Bool)

(declare-datatypes ((V!7987 0))(
  ( (V!7988 (val!3172 Int)) )
))
(declare-datatypes ((ValueCell!2784 0))(
  ( (ValueCellFull!2784 (v!5204 V!7987)) (EmptyCell!2784) )
))
(declare-datatypes ((array!11784 0))(
  ( (array!11785 (arr!5595 (Array (_ BitVec 32) ValueCell!2784)) (size!5936 (_ BitVec 32))) )
))
(declare-datatypes ((array!11786 0))(
  ( (array!11787 (arr!5596 (Array (_ BitVec 32) (_ BitVec 64))) (size!5937 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3468 0))(
  ( (LongMapFixedSize!3469 (defaultEntry!4417 Int) (mask!10443 (_ BitVec 32)) (extraKeys!4154 (_ BitVec 32)) (zeroValue!4258 V!7987) (minValue!4258 V!7987) (_size!1783 (_ BitVec 32)) (_keys!6515 array!11786) (_values!4400 array!11784) (_vacant!1783 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3468)

(declare-fun mapDefault!10608 () ValueCell!2784)

(assert (=> b!238042 (= condMapEmpty!10608 (= (arr!5595 (_values!4400 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2784)) mapDefault!10608)))))

(declare-fun b!238043 () Bool)

(declare-fun res!116661 () Bool)

(declare-fun e!154574 () Bool)

(assert (=> b!238043 (=> (not res!116661) (not e!154574))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11786 (_ BitVec 32)) Bool)

(assert (=> b!238043 (= res!116661 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6515 thiss!1504) (mask!10443 thiss!1504)))))

(declare-fun mapNonEmpty!10608 () Bool)

(declare-fun tp!22376 () Bool)

(declare-fun e!154579 () Bool)

(assert (=> mapNonEmpty!10608 (= mapRes!10608 (and tp!22376 e!154579))))

(declare-fun mapRest!10608 () (Array (_ BitVec 32) ValueCell!2784))

(declare-fun mapKey!10608 () (_ BitVec 32))

(declare-fun mapValue!10608 () ValueCell!2784)

(assert (=> mapNonEmpty!10608 (= (arr!5595 (_values!4400 thiss!1504)) (store mapRest!10608 mapKey!10608 mapValue!10608))))

(declare-fun b!238044 () Bool)

(declare-datatypes ((List!3593 0))(
  ( (Nil!3590) (Cons!3589 (h!4245 (_ BitVec 64)) (t!8592 List!3593)) )
))
(declare-fun arrayNoDuplicates!0 (array!11786 (_ BitVec 32) List!3593) Bool)

(assert (=> b!238044 (= e!154574 (not (arrayNoDuplicates!0 (_keys!6515 thiss!1504) #b00000000000000000000000000000000 Nil!3590)))))

(declare-fun b!238045 () Bool)

(declare-fun e!154577 () Bool)

(assert (=> b!238045 (= e!154577 e!154574)))

(declare-fun res!116662 () Bool)

(assert (=> b!238045 (=> (not res!116662) (not e!154574))))

(declare-datatypes ((SeekEntryResult!1023 0))(
  ( (MissingZero!1023 (index!6262 (_ BitVec 32))) (Found!1023 (index!6263 (_ BitVec 32))) (Intermediate!1023 (undefined!1835 Bool) (index!6264 (_ BitVec 32)) (x!24019 (_ BitVec 32))) (Undefined!1023) (MissingVacant!1023 (index!6265 (_ BitVec 32))) )
))
(declare-fun lt!120421 () SeekEntryResult!1023)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!238045 (= res!116662 (or (= lt!120421 (MissingZero!1023 index!297)) (= lt!120421 (MissingVacant!1023 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11786 (_ BitVec 32)) SeekEntryResult!1023)

(assert (=> b!238045 (= lt!120421 (seekEntryOrOpen!0 key!932 (_keys!6515 thiss!1504) (mask!10443 thiss!1504)))))

(declare-fun b!238046 () Bool)

(declare-fun res!116665 () Bool)

(assert (=> b!238046 (=> (not res!116665) (not e!154574))))

(assert (=> b!238046 (= res!116665 (and (= (size!5936 (_values!4400 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10443 thiss!1504))) (= (size!5937 (_keys!6515 thiss!1504)) (size!5936 (_values!4400 thiss!1504))) (bvsge (mask!10443 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4154 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4154 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!238047 () Bool)

(declare-fun tp_is_empty!6255 () Bool)

(assert (=> b!238047 (= e!154579 tp_is_empty!6255)))

(declare-fun b!238048 () Bool)

(declare-fun res!116663 () Bool)

(assert (=> b!238048 (=> (not res!116663) (not e!154574))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!238048 (= res!116663 (validMask!0 (mask!10443 thiss!1504)))))

(declare-fun b!238049 () Bool)

(declare-fun res!116666 () Bool)

(assert (=> b!238049 (=> (not res!116666) (not e!154577))))

(assert (=> b!238049 (= res!116666 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!154576 () Bool)

(declare-fun array_inv!3687 (array!11786) Bool)

(declare-fun array_inv!3688 (array!11784) Bool)

(assert (=> b!238051 (= e!154576 (and tp!22377 tp_is_empty!6255 (array_inv!3687 (_keys!6515 thiss!1504)) (array_inv!3688 (_values!4400 thiss!1504)) e!154575))))

(declare-fun b!238052 () Bool)

(assert (=> b!238052 (= e!154580 tp_is_empty!6255)))

(declare-fun b!238050 () Bool)

(declare-fun res!116660 () Bool)

(assert (=> b!238050 (=> (not res!116660) (not e!154574))))

(declare-datatypes ((tuple2!4672 0))(
  ( (tuple2!4673 (_1!2346 (_ BitVec 64)) (_2!2346 V!7987)) )
))
(declare-datatypes ((List!3594 0))(
  ( (Nil!3591) (Cons!3590 (h!4246 tuple2!4672) (t!8593 List!3594)) )
))
(declare-datatypes ((ListLongMap!3599 0))(
  ( (ListLongMap!3600 (toList!1815 List!3594)) )
))
(declare-fun contains!1695 (ListLongMap!3599 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1338 (array!11786 array!11784 (_ BitVec 32) (_ BitVec 32) V!7987 V!7987 (_ BitVec 32) Int) ListLongMap!3599)

(assert (=> b!238050 (= res!116660 (not (contains!1695 (getCurrentListMap!1338 (_keys!6515 thiss!1504) (_values!4400 thiss!1504) (mask!10443 thiss!1504) (extraKeys!4154 thiss!1504) (zeroValue!4258 thiss!1504) (minValue!4258 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4417 thiss!1504)) key!932)))))

(declare-fun res!116664 () Bool)

(assert (=> start!22864 (=> (not res!116664) (not e!154577))))

(declare-fun valid!1361 (LongMapFixedSize!3468) Bool)

(assert (=> start!22864 (= res!116664 (valid!1361 thiss!1504))))

(assert (=> start!22864 e!154577))

(assert (=> start!22864 e!154576))

(assert (=> start!22864 true))

(assert (= (and start!22864 res!116664) b!238049))

(assert (= (and b!238049 res!116666) b!238045))

(assert (= (and b!238045 res!116662) b!238050))

(assert (= (and b!238050 res!116660) b!238048))

(assert (= (and b!238048 res!116663) b!238046))

(assert (= (and b!238046 res!116665) b!238043))

(assert (= (and b!238043 res!116661) b!238044))

(assert (= (and b!238042 condMapEmpty!10608) mapIsEmpty!10608))

(assert (= (and b!238042 (not condMapEmpty!10608)) mapNonEmpty!10608))

(get-info :version)

(assert (= (and mapNonEmpty!10608 ((_ is ValueCellFull!2784) mapValue!10608)) b!238047))

(assert (= (and b!238042 ((_ is ValueCellFull!2784) mapDefault!10608)) b!238052))

(assert (= b!238051 b!238042))

(assert (= start!22864 b!238051))

(declare-fun m!258725 () Bool)

(assert (=> b!238043 m!258725))

(declare-fun m!258727 () Bool)

(assert (=> b!238044 m!258727))

(declare-fun m!258729 () Bool)

(assert (=> b!238048 m!258729))

(declare-fun m!258731 () Bool)

(assert (=> b!238045 m!258731))

(declare-fun m!258733 () Bool)

(assert (=> mapNonEmpty!10608 m!258733))

(declare-fun m!258735 () Bool)

(assert (=> b!238051 m!258735))

(declare-fun m!258737 () Bool)

(assert (=> b!238051 m!258737))

(declare-fun m!258739 () Bool)

(assert (=> b!238050 m!258739))

(assert (=> b!238050 m!258739))

(declare-fun m!258741 () Bool)

(assert (=> b!238050 m!258741))

(declare-fun m!258743 () Bool)

(assert (=> start!22864 m!258743))

(check-sat (not b!238051) (not b!238048) (not b!238043) tp_is_empty!6255 (not start!22864) (not b!238044) b_and!13373 (not b!238050) (not mapNonEmpty!10608) (not b!238045) (not b_next!6393))
(check-sat b_and!13373 (not b_next!6393))
(get-model)

(declare-fun b!238094 () Bool)

(declare-fun e!154610 () Bool)

(declare-fun e!154609 () Bool)

(assert (=> b!238094 (= e!154610 e!154609)))

(declare-fun lt!120433 () (_ BitVec 64))

(assert (=> b!238094 (= lt!120433 (select (arr!5596 (_keys!6515 thiss!1504)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!7309 0))(
  ( (Unit!7310) )
))
(declare-fun lt!120431 () Unit!7309)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11786 (_ BitVec 64) (_ BitVec 32)) Unit!7309)

(assert (=> b!238094 (= lt!120431 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6515 thiss!1504) lt!120433 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!11786 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!238094 (arrayContainsKey!0 (_keys!6515 thiss!1504) lt!120433 #b00000000000000000000000000000000)))

(declare-fun lt!120432 () Unit!7309)

(assert (=> b!238094 (= lt!120432 lt!120431)))

(declare-fun res!116693 () Bool)

(assert (=> b!238094 (= res!116693 (= (seekEntryOrOpen!0 (select (arr!5596 (_keys!6515 thiss!1504)) #b00000000000000000000000000000000) (_keys!6515 thiss!1504) (mask!10443 thiss!1504)) (Found!1023 #b00000000000000000000000000000000)))))

(assert (=> b!238094 (=> (not res!116693) (not e!154609))))

(declare-fun b!238095 () Bool)

(declare-fun call!22129 () Bool)

(assert (=> b!238095 (= e!154609 call!22129)))

(declare-fun b!238096 () Bool)

(declare-fun e!154608 () Bool)

(assert (=> b!238096 (= e!154608 e!154610)))

(declare-fun c!39697 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!238096 (= c!39697 (validKeyInArray!0 (select (arr!5596 (_keys!6515 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!59645 () Bool)

(declare-fun res!116692 () Bool)

(assert (=> d!59645 (=> res!116692 e!154608)))

(assert (=> d!59645 (= res!116692 (bvsge #b00000000000000000000000000000000 (size!5937 (_keys!6515 thiss!1504))))))

(assert (=> d!59645 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6515 thiss!1504) (mask!10443 thiss!1504)) e!154608)))

(declare-fun b!238097 () Bool)

(assert (=> b!238097 (= e!154610 call!22129)))

(declare-fun bm!22126 () Bool)

(assert (=> bm!22126 (= call!22129 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6515 thiss!1504) (mask!10443 thiss!1504)))))

(assert (= (and d!59645 (not res!116692)) b!238096))

(assert (= (and b!238096 c!39697) b!238094))

(assert (= (and b!238096 (not c!39697)) b!238097))

(assert (= (and b!238094 res!116693) b!238095))

(assert (= (or b!238095 b!238097) bm!22126))

(declare-fun m!258765 () Bool)

(assert (=> b!238094 m!258765))

(declare-fun m!258767 () Bool)

(assert (=> b!238094 m!258767))

(declare-fun m!258769 () Bool)

(assert (=> b!238094 m!258769))

(assert (=> b!238094 m!258765))

(declare-fun m!258771 () Bool)

(assert (=> b!238094 m!258771))

(assert (=> b!238096 m!258765))

(assert (=> b!238096 m!258765))

(declare-fun m!258773 () Bool)

(assert (=> b!238096 m!258773))

(declare-fun m!258775 () Bool)

(assert (=> bm!22126 m!258775))

(assert (=> b!238043 d!59645))

(declare-fun d!59647 () Bool)

(assert (=> d!59647 (= (array_inv!3687 (_keys!6515 thiss!1504)) (bvsge (size!5937 (_keys!6515 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!238051 d!59647))

(declare-fun d!59649 () Bool)

(assert (=> d!59649 (= (array_inv!3688 (_values!4400 thiss!1504)) (bvsge (size!5936 (_values!4400 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!238051 d!59649))

(declare-fun b!238108 () Bool)

(declare-fun e!154621 () Bool)

(declare-fun call!22132 () Bool)

(assert (=> b!238108 (= e!154621 call!22132)))

(declare-fun b!238109 () Bool)

(declare-fun e!154619 () Bool)

(declare-fun e!154622 () Bool)

(assert (=> b!238109 (= e!154619 e!154622)))

(declare-fun res!116700 () Bool)

(assert (=> b!238109 (=> (not res!116700) (not e!154622))))

(declare-fun e!154620 () Bool)

(assert (=> b!238109 (= res!116700 (not e!154620))))

(declare-fun res!116702 () Bool)

(assert (=> b!238109 (=> (not res!116702) (not e!154620))))

(assert (=> b!238109 (= res!116702 (validKeyInArray!0 (select (arr!5596 (_keys!6515 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!238110 () Bool)

(assert (=> b!238110 (= e!154622 e!154621)))

(declare-fun c!39700 () Bool)

(assert (=> b!238110 (= c!39700 (validKeyInArray!0 (select (arr!5596 (_keys!6515 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!22129 () Bool)

(assert (=> bm!22129 (= call!22132 (arrayNoDuplicates!0 (_keys!6515 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!39700 (Cons!3589 (select (arr!5596 (_keys!6515 thiss!1504)) #b00000000000000000000000000000000) Nil!3590) Nil!3590)))))

(declare-fun d!59651 () Bool)

(declare-fun res!116701 () Bool)

(assert (=> d!59651 (=> res!116701 e!154619)))

(assert (=> d!59651 (= res!116701 (bvsge #b00000000000000000000000000000000 (size!5937 (_keys!6515 thiss!1504))))))

(assert (=> d!59651 (= (arrayNoDuplicates!0 (_keys!6515 thiss!1504) #b00000000000000000000000000000000 Nil!3590) e!154619)))

(declare-fun b!238111 () Bool)

(declare-fun contains!1696 (List!3593 (_ BitVec 64)) Bool)

(assert (=> b!238111 (= e!154620 (contains!1696 Nil!3590 (select (arr!5596 (_keys!6515 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!238112 () Bool)

(assert (=> b!238112 (= e!154621 call!22132)))

(assert (= (and d!59651 (not res!116701)) b!238109))

(assert (= (and b!238109 res!116702) b!238111))

(assert (= (and b!238109 res!116700) b!238110))

(assert (= (and b!238110 c!39700) b!238112))

(assert (= (and b!238110 (not c!39700)) b!238108))

(assert (= (or b!238112 b!238108) bm!22129))

(assert (=> b!238109 m!258765))

(assert (=> b!238109 m!258765))

(assert (=> b!238109 m!258773))

(assert (=> b!238110 m!258765))

(assert (=> b!238110 m!258765))

(assert (=> b!238110 m!258773))

(assert (=> bm!22129 m!258765))

(declare-fun m!258777 () Bool)

(assert (=> bm!22129 m!258777))

(assert (=> b!238111 m!258765))

(assert (=> b!238111 m!258765))

(declare-fun m!258779 () Bool)

(assert (=> b!238111 m!258779))

(assert (=> b!238044 d!59651))

(declare-fun d!59653 () Bool)

(declare-fun e!154627 () Bool)

(assert (=> d!59653 e!154627))

(declare-fun res!116705 () Bool)

(assert (=> d!59653 (=> res!116705 e!154627)))

(declare-fun lt!120443 () Bool)

(assert (=> d!59653 (= res!116705 (not lt!120443))))

(declare-fun lt!120444 () Bool)

(assert (=> d!59653 (= lt!120443 lt!120444)))

(declare-fun lt!120442 () Unit!7309)

(declare-fun e!154628 () Unit!7309)

(assert (=> d!59653 (= lt!120442 e!154628)))

(declare-fun c!39703 () Bool)

(assert (=> d!59653 (= c!39703 lt!120444)))

(declare-fun containsKey!268 (List!3594 (_ BitVec 64)) Bool)

(assert (=> d!59653 (= lt!120444 (containsKey!268 (toList!1815 (getCurrentListMap!1338 (_keys!6515 thiss!1504) (_values!4400 thiss!1504) (mask!10443 thiss!1504) (extraKeys!4154 thiss!1504) (zeroValue!4258 thiss!1504) (minValue!4258 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4417 thiss!1504))) key!932))))

(assert (=> d!59653 (= (contains!1695 (getCurrentListMap!1338 (_keys!6515 thiss!1504) (_values!4400 thiss!1504) (mask!10443 thiss!1504) (extraKeys!4154 thiss!1504) (zeroValue!4258 thiss!1504) (minValue!4258 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4417 thiss!1504)) key!932) lt!120443)))

(declare-fun b!238119 () Bool)

(declare-fun lt!120445 () Unit!7309)

(assert (=> b!238119 (= e!154628 lt!120445)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!217 (List!3594 (_ BitVec 64)) Unit!7309)

(assert (=> b!238119 (= lt!120445 (lemmaContainsKeyImpliesGetValueByKeyDefined!217 (toList!1815 (getCurrentListMap!1338 (_keys!6515 thiss!1504) (_values!4400 thiss!1504) (mask!10443 thiss!1504) (extraKeys!4154 thiss!1504) (zeroValue!4258 thiss!1504) (minValue!4258 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4417 thiss!1504))) key!932))))

(declare-datatypes ((Option!282 0))(
  ( (Some!281 (v!5206 V!7987)) (None!280) )
))
(declare-fun isDefined!218 (Option!282) Bool)

(declare-fun getValueByKey!276 (List!3594 (_ BitVec 64)) Option!282)

(assert (=> b!238119 (isDefined!218 (getValueByKey!276 (toList!1815 (getCurrentListMap!1338 (_keys!6515 thiss!1504) (_values!4400 thiss!1504) (mask!10443 thiss!1504) (extraKeys!4154 thiss!1504) (zeroValue!4258 thiss!1504) (minValue!4258 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4417 thiss!1504))) key!932))))

(declare-fun b!238120 () Bool)

(declare-fun Unit!7311 () Unit!7309)

(assert (=> b!238120 (= e!154628 Unit!7311)))

(declare-fun b!238121 () Bool)

(assert (=> b!238121 (= e!154627 (isDefined!218 (getValueByKey!276 (toList!1815 (getCurrentListMap!1338 (_keys!6515 thiss!1504) (_values!4400 thiss!1504) (mask!10443 thiss!1504) (extraKeys!4154 thiss!1504) (zeroValue!4258 thiss!1504) (minValue!4258 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4417 thiss!1504))) key!932)))))

(assert (= (and d!59653 c!39703) b!238119))

(assert (= (and d!59653 (not c!39703)) b!238120))

(assert (= (and d!59653 (not res!116705)) b!238121))

(declare-fun m!258781 () Bool)

(assert (=> d!59653 m!258781))

(declare-fun m!258783 () Bool)

(assert (=> b!238119 m!258783))

(declare-fun m!258785 () Bool)

(assert (=> b!238119 m!258785))

(assert (=> b!238119 m!258785))

(declare-fun m!258787 () Bool)

(assert (=> b!238119 m!258787))

(assert (=> b!238121 m!258785))

(assert (=> b!238121 m!258785))

(assert (=> b!238121 m!258787))

(assert (=> b!238050 d!59653))

(declare-fun bm!22144 () Bool)

(declare-fun call!22150 () Bool)

(declare-fun lt!120496 () ListLongMap!3599)

(assert (=> bm!22144 (= call!22150 (contains!1695 lt!120496 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!238164 () Bool)

(declare-fun e!154663 () Bool)

(declare-fun apply!219 (ListLongMap!3599 (_ BitVec 64)) V!7987)

(declare-fun get!2887 (ValueCell!2784 V!7987) V!7987)

(declare-fun dynLambda!557 (Int (_ BitVec 64)) V!7987)

(assert (=> b!238164 (= e!154663 (= (apply!219 lt!120496 (select (arr!5596 (_keys!6515 thiss!1504)) #b00000000000000000000000000000000)) (get!2887 (select (arr!5595 (_values!4400 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!557 (defaultEntry!4417 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!238164 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5936 (_values!4400 thiss!1504))))))

(assert (=> b!238164 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5937 (_keys!6515 thiss!1504))))))

(declare-fun b!238165 () Bool)

(declare-fun e!154665 () Bool)

(assert (=> b!238165 (= e!154665 (validKeyInArray!0 (select (arr!5596 (_keys!6515 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!238166 () Bool)

(declare-fun c!39721 () Bool)

(assert (=> b!238166 (= c!39721 (and (not (= (bvand (extraKeys!4154 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4154 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!154658 () ListLongMap!3599)

(declare-fun e!154667 () ListLongMap!3599)

(assert (=> b!238166 (= e!154658 e!154667)))

(declare-fun b!238167 () Bool)

(declare-fun e!154655 () Unit!7309)

(declare-fun lt!120504 () Unit!7309)

(assert (=> b!238167 (= e!154655 lt!120504)))

(declare-fun lt!120508 () ListLongMap!3599)

(declare-fun getCurrentListMapNoExtraKeys!538 (array!11786 array!11784 (_ BitVec 32) (_ BitVec 32) V!7987 V!7987 (_ BitVec 32) Int) ListLongMap!3599)

(assert (=> b!238167 (= lt!120508 (getCurrentListMapNoExtraKeys!538 (_keys!6515 thiss!1504) (_values!4400 thiss!1504) (mask!10443 thiss!1504) (extraKeys!4154 thiss!1504) (zeroValue!4258 thiss!1504) (minValue!4258 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4417 thiss!1504)))))

(declare-fun lt!120492 () (_ BitVec 64))

(assert (=> b!238167 (= lt!120492 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!120505 () (_ BitVec 64))

(assert (=> b!238167 (= lt!120505 (select (arr!5596 (_keys!6515 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!120507 () Unit!7309)

(declare-fun addStillContains!195 (ListLongMap!3599 (_ BitVec 64) V!7987 (_ BitVec 64)) Unit!7309)

(assert (=> b!238167 (= lt!120507 (addStillContains!195 lt!120508 lt!120492 (zeroValue!4258 thiss!1504) lt!120505))))

(declare-fun +!641 (ListLongMap!3599 tuple2!4672) ListLongMap!3599)

(assert (=> b!238167 (contains!1695 (+!641 lt!120508 (tuple2!4673 lt!120492 (zeroValue!4258 thiss!1504))) lt!120505)))

(declare-fun lt!120510 () Unit!7309)

(assert (=> b!238167 (= lt!120510 lt!120507)))

(declare-fun lt!120499 () ListLongMap!3599)

(assert (=> b!238167 (= lt!120499 (getCurrentListMapNoExtraKeys!538 (_keys!6515 thiss!1504) (_values!4400 thiss!1504) (mask!10443 thiss!1504) (extraKeys!4154 thiss!1504) (zeroValue!4258 thiss!1504) (minValue!4258 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4417 thiss!1504)))))

(declare-fun lt!120500 () (_ BitVec 64))

(assert (=> b!238167 (= lt!120500 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!120491 () (_ BitVec 64))

(assert (=> b!238167 (= lt!120491 (select (arr!5596 (_keys!6515 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!120498 () Unit!7309)

(declare-fun addApplyDifferent!195 (ListLongMap!3599 (_ BitVec 64) V!7987 (_ BitVec 64)) Unit!7309)

(assert (=> b!238167 (= lt!120498 (addApplyDifferent!195 lt!120499 lt!120500 (minValue!4258 thiss!1504) lt!120491))))

(assert (=> b!238167 (= (apply!219 (+!641 lt!120499 (tuple2!4673 lt!120500 (minValue!4258 thiss!1504))) lt!120491) (apply!219 lt!120499 lt!120491))))

(declare-fun lt!120503 () Unit!7309)

(assert (=> b!238167 (= lt!120503 lt!120498)))

(declare-fun lt!120493 () ListLongMap!3599)

(assert (=> b!238167 (= lt!120493 (getCurrentListMapNoExtraKeys!538 (_keys!6515 thiss!1504) (_values!4400 thiss!1504) (mask!10443 thiss!1504) (extraKeys!4154 thiss!1504) (zeroValue!4258 thiss!1504) (minValue!4258 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4417 thiss!1504)))))

(declare-fun lt!120506 () (_ BitVec 64))

(assert (=> b!238167 (= lt!120506 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!120490 () (_ BitVec 64))

(assert (=> b!238167 (= lt!120490 (select (arr!5596 (_keys!6515 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!120509 () Unit!7309)

(assert (=> b!238167 (= lt!120509 (addApplyDifferent!195 lt!120493 lt!120506 (zeroValue!4258 thiss!1504) lt!120490))))

(assert (=> b!238167 (= (apply!219 (+!641 lt!120493 (tuple2!4673 lt!120506 (zeroValue!4258 thiss!1504))) lt!120490) (apply!219 lt!120493 lt!120490))))

(declare-fun lt!120501 () Unit!7309)

(assert (=> b!238167 (= lt!120501 lt!120509)))

(declare-fun lt!120502 () ListLongMap!3599)

(assert (=> b!238167 (= lt!120502 (getCurrentListMapNoExtraKeys!538 (_keys!6515 thiss!1504) (_values!4400 thiss!1504) (mask!10443 thiss!1504) (extraKeys!4154 thiss!1504) (zeroValue!4258 thiss!1504) (minValue!4258 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4417 thiss!1504)))))

(declare-fun lt!120495 () (_ BitVec 64))

(assert (=> b!238167 (= lt!120495 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!120497 () (_ BitVec 64))

(assert (=> b!238167 (= lt!120497 (select (arr!5596 (_keys!6515 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!238167 (= lt!120504 (addApplyDifferent!195 lt!120502 lt!120495 (minValue!4258 thiss!1504) lt!120497))))

(assert (=> b!238167 (= (apply!219 (+!641 lt!120502 (tuple2!4673 lt!120495 (minValue!4258 thiss!1504))) lt!120497) (apply!219 lt!120502 lt!120497))))

(declare-fun b!238168 () Bool)

(declare-fun Unit!7312 () Unit!7309)

(assert (=> b!238168 (= e!154655 Unit!7312)))

(declare-fun d!59655 () Bool)

(declare-fun e!154659 () Bool)

(assert (=> d!59655 e!154659))

(declare-fun res!116731 () Bool)

(assert (=> d!59655 (=> (not res!116731) (not e!154659))))

(assert (=> d!59655 (= res!116731 (or (bvsge #b00000000000000000000000000000000 (size!5937 (_keys!6515 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5937 (_keys!6515 thiss!1504))))))))

(declare-fun lt!120511 () ListLongMap!3599)

(assert (=> d!59655 (= lt!120496 lt!120511)))

(declare-fun lt!120494 () Unit!7309)

(assert (=> d!59655 (= lt!120494 e!154655)))

(declare-fun c!39719 () Bool)

(assert (=> d!59655 (= c!39719 e!154665)))

(declare-fun res!116730 () Bool)

(assert (=> d!59655 (=> (not res!116730) (not e!154665))))

(assert (=> d!59655 (= res!116730 (bvslt #b00000000000000000000000000000000 (size!5937 (_keys!6515 thiss!1504))))))

(declare-fun e!154656 () ListLongMap!3599)

(assert (=> d!59655 (= lt!120511 e!154656)))

(declare-fun c!39716 () Bool)

(assert (=> d!59655 (= c!39716 (and (not (= (bvand (extraKeys!4154 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4154 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!59655 (validMask!0 (mask!10443 thiss!1504))))

(assert (=> d!59655 (= (getCurrentListMap!1338 (_keys!6515 thiss!1504) (_values!4400 thiss!1504) (mask!10443 thiss!1504) (extraKeys!4154 thiss!1504) (zeroValue!4258 thiss!1504) (minValue!4258 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4417 thiss!1504)) lt!120496)))

(declare-fun b!238169 () Bool)

(declare-fun e!154662 () Bool)

(declare-fun call!22147 () Bool)

(assert (=> b!238169 (= e!154662 (not call!22147))))

(declare-fun b!238170 () Bool)

(declare-fun e!154661 () Bool)

(assert (=> b!238170 (= e!154661 (validKeyInArray!0 (select (arr!5596 (_keys!6515 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!22145 () Bool)

(assert (=> bm!22145 (= call!22147 (contains!1695 lt!120496 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!238171 () Bool)

(declare-fun e!154657 () Bool)

(assert (=> b!238171 (= e!154657 e!154663)))

(declare-fun res!116732 () Bool)

(assert (=> b!238171 (=> (not res!116732) (not e!154663))))

(assert (=> b!238171 (= res!116732 (contains!1695 lt!120496 (select (arr!5596 (_keys!6515 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!238171 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5937 (_keys!6515 thiss!1504))))))

(declare-fun b!238172 () Bool)

(declare-fun call!22152 () ListLongMap!3599)

(assert (=> b!238172 (= e!154667 call!22152)))

(declare-fun b!238173 () Bool)

(declare-fun e!154666 () Bool)

(assert (=> b!238173 (= e!154662 e!154666)))

(declare-fun res!116727 () Bool)

(assert (=> b!238173 (= res!116727 call!22147)))

(assert (=> b!238173 (=> (not res!116727) (not e!154666))))

(declare-fun bm!22146 () Bool)

(declare-fun call!22149 () ListLongMap!3599)

(declare-fun call!22148 () ListLongMap!3599)

(assert (=> bm!22146 (= call!22149 call!22148)))

(declare-fun b!238174 () Bool)

(declare-fun e!154664 () Bool)

(assert (=> b!238174 (= e!154659 e!154664)))

(declare-fun c!39718 () Bool)

(assert (=> b!238174 (= c!39718 (not (= (bvand (extraKeys!4154 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!238175 () Bool)

(assert (=> b!238175 (= e!154664 (not call!22150))))

(declare-fun b!238176 () Bool)

(declare-fun res!116728 () Bool)

(assert (=> b!238176 (=> (not res!116728) (not e!154659))))

(assert (=> b!238176 (= res!116728 e!154662)))

(declare-fun c!39717 () Bool)

(assert (=> b!238176 (= c!39717 (not (= (bvand (extraKeys!4154 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!238177 () Bool)

(declare-fun res!116725 () Bool)

(assert (=> b!238177 (=> (not res!116725) (not e!154659))))

(assert (=> b!238177 (= res!116725 e!154657)))

(declare-fun res!116724 () Bool)

(assert (=> b!238177 (=> res!116724 e!154657)))

(assert (=> b!238177 (= res!116724 (not e!154661))))

(declare-fun res!116729 () Bool)

(assert (=> b!238177 (=> (not res!116729) (not e!154661))))

(assert (=> b!238177 (= res!116729 (bvslt #b00000000000000000000000000000000 (size!5937 (_keys!6515 thiss!1504))))))

(declare-fun b!238178 () Bool)

(declare-fun call!22153 () ListLongMap!3599)

(assert (=> b!238178 (= e!154656 (+!641 call!22153 (tuple2!4673 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4258 thiss!1504))))))

(declare-fun b!238179 () Bool)

(assert (=> b!238179 (= e!154656 e!154658)))

(declare-fun c!39720 () Bool)

(assert (=> b!238179 (= c!39720 (and (not (= (bvand (extraKeys!4154 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4154 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!22147 () Bool)

(declare-fun call!22151 () ListLongMap!3599)

(assert (=> bm!22147 (= call!22151 call!22149)))

(declare-fun b!238180 () Bool)

(declare-fun e!154660 () Bool)

(assert (=> b!238180 (= e!154664 e!154660)))

(declare-fun res!116726 () Bool)

(assert (=> b!238180 (= res!116726 call!22150)))

(assert (=> b!238180 (=> (not res!116726) (not e!154660))))

(declare-fun bm!22148 () Bool)

(assert (=> bm!22148 (= call!22148 (getCurrentListMapNoExtraKeys!538 (_keys!6515 thiss!1504) (_values!4400 thiss!1504) (mask!10443 thiss!1504) (extraKeys!4154 thiss!1504) (zeroValue!4258 thiss!1504) (minValue!4258 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4417 thiss!1504)))))

(declare-fun b!238181 () Bool)

(assert (=> b!238181 (= e!154666 (= (apply!219 lt!120496 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4258 thiss!1504)))))

(declare-fun bm!22149 () Bool)

(assert (=> bm!22149 (= call!22153 (+!641 (ite c!39716 call!22148 (ite c!39720 call!22149 call!22151)) (ite (or c!39716 c!39720) (tuple2!4673 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4258 thiss!1504)) (tuple2!4673 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4258 thiss!1504)))))))

(declare-fun b!238182 () Bool)

(assert (=> b!238182 (= e!154667 call!22151)))

(declare-fun b!238183 () Bool)

(assert (=> b!238183 (= e!154660 (= (apply!219 lt!120496 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4258 thiss!1504)))))

(declare-fun bm!22150 () Bool)

(assert (=> bm!22150 (= call!22152 call!22153)))

(declare-fun b!238184 () Bool)

(assert (=> b!238184 (= e!154658 call!22152)))

(assert (= (and d!59655 c!39716) b!238178))

(assert (= (and d!59655 (not c!39716)) b!238179))

(assert (= (and b!238179 c!39720) b!238184))

(assert (= (and b!238179 (not c!39720)) b!238166))

(assert (= (and b!238166 c!39721) b!238172))

(assert (= (and b!238166 (not c!39721)) b!238182))

(assert (= (or b!238172 b!238182) bm!22147))

(assert (= (or b!238184 bm!22147) bm!22146))

(assert (= (or b!238184 b!238172) bm!22150))

(assert (= (or b!238178 bm!22146) bm!22148))

(assert (= (or b!238178 bm!22150) bm!22149))

(assert (= (and d!59655 res!116730) b!238165))

(assert (= (and d!59655 c!39719) b!238167))

(assert (= (and d!59655 (not c!39719)) b!238168))

(assert (= (and d!59655 res!116731) b!238177))

(assert (= (and b!238177 res!116729) b!238170))

(assert (= (and b!238177 (not res!116724)) b!238171))

(assert (= (and b!238171 res!116732) b!238164))

(assert (= (and b!238177 res!116725) b!238176))

(assert (= (and b!238176 c!39717) b!238173))

(assert (= (and b!238176 (not c!39717)) b!238169))

(assert (= (and b!238173 res!116727) b!238181))

(assert (= (or b!238173 b!238169) bm!22145))

(assert (= (and b!238176 res!116728) b!238174))

(assert (= (and b!238174 c!39718) b!238180))

(assert (= (and b!238174 (not c!39718)) b!238175))

(assert (= (and b!238180 res!116726) b!238183))

(assert (= (or b!238180 b!238175) bm!22144))

(declare-fun b_lambda!8001 () Bool)

(assert (=> (not b_lambda!8001) (not b!238164)))

(declare-fun t!8596 () Bool)

(declare-fun tb!2959 () Bool)

(assert (=> (and b!238051 (= (defaultEntry!4417 thiss!1504) (defaultEntry!4417 thiss!1504)) t!8596) tb!2959))

(declare-fun result!5183 () Bool)

(assert (=> tb!2959 (= result!5183 tp_is_empty!6255)))

(assert (=> b!238164 t!8596))

(declare-fun b_and!13377 () Bool)

(assert (= b_and!13373 (and (=> t!8596 result!5183) b_and!13377)))

(declare-fun m!258789 () Bool)

(assert (=> bm!22145 m!258789))

(assert (=> b!238171 m!258765))

(assert (=> b!238171 m!258765))

(declare-fun m!258791 () Bool)

(assert (=> b!238171 m!258791))

(declare-fun m!258793 () Bool)

(assert (=> bm!22148 m!258793))

(declare-fun m!258795 () Bool)

(assert (=> bm!22144 m!258795))

(declare-fun m!258797 () Bool)

(assert (=> b!238178 m!258797))

(declare-fun m!258799 () Bool)

(assert (=> b!238164 m!258799))

(assert (=> b!238164 m!258765))

(declare-fun m!258801 () Bool)

(assert (=> b!238164 m!258801))

(assert (=> b!238164 m!258765))

(declare-fun m!258803 () Bool)

(assert (=> b!238164 m!258803))

(assert (=> b!238164 m!258803))

(assert (=> b!238164 m!258799))

(declare-fun m!258805 () Bool)

(assert (=> b!238164 m!258805))

(assert (=> b!238170 m!258765))

(assert (=> b!238170 m!258765))

(assert (=> b!238170 m!258773))

(declare-fun m!258807 () Bool)

(assert (=> b!238183 m!258807))

(assert (=> b!238165 m!258765))

(assert (=> b!238165 m!258765))

(assert (=> b!238165 m!258773))

(declare-fun m!258809 () Bool)

(assert (=> bm!22149 m!258809))

(assert (=> d!59655 m!258729))

(declare-fun m!258811 () Bool)

(assert (=> b!238181 m!258811))

(declare-fun m!258813 () Bool)

(assert (=> b!238167 m!258813))

(declare-fun m!258815 () Bool)

(assert (=> b!238167 m!258815))

(declare-fun m!258817 () Bool)

(assert (=> b!238167 m!258817))

(declare-fun m!258819 () Bool)

(assert (=> b!238167 m!258819))

(declare-fun m!258821 () Bool)

(assert (=> b!238167 m!258821))

(declare-fun m!258823 () Bool)

(assert (=> b!238167 m!258823))

(declare-fun m!258825 () Bool)

(assert (=> b!238167 m!258825))

(declare-fun m!258827 () Bool)

(assert (=> b!238167 m!258827))

(assert (=> b!238167 m!258817))

(declare-fun m!258829 () Bool)

(assert (=> b!238167 m!258829))

(declare-fun m!258831 () Bool)

(assert (=> b!238167 m!258831))

(declare-fun m!258833 () Bool)

(assert (=> b!238167 m!258833))

(assert (=> b!238167 m!258793))

(assert (=> b!238167 m!258825))

(declare-fun m!258835 () Bool)

(assert (=> b!238167 m!258835))

(assert (=> b!238167 m!258765))

(declare-fun m!258837 () Bool)

(assert (=> b!238167 m!258837))

(assert (=> b!238167 m!258821))

(declare-fun m!258839 () Bool)

(assert (=> b!238167 m!258839))

(assert (=> b!238167 m!258839))

(declare-fun m!258841 () Bool)

(assert (=> b!238167 m!258841))

(assert (=> b!238050 d!59655))

(declare-fun e!154674 () SeekEntryResult!1023)

(declare-fun lt!120520 () SeekEntryResult!1023)

(declare-fun b!238199 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11786 (_ BitVec 32)) SeekEntryResult!1023)

(assert (=> b!238199 (= e!154674 (seekKeyOrZeroReturnVacant!0 (x!24019 lt!120520) (index!6264 lt!120520) (index!6264 lt!120520) key!932 (_keys!6515 thiss!1504) (mask!10443 thiss!1504)))))

(declare-fun b!238200 () Bool)

(declare-fun c!39730 () Bool)

(declare-fun lt!120519 () (_ BitVec 64))

(assert (=> b!238200 (= c!39730 (= lt!120519 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!154676 () SeekEntryResult!1023)

(assert (=> b!238200 (= e!154676 e!154674)))

(declare-fun b!238201 () Bool)

(assert (=> b!238201 (= e!154676 (Found!1023 (index!6264 lt!120520)))))

(declare-fun b!238202 () Bool)

(declare-fun e!154675 () SeekEntryResult!1023)

(assert (=> b!238202 (= e!154675 e!154676)))

(assert (=> b!238202 (= lt!120519 (select (arr!5596 (_keys!6515 thiss!1504)) (index!6264 lt!120520)))))

(declare-fun c!39728 () Bool)

(assert (=> b!238202 (= c!39728 (= lt!120519 key!932))))

(declare-fun b!238203 () Bool)

(assert (=> b!238203 (= e!154675 Undefined!1023)))

(declare-fun d!59657 () Bool)

(declare-fun lt!120518 () SeekEntryResult!1023)

(assert (=> d!59657 (and (or ((_ is Undefined!1023) lt!120518) (not ((_ is Found!1023) lt!120518)) (and (bvsge (index!6263 lt!120518) #b00000000000000000000000000000000) (bvslt (index!6263 lt!120518) (size!5937 (_keys!6515 thiss!1504))))) (or ((_ is Undefined!1023) lt!120518) ((_ is Found!1023) lt!120518) (not ((_ is MissingZero!1023) lt!120518)) (and (bvsge (index!6262 lt!120518) #b00000000000000000000000000000000) (bvslt (index!6262 lt!120518) (size!5937 (_keys!6515 thiss!1504))))) (or ((_ is Undefined!1023) lt!120518) ((_ is Found!1023) lt!120518) ((_ is MissingZero!1023) lt!120518) (not ((_ is MissingVacant!1023) lt!120518)) (and (bvsge (index!6265 lt!120518) #b00000000000000000000000000000000) (bvslt (index!6265 lt!120518) (size!5937 (_keys!6515 thiss!1504))))) (or ((_ is Undefined!1023) lt!120518) (ite ((_ is Found!1023) lt!120518) (= (select (arr!5596 (_keys!6515 thiss!1504)) (index!6263 lt!120518)) key!932) (ite ((_ is MissingZero!1023) lt!120518) (= (select (arr!5596 (_keys!6515 thiss!1504)) (index!6262 lt!120518)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1023) lt!120518) (= (select (arr!5596 (_keys!6515 thiss!1504)) (index!6265 lt!120518)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!59657 (= lt!120518 e!154675)))

(declare-fun c!39729 () Bool)

(assert (=> d!59657 (= c!39729 (and ((_ is Intermediate!1023) lt!120520) (undefined!1835 lt!120520)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11786 (_ BitVec 32)) SeekEntryResult!1023)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!59657 (= lt!120520 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10443 thiss!1504)) key!932 (_keys!6515 thiss!1504) (mask!10443 thiss!1504)))))

(assert (=> d!59657 (validMask!0 (mask!10443 thiss!1504))))

(assert (=> d!59657 (= (seekEntryOrOpen!0 key!932 (_keys!6515 thiss!1504) (mask!10443 thiss!1504)) lt!120518)))

(declare-fun b!238204 () Bool)

(assert (=> b!238204 (= e!154674 (MissingZero!1023 (index!6264 lt!120520)))))

(assert (= (and d!59657 c!39729) b!238203))

(assert (= (and d!59657 (not c!39729)) b!238202))

(assert (= (and b!238202 c!39728) b!238201))

(assert (= (and b!238202 (not c!39728)) b!238200))

(assert (= (and b!238200 c!39730) b!238204))

(assert (= (and b!238200 (not c!39730)) b!238199))

(declare-fun m!258843 () Bool)

(assert (=> b!238199 m!258843))

(declare-fun m!258845 () Bool)

(assert (=> b!238202 m!258845))

(declare-fun m!258847 () Bool)

(assert (=> d!59657 m!258847))

(declare-fun m!258849 () Bool)

(assert (=> d!59657 m!258849))

(declare-fun m!258851 () Bool)

(assert (=> d!59657 m!258851))

(assert (=> d!59657 m!258729))

(declare-fun m!258853 () Bool)

(assert (=> d!59657 m!258853))

(assert (=> d!59657 m!258847))

(declare-fun m!258855 () Bool)

(assert (=> d!59657 m!258855))

(assert (=> b!238045 d!59657))

(declare-fun d!59659 () Bool)

(assert (=> d!59659 (= (validMask!0 (mask!10443 thiss!1504)) (and (or (= (mask!10443 thiss!1504) #b00000000000000000000000000000111) (= (mask!10443 thiss!1504) #b00000000000000000000000000001111) (= (mask!10443 thiss!1504) #b00000000000000000000000000011111) (= (mask!10443 thiss!1504) #b00000000000000000000000000111111) (= (mask!10443 thiss!1504) #b00000000000000000000000001111111) (= (mask!10443 thiss!1504) #b00000000000000000000000011111111) (= (mask!10443 thiss!1504) #b00000000000000000000000111111111) (= (mask!10443 thiss!1504) #b00000000000000000000001111111111) (= (mask!10443 thiss!1504) #b00000000000000000000011111111111) (= (mask!10443 thiss!1504) #b00000000000000000000111111111111) (= (mask!10443 thiss!1504) #b00000000000000000001111111111111) (= (mask!10443 thiss!1504) #b00000000000000000011111111111111) (= (mask!10443 thiss!1504) #b00000000000000000111111111111111) (= (mask!10443 thiss!1504) #b00000000000000001111111111111111) (= (mask!10443 thiss!1504) #b00000000000000011111111111111111) (= (mask!10443 thiss!1504) #b00000000000000111111111111111111) (= (mask!10443 thiss!1504) #b00000000000001111111111111111111) (= (mask!10443 thiss!1504) #b00000000000011111111111111111111) (= (mask!10443 thiss!1504) #b00000000000111111111111111111111) (= (mask!10443 thiss!1504) #b00000000001111111111111111111111) (= (mask!10443 thiss!1504) #b00000000011111111111111111111111) (= (mask!10443 thiss!1504) #b00000000111111111111111111111111) (= (mask!10443 thiss!1504) #b00000001111111111111111111111111) (= (mask!10443 thiss!1504) #b00000011111111111111111111111111) (= (mask!10443 thiss!1504) #b00000111111111111111111111111111) (= (mask!10443 thiss!1504) #b00001111111111111111111111111111) (= (mask!10443 thiss!1504) #b00011111111111111111111111111111) (= (mask!10443 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10443 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!238048 d!59659))

(declare-fun d!59661 () Bool)

(declare-fun res!116739 () Bool)

(declare-fun e!154679 () Bool)

(assert (=> d!59661 (=> (not res!116739) (not e!154679))))

(declare-fun simpleValid!241 (LongMapFixedSize!3468) Bool)

(assert (=> d!59661 (= res!116739 (simpleValid!241 thiss!1504))))

(assert (=> d!59661 (= (valid!1361 thiss!1504) e!154679)))

(declare-fun b!238211 () Bool)

(declare-fun res!116740 () Bool)

(assert (=> b!238211 (=> (not res!116740) (not e!154679))))

(declare-fun arrayCountValidKeys!0 (array!11786 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!238211 (= res!116740 (= (arrayCountValidKeys!0 (_keys!6515 thiss!1504) #b00000000000000000000000000000000 (size!5937 (_keys!6515 thiss!1504))) (_size!1783 thiss!1504)))))

(declare-fun b!238212 () Bool)

(declare-fun res!116741 () Bool)

(assert (=> b!238212 (=> (not res!116741) (not e!154679))))

(assert (=> b!238212 (= res!116741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6515 thiss!1504) (mask!10443 thiss!1504)))))

(declare-fun b!238213 () Bool)

(assert (=> b!238213 (= e!154679 (arrayNoDuplicates!0 (_keys!6515 thiss!1504) #b00000000000000000000000000000000 Nil!3590))))

(assert (= (and d!59661 res!116739) b!238211))

(assert (= (and b!238211 res!116740) b!238212))

(assert (= (and b!238212 res!116741) b!238213))

(declare-fun m!258857 () Bool)

(assert (=> d!59661 m!258857))

(declare-fun m!258859 () Bool)

(assert (=> b!238211 m!258859))

(assert (=> b!238212 m!258725))

(assert (=> b!238213 m!258727))

(assert (=> start!22864 d!59661))

(declare-fun mapIsEmpty!10614 () Bool)

(declare-fun mapRes!10614 () Bool)

(assert (=> mapIsEmpty!10614 mapRes!10614))

(declare-fun b!238221 () Bool)

(declare-fun e!154685 () Bool)

(assert (=> b!238221 (= e!154685 tp_is_empty!6255)))

(declare-fun mapNonEmpty!10614 () Bool)

(declare-fun tp!22386 () Bool)

(declare-fun e!154684 () Bool)

(assert (=> mapNonEmpty!10614 (= mapRes!10614 (and tp!22386 e!154684))))

(declare-fun mapValue!10614 () ValueCell!2784)

(declare-fun mapRest!10614 () (Array (_ BitVec 32) ValueCell!2784))

(declare-fun mapKey!10614 () (_ BitVec 32))

(assert (=> mapNonEmpty!10614 (= mapRest!10608 (store mapRest!10614 mapKey!10614 mapValue!10614))))

(declare-fun b!238220 () Bool)

(assert (=> b!238220 (= e!154684 tp_is_empty!6255)))

(declare-fun condMapEmpty!10614 () Bool)

(declare-fun mapDefault!10614 () ValueCell!2784)

(assert (=> mapNonEmpty!10608 (= condMapEmpty!10614 (= mapRest!10608 ((as const (Array (_ BitVec 32) ValueCell!2784)) mapDefault!10614)))))

(assert (=> mapNonEmpty!10608 (= tp!22376 (and e!154685 mapRes!10614))))

(assert (= (and mapNonEmpty!10608 condMapEmpty!10614) mapIsEmpty!10614))

(assert (= (and mapNonEmpty!10608 (not condMapEmpty!10614)) mapNonEmpty!10614))

(assert (= (and mapNonEmpty!10614 ((_ is ValueCellFull!2784) mapValue!10614)) b!238220))

(assert (= (and mapNonEmpty!10608 ((_ is ValueCellFull!2784) mapDefault!10614)) b!238221))

(declare-fun m!258861 () Bool)

(assert (=> mapNonEmpty!10614 m!258861))

(declare-fun b_lambda!8003 () Bool)

(assert (= b_lambda!8001 (or (and b!238051 b_free!6393) b_lambda!8003)))

(check-sat b_and!13377 (not b!238111) (not b!238109) (not d!59661) (not b!238096) (not b!238213) (not d!59653) (not b!238164) (not bm!22149) (not b!238165) (not b_next!6393) (not b_lambda!8003) (not b!238211) (not b!238171) (not b!238110) (not b!238199) (not b!238183) (not bm!22145) (not b!238212) (not b!238178) (not b!238119) (not bm!22144) (not d!59657) (not d!59655) (not bm!22126) (not mapNonEmpty!10614) (not b!238170) tp_is_empty!6255 (not b!238167) (not b!238094) (not b!238121) (not bm!22129) (not bm!22148) (not b!238181))
(check-sat b_and!13377 (not b_next!6393))

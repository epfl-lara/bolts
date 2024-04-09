; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23500 () Bool)

(assert start!23500)

(declare-fun b!246679 () Bool)

(declare-fun b_free!6573 () Bool)

(declare-fun b_next!6573 () Bool)

(assert (=> b!246679 (= b_free!6573 (not b_next!6573))))

(declare-fun tp!22961 () Bool)

(declare-fun b_and!13589 () Bool)

(assert (=> b!246679 (= tp!22961 b_and!13589)))

(declare-fun b!246665 () Bool)

(declare-fun e!160035 () Bool)

(declare-fun e!160039 () Bool)

(assert (=> b!246665 (= e!160035 e!160039)))

(declare-fun res!120948 () Bool)

(assert (=> b!246665 (=> (not res!120948) (not e!160039))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!8227 0))(
  ( (V!8228 (val!3262 Int)) )
))
(declare-datatypes ((ValueCell!2874 0))(
  ( (ValueCellFull!2874 (v!5314 V!8227)) (EmptyCell!2874) )
))
(declare-datatypes ((array!12172 0))(
  ( (array!12173 (arr!5775 (Array (_ BitVec 32) ValueCell!2874)) (size!6118 (_ BitVec 32))) )
))
(declare-datatypes ((array!12174 0))(
  ( (array!12175 (arr!5776 (Array (_ BitVec 32) (_ BitVec 64))) (size!6119 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3648 0))(
  ( (LongMapFixedSize!3649 (defaultEntry!4565 Int) (mask!10693 (_ BitVec 32)) (extraKeys!4302 (_ BitVec 32)) (zeroValue!4406 V!8227) (minValue!4406 V!8227) (_size!1873 (_ BitVec 32)) (_keys!6685 array!12174) (_values!4548 array!12172) (_vacant!1873 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3648)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!246665 (= res!120948 (inRange!0 index!297 (mask!10693 thiss!1504)))))

(declare-datatypes ((Unit!7616 0))(
  ( (Unit!7617) )
))
(declare-fun lt!123582 () Unit!7616)

(declare-fun e!160032 () Unit!7616)

(assert (=> b!246665 (= lt!123582 e!160032)))

(declare-fun c!41251 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4796 0))(
  ( (tuple2!4797 (_1!2408 (_ BitVec 64)) (_2!2408 V!8227)) )
))
(declare-datatypes ((List!3701 0))(
  ( (Nil!3698) (Cons!3697 (h!4355 tuple2!4796) (t!8728 List!3701)) )
))
(declare-datatypes ((ListLongMap!3723 0))(
  ( (ListLongMap!3724 (toList!1877 List!3701)) )
))
(declare-fun contains!1783 (ListLongMap!3723 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1400 (array!12174 array!12172 (_ BitVec 32) (_ BitVec 32) V!8227 V!8227 (_ BitVec 32) Int) ListLongMap!3723)

(assert (=> b!246665 (= c!41251 (contains!1783 (getCurrentListMap!1400 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4565 thiss!1504)) key!932))))

(declare-fun b!246666 () Bool)

(declare-fun res!120951 () Bool)

(declare-fun e!160030 () Bool)

(assert (=> b!246666 (=> (not res!120951) (not e!160030))))

(assert (=> b!246666 (= res!120951 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!246667 () Bool)

(declare-fun e!160037 () Bool)

(declare-fun e!160028 () Bool)

(assert (=> b!246667 (= e!160037 e!160028)))

(declare-fun res!120950 () Bool)

(declare-fun call!23070 () Bool)

(assert (=> b!246667 (= res!120950 call!23070)))

(assert (=> b!246667 (=> (not res!120950) (not e!160028))))

(declare-fun b!246668 () Bool)

(declare-fun res!120947 () Bool)

(declare-fun e!160033 () Bool)

(assert (=> b!246668 (=> (not res!120947) (not e!160033))))

(assert (=> b!246668 (= res!120947 call!23070)))

(declare-fun e!160042 () Bool)

(assert (=> b!246668 (= e!160042 e!160033)))

(declare-fun mapIsEmpty!10922 () Bool)

(declare-fun mapRes!10922 () Bool)

(assert (=> mapIsEmpty!10922 mapRes!10922))

(declare-fun b!246669 () Bool)

(declare-fun e!160038 () Bool)

(assert (=> b!246669 (= e!160038 (or (not (= (size!6119 (_keys!6685 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10693 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6119 (_keys!6685 thiss!1504)))))))

(declare-fun b!246670 () Bool)

(declare-fun e!160029 () Bool)

(declare-fun tp_is_empty!6435 () Bool)

(assert (=> b!246670 (= e!160029 tp_is_empty!6435)))

(declare-fun b!246671 () Bool)

(declare-fun call!23071 () Bool)

(assert (=> b!246671 (= e!160033 (not call!23071))))

(declare-fun b!246672 () Bool)

(declare-fun lt!123589 () Unit!7616)

(assert (=> b!246672 (= e!160032 lt!123589)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!380 (array!12174 array!12172 (_ BitVec 32) (_ BitVec 32) V!8227 V!8227 (_ BitVec 64) Int) Unit!7616)

(assert (=> b!246672 (= lt!123589 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!380 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) key!932 (defaultEntry!4565 thiss!1504)))))

(declare-fun c!41250 () Bool)

(declare-datatypes ((SeekEntryResult!1106 0))(
  ( (MissingZero!1106 (index!6594 (_ BitVec 32))) (Found!1106 (index!6595 (_ BitVec 32))) (Intermediate!1106 (undefined!1918 Bool) (index!6596 (_ BitVec 32)) (x!24498 (_ BitVec 32))) (Undefined!1106) (MissingVacant!1106 (index!6597 (_ BitVec 32))) )
))
(declare-fun lt!123590 () SeekEntryResult!1106)

(get-info :version)

(assert (=> b!246672 (= c!41250 ((_ is MissingZero!1106) lt!123590))))

(assert (=> b!246672 e!160042))

(declare-fun b!246673 () Bool)

(declare-fun e!160041 () Bool)

(assert (=> b!246673 (= e!160041 tp_is_empty!6435)))

(declare-fun b!246674 () Bool)

(assert (=> b!246674 (= e!160028 (not call!23071))))

(declare-fun b!246676 () Bool)

(assert (=> b!246676 (= e!160039 (not e!160038))))

(declare-fun res!120949 () Bool)

(assert (=> b!246676 (=> res!120949 e!160038)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!246676 (= res!120949 (not (validMask!0 (mask!10693 thiss!1504))))))

(declare-fun lt!123586 () array!12174)

(declare-fun arrayCountValidKeys!0 (array!12174 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!246676 (= (arrayCountValidKeys!0 lt!123586 #b00000000000000000000000000000000 (size!6119 (_keys!6685 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6685 thiss!1504) #b00000000000000000000000000000000 (size!6119 (_keys!6685 thiss!1504)))))))

(declare-fun lt!123588 () Unit!7616)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12174 (_ BitVec 32) (_ BitVec 64)) Unit!7616)

(assert (=> b!246676 (= lt!123588 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6685 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3702 0))(
  ( (Nil!3699) (Cons!3698 (h!4356 (_ BitVec 64)) (t!8729 List!3702)) )
))
(declare-fun arrayNoDuplicates!0 (array!12174 (_ BitVec 32) List!3702) Bool)

(assert (=> b!246676 (arrayNoDuplicates!0 lt!123586 #b00000000000000000000000000000000 Nil!3699)))

(assert (=> b!246676 (= lt!123586 (array!12175 (store (arr!5776 (_keys!6685 thiss!1504)) index!297 key!932) (size!6119 (_keys!6685 thiss!1504))))))

(declare-fun lt!123585 () Unit!7616)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12174 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3702) Unit!7616)

(assert (=> b!246676 (= lt!123585 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6685 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3699))))

(declare-fun lt!123587 () Unit!7616)

(declare-fun e!160034 () Unit!7616)

(assert (=> b!246676 (= lt!123587 e!160034)))

(declare-fun c!41253 () Bool)

(declare-fun arrayContainsKey!0 (array!12174 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!246676 (= c!41253 (arrayContainsKey!0 (_keys!6685 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!10922 () Bool)

(declare-fun tp!22960 () Bool)

(assert (=> mapNonEmpty!10922 (= mapRes!10922 (and tp!22960 e!160029))))

(declare-fun mapRest!10922 () (Array (_ BitVec 32) ValueCell!2874))

(declare-fun mapValue!10922 () ValueCell!2874)

(declare-fun mapKey!10922 () (_ BitVec 32))

(assert (=> mapNonEmpty!10922 (= (arr!5775 (_values!4548 thiss!1504)) (store mapRest!10922 mapKey!10922 mapValue!10922))))

(declare-fun b!246677 () Bool)

(declare-fun Unit!7618 () Unit!7616)

(assert (=> b!246677 (= e!160032 Unit!7618)))

(declare-fun lt!123584 () Unit!7616)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!378 (array!12174 array!12172 (_ BitVec 32) (_ BitVec 32) V!8227 V!8227 (_ BitVec 64) Int) Unit!7616)

(assert (=> b!246677 (= lt!123584 (lemmaInListMapThenSeekEntryOrOpenFindsIt!378 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) key!932 (defaultEntry!4565 thiss!1504)))))

(assert (=> b!246677 false))

(declare-fun b!246678 () Bool)

(assert (=> b!246678 (= e!160037 ((_ is Undefined!1106) lt!123590))))

(declare-fun e!160040 () Bool)

(declare-fun e!160031 () Bool)

(declare-fun array_inv!3805 (array!12174) Bool)

(declare-fun array_inv!3806 (array!12172) Bool)

(assert (=> b!246679 (= e!160040 (and tp!22961 tp_is_empty!6435 (array_inv!3805 (_keys!6685 thiss!1504)) (array_inv!3806 (_values!4548 thiss!1504)) e!160031))))

(declare-fun bm!23067 () Bool)

(assert (=> bm!23067 (= call!23071 (arrayContainsKey!0 (_keys!6685 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!246680 () Bool)

(assert (=> b!246680 (= e!160030 e!160035)))

(declare-fun res!120955 () Bool)

(assert (=> b!246680 (=> (not res!120955) (not e!160035))))

(assert (=> b!246680 (= res!120955 (or (= lt!123590 (MissingZero!1106 index!297)) (= lt!123590 (MissingVacant!1106 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12174 (_ BitVec 32)) SeekEntryResult!1106)

(assert (=> b!246680 (= lt!123590 (seekEntryOrOpen!0 key!932 (_keys!6685 thiss!1504) (mask!10693 thiss!1504)))))

(declare-fun b!246681 () Bool)

(declare-fun res!120952 () Bool)

(assert (=> b!246681 (= res!120952 (= (select (arr!5776 (_keys!6685 thiss!1504)) (index!6597 lt!123590)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!246681 (=> (not res!120952) (not e!160028))))

(declare-fun b!246682 () Bool)

(declare-fun Unit!7619 () Unit!7616)

(assert (=> b!246682 (= e!160034 Unit!7619)))

(declare-fun b!246683 () Bool)

(assert (=> b!246683 (= e!160031 (and e!160041 mapRes!10922))))

(declare-fun condMapEmpty!10922 () Bool)

(declare-fun mapDefault!10922 () ValueCell!2874)

(assert (=> b!246683 (= condMapEmpty!10922 (= (arr!5775 (_values!4548 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2874)) mapDefault!10922)))))

(declare-fun b!246684 () Bool)

(declare-fun c!41252 () Bool)

(assert (=> b!246684 (= c!41252 ((_ is MissingVacant!1106) lt!123590))))

(assert (=> b!246684 (= e!160042 e!160037)))

(declare-fun b!246675 () Bool)

(declare-fun res!120954 () Bool)

(assert (=> b!246675 (=> (not res!120954) (not e!160033))))

(assert (=> b!246675 (= res!120954 (= (select (arr!5776 (_keys!6685 thiss!1504)) (index!6594 lt!123590)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!120953 () Bool)

(assert (=> start!23500 (=> (not res!120953) (not e!160030))))

(declare-fun valid!1419 (LongMapFixedSize!3648) Bool)

(assert (=> start!23500 (= res!120953 (valid!1419 thiss!1504))))

(assert (=> start!23500 e!160030))

(assert (=> start!23500 e!160040))

(assert (=> start!23500 true))

(declare-fun b!246685 () Bool)

(declare-fun Unit!7620 () Unit!7616)

(assert (=> b!246685 (= e!160034 Unit!7620)))

(declare-fun lt!123583 () Unit!7616)

(declare-fun lemmaArrayContainsKeyThenInListMap!181 (array!12174 array!12172 (_ BitVec 32) (_ BitVec 32) V!8227 V!8227 (_ BitVec 64) (_ BitVec 32) Int) Unit!7616)

(assert (=> b!246685 (= lt!123583 (lemmaArrayContainsKeyThenInListMap!181 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4565 thiss!1504)))))

(assert (=> b!246685 false))

(declare-fun bm!23068 () Bool)

(assert (=> bm!23068 (= call!23070 (inRange!0 (ite c!41250 (index!6594 lt!123590) (index!6597 lt!123590)) (mask!10693 thiss!1504)))))

(assert (= (and start!23500 res!120953) b!246666))

(assert (= (and b!246666 res!120951) b!246680))

(assert (= (and b!246680 res!120955) b!246665))

(assert (= (and b!246665 c!41251) b!246677))

(assert (= (and b!246665 (not c!41251)) b!246672))

(assert (= (and b!246672 c!41250) b!246668))

(assert (= (and b!246672 (not c!41250)) b!246684))

(assert (= (and b!246668 res!120947) b!246675))

(assert (= (and b!246675 res!120954) b!246671))

(assert (= (and b!246684 c!41252) b!246667))

(assert (= (and b!246684 (not c!41252)) b!246678))

(assert (= (and b!246667 res!120950) b!246681))

(assert (= (and b!246681 res!120952) b!246674))

(assert (= (or b!246668 b!246667) bm!23068))

(assert (= (or b!246671 b!246674) bm!23067))

(assert (= (and b!246665 res!120948) b!246676))

(assert (= (and b!246676 c!41253) b!246685))

(assert (= (and b!246676 (not c!41253)) b!246682))

(assert (= (and b!246676 (not res!120949)) b!246669))

(assert (= (and b!246683 condMapEmpty!10922) mapIsEmpty!10922))

(assert (= (and b!246683 (not condMapEmpty!10922)) mapNonEmpty!10922))

(assert (= (and mapNonEmpty!10922 ((_ is ValueCellFull!2874) mapValue!10922)) b!246670))

(assert (= (and b!246683 ((_ is ValueCellFull!2874) mapDefault!10922)) b!246673))

(assert (= b!246679 b!246683))

(assert (= start!23500 b!246679))

(declare-fun m!263983 () Bool)

(assert (=> b!246681 m!263983))

(declare-fun m!263985 () Bool)

(assert (=> b!246680 m!263985))

(declare-fun m!263987 () Bool)

(assert (=> bm!23068 m!263987))

(declare-fun m!263989 () Bool)

(assert (=> b!246676 m!263989))

(declare-fun m!263991 () Bool)

(assert (=> b!246676 m!263991))

(declare-fun m!263993 () Bool)

(assert (=> b!246676 m!263993))

(declare-fun m!263995 () Bool)

(assert (=> b!246676 m!263995))

(declare-fun m!263997 () Bool)

(assert (=> b!246676 m!263997))

(declare-fun m!263999 () Bool)

(assert (=> b!246676 m!263999))

(declare-fun m!264001 () Bool)

(assert (=> b!246676 m!264001))

(declare-fun m!264003 () Bool)

(assert (=> b!246676 m!264003))

(declare-fun m!264005 () Bool)

(assert (=> start!23500 m!264005))

(declare-fun m!264007 () Bool)

(assert (=> b!246679 m!264007))

(declare-fun m!264009 () Bool)

(assert (=> b!246679 m!264009))

(declare-fun m!264011 () Bool)

(assert (=> mapNonEmpty!10922 m!264011))

(declare-fun m!264013 () Bool)

(assert (=> b!246685 m!264013))

(declare-fun m!264015 () Bool)

(assert (=> b!246675 m!264015))

(declare-fun m!264017 () Bool)

(assert (=> b!246677 m!264017))

(assert (=> bm!23067 m!263991))

(declare-fun m!264019 () Bool)

(assert (=> b!246672 m!264019))

(declare-fun m!264021 () Bool)

(assert (=> b!246665 m!264021))

(declare-fun m!264023 () Bool)

(assert (=> b!246665 m!264023))

(assert (=> b!246665 m!264023))

(declare-fun m!264025 () Bool)

(assert (=> b!246665 m!264025))

(check-sat (not b!246677) (not b_next!6573) (not b!246679) (not start!23500) (not b!246680) tp_is_empty!6435 (not b!246676) (not b!246672) (not bm!23067) (not b!246665) b_and!13589 (not bm!23068) (not mapNonEmpty!10922) (not b!246685))
(check-sat b_and!13589 (not b_next!6573))
(get-model)

(declare-fun d!60317 () Bool)

(assert (=> d!60317 (= (array_inv!3805 (_keys!6685 thiss!1504)) (bvsge (size!6119 (_keys!6685 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!246679 d!60317))

(declare-fun d!60319 () Bool)

(assert (=> d!60319 (= (array_inv!3806 (_values!4548 thiss!1504)) (bvsge (size!6118 (_values!4548 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!246679 d!60319))

(declare-fun d!60321 () Bool)

(assert (=> d!60321 (= (inRange!0 index!297 (mask!10693 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10693 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!246665 d!60321))

(declare-fun d!60323 () Bool)

(declare-fun e!160093 () Bool)

(assert (=> d!60323 e!160093))

(declare-fun res!120985 () Bool)

(assert (=> d!60323 (=> res!120985 e!160093)))

(declare-fun lt!123629 () Bool)

(assert (=> d!60323 (= res!120985 (not lt!123629))))

(declare-fun lt!123628 () Bool)

(assert (=> d!60323 (= lt!123629 lt!123628)))

(declare-fun lt!123626 () Unit!7616)

(declare-fun e!160092 () Unit!7616)

(assert (=> d!60323 (= lt!123626 e!160092)))

(declare-fun c!41268 () Bool)

(assert (=> d!60323 (= c!41268 lt!123628)))

(declare-fun containsKey!282 (List!3701 (_ BitVec 64)) Bool)

(assert (=> d!60323 (= lt!123628 (containsKey!282 (toList!1877 (getCurrentListMap!1400 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4565 thiss!1504))) key!932))))

(assert (=> d!60323 (= (contains!1783 (getCurrentListMap!1400 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4565 thiss!1504)) key!932) lt!123629)))

(declare-fun b!246755 () Bool)

(declare-fun lt!123627 () Unit!7616)

(assert (=> b!246755 (= e!160092 lt!123627)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!231 (List!3701 (_ BitVec 64)) Unit!7616)

(assert (=> b!246755 (= lt!123627 (lemmaContainsKeyImpliesGetValueByKeyDefined!231 (toList!1877 (getCurrentListMap!1400 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4565 thiss!1504))) key!932))))

(declare-datatypes ((Option!296 0))(
  ( (Some!295 (v!5316 V!8227)) (None!294) )
))
(declare-fun isDefined!232 (Option!296) Bool)

(declare-fun getValueByKey!290 (List!3701 (_ BitVec 64)) Option!296)

(assert (=> b!246755 (isDefined!232 (getValueByKey!290 (toList!1877 (getCurrentListMap!1400 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4565 thiss!1504))) key!932))))

(declare-fun b!246756 () Bool)

(declare-fun Unit!7621 () Unit!7616)

(assert (=> b!246756 (= e!160092 Unit!7621)))

(declare-fun b!246757 () Bool)

(assert (=> b!246757 (= e!160093 (isDefined!232 (getValueByKey!290 (toList!1877 (getCurrentListMap!1400 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4565 thiss!1504))) key!932)))))

(assert (= (and d!60323 c!41268) b!246755))

(assert (= (and d!60323 (not c!41268)) b!246756))

(assert (= (and d!60323 (not res!120985)) b!246757))

(declare-fun m!264071 () Bool)

(assert (=> d!60323 m!264071))

(declare-fun m!264073 () Bool)

(assert (=> b!246755 m!264073))

(declare-fun m!264075 () Bool)

(assert (=> b!246755 m!264075))

(assert (=> b!246755 m!264075))

(declare-fun m!264077 () Bool)

(assert (=> b!246755 m!264077))

(assert (=> b!246757 m!264075))

(assert (=> b!246757 m!264075))

(assert (=> b!246757 m!264077))

(assert (=> b!246665 d!60323))

(declare-fun b!246800 () Bool)

(declare-fun e!160124 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!246800 (= e!160124 (validKeyInArray!0 (select (arr!5776 (_keys!6685 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!246801 () Bool)

(declare-fun e!160128 () Unit!7616)

(declare-fun lt!123690 () Unit!7616)

(assert (=> b!246801 (= e!160128 lt!123690)))

(declare-fun lt!123677 () ListLongMap!3723)

(declare-fun getCurrentListMapNoExtraKeys!552 (array!12174 array!12172 (_ BitVec 32) (_ BitVec 32) V!8227 V!8227 (_ BitVec 32) Int) ListLongMap!3723)

(assert (=> b!246801 (= lt!123677 (getCurrentListMapNoExtraKeys!552 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4565 thiss!1504)))))

(declare-fun lt!123675 () (_ BitVec 64))

(assert (=> b!246801 (= lt!123675 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!123695 () (_ BitVec 64))

(assert (=> b!246801 (= lt!123695 (select (arr!5776 (_keys!6685 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!123683 () Unit!7616)

(declare-fun addStillContains!209 (ListLongMap!3723 (_ BitVec 64) V!8227 (_ BitVec 64)) Unit!7616)

(assert (=> b!246801 (= lt!123683 (addStillContains!209 lt!123677 lt!123675 (zeroValue!4406 thiss!1504) lt!123695))))

(declare-fun +!655 (ListLongMap!3723 tuple2!4796) ListLongMap!3723)

(assert (=> b!246801 (contains!1783 (+!655 lt!123677 (tuple2!4797 lt!123675 (zeroValue!4406 thiss!1504))) lt!123695)))

(declare-fun lt!123682 () Unit!7616)

(assert (=> b!246801 (= lt!123682 lt!123683)))

(declare-fun lt!123680 () ListLongMap!3723)

(assert (=> b!246801 (= lt!123680 (getCurrentListMapNoExtraKeys!552 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4565 thiss!1504)))))

(declare-fun lt!123689 () (_ BitVec 64))

(assert (=> b!246801 (= lt!123689 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!123679 () (_ BitVec 64))

(assert (=> b!246801 (= lt!123679 (select (arr!5776 (_keys!6685 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!123688 () Unit!7616)

(declare-fun addApplyDifferent!209 (ListLongMap!3723 (_ BitVec 64) V!8227 (_ BitVec 64)) Unit!7616)

(assert (=> b!246801 (= lt!123688 (addApplyDifferent!209 lt!123680 lt!123689 (minValue!4406 thiss!1504) lt!123679))))

(declare-fun apply!233 (ListLongMap!3723 (_ BitVec 64)) V!8227)

(assert (=> b!246801 (= (apply!233 (+!655 lt!123680 (tuple2!4797 lt!123689 (minValue!4406 thiss!1504))) lt!123679) (apply!233 lt!123680 lt!123679))))

(declare-fun lt!123691 () Unit!7616)

(assert (=> b!246801 (= lt!123691 lt!123688)))

(declare-fun lt!123686 () ListLongMap!3723)

(assert (=> b!246801 (= lt!123686 (getCurrentListMapNoExtraKeys!552 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4565 thiss!1504)))))

(declare-fun lt!123687 () (_ BitVec 64))

(assert (=> b!246801 (= lt!123687 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!123692 () (_ BitVec 64))

(assert (=> b!246801 (= lt!123692 (select (arr!5776 (_keys!6685 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!123685 () Unit!7616)

(assert (=> b!246801 (= lt!123685 (addApplyDifferent!209 lt!123686 lt!123687 (zeroValue!4406 thiss!1504) lt!123692))))

(assert (=> b!246801 (= (apply!233 (+!655 lt!123686 (tuple2!4797 lt!123687 (zeroValue!4406 thiss!1504))) lt!123692) (apply!233 lt!123686 lt!123692))))

(declare-fun lt!123693 () Unit!7616)

(assert (=> b!246801 (= lt!123693 lt!123685)))

(declare-fun lt!123678 () ListLongMap!3723)

(assert (=> b!246801 (= lt!123678 (getCurrentListMapNoExtraKeys!552 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4565 thiss!1504)))))

(declare-fun lt!123694 () (_ BitVec 64))

(assert (=> b!246801 (= lt!123694 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!123684 () (_ BitVec 64))

(assert (=> b!246801 (= lt!123684 (select (arr!5776 (_keys!6685 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!246801 (= lt!123690 (addApplyDifferent!209 lt!123678 lt!123694 (minValue!4406 thiss!1504) lt!123684))))

(assert (=> b!246801 (= (apply!233 (+!655 lt!123678 (tuple2!4797 lt!123694 (minValue!4406 thiss!1504))) lt!123684) (apply!233 lt!123678 lt!123684))))

(declare-fun b!246802 () Bool)

(declare-fun e!160129 () Bool)

(declare-fun lt!123674 () ListLongMap!3723)

(assert (=> b!246802 (= e!160129 (= (apply!233 lt!123674 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4406 thiss!1504)))))

(declare-fun d!60325 () Bool)

(declare-fun e!160127 () Bool)

(assert (=> d!60325 e!160127))

(declare-fun res!121012 () Bool)

(assert (=> d!60325 (=> (not res!121012) (not e!160127))))

(assert (=> d!60325 (= res!121012 (or (bvsge #b00000000000000000000000000000000 (size!6119 (_keys!6685 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6119 (_keys!6685 thiss!1504))))))))

(declare-fun lt!123681 () ListLongMap!3723)

(assert (=> d!60325 (= lt!123674 lt!123681)))

(declare-fun lt!123676 () Unit!7616)

(assert (=> d!60325 (= lt!123676 e!160128)))

(declare-fun c!41282 () Bool)

(assert (=> d!60325 (= c!41282 e!160124)))

(declare-fun res!121010 () Bool)

(assert (=> d!60325 (=> (not res!121010) (not e!160124))))

(assert (=> d!60325 (= res!121010 (bvslt #b00000000000000000000000000000000 (size!6119 (_keys!6685 thiss!1504))))))

(declare-fun e!160120 () ListLongMap!3723)

(assert (=> d!60325 (= lt!123681 e!160120)))

(declare-fun c!41281 () Bool)

(assert (=> d!60325 (= c!41281 (and (not (= (bvand (extraKeys!4302 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4302 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!60325 (validMask!0 (mask!10693 thiss!1504))))

(assert (=> d!60325 (= (getCurrentListMap!1400 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4565 thiss!1504)) lt!123674)))

(declare-fun b!246803 () Bool)

(declare-fun e!160130 () Bool)

(declare-fun e!160123 () Bool)

(assert (=> b!246803 (= e!160130 e!160123)))

(declare-fun res!121004 () Bool)

(assert (=> b!246803 (=> (not res!121004) (not e!160123))))

(assert (=> b!246803 (= res!121004 (contains!1783 lt!123674 (select (arr!5776 (_keys!6685 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!246803 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6119 (_keys!6685 thiss!1504))))))

(declare-fun bm!23089 () Bool)

(declare-fun call!23098 () ListLongMap!3723)

(declare-fun call!23097 () ListLongMap!3723)

(assert (=> bm!23089 (= call!23098 call!23097)))

(declare-fun b!246804 () Bool)

(declare-fun Unit!7622 () Unit!7616)

(assert (=> b!246804 (= e!160128 Unit!7622)))

(declare-fun b!246805 () Bool)

(declare-fun e!160125 () ListLongMap!3723)

(assert (=> b!246805 (= e!160120 e!160125)))

(declare-fun c!41283 () Bool)

(assert (=> b!246805 (= c!41283 (and (not (= (bvand (extraKeys!4302 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4302 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!23093 () ListLongMap!3723)

(declare-fun bm!23090 () Bool)

(declare-fun call!23096 () ListLongMap!3723)

(declare-fun call!23092 () ListLongMap!3723)

(assert (=> bm!23090 (= call!23097 (+!655 (ite c!41281 call!23093 (ite c!41283 call!23092 call!23096)) (ite (or c!41281 c!41283) (tuple2!4797 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4406 thiss!1504)) (tuple2!4797 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4406 thiss!1504)))))))

(declare-fun bm!23091 () Bool)

(assert (=> bm!23091 (= call!23093 (getCurrentListMapNoExtraKeys!552 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4565 thiss!1504)))))

(declare-fun bm!23092 () Bool)

(assert (=> bm!23092 (= call!23092 call!23093)))

(declare-fun b!246806 () Bool)

(declare-fun e!160122 () Bool)

(assert (=> b!246806 (= e!160122 e!160129)))

(declare-fun res!121005 () Bool)

(declare-fun call!23094 () Bool)

(assert (=> b!246806 (= res!121005 call!23094)))

(assert (=> b!246806 (=> (not res!121005) (not e!160129))))

(declare-fun b!246807 () Bool)

(assert (=> b!246807 (= e!160120 (+!655 call!23097 (tuple2!4797 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4406 thiss!1504))))))

(declare-fun b!246808 () Bool)

(declare-fun e!160132 () ListLongMap!3723)

(assert (=> b!246808 (= e!160132 call!23096)))

(declare-fun b!246809 () Bool)

(declare-fun e!160126 () Bool)

(assert (=> b!246809 (= e!160127 e!160126)))

(declare-fun c!41286 () Bool)

(assert (=> b!246809 (= c!41286 (not (= (bvand (extraKeys!4302 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!246810 () Bool)

(assert (=> b!246810 (= e!160125 call!23098)))

(declare-fun b!246811 () Bool)

(declare-fun res!121009 () Bool)

(assert (=> b!246811 (=> (not res!121009) (not e!160127))))

(assert (=> b!246811 (= res!121009 e!160130)))

(declare-fun res!121006 () Bool)

(assert (=> b!246811 (=> res!121006 e!160130)))

(declare-fun e!160131 () Bool)

(assert (=> b!246811 (= res!121006 (not e!160131))))

(declare-fun res!121011 () Bool)

(assert (=> b!246811 (=> (not res!121011) (not e!160131))))

(assert (=> b!246811 (= res!121011 (bvslt #b00000000000000000000000000000000 (size!6119 (_keys!6685 thiss!1504))))))

(declare-fun b!246812 () Bool)

(assert (=> b!246812 (= e!160132 call!23098)))

(declare-fun b!246813 () Bool)

(declare-fun c!41284 () Bool)

(assert (=> b!246813 (= c!41284 (and (not (= (bvand (extraKeys!4302 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4302 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!246813 (= e!160125 e!160132)))

(declare-fun b!246814 () Bool)

(assert (=> b!246814 (= e!160131 (validKeyInArray!0 (select (arr!5776 (_keys!6685 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!246815 () Bool)

(declare-fun res!121007 () Bool)

(assert (=> b!246815 (=> (not res!121007) (not e!160127))))

(assert (=> b!246815 (= res!121007 e!160122)))

(declare-fun c!41285 () Bool)

(assert (=> b!246815 (= c!41285 (not (= (bvand (extraKeys!4302 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!246816 () Bool)

(declare-fun get!2967 (ValueCell!2874 V!8227) V!8227)

(declare-fun dynLambda!571 (Int (_ BitVec 64)) V!8227)

(assert (=> b!246816 (= e!160123 (= (apply!233 lt!123674 (select (arr!5776 (_keys!6685 thiss!1504)) #b00000000000000000000000000000000)) (get!2967 (select (arr!5775 (_values!4548 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!571 (defaultEntry!4565 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!246816 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6118 (_values!4548 thiss!1504))))))

(assert (=> b!246816 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6119 (_keys!6685 thiss!1504))))))

(declare-fun b!246817 () Bool)

(assert (=> b!246817 (= e!160122 (not call!23094))))

(declare-fun bm!23093 () Bool)

(declare-fun call!23095 () Bool)

(assert (=> bm!23093 (= call!23095 (contains!1783 lt!123674 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!23094 () Bool)

(assert (=> bm!23094 (= call!23096 call!23092)))

(declare-fun b!246818 () Bool)

(assert (=> b!246818 (= e!160126 (not call!23095))))

(declare-fun b!246819 () Bool)

(declare-fun e!160121 () Bool)

(assert (=> b!246819 (= e!160121 (= (apply!233 lt!123674 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4406 thiss!1504)))))

(declare-fun bm!23095 () Bool)

(assert (=> bm!23095 (= call!23094 (contains!1783 lt!123674 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!246820 () Bool)

(assert (=> b!246820 (= e!160126 e!160121)))

(declare-fun res!121008 () Bool)

(assert (=> b!246820 (= res!121008 call!23095)))

(assert (=> b!246820 (=> (not res!121008) (not e!160121))))

(assert (= (and d!60325 c!41281) b!246807))

(assert (= (and d!60325 (not c!41281)) b!246805))

(assert (= (and b!246805 c!41283) b!246810))

(assert (= (and b!246805 (not c!41283)) b!246813))

(assert (= (and b!246813 c!41284) b!246812))

(assert (= (and b!246813 (not c!41284)) b!246808))

(assert (= (or b!246812 b!246808) bm!23094))

(assert (= (or b!246810 bm!23094) bm!23092))

(assert (= (or b!246810 b!246812) bm!23089))

(assert (= (or b!246807 bm!23092) bm!23091))

(assert (= (or b!246807 bm!23089) bm!23090))

(assert (= (and d!60325 res!121010) b!246800))

(assert (= (and d!60325 c!41282) b!246801))

(assert (= (and d!60325 (not c!41282)) b!246804))

(assert (= (and d!60325 res!121012) b!246811))

(assert (= (and b!246811 res!121011) b!246814))

(assert (= (and b!246811 (not res!121006)) b!246803))

(assert (= (and b!246803 res!121004) b!246816))

(assert (= (and b!246811 res!121009) b!246815))

(assert (= (and b!246815 c!41285) b!246806))

(assert (= (and b!246815 (not c!41285)) b!246817))

(assert (= (and b!246806 res!121005) b!246802))

(assert (= (or b!246806 b!246817) bm!23095))

(assert (= (and b!246815 res!121007) b!246809))

(assert (= (and b!246809 c!41286) b!246820))

(assert (= (and b!246809 (not c!41286)) b!246818))

(assert (= (and b!246820 res!121008) b!246819))

(assert (= (or b!246820 b!246818) bm!23093))

(declare-fun b_lambda!8073 () Bool)

(assert (=> (not b_lambda!8073) (not b!246816)))

(declare-fun t!8731 () Bool)

(declare-fun tb!2987 () Bool)

(assert (=> (and b!246679 (= (defaultEntry!4565 thiss!1504) (defaultEntry!4565 thiss!1504)) t!8731) tb!2987))

(declare-fun result!5267 () Bool)

(assert (=> tb!2987 (= result!5267 tp_is_empty!6435)))

(assert (=> b!246816 t!8731))

(declare-fun b_and!13593 () Bool)

(assert (= b_and!13589 (and (=> t!8731 result!5267) b_and!13593)))

(assert (=> d!60325 m!263989))

(declare-fun m!264079 () Bool)

(assert (=> b!246807 m!264079))

(declare-fun m!264081 () Bool)

(assert (=> b!246802 m!264081))

(declare-fun m!264083 () Bool)

(assert (=> bm!23095 m!264083))

(declare-fun m!264085 () Bool)

(assert (=> b!246819 m!264085))

(declare-fun m!264087 () Bool)

(assert (=> b!246800 m!264087))

(assert (=> b!246800 m!264087))

(declare-fun m!264089 () Bool)

(assert (=> b!246800 m!264089))

(declare-fun m!264091 () Bool)

(assert (=> bm!23091 m!264091))

(declare-fun m!264093 () Bool)

(assert (=> bm!23093 m!264093))

(declare-fun m!264095 () Bool)

(assert (=> b!246801 m!264095))

(declare-fun m!264097 () Bool)

(assert (=> b!246801 m!264097))

(declare-fun m!264099 () Bool)

(assert (=> b!246801 m!264099))

(assert (=> b!246801 m!264087))

(declare-fun m!264101 () Bool)

(assert (=> b!246801 m!264101))

(declare-fun m!264103 () Bool)

(assert (=> b!246801 m!264103))

(assert (=> b!246801 m!264095))

(assert (=> b!246801 m!264099))

(declare-fun m!264105 () Bool)

(assert (=> b!246801 m!264105))

(declare-fun m!264107 () Bool)

(assert (=> b!246801 m!264107))

(assert (=> b!246801 m!264101))

(declare-fun m!264109 () Bool)

(assert (=> b!246801 m!264109))

(declare-fun m!264111 () Bool)

(assert (=> b!246801 m!264111))

(declare-fun m!264113 () Bool)

(assert (=> b!246801 m!264113))

(declare-fun m!264115 () Bool)

(assert (=> b!246801 m!264115))

(declare-fun m!264117 () Bool)

(assert (=> b!246801 m!264117))

(declare-fun m!264119 () Bool)

(assert (=> b!246801 m!264119))

(assert (=> b!246801 m!264119))

(declare-fun m!264121 () Bool)

(assert (=> b!246801 m!264121))

(declare-fun m!264123 () Bool)

(assert (=> b!246801 m!264123))

(assert (=> b!246801 m!264091))

(declare-fun m!264125 () Bool)

(assert (=> bm!23090 m!264125))

(assert (=> b!246803 m!264087))

(assert (=> b!246803 m!264087))

(declare-fun m!264127 () Bool)

(assert (=> b!246803 m!264127))

(declare-fun m!264129 () Bool)

(assert (=> b!246816 m!264129))

(declare-fun m!264131 () Bool)

(assert (=> b!246816 m!264131))

(assert (=> b!246816 m!264087))

(assert (=> b!246816 m!264087))

(declare-fun m!264133 () Bool)

(assert (=> b!246816 m!264133))

(assert (=> b!246816 m!264131))

(assert (=> b!246816 m!264129))

(declare-fun m!264135 () Bool)

(assert (=> b!246816 m!264135))

(assert (=> b!246814 m!264087))

(assert (=> b!246814 m!264087))

(assert (=> b!246814 m!264089))

(assert (=> b!246665 d!60325))

(declare-fun b!246832 () Bool)

(declare-fun res!121023 () Bool)

(declare-fun e!160137 () Bool)

(assert (=> b!246832 (=> (not res!121023) (not e!160137))))

(assert (=> b!246832 (= res!121023 (validKeyInArray!0 key!932))))

(declare-fun e!160138 () Bool)

(declare-fun b!246834 () Bool)

(assert (=> b!246834 (= e!160138 (= (arrayCountValidKeys!0 (array!12175 (store (arr!5776 (_keys!6685 thiss!1504)) index!297 key!932) (size!6119 (_keys!6685 thiss!1504))) #b00000000000000000000000000000000 (size!6119 (_keys!6685 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6685 thiss!1504) #b00000000000000000000000000000000 (size!6119 (_keys!6685 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun b!246833 () Bool)

(assert (=> b!246833 (= e!160137 (bvslt (size!6119 (_keys!6685 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun d!60327 () Bool)

(assert (=> d!60327 e!160138))

(declare-fun res!121024 () Bool)

(assert (=> d!60327 (=> (not res!121024) (not e!160138))))

(assert (=> d!60327 (= res!121024 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6119 (_keys!6685 thiss!1504)))))))

(declare-fun lt!123698 () Unit!7616)

(declare-fun choose!1 (array!12174 (_ BitVec 32) (_ BitVec 64)) Unit!7616)

(assert (=> d!60327 (= lt!123698 (choose!1 (_keys!6685 thiss!1504) index!297 key!932))))

(assert (=> d!60327 e!160137))

(declare-fun res!121021 () Bool)

(assert (=> d!60327 (=> (not res!121021) (not e!160137))))

(assert (=> d!60327 (= res!121021 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6119 (_keys!6685 thiss!1504)))))))

(assert (=> d!60327 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6685 thiss!1504) index!297 key!932) lt!123698)))

(declare-fun b!246831 () Bool)

(declare-fun res!121022 () Bool)

(assert (=> b!246831 (=> (not res!121022) (not e!160137))))

(assert (=> b!246831 (= res!121022 (not (validKeyInArray!0 (select (arr!5776 (_keys!6685 thiss!1504)) index!297))))))

(assert (= (and d!60327 res!121021) b!246831))

(assert (= (and b!246831 res!121022) b!246832))

(assert (= (and b!246832 res!121023) b!246833))

(assert (= (and d!60327 res!121024) b!246834))

(declare-fun m!264137 () Bool)

(assert (=> b!246832 m!264137))

(assert (=> b!246834 m!263999))

(declare-fun m!264139 () Bool)

(assert (=> b!246834 m!264139))

(assert (=> b!246834 m!264001))

(declare-fun m!264141 () Bool)

(assert (=> d!60327 m!264141))

(declare-fun m!264143 () Bool)

(assert (=> b!246831 m!264143))

(assert (=> b!246831 m!264143))

(declare-fun m!264145 () Bool)

(assert (=> b!246831 m!264145))

(assert (=> b!246676 d!60327))

(declare-fun d!60329 () Bool)

(declare-fun res!121029 () Bool)

(declare-fun e!160143 () Bool)

(assert (=> d!60329 (=> res!121029 e!160143)))

(assert (=> d!60329 (= res!121029 (= (select (arr!5776 (_keys!6685 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!60329 (= (arrayContainsKey!0 (_keys!6685 thiss!1504) key!932 #b00000000000000000000000000000000) e!160143)))

(declare-fun b!246839 () Bool)

(declare-fun e!160144 () Bool)

(assert (=> b!246839 (= e!160143 e!160144)))

(declare-fun res!121030 () Bool)

(assert (=> b!246839 (=> (not res!121030) (not e!160144))))

(assert (=> b!246839 (= res!121030 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6119 (_keys!6685 thiss!1504))))))

(declare-fun b!246840 () Bool)

(assert (=> b!246840 (= e!160144 (arrayContainsKey!0 (_keys!6685 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!60329 (not res!121029)) b!246839))

(assert (= (and b!246839 res!121030) b!246840))

(assert (=> d!60329 m!264087))

(declare-fun m!264147 () Bool)

(assert (=> b!246840 m!264147))

(assert (=> b!246676 d!60329))

(declare-fun b!246851 () Bool)

(declare-fun e!160155 () Bool)

(declare-fun call!23101 () Bool)

(assert (=> b!246851 (= e!160155 call!23101)))

(declare-fun bm!23098 () Bool)

(declare-fun c!41289 () Bool)

(assert (=> bm!23098 (= call!23101 (arrayNoDuplicates!0 lt!123586 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!41289 (Cons!3698 (select (arr!5776 lt!123586) #b00000000000000000000000000000000) Nil!3699) Nil!3699)))))

(declare-fun d!60331 () Bool)

(declare-fun res!121038 () Bool)

(declare-fun e!160153 () Bool)

(assert (=> d!60331 (=> res!121038 e!160153)))

(assert (=> d!60331 (= res!121038 (bvsge #b00000000000000000000000000000000 (size!6119 lt!123586)))))

(assert (=> d!60331 (= (arrayNoDuplicates!0 lt!123586 #b00000000000000000000000000000000 Nil!3699) e!160153)))

(declare-fun b!246852 () Bool)

(declare-fun e!160156 () Bool)

(declare-fun contains!1784 (List!3702 (_ BitVec 64)) Bool)

(assert (=> b!246852 (= e!160156 (contains!1784 Nil!3699 (select (arr!5776 lt!123586) #b00000000000000000000000000000000)))))

(declare-fun b!246853 () Bool)

(assert (=> b!246853 (= e!160155 call!23101)))

(declare-fun b!246854 () Bool)

(declare-fun e!160154 () Bool)

(assert (=> b!246854 (= e!160154 e!160155)))

(assert (=> b!246854 (= c!41289 (validKeyInArray!0 (select (arr!5776 lt!123586) #b00000000000000000000000000000000)))))

(declare-fun b!246855 () Bool)

(assert (=> b!246855 (= e!160153 e!160154)))

(declare-fun res!121039 () Bool)

(assert (=> b!246855 (=> (not res!121039) (not e!160154))))

(assert (=> b!246855 (= res!121039 (not e!160156))))

(declare-fun res!121037 () Bool)

(assert (=> b!246855 (=> (not res!121037) (not e!160156))))

(assert (=> b!246855 (= res!121037 (validKeyInArray!0 (select (arr!5776 lt!123586) #b00000000000000000000000000000000)))))

(assert (= (and d!60331 (not res!121038)) b!246855))

(assert (= (and b!246855 res!121037) b!246852))

(assert (= (and b!246855 res!121039) b!246854))

(assert (= (and b!246854 c!41289) b!246853))

(assert (= (and b!246854 (not c!41289)) b!246851))

(assert (= (or b!246853 b!246851) bm!23098))

(declare-fun m!264149 () Bool)

(assert (=> bm!23098 m!264149))

(declare-fun m!264151 () Bool)

(assert (=> bm!23098 m!264151))

(assert (=> b!246852 m!264149))

(assert (=> b!246852 m!264149))

(declare-fun m!264153 () Bool)

(assert (=> b!246852 m!264153))

(assert (=> b!246854 m!264149))

(assert (=> b!246854 m!264149))

(declare-fun m!264155 () Bool)

(assert (=> b!246854 m!264155))

(assert (=> b!246855 m!264149))

(assert (=> b!246855 m!264149))

(assert (=> b!246855 m!264155))

(assert (=> b!246676 d!60331))

(declare-fun b!246864 () Bool)

(declare-fun e!160162 () (_ BitVec 32))

(declare-fun call!23104 () (_ BitVec 32))

(assert (=> b!246864 (= e!160162 (bvadd #b00000000000000000000000000000001 call!23104))))

(declare-fun b!246865 () Bool)

(declare-fun e!160161 () (_ BitVec 32))

(assert (=> b!246865 (= e!160161 e!160162)))

(declare-fun c!41295 () Bool)

(assert (=> b!246865 (= c!41295 (validKeyInArray!0 (select (arr!5776 (_keys!6685 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!60333 () Bool)

(declare-fun lt!123701 () (_ BitVec 32))

(assert (=> d!60333 (and (bvsge lt!123701 #b00000000000000000000000000000000) (bvsle lt!123701 (bvsub (size!6119 (_keys!6685 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!60333 (= lt!123701 e!160161)))

(declare-fun c!41294 () Bool)

(assert (=> d!60333 (= c!41294 (bvsge #b00000000000000000000000000000000 (size!6119 (_keys!6685 thiss!1504))))))

(assert (=> d!60333 (and (bvsle #b00000000000000000000000000000000 (size!6119 (_keys!6685 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6119 (_keys!6685 thiss!1504)) (size!6119 (_keys!6685 thiss!1504))))))

(assert (=> d!60333 (= (arrayCountValidKeys!0 (_keys!6685 thiss!1504) #b00000000000000000000000000000000 (size!6119 (_keys!6685 thiss!1504))) lt!123701)))

(declare-fun b!246866 () Bool)

(assert (=> b!246866 (= e!160162 call!23104)))

(declare-fun bm!23101 () Bool)

(assert (=> bm!23101 (= call!23104 (arrayCountValidKeys!0 (_keys!6685 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6119 (_keys!6685 thiss!1504))))))

(declare-fun b!246867 () Bool)

(assert (=> b!246867 (= e!160161 #b00000000000000000000000000000000)))

(assert (= (and d!60333 c!41294) b!246867))

(assert (= (and d!60333 (not c!41294)) b!246865))

(assert (= (and b!246865 c!41295) b!246864))

(assert (= (and b!246865 (not c!41295)) b!246866))

(assert (= (or b!246864 b!246866) bm!23101))

(assert (=> b!246865 m!264087))

(assert (=> b!246865 m!264087))

(assert (=> b!246865 m!264089))

(declare-fun m!264157 () Bool)

(assert (=> bm!23101 m!264157))

(assert (=> b!246676 d!60333))

(declare-fun d!60335 () Bool)

(assert (=> d!60335 (= (validMask!0 (mask!10693 thiss!1504)) (and (or (= (mask!10693 thiss!1504) #b00000000000000000000000000000111) (= (mask!10693 thiss!1504) #b00000000000000000000000000001111) (= (mask!10693 thiss!1504) #b00000000000000000000000000011111) (= (mask!10693 thiss!1504) #b00000000000000000000000000111111) (= (mask!10693 thiss!1504) #b00000000000000000000000001111111) (= (mask!10693 thiss!1504) #b00000000000000000000000011111111) (= (mask!10693 thiss!1504) #b00000000000000000000000111111111) (= (mask!10693 thiss!1504) #b00000000000000000000001111111111) (= (mask!10693 thiss!1504) #b00000000000000000000011111111111) (= (mask!10693 thiss!1504) #b00000000000000000000111111111111) (= (mask!10693 thiss!1504) #b00000000000000000001111111111111) (= (mask!10693 thiss!1504) #b00000000000000000011111111111111) (= (mask!10693 thiss!1504) #b00000000000000000111111111111111) (= (mask!10693 thiss!1504) #b00000000000000001111111111111111) (= (mask!10693 thiss!1504) #b00000000000000011111111111111111) (= (mask!10693 thiss!1504) #b00000000000000111111111111111111) (= (mask!10693 thiss!1504) #b00000000000001111111111111111111) (= (mask!10693 thiss!1504) #b00000000000011111111111111111111) (= (mask!10693 thiss!1504) #b00000000000111111111111111111111) (= (mask!10693 thiss!1504) #b00000000001111111111111111111111) (= (mask!10693 thiss!1504) #b00000000011111111111111111111111) (= (mask!10693 thiss!1504) #b00000000111111111111111111111111) (= (mask!10693 thiss!1504) #b00000001111111111111111111111111) (= (mask!10693 thiss!1504) #b00000011111111111111111111111111) (= (mask!10693 thiss!1504) #b00000111111111111111111111111111) (= (mask!10693 thiss!1504) #b00001111111111111111111111111111) (= (mask!10693 thiss!1504) #b00011111111111111111111111111111) (= (mask!10693 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10693 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!246676 d!60335))

(declare-fun b!246868 () Bool)

(declare-fun e!160164 () (_ BitVec 32))

(declare-fun call!23105 () (_ BitVec 32))

(assert (=> b!246868 (= e!160164 (bvadd #b00000000000000000000000000000001 call!23105))))

(declare-fun b!246869 () Bool)

(declare-fun e!160163 () (_ BitVec 32))

(assert (=> b!246869 (= e!160163 e!160164)))

(declare-fun c!41297 () Bool)

(assert (=> b!246869 (= c!41297 (validKeyInArray!0 (select (arr!5776 lt!123586) #b00000000000000000000000000000000)))))

(declare-fun d!60337 () Bool)

(declare-fun lt!123702 () (_ BitVec 32))

(assert (=> d!60337 (and (bvsge lt!123702 #b00000000000000000000000000000000) (bvsle lt!123702 (bvsub (size!6119 lt!123586) #b00000000000000000000000000000000)))))

(assert (=> d!60337 (= lt!123702 e!160163)))

(declare-fun c!41296 () Bool)

(assert (=> d!60337 (= c!41296 (bvsge #b00000000000000000000000000000000 (size!6119 (_keys!6685 thiss!1504))))))

(assert (=> d!60337 (and (bvsle #b00000000000000000000000000000000 (size!6119 (_keys!6685 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6119 (_keys!6685 thiss!1504)) (size!6119 lt!123586)))))

(assert (=> d!60337 (= (arrayCountValidKeys!0 lt!123586 #b00000000000000000000000000000000 (size!6119 (_keys!6685 thiss!1504))) lt!123702)))

(declare-fun b!246870 () Bool)

(assert (=> b!246870 (= e!160164 call!23105)))

(declare-fun bm!23102 () Bool)

(assert (=> bm!23102 (= call!23105 (arrayCountValidKeys!0 lt!123586 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6119 (_keys!6685 thiss!1504))))))

(declare-fun b!246871 () Bool)

(assert (=> b!246871 (= e!160163 #b00000000000000000000000000000000)))

(assert (= (and d!60337 c!41296) b!246871))

(assert (= (and d!60337 (not c!41296)) b!246869))

(assert (= (and b!246869 c!41297) b!246868))

(assert (= (and b!246869 (not c!41297)) b!246870))

(assert (= (or b!246868 b!246870) bm!23102))

(assert (=> b!246869 m!264149))

(assert (=> b!246869 m!264149))

(assert (=> b!246869 m!264155))

(declare-fun m!264159 () Bool)

(assert (=> bm!23102 m!264159))

(assert (=> b!246676 d!60337))

(declare-fun d!60339 () Bool)

(declare-fun e!160167 () Bool)

(assert (=> d!60339 e!160167))

(declare-fun res!121042 () Bool)

(assert (=> d!60339 (=> (not res!121042) (not e!160167))))

(assert (=> d!60339 (= res!121042 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6119 (_keys!6685 thiss!1504)))))))

(declare-fun lt!123705 () Unit!7616)

(declare-fun choose!41 (array!12174 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3702) Unit!7616)

(assert (=> d!60339 (= lt!123705 (choose!41 (_keys!6685 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3699))))

(assert (=> d!60339 (bvslt (size!6119 (_keys!6685 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!60339 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6685 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3699) lt!123705)))

(declare-fun b!246874 () Bool)

(assert (=> b!246874 (= e!160167 (arrayNoDuplicates!0 (array!12175 (store (arr!5776 (_keys!6685 thiss!1504)) index!297 key!932) (size!6119 (_keys!6685 thiss!1504))) #b00000000000000000000000000000000 Nil!3699))))

(assert (= (and d!60339 res!121042) b!246874))

(declare-fun m!264161 () Bool)

(assert (=> d!60339 m!264161))

(assert (=> b!246874 m!263999))

(declare-fun m!264163 () Bool)

(assert (=> b!246874 m!264163))

(assert (=> b!246676 d!60339))

(assert (=> bm!23067 d!60329))

(declare-fun b!246887 () Bool)

(declare-fun e!160176 () SeekEntryResult!1106)

(declare-fun lt!123714 () SeekEntryResult!1106)

(assert (=> b!246887 (= e!160176 (MissingZero!1106 (index!6596 lt!123714)))))

(declare-fun b!246888 () Bool)

(declare-fun e!160174 () SeekEntryResult!1106)

(assert (=> b!246888 (= e!160174 (Found!1106 (index!6596 lt!123714)))))

(declare-fun b!246889 () Bool)

(declare-fun e!160175 () SeekEntryResult!1106)

(assert (=> b!246889 (= e!160175 e!160174)))

(declare-fun lt!123713 () (_ BitVec 64))

(assert (=> b!246889 (= lt!123713 (select (arr!5776 (_keys!6685 thiss!1504)) (index!6596 lt!123714)))))

(declare-fun c!41305 () Bool)

(assert (=> b!246889 (= c!41305 (= lt!123713 key!932))))

(declare-fun b!246890 () Bool)

(declare-fun c!41304 () Bool)

(assert (=> b!246890 (= c!41304 (= lt!123713 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!246890 (= e!160174 e!160176)))

(declare-fun d!60341 () Bool)

(declare-fun lt!123712 () SeekEntryResult!1106)

(assert (=> d!60341 (and (or ((_ is Undefined!1106) lt!123712) (not ((_ is Found!1106) lt!123712)) (and (bvsge (index!6595 lt!123712) #b00000000000000000000000000000000) (bvslt (index!6595 lt!123712) (size!6119 (_keys!6685 thiss!1504))))) (or ((_ is Undefined!1106) lt!123712) ((_ is Found!1106) lt!123712) (not ((_ is MissingZero!1106) lt!123712)) (and (bvsge (index!6594 lt!123712) #b00000000000000000000000000000000) (bvslt (index!6594 lt!123712) (size!6119 (_keys!6685 thiss!1504))))) (or ((_ is Undefined!1106) lt!123712) ((_ is Found!1106) lt!123712) ((_ is MissingZero!1106) lt!123712) (not ((_ is MissingVacant!1106) lt!123712)) (and (bvsge (index!6597 lt!123712) #b00000000000000000000000000000000) (bvslt (index!6597 lt!123712) (size!6119 (_keys!6685 thiss!1504))))) (or ((_ is Undefined!1106) lt!123712) (ite ((_ is Found!1106) lt!123712) (= (select (arr!5776 (_keys!6685 thiss!1504)) (index!6595 lt!123712)) key!932) (ite ((_ is MissingZero!1106) lt!123712) (= (select (arr!5776 (_keys!6685 thiss!1504)) (index!6594 lt!123712)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1106) lt!123712) (= (select (arr!5776 (_keys!6685 thiss!1504)) (index!6597 lt!123712)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!60341 (= lt!123712 e!160175)))

(declare-fun c!41306 () Bool)

(assert (=> d!60341 (= c!41306 (and ((_ is Intermediate!1106) lt!123714) (undefined!1918 lt!123714)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12174 (_ BitVec 32)) SeekEntryResult!1106)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!60341 (= lt!123714 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10693 thiss!1504)) key!932 (_keys!6685 thiss!1504) (mask!10693 thiss!1504)))))

(assert (=> d!60341 (validMask!0 (mask!10693 thiss!1504))))

(assert (=> d!60341 (= (seekEntryOrOpen!0 key!932 (_keys!6685 thiss!1504) (mask!10693 thiss!1504)) lt!123712)))

(declare-fun b!246891 () Bool)

(assert (=> b!246891 (= e!160175 Undefined!1106)))

(declare-fun b!246892 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12174 (_ BitVec 32)) SeekEntryResult!1106)

(assert (=> b!246892 (= e!160176 (seekKeyOrZeroReturnVacant!0 (x!24498 lt!123714) (index!6596 lt!123714) (index!6596 lt!123714) key!932 (_keys!6685 thiss!1504) (mask!10693 thiss!1504)))))

(assert (= (and d!60341 c!41306) b!246891))

(assert (= (and d!60341 (not c!41306)) b!246889))

(assert (= (and b!246889 c!41305) b!246888))

(assert (= (and b!246889 (not c!41305)) b!246890))

(assert (= (and b!246890 c!41304) b!246887))

(assert (= (and b!246890 (not c!41304)) b!246892))

(declare-fun m!264165 () Bool)

(assert (=> b!246889 m!264165))

(declare-fun m!264167 () Bool)

(assert (=> d!60341 m!264167))

(declare-fun m!264169 () Bool)

(assert (=> d!60341 m!264169))

(declare-fun m!264171 () Bool)

(assert (=> d!60341 m!264171))

(assert (=> d!60341 m!264167))

(assert (=> d!60341 m!263989))

(declare-fun m!264173 () Bool)

(assert (=> d!60341 m!264173))

(declare-fun m!264175 () Bool)

(assert (=> d!60341 m!264175))

(declare-fun m!264177 () Bool)

(assert (=> b!246892 m!264177))

(assert (=> b!246680 d!60341))

(declare-fun d!60343 () Bool)

(assert (=> d!60343 (contains!1783 (getCurrentListMap!1400 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4565 thiss!1504)) key!932)))

(declare-fun lt!123717 () Unit!7616)

(declare-fun choose!1166 (array!12174 array!12172 (_ BitVec 32) (_ BitVec 32) V!8227 V!8227 (_ BitVec 64) (_ BitVec 32) Int) Unit!7616)

(assert (=> d!60343 (= lt!123717 (choose!1166 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4565 thiss!1504)))))

(assert (=> d!60343 (validMask!0 (mask!10693 thiss!1504))))

(assert (=> d!60343 (= (lemmaArrayContainsKeyThenInListMap!181 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4565 thiss!1504)) lt!123717)))

(declare-fun bs!8918 () Bool)

(assert (= bs!8918 d!60343))

(assert (=> bs!8918 m!264023))

(assert (=> bs!8918 m!264023))

(assert (=> bs!8918 m!264025))

(declare-fun m!264179 () Bool)

(assert (=> bs!8918 m!264179))

(assert (=> bs!8918 m!263989))

(assert (=> b!246685 d!60343))

(declare-fun d!60345 () Bool)

(assert (=> d!60345 (= (inRange!0 (ite c!41250 (index!6594 lt!123590) (index!6597 lt!123590)) (mask!10693 thiss!1504)) (and (bvsge (ite c!41250 (index!6594 lt!123590) (index!6597 lt!123590)) #b00000000000000000000000000000000) (bvslt (ite c!41250 (index!6594 lt!123590) (index!6597 lt!123590)) (bvadd (mask!10693 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!23068 d!60345))

(declare-fun b!246909 () Bool)

(declare-fun lt!123722 () SeekEntryResult!1106)

(assert (=> b!246909 (and (bvsge (index!6594 lt!123722) #b00000000000000000000000000000000) (bvslt (index!6594 lt!123722) (size!6119 (_keys!6685 thiss!1504))))))

(declare-fun res!121053 () Bool)

(assert (=> b!246909 (= res!121053 (= (select (arr!5776 (_keys!6685 thiss!1504)) (index!6594 lt!123722)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!160187 () Bool)

(assert (=> b!246909 (=> (not res!121053) (not e!160187))))

(declare-fun b!246910 () Bool)

(declare-fun res!121054 () Bool)

(declare-fun e!160186 () Bool)

(assert (=> b!246910 (=> (not res!121054) (not e!160186))))

(assert (=> b!246910 (= res!121054 (= (select (arr!5776 (_keys!6685 thiss!1504)) (index!6597 lt!123722)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!246910 (and (bvsge (index!6597 lt!123722) #b00000000000000000000000000000000) (bvslt (index!6597 lt!123722) (size!6119 (_keys!6685 thiss!1504))))))

(declare-fun b!246911 () Bool)

(declare-fun call!23110 () Bool)

(assert (=> b!246911 (= e!160186 (not call!23110))))

(declare-fun b!246913 () Bool)

(declare-fun e!160188 () Bool)

(assert (=> b!246913 (= e!160188 e!160187)))

(declare-fun res!121052 () Bool)

(declare-fun call!23111 () Bool)

(assert (=> b!246913 (= res!121052 call!23111)))

(assert (=> b!246913 (=> (not res!121052) (not e!160187))))

(declare-fun c!41311 () Bool)

(declare-fun bm!23107 () Bool)

(assert (=> bm!23107 (= call!23111 (inRange!0 (ite c!41311 (index!6594 lt!123722) (index!6597 lt!123722)) (mask!10693 thiss!1504)))))

(declare-fun bm!23108 () Bool)

(assert (=> bm!23108 (= call!23110 (arrayContainsKey!0 (_keys!6685 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!246914 () Bool)

(assert (=> b!246914 (= e!160187 (not call!23110))))

(declare-fun d!60347 () Bool)

(assert (=> d!60347 e!160188))

(assert (=> d!60347 (= c!41311 ((_ is MissingZero!1106) lt!123722))))

(assert (=> d!60347 (= lt!123722 (seekEntryOrOpen!0 key!932 (_keys!6685 thiss!1504) (mask!10693 thiss!1504)))))

(declare-fun lt!123723 () Unit!7616)

(declare-fun choose!1167 (array!12174 array!12172 (_ BitVec 32) (_ BitVec 32) V!8227 V!8227 (_ BitVec 64) Int) Unit!7616)

(assert (=> d!60347 (= lt!123723 (choose!1167 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) key!932 (defaultEntry!4565 thiss!1504)))))

(assert (=> d!60347 (validMask!0 (mask!10693 thiss!1504))))

(assert (=> d!60347 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!380 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) key!932 (defaultEntry!4565 thiss!1504)) lt!123723)))

(declare-fun b!246912 () Bool)

(declare-fun res!121051 () Bool)

(assert (=> b!246912 (=> (not res!121051) (not e!160186))))

(assert (=> b!246912 (= res!121051 call!23111)))

(declare-fun e!160185 () Bool)

(assert (=> b!246912 (= e!160185 e!160186)))

(declare-fun b!246915 () Bool)

(assert (=> b!246915 (= e!160185 ((_ is Undefined!1106) lt!123722))))

(declare-fun b!246916 () Bool)

(assert (=> b!246916 (= e!160188 e!160185)))

(declare-fun c!41312 () Bool)

(assert (=> b!246916 (= c!41312 ((_ is MissingVacant!1106) lt!123722))))

(assert (= (and d!60347 c!41311) b!246913))

(assert (= (and d!60347 (not c!41311)) b!246916))

(assert (= (and b!246913 res!121052) b!246909))

(assert (= (and b!246909 res!121053) b!246914))

(assert (= (and b!246916 c!41312) b!246912))

(assert (= (and b!246916 (not c!41312)) b!246915))

(assert (= (and b!246912 res!121051) b!246910))

(assert (= (and b!246910 res!121054) b!246911))

(assert (= (or b!246913 b!246912) bm!23107))

(assert (= (or b!246914 b!246911) bm!23108))

(assert (=> d!60347 m!263985))

(declare-fun m!264181 () Bool)

(assert (=> d!60347 m!264181))

(assert (=> d!60347 m!263989))

(assert (=> bm!23108 m!263991))

(declare-fun m!264183 () Bool)

(assert (=> b!246910 m!264183))

(declare-fun m!264185 () Bool)

(assert (=> bm!23107 m!264185))

(declare-fun m!264187 () Bool)

(assert (=> b!246909 m!264187))

(assert (=> b!246672 d!60347))

(declare-fun d!60349 () Bool)

(declare-fun e!160191 () Bool)

(assert (=> d!60349 e!160191))

(declare-fun res!121059 () Bool)

(assert (=> d!60349 (=> (not res!121059) (not e!160191))))

(declare-fun lt!123728 () SeekEntryResult!1106)

(assert (=> d!60349 (= res!121059 ((_ is Found!1106) lt!123728))))

(assert (=> d!60349 (= lt!123728 (seekEntryOrOpen!0 key!932 (_keys!6685 thiss!1504) (mask!10693 thiss!1504)))))

(declare-fun lt!123729 () Unit!7616)

(declare-fun choose!1168 (array!12174 array!12172 (_ BitVec 32) (_ BitVec 32) V!8227 V!8227 (_ BitVec 64) Int) Unit!7616)

(assert (=> d!60349 (= lt!123729 (choose!1168 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) key!932 (defaultEntry!4565 thiss!1504)))))

(assert (=> d!60349 (validMask!0 (mask!10693 thiss!1504))))

(assert (=> d!60349 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!378 (_keys!6685 thiss!1504) (_values!4548 thiss!1504) (mask!10693 thiss!1504) (extraKeys!4302 thiss!1504) (zeroValue!4406 thiss!1504) (minValue!4406 thiss!1504) key!932 (defaultEntry!4565 thiss!1504)) lt!123729)))

(declare-fun b!246921 () Bool)

(declare-fun res!121060 () Bool)

(assert (=> b!246921 (=> (not res!121060) (not e!160191))))

(assert (=> b!246921 (= res!121060 (inRange!0 (index!6595 lt!123728) (mask!10693 thiss!1504)))))

(declare-fun b!246922 () Bool)

(assert (=> b!246922 (= e!160191 (= (select (arr!5776 (_keys!6685 thiss!1504)) (index!6595 lt!123728)) key!932))))

(assert (=> b!246922 (and (bvsge (index!6595 lt!123728) #b00000000000000000000000000000000) (bvslt (index!6595 lt!123728) (size!6119 (_keys!6685 thiss!1504))))))

(assert (= (and d!60349 res!121059) b!246921))

(assert (= (and b!246921 res!121060) b!246922))

(assert (=> d!60349 m!263985))

(declare-fun m!264189 () Bool)

(assert (=> d!60349 m!264189))

(assert (=> d!60349 m!263989))

(declare-fun m!264191 () Bool)

(assert (=> b!246921 m!264191))

(declare-fun m!264193 () Bool)

(assert (=> b!246922 m!264193))

(assert (=> b!246677 d!60349))

(declare-fun d!60351 () Bool)

(declare-fun res!121067 () Bool)

(declare-fun e!160194 () Bool)

(assert (=> d!60351 (=> (not res!121067) (not e!160194))))

(declare-fun simpleValid!255 (LongMapFixedSize!3648) Bool)

(assert (=> d!60351 (= res!121067 (simpleValid!255 thiss!1504))))

(assert (=> d!60351 (= (valid!1419 thiss!1504) e!160194)))

(declare-fun b!246929 () Bool)

(declare-fun res!121068 () Bool)

(assert (=> b!246929 (=> (not res!121068) (not e!160194))))

(assert (=> b!246929 (= res!121068 (= (arrayCountValidKeys!0 (_keys!6685 thiss!1504) #b00000000000000000000000000000000 (size!6119 (_keys!6685 thiss!1504))) (_size!1873 thiss!1504)))))

(declare-fun b!246930 () Bool)

(declare-fun res!121069 () Bool)

(assert (=> b!246930 (=> (not res!121069) (not e!160194))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12174 (_ BitVec 32)) Bool)

(assert (=> b!246930 (= res!121069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6685 thiss!1504) (mask!10693 thiss!1504)))))

(declare-fun b!246931 () Bool)

(assert (=> b!246931 (= e!160194 (arrayNoDuplicates!0 (_keys!6685 thiss!1504) #b00000000000000000000000000000000 Nil!3699))))

(assert (= (and d!60351 res!121067) b!246929))

(assert (= (and b!246929 res!121068) b!246930))

(assert (= (and b!246930 res!121069) b!246931))

(declare-fun m!264195 () Bool)

(assert (=> d!60351 m!264195))

(assert (=> b!246929 m!264001))

(declare-fun m!264197 () Bool)

(assert (=> b!246930 m!264197))

(declare-fun m!264199 () Bool)

(assert (=> b!246931 m!264199))

(assert (=> start!23500 d!60351))

(declare-fun mapIsEmpty!10928 () Bool)

(declare-fun mapRes!10928 () Bool)

(assert (=> mapIsEmpty!10928 mapRes!10928))

(declare-fun b!246938 () Bool)

(declare-fun e!160200 () Bool)

(assert (=> b!246938 (= e!160200 tp_is_empty!6435)))

(declare-fun b!246939 () Bool)

(declare-fun e!160199 () Bool)

(assert (=> b!246939 (= e!160199 tp_is_empty!6435)))

(declare-fun condMapEmpty!10928 () Bool)

(declare-fun mapDefault!10928 () ValueCell!2874)

(assert (=> mapNonEmpty!10922 (= condMapEmpty!10928 (= mapRest!10922 ((as const (Array (_ BitVec 32) ValueCell!2874)) mapDefault!10928)))))

(assert (=> mapNonEmpty!10922 (= tp!22960 (and e!160199 mapRes!10928))))

(declare-fun mapNonEmpty!10928 () Bool)

(declare-fun tp!22970 () Bool)

(assert (=> mapNonEmpty!10928 (= mapRes!10928 (and tp!22970 e!160200))))

(declare-fun mapValue!10928 () ValueCell!2874)

(declare-fun mapRest!10928 () (Array (_ BitVec 32) ValueCell!2874))

(declare-fun mapKey!10928 () (_ BitVec 32))

(assert (=> mapNonEmpty!10928 (= mapRest!10922 (store mapRest!10928 mapKey!10928 mapValue!10928))))

(assert (= (and mapNonEmpty!10922 condMapEmpty!10928) mapIsEmpty!10928))

(assert (= (and mapNonEmpty!10922 (not condMapEmpty!10928)) mapNonEmpty!10928))

(assert (= (and mapNonEmpty!10928 ((_ is ValueCellFull!2874) mapValue!10928)) b!246938))

(assert (= (and mapNonEmpty!10922 ((_ is ValueCellFull!2874) mapDefault!10928)) b!246939))

(declare-fun m!264201 () Bool)

(assert (=> mapNonEmpty!10928 m!264201))

(declare-fun b_lambda!8075 () Bool)

(assert (= b_lambda!8073 (or (and b!246679 b_free!6573) b_lambda!8075)))

(check-sat b_and!13593 (not b_lambda!8075) (not b!246921) (not b!246807) (not b!246803) tp_is_empty!6435 (not b!246930) (not d!60351) (not d!60325) (not b!246892) (not b!246802) (not bm!23102) (not d!60327) (not b!246801) (not b!246834) (not d!60347) (not b!246814) (not b!246755) (not bm!23095) (not bm!23108) (not bm!23091) (not b_next!6573) (not d!60323) (not b!246874) (not b!246831) (not b!246865) (not b!246931) (not b!246852) (not bm!23090) (not d!60349) (not d!60341) (not b!246816) (not b!246819) (not bm!23093) (not b!246757) (not mapNonEmpty!10928) (not b!246800) (not b!246929) (not d!60343) (not d!60339) (not bm!23101) (not bm!23098) (not b!246854) (not bm!23107) (not b!246869) (not b!246832) (not b!246855) (not b!246840))
(check-sat b_and!13593 (not b_next!6573))

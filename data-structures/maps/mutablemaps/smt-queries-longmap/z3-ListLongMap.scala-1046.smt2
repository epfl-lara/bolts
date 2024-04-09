; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21972 () Bool)

(assert start!21972)

(declare-fun b!224670 () Bool)

(declare-fun b_free!6027 () Bool)

(declare-fun b_next!6027 () Bool)

(assert (=> b!224670 (= b_free!6027 (not b_next!6027))))

(declare-fun tp!21222 () Bool)

(declare-fun b_and!12943 () Bool)

(assert (=> b!224670 (= tp!21222 b_and!12943)))

(declare-fun b!224653 () Bool)

(declare-fun e!145850 () Bool)

(declare-fun call!20913 () Bool)

(assert (=> b!224653 (= e!145850 (not call!20913))))

(declare-fun b!224654 () Bool)

(declare-fun res!110570 () Bool)

(declare-fun e!145853 () Bool)

(assert (=> b!224654 (=> (not res!110570) (not e!145853))))

(declare-fun call!20914 () Bool)

(assert (=> b!224654 (= res!110570 call!20914)))

(declare-fun e!145846 () Bool)

(assert (=> b!224654 (= e!145846 e!145853)))

(declare-fun b!224655 () Bool)

(declare-fun e!145857 () Bool)

(declare-datatypes ((SeekEntryResult!870 0))(
  ( (MissingZero!870 (index!5650 (_ BitVec 32))) (Found!870 (index!5651 (_ BitVec 32))) (Intermediate!870 (undefined!1682 Bool) (index!5652 (_ BitVec 32)) (x!23154 (_ BitVec 32))) (Undefined!870) (MissingVacant!870 (index!5653 (_ BitVec 32))) )
))
(declare-fun lt!113247 () SeekEntryResult!870)

(get-info :version)

(assert (=> b!224655 (= e!145857 ((_ is Undefined!870) lt!113247))))

(declare-fun bm!20910 () Bool)

(declare-datatypes ((V!7499 0))(
  ( (V!7500 (val!2989 Int)) )
))
(declare-datatypes ((ValueCell!2601 0))(
  ( (ValueCellFull!2601 (v!5005 V!7499)) (EmptyCell!2601) )
))
(declare-datatypes ((array!11020 0))(
  ( (array!11021 (arr!5229 (Array (_ BitVec 32) ValueCell!2601)) (size!5562 (_ BitVec 32))) )
))
(declare-datatypes ((array!11022 0))(
  ( (array!11023 (arr!5230 (Array (_ BitVec 32) (_ BitVec 64))) (size!5563 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3102 0))(
  ( (LongMapFixedSize!3103 (defaultEntry!4210 Int) (mask!10046 (_ BitVec 32)) (extraKeys!3947 (_ BitVec 32)) (zeroValue!4051 V!7499) (minValue!4051 V!7499) (_size!1600 (_ BitVec 32)) (_keys!6264 array!11022) (_values!4193 array!11020) (_vacant!1600 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3102)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11022 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20910 (= call!20913 (arrayContainsKey!0 (_keys!6264 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!224656 () Bool)

(declare-datatypes ((Unit!6757 0))(
  ( (Unit!6758) )
))
(declare-fun e!145856 () Unit!6757)

(declare-fun Unit!6759 () Unit!6757)

(assert (=> b!224656 (= e!145856 Unit!6759)))

(declare-fun lt!113251 () Unit!6757)

(declare-fun lemmaArrayContainsKeyThenInListMap!80 (array!11022 array!11020 (_ BitVec 32) (_ BitVec 32) V!7499 V!7499 (_ BitVec 64) (_ BitVec 32) Int) Unit!6757)

(assert (=> b!224656 (= lt!113251 (lemmaArrayContainsKeyThenInListMap!80 (_keys!6264 thiss!1504) (_values!4193 thiss!1504) (mask!10046 thiss!1504) (extraKeys!3947 thiss!1504) (zeroValue!4051 thiss!1504) (minValue!4051 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4210 thiss!1504)))))

(assert (=> b!224656 false))

(declare-fun mapNonEmpty!10003 () Bool)

(declare-fun mapRes!10003 () Bool)

(declare-fun tp!21223 () Bool)

(declare-fun e!145848 () Bool)

(assert (=> mapNonEmpty!10003 (= mapRes!10003 (and tp!21223 e!145848))))

(declare-fun mapRest!10003 () (Array (_ BitVec 32) ValueCell!2601))

(declare-fun mapValue!10003 () ValueCell!2601)

(declare-fun mapKey!10003 () (_ BitVec 32))

(assert (=> mapNonEmpty!10003 (= (arr!5229 (_values!4193 thiss!1504)) (store mapRest!10003 mapKey!10003 mapValue!10003))))

(declare-fun b!224657 () Bool)

(declare-fun e!145852 () Bool)

(assert (=> b!224657 (= e!145852 (not true))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((List!3360 0))(
  ( (Nil!3357) (Cons!3356 (h!4004 (_ BitVec 64)) (t!8327 List!3360)) )
))
(declare-fun arrayNoDuplicates!0 (array!11022 (_ BitVec 32) List!3360) Bool)

(assert (=> b!224657 (arrayNoDuplicates!0 (array!11023 (store (arr!5230 (_keys!6264 thiss!1504)) index!297 key!932) (size!5563 (_keys!6264 thiss!1504))) #b00000000000000000000000000000000 Nil!3357)))

(declare-fun lt!113253 () Unit!6757)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11022 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3360) Unit!6757)

(assert (=> b!224657 (= lt!113253 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6264 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3357))))

(declare-fun lt!113248 () Unit!6757)

(assert (=> b!224657 (= lt!113248 e!145856)))

(declare-fun c!37238 () Bool)

(assert (=> b!224657 (= c!37238 (arrayContainsKey!0 (_keys!6264 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!224658 () Bool)

(assert (=> b!224658 (= e!145857 e!145850)))

(declare-fun res!110565 () Bool)

(assert (=> b!224658 (= res!110565 call!20914)))

(assert (=> b!224658 (=> (not res!110565) (not e!145850))))

(declare-fun b!224659 () Bool)

(declare-fun c!37240 () Bool)

(assert (=> b!224659 (= c!37240 ((_ is MissingVacant!870) lt!113247))))

(assert (=> b!224659 (= e!145846 e!145857)))

(declare-fun c!37239 () Bool)

(declare-fun bm!20911 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20911 (= call!20914 (inRange!0 (ite c!37239 (index!5650 lt!113247) (index!5653 lt!113247)) (mask!10046 thiss!1504)))))

(declare-fun b!224660 () Bool)

(declare-fun e!145854 () Bool)

(declare-fun tp_is_empty!5889 () Bool)

(assert (=> b!224660 (= e!145854 tp_is_empty!5889)))

(declare-fun b!224661 () Bool)

(declare-fun e!145855 () Bool)

(declare-fun e!145849 () Bool)

(assert (=> b!224661 (= e!145855 e!145849)))

(declare-fun res!110568 () Bool)

(assert (=> b!224661 (=> (not res!110568) (not e!145849))))

(assert (=> b!224661 (= res!110568 (or (= lt!113247 (MissingZero!870 index!297)) (= lt!113247 (MissingVacant!870 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11022 (_ BitVec 32)) SeekEntryResult!870)

(assert (=> b!224661 (= lt!113247 (seekEntryOrOpen!0 key!932 (_keys!6264 thiss!1504) (mask!10046 thiss!1504)))))

(declare-fun b!224662 () Bool)

(declare-fun Unit!6760 () Unit!6757)

(assert (=> b!224662 (= e!145856 Unit!6760)))

(declare-fun b!224663 () Bool)

(declare-fun e!145851 () Unit!6757)

(declare-fun lt!113252 () Unit!6757)

(assert (=> b!224663 (= e!145851 lt!113252)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!250 (array!11022 array!11020 (_ BitVec 32) (_ BitVec 32) V!7499 V!7499 (_ BitVec 64) Int) Unit!6757)

(assert (=> b!224663 (= lt!113252 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!250 (_keys!6264 thiss!1504) (_values!4193 thiss!1504) (mask!10046 thiss!1504) (extraKeys!3947 thiss!1504) (zeroValue!4051 thiss!1504) (minValue!4051 thiss!1504) key!932 (defaultEntry!4210 thiss!1504)))))

(assert (=> b!224663 (= c!37239 ((_ is MissingZero!870) lt!113247))))

(assert (=> b!224663 e!145846))

(declare-fun b!224664 () Bool)

(declare-fun Unit!6761 () Unit!6757)

(assert (=> b!224664 (= e!145851 Unit!6761)))

(declare-fun lt!113250 () Unit!6757)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!242 (array!11022 array!11020 (_ BitVec 32) (_ BitVec 32) V!7499 V!7499 (_ BitVec 64) Int) Unit!6757)

(assert (=> b!224664 (= lt!113250 (lemmaInListMapThenSeekEntryOrOpenFindsIt!242 (_keys!6264 thiss!1504) (_values!4193 thiss!1504) (mask!10046 thiss!1504) (extraKeys!3947 thiss!1504) (zeroValue!4051 thiss!1504) (minValue!4051 thiss!1504) key!932 (defaultEntry!4210 thiss!1504)))))

(assert (=> b!224664 false))

(declare-fun res!110572 () Bool)

(assert (=> start!21972 (=> (not res!110572) (not e!145855))))

(declare-fun valid!1243 (LongMapFixedSize!3102) Bool)

(assert (=> start!21972 (= res!110572 (valid!1243 thiss!1504))))

(assert (=> start!21972 e!145855))

(declare-fun e!145845 () Bool)

(assert (=> start!21972 e!145845))

(assert (=> start!21972 true))

(declare-fun b!224665 () Bool)

(assert (=> b!224665 (= e!145848 tp_is_empty!5889)))

(declare-fun b!224666 () Bool)

(declare-fun res!110566 () Bool)

(assert (=> b!224666 (=> (not res!110566) (not e!145853))))

(assert (=> b!224666 (= res!110566 (= (select (arr!5230 (_keys!6264 thiss!1504)) (index!5650 lt!113247)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!224667 () Bool)

(declare-fun e!145847 () Bool)

(assert (=> b!224667 (= e!145847 (and e!145854 mapRes!10003))))

(declare-fun condMapEmpty!10003 () Bool)

(declare-fun mapDefault!10003 () ValueCell!2601)

(assert (=> b!224667 (= condMapEmpty!10003 (= (arr!5229 (_values!4193 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2601)) mapDefault!10003)))))

(declare-fun b!224668 () Bool)

(assert (=> b!224668 (= e!145853 (not call!20913))))

(declare-fun b!224669 () Bool)

(declare-fun res!110569 () Bool)

(assert (=> b!224669 (= res!110569 (= (select (arr!5230 (_keys!6264 thiss!1504)) (index!5653 lt!113247)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!224669 (=> (not res!110569) (not e!145850))))

(declare-fun array_inv!3451 (array!11022) Bool)

(declare-fun array_inv!3452 (array!11020) Bool)

(assert (=> b!224670 (= e!145845 (and tp!21222 tp_is_empty!5889 (array_inv!3451 (_keys!6264 thiss!1504)) (array_inv!3452 (_values!4193 thiss!1504)) e!145847))))

(declare-fun b!224671 () Bool)

(assert (=> b!224671 (= e!145849 e!145852)))

(declare-fun res!110571 () Bool)

(assert (=> b!224671 (=> (not res!110571) (not e!145852))))

(assert (=> b!224671 (= res!110571 (inRange!0 index!297 (mask!10046 thiss!1504)))))

(declare-fun lt!113249 () Unit!6757)

(assert (=> b!224671 (= lt!113249 e!145851)))

(declare-fun c!37241 () Bool)

(declare-datatypes ((tuple2!4424 0))(
  ( (tuple2!4425 (_1!2222 (_ BitVec 64)) (_2!2222 V!7499)) )
))
(declare-datatypes ((List!3361 0))(
  ( (Nil!3358) (Cons!3357 (h!4005 tuple2!4424) (t!8328 List!3361)) )
))
(declare-datatypes ((ListLongMap!3351 0))(
  ( (ListLongMap!3352 (toList!1691 List!3361)) )
))
(declare-fun contains!1559 (ListLongMap!3351 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1214 (array!11022 array!11020 (_ BitVec 32) (_ BitVec 32) V!7499 V!7499 (_ BitVec 32) Int) ListLongMap!3351)

(assert (=> b!224671 (= c!37241 (contains!1559 (getCurrentListMap!1214 (_keys!6264 thiss!1504) (_values!4193 thiss!1504) (mask!10046 thiss!1504) (extraKeys!3947 thiss!1504) (zeroValue!4051 thiss!1504) (minValue!4051 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4210 thiss!1504)) key!932))))

(declare-fun b!224672 () Bool)

(declare-fun res!110567 () Bool)

(assert (=> b!224672 (=> (not res!110567) (not e!145855))))

(assert (=> b!224672 (= res!110567 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!10003 () Bool)

(assert (=> mapIsEmpty!10003 mapRes!10003))

(assert (= (and start!21972 res!110572) b!224672))

(assert (= (and b!224672 res!110567) b!224661))

(assert (= (and b!224661 res!110568) b!224671))

(assert (= (and b!224671 c!37241) b!224664))

(assert (= (and b!224671 (not c!37241)) b!224663))

(assert (= (and b!224663 c!37239) b!224654))

(assert (= (and b!224663 (not c!37239)) b!224659))

(assert (= (and b!224654 res!110570) b!224666))

(assert (= (and b!224666 res!110566) b!224668))

(assert (= (and b!224659 c!37240) b!224658))

(assert (= (and b!224659 (not c!37240)) b!224655))

(assert (= (and b!224658 res!110565) b!224669))

(assert (= (and b!224669 res!110569) b!224653))

(assert (= (or b!224654 b!224658) bm!20911))

(assert (= (or b!224668 b!224653) bm!20910))

(assert (= (and b!224671 res!110571) b!224657))

(assert (= (and b!224657 c!37238) b!224656))

(assert (= (and b!224657 (not c!37238)) b!224662))

(assert (= (and b!224667 condMapEmpty!10003) mapIsEmpty!10003))

(assert (= (and b!224667 (not condMapEmpty!10003)) mapNonEmpty!10003))

(assert (= (and mapNonEmpty!10003 ((_ is ValueCellFull!2601) mapValue!10003)) b!224665))

(assert (= (and b!224667 ((_ is ValueCellFull!2601) mapDefault!10003)) b!224660))

(assert (= b!224670 b!224667))

(assert (= start!21972 b!224670))

(declare-fun m!247555 () Bool)

(assert (=> mapNonEmpty!10003 m!247555))

(declare-fun m!247557 () Bool)

(assert (=> b!224657 m!247557))

(declare-fun m!247559 () Bool)

(assert (=> b!224657 m!247559))

(declare-fun m!247561 () Bool)

(assert (=> b!224657 m!247561))

(declare-fun m!247563 () Bool)

(assert (=> b!224657 m!247563))

(declare-fun m!247565 () Bool)

(assert (=> b!224656 m!247565))

(declare-fun m!247567 () Bool)

(assert (=> b!224663 m!247567))

(declare-fun m!247569 () Bool)

(assert (=> start!21972 m!247569))

(declare-fun m!247571 () Bool)

(assert (=> b!224671 m!247571))

(declare-fun m!247573 () Bool)

(assert (=> b!224671 m!247573))

(assert (=> b!224671 m!247573))

(declare-fun m!247575 () Bool)

(assert (=> b!224671 m!247575))

(declare-fun m!247577 () Bool)

(assert (=> b!224661 m!247577))

(declare-fun m!247579 () Bool)

(assert (=> b!224664 m!247579))

(declare-fun m!247581 () Bool)

(assert (=> bm!20911 m!247581))

(declare-fun m!247583 () Bool)

(assert (=> b!224666 m!247583))

(declare-fun m!247585 () Bool)

(assert (=> b!224669 m!247585))

(assert (=> bm!20910 m!247563))

(declare-fun m!247587 () Bool)

(assert (=> b!224670 m!247587))

(declare-fun m!247589 () Bool)

(assert (=> b!224670 m!247589))

(check-sat (not mapNonEmpty!10003) (not bm!20911) (not b_next!6027) (not start!21972) (not b!224664) (not b!224663) (not b!224656) (not b!224670) tp_is_empty!5889 (not bm!20910) b_and!12943 (not b!224661) (not b!224671) (not b!224657))
(check-sat b_and!12943 (not b_next!6027))

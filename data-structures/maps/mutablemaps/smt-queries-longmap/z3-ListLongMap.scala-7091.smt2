; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89924 () Bool)

(assert start!89924)

(declare-fun b!1029664 () Bool)

(declare-fun b_free!20601 () Bool)

(declare-fun b_next!20601 () Bool)

(assert (=> b!1029664 (= b_free!20601 (not b_next!20601))))

(declare-fun tp!72867 () Bool)

(declare-fun b_and!32963 () Bool)

(assert (=> b!1029664 (= tp!72867 b_and!32963)))

(declare-fun b!1029663 () Bool)

(declare-fun res!688787 () Bool)

(declare-fun e!581406 () Bool)

(assert (=> b!1029663 (=> (not res!688787) (not e!581406))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1029663 (= res!688787 (not (= key!909 (bvneg key!909))))))

(declare-fun e!581405 () Bool)

(declare-datatypes ((V!37301 0))(
  ( (V!37302 (val!12211 Int)) )
))
(declare-datatypes ((ValueCell!11457 0))(
  ( (ValueCellFull!11457 (v!14787 V!37301)) (EmptyCell!11457) )
))
(declare-datatypes ((array!64686 0))(
  ( (array!64687 (arr!31143 (Array (_ BitVec 32) (_ BitVec 64))) (size!31660 (_ BitVec 32))) )
))
(declare-datatypes ((array!64688 0))(
  ( (array!64689 (arr!31144 (Array (_ BitVec 32) ValueCell!11457)) (size!31661 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5508 0))(
  ( (LongMapFixedSize!5509 (defaultEntry!6122 Int) (mask!29880 (_ BitVec 32)) (extraKeys!5854 (_ BitVec 32)) (zeroValue!5958 V!37301) (minValue!5958 V!37301) (_size!2809 (_ BitVec 32)) (_keys!11285 array!64686) (_values!6145 array!64688) (_vacant!2809 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5508)

(declare-fun tp_is_empty!24321 () Bool)

(declare-fun e!581410 () Bool)

(declare-fun array_inv!23957 (array!64686) Bool)

(declare-fun array_inv!23958 (array!64688) Bool)

(assert (=> b!1029664 (= e!581410 (and tp!72867 tp_is_empty!24321 (array_inv!23957 (_keys!11285 thiss!1427)) (array_inv!23958 (_values!6145 thiss!1427)) e!581405))))

(declare-fun b!1029665 () Bool)

(declare-fun e!581407 () Bool)

(assert (=> b!1029665 (= e!581407 tp_is_empty!24321)))

(declare-fun res!688788 () Bool)

(assert (=> start!89924 (=> (not res!688788) (not e!581406))))

(declare-fun valid!2039 (LongMapFixedSize!5508) Bool)

(assert (=> start!89924 (= res!688788 (valid!2039 thiss!1427))))

(assert (=> start!89924 e!581406))

(assert (=> start!89924 e!581410))

(assert (=> start!89924 true))

(declare-fun b!1029666 () Bool)

(declare-fun e!581404 () Bool)

(declare-fun e!581409 () Bool)

(assert (=> b!1029666 (= e!581404 (not e!581409))))

(declare-fun res!688786 () Bool)

(assert (=> b!1029666 (=> res!688786 e!581409)))

(declare-datatypes ((Unit!33592 0))(
  ( (Unit!33593) )
))
(declare-datatypes ((tuple2!15658 0))(
  ( (tuple2!15659 (_1!7839 Unit!33592) (_2!7839 LongMapFixedSize!5508)) )
))
(declare-fun lt!453983 () tuple2!15658)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1029666 (= res!688786 (not (validMask!0 (mask!29880 (_2!7839 lt!453983)))))))

(declare-fun lt!453977 () array!64686)

(declare-fun lt!453976 () array!64688)

(declare-fun Unit!33594 () Unit!33592)

(declare-fun Unit!33595 () Unit!33592)

(assert (=> b!1029666 (= lt!453983 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2809 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15659 Unit!33594 (LongMapFixedSize!5509 (defaultEntry!6122 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) (bvsub (_size!2809 thiss!1427) #b00000000000000000000000000000001) lt!453977 lt!453976 (bvadd #b00000000000000000000000000000001 (_vacant!2809 thiss!1427)))) (tuple2!15659 Unit!33595 (LongMapFixedSize!5509 (defaultEntry!6122 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) (bvsub (_size!2809 thiss!1427) #b00000000000000000000000000000001) lt!453977 lt!453976 (_vacant!2809 thiss!1427)))))))

(declare-datatypes ((tuple2!15660 0))(
  ( (tuple2!15661 (_1!7840 (_ BitVec 64)) (_2!7840 V!37301)) )
))
(declare-datatypes ((List!21933 0))(
  ( (Nil!21930) (Cons!21929 (h!23130 tuple2!15660) (t!31036 List!21933)) )
))
(declare-datatypes ((ListLongMap!13791 0))(
  ( (ListLongMap!13792 (toList!6911 List!21933)) )
))
(declare-fun -!487 (ListLongMap!13791 (_ BitVec 64)) ListLongMap!13791)

(declare-fun getCurrentListMap!3918 (array!64686 array!64688 (_ BitVec 32) (_ BitVec 32) V!37301 V!37301 (_ BitVec 32) Int) ListLongMap!13791)

(assert (=> b!1029666 (= (-!487 (getCurrentListMap!3918 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)) key!909) (getCurrentListMap!3918 lt!453977 lt!453976 (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9673 0))(
  ( (MissingZero!9673 (index!41062 (_ BitVec 32))) (Found!9673 (index!41063 (_ BitVec 32))) (Intermediate!9673 (undefined!10485 Bool) (index!41064 (_ BitVec 32)) (x!91618 (_ BitVec 32))) (Undefined!9673) (MissingVacant!9673 (index!41065 (_ BitVec 32))) )
))
(declare-fun lt!453980 () SeekEntryResult!9673)

(declare-fun dynLambda!1962 (Int (_ BitVec 64)) V!37301)

(assert (=> b!1029666 (= lt!453976 (array!64689 (store (arr!31144 (_values!6145 thiss!1427)) (index!41063 lt!453980) (ValueCellFull!11457 (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31661 (_values!6145 thiss!1427))))))

(declare-fun lt!453979 () Unit!33592)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!11 (array!64686 array!64688 (_ BitVec 32) (_ BitVec 32) V!37301 V!37301 (_ BitVec 32) (_ BitVec 64) Int) Unit!33592)

(assert (=> b!1029666 (= lt!453979 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!11 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) (index!41063 lt!453980) key!909 (defaultEntry!6122 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64686 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1029666 (not (arrayContainsKey!0 lt!453977 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!453975 () Unit!33592)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64686 (_ BitVec 32) (_ BitVec 64)) Unit!33592)

(assert (=> b!1029666 (= lt!453975 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11285 thiss!1427) (index!41063 lt!453980) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64686 (_ BitVec 32)) Bool)

(assert (=> b!1029666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!453977 (mask!29880 thiss!1427))))

(declare-fun lt!453978 () Unit!33592)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64686 (_ BitVec 32) (_ BitVec 32)) Unit!33592)

(assert (=> b!1029666 (= lt!453978 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11285 thiss!1427) (index!41063 lt!453980) (mask!29880 thiss!1427)))))

(declare-datatypes ((List!21934 0))(
  ( (Nil!21931) (Cons!21930 (h!23131 (_ BitVec 64)) (t!31037 List!21934)) )
))
(declare-fun arrayNoDuplicates!0 (array!64686 (_ BitVec 32) List!21934) Bool)

(assert (=> b!1029666 (arrayNoDuplicates!0 lt!453977 #b00000000000000000000000000000000 Nil!21931)))

(declare-fun lt!453982 () Unit!33592)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64686 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21934) Unit!33592)

(assert (=> b!1029666 (= lt!453982 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11285 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41063 lt!453980) #b00000000000000000000000000000000 Nil!21931))))

(declare-fun arrayCountValidKeys!0 (array!64686 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1029666 (= (arrayCountValidKeys!0 lt!453977 #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11285 thiss!1427) #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1029666 (= lt!453977 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))))))

(declare-fun lt!453981 () Unit!33592)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64686 (_ BitVec 32) (_ BitVec 64)) Unit!33592)

(assert (=> b!1029666 (= lt!453981 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11285 thiss!1427) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1029667 () Bool)

(declare-fun mapRes!37928 () Bool)

(assert (=> b!1029667 (= e!581405 (and e!581407 mapRes!37928))))

(declare-fun condMapEmpty!37928 () Bool)

(declare-fun mapDefault!37928 () ValueCell!11457)

(assert (=> b!1029667 (= condMapEmpty!37928 (= (arr!31144 (_values!6145 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11457)) mapDefault!37928)))))

(declare-fun mapIsEmpty!37928 () Bool)

(assert (=> mapIsEmpty!37928 mapRes!37928))

(declare-fun b!1029668 () Bool)

(declare-fun e!581411 () Bool)

(assert (=> b!1029668 (= e!581411 tp_is_empty!24321)))

(declare-fun mapNonEmpty!37928 () Bool)

(declare-fun tp!72868 () Bool)

(assert (=> mapNonEmpty!37928 (= mapRes!37928 (and tp!72868 e!581411))))

(declare-fun mapRest!37928 () (Array (_ BitVec 32) ValueCell!11457))

(declare-fun mapKey!37928 () (_ BitVec 32))

(declare-fun mapValue!37928 () ValueCell!11457)

(assert (=> mapNonEmpty!37928 (= (arr!31144 (_values!6145 thiss!1427)) (store mapRest!37928 mapKey!37928 mapValue!37928))))

(declare-fun b!1029669 () Bool)

(assert (=> b!1029669 (= e!581406 e!581404)))

(declare-fun res!688785 () Bool)

(assert (=> b!1029669 (=> (not res!688785) (not e!581404))))

(get-info :version)

(assert (=> b!1029669 (= res!688785 ((_ is Found!9673) lt!453980))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64686 (_ BitVec 32)) SeekEntryResult!9673)

(assert (=> b!1029669 (= lt!453980 (seekEntry!0 key!909 (_keys!11285 thiss!1427) (mask!29880 thiss!1427)))))

(declare-fun b!1029670 () Bool)

(assert (=> b!1029670 (= e!581409 (or (not (= (size!31661 (_values!6145 (_2!7839 lt!453983))) (bvadd #b00000000000000000000000000000001 (mask!29880 (_2!7839 lt!453983))))) (not (= (size!31660 (_keys!11285 (_2!7839 lt!453983))) (size!31661 (_values!6145 (_2!7839 lt!453983))))) (bvslt (mask!29880 (_2!7839 lt!453983)) #b00000000000000000000000000000000) (bvslt (extraKeys!5854 (_2!7839 lt!453983)) #b00000000000000000000000000000000) (bvsle (extraKeys!5854 (_2!7839 lt!453983)) #b00000000000000000000000000000011)))))

(assert (= (and start!89924 res!688788) b!1029663))

(assert (= (and b!1029663 res!688787) b!1029669))

(assert (= (and b!1029669 res!688785) b!1029666))

(assert (= (and b!1029666 (not res!688786)) b!1029670))

(assert (= (and b!1029667 condMapEmpty!37928) mapIsEmpty!37928))

(assert (= (and b!1029667 (not condMapEmpty!37928)) mapNonEmpty!37928))

(assert (= (and mapNonEmpty!37928 ((_ is ValueCellFull!11457) mapValue!37928)) b!1029668))

(assert (= (and b!1029667 ((_ is ValueCellFull!11457) mapDefault!37928)) b!1029665))

(assert (= b!1029664 b!1029667))

(assert (= start!89924 b!1029664))

(declare-fun b_lambda!15923 () Bool)

(assert (=> (not b_lambda!15923) (not b!1029666)))

(declare-fun t!31035 () Bool)

(declare-fun tb!6927 () Bool)

(assert (=> (and b!1029664 (= (defaultEntry!6122 thiss!1427) (defaultEntry!6122 thiss!1427)) t!31035) tb!6927))

(declare-fun result!14171 () Bool)

(assert (=> tb!6927 (= result!14171 tp_is_empty!24321)))

(assert (=> b!1029666 t!31035))

(declare-fun b_and!32965 () Bool)

(assert (= b_and!32963 (and (=> t!31035 result!14171) b_and!32965)))

(declare-fun m!949203 () Bool)

(assert (=> b!1029669 m!949203))

(declare-fun m!949205 () Bool)

(assert (=> start!89924 m!949205))

(declare-fun m!949207 () Bool)

(assert (=> b!1029666 m!949207))

(declare-fun m!949209 () Bool)

(assert (=> b!1029666 m!949209))

(declare-fun m!949211 () Bool)

(assert (=> b!1029666 m!949211))

(declare-fun m!949213 () Bool)

(assert (=> b!1029666 m!949213))

(declare-fun m!949215 () Bool)

(assert (=> b!1029666 m!949215))

(declare-fun m!949217 () Bool)

(assert (=> b!1029666 m!949217))

(declare-fun m!949219 () Bool)

(assert (=> b!1029666 m!949219))

(declare-fun m!949221 () Bool)

(assert (=> b!1029666 m!949221))

(declare-fun m!949223 () Bool)

(assert (=> b!1029666 m!949223))

(declare-fun m!949225 () Bool)

(assert (=> b!1029666 m!949225))

(declare-fun m!949227 () Bool)

(assert (=> b!1029666 m!949227))

(declare-fun m!949229 () Bool)

(assert (=> b!1029666 m!949229))

(declare-fun m!949231 () Bool)

(assert (=> b!1029666 m!949231))

(declare-fun m!949233 () Bool)

(assert (=> b!1029666 m!949233))

(assert (=> b!1029666 m!949217))

(declare-fun m!949235 () Bool)

(assert (=> b!1029666 m!949235))

(declare-fun m!949237 () Bool)

(assert (=> b!1029666 m!949237))

(declare-fun m!949239 () Bool)

(assert (=> b!1029666 m!949239))

(declare-fun m!949241 () Bool)

(assert (=> mapNonEmpty!37928 m!949241))

(declare-fun m!949243 () Bool)

(assert (=> b!1029664 m!949243))

(declare-fun m!949245 () Bool)

(assert (=> b!1029664 m!949245))

(check-sat (not b_lambda!15923) (not start!89924) (not b!1029666) b_and!32965 (not b!1029669) (not b!1029664) (not mapNonEmpty!37928) (not b_next!20601) tp_is_empty!24321)
(check-sat b_and!32965 (not b_next!20601))
(get-model)

(declare-fun b_lambda!15927 () Bool)

(assert (= b_lambda!15923 (or (and b!1029664 b_free!20601) b_lambda!15927)))

(check-sat (not start!89924) (not b!1029666) b_and!32965 (not b!1029669) (not b!1029664) (not mapNonEmpty!37928) (not b_lambda!15927) (not b_next!20601) tp_is_empty!24321)
(check-sat b_and!32965 (not b_next!20601))
(get-model)

(declare-fun d!123343 () Bool)

(declare-fun e!581438 () Bool)

(assert (=> d!123343 e!581438))

(declare-fun res!688803 () Bool)

(assert (=> d!123343 (=> (not res!688803) (not e!581438))))

(assert (=> d!123343 (= res!688803 (and (bvsge (index!41063 lt!453980) #b00000000000000000000000000000000) (bvslt (index!41063 lt!453980) (size!31660 (_keys!11285 thiss!1427)))))))

(declare-fun lt!454013 () Unit!33592)

(declare-fun choose!53 (array!64686 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21934) Unit!33592)

(assert (=> d!123343 (= lt!454013 (choose!53 (_keys!11285 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41063 lt!453980) #b00000000000000000000000000000000 Nil!21931))))

(assert (=> d!123343 (bvslt (size!31660 (_keys!11285 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!123343 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11285 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41063 lt!453980) #b00000000000000000000000000000000 Nil!21931) lt!454013)))

(declare-fun b!1029701 () Bool)

(assert (=> b!1029701 (= e!581438 (arrayNoDuplicates!0 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) #b00000000000000000000000000000000 Nil!21931))))

(assert (= (and d!123343 res!688803) b!1029701))

(declare-fun m!949291 () Bool)

(assert (=> d!123343 m!949291))

(assert (=> b!1029701 m!949237))

(declare-fun m!949293 () Bool)

(assert (=> b!1029701 m!949293))

(assert (=> b!1029666 d!123343))

(declare-fun b!1029710 () Bool)

(declare-fun e!581444 () (_ BitVec 32))

(declare-fun call!43496 () (_ BitVec 32))

(assert (=> b!1029710 (= e!581444 (bvadd #b00000000000000000000000000000001 call!43496))))

(declare-fun b!1029711 () Bool)

(assert (=> b!1029711 (= e!581444 call!43496)))

(declare-fun b!1029712 () Bool)

(declare-fun e!581443 () (_ BitVec 32))

(assert (=> b!1029712 (= e!581443 #b00000000000000000000000000000000)))

(declare-fun d!123345 () Bool)

(declare-fun lt!454016 () (_ BitVec 32))

(assert (=> d!123345 (and (bvsge lt!454016 #b00000000000000000000000000000000) (bvsle lt!454016 (bvsub (size!31660 lt!453977) #b00000000000000000000000000000000)))))

(assert (=> d!123345 (= lt!454016 e!581443)))

(declare-fun c!104004 () Bool)

(assert (=> d!123345 (= c!104004 (bvsge #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))))))

(assert (=> d!123345 (and (bvsle #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31660 (_keys!11285 thiss!1427)) (size!31660 lt!453977)))))

(assert (=> d!123345 (= (arrayCountValidKeys!0 lt!453977 #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))) lt!454016)))

(declare-fun bm!43493 () Bool)

(assert (=> bm!43493 (= call!43496 (arrayCountValidKeys!0 lt!453977 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31660 (_keys!11285 thiss!1427))))))

(declare-fun b!1029713 () Bool)

(assert (=> b!1029713 (= e!581443 e!581444)))

(declare-fun c!104005 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1029713 (= c!104005 (validKeyInArray!0 (select (arr!31143 lt!453977) #b00000000000000000000000000000000)))))

(assert (= (and d!123345 c!104004) b!1029712))

(assert (= (and d!123345 (not c!104004)) b!1029713))

(assert (= (and b!1029713 c!104005) b!1029710))

(assert (= (and b!1029713 (not c!104005)) b!1029711))

(assert (= (or b!1029710 b!1029711) bm!43493))

(declare-fun m!949295 () Bool)

(assert (=> bm!43493 m!949295))

(declare-fun m!949297 () Bool)

(assert (=> b!1029713 m!949297))

(assert (=> b!1029713 m!949297))

(declare-fun m!949299 () Bool)

(assert (=> b!1029713 m!949299))

(assert (=> b!1029666 d!123345))

(declare-fun b!1029722 () Bool)

(declare-fun e!581453 () Bool)

(declare-fun call!43499 () Bool)

(assert (=> b!1029722 (= e!581453 call!43499)))

(declare-fun d!123347 () Bool)

(declare-fun res!688808 () Bool)

(declare-fun e!581451 () Bool)

(assert (=> d!123347 (=> res!688808 e!581451)))

(assert (=> d!123347 (= res!688808 (bvsge #b00000000000000000000000000000000 (size!31660 lt!453977)))))

(assert (=> d!123347 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!453977 (mask!29880 thiss!1427)) e!581451)))

(declare-fun b!1029723 () Bool)

(assert (=> b!1029723 (= e!581451 e!581453)))

(declare-fun c!104008 () Bool)

(assert (=> b!1029723 (= c!104008 (validKeyInArray!0 (select (arr!31143 lt!453977) #b00000000000000000000000000000000)))))

(declare-fun b!1029724 () Bool)

(declare-fun e!581452 () Bool)

(assert (=> b!1029724 (= e!581453 e!581452)))

(declare-fun lt!454024 () (_ BitVec 64))

(assert (=> b!1029724 (= lt!454024 (select (arr!31143 lt!453977) #b00000000000000000000000000000000))))

(declare-fun lt!454025 () Unit!33592)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!64686 (_ BitVec 64) (_ BitVec 32)) Unit!33592)

(assert (=> b!1029724 (= lt!454025 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!453977 lt!454024 #b00000000000000000000000000000000))))

(assert (=> b!1029724 (arrayContainsKey!0 lt!453977 lt!454024 #b00000000000000000000000000000000)))

(declare-fun lt!454023 () Unit!33592)

(assert (=> b!1029724 (= lt!454023 lt!454025)))

(declare-fun res!688809 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!64686 (_ BitVec 32)) SeekEntryResult!9673)

(assert (=> b!1029724 (= res!688809 (= (seekEntryOrOpen!0 (select (arr!31143 lt!453977) #b00000000000000000000000000000000) lt!453977 (mask!29880 thiss!1427)) (Found!9673 #b00000000000000000000000000000000)))))

(assert (=> b!1029724 (=> (not res!688809) (not e!581452))))

(declare-fun b!1029725 () Bool)

(assert (=> b!1029725 (= e!581452 call!43499)))

(declare-fun bm!43496 () Bool)

(assert (=> bm!43496 (= call!43499 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!453977 (mask!29880 thiss!1427)))))

(assert (= (and d!123347 (not res!688808)) b!1029723))

(assert (= (and b!1029723 c!104008) b!1029724))

(assert (= (and b!1029723 (not c!104008)) b!1029722))

(assert (= (and b!1029724 res!688809) b!1029725))

(assert (= (or b!1029725 b!1029722) bm!43496))

(assert (=> b!1029723 m!949297))

(assert (=> b!1029723 m!949297))

(assert (=> b!1029723 m!949299))

(assert (=> b!1029724 m!949297))

(declare-fun m!949301 () Bool)

(assert (=> b!1029724 m!949301))

(declare-fun m!949303 () Bool)

(assert (=> b!1029724 m!949303))

(assert (=> b!1029724 m!949297))

(declare-fun m!949305 () Bool)

(assert (=> b!1029724 m!949305))

(declare-fun m!949307 () Bool)

(assert (=> bm!43496 m!949307))

(assert (=> b!1029666 d!123347))

(declare-fun b!1029735 () Bool)

(declare-fun res!688820 () Bool)

(declare-fun e!581458 () Bool)

(assert (=> b!1029735 (=> (not res!688820) (not e!581458))))

(assert (=> b!1029735 (= res!688820 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1029734 () Bool)

(declare-fun res!688819 () Bool)

(assert (=> b!1029734 (=> (not res!688819) (not e!581458))))

(assert (=> b!1029734 (= res!688819 (validKeyInArray!0 (select (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980))))))

(declare-fun b!1029736 () Bool)

(assert (=> b!1029736 (= e!581458 (bvslt (size!31660 (_keys!11285 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1029737 () Bool)

(declare-fun e!581459 () Bool)

(assert (=> b!1029737 (= e!581459 (= (arrayCountValidKeys!0 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11285 thiss!1427) #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun d!123349 () Bool)

(assert (=> d!123349 e!581459))

(declare-fun res!688818 () Bool)

(assert (=> d!123349 (=> (not res!688818) (not e!581459))))

(assert (=> d!123349 (= res!688818 (and (bvsge (index!41063 lt!453980) #b00000000000000000000000000000000) (bvslt (index!41063 lt!453980) (size!31660 (_keys!11285 thiss!1427)))))))

(declare-fun lt!454028 () Unit!33592)

(declare-fun choose!82 (array!64686 (_ BitVec 32) (_ BitVec 64)) Unit!33592)

(assert (=> d!123349 (= lt!454028 (choose!82 (_keys!11285 thiss!1427) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!123349 e!581458))

(declare-fun res!688821 () Bool)

(assert (=> d!123349 (=> (not res!688821) (not e!581458))))

(assert (=> d!123349 (= res!688821 (and (bvsge (index!41063 lt!453980) #b00000000000000000000000000000000) (bvslt (index!41063 lt!453980) (size!31660 (_keys!11285 thiss!1427)))))))

(assert (=> d!123349 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11285 thiss!1427) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) lt!454028)))

(assert (= (and d!123349 res!688821) b!1029734))

(assert (= (and b!1029734 res!688819) b!1029735))

(assert (= (and b!1029735 res!688820) b!1029736))

(assert (= (and d!123349 res!688818) b!1029737))

(declare-fun m!949309 () Bool)

(assert (=> b!1029735 m!949309))

(declare-fun m!949311 () Bool)

(assert (=> b!1029734 m!949311))

(assert (=> b!1029734 m!949311))

(declare-fun m!949313 () Bool)

(assert (=> b!1029734 m!949313))

(assert (=> b!1029737 m!949237))

(declare-fun m!949315 () Bool)

(assert (=> b!1029737 m!949315))

(assert (=> b!1029737 m!949227))

(declare-fun m!949317 () Bool)

(assert (=> d!123349 m!949317))

(assert (=> b!1029666 d!123349))

(declare-fun b!1029780 () Bool)

(declare-fun e!581489 () ListLongMap!13791)

(declare-fun call!43520 () ListLongMap!13791)

(assert (=> b!1029780 (= e!581489 call!43520)))

(declare-fun b!1029781 () Bool)

(declare-fun e!581495 () Unit!33592)

(declare-fun Unit!33598 () Unit!33592)

(assert (=> b!1029781 (= e!581495 Unit!33598)))

(declare-fun call!43515 () ListLongMap!13791)

(declare-fun bm!43511 () Bool)

(declare-fun call!43514 () ListLongMap!13791)

(declare-fun c!104021 () Bool)

(declare-fun call!43519 () ListLongMap!13791)

(declare-fun c!104025 () Bool)

(declare-fun +!3062 (ListLongMap!13791 tuple2!15660) ListLongMap!13791)

(assert (=> bm!43511 (= call!43514 (+!3062 (ite c!104021 call!43515 (ite c!104025 call!43519 call!43520)) (ite (or c!104021 c!104025) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))))))

(declare-fun b!1029782 () Bool)

(declare-fun e!581488 () Bool)

(assert (=> b!1029782 (= e!581488 (validKeyInArray!0 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1029783 () Bool)

(declare-fun e!581498 () Bool)

(declare-fun call!43518 () Bool)

(assert (=> b!1029783 (= e!581498 (not call!43518))))

(declare-fun b!1029784 () Bool)

(declare-fun e!581494 () Bool)

(declare-fun call!43517 () Bool)

(assert (=> b!1029784 (= e!581494 (not call!43517))))

(declare-fun b!1029785 () Bool)

(declare-fun e!581496 () ListLongMap!13791)

(declare-fun e!581493 () ListLongMap!13791)

(assert (=> b!1029785 (= e!581496 e!581493)))

(assert (=> b!1029785 (= c!104025 (and (not (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!43512 () Bool)

(assert (=> bm!43512 (= call!43520 call!43519)))

(declare-fun b!1029786 () Bool)

(assert (=> b!1029786 (= e!581496 (+!3062 call!43514 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))))))

(declare-fun b!1029787 () Bool)

(declare-fun e!581490 () Bool)

(declare-fun e!581491 () Bool)

(assert (=> b!1029787 (= e!581490 e!581491)))

(declare-fun res!688845 () Bool)

(assert (=> b!1029787 (=> (not res!688845) (not e!581491))))

(declare-fun lt!454093 () ListLongMap!13791)

(declare-fun contains!5993 (ListLongMap!13791 (_ BitVec 64)) Bool)

(assert (=> b!1029787 (= res!688845 (contains!5993 lt!454093 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1029787 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))))))

(declare-fun b!1029788 () Bool)

(declare-fun call!43516 () ListLongMap!13791)

(assert (=> b!1029788 (= e!581493 call!43516)))

(declare-fun bm!43513 () Bool)

(assert (=> bm!43513 (= call!43518 (contains!5993 lt!454093 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1029789 () Bool)

(declare-fun e!581486 () Bool)

(declare-fun apply!939 (ListLongMap!13791 (_ BitVec 64)) V!37301)

(assert (=> b!1029789 (= e!581486 (= (apply!939 lt!454093 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5958 thiss!1427)))))

(declare-fun bm!43514 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3532 (array!64686 array!64688 (_ BitVec 32) (_ BitVec 32) V!37301 V!37301 (_ BitVec 32) Int) ListLongMap!13791)

(assert (=> bm!43514 (= call!43515 (getCurrentListMapNoExtraKeys!3532 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)))))

(declare-fun b!1029790 () Bool)

(declare-fun get!16373 (ValueCell!11457 V!37301) V!37301)

(assert (=> b!1029790 (= e!581491 (= (apply!939 lt!454093 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000)) (get!16373 (select (arr!31144 (_values!6145 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1029790 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31661 (_values!6145 thiss!1427))))))

(assert (=> b!1029790 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))))))

(declare-fun d!123351 () Bool)

(declare-fun e!581487 () Bool)

(assert (=> d!123351 e!581487))

(declare-fun res!688846 () Bool)

(assert (=> d!123351 (=> (not res!688846) (not e!581487))))

(assert (=> d!123351 (= res!688846 (or (bvsge #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))))))))

(declare-fun lt!454073 () ListLongMap!13791)

(assert (=> d!123351 (= lt!454093 lt!454073)))

(declare-fun lt!454074 () Unit!33592)

(assert (=> d!123351 (= lt!454074 e!581495)))

(declare-fun c!104026 () Bool)

(declare-fun e!581497 () Bool)

(assert (=> d!123351 (= c!104026 e!581497)))

(declare-fun res!688848 () Bool)

(assert (=> d!123351 (=> (not res!688848) (not e!581497))))

(assert (=> d!123351 (= res!688848 (bvslt #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))))))

(assert (=> d!123351 (= lt!454073 e!581496)))

(assert (=> d!123351 (= c!104021 (and (not (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!123351 (validMask!0 (mask!29880 thiss!1427))))

(assert (=> d!123351 (= (getCurrentListMap!3918 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)) lt!454093)))

(declare-fun b!1029791 () Bool)

(declare-fun e!581492 () Bool)

(assert (=> b!1029791 (= e!581498 e!581492)))

(declare-fun res!688847 () Bool)

(assert (=> b!1029791 (= res!688847 call!43518)))

(assert (=> b!1029791 (=> (not res!688847) (not e!581492))))

(declare-fun bm!43515 () Bool)

(assert (=> bm!43515 (= call!43516 call!43514)))

(declare-fun b!1029792 () Bool)

(declare-fun c!104023 () Bool)

(assert (=> b!1029792 (= c!104023 (and (not (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1029792 (= e!581493 e!581489)))

(declare-fun b!1029793 () Bool)

(declare-fun res!688841 () Bool)

(assert (=> b!1029793 (=> (not res!688841) (not e!581487))))

(assert (=> b!1029793 (= res!688841 e!581494)))

(declare-fun c!104022 () Bool)

(assert (=> b!1029793 (= c!104022 (not (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!43516 () Bool)

(assert (=> bm!43516 (= call!43519 call!43515)))

(declare-fun b!1029794 () Bool)

(assert (=> b!1029794 (= e!581494 e!581486)))

(declare-fun res!688840 () Bool)

(assert (=> b!1029794 (= res!688840 call!43517)))

(assert (=> b!1029794 (=> (not res!688840) (not e!581486))))

(declare-fun b!1029795 () Bool)

(declare-fun res!688844 () Bool)

(assert (=> b!1029795 (=> (not res!688844) (not e!581487))))

(assert (=> b!1029795 (= res!688844 e!581490)))

(declare-fun res!688842 () Bool)

(assert (=> b!1029795 (=> res!688842 e!581490)))

(assert (=> b!1029795 (= res!688842 (not e!581488))))

(declare-fun res!688843 () Bool)

(assert (=> b!1029795 (=> (not res!688843) (not e!581488))))

(assert (=> b!1029795 (= res!688843 (bvslt #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))))))

(declare-fun b!1029796 () Bool)

(declare-fun lt!454089 () Unit!33592)

(assert (=> b!1029796 (= e!581495 lt!454089)))

(declare-fun lt!454083 () ListLongMap!13791)

(assert (=> b!1029796 (= lt!454083 (getCurrentListMapNoExtraKeys!3532 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)))))

(declare-fun lt!454077 () (_ BitVec 64))

(assert (=> b!1029796 (= lt!454077 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!454085 () (_ BitVec 64))

(assert (=> b!1029796 (= lt!454085 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!454076 () Unit!33592)

(declare-fun addStillContains!627 (ListLongMap!13791 (_ BitVec 64) V!37301 (_ BitVec 64)) Unit!33592)

(assert (=> b!1029796 (= lt!454076 (addStillContains!627 lt!454083 lt!454077 (zeroValue!5958 thiss!1427) lt!454085))))

(assert (=> b!1029796 (contains!5993 (+!3062 lt!454083 (tuple2!15661 lt!454077 (zeroValue!5958 thiss!1427))) lt!454085)))

(declare-fun lt!454088 () Unit!33592)

(assert (=> b!1029796 (= lt!454088 lt!454076)))

(declare-fun lt!454075 () ListLongMap!13791)

(assert (=> b!1029796 (= lt!454075 (getCurrentListMapNoExtraKeys!3532 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)))))

(declare-fun lt!454084 () (_ BitVec 64))

(assert (=> b!1029796 (= lt!454084 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!454081 () (_ BitVec 64))

(assert (=> b!1029796 (= lt!454081 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!454078 () Unit!33592)

(declare-fun addApplyDifferent!479 (ListLongMap!13791 (_ BitVec 64) V!37301 (_ BitVec 64)) Unit!33592)

(assert (=> b!1029796 (= lt!454078 (addApplyDifferent!479 lt!454075 lt!454084 (minValue!5958 thiss!1427) lt!454081))))

(assert (=> b!1029796 (= (apply!939 (+!3062 lt!454075 (tuple2!15661 lt!454084 (minValue!5958 thiss!1427))) lt!454081) (apply!939 lt!454075 lt!454081))))

(declare-fun lt!454091 () Unit!33592)

(assert (=> b!1029796 (= lt!454091 lt!454078)))

(declare-fun lt!454082 () ListLongMap!13791)

(assert (=> b!1029796 (= lt!454082 (getCurrentListMapNoExtraKeys!3532 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)))))

(declare-fun lt!454090 () (_ BitVec 64))

(assert (=> b!1029796 (= lt!454090 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!454079 () (_ BitVec 64))

(assert (=> b!1029796 (= lt!454079 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!454087 () Unit!33592)

(assert (=> b!1029796 (= lt!454087 (addApplyDifferent!479 lt!454082 lt!454090 (zeroValue!5958 thiss!1427) lt!454079))))

(assert (=> b!1029796 (= (apply!939 (+!3062 lt!454082 (tuple2!15661 lt!454090 (zeroValue!5958 thiss!1427))) lt!454079) (apply!939 lt!454082 lt!454079))))

(declare-fun lt!454094 () Unit!33592)

(assert (=> b!1029796 (= lt!454094 lt!454087)))

(declare-fun lt!454092 () ListLongMap!13791)

(assert (=> b!1029796 (= lt!454092 (getCurrentListMapNoExtraKeys!3532 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)))))

(declare-fun lt!454086 () (_ BitVec 64))

(assert (=> b!1029796 (= lt!454086 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!454080 () (_ BitVec 64))

(assert (=> b!1029796 (= lt!454080 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1029796 (= lt!454089 (addApplyDifferent!479 lt!454092 lt!454086 (minValue!5958 thiss!1427) lt!454080))))

(assert (=> b!1029796 (= (apply!939 (+!3062 lt!454092 (tuple2!15661 lt!454086 (minValue!5958 thiss!1427))) lt!454080) (apply!939 lt!454092 lt!454080))))

(declare-fun b!1029797 () Bool)

(assert (=> b!1029797 (= e!581489 call!43516)))

(declare-fun bm!43517 () Bool)

(assert (=> bm!43517 (= call!43517 (contains!5993 lt!454093 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1029798 () Bool)

(assert (=> b!1029798 (= e!581492 (= (apply!939 lt!454093 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5958 thiss!1427)))))

(declare-fun b!1029799 () Bool)

(assert (=> b!1029799 (= e!581487 e!581498)))

(declare-fun c!104024 () Bool)

(assert (=> b!1029799 (= c!104024 (not (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1029800 () Bool)

(assert (=> b!1029800 (= e!581497 (validKeyInArray!0 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!123351 c!104021) b!1029786))

(assert (= (and d!123351 (not c!104021)) b!1029785))

(assert (= (and b!1029785 c!104025) b!1029788))

(assert (= (and b!1029785 (not c!104025)) b!1029792))

(assert (= (and b!1029792 c!104023) b!1029797))

(assert (= (and b!1029792 (not c!104023)) b!1029780))

(assert (= (or b!1029797 b!1029780) bm!43512))

(assert (= (or b!1029788 bm!43512) bm!43516))

(assert (= (or b!1029788 b!1029797) bm!43515))

(assert (= (or b!1029786 bm!43516) bm!43514))

(assert (= (or b!1029786 bm!43515) bm!43511))

(assert (= (and d!123351 res!688848) b!1029800))

(assert (= (and d!123351 c!104026) b!1029796))

(assert (= (and d!123351 (not c!104026)) b!1029781))

(assert (= (and d!123351 res!688846) b!1029795))

(assert (= (and b!1029795 res!688843) b!1029782))

(assert (= (and b!1029795 (not res!688842)) b!1029787))

(assert (= (and b!1029787 res!688845) b!1029790))

(assert (= (and b!1029795 res!688844) b!1029793))

(assert (= (and b!1029793 c!104022) b!1029794))

(assert (= (and b!1029793 (not c!104022)) b!1029784))

(assert (= (and b!1029794 res!688840) b!1029789))

(assert (= (or b!1029794 b!1029784) bm!43517))

(assert (= (and b!1029793 res!688841) b!1029799))

(assert (= (and b!1029799 c!104024) b!1029791))

(assert (= (and b!1029799 (not c!104024)) b!1029783))

(assert (= (and b!1029791 res!688847) b!1029798))

(assert (= (or b!1029791 b!1029783) bm!43513))

(declare-fun b_lambda!15929 () Bool)

(assert (=> (not b_lambda!15929) (not b!1029790)))

(assert (=> b!1029790 t!31035))

(declare-fun b_and!32971 () Bool)

(assert (= b_and!32965 (and (=> t!31035 result!14171) b_and!32971)))

(declare-fun m!949319 () Bool)

(assert (=> b!1029798 m!949319))

(declare-fun m!949321 () Bool)

(assert (=> b!1029787 m!949321))

(assert (=> b!1029787 m!949321))

(declare-fun m!949323 () Bool)

(assert (=> b!1029787 m!949323))

(declare-fun m!949325 () Bool)

(assert (=> b!1029789 m!949325))

(declare-fun m!949327 () Bool)

(assert (=> b!1029790 m!949327))

(assert (=> b!1029790 m!949327))

(assert (=> b!1029790 m!949221))

(declare-fun m!949329 () Bool)

(assert (=> b!1029790 m!949329))

(assert (=> b!1029790 m!949321))

(declare-fun m!949331 () Bool)

(assert (=> b!1029790 m!949331))

(assert (=> b!1029790 m!949321))

(assert (=> b!1029790 m!949221))

(declare-fun m!949333 () Bool)

(assert (=> bm!43511 m!949333))

(assert (=> b!1029800 m!949321))

(assert (=> b!1029800 m!949321))

(declare-fun m!949335 () Bool)

(assert (=> b!1029800 m!949335))

(assert (=> b!1029782 m!949321))

(assert (=> b!1029782 m!949321))

(assert (=> b!1029782 m!949335))

(declare-fun m!949337 () Bool)

(assert (=> bm!43514 m!949337))

(declare-fun m!949339 () Bool)

(assert (=> b!1029786 m!949339))

(declare-fun m!949341 () Bool)

(assert (=> b!1029796 m!949341))

(declare-fun m!949343 () Bool)

(assert (=> b!1029796 m!949343))

(declare-fun m!949345 () Bool)

(assert (=> b!1029796 m!949345))

(declare-fun m!949347 () Bool)

(assert (=> b!1029796 m!949347))

(declare-fun m!949349 () Bool)

(assert (=> b!1029796 m!949349))

(declare-fun m!949351 () Bool)

(assert (=> b!1029796 m!949351))

(assert (=> b!1029796 m!949345))

(declare-fun m!949353 () Bool)

(assert (=> b!1029796 m!949353))

(declare-fun m!949355 () Bool)

(assert (=> b!1029796 m!949355))

(assert (=> b!1029796 m!949343))

(declare-fun m!949357 () Bool)

(assert (=> b!1029796 m!949357))

(declare-fun m!949359 () Bool)

(assert (=> b!1029796 m!949359))

(assert (=> b!1029796 m!949341))

(declare-fun m!949361 () Bool)

(assert (=> b!1029796 m!949361))

(declare-fun m!949363 () Bool)

(assert (=> b!1029796 m!949363))

(declare-fun m!949365 () Bool)

(assert (=> b!1029796 m!949365))

(assert (=> b!1029796 m!949353))

(declare-fun m!949367 () Bool)

(assert (=> b!1029796 m!949367))

(assert (=> b!1029796 m!949337))

(declare-fun m!949369 () Bool)

(assert (=> b!1029796 m!949369))

(assert (=> b!1029796 m!949321))

(declare-fun m!949371 () Bool)

(assert (=> bm!43513 m!949371))

(declare-fun m!949373 () Bool)

(assert (=> bm!43517 m!949373))

(declare-fun m!949375 () Bool)

(assert (=> d!123351 m!949375))

(assert (=> b!1029666 d!123351))

(declare-fun d!123353 () Bool)

(declare-fun e!581501 () Bool)

(assert (=> d!123353 e!581501))

(declare-fun res!688851 () Bool)

(assert (=> d!123353 (=> (not res!688851) (not e!581501))))

(assert (=> d!123353 (= res!688851 (and (bvsge (index!41063 lt!453980) #b00000000000000000000000000000000) (bvslt (index!41063 lt!453980) (size!31660 (_keys!11285 thiss!1427)))))))

(declare-fun lt!454097 () Unit!33592)

(declare-fun choose!25 (array!64686 (_ BitVec 32) (_ BitVec 32)) Unit!33592)

(assert (=> d!123353 (= lt!454097 (choose!25 (_keys!11285 thiss!1427) (index!41063 lt!453980) (mask!29880 thiss!1427)))))

(assert (=> d!123353 (validMask!0 (mask!29880 thiss!1427))))

(assert (=> d!123353 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11285 thiss!1427) (index!41063 lt!453980) (mask!29880 thiss!1427)) lt!454097)))

(declare-fun b!1029803 () Bool)

(assert (=> b!1029803 (= e!581501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) (mask!29880 thiss!1427)))))

(assert (= (and d!123353 res!688851) b!1029803))

(declare-fun m!949377 () Bool)

(assert (=> d!123353 m!949377))

(assert (=> d!123353 m!949375))

(assert (=> b!1029803 m!949237))

(declare-fun m!949379 () Bool)

(assert (=> b!1029803 m!949379))

(assert (=> b!1029666 d!123353))

(declare-fun d!123355 () Bool)

(declare-fun lt!454100 () ListLongMap!13791)

(assert (=> d!123355 (not (contains!5993 lt!454100 key!909))))

(declare-fun removeStrictlySorted!55 (List!21933 (_ BitVec 64)) List!21933)

(assert (=> d!123355 (= lt!454100 (ListLongMap!13792 (removeStrictlySorted!55 (toList!6911 (getCurrentListMap!3918 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427))) key!909)))))

(assert (=> d!123355 (= (-!487 (getCurrentListMap!3918 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)) key!909) lt!454100)))

(declare-fun bs!30081 () Bool)

(assert (= bs!30081 d!123355))

(declare-fun m!949381 () Bool)

(assert (=> bs!30081 m!949381))

(declare-fun m!949383 () Bool)

(assert (=> bs!30081 m!949383))

(assert (=> b!1029666 d!123355))

(declare-fun b!1029814 () Bool)

(declare-fun e!581513 () Bool)

(declare-fun e!581512 () Bool)

(assert (=> b!1029814 (= e!581513 e!581512)))

(declare-fun res!688858 () Bool)

(assert (=> b!1029814 (=> (not res!688858) (not e!581512))))

(declare-fun e!581511 () Bool)

(assert (=> b!1029814 (= res!688858 (not e!581511))))

(declare-fun res!688859 () Bool)

(assert (=> b!1029814 (=> (not res!688859) (not e!581511))))

(assert (=> b!1029814 (= res!688859 (validKeyInArray!0 (select (arr!31143 lt!453977) #b00000000000000000000000000000000)))))

(declare-fun b!1029815 () Bool)

(declare-fun contains!5994 (List!21934 (_ BitVec 64)) Bool)

(assert (=> b!1029815 (= e!581511 (contains!5994 Nil!21931 (select (arr!31143 lt!453977) #b00000000000000000000000000000000)))))

(declare-fun b!1029816 () Bool)

(declare-fun e!581510 () Bool)

(assert (=> b!1029816 (= e!581512 e!581510)))

(declare-fun c!104029 () Bool)

(assert (=> b!1029816 (= c!104029 (validKeyInArray!0 (select (arr!31143 lt!453977) #b00000000000000000000000000000000)))))

(declare-fun d!123357 () Bool)

(declare-fun res!688860 () Bool)

(assert (=> d!123357 (=> res!688860 e!581513)))

(assert (=> d!123357 (= res!688860 (bvsge #b00000000000000000000000000000000 (size!31660 lt!453977)))))

(assert (=> d!123357 (= (arrayNoDuplicates!0 lt!453977 #b00000000000000000000000000000000 Nil!21931) e!581513)))

(declare-fun b!1029817 () Bool)

(declare-fun call!43523 () Bool)

(assert (=> b!1029817 (= e!581510 call!43523)))

(declare-fun b!1029818 () Bool)

(assert (=> b!1029818 (= e!581510 call!43523)))

(declare-fun bm!43520 () Bool)

(assert (=> bm!43520 (= call!43523 (arrayNoDuplicates!0 lt!453977 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104029 (Cons!21930 (select (arr!31143 lt!453977) #b00000000000000000000000000000000) Nil!21931) Nil!21931)))))

(assert (= (and d!123357 (not res!688860)) b!1029814))

(assert (= (and b!1029814 res!688859) b!1029815))

(assert (= (and b!1029814 res!688858) b!1029816))

(assert (= (and b!1029816 c!104029) b!1029817))

(assert (= (and b!1029816 (not c!104029)) b!1029818))

(assert (= (or b!1029817 b!1029818) bm!43520))

(assert (=> b!1029814 m!949297))

(assert (=> b!1029814 m!949297))

(assert (=> b!1029814 m!949299))

(assert (=> b!1029815 m!949297))

(assert (=> b!1029815 m!949297))

(declare-fun m!949385 () Bool)

(assert (=> b!1029815 m!949385))

(assert (=> b!1029816 m!949297))

(assert (=> b!1029816 m!949297))

(assert (=> b!1029816 m!949299))

(assert (=> bm!43520 m!949297))

(declare-fun m!949387 () Bool)

(assert (=> bm!43520 m!949387))

(assert (=> b!1029666 d!123357))

(declare-fun b!1029819 () Bool)

(declare-fun e!581517 () ListLongMap!13791)

(declare-fun call!43530 () ListLongMap!13791)

(assert (=> b!1029819 (= e!581517 call!43530)))

(declare-fun b!1029820 () Bool)

(declare-fun e!581523 () Unit!33592)

(declare-fun Unit!33599 () Unit!33592)

(assert (=> b!1029820 (= e!581523 Unit!33599)))

(declare-fun c!104030 () Bool)

(declare-fun call!43529 () ListLongMap!13791)

(declare-fun c!104034 () Bool)

(declare-fun call!43525 () ListLongMap!13791)

(declare-fun bm!43521 () Bool)

(declare-fun call!43524 () ListLongMap!13791)

(assert (=> bm!43521 (= call!43524 (+!3062 (ite c!104030 call!43525 (ite c!104034 call!43529 call!43530)) (ite (or c!104030 c!104034) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))))))

(declare-fun b!1029821 () Bool)

(declare-fun e!581516 () Bool)

(assert (=> b!1029821 (= e!581516 (validKeyInArray!0 (select (arr!31143 lt!453977) #b00000000000000000000000000000000)))))

(declare-fun b!1029822 () Bool)

(declare-fun e!581526 () Bool)

(declare-fun call!43528 () Bool)

(assert (=> b!1029822 (= e!581526 (not call!43528))))

(declare-fun b!1029823 () Bool)

(declare-fun e!581522 () Bool)

(declare-fun call!43527 () Bool)

(assert (=> b!1029823 (= e!581522 (not call!43527))))

(declare-fun b!1029824 () Bool)

(declare-fun e!581524 () ListLongMap!13791)

(declare-fun e!581521 () ListLongMap!13791)

(assert (=> b!1029824 (= e!581524 e!581521)))

(assert (=> b!1029824 (= c!104034 (and (not (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!43522 () Bool)

(assert (=> bm!43522 (= call!43530 call!43529)))

(declare-fun b!1029825 () Bool)

(assert (=> b!1029825 (= e!581524 (+!3062 call!43524 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))))))

(declare-fun b!1029826 () Bool)

(declare-fun e!581518 () Bool)

(declare-fun e!581519 () Bool)

(assert (=> b!1029826 (= e!581518 e!581519)))

(declare-fun res!688866 () Bool)

(assert (=> b!1029826 (=> (not res!688866) (not e!581519))))

(declare-fun lt!454121 () ListLongMap!13791)

(assert (=> b!1029826 (= res!688866 (contains!5993 lt!454121 (select (arr!31143 lt!453977) #b00000000000000000000000000000000)))))

(assert (=> b!1029826 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31660 lt!453977)))))

(declare-fun b!1029827 () Bool)

(declare-fun call!43526 () ListLongMap!13791)

(assert (=> b!1029827 (= e!581521 call!43526)))

(declare-fun bm!43523 () Bool)

(assert (=> bm!43523 (= call!43528 (contains!5993 lt!454121 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1029828 () Bool)

(declare-fun e!581514 () Bool)

(assert (=> b!1029828 (= e!581514 (= (apply!939 lt!454121 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5958 thiss!1427)))))

(declare-fun bm!43524 () Bool)

(assert (=> bm!43524 (= call!43525 (getCurrentListMapNoExtraKeys!3532 lt!453977 lt!453976 (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)))))

(declare-fun b!1029829 () Bool)

(assert (=> b!1029829 (= e!581519 (= (apply!939 lt!454121 (select (arr!31143 lt!453977) #b00000000000000000000000000000000)) (get!16373 (select (arr!31144 lt!453976) #b00000000000000000000000000000000) (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1029829 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31661 lt!453976)))))

(assert (=> b!1029829 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31660 lt!453977)))))

(declare-fun d!123359 () Bool)

(declare-fun e!581515 () Bool)

(assert (=> d!123359 e!581515))

(declare-fun res!688867 () Bool)

(assert (=> d!123359 (=> (not res!688867) (not e!581515))))

(assert (=> d!123359 (= res!688867 (or (bvsge #b00000000000000000000000000000000 (size!31660 lt!453977)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31660 lt!453977)))))))

(declare-fun lt!454101 () ListLongMap!13791)

(assert (=> d!123359 (= lt!454121 lt!454101)))

(declare-fun lt!454102 () Unit!33592)

(assert (=> d!123359 (= lt!454102 e!581523)))

(declare-fun c!104035 () Bool)

(declare-fun e!581525 () Bool)

(assert (=> d!123359 (= c!104035 e!581525)))

(declare-fun res!688869 () Bool)

(assert (=> d!123359 (=> (not res!688869) (not e!581525))))

(assert (=> d!123359 (= res!688869 (bvslt #b00000000000000000000000000000000 (size!31660 lt!453977)))))

(assert (=> d!123359 (= lt!454101 e!581524)))

(assert (=> d!123359 (= c!104030 (and (not (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!123359 (validMask!0 (mask!29880 thiss!1427))))

(assert (=> d!123359 (= (getCurrentListMap!3918 lt!453977 lt!453976 (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)) lt!454121)))

(declare-fun b!1029830 () Bool)

(declare-fun e!581520 () Bool)

(assert (=> b!1029830 (= e!581526 e!581520)))

(declare-fun res!688868 () Bool)

(assert (=> b!1029830 (= res!688868 call!43528)))

(assert (=> b!1029830 (=> (not res!688868) (not e!581520))))

(declare-fun bm!43525 () Bool)

(assert (=> bm!43525 (= call!43526 call!43524)))

(declare-fun b!1029831 () Bool)

(declare-fun c!104032 () Bool)

(assert (=> b!1029831 (= c!104032 (and (not (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1029831 (= e!581521 e!581517)))

(declare-fun b!1029832 () Bool)

(declare-fun res!688862 () Bool)

(assert (=> b!1029832 (=> (not res!688862) (not e!581515))))

(assert (=> b!1029832 (= res!688862 e!581522)))

(declare-fun c!104031 () Bool)

(assert (=> b!1029832 (= c!104031 (not (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!43526 () Bool)

(assert (=> bm!43526 (= call!43529 call!43525)))

(declare-fun b!1029833 () Bool)

(assert (=> b!1029833 (= e!581522 e!581514)))

(declare-fun res!688861 () Bool)

(assert (=> b!1029833 (= res!688861 call!43527)))

(assert (=> b!1029833 (=> (not res!688861) (not e!581514))))

(declare-fun b!1029834 () Bool)

(declare-fun res!688865 () Bool)

(assert (=> b!1029834 (=> (not res!688865) (not e!581515))))

(assert (=> b!1029834 (= res!688865 e!581518)))

(declare-fun res!688863 () Bool)

(assert (=> b!1029834 (=> res!688863 e!581518)))

(assert (=> b!1029834 (= res!688863 (not e!581516))))

(declare-fun res!688864 () Bool)

(assert (=> b!1029834 (=> (not res!688864) (not e!581516))))

(assert (=> b!1029834 (= res!688864 (bvslt #b00000000000000000000000000000000 (size!31660 lt!453977)))))

(declare-fun b!1029835 () Bool)

(declare-fun lt!454117 () Unit!33592)

(assert (=> b!1029835 (= e!581523 lt!454117)))

(declare-fun lt!454111 () ListLongMap!13791)

(assert (=> b!1029835 (= lt!454111 (getCurrentListMapNoExtraKeys!3532 lt!453977 lt!453976 (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)))))

(declare-fun lt!454105 () (_ BitVec 64))

(assert (=> b!1029835 (= lt!454105 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!454113 () (_ BitVec 64))

(assert (=> b!1029835 (= lt!454113 (select (arr!31143 lt!453977) #b00000000000000000000000000000000))))

(declare-fun lt!454104 () Unit!33592)

(assert (=> b!1029835 (= lt!454104 (addStillContains!627 lt!454111 lt!454105 (zeroValue!5958 thiss!1427) lt!454113))))

(assert (=> b!1029835 (contains!5993 (+!3062 lt!454111 (tuple2!15661 lt!454105 (zeroValue!5958 thiss!1427))) lt!454113)))

(declare-fun lt!454116 () Unit!33592)

(assert (=> b!1029835 (= lt!454116 lt!454104)))

(declare-fun lt!454103 () ListLongMap!13791)

(assert (=> b!1029835 (= lt!454103 (getCurrentListMapNoExtraKeys!3532 lt!453977 lt!453976 (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)))))

(declare-fun lt!454112 () (_ BitVec 64))

(assert (=> b!1029835 (= lt!454112 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!454109 () (_ BitVec 64))

(assert (=> b!1029835 (= lt!454109 (select (arr!31143 lt!453977) #b00000000000000000000000000000000))))

(declare-fun lt!454106 () Unit!33592)

(assert (=> b!1029835 (= lt!454106 (addApplyDifferent!479 lt!454103 lt!454112 (minValue!5958 thiss!1427) lt!454109))))

(assert (=> b!1029835 (= (apply!939 (+!3062 lt!454103 (tuple2!15661 lt!454112 (minValue!5958 thiss!1427))) lt!454109) (apply!939 lt!454103 lt!454109))))

(declare-fun lt!454119 () Unit!33592)

(assert (=> b!1029835 (= lt!454119 lt!454106)))

(declare-fun lt!454110 () ListLongMap!13791)

(assert (=> b!1029835 (= lt!454110 (getCurrentListMapNoExtraKeys!3532 lt!453977 lt!453976 (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)))))

(declare-fun lt!454118 () (_ BitVec 64))

(assert (=> b!1029835 (= lt!454118 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!454107 () (_ BitVec 64))

(assert (=> b!1029835 (= lt!454107 (select (arr!31143 lt!453977) #b00000000000000000000000000000000))))

(declare-fun lt!454115 () Unit!33592)

(assert (=> b!1029835 (= lt!454115 (addApplyDifferent!479 lt!454110 lt!454118 (zeroValue!5958 thiss!1427) lt!454107))))

(assert (=> b!1029835 (= (apply!939 (+!3062 lt!454110 (tuple2!15661 lt!454118 (zeroValue!5958 thiss!1427))) lt!454107) (apply!939 lt!454110 lt!454107))))

(declare-fun lt!454122 () Unit!33592)

(assert (=> b!1029835 (= lt!454122 lt!454115)))

(declare-fun lt!454120 () ListLongMap!13791)

(assert (=> b!1029835 (= lt!454120 (getCurrentListMapNoExtraKeys!3532 lt!453977 lt!453976 (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)))))

(declare-fun lt!454114 () (_ BitVec 64))

(assert (=> b!1029835 (= lt!454114 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!454108 () (_ BitVec 64))

(assert (=> b!1029835 (= lt!454108 (select (arr!31143 lt!453977) #b00000000000000000000000000000000))))

(assert (=> b!1029835 (= lt!454117 (addApplyDifferent!479 lt!454120 lt!454114 (minValue!5958 thiss!1427) lt!454108))))

(assert (=> b!1029835 (= (apply!939 (+!3062 lt!454120 (tuple2!15661 lt!454114 (minValue!5958 thiss!1427))) lt!454108) (apply!939 lt!454120 lt!454108))))

(declare-fun b!1029836 () Bool)

(assert (=> b!1029836 (= e!581517 call!43526)))

(declare-fun bm!43527 () Bool)

(assert (=> bm!43527 (= call!43527 (contains!5993 lt!454121 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1029837 () Bool)

(assert (=> b!1029837 (= e!581520 (= (apply!939 lt!454121 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5958 thiss!1427)))))

(declare-fun b!1029838 () Bool)

(assert (=> b!1029838 (= e!581515 e!581526)))

(declare-fun c!104033 () Bool)

(assert (=> b!1029838 (= c!104033 (not (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1029839 () Bool)

(assert (=> b!1029839 (= e!581525 (validKeyInArray!0 (select (arr!31143 lt!453977) #b00000000000000000000000000000000)))))

(assert (= (and d!123359 c!104030) b!1029825))

(assert (= (and d!123359 (not c!104030)) b!1029824))

(assert (= (and b!1029824 c!104034) b!1029827))

(assert (= (and b!1029824 (not c!104034)) b!1029831))

(assert (= (and b!1029831 c!104032) b!1029836))

(assert (= (and b!1029831 (not c!104032)) b!1029819))

(assert (= (or b!1029836 b!1029819) bm!43522))

(assert (= (or b!1029827 bm!43522) bm!43526))

(assert (= (or b!1029827 b!1029836) bm!43525))

(assert (= (or b!1029825 bm!43526) bm!43524))

(assert (= (or b!1029825 bm!43525) bm!43521))

(assert (= (and d!123359 res!688869) b!1029839))

(assert (= (and d!123359 c!104035) b!1029835))

(assert (= (and d!123359 (not c!104035)) b!1029820))

(assert (= (and d!123359 res!688867) b!1029834))

(assert (= (and b!1029834 res!688864) b!1029821))

(assert (= (and b!1029834 (not res!688863)) b!1029826))

(assert (= (and b!1029826 res!688866) b!1029829))

(assert (= (and b!1029834 res!688865) b!1029832))

(assert (= (and b!1029832 c!104031) b!1029833))

(assert (= (and b!1029832 (not c!104031)) b!1029823))

(assert (= (and b!1029833 res!688861) b!1029828))

(assert (= (or b!1029833 b!1029823) bm!43527))

(assert (= (and b!1029832 res!688862) b!1029838))

(assert (= (and b!1029838 c!104033) b!1029830))

(assert (= (and b!1029838 (not c!104033)) b!1029822))

(assert (= (and b!1029830 res!688868) b!1029837))

(assert (= (or b!1029830 b!1029822) bm!43523))

(declare-fun b_lambda!15931 () Bool)

(assert (=> (not b_lambda!15931) (not b!1029829)))

(assert (=> b!1029829 t!31035))

(declare-fun b_and!32973 () Bool)

(assert (= b_and!32971 (and (=> t!31035 result!14171) b_and!32973)))

(declare-fun m!949389 () Bool)

(assert (=> b!1029837 m!949389))

(assert (=> b!1029826 m!949297))

(assert (=> b!1029826 m!949297))

(declare-fun m!949391 () Bool)

(assert (=> b!1029826 m!949391))

(declare-fun m!949393 () Bool)

(assert (=> b!1029828 m!949393))

(declare-fun m!949395 () Bool)

(assert (=> b!1029829 m!949395))

(assert (=> b!1029829 m!949395))

(assert (=> b!1029829 m!949221))

(declare-fun m!949397 () Bool)

(assert (=> b!1029829 m!949397))

(assert (=> b!1029829 m!949297))

(declare-fun m!949399 () Bool)

(assert (=> b!1029829 m!949399))

(assert (=> b!1029829 m!949297))

(assert (=> b!1029829 m!949221))

(declare-fun m!949401 () Bool)

(assert (=> bm!43521 m!949401))

(assert (=> b!1029839 m!949297))

(assert (=> b!1029839 m!949297))

(assert (=> b!1029839 m!949299))

(assert (=> b!1029821 m!949297))

(assert (=> b!1029821 m!949297))

(assert (=> b!1029821 m!949299))

(declare-fun m!949403 () Bool)

(assert (=> bm!43524 m!949403))

(declare-fun m!949405 () Bool)

(assert (=> b!1029825 m!949405))

(declare-fun m!949407 () Bool)

(assert (=> b!1029835 m!949407))

(declare-fun m!949409 () Bool)

(assert (=> b!1029835 m!949409))

(declare-fun m!949411 () Bool)

(assert (=> b!1029835 m!949411))

(declare-fun m!949413 () Bool)

(assert (=> b!1029835 m!949413))

(declare-fun m!949415 () Bool)

(assert (=> b!1029835 m!949415))

(declare-fun m!949417 () Bool)

(assert (=> b!1029835 m!949417))

(assert (=> b!1029835 m!949411))

(declare-fun m!949419 () Bool)

(assert (=> b!1029835 m!949419))

(declare-fun m!949421 () Bool)

(assert (=> b!1029835 m!949421))

(assert (=> b!1029835 m!949409))

(declare-fun m!949423 () Bool)

(assert (=> b!1029835 m!949423))

(declare-fun m!949425 () Bool)

(assert (=> b!1029835 m!949425))

(assert (=> b!1029835 m!949407))

(declare-fun m!949427 () Bool)

(assert (=> b!1029835 m!949427))

(declare-fun m!949429 () Bool)

(assert (=> b!1029835 m!949429))

(declare-fun m!949431 () Bool)

(assert (=> b!1029835 m!949431))

(assert (=> b!1029835 m!949419))

(declare-fun m!949433 () Bool)

(assert (=> b!1029835 m!949433))

(assert (=> b!1029835 m!949403))

(declare-fun m!949435 () Bool)

(assert (=> b!1029835 m!949435))

(assert (=> b!1029835 m!949297))

(declare-fun m!949437 () Bool)

(assert (=> bm!43523 m!949437))

(declare-fun m!949439 () Bool)

(assert (=> bm!43527 m!949439))

(assert (=> d!123359 m!949375))

(assert (=> b!1029666 d!123359))

(declare-fun b!1029840 () Bool)

(declare-fun e!581528 () (_ BitVec 32))

(declare-fun call!43531 () (_ BitVec 32))

(assert (=> b!1029840 (= e!581528 (bvadd #b00000000000000000000000000000001 call!43531))))

(declare-fun b!1029841 () Bool)

(assert (=> b!1029841 (= e!581528 call!43531)))

(declare-fun b!1029842 () Bool)

(declare-fun e!581527 () (_ BitVec 32))

(assert (=> b!1029842 (= e!581527 #b00000000000000000000000000000000)))

(declare-fun d!123361 () Bool)

(declare-fun lt!454123 () (_ BitVec 32))

(assert (=> d!123361 (and (bvsge lt!454123 #b00000000000000000000000000000000) (bvsle lt!454123 (bvsub (size!31660 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!123361 (= lt!454123 e!581527)))

(declare-fun c!104036 () Bool)

(assert (=> d!123361 (= c!104036 (bvsge #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))))))

(assert (=> d!123361 (and (bvsle #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31660 (_keys!11285 thiss!1427)) (size!31660 (_keys!11285 thiss!1427))))))

(assert (=> d!123361 (= (arrayCountValidKeys!0 (_keys!11285 thiss!1427) #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))) lt!454123)))

(declare-fun bm!43528 () Bool)

(assert (=> bm!43528 (= call!43531 (arrayCountValidKeys!0 (_keys!11285 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31660 (_keys!11285 thiss!1427))))))

(declare-fun b!1029843 () Bool)

(assert (=> b!1029843 (= e!581527 e!581528)))

(declare-fun c!104037 () Bool)

(assert (=> b!1029843 (= c!104037 (validKeyInArray!0 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!123361 c!104036) b!1029842))

(assert (= (and d!123361 (not c!104036)) b!1029843))

(assert (= (and b!1029843 c!104037) b!1029840))

(assert (= (and b!1029843 (not c!104037)) b!1029841))

(assert (= (or b!1029840 b!1029841) bm!43528))

(declare-fun m!949441 () Bool)

(assert (=> bm!43528 m!949441))

(assert (=> b!1029843 m!949321))

(assert (=> b!1029843 m!949321))

(assert (=> b!1029843 m!949335))

(assert (=> b!1029666 d!123361))

(declare-fun d!123363 () Bool)

(declare-fun res!688874 () Bool)

(declare-fun e!581533 () Bool)

(assert (=> d!123363 (=> res!688874 e!581533)))

(assert (=> d!123363 (= res!688874 (= (select (arr!31143 lt!453977) #b00000000000000000000000000000000) key!909))))

(assert (=> d!123363 (= (arrayContainsKey!0 lt!453977 key!909 #b00000000000000000000000000000000) e!581533)))

(declare-fun b!1029848 () Bool)

(declare-fun e!581534 () Bool)

(assert (=> b!1029848 (= e!581533 e!581534)))

(declare-fun res!688875 () Bool)

(assert (=> b!1029848 (=> (not res!688875) (not e!581534))))

(assert (=> b!1029848 (= res!688875 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31660 lt!453977)))))

(declare-fun b!1029849 () Bool)

(assert (=> b!1029849 (= e!581534 (arrayContainsKey!0 lt!453977 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!123363 (not res!688874)) b!1029848))

(assert (= (and b!1029848 res!688875) b!1029849))

(assert (=> d!123363 m!949297))

(declare-fun m!949443 () Bool)

(assert (=> b!1029849 m!949443))

(assert (=> b!1029666 d!123363))

(declare-fun d!123365 () Bool)

(declare-fun e!581537 () Bool)

(assert (=> d!123365 e!581537))

(declare-fun res!688878 () Bool)

(assert (=> d!123365 (=> (not res!688878) (not e!581537))))

(assert (=> d!123365 (= res!688878 (bvslt (index!41063 lt!453980) (size!31660 (_keys!11285 thiss!1427))))))

(declare-fun lt!454126 () Unit!33592)

(declare-fun choose!121 (array!64686 (_ BitVec 32) (_ BitVec 64)) Unit!33592)

(assert (=> d!123365 (= lt!454126 (choose!121 (_keys!11285 thiss!1427) (index!41063 lt!453980) key!909))))

(assert (=> d!123365 (bvsge (index!41063 lt!453980) #b00000000000000000000000000000000)))

(assert (=> d!123365 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11285 thiss!1427) (index!41063 lt!453980) key!909) lt!454126)))

(declare-fun b!1029852 () Bool)

(assert (=> b!1029852 (= e!581537 (not (arrayContainsKey!0 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!123365 res!688878) b!1029852))

(declare-fun m!949445 () Bool)

(assert (=> d!123365 m!949445))

(assert (=> b!1029852 m!949237))

(declare-fun m!949447 () Bool)

(assert (=> b!1029852 m!949447))

(assert (=> b!1029666 d!123365))

(declare-fun d!123367 () Bool)

(assert (=> d!123367 (= (validMask!0 (mask!29880 (_2!7839 lt!453983))) (and (or (= (mask!29880 (_2!7839 lt!453983)) #b00000000000000000000000000000111) (= (mask!29880 (_2!7839 lt!453983)) #b00000000000000000000000000001111) (= (mask!29880 (_2!7839 lt!453983)) #b00000000000000000000000000011111) (= (mask!29880 (_2!7839 lt!453983)) #b00000000000000000000000000111111) (= (mask!29880 (_2!7839 lt!453983)) #b00000000000000000000000001111111) (= (mask!29880 (_2!7839 lt!453983)) #b00000000000000000000000011111111) (= (mask!29880 (_2!7839 lt!453983)) #b00000000000000000000000111111111) (= (mask!29880 (_2!7839 lt!453983)) #b00000000000000000000001111111111) (= (mask!29880 (_2!7839 lt!453983)) #b00000000000000000000011111111111) (= (mask!29880 (_2!7839 lt!453983)) #b00000000000000000000111111111111) (= (mask!29880 (_2!7839 lt!453983)) #b00000000000000000001111111111111) (= (mask!29880 (_2!7839 lt!453983)) #b00000000000000000011111111111111) (= (mask!29880 (_2!7839 lt!453983)) #b00000000000000000111111111111111) (= (mask!29880 (_2!7839 lt!453983)) #b00000000000000001111111111111111) (= (mask!29880 (_2!7839 lt!453983)) #b00000000000000011111111111111111) (= (mask!29880 (_2!7839 lt!453983)) #b00000000000000111111111111111111) (= (mask!29880 (_2!7839 lt!453983)) #b00000000000001111111111111111111) (= (mask!29880 (_2!7839 lt!453983)) #b00000000000011111111111111111111) (= (mask!29880 (_2!7839 lt!453983)) #b00000000000111111111111111111111) (= (mask!29880 (_2!7839 lt!453983)) #b00000000001111111111111111111111) (= (mask!29880 (_2!7839 lt!453983)) #b00000000011111111111111111111111) (= (mask!29880 (_2!7839 lt!453983)) #b00000000111111111111111111111111) (= (mask!29880 (_2!7839 lt!453983)) #b00000001111111111111111111111111) (= (mask!29880 (_2!7839 lt!453983)) #b00000011111111111111111111111111) (= (mask!29880 (_2!7839 lt!453983)) #b00000111111111111111111111111111) (= (mask!29880 (_2!7839 lt!453983)) #b00001111111111111111111111111111) (= (mask!29880 (_2!7839 lt!453983)) #b00011111111111111111111111111111) (= (mask!29880 (_2!7839 lt!453983)) #b00111111111111111111111111111111)) (bvsle (mask!29880 (_2!7839 lt!453983)) #b00111111111111111111111111111111)))))

(assert (=> b!1029666 d!123367))

(declare-fun d!123369 () Bool)

(declare-fun e!581540 () Bool)

(assert (=> d!123369 e!581540))

(declare-fun res!688881 () Bool)

(assert (=> d!123369 (=> (not res!688881) (not e!581540))))

(assert (=> d!123369 (= res!688881 (and (bvsge (index!41063 lt!453980) #b00000000000000000000000000000000) (bvslt (index!41063 lt!453980) (size!31660 (_keys!11285 thiss!1427)))))))

(declare-fun lt!454129 () Unit!33592)

(declare-fun choose!1698 (array!64686 array!64688 (_ BitVec 32) (_ BitVec 32) V!37301 V!37301 (_ BitVec 32) (_ BitVec 64) Int) Unit!33592)

(assert (=> d!123369 (= lt!454129 (choose!1698 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) (index!41063 lt!453980) key!909 (defaultEntry!6122 thiss!1427)))))

(assert (=> d!123369 (validMask!0 (mask!29880 thiss!1427))))

(assert (=> d!123369 (= (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!11 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) (index!41063 lt!453980) key!909 (defaultEntry!6122 thiss!1427)) lt!454129)))

(declare-fun b!1029855 () Bool)

(assert (=> b!1029855 (= e!581540 (= (-!487 (getCurrentListMap!3918 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)) key!909) (getCurrentListMap!3918 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) (array!64689 (store (arr!31144 (_values!6145 thiss!1427)) (index!41063 lt!453980) (ValueCellFull!11457 (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31661 (_values!6145 thiss!1427))) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427))))))

(assert (=> b!1029855 (bvslt (index!41063 lt!453980) (size!31661 (_values!6145 thiss!1427)))))

(assert (= (and d!123369 res!688881) b!1029855))

(declare-fun b_lambda!15933 () Bool)

(assert (=> (not b_lambda!15933) (not b!1029855)))

(assert (=> b!1029855 t!31035))

(declare-fun b_and!32975 () Bool)

(assert (= b_and!32973 (and (=> t!31035 result!14171) b_and!32975)))

(declare-fun m!949449 () Bool)

(assert (=> d!123369 m!949449))

(assert (=> d!123369 m!949375))

(assert (=> b!1029855 m!949217))

(assert (=> b!1029855 m!949219))

(assert (=> b!1029855 m!949231))

(declare-fun m!949451 () Bool)

(assert (=> b!1029855 m!949451))

(assert (=> b!1029855 m!949237))

(assert (=> b!1029855 m!949221))

(assert (=> b!1029855 m!949217))

(assert (=> b!1029666 d!123369))

(declare-fun d!123371 () Bool)

(assert (=> d!123371 (= (array_inv!23957 (_keys!11285 thiss!1427)) (bvsge (size!31660 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1029664 d!123371))

(declare-fun d!123373 () Bool)

(assert (=> d!123373 (= (array_inv!23958 (_values!6145 thiss!1427)) (bvsge (size!31661 (_values!6145 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1029664 d!123373))

(declare-fun d!123375 () Bool)

(declare-fun res!688888 () Bool)

(declare-fun e!581543 () Bool)

(assert (=> d!123375 (=> (not res!688888) (not e!581543))))

(declare-fun simpleValid!394 (LongMapFixedSize!5508) Bool)

(assert (=> d!123375 (= res!688888 (simpleValid!394 thiss!1427))))

(assert (=> d!123375 (= (valid!2039 thiss!1427) e!581543)))

(declare-fun b!1029862 () Bool)

(declare-fun res!688889 () Bool)

(assert (=> b!1029862 (=> (not res!688889) (not e!581543))))

(assert (=> b!1029862 (= res!688889 (= (arrayCountValidKeys!0 (_keys!11285 thiss!1427) #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))) (_size!2809 thiss!1427)))))

(declare-fun b!1029863 () Bool)

(declare-fun res!688890 () Bool)

(assert (=> b!1029863 (=> (not res!688890) (not e!581543))))

(assert (=> b!1029863 (= res!688890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11285 thiss!1427) (mask!29880 thiss!1427)))))

(declare-fun b!1029864 () Bool)

(assert (=> b!1029864 (= e!581543 (arrayNoDuplicates!0 (_keys!11285 thiss!1427) #b00000000000000000000000000000000 Nil!21931))))

(assert (= (and d!123375 res!688888) b!1029862))

(assert (= (and b!1029862 res!688889) b!1029863))

(assert (= (and b!1029863 res!688890) b!1029864))

(declare-fun m!949453 () Bool)

(assert (=> d!123375 m!949453))

(assert (=> b!1029862 m!949227))

(declare-fun m!949455 () Bool)

(assert (=> b!1029863 m!949455))

(declare-fun m!949457 () Bool)

(assert (=> b!1029864 m!949457))

(assert (=> start!89924 d!123375))

(declare-fun b!1029877 () Bool)

(declare-fun e!581550 () SeekEntryResult!9673)

(assert (=> b!1029877 (= e!581550 Undefined!9673)))

(declare-fun d!123377 () Bool)

(declare-fun lt!454138 () SeekEntryResult!9673)

(assert (=> d!123377 (and (or ((_ is MissingVacant!9673) lt!454138) (not ((_ is Found!9673) lt!454138)) (and (bvsge (index!41063 lt!454138) #b00000000000000000000000000000000) (bvslt (index!41063 lt!454138) (size!31660 (_keys!11285 thiss!1427))))) (not ((_ is MissingVacant!9673) lt!454138)) (or (not ((_ is Found!9673) lt!454138)) (= (select (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!454138)) key!909)))))

(assert (=> d!123377 (= lt!454138 e!581550)))

(declare-fun c!104044 () Bool)

(declare-fun lt!454141 () SeekEntryResult!9673)

(assert (=> d!123377 (= c!104044 (and ((_ is Intermediate!9673) lt!454141) (undefined!10485 lt!454141)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!64686 (_ BitVec 32)) SeekEntryResult!9673)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!123377 (= lt!454141 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!29880 thiss!1427)) key!909 (_keys!11285 thiss!1427) (mask!29880 thiss!1427)))))

(assert (=> d!123377 (validMask!0 (mask!29880 thiss!1427))))

(assert (=> d!123377 (= (seekEntry!0 key!909 (_keys!11285 thiss!1427) (mask!29880 thiss!1427)) lt!454138)))

(declare-fun b!1029878 () Bool)

(declare-fun e!581552 () SeekEntryResult!9673)

(assert (=> b!1029878 (= e!581550 e!581552)))

(declare-fun lt!454139 () (_ BitVec 64))

(assert (=> b!1029878 (= lt!454139 (select (arr!31143 (_keys!11285 thiss!1427)) (index!41064 lt!454141)))))

(declare-fun c!104046 () Bool)

(assert (=> b!1029878 (= c!104046 (= lt!454139 key!909))))

(declare-fun b!1029879 () Bool)

(declare-fun e!581551 () SeekEntryResult!9673)

(declare-fun lt!454140 () SeekEntryResult!9673)

(assert (=> b!1029879 (= e!581551 (ite ((_ is MissingVacant!9673) lt!454140) (MissingZero!9673 (index!41065 lt!454140)) lt!454140))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!64686 (_ BitVec 32)) SeekEntryResult!9673)

(assert (=> b!1029879 (= lt!454140 (seekKeyOrZeroReturnVacant!0 (x!91618 lt!454141) (index!41064 lt!454141) (index!41064 lt!454141) key!909 (_keys!11285 thiss!1427) (mask!29880 thiss!1427)))))

(declare-fun b!1029880 () Bool)

(assert (=> b!1029880 (= e!581552 (Found!9673 (index!41064 lt!454141)))))

(declare-fun b!1029881 () Bool)

(declare-fun c!104045 () Bool)

(assert (=> b!1029881 (= c!104045 (= lt!454139 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1029881 (= e!581552 e!581551)))

(declare-fun b!1029882 () Bool)

(assert (=> b!1029882 (= e!581551 (MissingZero!9673 (index!41064 lt!454141)))))

(assert (= (and d!123377 c!104044) b!1029877))

(assert (= (and d!123377 (not c!104044)) b!1029878))

(assert (= (and b!1029878 c!104046) b!1029880))

(assert (= (and b!1029878 (not c!104046)) b!1029881))

(assert (= (and b!1029881 c!104045) b!1029882))

(assert (= (and b!1029881 (not c!104045)) b!1029879))

(declare-fun m!949459 () Bool)

(assert (=> d!123377 m!949459))

(declare-fun m!949461 () Bool)

(assert (=> d!123377 m!949461))

(assert (=> d!123377 m!949461))

(declare-fun m!949463 () Bool)

(assert (=> d!123377 m!949463))

(assert (=> d!123377 m!949375))

(declare-fun m!949465 () Bool)

(assert (=> b!1029878 m!949465))

(declare-fun m!949467 () Bool)

(assert (=> b!1029879 m!949467))

(assert (=> b!1029669 d!123377))

(declare-fun b!1029889 () Bool)

(declare-fun e!581558 () Bool)

(assert (=> b!1029889 (= e!581558 tp_is_empty!24321)))

(declare-fun mapNonEmpty!37934 () Bool)

(declare-fun mapRes!37934 () Bool)

(declare-fun tp!72877 () Bool)

(assert (=> mapNonEmpty!37934 (= mapRes!37934 (and tp!72877 e!581558))))

(declare-fun mapRest!37934 () (Array (_ BitVec 32) ValueCell!11457))

(declare-fun mapValue!37934 () ValueCell!11457)

(declare-fun mapKey!37934 () (_ BitVec 32))

(assert (=> mapNonEmpty!37934 (= mapRest!37928 (store mapRest!37934 mapKey!37934 mapValue!37934))))

(declare-fun condMapEmpty!37934 () Bool)

(declare-fun mapDefault!37934 () ValueCell!11457)

(assert (=> mapNonEmpty!37928 (= condMapEmpty!37934 (= mapRest!37928 ((as const (Array (_ BitVec 32) ValueCell!11457)) mapDefault!37934)))))

(declare-fun e!581557 () Bool)

(assert (=> mapNonEmpty!37928 (= tp!72868 (and e!581557 mapRes!37934))))

(declare-fun b!1029890 () Bool)

(assert (=> b!1029890 (= e!581557 tp_is_empty!24321)))

(declare-fun mapIsEmpty!37934 () Bool)

(assert (=> mapIsEmpty!37934 mapRes!37934))

(assert (= (and mapNonEmpty!37928 condMapEmpty!37934) mapIsEmpty!37934))

(assert (= (and mapNonEmpty!37928 (not condMapEmpty!37934)) mapNonEmpty!37934))

(assert (= (and mapNonEmpty!37934 ((_ is ValueCellFull!11457) mapValue!37934)) b!1029889))

(assert (= (and mapNonEmpty!37928 ((_ is ValueCellFull!11457) mapDefault!37934)) b!1029890))

(declare-fun m!949469 () Bool)

(assert (=> mapNonEmpty!37934 m!949469))

(declare-fun b_lambda!15935 () Bool)

(assert (= b_lambda!15933 (or (and b!1029664 b_free!20601) b_lambda!15935)))

(declare-fun b_lambda!15937 () Bool)

(assert (= b_lambda!15931 (or (and b!1029664 b_free!20601) b_lambda!15937)))

(declare-fun b_lambda!15939 () Bool)

(assert (= b_lambda!15929 (or (and b!1029664 b_free!20601) b_lambda!15939)))

(check-sat (not b!1029855) (not bm!43520) (not bm!43514) (not b!1029814) (not b!1029803) (not b_lambda!15937) (not b_lambda!15935) (not b_lambda!15939) (not bm!43524) (not bm!43513) (not b!1029798) (not b!1029825) (not b!1029701) (not b!1029713) (not bm!43517) (not mapNonEmpty!37934) b_and!32975 (not d!123355) (not b!1029790) (not d!123353) (not b!1029735) (not b!1029782) (not bm!43493) (not b!1029796) (not bm!43528) (not b!1029734) (not b!1029849) (not b!1029879) (not b!1029821) (not d!123349) (not b!1029724) (not b!1029787) (not d!123369) (not d!123343) (not b!1029837) (not b!1029737) (not b_next!20601) tp_is_empty!24321 (not d!123365) (not b!1029828) (not b!1029815) (not b!1029786) (not d!123377) (not b!1029864) (not bm!43521) (not bm!43523) (not b!1029863) (not b!1029843) (not d!123359) (not b!1029862) (not bm!43527) (not b!1029839) (not b!1029800) (not b!1029829) (not b!1029852) (not d!123351) (not b!1029835) (not bm!43511) (not b!1029723) (not d!123375) (not b!1029816) (not bm!43496) (not b!1029789) (not b_lambda!15927) (not b!1029826))
(check-sat b_and!32975 (not b_next!20601))
(get-model)

(declare-fun b!1029891 () Bool)

(declare-fun e!581562 () Bool)

(declare-fun e!581561 () Bool)

(assert (=> b!1029891 (= e!581562 e!581561)))

(declare-fun res!688891 () Bool)

(assert (=> b!1029891 (=> (not res!688891) (not e!581561))))

(declare-fun e!581560 () Bool)

(assert (=> b!1029891 (= res!688891 (not e!581560))))

(declare-fun res!688892 () Bool)

(assert (=> b!1029891 (=> (not res!688892) (not e!581560))))

(assert (=> b!1029891 (= res!688892 (validKeyInArray!0 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1029892 () Bool)

(assert (=> b!1029892 (= e!581560 (contains!5994 Nil!21931 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1029893 () Bool)

(declare-fun e!581559 () Bool)

(assert (=> b!1029893 (= e!581561 e!581559)))

(declare-fun c!104047 () Bool)

(assert (=> b!1029893 (= c!104047 (validKeyInArray!0 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!123379 () Bool)

(declare-fun res!688893 () Bool)

(assert (=> d!123379 (=> res!688893 e!581562)))

(assert (=> d!123379 (= res!688893 (bvsge #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))))))

(assert (=> d!123379 (= (arrayNoDuplicates!0 (_keys!11285 thiss!1427) #b00000000000000000000000000000000 Nil!21931) e!581562)))

(declare-fun b!1029894 () Bool)

(declare-fun call!43532 () Bool)

(assert (=> b!1029894 (= e!581559 call!43532)))

(declare-fun b!1029895 () Bool)

(assert (=> b!1029895 (= e!581559 call!43532)))

(declare-fun bm!43529 () Bool)

(assert (=> bm!43529 (= call!43532 (arrayNoDuplicates!0 (_keys!11285 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104047 (Cons!21930 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000) Nil!21931) Nil!21931)))))

(assert (= (and d!123379 (not res!688893)) b!1029891))

(assert (= (and b!1029891 res!688892) b!1029892))

(assert (= (and b!1029891 res!688891) b!1029893))

(assert (= (and b!1029893 c!104047) b!1029894))

(assert (= (and b!1029893 (not c!104047)) b!1029895))

(assert (= (or b!1029894 b!1029895) bm!43529))

(assert (=> b!1029891 m!949321))

(assert (=> b!1029891 m!949321))

(assert (=> b!1029891 m!949335))

(assert (=> b!1029892 m!949321))

(assert (=> b!1029892 m!949321))

(declare-fun m!949471 () Bool)

(assert (=> b!1029892 m!949471))

(assert (=> b!1029893 m!949321))

(assert (=> b!1029893 m!949321))

(assert (=> b!1029893 m!949335))

(assert (=> bm!43529 m!949321))

(declare-fun m!949473 () Bool)

(assert (=> bm!43529 m!949473))

(assert (=> b!1029864 d!123379))

(declare-fun d!123381 () Bool)

(assert (=> d!123381 (= (validKeyInArray!0 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000)) (and (not (= (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1029843 d!123381))

(declare-fun d!123383 () Bool)

(assert (=> d!123383 (= (-!487 (getCurrentListMap!3918 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)) key!909) (getCurrentListMap!3918 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) (array!64689 (store (arr!31144 (_values!6145 thiss!1427)) (index!41063 lt!453980) (ValueCellFull!11457 (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31661 (_values!6145 thiss!1427))) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)))))

(assert (=> d!123383 true))

(declare-fun _$9!44 () Unit!33592)

(assert (=> d!123383 (= (choose!1698 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) (index!41063 lt!453980) key!909 (defaultEntry!6122 thiss!1427)) _$9!44)))

(declare-fun b_lambda!15941 () Bool)

(assert (=> (not b_lambda!15941) (not d!123383)))

(assert (=> d!123383 t!31035))

(declare-fun b_and!32977 () Bool)

(assert (= b_and!32975 (and (=> t!31035 result!14171) b_and!32977)))

(assert (=> d!123383 m!949231))

(assert (=> d!123383 m!949451))

(assert (=> d!123383 m!949217))

(assert (=> d!123383 m!949237))

(assert (=> d!123383 m!949217))

(assert (=> d!123383 m!949219))

(assert (=> d!123383 m!949221))

(assert (=> d!123369 d!123383))

(declare-fun d!123385 () Bool)

(assert (=> d!123385 (= (validMask!0 (mask!29880 thiss!1427)) (and (or (= (mask!29880 thiss!1427) #b00000000000000000000000000000111) (= (mask!29880 thiss!1427) #b00000000000000000000000000001111) (= (mask!29880 thiss!1427) #b00000000000000000000000000011111) (= (mask!29880 thiss!1427) #b00000000000000000000000000111111) (= (mask!29880 thiss!1427) #b00000000000000000000000001111111) (= (mask!29880 thiss!1427) #b00000000000000000000000011111111) (= (mask!29880 thiss!1427) #b00000000000000000000000111111111) (= (mask!29880 thiss!1427) #b00000000000000000000001111111111) (= (mask!29880 thiss!1427) #b00000000000000000000011111111111) (= (mask!29880 thiss!1427) #b00000000000000000000111111111111) (= (mask!29880 thiss!1427) #b00000000000000000001111111111111) (= (mask!29880 thiss!1427) #b00000000000000000011111111111111) (= (mask!29880 thiss!1427) #b00000000000000000111111111111111) (= (mask!29880 thiss!1427) #b00000000000000001111111111111111) (= (mask!29880 thiss!1427) #b00000000000000011111111111111111) (= (mask!29880 thiss!1427) #b00000000000000111111111111111111) (= (mask!29880 thiss!1427) #b00000000000001111111111111111111) (= (mask!29880 thiss!1427) #b00000000000011111111111111111111) (= (mask!29880 thiss!1427) #b00000000000111111111111111111111) (= (mask!29880 thiss!1427) #b00000000001111111111111111111111) (= (mask!29880 thiss!1427) #b00000000011111111111111111111111) (= (mask!29880 thiss!1427) #b00000000111111111111111111111111) (= (mask!29880 thiss!1427) #b00000001111111111111111111111111) (= (mask!29880 thiss!1427) #b00000011111111111111111111111111) (= (mask!29880 thiss!1427) #b00000111111111111111111111111111) (= (mask!29880 thiss!1427) #b00001111111111111111111111111111) (= (mask!29880 thiss!1427) #b00011111111111111111111111111111) (= (mask!29880 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!29880 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> d!123369 d!123385))

(declare-fun d!123387 () Bool)

(assert (=> d!123387 (= (validKeyInArray!0 (select (arr!31143 lt!453977) #b00000000000000000000000000000000)) (and (not (= (select (arr!31143 lt!453977) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31143 lt!453977) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1029839 d!123387))

(declare-fun d!123389 () Bool)

(declare-fun e!581583 () Bool)

(assert (=> d!123389 e!581583))

(declare-fun res!688902 () Bool)

(assert (=> d!123389 (=> (not res!688902) (not e!581583))))

(declare-fun lt!454161 () ListLongMap!13791)

(assert (=> d!123389 (= res!688902 (not (contains!5993 lt!454161 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!581580 () ListLongMap!13791)

(assert (=> d!123389 (= lt!454161 e!581580)))

(declare-fun c!104057 () Bool)

(assert (=> d!123389 (= c!104057 (bvsge #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))))))

(assert (=> d!123389 (validMask!0 (mask!29880 thiss!1427))))

(assert (=> d!123389 (= (getCurrentListMapNoExtraKeys!3532 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)) lt!454161)))

(declare-fun b!1029920 () Bool)

(declare-fun e!581579 () ListLongMap!13791)

(assert (=> b!1029920 (= e!581580 e!581579)))

(declare-fun c!104056 () Bool)

(assert (=> b!1029920 (= c!104056 (validKeyInArray!0 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43532 () Bool)

(declare-fun call!43535 () ListLongMap!13791)

(assert (=> bm!43532 (= call!43535 (getCurrentListMapNoExtraKeys!3532 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6122 thiss!1427)))))

(declare-fun b!1029921 () Bool)

(declare-fun e!581582 () Bool)

(assert (=> b!1029921 (= e!581583 e!581582)))

(declare-fun c!104059 () Bool)

(declare-fun e!581577 () Bool)

(assert (=> b!1029921 (= c!104059 e!581577)))

(declare-fun res!688904 () Bool)

(assert (=> b!1029921 (=> (not res!688904) (not e!581577))))

(assert (=> b!1029921 (= res!688904 (bvslt #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))))))

(declare-fun b!1029922 () Bool)

(assert (=> b!1029922 (= e!581577 (validKeyInArray!0 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1029922 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1029923 () Bool)

(declare-fun e!581581 () Bool)

(declare-fun isEmpty!928 (ListLongMap!13791) Bool)

(assert (=> b!1029923 (= e!581581 (isEmpty!928 lt!454161))))

(declare-fun b!1029924 () Bool)

(declare-fun lt!454156 () Unit!33592)

(declare-fun lt!454160 () Unit!33592)

(assert (=> b!1029924 (= lt!454156 lt!454160)))

(declare-fun lt!454159 () V!37301)

(declare-fun lt!454162 () (_ BitVec 64))

(declare-fun lt!454157 () ListLongMap!13791)

(declare-fun lt!454158 () (_ BitVec 64))

(assert (=> b!1029924 (not (contains!5993 (+!3062 lt!454157 (tuple2!15661 lt!454158 lt!454159)) lt!454162))))

(declare-fun addStillNotContains!243 (ListLongMap!13791 (_ BitVec 64) V!37301 (_ BitVec 64)) Unit!33592)

(assert (=> b!1029924 (= lt!454160 (addStillNotContains!243 lt!454157 lt!454158 lt!454159 lt!454162))))

(assert (=> b!1029924 (= lt!454162 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1029924 (= lt!454159 (get!16373 (select (arr!31144 (_values!6145 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1029924 (= lt!454158 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1029924 (= lt!454157 call!43535)))

(assert (=> b!1029924 (= e!581579 (+!3062 call!43535 (tuple2!15661 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000) (get!16373 (select (arr!31144 (_values!6145 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1029925 () Bool)

(declare-fun e!581578 () Bool)

(assert (=> b!1029925 (= e!581582 e!581578)))

(assert (=> b!1029925 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))))))

(declare-fun res!688903 () Bool)

(assert (=> b!1029925 (= res!688903 (contains!5993 lt!454161 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1029925 (=> (not res!688903) (not e!581578))))

(declare-fun b!1029926 () Bool)

(declare-fun res!688905 () Bool)

(assert (=> b!1029926 (=> (not res!688905) (not e!581583))))

(assert (=> b!1029926 (= res!688905 (not (contains!5993 lt!454161 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1029927 () Bool)

(assert (=> b!1029927 (= e!581582 e!581581)))

(declare-fun c!104058 () Bool)

(assert (=> b!1029927 (= c!104058 (bvslt #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))))))

(declare-fun b!1029928 () Bool)

(assert (=> b!1029928 (= e!581579 call!43535)))

(declare-fun b!1029929 () Bool)

(assert (=> b!1029929 (= e!581581 (= lt!454161 (getCurrentListMapNoExtraKeys!3532 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6122 thiss!1427))))))

(declare-fun b!1029930 () Bool)

(assert (=> b!1029930 (= e!581580 (ListLongMap!13792 Nil!21930))))

(declare-fun b!1029931 () Bool)

(assert (=> b!1029931 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))))))

(assert (=> b!1029931 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31661 (_values!6145 thiss!1427))))))

(assert (=> b!1029931 (= e!581578 (= (apply!939 lt!454161 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000)) (get!16373 (select (arr!31144 (_values!6145 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!123389 c!104057) b!1029930))

(assert (= (and d!123389 (not c!104057)) b!1029920))

(assert (= (and b!1029920 c!104056) b!1029924))

(assert (= (and b!1029920 (not c!104056)) b!1029928))

(assert (= (or b!1029924 b!1029928) bm!43532))

(assert (= (and d!123389 res!688902) b!1029926))

(assert (= (and b!1029926 res!688905) b!1029921))

(assert (= (and b!1029921 res!688904) b!1029922))

(assert (= (and b!1029921 c!104059) b!1029925))

(assert (= (and b!1029921 (not c!104059)) b!1029927))

(assert (= (and b!1029925 res!688903) b!1029931))

(assert (= (and b!1029927 c!104058) b!1029929))

(assert (= (and b!1029927 (not c!104058)) b!1029923))

(declare-fun b_lambda!15943 () Bool)

(assert (=> (not b_lambda!15943) (not b!1029924)))

(assert (=> b!1029924 t!31035))

(declare-fun b_and!32979 () Bool)

(assert (= b_and!32977 (and (=> t!31035 result!14171) b_and!32979)))

(declare-fun b_lambda!15945 () Bool)

(assert (=> (not b_lambda!15945) (not b!1029931)))

(assert (=> b!1029931 t!31035))

(declare-fun b_and!32981 () Bool)

(assert (= b_and!32979 (and (=> t!31035 result!14171) b_and!32981)))

(assert (=> b!1029920 m!949321))

(assert (=> b!1029920 m!949321))

(assert (=> b!1029920 m!949335))

(assert (=> b!1029922 m!949321))

(assert (=> b!1029922 m!949321))

(assert (=> b!1029922 m!949335))

(declare-fun m!949475 () Bool)

(assert (=> b!1029926 m!949475))

(declare-fun m!949477 () Bool)

(assert (=> b!1029923 m!949477))

(declare-fun m!949479 () Bool)

(assert (=> d!123389 m!949479))

(assert (=> d!123389 m!949375))

(declare-fun m!949481 () Bool)

(assert (=> bm!43532 m!949481))

(assert (=> b!1029929 m!949481))

(assert (=> b!1029931 m!949221))

(assert (=> b!1029931 m!949327))

(assert (=> b!1029931 m!949221))

(assert (=> b!1029931 m!949329))

(assert (=> b!1029931 m!949321))

(declare-fun m!949483 () Bool)

(assert (=> b!1029931 m!949483))

(assert (=> b!1029931 m!949327))

(assert (=> b!1029931 m!949321))

(declare-fun m!949485 () Bool)

(assert (=> b!1029924 m!949485))

(assert (=> b!1029924 m!949221))

(declare-fun m!949487 () Bool)

(assert (=> b!1029924 m!949487))

(assert (=> b!1029924 m!949327))

(declare-fun m!949489 () Bool)

(assert (=> b!1029924 m!949489))

(assert (=> b!1029924 m!949321))

(assert (=> b!1029924 m!949487))

(declare-fun m!949491 () Bool)

(assert (=> b!1029924 m!949491))

(assert (=> b!1029924 m!949327))

(assert (=> b!1029924 m!949221))

(assert (=> b!1029924 m!949329))

(assert (=> b!1029925 m!949321))

(assert (=> b!1029925 m!949321))

(declare-fun m!949493 () Bool)

(assert (=> b!1029925 m!949493))

(assert (=> bm!43514 d!123389))

(assert (=> b!1029862 d!123361))

(assert (=> b!1029855 d!123355))

(assert (=> b!1029855 d!123351))

(declare-fun b!1029932 () Bool)

(declare-fun e!581587 () ListLongMap!13791)

(declare-fun call!43542 () ListLongMap!13791)

(assert (=> b!1029932 (= e!581587 call!43542)))

(declare-fun b!1029933 () Bool)

(declare-fun e!581593 () Unit!33592)

(declare-fun Unit!33600 () Unit!33592)

(assert (=> b!1029933 (= e!581593 Unit!33600)))

(declare-fun call!43537 () ListLongMap!13791)

(declare-fun call!43536 () ListLongMap!13791)

(declare-fun call!43541 () ListLongMap!13791)

(declare-fun bm!43533 () Bool)

(declare-fun c!104060 () Bool)

(declare-fun c!104064 () Bool)

(assert (=> bm!43533 (= call!43536 (+!3062 (ite c!104060 call!43537 (ite c!104064 call!43541 call!43542)) (ite (or c!104060 c!104064) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))))))

(declare-fun b!1029934 () Bool)

(declare-fun e!581586 () Bool)

(assert (=> b!1029934 (= e!581586 (validKeyInArray!0 (select (arr!31143 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1029935 () Bool)

(declare-fun e!581596 () Bool)

(declare-fun call!43540 () Bool)

(assert (=> b!1029935 (= e!581596 (not call!43540))))

(declare-fun b!1029936 () Bool)

(declare-fun e!581592 () Bool)

(declare-fun call!43539 () Bool)

(assert (=> b!1029936 (= e!581592 (not call!43539))))

(declare-fun b!1029937 () Bool)

(declare-fun e!581594 () ListLongMap!13791)

(declare-fun e!581591 () ListLongMap!13791)

(assert (=> b!1029937 (= e!581594 e!581591)))

(assert (=> b!1029937 (= c!104064 (and (not (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!43534 () Bool)

(assert (=> bm!43534 (= call!43542 call!43541)))

(declare-fun b!1029938 () Bool)

(assert (=> b!1029938 (= e!581594 (+!3062 call!43536 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))))))

(declare-fun b!1029939 () Bool)

(declare-fun e!581588 () Bool)

(declare-fun e!581589 () Bool)

(assert (=> b!1029939 (= e!581588 e!581589)))

(declare-fun res!688911 () Bool)

(assert (=> b!1029939 (=> (not res!688911) (not e!581589))))

(declare-fun lt!454183 () ListLongMap!13791)

(assert (=> b!1029939 (= res!688911 (contains!5993 lt!454183 (select (arr!31143 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (=> b!1029939 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31660 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))))))))

(declare-fun b!1029940 () Bool)

(declare-fun call!43538 () ListLongMap!13791)

(assert (=> b!1029940 (= e!581591 call!43538)))

(declare-fun bm!43535 () Bool)

(assert (=> bm!43535 (= call!43540 (contains!5993 lt!454183 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1029941 () Bool)

(declare-fun e!581584 () Bool)

(assert (=> b!1029941 (= e!581584 (= (apply!939 lt!454183 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5958 thiss!1427)))))

(declare-fun bm!43536 () Bool)

(assert (=> bm!43536 (= call!43537 (getCurrentListMapNoExtraKeys!3532 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) (array!64689 (store (arr!31144 (_values!6145 thiss!1427)) (index!41063 lt!453980) (ValueCellFull!11457 (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31661 (_values!6145 thiss!1427))) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)))))

(declare-fun b!1029942 () Bool)

(assert (=> b!1029942 (= e!581589 (= (apply!939 lt!454183 (select (arr!31143 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427)))) #b00000000000000000000000000000000)) (get!16373 (select (arr!31144 (array!64689 (store (arr!31144 (_values!6145 thiss!1427)) (index!41063 lt!453980) (ValueCellFull!11457 (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31661 (_values!6145 thiss!1427)))) #b00000000000000000000000000000000) (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1029942 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31661 (array!64689 (store (arr!31144 (_values!6145 thiss!1427)) (index!41063 lt!453980) (ValueCellFull!11457 (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31661 (_values!6145 thiss!1427))))))))

(assert (=> b!1029942 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31660 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))))))))

(declare-fun d!123391 () Bool)

(declare-fun e!581585 () Bool)

(assert (=> d!123391 e!581585))

(declare-fun res!688912 () Bool)

(assert (=> d!123391 (=> (not res!688912) (not e!581585))))

(assert (=> d!123391 (= res!688912 (or (bvsge #b00000000000000000000000000000000 (size!31660 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31660 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))))))))))

(declare-fun lt!454163 () ListLongMap!13791)

(assert (=> d!123391 (= lt!454183 lt!454163)))

(declare-fun lt!454164 () Unit!33592)

(assert (=> d!123391 (= lt!454164 e!581593)))

(declare-fun c!104065 () Bool)

(declare-fun e!581595 () Bool)

(assert (=> d!123391 (= c!104065 e!581595)))

(declare-fun res!688914 () Bool)

(assert (=> d!123391 (=> (not res!688914) (not e!581595))))

(assert (=> d!123391 (= res!688914 (bvslt #b00000000000000000000000000000000 (size!31660 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))))))))

(assert (=> d!123391 (= lt!454163 e!581594)))

(assert (=> d!123391 (= c!104060 (and (not (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!123391 (validMask!0 (mask!29880 thiss!1427))))

(assert (=> d!123391 (= (getCurrentListMap!3918 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) (array!64689 (store (arr!31144 (_values!6145 thiss!1427)) (index!41063 lt!453980) (ValueCellFull!11457 (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31661 (_values!6145 thiss!1427))) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)) lt!454183)))

(declare-fun b!1029943 () Bool)

(declare-fun e!581590 () Bool)

(assert (=> b!1029943 (= e!581596 e!581590)))

(declare-fun res!688913 () Bool)

(assert (=> b!1029943 (= res!688913 call!43540)))

(assert (=> b!1029943 (=> (not res!688913) (not e!581590))))

(declare-fun bm!43537 () Bool)

(assert (=> bm!43537 (= call!43538 call!43536)))

(declare-fun b!1029944 () Bool)

(declare-fun c!104062 () Bool)

(assert (=> b!1029944 (= c!104062 (and (not (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1029944 (= e!581591 e!581587)))

(declare-fun b!1029945 () Bool)

(declare-fun res!688907 () Bool)

(assert (=> b!1029945 (=> (not res!688907) (not e!581585))))

(assert (=> b!1029945 (= res!688907 e!581592)))

(declare-fun c!104061 () Bool)

(assert (=> b!1029945 (= c!104061 (not (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!43538 () Bool)

(assert (=> bm!43538 (= call!43541 call!43537)))

(declare-fun b!1029946 () Bool)

(assert (=> b!1029946 (= e!581592 e!581584)))

(declare-fun res!688906 () Bool)

(assert (=> b!1029946 (= res!688906 call!43539)))

(assert (=> b!1029946 (=> (not res!688906) (not e!581584))))

(declare-fun b!1029947 () Bool)

(declare-fun res!688910 () Bool)

(assert (=> b!1029947 (=> (not res!688910) (not e!581585))))

(assert (=> b!1029947 (= res!688910 e!581588)))

(declare-fun res!688908 () Bool)

(assert (=> b!1029947 (=> res!688908 e!581588)))

(assert (=> b!1029947 (= res!688908 (not e!581586))))

(declare-fun res!688909 () Bool)

(assert (=> b!1029947 (=> (not res!688909) (not e!581586))))

(assert (=> b!1029947 (= res!688909 (bvslt #b00000000000000000000000000000000 (size!31660 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))))))))

(declare-fun b!1029948 () Bool)

(declare-fun lt!454179 () Unit!33592)

(assert (=> b!1029948 (= e!581593 lt!454179)))

(declare-fun lt!454173 () ListLongMap!13791)

(assert (=> b!1029948 (= lt!454173 (getCurrentListMapNoExtraKeys!3532 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) (array!64689 (store (arr!31144 (_values!6145 thiss!1427)) (index!41063 lt!453980) (ValueCellFull!11457 (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31661 (_values!6145 thiss!1427))) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)))))

(declare-fun lt!454167 () (_ BitVec 64))

(assert (=> b!1029948 (= lt!454167 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!454175 () (_ BitVec 64))

(assert (=> b!1029948 (= lt!454175 (select (arr!31143 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427)))) #b00000000000000000000000000000000))))

(declare-fun lt!454166 () Unit!33592)

(assert (=> b!1029948 (= lt!454166 (addStillContains!627 lt!454173 lt!454167 (zeroValue!5958 thiss!1427) lt!454175))))

(assert (=> b!1029948 (contains!5993 (+!3062 lt!454173 (tuple2!15661 lt!454167 (zeroValue!5958 thiss!1427))) lt!454175)))

(declare-fun lt!454178 () Unit!33592)

(assert (=> b!1029948 (= lt!454178 lt!454166)))

(declare-fun lt!454165 () ListLongMap!13791)

(assert (=> b!1029948 (= lt!454165 (getCurrentListMapNoExtraKeys!3532 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) (array!64689 (store (arr!31144 (_values!6145 thiss!1427)) (index!41063 lt!453980) (ValueCellFull!11457 (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31661 (_values!6145 thiss!1427))) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)))))

(declare-fun lt!454174 () (_ BitVec 64))

(assert (=> b!1029948 (= lt!454174 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!454171 () (_ BitVec 64))

(assert (=> b!1029948 (= lt!454171 (select (arr!31143 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427)))) #b00000000000000000000000000000000))))

(declare-fun lt!454168 () Unit!33592)

(assert (=> b!1029948 (= lt!454168 (addApplyDifferent!479 lt!454165 lt!454174 (minValue!5958 thiss!1427) lt!454171))))

(assert (=> b!1029948 (= (apply!939 (+!3062 lt!454165 (tuple2!15661 lt!454174 (minValue!5958 thiss!1427))) lt!454171) (apply!939 lt!454165 lt!454171))))

(declare-fun lt!454181 () Unit!33592)

(assert (=> b!1029948 (= lt!454181 lt!454168)))

(declare-fun lt!454172 () ListLongMap!13791)

(assert (=> b!1029948 (= lt!454172 (getCurrentListMapNoExtraKeys!3532 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) (array!64689 (store (arr!31144 (_values!6145 thiss!1427)) (index!41063 lt!453980) (ValueCellFull!11457 (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31661 (_values!6145 thiss!1427))) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)))))

(declare-fun lt!454180 () (_ BitVec 64))

(assert (=> b!1029948 (= lt!454180 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!454169 () (_ BitVec 64))

(assert (=> b!1029948 (= lt!454169 (select (arr!31143 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427)))) #b00000000000000000000000000000000))))

(declare-fun lt!454177 () Unit!33592)

(assert (=> b!1029948 (= lt!454177 (addApplyDifferent!479 lt!454172 lt!454180 (zeroValue!5958 thiss!1427) lt!454169))))

(assert (=> b!1029948 (= (apply!939 (+!3062 lt!454172 (tuple2!15661 lt!454180 (zeroValue!5958 thiss!1427))) lt!454169) (apply!939 lt!454172 lt!454169))))

(declare-fun lt!454184 () Unit!33592)

(assert (=> b!1029948 (= lt!454184 lt!454177)))

(declare-fun lt!454182 () ListLongMap!13791)

(assert (=> b!1029948 (= lt!454182 (getCurrentListMapNoExtraKeys!3532 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) (array!64689 (store (arr!31144 (_values!6145 thiss!1427)) (index!41063 lt!453980) (ValueCellFull!11457 (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31661 (_values!6145 thiss!1427))) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)))))

(declare-fun lt!454176 () (_ BitVec 64))

(assert (=> b!1029948 (= lt!454176 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!454170 () (_ BitVec 64))

(assert (=> b!1029948 (= lt!454170 (select (arr!31143 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427)))) #b00000000000000000000000000000000))))

(assert (=> b!1029948 (= lt!454179 (addApplyDifferent!479 lt!454182 lt!454176 (minValue!5958 thiss!1427) lt!454170))))

(assert (=> b!1029948 (= (apply!939 (+!3062 lt!454182 (tuple2!15661 lt!454176 (minValue!5958 thiss!1427))) lt!454170) (apply!939 lt!454182 lt!454170))))

(declare-fun b!1029949 () Bool)

(assert (=> b!1029949 (= e!581587 call!43538)))

(declare-fun bm!43539 () Bool)

(assert (=> bm!43539 (= call!43539 (contains!5993 lt!454183 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1029950 () Bool)

(assert (=> b!1029950 (= e!581590 (= (apply!939 lt!454183 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5958 thiss!1427)))))

(declare-fun b!1029951 () Bool)

(assert (=> b!1029951 (= e!581585 e!581596)))

(declare-fun c!104063 () Bool)

(assert (=> b!1029951 (= c!104063 (not (= (bvand (extraKeys!5854 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1029952 () Bool)

(assert (=> b!1029952 (= e!581595 (validKeyInArray!0 (select (arr!31143 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (= (and d!123391 c!104060) b!1029938))

(assert (= (and d!123391 (not c!104060)) b!1029937))

(assert (= (and b!1029937 c!104064) b!1029940))

(assert (= (and b!1029937 (not c!104064)) b!1029944))

(assert (= (and b!1029944 c!104062) b!1029949))

(assert (= (and b!1029944 (not c!104062)) b!1029932))

(assert (= (or b!1029949 b!1029932) bm!43534))

(assert (= (or b!1029940 bm!43534) bm!43538))

(assert (= (or b!1029940 b!1029949) bm!43537))

(assert (= (or b!1029938 bm!43538) bm!43536))

(assert (= (or b!1029938 bm!43537) bm!43533))

(assert (= (and d!123391 res!688914) b!1029952))

(assert (= (and d!123391 c!104065) b!1029948))

(assert (= (and d!123391 (not c!104065)) b!1029933))

(assert (= (and d!123391 res!688912) b!1029947))

(assert (= (and b!1029947 res!688909) b!1029934))

(assert (= (and b!1029947 (not res!688908)) b!1029939))

(assert (= (and b!1029939 res!688911) b!1029942))

(assert (= (and b!1029947 res!688910) b!1029945))

(assert (= (and b!1029945 c!104061) b!1029946))

(assert (= (and b!1029945 (not c!104061)) b!1029936))

(assert (= (and b!1029946 res!688906) b!1029941))

(assert (= (or b!1029946 b!1029936) bm!43539))

(assert (= (and b!1029945 res!688907) b!1029951))

(assert (= (and b!1029951 c!104063) b!1029943))

(assert (= (and b!1029951 (not c!104063)) b!1029935))

(assert (= (and b!1029943 res!688913) b!1029950))

(assert (= (or b!1029943 b!1029935) bm!43535))

(declare-fun b_lambda!15947 () Bool)

(assert (=> (not b_lambda!15947) (not b!1029942)))

(assert (=> b!1029942 t!31035))

(declare-fun b_and!32983 () Bool)

(assert (= b_and!32981 (and (=> t!31035 result!14171) b_and!32983)))

(declare-fun m!949495 () Bool)

(assert (=> b!1029950 m!949495))

(declare-fun m!949497 () Bool)

(assert (=> b!1029939 m!949497))

(assert (=> b!1029939 m!949497))

(declare-fun m!949499 () Bool)

(assert (=> b!1029939 m!949499))

(declare-fun m!949501 () Bool)

(assert (=> b!1029941 m!949501))

(declare-fun m!949503 () Bool)

(assert (=> b!1029942 m!949503))

(assert (=> b!1029942 m!949503))

(assert (=> b!1029942 m!949221))

(declare-fun m!949505 () Bool)

(assert (=> b!1029942 m!949505))

(assert (=> b!1029942 m!949497))

(declare-fun m!949507 () Bool)

(assert (=> b!1029942 m!949507))

(assert (=> b!1029942 m!949497))

(assert (=> b!1029942 m!949221))

(declare-fun m!949509 () Bool)

(assert (=> bm!43533 m!949509))

(assert (=> b!1029952 m!949497))

(assert (=> b!1029952 m!949497))

(declare-fun m!949511 () Bool)

(assert (=> b!1029952 m!949511))

(assert (=> b!1029934 m!949497))

(assert (=> b!1029934 m!949497))

(assert (=> b!1029934 m!949511))

(declare-fun m!949513 () Bool)

(assert (=> bm!43536 m!949513))

(declare-fun m!949515 () Bool)

(assert (=> b!1029938 m!949515))

(declare-fun m!949517 () Bool)

(assert (=> b!1029948 m!949517))

(declare-fun m!949519 () Bool)

(assert (=> b!1029948 m!949519))

(declare-fun m!949521 () Bool)

(assert (=> b!1029948 m!949521))

(declare-fun m!949523 () Bool)

(assert (=> b!1029948 m!949523))

(declare-fun m!949525 () Bool)

(assert (=> b!1029948 m!949525))

(declare-fun m!949527 () Bool)

(assert (=> b!1029948 m!949527))

(assert (=> b!1029948 m!949521))

(declare-fun m!949529 () Bool)

(assert (=> b!1029948 m!949529))

(declare-fun m!949531 () Bool)

(assert (=> b!1029948 m!949531))

(assert (=> b!1029948 m!949519))

(declare-fun m!949533 () Bool)

(assert (=> b!1029948 m!949533))

(declare-fun m!949535 () Bool)

(assert (=> b!1029948 m!949535))

(assert (=> b!1029948 m!949517))

(declare-fun m!949537 () Bool)

(assert (=> b!1029948 m!949537))

(declare-fun m!949539 () Bool)

(assert (=> b!1029948 m!949539))

(declare-fun m!949541 () Bool)

(assert (=> b!1029948 m!949541))

(assert (=> b!1029948 m!949529))

(declare-fun m!949543 () Bool)

(assert (=> b!1029948 m!949543))

(assert (=> b!1029948 m!949513))

(declare-fun m!949545 () Bool)

(assert (=> b!1029948 m!949545))

(assert (=> b!1029948 m!949497))

(declare-fun m!949547 () Bool)

(assert (=> bm!43535 m!949547))

(declare-fun m!949549 () Bool)

(assert (=> bm!43539 m!949549))

(assert (=> d!123391 m!949375))

(assert (=> b!1029855 d!123391))

(declare-fun d!123393 () Bool)

(declare-fun e!581599 () Bool)

(assert (=> d!123393 e!581599))

(declare-fun res!688919 () Bool)

(assert (=> d!123393 (=> (not res!688919) (not e!581599))))

(declare-fun lt!454195 () ListLongMap!13791)

(assert (=> d!123393 (= res!688919 (contains!5993 lt!454195 (_1!7840 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))))))

(declare-fun lt!454193 () List!21933)

(assert (=> d!123393 (= lt!454195 (ListLongMap!13792 lt!454193))))

(declare-fun lt!454194 () Unit!33592)

(declare-fun lt!454196 () Unit!33592)

(assert (=> d!123393 (= lt!454194 lt!454196)))

(declare-datatypes ((Option!641 0))(
  ( (Some!640 (v!14790 V!37301)) (None!639) )
))
(declare-fun getValueByKey!590 (List!21933 (_ BitVec 64)) Option!641)

(assert (=> d!123393 (= (getValueByKey!590 lt!454193 (_1!7840 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))) (Some!640 (_2!7840 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!279 (List!21933 (_ BitVec 64) V!37301) Unit!33592)

(assert (=> d!123393 (= lt!454196 (lemmaContainsTupThenGetReturnValue!279 lt!454193 (_1!7840 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))) (_2!7840 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))))))

(declare-fun insertStrictlySorted!371 (List!21933 (_ BitVec 64) V!37301) List!21933)

(assert (=> d!123393 (= lt!454193 (insertStrictlySorted!371 (toList!6911 call!43524) (_1!7840 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))) (_2!7840 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))))))

(assert (=> d!123393 (= (+!3062 call!43524 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))) lt!454195)))

(declare-fun b!1029957 () Bool)

(declare-fun res!688920 () Bool)

(assert (=> b!1029957 (=> (not res!688920) (not e!581599))))

(assert (=> b!1029957 (= res!688920 (= (getValueByKey!590 (toList!6911 lt!454195) (_1!7840 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))) (Some!640 (_2!7840 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))))))))

(declare-fun b!1029958 () Bool)

(declare-fun contains!5995 (List!21933 tuple2!15660) Bool)

(assert (=> b!1029958 (= e!581599 (contains!5995 (toList!6911 lt!454195) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))))))

(assert (= (and d!123393 res!688919) b!1029957))

(assert (= (and b!1029957 res!688920) b!1029958))

(declare-fun m!949551 () Bool)

(assert (=> d!123393 m!949551))

(declare-fun m!949553 () Bool)

(assert (=> d!123393 m!949553))

(declare-fun m!949555 () Bool)

(assert (=> d!123393 m!949555))

(declare-fun m!949557 () Bool)

(assert (=> d!123393 m!949557))

(declare-fun m!949559 () Bool)

(assert (=> b!1029957 m!949559))

(declare-fun m!949561 () Bool)

(assert (=> b!1029958 m!949561))

(assert (=> b!1029825 d!123393))

(declare-fun d!123395 () Bool)

(declare-fun lt!454201 () SeekEntryResult!9673)

(assert (=> d!123395 (and (or ((_ is Undefined!9673) lt!454201) (not ((_ is Found!9673) lt!454201)) (and (bvsge (index!41063 lt!454201) #b00000000000000000000000000000000) (bvslt (index!41063 lt!454201) (size!31660 (_keys!11285 thiss!1427))))) (or ((_ is Undefined!9673) lt!454201) ((_ is Found!9673) lt!454201) (not ((_ is MissingVacant!9673) lt!454201)) (not (= (index!41065 lt!454201) (index!41064 lt!454141))) (and (bvsge (index!41065 lt!454201) #b00000000000000000000000000000000) (bvslt (index!41065 lt!454201) (size!31660 (_keys!11285 thiss!1427))))) (or ((_ is Undefined!9673) lt!454201) (ite ((_ is Found!9673) lt!454201) (= (select (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!454201)) key!909) (and ((_ is MissingVacant!9673) lt!454201) (= (index!41065 lt!454201) (index!41064 lt!454141)) (= (select (arr!31143 (_keys!11285 thiss!1427)) (index!41065 lt!454201)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!581607 () SeekEntryResult!9673)

(assert (=> d!123395 (= lt!454201 e!581607)))

(declare-fun c!104073 () Bool)

(assert (=> d!123395 (= c!104073 (bvsge (x!91618 lt!454141) #b01111111111111111111111111111110))))

(declare-fun lt!454202 () (_ BitVec 64))

(assert (=> d!123395 (= lt!454202 (select (arr!31143 (_keys!11285 thiss!1427)) (index!41064 lt!454141)))))

(assert (=> d!123395 (validMask!0 (mask!29880 thiss!1427))))

(assert (=> d!123395 (= (seekKeyOrZeroReturnVacant!0 (x!91618 lt!454141) (index!41064 lt!454141) (index!41064 lt!454141) key!909 (_keys!11285 thiss!1427) (mask!29880 thiss!1427)) lt!454201)))

(declare-fun b!1029971 () Bool)

(declare-fun e!581606 () SeekEntryResult!9673)

(assert (=> b!1029971 (= e!581606 (Found!9673 (index!41064 lt!454141)))))

(declare-fun e!581608 () SeekEntryResult!9673)

(declare-fun b!1029972 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1029972 (= e!581608 (seekKeyOrZeroReturnVacant!0 (bvadd (x!91618 lt!454141) #b00000000000000000000000000000001) (nextIndex!0 (index!41064 lt!454141) (x!91618 lt!454141) (mask!29880 thiss!1427)) (index!41064 lt!454141) key!909 (_keys!11285 thiss!1427) (mask!29880 thiss!1427)))))

(declare-fun b!1029973 () Bool)

(assert (=> b!1029973 (= e!581607 e!581606)))

(declare-fun c!104072 () Bool)

(assert (=> b!1029973 (= c!104072 (= lt!454202 key!909))))

(declare-fun b!1029974 () Bool)

(assert (=> b!1029974 (= e!581607 Undefined!9673)))

(declare-fun b!1029975 () Bool)

(assert (=> b!1029975 (= e!581608 (MissingVacant!9673 (index!41064 lt!454141)))))

(declare-fun b!1029976 () Bool)

(declare-fun c!104074 () Bool)

(assert (=> b!1029976 (= c!104074 (= lt!454202 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1029976 (= e!581606 e!581608)))

(assert (= (and d!123395 c!104073) b!1029974))

(assert (= (and d!123395 (not c!104073)) b!1029973))

(assert (= (and b!1029973 c!104072) b!1029971))

(assert (= (and b!1029973 (not c!104072)) b!1029976))

(assert (= (and b!1029976 c!104074) b!1029975))

(assert (= (and b!1029976 (not c!104074)) b!1029972))

(declare-fun m!949563 () Bool)

(assert (=> d!123395 m!949563))

(declare-fun m!949565 () Bool)

(assert (=> d!123395 m!949565))

(assert (=> d!123395 m!949465))

(assert (=> d!123395 m!949375))

(declare-fun m!949567 () Bool)

(assert (=> b!1029972 m!949567))

(assert (=> b!1029972 m!949567))

(declare-fun m!949569 () Bool)

(assert (=> b!1029972 m!949569))

(assert (=> b!1029879 d!123395))

(declare-fun d!123397 () Bool)

(declare-fun get!16374 (Option!641) V!37301)

(assert (=> d!123397 (= (apply!939 lt!454121 #b1000000000000000000000000000000000000000000000000000000000000000) (get!16374 (getValueByKey!590 (toList!6911 lt!454121) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30082 () Bool)

(assert (= bs!30082 d!123397))

(declare-fun m!949571 () Bool)

(assert (=> bs!30082 m!949571))

(assert (=> bs!30082 m!949571))

(declare-fun m!949573 () Bool)

(assert (=> bs!30082 m!949573))

(assert (=> b!1029837 d!123397))

(declare-fun d!123399 () Bool)

(declare-fun e!581613 () Bool)

(assert (=> d!123399 e!581613))

(declare-fun res!688923 () Bool)

(assert (=> d!123399 (=> res!688923 e!581613)))

(declare-fun lt!454212 () Bool)

(assert (=> d!123399 (= res!688923 (not lt!454212))))

(declare-fun lt!454213 () Bool)

(assert (=> d!123399 (= lt!454212 lt!454213)))

(declare-fun lt!454211 () Unit!33592)

(declare-fun e!581614 () Unit!33592)

(assert (=> d!123399 (= lt!454211 e!581614)))

(declare-fun c!104077 () Bool)

(assert (=> d!123399 (= c!104077 lt!454213)))

(declare-fun containsKey!563 (List!21933 (_ BitVec 64)) Bool)

(assert (=> d!123399 (= lt!454213 (containsKey!563 (toList!6911 lt!454093) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!123399 (= (contains!5993 lt!454093 #b1000000000000000000000000000000000000000000000000000000000000000) lt!454212)))

(declare-fun b!1029983 () Bool)

(declare-fun lt!454214 () Unit!33592)

(assert (=> b!1029983 (= e!581614 lt!454214)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!395 (List!21933 (_ BitVec 64)) Unit!33592)

(assert (=> b!1029983 (= lt!454214 (lemmaContainsKeyImpliesGetValueByKeyDefined!395 (toList!6911 lt!454093) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun isDefined!435 (Option!641) Bool)

(assert (=> b!1029983 (isDefined!435 (getValueByKey!590 (toList!6911 lt!454093) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1029984 () Bool)

(declare-fun Unit!33601 () Unit!33592)

(assert (=> b!1029984 (= e!581614 Unit!33601)))

(declare-fun b!1029985 () Bool)

(assert (=> b!1029985 (= e!581613 (isDefined!435 (getValueByKey!590 (toList!6911 lt!454093) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123399 c!104077) b!1029983))

(assert (= (and d!123399 (not c!104077)) b!1029984))

(assert (= (and d!123399 (not res!688923)) b!1029985))

(declare-fun m!949575 () Bool)

(assert (=> d!123399 m!949575))

(declare-fun m!949577 () Bool)

(assert (=> b!1029983 m!949577))

(declare-fun m!949579 () Bool)

(assert (=> b!1029983 m!949579))

(assert (=> b!1029983 m!949579))

(declare-fun m!949581 () Bool)

(assert (=> b!1029983 m!949581))

(assert (=> b!1029985 m!949579))

(assert (=> b!1029985 m!949579))

(assert (=> b!1029985 m!949581))

(assert (=> bm!43513 d!123399))

(declare-fun d!123401 () Bool)

(assert (=> d!123401 (arrayNoDuplicates!0 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) #b00000000000000000000000000000000 Nil!21931)))

(assert (=> d!123401 true))

(declare-fun _$66!41 () Unit!33592)

(assert (=> d!123401 (= (choose!53 (_keys!11285 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41063 lt!453980) #b00000000000000000000000000000000 Nil!21931) _$66!41)))

(declare-fun bs!30083 () Bool)

(assert (= bs!30083 d!123401))

(assert (=> bs!30083 m!949237))

(assert (=> bs!30083 m!949293))

(assert (=> d!123343 d!123401))

(declare-fun d!123403 () Bool)

(declare-fun e!581615 () Bool)

(assert (=> d!123403 e!581615))

(declare-fun res!688924 () Bool)

(assert (=> d!123403 (=> res!688924 e!581615)))

(declare-fun lt!454216 () Bool)

(assert (=> d!123403 (= res!688924 (not lt!454216))))

(declare-fun lt!454217 () Bool)

(assert (=> d!123403 (= lt!454216 lt!454217)))

(declare-fun lt!454215 () Unit!33592)

(declare-fun e!581616 () Unit!33592)

(assert (=> d!123403 (= lt!454215 e!581616)))

(declare-fun c!104078 () Bool)

(assert (=> d!123403 (= c!104078 lt!454217)))

(assert (=> d!123403 (= lt!454217 (containsKey!563 (toList!6911 lt!454093) (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!123403 (= (contains!5993 lt!454093 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000)) lt!454216)))

(declare-fun b!1029986 () Bool)

(declare-fun lt!454218 () Unit!33592)

(assert (=> b!1029986 (= e!581616 lt!454218)))

(assert (=> b!1029986 (= lt!454218 (lemmaContainsKeyImpliesGetValueByKeyDefined!395 (toList!6911 lt!454093) (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1029986 (isDefined!435 (getValueByKey!590 (toList!6911 lt!454093) (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1029987 () Bool)

(declare-fun Unit!33602 () Unit!33592)

(assert (=> b!1029987 (= e!581616 Unit!33602)))

(declare-fun b!1029988 () Bool)

(assert (=> b!1029988 (= e!581615 (isDefined!435 (getValueByKey!590 (toList!6911 lt!454093) (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (= (and d!123403 c!104078) b!1029986))

(assert (= (and d!123403 (not c!104078)) b!1029987))

(assert (= (and d!123403 (not res!688924)) b!1029988))

(assert (=> d!123403 m!949321))

(declare-fun m!949583 () Bool)

(assert (=> d!123403 m!949583))

(assert (=> b!1029986 m!949321))

(declare-fun m!949585 () Bool)

(assert (=> b!1029986 m!949585))

(assert (=> b!1029986 m!949321))

(declare-fun m!949587 () Bool)

(assert (=> b!1029986 m!949587))

(assert (=> b!1029986 m!949587))

(declare-fun m!949589 () Bool)

(assert (=> b!1029986 m!949589))

(assert (=> b!1029988 m!949321))

(assert (=> b!1029988 m!949587))

(assert (=> b!1029988 m!949587))

(assert (=> b!1029988 m!949589))

(assert (=> b!1029787 d!123403))

(declare-fun d!123405 () Bool)

(declare-fun e!581617 () Bool)

(assert (=> d!123405 e!581617))

(declare-fun res!688925 () Bool)

(assert (=> d!123405 (=> (not res!688925) (not e!581617))))

(declare-fun lt!454221 () ListLongMap!13791)

(assert (=> d!123405 (= res!688925 (contains!5993 lt!454221 (_1!7840 (ite (or c!104030 c!104034) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))))))))

(declare-fun lt!454219 () List!21933)

(assert (=> d!123405 (= lt!454221 (ListLongMap!13792 lt!454219))))

(declare-fun lt!454220 () Unit!33592)

(declare-fun lt!454222 () Unit!33592)

(assert (=> d!123405 (= lt!454220 lt!454222)))

(assert (=> d!123405 (= (getValueByKey!590 lt!454219 (_1!7840 (ite (or c!104030 c!104034) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))))) (Some!640 (_2!7840 (ite (or c!104030 c!104034) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))))))))

(assert (=> d!123405 (= lt!454222 (lemmaContainsTupThenGetReturnValue!279 lt!454219 (_1!7840 (ite (or c!104030 c!104034) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))) (_2!7840 (ite (or c!104030 c!104034) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))))))))

(assert (=> d!123405 (= lt!454219 (insertStrictlySorted!371 (toList!6911 (ite c!104030 call!43525 (ite c!104034 call!43529 call!43530))) (_1!7840 (ite (or c!104030 c!104034) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))) (_2!7840 (ite (or c!104030 c!104034) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))))))))

(assert (=> d!123405 (= (+!3062 (ite c!104030 call!43525 (ite c!104034 call!43529 call!43530)) (ite (or c!104030 c!104034) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))) lt!454221)))

(declare-fun b!1029989 () Bool)

(declare-fun res!688926 () Bool)

(assert (=> b!1029989 (=> (not res!688926) (not e!581617))))

(assert (=> b!1029989 (= res!688926 (= (getValueByKey!590 (toList!6911 lt!454221) (_1!7840 (ite (or c!104030 c!104034) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))))) (Some!640 (_2!7840 (ite (or c!104030 c!104034) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))))))))

(declare-fun b!1029990 () Bool)

(assert (=> b!1029990 (= e!581617 (contains!5995 (toList!6911 lt!454221) (ite (or c!104030 c!104034) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))))))

(assert (= (and d!123405 res!688925) b!1029989))

(assert (= (and b!1029989 res!688926) b!1029990))

(declare-fun m!949591 () Bool)

(assert (=> d!123405 m!949591))

(declare-fun m!949593 () Bool)

(assert (=> d!123405 m!949593))

(declare-fun m!949595 () Bool)

(assert (=> d!123405 m!949595))

(declare-fun m!949597 () Bool)

(assert (=> d!123405 m!949597))

(declare-fun m!949599 () Bool)

(assert (=> b!1029989 m!949599))

(declare-fun m!949601 () Bool)

(assert (=> b!1029990 m!949601))

(assert (=> bm!43521 d!123405))

(declare-fun b!1029991 () Bool)

(declare-fun e!581619 () (_ BitVec 32))

(declare-fun call!43543 () (_ BitVec 32))

(assert (=> b!1029991 (= e!581619 (bvadd #b00000000000000000000000000000001 call!43543))))

(declare-fun b!1029992 () Bool)

(assert (=> b!1029992 (= e!581619 call!43543)))

(declare-fun b!1029993 () Bool)

(declare-fun e!581618 () (_ BitVec 32))

(assert (=> b!1029993 (= e!581618 #b00000000000000000000000000000000)))

(declare-fun d!123407 () Bool)

(declare-fun lt!454223 () (_ BitVec 32))

(assert (=> d!123407 (and (bvsge lt!454223 #b00000000000000000000000000000000) (bvsle lt!454223 (bvsub (size!31660 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (=> d!123407 (= lt!454223 e!581618)))

(declare-fun c!104079 () Bool)

(assert (=> d!123407 (= c!104079 (bvsge #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))))))

(assert (=> d!123407 (and (bvsle #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31660 (_keys!11285 thiss!1427)) (size!31660 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))))))))

(assert (=> d!123407 (= (arrayCountValidKeys!0 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))) lt!454223)))

(declare-fun bm!43540 () Bool)

(assert (=> bm!43540 (= call!43543 (arrayCountValidKeys!0 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31660 (_keys!11285 thiss!1427))))))

(declare-fun b!1029994 () Bool)

(assert (=> b!1029994 (= e!581618 e!581619)))

(declare-fun c!104080 () Bool)

(assert (=> b!1029994 (= c!104080 (validKeyInArray!0 (select (arr!31143 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (= (and d!123407 c!104079) b!1029993))

(assert (= (and d!123407 (not c!104079)) b!1029994))

(assert (= (and b!1029994 c!104080) b!1029991))

(assert (= (and b!1029994 (not c!104080)) b!1029992))

(assert (= (or b!1029991 b!1029992) bm!43540))

(declare-fun m!949603 () Bool)

(assert (=> bm!43540 m!949603))

(assert (=> b!1029994 m!949497))

(assert (=> b!1029994 m!949497))

(assert (=> b!1029994 m!949511))

(assert (=> b!1029737 d!123407))

(assert (=> b!1029737 d!123361))

(assert (=> b!1029800 d!123381))

(declare-fun b!1029995 () Bool)

(declare-fun e!581621 () (_ BitVec 32))

(declare-fun call!43544 () (_ BitVec 32))

(assert (=> b!1029995 (= e!581621 (bvadd #b00000000000000000000000000000001 call!43544))))

(declare-fun b!1029996 () Bool)

(assert (=> b!1029996 (= e!581621 call!43544)))

(declare-fun b!1029997 () Bool)

(declare-fun e!581620 () (_ BitVec 32))

(assert (=> b!1029997 (= e!581620 #b00000000000000000000000000000000)))

(declare-fun d!123409 () Bool)

(declare-fun lt!454224 () (_ BitVec 32))

(assert (=> d!123409 (and (bvsge lt!454224 #b00000000000000000000000000000000) (bvsle lt!454224 (bvsub (size!31660 lt!453977) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!123409 (= lt!454224 e!581620)))

(declare-fun c!104081 () Bool)

(assert (=> d!123409 (= c!104081 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31660 (_keys!11285 thiss!1427))))))

(assert (=> d!123409 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31660 (_keys!11285 thiss!1427))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!31660 (_keys!11285 thiss!1427)) (size!31660 lt!453977)))))

(assert (=> d!123409 (= (arrayCountValidKeys!0 lt!453977 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31660 (_keys!11285 thiss!1427))) lt!454224)))

(declare-fun bm!43541 () Bool)

(assert (=> bm!43541 (= call!43544 (arrayCountValidKeys!0 lt!453977 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!31660 (_keys!11285 thiss!1427))))))

(declare-fun b!1029998 () Bool)

(assert (=> b!1029998 (= e!581620 e!581621)))

(declare-fun c!104082 () Bool)

(assert (=> b!1029998 (= c!104082 (validKeyInArray!0 (select (arr!31143 lt!453977) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!123409 c!104081) b!1029997))

(assert (= (and d!123409 (not c!104081)) b!1029998))

(assert (= (and b!1029998 c!104082) b!1029995))

(assert (= (and b!1029998 (not c!104082)) b!1029996))

(assert (= (or b!1029995 b!1029996) bm!43541))

(declare-fun m!949605 () Bool)

(assert (=> bm!43541 m!949605))

(declare-fun m!949607 () Bool)

(assert (=> b!1029998 m!949607))

(assert (=> b!1029998 m!949607))

(declare-fun m!949609 () Bool)

(assert (=> b!1029998 m!949609))

(assert (=> bm!43493 d!123409))

(declare-fun d!123411 () Bool)

(assert (=> d!123411 (not (arrayContainsKey!0 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) key!909 #b00000000000000000000000000000000))))

(assert (=> d!123411 true))

(declare-fun _$59!20 () Unit!33592)

(assert (=> d!123411 (= (choose!121 (_keys!11285 thiss!1427) (index!41063 lt!453980) key!909) _$59!20)))

(declare-fun bs!30084 () Bool)

(assert (= bs!30084 d!123411))

(assert (=> bs!30084 m!949237))

(assert (=> bs!30084 m!949447))

(assert (=> d!123365 d!123411))

(declare-fun b!1029999 () Bool)

(declare-fun e!581625 () Bool)

(declare-fun e!581624 () Bool)

(assert (=> b!1029999 (= e!581625 e!581624)))

(declare-fun res!688927 () Bool)

(assert (=> b!1029999 (=> (not res!688927) (not e!581624))))

(declare-fun e!581623 () Bool)

(assert (=> b!1029999 (= res!688927 (not e!581623))))

(declare-fun res!688928 () Bool)

(assert (=> b!1029999 (=> (not res!688928) (not e!581623))))

(assert (=> b!1029999 (= res!688928 (validKeyInArray!0 (select (arr!31143 lt!453977) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1030000 () Bool)

(assert (=> b!1030000 (= e!581623 (contains!5994 (ite c!104029 (Cons!21930 (select (arr!31143 lt!453977) #b00000000000000000000000000000000) Nil!21931) Nil!21931) (select (arr!31143 lt!453977) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1030001 () Bool)

(declare-fun e!581622 () Bool)

(assert (=> b!1030001 (= e!581624 e!581622)))

(declare-fun c!104083 () Bool)

(assert (=> b!1030001 (= c!104083 (validKeyInArray!0 (select (arr!31143 lt!453977) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!123413 () Bool)

(declare-fun res!688929 () Bool)

(assert (=> d!123413 (=> res!688929 e!581625)))

(assert (=> d!123413 (= res!688929 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31660 lt!453977)))))

(assert (=> d!123413 (= (arrayNoDuplicates!0 lt!453977 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104029 (Cons!21930 (select (arr!31143 lt!453977) #b00000000000000000000000000000000) Nil!21931) Nil!21931)) e!581625)))

(declare-fun b!1030002 () Bool)

(declare-fun call!43545 () Bool)

(assert (=> b!1030002 (= e!581622 call!43545)))

(declare-fun b!1030003 () Bool)

(assert (=> b!1030003 (= e!581622 call!43545)))

(declare-fun bm!43542 () Bool)

(assert (=> bm!43542 (= call!43545 (arrayNoDuplicates!0 lt!453977 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!104083 (Cons!21930 (select (arr!31143 lt!453977) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!104029 (Cons!21930 (select (arr!31143 lt!453977) #b00000000000000000000000000000000) Nil!21931) Nil!21931)) (ite c!104029 (Cons!21930 (select (arr!31143 lt!453977) #b00000000000000000000000000000000) Nil!21931) Nil!21931))))))

(assert (= (and d!123413 (not res!688929)) b!1029999))

(assert (= (and b!1029999 res!688928) b!1030000))

(assert (= (and b!1029999 res!688927) b!1030001))

(assert (= (and b!1030001 c!104083) b!1030002))

(assert (= (and b!1030001 (not c!104083)) b!1030003))

(assert (= (or b!1030002 b!1030003) bm!43542))

(assert (=> b!1029999 m!949607))

(assert (=> b!1029999 m!949607))

(assert (=> b!1029999 m!949609))

(assert (=> b!1030000 m!949607))

(assert (=> b!1030000 m!949607))

(declare-fun m!949611 () Bool)

(assert (=> b!1030000 m!949611))

(assert (=> b!1030001 m!949607))

(assert (=> b!1030001 m!949607))

(assert (=> b!1030001 m!949609))

(assert (=> bm!43542 m!949607))

(declare-fun m!949613 () Bool)

(assert (=> bm!43542 m!949613))

(assert (=> bm!43520 d!123413))

(declare-fun d!123415 () Bool)

(declare-fun res!688930 () Bool)

(declare-fun e!581626 () Bool)

(assert (=> d!123415 (=> res!688930 e!581626)))

(assert (=> d!123415 (= res!688930 (= (select (arr!31143 lt!453977) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!909))))

(assert (=> d!123415 (= (arrayContainsKey!0 lt!453977 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!581626)))

(declare-fun b!1030004 () Bool)

(declare-fun e!581627 () Bool)

(assert (=> b!1030004 (= e!581626 e!581627)))

(declare-fun res!688931 () Bool)

(assert (=> b!1030004 (=> (not res!688931) (not e!581627))))

(assert (=> b!1030004 (= res!688931 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!31660 lt!453977)))))

(declare-fun b!1030005 () Bool)

(assert (=> b!1030005 (= e!581627 (arrayContainsKey!0 lt!453977 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!123415 (not res!688930)) b!1030004))

(assert (= (and b!1030004 res!688931) b!1030005))

(assert (=> d!123415 m!949607))

(declare-fun m!949615 () Bool)

(assert (=> b!1030005 m!949615))

(assert (=> b!1029849 d!123415))

(declare-fun d!123417 () Bool)

(declare-fun e!581639 () Bool)

(assert (=> d!123417 e!581639))

(declare-fun c!104092 () Bool)

(declare-fun lt!454230 () SeekEntryResult!9673)

(assert (=> d!123417 (= c!104092 (and ((_ is Intermediate!9673) lt!454230) (undefined!10485 lt!454230)))))

(declare-fun e!581638 () SeekEntryResult!9673)

(assert (=> d!123417 (= lt!454230 e!581638)))

(declare-fun c!104090 () Bool)

(assert (=> d!123417 (= c!104090 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!454229 () (_ BitVec 64))

(assert (=> d!123417 (= lt!454229 (select (arr!31143 (_keys!11285 thiss!1427)) (toIndex!0 key!909 (mask!29880 thiss!1427))))))

(assert (=> d!123417 (validMask!0 (mask!29880 thiss!1427))))

(assert (=> d!123417 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!29880 thiss!1427)) key!909 (_keys!11285 thiss!1427) (mask!29880 thiss!1427)) lt!454230)))

(declare-fun b!1030024 () Bool)

(assert (=> b!1030024 (= e!581639 (bvsge (x!91618 lt!454230) #b01111111111111111111111111111110))))

(declare-fun b!1030025 () Bool)

(declare-fun e!581640 () SeekEntryResult!9673)

(assert (=> b!1030025 (= e!581640 (Intermediate!9673 false (toIndex!0 key!909 (mask!29880 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun b!1030026 () Bool)

(assert (=> b!1030026 (and (bvsge (index!41064 lt!454230) #b00000000000000000000000000000000) (bvslt (index!41064 lt!454230) (size!31660 (_keys!11285 thiss!1427))))))

(declare-fun res!688940 () Bool)

(assert (=> b!1030026 (= res!688940 (= (select (arr!31143 (_keys!11285 thiss!1427)) (index!41064 lt!454230)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!581641 () Bool)

(assert (=> b!1030026 (=> res!688940 e!581641)))

(declare-fun b!1030027 () Bool)

(assert (=> b!1030027 (= e!581638 e!581640)))

(declare-fun c!104091 () Bool)

(assert (=> b!1030027 (= c!104091 (or (= lt!454229 key!909) (= (bvadd lt!454229 lt!454229) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1030028 () Bool)

(assert (=> b!1030028 (and (bvsge (index!41064 lt!454230) #b00000000000000000000000000000000) (bvslt (index!41064 lt!454230) (size!31660 (_keys!11285 thiss!1427))))))

(declare-fun res!688939 () Bool)

(assert (=> b!1030028 (= res!688939 (= (select (arr!31143 (_keys!11285 thiss!1427)) (index!41064 lt!454230)) key!909))))

(assert (=> b!1030028 (=> res!688939 e!581641)))

(declare-fun e!581642 () Bool)

(assert (=> b!1030028 (= e!581642 e!581641)))

(declare-fun b!1030029 () Bool)

(assert (=> b!1030029 (and (bvsge (index!41064 lt!454230) #b00000000000000000000000000000000) (bvslt (index!41064 lt!454230) (size!31660 (_keys!11285 thiss!1427))))))

(assert (=> b!1030029 (= e!581641 (= (select (arr!31143 (_keys!11285 thiss!1427)) (index!41064 lt!454230)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1030030 () Bool)

(assert (=> b!1030030 (= e!581638 (Intermediate!9673 true (toIndex!0 key!909 (mask!29880 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun b!1030031 () Bool)

(assert (=> b!1030031 (= e!581640 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!909 (mask!29880 thiss!1427)) #b00000000000000000000000000000000 (mask!29880 thiss!1427)) key!909 (_keys!11285 thiss!1427) (mask!29880 thiss!1427)))))

(declare-fun b!1030032 () Bool)

(assert (=> b!1030032 (= e!581639 e!581642)))

(declare-fun res!688938 () Bool)

(assert (=> b!1030032 (= res!688938 (and ((_ is Intermediate!9673) lt!454230) (not (undefined!10485 lt!454230)) (bvslt (x!91618 lt!454230) #b01111111111111111111111111111110) (bvsge (x!91618 lt!454230) #b00000000000000000000000000000000) (bvsge (x!91618 lt!454230) #b00000000000000000000000000000000)))))

(assert (=> b!1030032 (=> (not res!688938) (not e!581642))))

(assert (= (and d!123417 c!104090) b!1030030))

(assert (= (and d!123417 (not c!104090)) b!1030027))

(assert (= (and b!1030027 c!104091) b!1030025))

(assert (= (and b!1030027 (not c!104091)) b!1030031))

(assert (= (and d!123417 c!104092) b!1030024))

(assert (= (and d!123417 (not c!104092)) b!1030032))

(assert (= (and b!1030032 res!688938) b!1030028))

(assert (= (and b!1030028 (not res!688939)) b!1030026))

(assert (= (and b!1030026 (not res!688940)) b!1030029))

(declare-fun m!949617 () Bool)

(assert (=> b!1030026 m!949617))

(assert (=> d!123417 m!949461))

(declare-fun m!949619 () Bool)

(assert (=> d!123417 m!949619))

(assert (=> d!123417 m!949375))

(assert (=> b!1030029 m!949617))

(assert (=> b!1030028 m!949617))

(assert (=> b!1030031 m!949461))

(declare-fun m!949621 () Bool)

(assert (=> b!1030031 m!949621))

(assert (=> b!1030031 m!949621))

(declare-fun m!949623 () Bool)

(assert (=> b!1030031 m!949623))

(assert (=> d!123377 d!123417))

(declare-fun d!123419 () Bool)

(declare-fun lt!454236 () (_ BitVec 32))

(declare-fun lt!454235 () (_ BitVec 32))

(assert (=> d!123419 (= lt!454236 (bvmul (bvxor lt!454235 (bvlshr lt!454235 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!123419 (= lt!454235 ((_ extract 31 0) (bvand (bvxor key!909 (bvlshr key!909 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!123419 (and (bvsge (mask!29880 thiss!1427) #b00000000000000000000000000000000) (let ((res!688941 (let ((h!23132 ((_ extract 31 0) (bvand (bvxor key!909 (bvlshr key!909 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!91650 (bvmul (bvxor h!23132 (bvlshr h!23132 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!91650 (bvlshr x!91650 #b00000000000000000000000000001101)) (mask!29880 thiss!1427)))))) (and (bvslt res!688941 (bvadd (mask!29880 thiss!1427) #b00000000000000000000000000000001)) (bvsge res!688941 #b00000000000000000000000000000000))))))

(assert (=> d!123419 (= (toIndex!0 key!909 (mask!29880 thiss!1427)) (bvand (bvxor lt!454236 (bvlshr lt!454236 #b00000000000000000000000000001101)) (mask!29880 thiss!1427)))))

(assert (=> d!123377 d!123419))

(assert (=> d!123377 d!123385))

(declare-fun d!123421 () Bool)

(declare-fun lt!454239 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!515 (List!21934) (InoxSet (_ BitVec 64)))

(assert (=> d!123421 (= lt!454239 (select (content!515 Nil!21931) (select (arr!31143 lt!453977) #b00000000000000000000000000000000)))))

(declare-fun e!581648 () Bool)

(assert (=> d!123421 (= lt!454239 e!581648)))

(declare-fun res!688947 () Bool)

(assert (=> d!123421 (=> (not res!688947) (not e!581648))))

(assert (=> d!123421 (= res!688947 ((_ is Cons!21930) Nil!21931))))

(assert (=> d!123421 (= (contains!5994 Nil!21931 (select (arr!31143 lt!453977) #b00000000000000000000000000000000)) lt!454239)))

(declare-fun b!1030037 () Bool)

(declare-fun e!581647 () Bool)

(assert (=> b!1030037 (= e!581648 e!581647)))

(declare-fun res!688946 () Bool)

(assert (=> b!1030037 (=> res!688946 e!581647)))

(assert (=> b!1030037 (= res!688946 (= (h!23131 Nil!21931) (select (arr!31143 lt!453977) #b00000000000000000000000000000000)))))

(declare-fun b!1030038 () Bool)

(assert (=> b!1030038 (= e!581647 (contains!5994 (t!31037 Nil!21931) (select (arr!31143 lt!453977) #b00000000000000000000000000000000)))))

(assert (= (and d!123421 res!688947) b!1030037))

(assert (= (and b!1030037 (not res!688946)) b!1030038))

(declare-fun m!949625 () Bool)

(assert (=> d!123421 m!949625))

(assert (=> d!123421 m!949297))

(declare-fun m!949627 () Bool)

(assert (=> d!123421 m!949627))

(assert (=> b!1030038 m!949297))

(declare-fun m!949629 () Bool)

(assert (=> b!1030038 m!949629))

(assert (=> b!1029815 d!123421))

(declare-fun d!123423 () Bool)

(assert (=> d!123423 (= (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000) false)))

(assert (=> b!1029735 d!123423))

(declare-fun d!123425 () Bool)

(assert (=> d!123425 (= (apply!939 lt!454093 #b1000000000000000000000000000000000000000000000000000000000000000) (get!16374 (getValueByKey!590 (toList!6911 lt!454093) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30085 () Bool)

(assert (= bs!30085 d!123425))

(assert (=> bs!30085 m!949579))

(assert (=> bs!30085 m!949579))

(declare-fun m!949631 () Bool)

(assert (=> bs!30085 m!949631))

(assert (=> b!1029798 d!123425))

(declare-fun d!123427 () Bool)

(assert (=> d!123427 (= (apply!939 lt!454121 (select (arr!31143 lt!453977) #b00000000000000000000000000000000)) (get!16374 (getValueByKey!590 (toList!6911 lt!454121) (select (arr!31143 lt!453977) #b00000000000000000000000000000000))))))

(declare-fun bs!30086 () Bool)

(assert (= bs!30086 d!123427))

(assert (=> bs!30086 m!949297))

(declare-fun m!949633 () Bool)

(assert (=> bs!30086 m!949633))

(assert (=> bs!30086 m!949633))

(declare-fun m!949635 () Bool)

(assert (=> bs!30086 m!949635))

(assert (=> b!1029829 d!123427))

(declare-fun d!123429 () Bool)

(declare-fun c!104095 () Bool)

(assert (=> d!123429 (= c!104095 ((_ is ValueCellFull!11457) (select (arr!31144 lt!453976) #b00000000000000000000000000000000)))))

(declare-fun e!581651 () V!37301)

(assert (=> d!123429 (= (get!16373 (select (arr!31144 lt!453976) #b00000000000000000000000000000000) (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)) e!581651)))

(declare-fun b!1030043 () Bool)

(declare-fun get!16375 (ValueCell!11457 V!37301) V!37301)

(assert (=> b!1030043 (= e!581651 (get!16375 (select (arr!31144 lt!453976) #b00000000000000000000000000000000) (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1030044 () Bool)

(declare-fun get!16376 (ValueCell!11457 V!37301) V!37301)

(assert (=> b!1030044 (= e!581651 (get!16376 (select (arr!31144 lt!453976) #b00000000000000000000000000000000) (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123429 c!104095) b!1030043))

(assert (= (and d!123429 (not c!104095)) b!1030044))

(assert (=> b!1030043 m!949395))

(assert (=> b!1030043 m!949221))

(declare-fun m!949637 () Bool)

(assert (=> b!1030043 m!949637))

(assert (=> b!1030044 m!949395))

(assert (=> b!1030044 m!949221))

(declare-fun m!949639 () Bool)

(assert (=> b!1030044 m!949639))

(assert (=> b!1029829 d!123429))

(declare-fun b!1030045 () Bool)

(declare-fun e!581654 () Bool)

(declare-fun call!43546 () Bool)

(assert (=> b!1030045 (= e!581654 call!43546)))

(declare-fun d!123431 () Bool)

(declare-fun res!688948 () Bool)

(declare-fun e!581652 () Bool)

(assert (=> d!123431 (=> res!688948 e!581652)))

(assert (=> d!123431 (= res!688948 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31660 lt!453977)))))

(assert (=> d!123431 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!453977 (mask!29880 thiss!1427)) e!581652)))

(declare-fun b!1030046 () Bool)

(assert (=> b!1030046 (= e!581652 e!581654)))

(declare-fun c!104096 () Bool)

(assert (=> b!1030046 (= c!104096 (validKeyInArray!0 (select (arr!31143 lt!453977) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1030047 () Bool)

(declare-fun e!581653 () Bool)

(assert (=> b!1030047 (= e!581654 e!581653)))

(declare-fun lt!454241 () (_ BitVec 64))

(assert (=> b!1030047 (= lt!454241 (select (arr!31143 lt!453977) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!454242 () Unit!33592)

(assert (=> b!1030047 (= lt!454242 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!453977 lt!454241 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1030047 (arrayContainsKey!0 lt!453977 lt!454241 #b00000000000000000000000000000000)))

(declare-fun lt!454240 () Unit!33592)

(assert (=> b!1030047 (= lt!454240 lt!454242)))

(declare-fun res!688949 () Bool)

(assert (=> b!1030047 (= res!688949 (= (seekEntryOrOpen!0 (select (arr!31143 lt!453977) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!453977 (mask!29880 thiss!1427)) (Found!9673 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1030047 (=> (not res!688949) (not e!581653))))

(declare-fun b!1030048 () Bool)

(assert (=> b!1030048 (= e!581653 call!43546)))

(declare-fun bm!43543 () Bool)

(assert (=> bm!43543 (= call!43546 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!453977 (mask!29880 thiss!1427)))))

(assert (= (and d!123431 (not res!688948)) b!1030046))

(assert (= (and b!1030046 c!104096) b!1030047))

(assert (= (and b!1030046 (not c!104096)) b!1030045))

(assert (= (and b!1030047 res!688949) b!1030048))

(assert (= (or b!1030048 b!1030045) bm!43543))

(assert (=> b!1030046 m!949607))

(assert (=> b!1030046 m!949607))

(assert (=> b!1030046 m!949609))

(assert (=> b!1030047 m!949607))

(declare-fun m!949641 () Bool)

(assert (=> b!1030047 m!949641))

(declare-fun m!949643 () Bool)

(assert (=> b!1030047 m!949643))

(assert (=> b!1030047 m!949607))

(declare-fun m!949645 () Bool)

(assert (=> b!1030047 m!949645))

(declare-fun m!949647 () Bool)

(assert (=> bm!43543 m!949647))

(assert (=> bm!43496 d!123431))

(declare-fun d!123433 () Bool)

(declare-fun res!688950 () Bool)

(declare-fun e!581655 () Bool)

(assert (=> d!123433 (=> res!688950 e!581655)))

(assert (=> d!123433 (= res!688950 (= (select (arr!31143 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427)))) #b00000000000000000000000000000000) key!909))))

(assert (=> d!123433 (= (arrayContainsKey!0 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) key!909 #b00000000000000000000000000000000) e!581655)))

(declare-fun b!1030049 () Bool)

(declare-fun e!581656 () Bool)

(assert (=> b!1030049 (= e!581655 e!581656)))

(declare-fun res!688951 () Bool)

(assert (=> b!1030049 (=> (not res!688951) (not e!581656))))

(assert (=> b!1030049 (= res!688951 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31660 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))))))))

(declare-fun b!1030050 () Bool)

(assert (=> b!1030050 (= e!581656 (arrayContainsKey!0 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!123433 (not res!688950)) b!1030049))

(assert (= (and b!1030049 res!688951) b!1030050))

(assert (=> d!123433 m!949497))

(declare-fun m!949649 () Bool)

(assert (=> b!1030050 m!949649))

(assert (=> b!1029852 d!123433))

(declare-fun d!123435 () Bool)

(declare-fun e!581657 () Bool)

(assert (=> d!123435 e!581657))

(declare-fun res!688952 () Bool)

(assert (=> d!123435 (=> (not res!688952) (not e!581657))))

(declare-fun lt!454245 () ListLongMap!13791)

(assert (=> d!123435 (= res!688952 (contains!5993 lt!454245 (_1!7840 (ite (or c!104021 c!104025) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))))))))

(declare-fun lt!454243 () List!21933)

(assert (=> d!123435 (= lt!454245 (ListLongMap!13792 lt!454243))))

(declare-fun lt!454244 () Unit!33592)

(declare-fun lt!454246 () Unit!33592)

(assert (=> d!123435 (= lt!454244 lt!454246)))

(assert (=> d!123435 (= (getValueByKey!590 lt!454243 (_1!7840 (ite (or c!104021 c!104025) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))))) (Some!640 (_2!7840 (ite (or c!104021 c!104025) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))))))))

(assert (=> d!123435 (= lt!454246 (lemmaContainsTupThenGetReturnValue!279 lt!454243 (_1!7840 (ite (or c!104021 c!104025) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))) (_2!7840 (ite (or c!104021 c!104025) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))))))))

(assert (=> d!123435 (= lt!454243 (insertStrictlySorted!371 (toList!6911 (ite c!104021 call!43515 (ite c!104025 call!43519 call!43520))) (_1!7840 (ite (or c!104021 c!104025) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))) (_2!7840 (ite (or c!104021 c!104025) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))))))))

(assert (=> d!123435 (= (+!3062 (ite c!104021 call!43515 (ite c!104025 call!43519 call!43520)) (ite (or c!104021 c!104025) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))) lt!454245)))

(declare-fun b!1030051 () Bool)

(declare-fun res!688953 () Bool)

(assert (=> b!1030051 (=> (not res!688953) (not e!581657))))

(assert (=> b!1030051 (= res!688953 (= (getValueByKey!590 (toList!6911 lt!454245) (_1!7840 (ite (or c!104021 c!104025) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))))) (Some!640 (_2!7840 (ite (or c!104021 c!104025) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))))))))

(declare-fun b!1030052 () Bool)

(assert (=> b!1030052 (= e!581657 (contains!5995 (toList!6911 lt!454245) (ite (or c!104021 c!104025) (tuple2!15661 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5958 thiss!1427)) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))))))

(assert (= (and d!123435 res!688952) b!1030051))

(assert (= (and b!1030051 res!688953) b!1030052))

(declare-fun m!949651 () Bool)

(assert (=> d!123435 m!949651))

(declare-fun m!949653 () Bool)

(assert (=> d!123435 m!949653))

(declare-fun m!949655 () Bool)

(assert (=> d!123435 m!949655))

(declare-fun m!949657 () Bool)

(assert (=> d!123435 m!949657))

(declare-fun m!949659 () Bool)

(assert (=> b!1030051 m!949659))

(declare-fun m!949661 () Bool)

(assert (=> b!1030052 m!949661))

(assert (=> bm!43511 d!123435))

(declare-fun d!123437 () Bool)

(assert (=> d!123437 (= (apply!939 lt!454121 #b0000000000000000000000000000000000000000000000000000000000000000) (get!16374 (getValueByKey!590 (toList!6911 lt!454121) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30087 () Bool)

(assert (= bs!30087 d!123437))

(declare-fun m!949663 () Bool)

(assert (=> bs!30087 m!949663))

(assert (=> bs!30087 m!949663))

(declare-fun m!949665 () Bool)

(assert (=> bs!30087 m!949665))

(assert (=> b!1029828 d!123437))

(declare-fun d!123439 () Bool)

(assert (=> d!123439 (arrayContainsKey!0 lt!453977 lt!454024 #b00000000000000000000000000000000)))

(declare-fun lt!454249 () Unit!33592)

(declare-fun choose!13 (array!64686 (_ BitVec 64) (_ BitVec 32)) Unit!33592)

(assert (=> d!123439 (= lt!454249 (choose!13 lt!453977 lt!454024 #b00000000000000000000000000000000))))

(assert (=> d!123439 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!123439 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!453977 lt!454024 #b00000000000000000000000000000000) lt!454249)))

(declare-fun bs!30088 () Bool)

(assert (= bs!30088 d!123439))

(assert (=> bs!30088 m!949303))

(declare-fun m!949667 () Bool)

(assert (=> bs!30088 m!949667))

(assert (=> b!1029724 d!123439))

(declare-fun d!123441 () Bool)

(declare-fun res!688954 () Bool)

(declare-fun e!581658 () Bool)

(assert (=> d!123441 (=> res!688954 e!581658)))

(assert (=> d!123441 (= res!688954 (= (select (arr!31143 lt!453977) #b00000000000000000000000000000000) lt!454024))))

(assert (=> d!123441 (= (arrayContainsKey!0 lt!453977 lt!454024 #b00000000000000000000000000000000) e!581658)))

(declare-fun b!1030053 () Bool)

(declare-fun e!581659 () Bool)

(assert (=> b!1030053 (= e!581658 e!581659)))

(declare-fun res!688955 () Bool)

(assert (=> b!1030053 (=> (not res!688955) (not e!581659))))

(assert (=> b!1030053 (= res!688955 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31660 lt!453977)))))

(declare-fun b!1030054 () Bool)

(assert (=> b!1030054 (= e!581659 (arrayContainsKey!0 lt!453977 lt!454024 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!123441 (not res!688954)) b!1030053))

(assert (= (and b!1030053 res!688955) b!1030054))

(assert (=> d!123441 m!949297))

(declare-fun m!949669 () Bool)

(assert (=> b!1030054 m!949669))

(assert (=> b!1029724 d!123441))

(declare-fun b!1030067 () Bool)

(declare-fun e!581666 () SeekEntryResult!9673)

(assert (=> b!1030067 (= e!581666 Undefined!9673)))

(declare-fun d!123443 () Bool)

(declare-fun lt!454258 () SeekEntryResult!9673)

(assert (=> d!123443 (and (or ((_ is Undefined!9673) lt!454258) (not ((_ is Found!9673) lt!454258)) (and (bvsge (index!41063 lt!454258) #b00000000000000000000000000000000) (bvslt (index!41063 lt!454258) (size!31660 lt!453977)))) (or ((_ is Undefined!9673) lt!454258) ((_ is Found!9673) lt!454258) (not ((_ is MissingZero!9673) lt!454258)) (and (bvsge (index!41062 lt!454258) #b00000000000000000000000000000000) (bvslt (index!41062 lt!454258) (size!31660 lt!453977)))) (or ((_ is Undefined!9673) lt!454258) ((_ is Found!9673) lt!454258) ((_ is MissingZero!9673) lt!454258) (not ((_ is MissingVacant!9673) lt!454258)) (and (bvsge (index!41065 lt!454258) #b00000000000000000000000000000000) (bvslt (index!41065 lt!454258) (size!31660 lt!453977)))) (or ((_ is Undefined!9673) lt!454258) (ite ((_ is Found!9673) lt!454258) (= (select (arr!31143 lt!453977) (index!41063 lt!454258)) (select (arr!31143 lt!453977) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9673) lt!454258) (= (select (arr!31143 lt!453977) (index!41062 lt!454258)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9673) lt!454258) (= (select (arr!31143 lt!453977) (index!41065 lt!454258)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!123443 (= lt!454258 e!581666)))

(declare-fun c!104105 () Bool)

(declare-fun lt!454256 () SeekEntryResult!9673)

(assert (=> d!123443 (= c!104105 (and ((_ is Intermediate!9673) lt!454256) (undefined!10485 lt!454256)))))

(assert (=> d!123443 (= lt!454256 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!31143 lt!453977) #b00000000000000000000000000000000) (mask!29880 thiss!1427)) (select (arr!31143 lt!453977) #b00000000000000000000000000000000) lt!453977 (mask!29880 thiss!1427)))))

(assert (=> d!123443 (validMask!0 (mask!29880 thiss!1427))))

(assert (=> d!123443 (= (seekEntryOrOpen!0 (select (arr!31143 lt!453977) #b00000000000000000000000000000000) lt!453977 (mask!29880 thiss!1427)) lt!454258)))

(declare-fun b!1030068 () Bool)

(declare-fun e!581667 () SeekEntryResult!9673)

(assert (=> b!1030068 (= e!581667 (Found!9673 (index!41064 lt!454256)))))

(declare-fun b!1030069 () Bool)

(assert (=> b!1030069 (= e!581666 e!581667)))

(declare-fun lt!454257 () (_ BitVec 64))

(assert (=> b!1030069 (= lt!454257 (select (arr!31143 lt!453977) (index!41064 lt!454256)))))

(declare-fun c!104103 () Bool)

(assert (=> b!1030069 (= c!104103 (= lt!454257 (select (arr!31143 lt!453977) #b00000000000000000000000000000000)))))

(declare-fun b!1030070 () Bool)

(declare-fun e!581668 () SeekEntryResult!9673)

(assert (=> b!1030070 (= e!581668 (MissingZero!9673 (index!41064 lt!454256)))))

(declare-fun b!1030071 () Bool)

(declare-fun c!104104 () Bool)

(assert (=> b!1030071 (= c!104104 (= lt!454257 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1030071 (= e!581667 e!581668)))

(declare-fun b!1030072 () Bool)

(assert (=> b!1030072 (= e!581668 (seekKeyOrZeroReturnVacant!0 (x!91618 lt!454256) (index!41064 lt!454256) (index!41064 lt!454256) (select (arr!31143 lt!453977) #b00000000000000000000000000000000) lt!453977 (mask!29880 thiss!1427)))))

(assert (= (and d!123443 c!104105) b!1030067))

(assert (= (and d!123443 (not c!104105)) b!1030069))

(assert (= (and b!1030069 c!104103) b!1030068))

(assert (= (and b!1030069 (not c!104103)) b!1030071))

(assert (= (and b!1030071 c!104104) b!1030070))

(assert (= (and b!1030071 (not c!104104)) b!1030072))

(declare-fun m!949671 () Bool)

(assert (=> d!123443 m!949671))

(declare-fun m!949673 () Bool)

(assert (=> d!123443 m!949673))

(declare-fun m!949675 () Bool)

(assert (=> d!123443 m!949675))

(declare-fun m!949677 () Bool)

(assert (=> d!123443 m!949677))

(assert (=> d!123443 m!949297))

(declare-fun m!949679 () Bool)

(assert (=> d!123443 m!949679))

(assert (=> d!123443 m!949375))

(assert (=> d!123443 m!949297))

(assert (=> d!123443 m!949677))

(declare-fun m!949681 () Bool)

(assert (=> b!1030069 m!949681))

(assert (=> b!1030072 m!949297))

(declare-fun m!949683 () Bool)

(assert (=> b!1030072 m!949683))

(assert (=> b!1029724 d!123443))

(declare-fun d!123445 () Bool)

(declare-fun e!581669 () Bool)

(assert (=> d!123445 e!581669))

(declare-fun res!688956 () Bool)

(assert (=> d!123445 (=> res!688956 e!581669)))

(declare-fun lt!454260 () Bool)

(assert (=> d!123445 (= res!688956 (not lt!454260))))

(declare-fun lt!454261 () Bool)

(assert (=> d!123445 (= lt!454260 lt!454261)))

(declare-fun lt!454259 () Unit!33592)

(declare-fun e!581670 () Unit!33592)

(assert (=> d!123445 (= lt!454259 e!581670)))

(declare-fun c!104106 () Bool)

(assert (=> d!123445 (= c!104106 lt!454261)))

(assert (=> d!123445 (= lt!454261 (containsKey!563 (toList!6911 lt!454121) (select (arr!31143 lt!453977) #b00000000000000000000000000000000)))))

(assert (=> d!123445 (= (contains!5993 lt!454121 (select (arr!31143 lt!453977) #b00000000000000000000000000000000)) lt!454260)))

(declare-fun b!1030073 () Bool)

(declare-fun lt!454262 () Unit!33592)

(assert (=> b!1030073 (= e!581670 lt!454262)))

(assert (=> b!1030073 (= lt!454262 (lemmaContainsKeyImpliesGetValueByKeyDefined!395 (toList!6911 lt!454121) (select (arr!31143 lt!453977) #b00000000000000000000000000000000)))))

(assert (=> b!1030073 (isDefined!435 (getValueByKey!590 (toList!6911 lt!454121) (select (arr!31143 lt!453977) #b00000000000000000000000000000000)))))

(declare-fun b!1030074 () Bool)

(declare-fun Unit!33603 () Unit!33592)

(assert (=> b!1030074 (= e!581670 Unit!33603)))

(declare-fun b!1030075 () Bool)

(assert (=> b!1030075 (= e!581669 (isDefined!435 (getValueByKey!590 (toList!6911 lt!454121) (select (arr!31143 lt!453977) #b00000000000000000000000000000000))))))

(assert (= (and d!123445 c!104106) b!1030073))

(assert (= (and d!123445 (not c!104106)) b!1030074))

(assert (= (and d!123445 (not res!688956)) b!1030075))

(assert (=> d!123445 m!949297))

(declare-fun m!949685 () Bool)

(assert (=> d!123445 m!949685))

(assert (=> b!1030073 m!949297))

(declare-fun m!949687 () Bool)

(assert (=> b!1030073 m!949687))

(assert (=> b!1030073 m!949297))

(assert (=> b!1030073 m!949633))

(assert (=> b!1030073 m!949633))

(declare-fun m!949689 () Bool)

(assert (=> b!1030073 m!949689))

(assert (=> b!1030075 m!949297))

(assert (=> b!1030075 m!949633))

(assert (=> b!1030075 m!949633))

(assert (=> b!1030075 m!949689))

(assert (=> b!1029826 d!123445))

(declare-fun b!1030076 () Bool)

(declare-fun e!581672 () (_ BitVec 32))

(declare-fun call!43547 () (_ BitVec 32))

(assert (=> b!1030076 (= e!581672 (bvadd #b00000000000000000000000000000001 call!43547))))

(declare-fun b!1030077 () Bool)

(assert (=> b!1030077 (= e!581672 call!43547)))

(declare-fun b!1030078 () Bool)

(declare-fun e!581671 () (_ BitVec 32))

(assert (=> b!1030078 (= e!581671 #b00000000000000000000000000000000)))

(declare-fun d!123447 () Bool)

(declare-fun lt!454263 () (_ BitVec 32))

(assert (=> d!123447 (and (bvsge lt!454263 #b00000000000000000000000000000000) (bvsle lt!454263 (bvsub (size!31660 (_keys!11285 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!123447 (= lt!454263 e!581671)))

(declare-fun c!104107 () Bool)

(assert (=> d!123447 (= c!104107 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31660 (_keys!11285 thiss!1427))))))

(assert (=> d!123447 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31660 (_keys!11285 thiss!1427))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!31660 (_keys!11285 thiss!1427)) (size!31660 (_keys!11285 thiss!1427))))))

(assert (=> d!123447 (= (arrayCountValidKeys!0 (_keys!11285 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31660 (_keys!11285 thiss!1427))) lt!454263)))

(declare-fun bm!43544 () Bool)

(assert (=> bm!43544 (= call!43547 (arrayCountValidKeys!0 (_keys!11285 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!31660 (_keys!11285 thiss!1427))))))

(declare-fun b!1030079 () Bool)

(assert (=> b!1030079 (= e!581671 e!581672)))

(declare-fun c!104108 () Bool)

(assert (=> b!1030079 (= c!104108 (validKeyInArray!0 (select (arr!31143 (_keys!11285 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!123447 c!104107) b!1030078))

(assert (= (and d!123447 (not c!104107)) b!1030079))

(assert (= (and b!1030079 c!104108) b!1030076))

(assert (= (and b!1030079 (not c!104108)) b!1030077))

(assert (= (or b!1030076 b!1030077) bm!43544))

(declare-fun m!949691 () Bool)

(assert (=> bm!43544 m!949691))

(declare-fun m!949693 () Bool)

(assert (=> b!1030079 m!949693))

(assert (=> b!1030079 m!949693))

(declare-fun m!949695 () Bool)

(assert (=> b!1030079 m!949695))

(assert (=> bm!43528 d!123447))

(assert (=> d!123351 d!123385))

(declare-fun b!1030088 () Bool)

(declare-fun res!688968 () Bool)

(declare-fun e!581675 () Bool)

(assert (=> b!1030088 (=> (not res!688968) (not e!581675))))

(assert (=> b!1030088 (= res!688968 (and (= (size!31661 (_values!6145 thiss!1427)) (bvadd (mask!29880 thiss!1427) #b00000000000000000000000000000001)) (= (size!31660 (_keys!11285 thiss!1427)) (size!31661 (_values!6145 thiss!1427))) (bvsge (_size!2809 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!2809 thiss!1427) (bvadd (mask!29880 thiss!1427) #b00000000000000000000000000000001))))))

(declare-fun b!1030090 () Bool)

(declare-fun res!688966 () Bool)

(assert (=> b!1030090 (=> (not res!688966) (not e!581675))))

(declare-fun size!31664 (LongMapFixedSize!5508) (_ BitVec 32))

(assert (=> b!1030090 (= res!688966 (= (size!31664 thiss!1427) (bvadd (_size!2809 thiss!1427) (bvsdiv (bvadd (extraKeys!5854 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1030091 () Bool)

(assert (=> b!1030091 (= e!581675 (and (bvsge (extraKeys!5854 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5854 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!2809 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1030089 () Bool)

(declare-fun res!688965 () Bool)

(assert (=> b!1030089 (=> (not res!688965) (not e!581675))))

(assert (=> b!1030089 (= res!688965 (bvsge (size!31664 thiss!1427) (_size!2809 thiss!1427)))))

(declare-fun d!123449 () Bool)

(declare-fun res!688967 () Bool)

(assert (=> d!123449 (=> (not res!688967) (not e!581675))))

(assert (=> d!123449 (= res!688967 (validMask!0 (mask!29880 thiss!1427)))))

(assert (=> d!123449 (= (simpleValid!394 thiss!1427) e!581675)))

(assert (= (and d!123449 res!688967) b!1030088))

(assert (= (and b!1030088 res!688968) b!1030089))

(assert (= (and b!1030089 res!688965) b!1030090))

(assert (= (and b!1030090 res!688966) b!1030091))

(declare-fun m!949697 () Bool)

(assert (=> b!1030090 m!949697))

(assert (=> b!1030089 m!949697))

(assert (=> d!123449 m!949375))

(assert (=> d!123375 d!123449))

(assert (=> d!123359 d!123385))

(declare-fun d!123451 () Bool)

(assert (=> d!123451 (= (apply!939 lt!454093 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000)) (get!16374 (getValueByKey!590 (toList!6911 lt!454093) (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000))))))

(declare-fun bs!30089 () Bool)

(assert (= bs!30089 d!123451))

(assert (=> bs!30089 m!949321))

(assert (=> bs!30089 m!949587))

(assert (=> bs!30089 m!949587))

(declare-fun m!949699 () Bool)

(assert (=> bs!30089 m!949699))

(assert (=> b!1029790 d!123451))

(declare-fun d!123453 () Bool)

(declare-fun c!104109 () Bool)

(assert (=> d!123453 (= c!104109 ((_ is ValueCellFull!11457) (select (arr!31144 (_values!6145 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!581676 () V!37301)

(assert (=> d!123453 (= (get!16373 (select (arr!31144 (_values!6145 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)) e!581676)))

(declare-fun b!1030092 () Bool)

(assert (=> b!1030092 (= e!581676 (get!16375 (select (arr!31144 (_values!6145 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1030093 () Bool)

(assert (=> b!1030093 (= e!581676 (get!16376 (select (arr!31144 (_values!6145 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123453 c!104109) b!1030092))

(assert (= (and d!123453 (not c!104109)) b!1030093))

(assert (=> b!1030092 m!949327))

(assert (=> b!1030092 m!949221))

(declare-fun m!949701 () Bool)

(assert (=> b!1030092 m!949701))

(assert (=> b!1030093 m!949327))

(assert (=> b!1030093 m!949221))

(declare-fun m!949703 () Bool)

(assert (=> b!1030093 m!949703))

(assert (=> b!1029790 d!123453))

(declare-fun b!1030094 () Bool)

(declare-fun e!581679 () Bool)

(declare-fun call!43548 () Bool)

(assert (=> b!1030094 (= e!581679 call!43548)))

(declare-fun d!123455 () Bool)

(declare-fun res!688969 () Bool)

(declare-fun e!581677 () Bool)

(assert (=> d!123455 (=> res!688969 e!581677)))

(assert (=> d!123455 (= res!688969 (bvsge #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))))))

(assert (=> d!123455 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11285 thiss!1427) (mask!29880 thiss!1427)) e!581677)))

(declare-fun b!1030095 () Bool)

(assert (=> b!1030095 (= e!581677 e!581679)))

(declare-fun c!104110 () Bool)

(assert (=> b!1030095 (= c!104110 (validKeyInArray!0 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1030096 () Bool)

(declare-fun e!581678 () Bool)

(assert (=> b!1030096 (= e!581679 e!581678)))

(declare-fun lt!454265 () (_ BitVec 64))

(assert (=> b!1030096 (= lt!454265 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!454266 () Unit!33592)

(assert (=> b!1030096 (= lt!454266 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11285 thiss!1427) lt!454265 #b00000000000000000000000000000000))))

(assert (=> b!1030096 (arrayContainsKey!0 (_keys!11285 thiss!1427) lt!454265 #b00000000000000000000000000000000)))

(declare-fun lt!454264 () Unit!33592)

(assert (=> b!1030096 (= lt!454264 lt!454266)))

(declare-fun res!688970 () Bool)

(assert (=> b!1030096 (= res!688970 (= (seekEntryOrOpen!0 (select (arr!31143 (_keys!11285 thiss!1427)) #b00000000000000000000000000000000) (_keys!11285 thiss!1427) (mask!29880 thiss!1427)) (Found!9673 #b00000000000000000000000000000000)))))

(assert (=> b!1030096 (=> (not res!688970) (not e!581678))))

(declare-fun b!1030097 () Bool)

(assert (=> b!1030097 (= e!581678 call!43548)))

(declare-fun bm!43545 () Bool)

(assert (=> bm!43545 (= call!43548 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11285 thiss!1427) (mask!29880 thiss!1427)))))

(assert (= (and d!123455 (not res!688969)) b!1030095))

(assert (= (and b!1030095 c!104110) b!1030096))

(assert (= (and b!1030095 (not c!104110)) b!1030094))

(assert (= (and b!1030096 res!688970) b!1030097))

(assert (= (or b!1030097 b!1030094) bm!43545))

(assert (=> b!1030095 m!949321))

(assert (=> b!1030095 m!949321))

(assert (=> b!1030095 m!949335))

(assert (=> b!1030096 m!949321))

(declare-fun m!949705 () Bool)

(assert (=> b!1030096 m!949705))

(declare-fun m!949707 () Bool)

(assert (=> b!1030096 m!949707))

(assert (=> b!1030096 m!949321))

(declare-fun m!949709 () Bool)

(assert (=> b!1030096 m!949709))

(declare-fun m!949711 () Bool)

(assert (=> bm!43545 m!949711))

(assert (=> b!1029863 d!123455))

(declare-fun d!123457 () Bool)

(assert (=> d!123457 (= (arrayCountValidKeys!0 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11285 thiss!1427) #b00000000000000000000000000000000 (size!31660 (_keys!11285 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> d!123457 true))

(declare-fun _$79!17 () Unit!33592)

(assert (=> d!123457 (= (choose!82 (_keys!11285 thiss!1427) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) _$79!17)))

(declare-fun bs!30090 () Bool)

(assert (= bs!30090 d!123457))

(assert (=> bs!30090 m!949237))

(assert (=> bs!30090 m!949315))

(assert (=> bs!30090 m!949227))

(assert (=> d!123349 d!123457))

(assert (=> b!1029821 d!123387))

(declare-fun d!123459 () Bool)

(assert (=> d!123459 (= (apply!939 lt!454093 #b0000000000000000000000000000000000000000000000000000000000000000) (get!16374 (getValueByKey!590 (toList!6911 lt!454093) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30091 () Bool)

(assert (= bs!30091 d!123459))

(declare-fun m!949713 () Bool)

(assert (=> bs!30091 m!949713))

(assert (=> bs!30091 m!949713))

(declare-fun m!949715 () Bool)

(assert (=> bs!30091 m!949715))

(assert (=> b!1029789 d!123459))

(declare-fun d!123461 () Bool)

(assert (=> d!123461 (= (apply!939 (+!3062 lt!454120 (tuple2!15661 lt!454114 (minValue!5958 thiss!1427))) lt!454108) (apply!939 lt!454120 lt!454108))))

(declare-fun lt!454269 () Unit!33592)

(declare-fun choose!1699 (ListLongMap!13791 (_ BitVec 64) V!37301 (_ BitVec 64)) Unit!33592)

(assert (=> d!123461 (= lt!454269 (choose!1699 lt!454120 lt!454114 (minValue!5958 thiss!1427) lt!454108))))

(declare-fun e!581682 () Bool)

(assert (=> d!123461 e!581682))

(declare-fun res!688973 () Bool)

(assert (=> d!123461 (=> (not res!688973) (not e!581682))))

(assert (=> d!123461 (= res!688973 (contains!5993 lt!454120 lt!454108))))

(assert (=> d!123461 (= (addApplyDifferent!479 lt!454120 lt!454114 (minValue!5958 thiss!1427) lt!454108) lt!454269)))

(declare-fun b!1030101 () Bool)

(assert (=> b!1030101 (= e!581682 (not (= lt!454108 lt!454114)))))

(assert (= (and d!123461 res!688973) b!1030101))

(declare-fun m!949717 () Bool)

(assert (=> d!123461 m!949717))

(declare-fun m!949719 () Bool)

(assert (=> d!123461 m!949719))

(assert (=> d!123461 m!949415))

(assert (=> d!123461 m!949411))

(assert (=> d!123461 m!949411))

(assert (=> d!123461 m!949413))

(assert (=> b!1029835 d!123461))

(declare-fun d!123463 () Bool)

(assert (=> d!123463 (= (apply!939 lt!454110 lt!454107) (get!16374 (getValueByKey!590 (toList!6911 lt!454110) lt!454107)))))

(declare-fun bs!30092 () Bool)

(assert (= bs!30092 d!123463))

(declare-fun m!949721 () Bool)

(assert (=> bs!30092 m!949721))

(assert (=> bs!30092 m!949721))

(declare-fun m!949723 () Bool)

(assert (=> bs!30092 m!949723))

(assert (=> b!1029835 d!123463))

(declare-fun d!123465 () Bool)

(declare-fun e!581683 () Bool)

(assert (=> d!123465 e!581683))

(declare-fun res!688974 () Bool)

(assert (=> d!123465 (=> (not res!688974) (not e!581683))))

(declare-fun lt!454272 () ListLongMap!13791)

(assert (=> d!123465 (= res!688974 (contains!5993 lt!454272 (_1!7840 (tuple2!15661 lt!454105 (zeroValue!5958 thiss!1427)))))))

(declare-fun lt!454270 () List!21933)

(assert (=> d!123465 (= lt!454272 (ListLongMap!13792 lt!454270))))

(declare-fun lt!454271 () Unit!33592)

(declare-fun lt!454273 () Unit!33592)

(assert (=> d!123465 (= lt!454271 lt!454273)))

(assert (=> d!123465 (= (getValueByKey!590 lt!454270 (_1!7840 (tuple2!15661 lt!454105 (zeroValue!5958 thiss!1427)))) (Some!640 (_2!7840 (tuple2!15661 lt!454105 (zeroValue!5958 thiss!1427)))))))

(assert (=> d!123465 (= lt!454273 (lemmaContainsTupThenGetReturnValue!279 lt!454270 (_1!7840 (tuple2!15661 lt!454105 (zeroValue!5958 thiss!1427))) (_2!7840 (tuple2!15661 lt!454105 (zeroValue!5958 thiss!1427)))))))

(assert (=> d!123465 (= lt!454270 (insertStrictlySorted!371 (toList!6911 lt!454111) (_1!7840 (tuple2!15661 lt!454105 (zeroValue!5958 thiss!1427))) (_2!7840 (tuple2!15661 lt!454105 (zeroValue!5958 thiss!1427)))))))

(assert (=> d!123465 (= (+!3062 lt!454111 (tuple2!15661 lt!454105 (zeroValue!5958 thiss!1427))) lt!454272)))

(declare-fun b!1030102 () Bool)

(declare-fun res!688975 () Bool)

(assert (=> b!1030102 (=> (not res!688975) (not e!581683))))

(assert (=> b!1030102 (= res!688975 (= (getValueByKey!590 (toList!6911 lt!454272) (_1!7840 (tuple2!15661 lt!454105 (zeroValue!5958 thiss!1427)))) (Some!640 (_2!7840 (tuple2!15661 lt!454105 (zeroValue!5958 thiss!1427))))))))

(declare-fun b!1030103 () Bool)

(assert (=> b!1030103 (= e!581683 (contains!5995 (toList!6911 lt!454272) (tuple2!15661 lt!454105 (zeroValue!5958 thiss!1427))))))

(assert (= (and d!123465 res!688974) b!1030102))

(assert (= (and b!1030102 res!688975) b!1030103))

(declare-fun m!949725 () Bool)

(assert (=> d!123465 m!949725))

(declare-fun m!949727 () Bool)

(assert (=> d!123465 m!949727))

(declare-fun m!949729 () Bool)

(assert (=> d!123465 m!949729))

(declare-fun m!949731 () Bool)

(assert (=> d!123465 m!949731))

(declare-fun m!949733 () Bool)

(assert (=> b!1030102 m!949733))

(declare-fun m!949735 () Bool)

(assert (=> b!1030103 m!949735))

(assert (=> b!1029835 d!123465))

(declare-fun d!123467 () Bool)

(assert (=> d!123467 (= (apply!939 (+!3062 lt!454120 (tuple2!15661 lt!454114 (minValue!5958 thiss!1427))) lt!454108) (get!16374 (getValueByKey!590 (toList!6911 (+!3062 lt!454120 (tuple2!15661 lt!454114 (minValue!5958 thiss!1427)))) lt!454108)))))

(declare-fun bs!30093 () Bool)

(assert (= bs!30093 d!123467))

(declare-fun m!949737 () Bool)

(assert (=> bs!30093 m!949737))

(assert (=> bs!30093 m!949737))

(declare-fun m!949739 () Bool)

(assert (=> bs!30093 m!949739))

(assert (=> b!1029835 d!123467))

(declare-fun d!123469 () Bool)

(assert (=> d!123469 (= (apply!939 (+!3062 lt!454103 (tuple2!15661 lt!454112 (minValue!5958 thiss!1427))) lt!454109) (get!16374 (getValueByKey!590 (toList!6911 (+!3062 lt!454103 (tuple2!15661 lt!454112 (minValue!5958 thiss!1427)))) lt!454109)))))

(declare-fun bs!30094 () Bool)

(assert (= bs!30094 d!123469))

(declare-fun m!949741 () Bool)

(assert (=> bs!30094 m!949741))

(assert (=> bs!30094 m!949741))

(declare-fun m!949743 () Bool)

(assert (=> bs!30094 m!949743))

(assert (=> b!1029835 d!123469))

(declare-fun d!123471 () Bool)

(declare-fun e!581684 () Bool)

(assert (=> d!123471 e!581684))

(declare-fun res!688976 () Bool)

(assert (=> d!123471 (=> (not res!688976) (not e!581684))))

(declare-fun lt!454276 () ListLongMap!13791)

(assert (=> d!123471 (= res!688976 (contains!5993 lt!454276 (_1!7840 (tuple2!15661 lt!454114 (minValue!5958 thiss!1427)))))))

(declare-fun lt!454274 () List!21933)

(assert (=> d!123471 (= lt!454276 (ListLongMap!13792 lt!454274))))

(declare-fun lt!454275 () Unit!33592)

(declare-fun lt!454277 () Unit!33592)

(assert (=> d!123471 (= lt!454275 lt!454277)))

(assert (=> d!123471 (= (getValueByKey!590 lt!454274 (_1!7840 (tuple2!15661 lt!454114 (minValue!5958 thiss!1427)))) (Some!640 (_2!7840 (tuple2!15661 lt!454114 (minValue!5958 thiss!1427)))))))

(assert (=> d!123471 (= lt!454277 (lemmaContainsTupThenGetReturnValue!279 lt!454274 (_1!7840 (tuple2!15661 lt!454114 (minValue!5958 thiss!1427))) (_2!7840 (tuple2!15661 lt!454114 (minValue!5958 thiss!1427)))))))

(assert (=> d!123471 (= lt!454274 (insertStrictlySorted!371 (toList!6911 lt!454120) (_1!7840 (tuple2!15661 lt!454114 (minValue!5958 thiss!1427))) (_2!7840 (tuple2!15661 lt!454114 (minValue!5958 thiss!1427)))))))

(assert (=> d!123471 (= (+!3062 lt!454120 (tuple2!15661 lt!454114 (minValue!5958 thiss!1427))) lt!454276)))

(declare-fun b!1030104 () Bool)

(declare-fun res!688977 () Bool)

(assert (=> b!1030104 (=> (not res!688977) (not e!581684))))

(assert (=> b!1030104 (= res!688977 (= (getValueByKey!590 (toList!6911 lt!454276) (_1!7840 (tuple2!15661 lt!454114 (minValue!5958 thiss!1427)))) (Some!640 (_2!7840 (tuple2!15661 lt!454114 (minValue!5958 thiss!1427))))))))

(declare-fun b!1030105 () Bool)

(assert (=> b!1030105 (= e!581684 (contains!5995 (toList!6911 lt!454276) (tuple2!15661 lt!454114 (minValue!5958 thiss!1427))))))

(assert (= (and d!123471 res!688976) b!1030104))

(assert (= (and b!1030104 res!688977) b!1030105))

(declare-fun m!949745 () Bool)

(assert (=> d!123471 m!949745))

(declare-fun m!949747 () Bool)

(assert (=> d!123471 m!949747))

(declare-fun m!949749 () Bool)

(assert (=> d!123471 m!949749))

(declare-fun m!949751 () Bool)

(assert (=> d!123471 m!949751))

(declare-fun m!949753 () Bool)

(assert (=> b!1030104 m!949753))

(declare-fun m!949755 () Bool)

(assert (=> b!1030105 m!949755))

(assert (=> b!1029835 d!123471))

(declare-fun d!123473 () Bool)

(assert (=> d!123473 (= (apply!939 (+!3062 lt!454110 (tuple2!15661 lt!454118 (zeroValue!5958 thiss!1427))) lt!454107) (apply!939 lt!454110 lt!454107))))

(declare-fun lt!454278 () Unit!33592)

(assert (=> d!123473 (= lt!454278 (choose!1699 lt!454110 lt!454118 (zeroValue!5958 thiss!1427) lt!454107))))

(declare-fun e!581685 () Bool)

(assert (=> d!123473 e!581685))

(declare-fun res!688978 () Bool)

(assert (=> d!123473 (=> (not res!688978) (not e!581685))))

(assert (=> d!123473 (= res!688978 (contains!5993 lt!454110 lt!454107))))

(assert (=> d!123473 (= (addApplyDifferent!479 lt!454110 lt!454118 (zeroValue!5958 thiss!1427) lt!454107) lt!454278)))

(declare-fun b!1030106 () Bool)

(assert (=> b!1030106 (= e!581685 (not (= lt!454107 lt!454118)))))

(assert (= (and d!123473 res!688978) b!1030106))

(declare-fun m!949757 () Bool)

(assert (=> d!123473 m!949757))

(declare-fun m!949759 () Bool)

(assert (=> d!123473 m!949759))

(assert (=> d!123473 m!949433))

(assert (=> d!123473 m!949419))

(assert (=> d!123473 m!949419))

(assert (=> d!123473 m!949421))

(assert (=> b!1029835 d!123473))

(declare-fun d!123475 () Bool)

(declare-fun e!581686 () Bool)

(assert (=> d!123475 e!581686))

(declare-fun res!688979 () Bool)

(assert (=> d!123475 (=> (not res!688979) (not e!581686))))

(declare-fun lt!454281 () ListLongMap!13791)

(assert (=> d!123475 (= res!688979 (contains!5993 lt!454281 (_1!7840 (tuple2!15661 lt!454118 (zeroValue!5958 thiss!1427)))))))

(declare-fun lt!454279 () List!21933)

(assert (=> d!123475 (= lt!454281 (ListLongMap!13792 lt!454279))))

(declare-fun lt!454280 () Unit!33592)

(declare-fun lt!454282 () Unit!33592)

(assert (=> d!123475 (= lt!454280 lt!454282)))

(assert (=> d!123475 (= (getValueByKey!590 lt!454279 (_1!7840 (tuple2!15661 lt!454118 (zeroValue!5958 thiss!1427)))) (Some!640 (_2!7840 (tuple2!15661 lt!454118 (zeroValue!5958 thiss!1427)))))))

(assert (=> d!123475 (= lt!454282 (lemmaContainsTupThenGetReturnValue!279 lt!454279 (_1!7840 (tuple2!15661 lt!454118 (zeroValue!5958 thiss!1427))) (_2!7840 (tuple2!15661 lt!454118 (zeroValue!5958 thiss!1427)))))))

(assert (=> d!123475 (= lt!454279 (insertStrictlySorted!371 (toList!6911 lt!454110) (_1!7840 (tuple2!15661 lt!454118 (zeroValue!5958 thiss!1427))) (_2!7840 (tuple2!15661 lt!454118 (zeroValue!5958 thiss!1427)))))))

(assert (=> d!123475 (= (+!3062 lt!454110 (tuple2!15661 lt!454118 (zeroValue!5958 thiss!1427))) lt!454281)))

(declare-fun b!1030107 () Bool)

(declare-fun res!688980 () Bool)

(assert (=> b!1030107 (=> (not res!688980) (not e!581686))))

(assert (=> b!1030107 (= res!688980 (= (getValueByKey!590 (toList!6911 lt!454281) (_1!7840 (tuple2!15661 lt!454118 (zeroValue!5958 thiss!1427)))) (Some!640 (_2!7840 (tuple2!15661 lt!454118 (zeroValue!5958 thiss!1427))))))))

(declare-fun b!1030108 () Bool)

(assert (=> b!1030108 (= e!581686 (contains!5995 (toList!6911 lt!454281) (tuple2!15661 lt!454118 (zeroValue!5958 thiss!1427))))))

(assert (= (and d!123475 res!688979) b!1030107))

(assert (= (and b!1030107 res!688980) b!1030108))

(declare-fun m!949761 () Bool)

(assert (=> d!123475 m!949761))

(declare-fun m!949763 () Bool)

(assert (=> d!123475 m!949763))

(declare-fun m!949765 () Bool)

(assert (=> d!123475 m!949765))

(declare-fun m!949767 () Bool)

(assert (=> d!123475 m!949767))

(declare-fun m!949769 () Bool)

(assert (=> b!1030107 m!949769))

(declare-fun m!949771 () Bool)

(assert (=> b!1030108 m!949771))

(assert (=> b!1029835 d!123475))

(declare-fun d!123477 () Bool)

(assert (=> d!123477 (= (apply!939 (+!3062 lt!454110 (tuple2!15661 lt!454118 (zeroValue!5958 thiss!1427))) lt!454107) (get!16374 (getValueByKey!590 (toList!6911 (+!3062 lt!454110 (tuple2!15661 lt!454118 (zeroValue!5958 thiss!1427)))) lt!454107)))))

(declare-fun bs!30095 () Bool)

(assert (= bs!30095 d!123477))

(declare-fun m!949773 () Bool)

(assert (=> bs!30095 m!949773))

(assert (=> bs!30095 m!949773))

(declare-fun m!949775 () Bool)

(assert (=> bs!30095 m!949775))

(assert (=> b!1029835 d!123477))

(declare-fun d!123479 () Bool)

(declare-fun e!581687 () Bool)

(assert (=> d!123479 e!581687))

(declare-fun res!688981 () Bool)

(assert (=> d!123479 (=> (not res!688981) (not e!581687))))

(declare-fun lt!454285 () ListLongMap!13791)

(assert (=> d!123479 (= res!688981 (contains!5993 lt!454285 (_1!7840 (tuple2!15661 lt!454112 (minValue!5958 thiss!1427)))))))

(declare-fun lt!454283 () List!21933)

(assert (=> d!123479 (= lt!454285 (ListLongMap!13792 lt!454283))))

(declare-fun lt!454284 () Unit!33592)

(declare-fun lt!454286 () Unit!33592)

(assert (=> d!123479 (= lt!454284 lt!454286)))

(assert (=> d!123479 (= (getValueByKey!590 lt!454283 (_1!7840 (tuple2!15661 lt!454112 (minValue!5958 thiss!1427)))) (Some!640 (_2!7840 (tuple2!15661 lt!454112 (minValue!5958 thiss!1427)))))))

(assert (=> d!123479 (= lt!454286 (lemmaContainsTupThenGetReturnValue!279 lt!454283 (_1!7840 (tuple2!15661 lt!454112 (minValue!5958 thiss!1427))) (_2!7840 (tuple2!15661 lt!454112 (minValue!5958 thiss!1427)))))))

(assert (=> d!123479 (= lt!454283 (insertStrictlySorted!371 (toList!6911 lt!454103) (_1!7840 (tuple2!15661 lt!454112 (minValue!5958 thiss!1427))) (_2!7840 (tuple2!15661 lt!454112 (minValue!5958 thiss!1427)))))))

(assert (=> d!123479 (= (+!3062 lt!454103 (tuple2!15661 lt!454112 (minValue!5958 thiss!1427))) lt!454285)))

(declare-fun b!1030109 () Bool)

(declare-fun res!688982 () Bool)

(assert (=> b!1030109 (=> (not res!688982) (not e!581687))))

(assert (=> b!1030109 (= res!688982 (= (getValueByKey!590 (toList!6911 lt!454285) (_1!7840 (tuple2!15661 lt!454112 (minValue!5958 thiss!1427)))) (Some!640 (_2!7840 (tuple2!15661 lt!454112 (minValue!5958 thiss!1427))))))))

(declare-fun b!1030110 () Bool)

(assert (=> b!1030110 (= e!581687 (contains!5995 (toList!6911 lt!454285) (tuple2!15661 lt!454112 (minValue!5958 thiss!1427))))))

(assert (= (and d!123479 res!688981) b!1030109))

(assert (= (and b!1030109 res!688982) b!1030110))

(declare-fun m!949777 () Bool)

(assert (=> d!123479 m!949777))

(declare-fun m!949779 () Bool)

(assert (=> d!123479 m!949779))

(declare-fun m!949781 () Bool)

(assert (=> d!123479 m!949781))

(declare-fun m!949783 () Bool)

(assert (=> d!123479 m!949783))

(declare-fun m!949785 () Bool)

(assert (=> b!1030109 m!949785))

(declare-fun m!949787 () Bool)

(assert (=> b!1030110 m!949787))

(assert (=> b!1029835 d!123479))

(declare-fun d!123481 () Bool)

(declare-fun e!581688 () Bool)

(assert (=> d!123481 e!581688))

(declare-fun res!688983 () Bool)

(assert (=> d!123481 (=> res!688983 e!581688)))

(declare-fun lt!454288 () Bool)

(assert (=> d!123481 (= res!688983 (not lt!454288))))

(declare-fun lt!454289 () Bool)

(assert (=> d!123481 (= lt!454288 lt!454289)))

(declare-fun lt!454287 () Unit!33592)

(declare-fun e!581689 () Unit!33592)

(assert (=> d!123481 (= lt!454287 e!581689)))

(declare-fun c!104111 () Bool)

(assert (=> d!123481 (= c!104111 lt!454289)))

(assert (=> d!123481 (= lt!454289 (containsKey!563 (toList!6911 (+!3062 lt!454111 (tuple2!15661 lt!454105 (zeroValue!5958 thiss!1427)))) lt!454113))))

(assert (=> d!123481 (= (contains!5993 (+!3062 lt!454111 (tuple2!15661 lt!454105 (zeroValue!5958 thiss!1427))) lt!454113) lt!454288)))

(declare-fun b!1030111 () Bool)

(declare-fun lt!454290 () Unit!33592)

(assert (=> b!1030111 (= e!581689 lt!454290)))

(assert (=> b!1030111 (= lt!454290 (lemmaContainsKeyImpliesGetValueByKeyDefined!395 (toList!6911 (+!3062 lt!454111 (tuple2!15661 lt!454105 (zeroValue!5958 thiss!1427)))) lt!454113))))

(assert (=> b!1030111 (isDefined!435 (getValueByKey!590 (toList!6911 (+!3062 lt!454111 (tuple2!15661 lt!454105 (zeroValue!5958 thiss!1427)))) lt!454113))))

(declare-fun b!1030112 () Bool)

(declare-fun Unit!33604 () Unit!33592)

(assert (=> b!1030112 (= e!581689 Unit!33604)))

(declare-fun b!1030113 () Bool)

(assert (=> b!1030113 (= e!581688 (isDefined!435 (getValueByKey!590 (toList!6911 (+!3062 lt!454111 (tuple2!15661 lt!454105 (zeroValue!5958 thiss!1427)))) lt!454113)))))

(assert (= (and d!123481 c!104111) b!1030111))

(assert (= (and d!123481 (not c!104111)) b!1030112))

(assert (= (and d!123481 (not res!688983)) b!1030113))

(declare-fun m!949789 () Bool)

(assert (=> d!123481 m!949789))

(declare-fun m!949791 () Bool)

(assert (=> b!1030111 m!949791))

(declare-fun m!949793 () Bool)

(assert (=> b!1030111 m!949793))

(assert (=> b!1030111 m!949793))

(declare-fun m!949795 () Bool)

(assert (=> b!1030111 m!949795))

(assert (=> b!1030113 m!949793))

(assert (=> b!1030113 m!949793))

(assert (=> b!1030113 m!949795))

(assert (=> b!1029835 d!123481))

(declare-fun d!123483 () Bool)

(assert (=> d!123483 (contains!5993 (+!3062 lt!454111 (tuple2!15661 lt!454105 (zeroValue!5958 thiss!1427))) lt!454113)))

(declare-fun lt!454293 () Unit!33592)

(declare-fun choose!1700 (ListLongMap!13791 (_ BitVec 64) V!37301 (_ BitVec 64)) Unit!33592)

(assert (=> d!123483 (= lt!454293 (choose!1700 lt!454111 lt!454105 (zeroValue!5958 thiss!1427) lt!454113))))

(assert (=> d!123483 (contains!5993 lt!454111 lt!454113)))

(assert (=> d!123483 (= (addStillContains!627 lt!454111 lt!454105 (zeroValue!5958 thiss!1427) lt!454113) lt!454293)))

(declare-fun bs!30096 () Bool)

(assert (= bs!30096 d!123483))

(assert (=> bs!30096 m!949407))

(assert (=> bs!30096 m!949407))

(assert (=> bs!30096 m!949427))

(declare-fun m!949797 () Bool)

(assert (=> bs!30096 m!949797))

(declare-fun m!949799 () Bool)

(assert (=> bs!30096 m!949799))

(assert (=> b!1029835 d!123483))

(declare-fun d!123485 () Bool)

(assert (=> d!123485 (= (apply!939 (+!3062 lt!454103 (tuple2!15661 lt!454112 (minValue!5958 thiss!1427))) lt!454109) (apply!939 lt!454103 lt!454109))))

(declare-fun lt!454294 () Unit!33592)

(assert (=> d!123485 (= lt!454294 (choose!1699 lt!454103 lt!454112 (minValue!5958 thiss!1427) lt!454109))))

(declare-fun e!581690 () Bool)

(assert (=> d!123485 e!581690))

(declare-fun res!688984 () Bool)

(assert (=> d!123485 (=> (not res!688984) (not e!581690))))

(assert (=> d!123485 (= res!688984 (contains!5993 lt!454103 lt!454109))))

(assert (=> d!123485 (= (addApplyDifferent!479 lt!454103 lt!454112 (minValue!5958 thiss!1427) lt!454109) lt!454294)))

(declare-fun b!1030115 () Bool)

(assert (=> b!1030115 (= e!581690 (not (= lt!454109 lt!454112)))))

(assert (= (and d!123485 res!688984) b!1030115))

(declare-fun m!949801 () Bool)

(assert (=> d!123485 m!949801))

(declare-fun m!949803 () Bool)

(assert (=> d!123485 m!949803))

(assert (=> d!123485 m!949429))

(assert (=> d!123485 m!949409))

(assert (=> d!123485 m!949409))

(assert (=> d!123485 m!949423))

(assert (=> b!1029835 d!123485))

(declare-fun d!123487 () Bool)

(declare-fun e!581697 () Bool)

(assert (=> d!123487 e!581697))

(declare-fun res!688985 () Bool)

(assert (=> d!123487 (=> (not res!688985) (not e!581697))))

(declare-fun lt!454300 () ListLongMap!13791)

(assert (=> d!123487 (= res!688985 (not (contains!5993 lt!454300 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!581694 () ListLongMap!13791)

(assert (=> d!123487 (= lt!454300 e!581694)))

(declare-fun c!104113 () Bool)

(assert (=> d!123487 (= c!104113 (bvsge #b00000000000000000000000000000000 (size!31660 lt!453977)))))

(assert (=> d!123487 (validMask!0 (mask!29880 thiss!1427))))

(assert (=> d!123487 (= (getCurrentListMapNoExtraKeys!3532 lt!453977 lt!453976 (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)) lt!454300)))

(declare-fun b!1030116 () Bool)

(declare-fun e!581693 () ListLongMap!13791)

(assert (=> b!1030116 (= e!581694 e!581693)))

(declare-fun c!104112 () Bool)

(assert (=> b!1030116 (= c!104112 (validKeyInArray!0 (select (arr!31143 lt!453977) #b00000000000000000000000000000000)))))

(declare-fun bm!43546 () Bool)

(declare-fun call!43549 () ListLongMap!13791)

(assert (=> bm!43546 (= call!43549 (getCurrentListMapNoExtraKeys!3532 lt!453977 lt!453976 (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6122 thiss!1427)))))

(declare-fun b!1030117 () Bool)

(declare-fun e!581696 () Bool)

(assert (=> b!1030117 (= e!581697 e!581696)))

(declare-fun c!104115 () Bool)

(declare-fun e!581691 () Bool)

(assert (=> b!1030117 (= c!104115 e!581691)))

(declare-fun res!688987 () Bool)

(assert (=> b!1030117 (=> (not res!688987) (not e!581691))))

(assert (=> b!1030117 (= res!688987 (bvslt #b00000000000000000000000000000000 (size!31660 lt!453977)))))

(declare-fun b!1030118 () Bool)

(assert (=> b!1030118 (= e!581691 (validKeyInArray!0 (select (arr!31143 lt!453977) #b00000000000000000000000000000000)))))

(assert (=> b!1030118 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1030119 () Bool)

(declare-fun e!581695 () Bool)

(assert (=> b!1030119 (= e!581695 (isEmpty!928 lt!454300))))

(declare-fun b!1030120 () Bool)

(declare-fun lt!454295 () Unit!33592)

(declare-fun lt!454299 () Unit!33592)

(assert (=> b!1030120 (= lt!454295 lt!454299)))

(declare-fun lt!454301 () (_ BitVec 64))

(declare-fun lt!454297 () (_ BitVec 64))

(declare-fun lt!454296 () ListLongMap!13791)

(declare-fun lt!454298 () V!37301)

(assert (=> b!1030120 (not (contains!5993 (+!3062 lt!454296 (tuple2!15661 lt!454297 lt!454298)) lt!454301))))

(assert (=> b!1030120 (= lt!454299 (addStillNotContains!243 lt!454296 lt!454297 lt!454298 lt!454301))))

(assert (=> b!1030120 (= lt!454301 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1030120 (= lt!454298 (get!16373 (select (arr!31144 lt!453976) #b00000000000000000000000000000000) (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1030120 (= lt!454297 (select (arr!31143 lt!453977) #b00000000000000000000000000000000))))

(assert (=> b!1030120 (= lt!454296 call!43549)))

(assert (=> b!1030120 (= e!581693 (+!3062 call!43549 (tuple2!15661 (select (arr!31143 lt!453977) #b00000000000000000000000000000000) (get!16373 (select (arr!31144 lt!453976) #b00000000000000000000000000000000) (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1030121 () Bool)

(declare-fun e!581692 () Bool)

(assert (=> b!1030121 (= e!581696 e!581692)))

(assert (=> b!1030121 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31660 lt!453977)))))

(declare-fun res!688986 () Bool)

(assert (=> b!1030121 (= res!688986 (contains!5993 lt!454300 (select (arr!31143 lt!453977) #b00000000000000000000000000000000)))))

(assert (=> b!1030121 (=> (not res!688986) (not e!581692))))

(declare-fun b!1030122 () Bool)

(declare-fun res!688988 () Bool)

(assert (=> b!1030122 (=> (not res!688988) (not e!581697))))

(assert (=> b!1030122 (= res!688988 (not (contains!5993 lt!454300 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1030123 () Bool)

(assert (=> b!1030123 (= e!581696 e!581695)))

(declare-fun c!104114 () Bool)

(assert (=> b!1030123 (= c!104114 (bvslt #b00000000000000000000000000000000 (size!31660 lt!453977)))))

(declare-fun b!1030124 () Bool)

(assert (=> b!1030124 (= e!581693 call!43549)))

(declare-fun b!1030125 () Bool)

(assert (=> b!1030125 (= e!581695 (= lt!454300 (getCurrentListMapNoExtraKeys!3532 lt!453977 lt!453976 (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6122 thiss!1427))))))

(declare-fun b!1030126 () Bool)

(assert (=> b!1030126 (= e!581694 (ListLongMap!13792 Nil!21930))))

(declare-fun b!1030127 () Bool)

(assert (=> b!1030127 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31660 lt!453977)))))

(assert (=> b!1030127 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31661 lt!453976)))))

(assert (=> b!1030127 (= e!581692 (= (apply!939 lt!454300 (select (arr!31143 lt!453977) #b00000000000000000000000000000000)) (get!16373 (select (arr!31144 lt!453976) #b00000000000000000000000000000000) (dynLambda!1962 (defaultEntry!6122 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!123487 c!104113) b!1030126))

(assert (= (and d!123487 (not c!104113)) b!1030116))

(assert (= (and b!1030116 c!104112) b!1030120))

(assert (= (and b!1030116 (not c!104112)) b!1030124))

(assert (= (or b!1030120 b!1030124) bm!43546))

(assert (= (and d!123487 res!688985) b!1030122))

(assert (= (and b!1030122 res!688988) b!1030117))

(assert (= (and b!1030117 res!688987) b!1030118))

(assert (= (and b!1030117 c!104115) b!1030121))

(assert (= (and b!1030117 (not c!104115)) b!1030123))

(assert (= (and b!1030121 res!688986) b!1030127))

(assert (= (and b!1030123 c!104114) b!1030125))

(assert (= (and b!1030123 (not c!104114)) b!1030119))

(declare-fun b_lambda!15949 () Bool)

(assert (=> (not b_lambda!15949) (not b!1030120)))

(assert (=> b!1030120 t!31035))

(declare-fun b_and!32985 () Bool)

(assert (= b_and!32983 (and (=> t!31035 result!14171) b_and!32985)))

(declare-fun b_lambda!15951 () Bool)

(assert (=> (not b_lambda!15951) (not b!1030127)))

(assert (=> b!1030127 t!31035))

(declare-fun b_and!32987 () Bool)

(assert (= b_and!32985 (and (=> t!31035 result!14171) b_and!32987)))

(assert (=> b!1030116 m!949297))

(assert (=> b!1030116 m!949297))

(assert (=> b!1030116 m!949299))

(assert (=> b!1030118 m!949297))

(assert (=> b!1030118 m!949297))

(assert (=> b!1030118 m!949299))

(declare-fun m!949805 () Bool)

(assert (=> b!1030122 m!949805))

(declare-fun m!949807 () Bool)

(assert (=> b!1030119 m!949807))

(declare-fun m!949809 () Bool)

(assert (=> d!123487 m!949809))

(assert (=> d!123487 m!949375))

(declare-fun m!949811 () Bool)

(assert (=> bm!43546 m!949811))

(assert (=> b!1030125 m!949811))

(assert (=> b!1030127 m!949221))

(assert (=> b!1030127 m!949395))

(assert (=> b!1030127 m!949221))

(assert (=> b!1030127 m!949397))

(assert (=> b!1030127 m!949297))

(declare-fun m!949813 () Bool)

(assert (=> b!1030127 m!949813))

(assert (=> b!1030127 m!949395))

(assert (=> b!1030127 m!949297))

(declare-fun m!949815 () Bool)

(assert (=> b!1030120 m!949815))

(assert (=> b!1030120 m!949221))

(declare-fun m!949817 () Bool)

(assert (=> b!1030120 m!949817))

(assert (=> b!1030120 m!949395))

(declare-fun m!949819 () Bool)

(assert (=> b!1030120 m!949819))

(assert (=> b!1030120 m!949297))

(assert (=> b!1030120 m!949817))

(declare-fun m!949821 () Bool)

(assert (=> b!1030120 m!949821))

(assert (=> b!1030120 m!949395))

(assert (=> b!1030120 m!949221))

(assert (=> b!1030120 m!949397))

(assert (=> b!1030121 m!949297))

(assert (=> b!1030121 m!949297))

(declare-fun m!949823 () Bool)

(assert (=> b!1030121 m!949823))

(assert (=> b!1029835 d!123487))

(declare-fun d!123489 () Bool)

(assert (=> d!123489 (= (apply!939 lt!454120 lt!454108) (get!16374 (getValueByKey!590 (toList!6911 lt!454120) lt!454108)))))

(declare-fun bs!30097 () Bool)

(assert (= bs!30097 d!123489))

(declare-fun m!949825 () Bool)

(assert (=> bs!30097 m!949825))

(assert (=> bs!30097 m!949825))

(declare-fun m!949827 () Bool)

(assert (=> bs!30097 m!949827))

(assert (=> b!1029835 d!123489))

(declare-fun d!123491 () Bool)

(assert (=> d!123491 (= (apply!939 lt!454103 lt!454109) (get!16374 (getValueByKey!590 (toList!6911 lt!454103) lt!454109)))))

(declare-fun bs!30098 () Bool)

(assert (= bs!30098 d!123491))

(declare-fun m!949829 () Bool)

(assert (=> bs!30098 m!949829))

(assert (=> bs!30098 m!949829))

(declare-fun m!949831 () Bool)

(assert (=> bs!30098 m!949831))

(assert (=> b!1029835 d!123491))

(declare-fun d!123493 () Bool)

(declare-fun e!581698 () Bool)

(assert (=> d!123493 e!581698))

(declare-fun res!688989 () Bool)

(assert (=> d!123493 (=> (not res!688989) (not e!581698))))

(declare-fun lt!454304 () ListLongMap!13791)

(assert (=> d!123493 (= res!688989 (contains!5993 lt!454304 (_1!7840 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))))))

(declare-fun lt!454302 () List!21933)

(assert (=> d!123493 (= lt!454304 (ListLongMap!13792 lt!454302))))

(declare-fun lt!454303 () Unit!33592)

(declare-fun lt!454305 () Unit!33592)

(assert (=> d!123493 (= lt!454303 lt!454305)))

(assert (=> d!123493 (= (getValueByKey!590 lt!454302 (_1!7840 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))) (Some!640 (_2!7840 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))))))

(assert (=> d!123493 (= lt!454305 (lemmaContainsTupThenGetReturnValue!279 lt!454302 (_1!7840 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))) (_2!7840 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))))))

(assert (=> d!123493 (= lt!454302 (insertStrictlySorted!371 (toList!6911 call!43514) (_1!7840 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))) (_2!7840 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))))))

(assert (=> d!123493 (= (+!3062 call!43514 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))) lt!454304)))

(declare-fun b!1030128 () Bool)

(declare-fun res!688990 () Bool)

(assert (=> b!1030128 (=> (not res!688990) (not e!581698))))

(assert (=> b!1030128 (= res!688990 (= (getValueByKey!590 (toList!6911 lt!454304) (_1!7840 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427)))) (Some!640 (_2!7840 (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))))))))

(declare-fun b!1030129 () Bool)

(assert (=> b!1030129 (= e!581698 (contains!5995 (toList!6911 lt!454304) (tuple2!15661 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5958 thiss!1427))))))

(assert (= (and d!123493 res!688989) b!1030128))

(assert (= (and b!1030128 res!688990) b!1030129))

(declare-fun m!949833 () Bool)

(assert (=> d!123493 m!949833))

(declare-fun m!949835 () Bool)

(assert (=> d!123493 m!949835))

(declare-fun m!949837 () Bool)

(assert (=> d!123493 m!949837))

(declare-fun m!949839 () Bool)

(assert (=> d!123493 m!949839))

(declare-fun m!949841 () Bool)

(assert (=> b!1030128 m!949841))

(declare-fun m!949843 () Bool)

(assert (=> b!1030129 m!949843))

(assert (=> b!1029786 d!123493))

(declare-fun d!123495 () Bool)

(declare-fun e!581699 () Bool)

(assert (=> d!123495 e!581699))

(declare-fun res!688991 () Bool)

(assert (=> d!123495 (=> res!688991 e!581699)))

(declare-fun lt!454307 () Bool)

(assert (=> d!123495 (= res!688991 (not lt!454307))))

(declare-fun lt!454308 () Bool)

(assert (=> d!123495 (= lt!454307 lt!454308)))

(declare-fun lt!454306 () Unit!33592)

(declare-fun e!581700 () Unit!33592)

(assert (=> d!123495 (= lt!454306 e!581700)))

(declare-fun c!104116 () Bool)

(assert (=> d!123495 (= c!104116 lt!454308)))

(assert (=> d!123495 (= lt!454308 (containsKey!563 (toList!6911 lt!454121) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!123495 (= (contains!5993 lt!454121 #b0000000000000000000000000000000000000000000000000000000000000000) lt!454307)))

(declare-fun b!1030130 () Bool)

(declare-fun lt!454309 () Unit!33592)

(assert (=> b!1030130 (= e!581700 lt!454309)))

(assert (=> b!1030130 (= lt!454309 (lemmaContainsKeyImpliesGetValueByKeyDefined!395 (toList!6911 lt!454121) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1030130 (isDefined!435 (getValueByKey!590 (toList!6911 lt!454121) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1030131 () Bool)

(declare-fun Unit!33605 () Unit!33592)

(assert (=> b!1030131 (= e!581700 Unit!33605)))

(declare-fun b!1030132 () Bool)

(assert (=> b!1030132 (= e!581699 (isDefined!435 (getValueByKey!590 (toList!6911 lt!454121) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123495 c!104116) b!1030130))

(assert (= (and d!123495 (not c!104116)) b!1030131))

(assert (= (and d!123495 (not res!688991)) b!1030132))

(declare-fun m!949845 () Bool)

(assert (=> d!123495 m!949845))

(declare-fun m!949847 () Bool)

(assert (=> b!1030130 m!949847))

(assert (=> b!1030130 m!949663))

(assert (=> b!1030130 m!949663))

(declare-fun m!949849 () Bool)

(assert (=> b!1030130 m!949849))

(assert (=> b!1030132 m!949663))

(assert (=> b!1030132 m!949663))

(assert (=> b!1030132 m!949849))

(assert (=> bm!43527 d!123495))

(declare-fun b!1030133 () Bool)

(declare-fun e!581704 () Bool)

(declare-fun e!581703 () Bool)

(assert (=> b!1030133 (= e!581704 e!581703)))

(declare-fun res!688992 () Bool)

(assert (=> b!1030133 (=> (not res!688992) (not e!581703))))

(declare-fun e!581702 () Bool)

(assert (=> b!1030133 (= res!688992 (not e!581702))))

(declare-fun res!688993 () Bool)

(assert (=> b!1030133 (=> (not res!688993) (not e!581702))))

(assert (=> b!1030133 (= res!688993 (validKeyInArray!0 (select (arr!31143 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1030134 () Bool)

(assert (=> b!1030134 (= e!581702 (contains!5994 Nil!21931 (select (arr!31143 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1030135 () Bool)

(declare-fun e!581701 () Bool)

(assert (=> b!1030135 (= e!581703 e!581701)))

(declare-fun c!104117 () Bool)

(assert (=> b!1030135 (= c!104117 (validKeyInArray!0 (select (arr!31143 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun d!123497 () Bool)

(declare-fun res!688994 () Bool)

(assert (=> d!123497 (=> res!688994 e!581704)))

(assert (=> d!123497 (= res!688994 (bvsge #b00000000000000000000000000000000 (size!31660 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))))))))

(assert (=> d!123497 (= (arrayNoDuplicates!0 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) #b00000000000000000000000000000000 Nil!21931) e!581704)))

(declare-fun b!1030136 () Bool)

(declare-fun call!43550 () Bool)

(assert (=> b!1030136 (= e!581701 call!43550)))

(declare-fun b!1030137 () Bool)

(assert (=> b!1030137 (= e!581701 call!43550)))

(declare-fun bm!43547 () Bool)

(assert (=> bm!43547 (= call!43550 (arrayNoDuplicates!0 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104117 (Cons!21930 (select (arr!31143 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427)))) #b00000000000000000000000000000000) Nil!21931) Nil!21931)))))

(assert (= (and d!123497 (not res!688994)) b!1030133))

(assert (= (and b!1030133 res!688993) b!1030134))

(assert (= (and b!1030133 res!688992) b!1030135))

(assert (= (and b!1030135 c!104117) b!1030136))

(assert (= (and b!1030135 (not c!104117)) b!1030137))

(assert (= (or b!1030136 b!1030137) bm!43547))

(assert (=> b!1030133 m!949497))

(assert (=> b!1030133 m!949497))

(assert (=> b!1030133 m!949511))

(assert (=> b!1030134 m!949497))

(assert (=> b!1030134 m!949497))

(declare-fun m!949851 () Bool)

(assert (=> b!1030134 m!949851))

(assert (=> b!1030135 m!949497))

(assert (=> b!1030135 m!949497))

(assert (=> b!1030135 m!949511))

(assert (=> bm!43547 m!949497))

(declare-fun m!949853 () Bool)

(assert (=> bm!43547 m!949853))

(assert (=> b!1029701 d!123497))

(declare-fun d!123499 () Bool)

(assert (=> d!123499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) (mask!29880 thiss!1427))))

(assert (=> d!123499 true))

(declare-fun _$44!18 () Unit!33592)

(assert (=> d!123499 (= (choose!25 (_keys!11285 thiss!1427) (index!41063 lt!453980) (mask!29880 thiss!1427)) _$44!18)))

(declare-fun bs!30099 () Bool)

(assert (= bs!30099 d!123499))

(assert (=> bs!30099 m!949237))

(assert (=> bs!30099 m!949379))

(assert (=> d!123353 d!123499))

(assert (=> d!123353 d!123385))

(assert (=> b!1029713 d!123387))

(declare-fun d!123501 () Bool)

(declare-fun e!581705 () Bool)

(assert (=> d!123501 e!581705))

(declare-fun res!688995 () Bool)

(assert (=> d!123501 (=> res!688995 e!581705)))

(declare-fun lt!454311 () Bool)

(assert (=> d!123501 (= res!688995 (not lt!454311))))

(declare-fun lt!454312 () Bool)

(assert (=> d!123501 (= lt!454311 lt!454312)))

(declare-fun lt!454310 () Unit!33592)

(declare-fun e!581706 () Unit!33592)

(assert (=> d!123501 (= lt!454310 e!581706)))

(declare-fun c!104118 () Bool)

(assert (=> d!123501 (= c!104118 lt!454312)))

(assert (=> d!123501 (= lt!454312 (containsKey!563 (toList!6911 lt!454100) key!909))))

(assert (=> d!123501 (= (contains!5993 lt!454100 key!909) lt!454311)))

(declare-fun b!1030138 () Bool)

(declare-fun lt!454313 () Unit!33592)

(assert (=> b!1030138 (= e!581706 lt!454313)))

(assert (=> b!1030138 (= lt!454313 (lemmaContainsKeyImpliesGetValueByKeyDefined!395 (toList!6911 lt!454100) key!909))))

(assert (=> b!1030138 (isDefined!435 (getValueByKey!590 (toList!6911 lt!454100) key!909))))

(declare-fun b!1030139 () Bool)

(declare-fun Unit!33606 () Unit!33592)

(assert (=> b!1030139 (= e!581706 Unit!33606)))

(declare-fun b!1030140 () Bool)

(assert (=> b!1030140 (= e!581705 (isDefined!435 (getValueByKey!590 (toList!6911 lt!454100) key!909)))))

(assert (= (and d!123501 c!104118) b!1030138))

(assert (= (and d!123501 (not c!104118)) b!1030139))

(assert (= (and d!123501 (not res!688995)) b!1030140))

(declare-fun m!949855 () Bool)

(assert (=> d!123501 m!949855))

(declare-fun m!949857 () Bool)

(assert (=> b!1030138 m!949857))

(declare-fun m!949859 () Bool)

(assert (=> b!1030138 m!949859))

(assert (=> b!1030138 m!949859))

(declare-fun m!949861 () Bool)

(assert (=> b!1030138 m!949861))

(assert (=> b!1030140 m!949859))

(assert (=> b!1030140 m!949859))

(assert (=> b!1030140 m!949861))

(assert (=> d!123355 d!123501))

(declare-fun b!1030151 () Bool)

(declare-fun e!581713 () List!21933)

(assert (=> b!1030151 (= e!581713 Nil!21930)))

(declare-fun b!1030152 () Bool)

(declare-fun $colon$colon!604 (List!21933 tuple2!15660) List!21933)

(assert (=> b!1030152 (= e!581713 ($colon$colon!604 (removeStrictlySorted!55 (t!31036 (toList!6911 (getCurrentListMap!3918 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)))) key!909) (h!23130 (toList!6911 (getCurrentListMap!3918 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427))))))))

(declare-fun b!1030153 () Bool)

(declare-fun e!581714 () Bool)

(declare-fun lt!454316 () List!21933)

(assert (=> b!1030153 (= e!581714 (not (containsKey!563 lt!454316 key!909)))))

(declare-fun b!1030154 () Bool)

(declare-fun e!581715 () List!21933)

(assert (=> b!1030154 (= e!581715 (t!31036 (toList!6911 (getCurrentListMap!3918 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)))))))

(declare-fun b!1030155 () Bool)

(assert (=> b!1030155 (= e!581715 e!581713)))

(declare-fun c!104123 () Bool)

(assert (=> b!1030155 (= c!104123 (and ((_ is Cons!21929) (toList!6911 (getCurrentListMap!3918 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)))) (not (= (_1!7840 (h!23130 (toList!6911 (getCurrentListMap!3918 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427))))) key!909))))))

(declare-fun d!123503 () Bool)

(assert (=> d!123503 e!581714))

(declare-fun res!688998 () Bool)

(assert (=> d!123503 (=> (not res!688998) (not e!581714))))

(declare-fun isStrictlySorted!713 (List!21933) Bool)

(assert (=> d!123503 (= res!688998 (isStrictlySorted!713 lt!454316))))

(assert (=> d!123503 (= lt!454316 e!581715)))

(declare-fun c!104124 () Bool)

(assert (=> d!123503 (= c!104124 (and ((_ is Cons!21929) (toList!6911 (getCurrentListMap!3918 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427)))) (= (_1!7840 (h!23130 (toList!6911 (getCurrentListMap!3918 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427))))) key!909)))))

(assert (=> d!123503 (isStrictlySorted!713 (toList!6911 (getCurrentListMap!3918 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427))))))

(assert (=> d!123503 (= (removeStrictlySorted!55 (toList!6911 (getCurrentListMap!3918 (_keys!11285 thiss!1427) (_values!6145 thiss!1427) (mask!29880 thiss!1427) (extraKeys!5854 thiss!1427) (zeroValue!5958 thiss!1427) (minValue!5958 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6122 thiss!1427))) key!909) lt!454316)))

(assert (= (and d!123503 c!104124) b!1030154))

(assert (= (and d!123503 (not c!104124)) b!1030155))

(assert (= (and b!1030155 c!104123) b!1030152))

(assert (= (and b!1030155 (not c!104123)) b!1030151))

(assert (= (and d!123503 res!688998) b!1030153))

(declare-fun m!949863 () Bool)

(assert (=> b!1030152 m!949863))

(assert (=> b!1030152 m!949863))

(declare-fun m!949865 () Bool)

(assert (=> b!1030152 m!949865))

(declare-fun m!949867 () Bool)

(assert (=> b!1030153 m!949867))

(declare-fun m!949869 () Bool)

(assert (=> d!123503 m!949869))

(declare-fun m!949871 () Bool)

(assert (=> d!123503 m!949871))

(assert (=> d!123355 d!123503))

(assert (=> b!1029814 d!123387))

(declare-fun d!123505 () Bool)

(declare-fun e!581716 () Bool)

(assert (=> d!123505 e!581716))

(declare-fun res!688999 () Bool)

(assert (=> d!123505 (=> res!688999 e!581716)))

(declare-fun lt!454318 () Bool)

(assert (=> d!123505 (= res!688999 (not lt!454318))))

(declare-fun lt!454319 () Bool)

(assert (=> d!123505 (= lt!454318 lt!454319)))

(declare-fun lt!454317 () Unit!33592)

(declare-fun e!581717 () Unit!33592)

(assert (=> d!123505 (= lt!454317 e!581717)))

(declare-fun c!104125 () Bool)

(assert (=> d!123505 (= c!104125 lt!454319)))

(assert (=> d!123505 (= lt!454319 (containsKey!563 (toList!6911 lt!454093) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!123505 (= (contains!5993 lt!454093 #b0000000000000000000000000000000000000000000000000000000000000000) lt!454318)))

(declare-fun b!1030156 () Bool)

(declare-fun lt!454320 () Unit!33592)

(assert (=> b!1030156 (= e!581717 lt!454320)))

(assert (=> b!1030156 (= lt!454320 (lemmaContainsKeyImpliesGetValueByKeyDefined!395 (toList!6911 lt!454093) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1030156 (isDefined!435 (getValueByKey!590 (toList!6911 lt!454093) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1030157 () Bool)

(declare-fun Unit!33607 () Unit!33592)

(assert (=> b!1030157 (= e!581717 Unit!33607)))

(declare-fun b!1030158 () Bool)

(assert (=> b!1030158 (= e!581716 (isDefined!435 (getValueByKey!590 (toList!6911 lt!454093) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123505 c!104125) b!1030156))

(assert (= (and d!123505 (not c!104125)) b!1030157))

(assert (= (and d!123505 (not res!688999)) b!1030158))

(declare-fun m!949873 () Bool)

(assert (=> d!123505 m!949873))

(declare-fun m!949875 () Bool)

(assert (=> b!1030156 m!949875))

(assert (=> b!1030156 m!949713))

(assert (=> b!1030156 m!949713))

(declare-fun m!949877 () Bool)

(assert (=> b!1030156 m!949877))

(assert (=> b!1030158 m!949713))

(assert (=> b!1030158 m!949713))

(assert (=> b!1030158 m!949877))

(assert (=> bm!43517 d!123505))

(assert (=> b!1029782 d!123381))

(declare-fun d!123507 () Bool)

(assert (=> d!123507 (= (validKeyInArray!0 (select (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980))) (and (not (= (select (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1029734 d!123507))

(assert (=> b!1029816 d!123387))

(declare-fun d!123509 () Bool)

(assert (=> d!123509 (= (apply!939 (+!3062 lt!454075 (tuple2!15661 lt!454084 (minValue!5958 thiss!1427))) lt!454081) (get!16374 (getValueByKey!590 (toList!6911 (+!3062 lt!454075 (tuple2!15661 lt!454084 (minValue!5958 thiss!1427)))) lt!454081)))))

(declare-fun bs!30100 () Bool)

(assert (= bs!30100 d!123509))

(declare-fun m!949879 () Bool)

(assert (=> bs!30100 m!949879))

(assert (=> bs!30100 m!949879))

(declare-fun m!949881 () Bool)

(assert (=> bs!30100 m!949881))

(assert (=> b!1029796 d!123509))

(declare-fun d!123511 () Bool)

(declare-fun e!581718 () Bool)

(assert (=> d!123511 e!581718))

(declare-fun res!689000 () Bool)

(assert (=> d!123511 (=> res!689000 e!581718)))

(declare-fun lt!454322 () Bool)

(assert (=> d!123511 (= res!689000 (not lt!454322))))

(declare-fun lt!454323 () Bool)

(assert (=> d!123511 (= lt!454322 lt!454323)))

(declare-fun lt!454321 () Unit!33592)

(declare-fun e!581719 () Unit!33592)

(assert (=> d!123511 (= lt!454321 e!581719)))

(declare-fun c!104126 () Bool)

(assert (=> d!123511 (= c!104126 lt!454323)))

(assert (=> d!123511 (= lt!454323 (containsKey!563 (toList!6911 (+!3062 lt!454083 (tuple2!15661 lt!454077 (zeroValue!5958 thiss!1427)))) lt!454085))))

(assert (=> d!123511 (= (contains!5993 (+!3062 lt!454083 (tuple2!15661 lt!454077 (zeroValue!5958 thiss!1427))) lt!454085) lt!454322)))

(declare-fun b!1030159 () Bool)

(declare-fun lt!454324 () Unit!33592)

(assert (=> b!1030159 (= e!581719 lt!454324)))

(assert (=> b!1030159 (= lt!454324 (lemmaContainsKeyImpliesGetValueByKeyDefined!395 (toList!6911 (+!3062 lt!454083 (tuple2!15661 lt!454077 (zeroValue!5958 thiss!1427)))) lt!454085))))

(assert (=> b!1030159 (isDefined!435 (getValueByKey!590 (toList!6911 (+!3062 lt!454083 (tuple2!15661 lt!454077 (zeroValue!5958 thiss!1427)))) lt!454085))))

(declare-fun b!1030160 () Bool)

(declare-fun Unit!33608 () Unit!33592)

(assert (=> b!1030160 (= e!581719 Unit!33608)))

(declare-fun b!1030161 () Bool)

(assert (=> b!1030161 (= e!581718 (isDefined!435 (getValueByKey!590 (toList!6911 (+!3062 lt!454083 (tuple2!15661 lt!454077 (zeroValue!5958 thiss!1427)))) lt!454085)))))

(assert (= (and d!123511 c!104126) b!1030159))

(assert (= (and d!123511 (not c!104126)) b!1030160))

(assert (= (and d!123511 (not res!689000)) b!1030161))

(declare-fun m!949883 () Bool)

(assert (=> d!123511 m!949883))

(declare-fun m!949885 () Bool)

(assert (=> b!1030159 m!949885))

(declare-fun m!949887 () Bool)

(assert (=> b!1030159 m!949887))

(assert (=> b!1030159 m!949887))

(declare-fun m!949889 () Bool)

(assert (=> b!1030159 m!949889))

(assert (=> b!1030161 m!949887))

(assert (=> b!1030161 m!949887))

(assert (=> b!1030161 m!949889))

(assert (=> b!1029796 d!123511))

(declare-fun d!123513 () Bool)

(declare-fun e!581720 () Bool)

(assert (=> d!123513 e!581720))

(declare-fun res!689001 () Bool)

(assert (=> d!123513 (=> (not res!689001) (not e!581720))))

(declare-fun lt!454327 () ListLongMap!13791)

(assert (=> d!123513 (= res!689001 (contains!5993 lt!454327 (_1!7840 (tuple2!15661 lt!454090 (zeroValue!5958 thiss!1427)))))))

(declare-fun lt!454325 () List!21933)

(assert (=> d!123513 (= lt!454327 (ListLongMap!13792 lt!454325))))

(declare-fun lt!454326 () Unit!33592)

(declare-fun lt!454328 () Unit!33592)

(assert (=> d!123513 (= lt!454326 lt!454328)))

(assert (=> d!123513 (= (getValueByKey!590 lt!454325 (_1!7840 (tuple2!15661 lt!454090 (zeroValue!5958 thiss!1427)))) (Some!640 (_2!7840 (tuple2!15661 lt!454090 (zeroValue!5958 thiss!1427)))))))

(assert (=> d!123513 (= lt!454328 (lemmaContainsTupThenGetReturnValue!279 lt!454325 (_1!7840 (tuple2!15661 lt!454090 (zeroValue!5958 thiss!1427))) (_2!7840 (tuple2!15661 lt!454090 (zeroValue!5958 thiss!1427)))))))

(assert (=> d!123513 (= lt!454325 (insertStrictlySorted!371 (toList!6911 lt!454082) (_1!7840 (tuple2!15661 lt!454090 (zeroValue!5958 thiss!1427))) (_2!7840 (tuple2!15661 lt!454090 (zeroValue!5958 thiss!1427)))))))

(assert (=> d!123513 (= (+!3062 lt!454082 (tuple2!15661 lt!454090 (zeroValue!5958 thiss!1427))) lt!454327)))

(declare-fun b!1030162 () Bool)

(declare-fun res!689002 () Bool)

(assert (=> b!1030162 (=> (not res!689002) (not e!581720))))

(assert (=> b!1030162 (= res!689002 (= (getValueByKey!590 (toList!6911 lt!454327) (_1!7840 (tuple2!15661 lt!454090 (zeroValue!5958 thiss!1427)))) (Some!640 (_2!7840 (tuple2!15661 lt!454090 (zeroValue!5958 thiss!1427))))))))

(declare-fun b!1030163 () Bool)

(assert (=> b!1030163 (= e!581720 (contains!5995 (toList!6911 lt!454327) (tuple2!15661 lt!454090 (zeroValue!5958 thiss!1427))))))

(assert (= (and d!123513 res!689001) b!1030162))

(assert (= (and b!1030162 res!689002) b!1030163))

(declare-fun m!949891 () Bool)

(assert (=> d!123513 m!949891))

(declare-fun m!949893 () Bool)

(assert (=> d!123513 m!949893))

(declare-fun m!949895 () Bool)

(assert (=> d!123513 m!949895))

(declare-fun m!949897 () Bool)

(assert (=> d!123513 m!949897))

(declare-fun m!949899 () Bool)

(assert (=> b!1030162 m!949899))

(declare-fun m!949901 () Bool)

(assert (=> b!1030163 m!949901))

(assert (=> b!1029796 d!123513))

(declare-fun d!123515 () Bool)

(declare-fun e!581721 () Bool)

(assert (=> d!123515 e!581721))

(declare-fun res!689003 () Bool)

(assert (=> d!123515 (=> (not res!689003) (not e!581721))))

(declare-fun lt!454331 () ListLongMap!13791)

(assert (=> d!123515 (= res!689003 (contains!5993 lt!454331 (_1!7840 (tuple2!15661 lt!454077 (zeroValue!5958 thiss!1427)))))))

(declare-fun lt!454329 () List!21933)

(assert (=> d!123515 (= lt!454331 (ListLongMap!13792 lt!454329))))

(declare-fun lt!454330 () Unit!33592)

(declare-fun lt!454332 () Unit!33592)

(assert (=> d!123515 (= lt!454330 lt!454332)))

(assert (=> d!123515 (= (getValueByKey!590 lt!454329 (_1!7840 (tuple2!15661 lt!454077 (zeroValue!5958 thiss!1427)))) (Some!640 (_2!7840 (tuple2!15661 lt!454077 (zeroValue!5958 thiss!1427)))))))

(assert (=> d!123515 (= lt!454332 (lemmaContainsTupThenGetReturnValue!279 lt!454329 (_1!7840 (tuple2!15661 lt!454077 (zeroValue!5958 thiss!1427))) (_2!7840 (tuple2!15661 lt!454077 (zeroValue!5958 thiss!1427)))))))

(assert (=> d!123515 (= lt!454329 (insertStrictlySorted!371 (toList!6911 lt!454083) (_1!7840 (tuple2!15661 lt!454077 (zeroValue!5958 thiss!1427))) (_2!7840 (tuple2!15661 lt!454077 (zeroValue!5958 thiss!1427)))))))

(assert (=> d!123515 (= (+!3062 lt!454083 (tuple2!15661 lt!454077 (zeroValue!5958 thiss!1427))) lt!454331)))

(declare-fun b!1030164 () Bool)

(declare-fun res!689004 () Bool)

(assert (=> b!1030164 (=> (not res!689004) (not e!581721))))

(assert (=> b!1030164 (= res!689004 (= (getValueByKey!590 (toList!6911 lt!454331) (_1!7840 (tuple2!15661 lt!454077 (zeroValue!5958 thiss!1427)))) (Some!640 (_2!7840 (tuple2!15661 lt!454077 (zeroValue!5958 thiss!1427))))))))

(declare-fun b!1030165 () Bool)

(assert (=> b!1030165 (= e!581721 (contains!5995 (toList!6911 lt!454331) (tuple2!15661 lt!454077 (zeroValue!5958 thiss!1427))))))

(assert (= (and d!123515 res!689003) b!1030164))

(assert (= (and b!1030164 res!689004) b!1030165))

(declare-fun m!949903 () Bool)

(assert (=> d!123515 m!949903))

(declare-fun m!949905 () Bool)

(assert (=> d!123515 m!949905))

(declare-fun m!949907 () Bool)

(assert (=> d!123515 m!949907))

(declare-fun m!949909 () Bool)

(assert (=> d!123515 m!949909))

(declare-fun m!949911 () Bool)

(assert (=> b!1030164 m!949911))

(declare-fun m!949913 () Bool)

(assert (=> b!1030165 m!949913))

(assert (=> b!1029796 d!123515))

(declare-fun d!123517 () Bool)

(assert (=> d!123517 (= (apply!939 lt!454082 lt!454079) (get!16374 (getValueByKey!590 (toList!6911 lt!454082) lt!454079)))))

(declare-fun bs!30101 () Bool)

(assert (= bs!30101 d!123517))

(declare-fun m!949915 () Bool)

(assert (=> bs!30101 m!949915))

(assert (=> bs!30101 m!949915))

(declare-fun m!949917 () Bool)

(assert (=> bs!30101 m!949917))

(assert (=> b!1029796 d!123517))

(declare-fun d!123519 () Bool)

(assert (=> d!123519 (= (apply!939 (+!3062 lt!454075 (tuple2!15661 lt!454084 (minValue!5958 thiss!1427))) lt!454081) (apply!939 lt!454075 lt!454081))))

(declare-fun lt!454333 () Unit!33592)

(assert (=> d!123519 (= lt!454333 (choose!1699 lt!454075 lt!454084 (minValue!5958 thiss!1427) lt!454081))))

(declare-fun e!581722 () Bool)

(assert (=> d!123519 e!581722))

(declare-fun res!689005 () Bool)

(assert (=> d!123519 (=> (not res!689005) (not e!581722))))

(assert (=> d!123519 (= res!689005 (contains!5993 lt!454075 lt!454081))))

(assert (=> d!123519 (= (addApplyDifferent!479 lt!454075 lt!454084 (minValue!5958 thiss!1427) lt!454081) lt!454333)))

(declare-fun b!1030166 () Bool)

(assert (=> b!1030166 (= e!581722 (not (= lt!454081 lt!454084)))))

(assert (= (and d!123519 res!689005) b!1030166))

(declare-fun m!949919 () Bool)

(assert (=> d!123519 m!949919))

(declare-fun m!949921 () Bool)

(assert (=> d!123519 m!949921))

(assert (=> d!123519 m!949363))

(assert (=> d!123519 m!949343))

(assert (=> d!123519 m!949343))

(assert (=> d!123519 m!949357))

(assert (=> b!1029796 d!123519))

(declare-fun d!123521 () Bool)

(assert (=> d!123521 (= (apply!939 (+!3062 lt!454092 (tuple2!15661 lt!454086 (minValue!5958 thiss!1427))) lt!454080) (apply!939 lt!454092 lt!454080))))

(declare-fun lt!454334 () Unit!33592)

(assert (=> d!123521 (= lt!454334 (choose!1699 lt!454092 lt!454086 (minValue!5958 thiss!1427) lt!454080))))

(declare-fun e!581723 () Bool)

(assert (=> d!123521 e!581723))

(declare-fun res!689006 () Bool)

(assert (=> d!123521 (=> (not res!689006) (not e!581723))))

(assert (=> d!123521 (= res!689006 (contains!5993 lt!454092 lt!454080))))

(assert (=> d!123521 (= (addApplyDifferent!479 lt!454092 lt!454086 (minValue!5958 thiss!1427) lt!454080) lt!454334)))

(declare-fun b!1030167 () Bool)

(assert (=> b!1030167 (= e!581723 (not (= lt!454080 lt!454086)))))

(assert (= (and d!123521 res!689006) b!1030167))

(declare-fun m!949923 () Bool)

(assert (=> d!123521 m!949923))

(declare-fun m!949925 () Bool)

(assert (=> d!123521 m!949925))

(assert (=> d!123521 m!949349))

(assert (=> d!123521 m!949345))

(assert (=> d!123521 m!949345))

(assert (=> d!123521 m!949347))

(assert (=> b!1029796 d!123521))

(declare-fun d!123523 () Bool)

(declare-fun e!581724 () Bool)

(assert (=> d!123523 e!581724))

(declare-fun res!689007 () Bool)

(assert (=> d!123523 (=> (not res!689007) (not e!581724))))

(declare-fun lt!454337 () ListLongMap!13791)

(assert (=> d!123523 (= res!689007 (contains!5993 lt!454337 (_1!7840 (tuple2!15661 lt!454086 (minValue!5958 thiss!1427)))))))

(declare-fun lt!454335 () List!21933)

(assert (=> d!123523 (= lt!454337 (ListLongMap!13792 lt!454335))))

(declare-fun lt!454336 () Unit!33592)

(declare-fun lt!454338 () Unit!33592)

(assert (=> d!123523 (= lt!454336 lt!454338)))

(assert (=> d!123523 (= (getValueByKey!590 lt!454335 (_1!7840 (tuple2!15661 lt!454086 (minValue!5958 thiss!1427)))) (Some!640 (_2!7840 (tuple2!15661 lt!454086 (minValue!5958 thiss!1427)))))))

(assert (=> d!123523 (= lt!454338 (lemmaContainsTupThenGetReturnValue!279 lt!454335 (_1!7840 (tuple2!15661 lt!454086 (minValue!5958 thiss!1427))) (_2!7840 (tuple2!15661 lt!454086 (minValue!5958 thiss!1427)))))))

(assert (=> d!123523 (= lt!454335 (insertStrictlySorted!371 (toList!6911 lt!454092) (_1!7840 (tuple2!15661 lt!454086 (minValue!5958 thiss!1427))) (_2!7840 (tuple2!15661 lt!454086 (minValue!5958 thiss!1427)))))))

(assert (=> d!123523 (= (+!3062 lt!454092 (tuple2!15661 lt!454086 (minValue!5958 thiss!1427))) lt!454337)))

(declare-fun b!1030168 () Bool)

(declare-fun res!689008 () Bool)

(assert (=> b!1030168 (=> (not res!689008) (not e!581724))))

(assert (=> b!1030168 (= res!689008 (= (getValueByKey!590 (toList!6911 lt!454337) (_1!7840 (tuple2!15661 lt!454086 (minValue!5958 thiss!1427)))) (Some!640 (_2!7840 (tuple2!15661 lt!454086 (minValue!5958 thiss!1427))))))))

(declare-fun b!1030169 () Bool)

(assert (=> b!1030169 (= e!581724 (contains!5995 (toList!6911 lt!454337) (tuple2!15661 lt!454086 (minValue!5958 thiss!1427))))))

(assert (= (and d!123523 res!689007) b!1030168))

(assert (= (and b!1030168 res!689008) b!1030169))

(declare-fun m!949927 () Bool)

(assert (=> d!123523 m!949927))

(declare-fun m!949929 () Bool)

(assert (=> d!123523 m!949929))

(declare-fun m!949931 () Bool)

(assert (=> d!123523 m!949931))

(declare-fun m!949933 () Bool)

(assert (=> d!123523 m!949933))

(declare-fun m!949935 () Bool)

(assert (=> b!1030168 m!949935))

(declare-fun m!949937 () Bool)

(assert (=> b!1030169 m!949937))

(assert (=> b!1029796 d!123523))

(declare-fun d!123525 () Bool)

(assert (=> d!123525 (= (apply!939 lt!454075 lt!454081) (get!16374 (getValueByKey!590 (toList!6911 lt!454075) lt!454081)))))

(declare-fun bs!30102 () Bool)

(assert (= bs!30102 d!123525))

(declare-fun m!949939 () Bool)

(assert (=> bs!30102 m!949939))

(assert (=> bs!30102 m!949939))

(declare-fun m!949941 () Bool)

(assert (=> bs!30102 m!949941))

(assert (=> b!1029796 d!123525))

(declare-fun d!123527 () Bool)

(assert (=> d!123527 (= (apply!939 lt!454092 lt!454080) (get!16374 (getValueByKey!590 (toList!6911 lt!454092) lt!454080)))))

(declare-fun bs!30103 () Bool)

(assert (= bs!30103 d!123527))

(declare-fun m!949943 () Bool)

(assert (=> bs!30103 m!949943))

(assert (=> bs!30103 m!949943))

(declare-fun m!949945 () Bool)

(assert (=> bs!30103 m!949945))

(assert (=> b!1029796 d!123527))

(assert (=> b!1029796 d!123389))

(declare-fun d!123529 () Bool)

(assert (=> d!123529 (contains!5993 (+!3062 lt!454083 (tuple2!15661 lt!454077 (zeroValue!5958 thiss!1427))) lt!454085)))

(declare-fun lt!454339 () Unit!33592)

(assert (=> d!123529 (= lt!454339 (choose!1700 lt!454083 lt!454077 (zeroValue!5958 thiss!1427) lt!454085))))

(assert (=> d!123529 (contains!5993 lt!454083 lt!454085)))

(assert (=> d!123529 (= (addStillContains!627 lt!454083 lt!454077 (zeroValue!5958 thiss!1427) lt!454085) lt!454339)))

(declare-fun bs!30104 () Bool)

(assert (= bs!30104 d!123529))

(assert (=> bs!30104 m!949341))

(assert (=> bs!30104 m!949341))

(assert (=> bs!30104 m!949361))

(declare-fun m!949947 () Bool)

(assert (=> bs!30104 m!949947))

(declare-fun m!949949 () Bool)

(assert (=> bs!30104 m!949949))

(assert (=> b!1029796 d!123529))

(declare-fun d!123531 () Bool)

(assert (=> d!123531 (= (apply!939 (+!3062 lt!454082 (tuple2!15661 lt!454090 (zeroValue!5958 thiss!1427))) lt!454079) (apply!939 lt!454082 lt!454079))))

(declare-fun lt!454340 () Unit!33592)

(assert (=> d!123531 (= lt!454340 (choose!1699 lt!454082 lt!454090 (zeroValue!5958 thiss!1427) lt!454079))))

(declare-fun e!581725 () Bool)

(assert (=> d!123531 e!581725))

(declare-fun res!689009 () Bool)

(assert (=> d!123531 (=> (not res!689009) (not e!581725))))

(assert (=> d!123531 (= res!689009 (contains!5993 lt!454082 lt!454079))))

(assert (=> d!123531 (= (addApplyDifferent!479 lt!454082 lt!454090 (zeroValue!5958 thiss!1427) lt!454079) lt!454340)))

(declare-fun b!1030170 () Bool)

(assert (=> b!1030170 (= e!581725 (not (= lt!454079 lt!454090)))))

(assert (= (and d!123531 res!689009) b!1030170))

(declare-fun m!949951 () Bool)

(assert (=> d!123531 m!949951))

(declare-fun m!949953 () Bool)

(assert (=> d!123531 m!949953))

(assert (=> d!123531 m!949367))

(assert (=> d!123531 m!949353))

(assert (=> d!123531 m!949353))

(assert (=> d!123531 m!949355))

(assert (=> b!1029796 d!123531))

(declare-fun d!123533 () Bool)

(declare-fun e!581726 () Bool)

(assert (=> d!123533 e!581726))

(declare-fun res!689010 () Bool)

(assert (=> d!123533 (=> (not res!689010) (not e!581726))))

(declare-fun lt!454343 () ListLongMap!13791)

(assert (=> d!123533 (= res!689010 (contains!5993 lt!454343 (_1!7840 (tuple2!15661 lt!454084 (minValue!5958 thiss!1427)))))))

(declare-fun lt!454341 () List!21933)

(assert (=> d!123533 (= lt!454343 (ListLongMap!13792 lt!454341))))

(declare-fun lt!454342 () Unit!33592)

(declare-fun lt!454344 () Unit!33592)

(assert (=> d!123533 (= lt!454342 lt!454344)))

(assert (=> d!123533 (= (getValueByKey!590 lt!454341 (_1!7840 (tuple2!15661 lt!454084 (minValue!5958 thiss!1427)))) (Some!640 (_2!7840 (tuple2!15661 lt!454084 (minValue!5958 thiss!1427)))))))

(assert (=> d!123533 (= lt!454344 (lemmaContainsTupThenGetReturnValue!279 lt!454341 (_1!7840 (tuple2!15661 lt!454084 (minValue!5958 thiss!1427))) (_2!7840 (tuple2!15661 lt!454084 (minValue!5958 thiss!1427)))))))

(assert (=> d!123533 (= lt!454341 (insertStrictlySorted!371 (toList!6911 lt!454075) (_1!7840 (tuple2!15661 lt!454084 (minValue!5958 thiss!1427))) (_2!7840 (tuple2!15661 lt!454084 (minValue!5958 thiss!1427)))))))

(assert (=> d!123533 (= (+!3062 lt!454075 (tuple2!15661 lt!454084 (minValue!5958 thiss!1427))) lt!454343)))

(declare-fun b!1030171 () Bool)

(declare-fun res!689011 () Bool)

(assert (=> b!1030171 (=> (not res!689011) (not e!581726))))

(assert (=> b!1030171 (= res!689011 (= (getValueByKey!590 (toList!6911 lt!454343) (_1!7840 (tuple2!15661 lt!454084 (minValue!5958 thiss!1427)))) (Some!640 (_2!7840 (tuple2!15661 lt!454084 (minValue!5958 thiss!1427))))))))

(declare-fun b!1030172 () Bool)

(assert (=> b!1030172 (= e!581726 (contains!5995 (toList!6911 lt!454343) (tuple2!15661 lt!454084 (minValue!5958 thiss!1427))))))

(assert (= (and d!123533 res!689010) b!1030171))

(assert (= (and b!1030171 res!689011) b!1030172))

(declare-fun m!949955 () Bool)

(assert (=> d!123533 m!949955))

(declare-fun m!949957 () Bool)

(assert (=> d!123533 m!949957))

(declare-fun m!949959 () Bool)

(assert (=> d!123533 m!949959))

(declare-fun m!949961 () Bool)

(assert (=> d!123533 m!949961))

(declare-fun m!949963 () Bool)

(assert (=> b!1030171 m!949963))

(declare-fun m!949965 () Bool)

(assert (=> b!1030172 m!949965))

(assert (=> b!1029796 d!123533))

(declare-fun d!123535 () Bool)

(assert (=> d!123535 (= (apply!939 (+!3062 lt!454082 (tuple2!15661 lt!454090 (zeroValue!5958 thiss!1427))) lt!454079) (get!16374 (getValueByKey!590 (toList!6911 (+!3062 lt!454082 (tuple2!15661 lt!454090 (zeroValue!5958 thiss!1427)))) lt!454079)))))

(declare-fun bs!30105 () Bool)

(assert (= bs!30105 d!123535))

(declare-fun m!949967 () Bool)

(assert (=> bs!30105 m!949967))

(assert (=> bs!30105 m!949967))

(declare-fun m!949969 () Bool)

(assert (=> bs!30105 m!949969))

(assert (=> b!1029796 d!123535))

(declare-fun d!123537 () Bool)

(assert (=> d!123537 (= (apply!939 (+!3062 lt!454092 (tuple2!15661 lt!454086 (minValue!5958 thiss!1427))) lt!454080) (get!16374 (getValueByKey!590 (toList!6911 (+!3062 lt!454092 (tuple2!15661 lt!454086 (minValue!5958 thiss!1427)))) lt!454080)))))

(declare-fun bs!30106 () Bool)

(assert (= bs!30106 d!123537))

(declare-fun m!949971 () Bool)

(assert (=> bs!30106 m!949971))

(assert (=> bs!30106 m!949971))

(declare-fun m!949973 () Bool)

(assert (=> bs!30106 m!949973))

(assert (=> b!1029796 d!123537))

(declare-fun b!1030173 () Bool)

(declare-fun e!581729 () Bool)

(declare-fun call!43551 () Bool)

(assert (=> b!1030173 (= e!581729 call!43551)))

(declare-fun d!123539 () Bool)

(declare-fun res!689012 () Bool)

(declare-fun e!581727 () Bool)

(assert (=> d!123539 (=> res!689012 e!581727)))

(assert (=> d!123539 (= res!689012 (bvsge #b00000000000000000000000000000000 (size!31660 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))))))))

(assert (=> d!123539 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) (mask!29880 thiss!1427)) e!581727)))

(declare-fun b!1030174 () Bool)

(assert (=> b!1030174 (= e!581727 e!581729)))

(declare-fun c!104127 () Bool)

(assert (=> b!1030174 (= c!104127 (validKeyInArray!0 (select (arr!31143 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1030175 () Bool)

(declare-fun e!581728 () Bool)

(assert (=> b!1030175 (= e!581729 e!581728)))

(declare-fun lt!454346 () (_ BitVec 64))

(assert (=> b!1030175 (= lt!454346 (select (arr!31143 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427)))) #b00000000000000000000000000000000))))

(declare-fun lt!454347 () Unit!33592)

(assert (=> b!1030175 (= lt!454347 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) lt!454346 #b00000000000000000000000000000000))))

(assert (=> b!1030175 (arrayContainsKey!0 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) lt!454346 #b00000000000000000000000000000000)))

(declare-fun lt!454345 () Unit!33592)

(assert (=> b!1030175 (= lt!454345 lt!454347)))

(declare-fun res!689013 () Bool)

(assert (=> b!1030175 (= res!689013 (= (seekEntryOrOpen!0 (select (arr!31143 (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427)))) #b00000000000000000000000000000000) (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) (mask!29880 thiss!1427)) (Found!9673 #b00000000000000000000000000000000)))))

(assert (=> b!1030175 (=> (not res!689013) (not e!581728))))

(declare-fun b!1030176 () Bool)

(assert (=> b!1030176 (= e!581728 call!43551)))

(declare-fun bm!43548 () Bool)

(assert (=> bm!43548 (= call!43551 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!64687 (store (arr!31143 (_keys!11285 thiss!1427)) (index!41063 lt!453980) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31660 (_keys!11285 thiss!1427))) (mask!29880 thiss!1427)))))

(assert (= (and d!123539 (not res!689012)) b!1030174))

(assert (= (and b!1030174 c!104127) b!1030175))

(assert (= (and b!1030174 (not c!104127)) b!1030173))

(assert (= (and b!1030175 res!689013) b!1030176))

(assert (= (or b!1030176 b!1030173) bm!43548))

(assert (=> b!1030174 m!949497))

(assert (=> b!1030174 m!949497))

(assert (=> b!1030174 m!949511))

(assert (=> b!1030175 m!949497))

(declare-fun m!949975 () Bool)

(assert (=> b!1030175 m!949975))

(declare-fun m!949977 () Bool)

(assert (=> b!1030175 m!949977))

(assert (=> b!1030175 m!949497))

(declare-fun m!949979 () Bool)

(assert (=> b!1030175 m!949979))

(declare-fun m!949981 () Bool)

(assert (=> bm!43548 m!949981))

(assert (=> b!1029803 d!123539))

(declare-fun d!123541 () Bool)

(declare-fun e!581730 () Bool)

(assert (=> d!123541 e!581730))

(declare-fun res!689014 () Bool)

(assert (=> d!123541 (=> res!689014 e!581730)))

(declare-fun lt!454349 () Bool)

(assert (=> d!123541 (= res!689014 (not lt!454349))))

(declare-fun lt!454350 () Bool)

(assert (=> d!123541 (= lt!454349 lt!454350)))

(declare-fun lt!454348 () Unit!33592)

(declare-fun e!581731 () Unit!33592)

(assert (=> d!123541 (= lt!454348 e!581731)))

(declare-fun c!104128 () Bool)

(assert (=> d!123541 (= c!104128 lt!454350)))

(assert (=> d!123541 (= lt!454350 (containsKey!563 (toList!6911 lt!454121) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!123541 (= (contains!5993 lt!454121 #b1000000000000000000000000000000000000000000000000000000000000000) lt!454349)))

(declare-fun b!1030177 () Bool)

(declare-fun lt!454351 () Unit!33592)

(assert (=> b!1030177 (= e!581731 lt!454351)))

(assert (=> b!1030177 (= lt!454351 (lemmaContainsKeyImpliesGetValueByKeyDefined!395 (toList!6911 lt!454121) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1030177 (isDefined!435 (getValueByKey!590 (toList!6911 lt!454121) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1030178 () Bool)

(declare-fun Unit!33609 () Unit!33592)

(assert (=> b!1030178 (= e!581731 Unit!33609)))

(declare-fun b!1030179 () Bool)

(assert (=> b!1030179 (= e!581730 (isDefined!435 (getValueByKey!590 (toList!6911 lt!454121) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123541 c!104128) b!1030177))

(assert (= (and d!123541 (not c!104128)) b!1030178))

(assert (= (and d!123541 (not res!689014)) b!1030179))

(declare-fun m!949983 () Bool)

(assert (=> d!123541 m!949983))

(declare-fun m!949985 () Bool)

(assert (=> b!1030177 m!949985))

(assert (=> b!1030177 m!949571))

(assert (=> b!1030177 m!949571))

(declare-fun m!949987 () Bool)

(assert (=> b!1030177 m!949987))

(assert (=> b!1030179 m!949571))

(assert (=> b!1030179 m!949571))

(assert (=> b!1030179 m!949987))

(assert (=> bm!43523 d!123541))

(assert (=> b!1029723 d!123387))

(assert (=> bm!43524 d!123487))

(declare-fun b!1030180 () Bool)

(declare-fun e!581733 () Bool)

(assert (=> b!1030180 (= e!581733 tp_is_empty!24321)))

(declare-fun mapNonEmpty!37935 () Bool)

(declare-fun mapRes!37935 () Bool)

(declare-fun tp!72878 () Bool)

(assert (=> mapNonEmpty!37935 (= mapRes!37935 (and tp!72878 e!581733))))

(declare-fun mapValue!37935 () ValueCell!11457)

(declare-fun mapKey!37935 () (_ BitVec 32))

(declare-fun mapRest!37935 () (Array (_ BitVec 32) ValueCell!11457))

(assert (=> mapNonEmpty!37935 (= mapRest!37934 (store mapRest!37935 mapKey!37935 mapValue!37935))))

(declare-fun condMapEmpty!37935 () Bool)

(declare-fun mapDefault!37935 () ValueCell!11457)

(assert (=> mapNonEmpty!37934 (= condMapEmpty!37935 (= mapRest!37934 ((as const (Array (_ BitVec 32) ValueCell!11457)) mapDefault!37935)))))

(declare-fun e!581732 () Bool)

(assert (=> mapNonEmpty!37934 (= tp!72877 (and e!581732 mapRes!37935))))

(declare-fun b!1030181 () Bool)

(assert (=> b!1030181 (= e!581732 tp_is_empty!24321)))

(declare-fun mapIsEmpty!37935 () Bool)

(assert (=> mapIsEmpty!37935 mapRes!37935))

(assert (= (and mapNonEmpty!37934 condMapEmpty!37935) mapIsEmpty!37935))

(assert (= (and mapNonEmpty!37934 (not condMapEmpty!37935)) mapNonEmpty!37935))

(assert (= (and mapNonEmpty!37935 ((_ is ValueCellFull!11457) mapValue!37935)) b!1030180))

(assert (= (and mapNonEmpty!37934 ((_ is ValueCellFull!11457) mapDefault!37935)) b!1030181))

(declare-fun m!949989 () Bool)

(assert (=> mapNonEmpty!37935 m!949989))

(declare-fun b_lambda!15953 () Bool)

(assert (= b_lambda!15951 (or (and b!1029664 b_free!20601) b_lambda!15953)))

(declare-fun b_lambda!15955 () Bool)

(assert (= b_lambda!15943 (or (and b!1029664 b_free!20601) b_lambda!15955)))

(declare-fun b_lambda!15957 () Bool)

(assert (= b_lambda!15941 (or (and b!1029664 b_free!20601) b_lambda!15957)))

(declare-fun b_lambda!15959 () Bool)

(assert (= b_lambda!15947 (or (and b!1029664 b_free!20601) b_lambda!15959)))

(declare-fun b_lambda!15961 () Bool)

(assert (= b_lambda!15949 (or (and b!1029664 b_free!20601) b_lambda!15961)))

(declare-fun b_lambda!15963 () Bool)

(assert (= b_lambda!15945 (or (and b!1029664 b_free!20601) b_lambda!15963)))

(check-sat (not b!1030179) (not b!1030043) (not d!123495) (not b!1030108) (not b!1030072) (not d!123397) (not b!1030119) (not d!123517) (not b!1030052) (not b!1030079) (not d!123513) (not b!1030044) (not b!1029925) (not bm!43545) (not d!123399) (not b!1029934) (not d!123491) (not d!123451) (not b!1029988) (not b!1030128) (not b!1030153) (not d!123389) (not b!1029950) (not b!1029985) (not b!1030095) (not b_lambda!15963) (not b_lambda!15959) (not b!1030164) (not b!1030122) (not mapNonEmpty!37935) (not b!1030120) (not b!1030031) (not b!1030161) (not b_lambda!15957) (not b!1029920) (not d!123503) (not b!1030125) (not b!1030092) (not d!123437) (not b!1030116) (not d!123493) (not bm!43529) (not d!123523) (not d!123457) (not b!1030001) (not d!123473) (not b!1030105) (not bm!43535) (not b!1030050) (not b!1029941) (not b!1030168) (not d!123509) (not b!1030051) (not b_lambda!15937) (not b!1030107) (not b!1030047) (not d!123445) (not b!1030090) (not b!1030038) (not b_lambda!15953) (not b!1030046) (not b!1029931) b_and!32987 (not b!1029989) (not b!1029926) (not d!123459) (not b!1030054) (not d!123481) (not b_lambda!15955) (not d!123541) (not d!123403) (not b!1030174) (not d!123463) (not d!123527) (not b!1029990) (not b!1030096) (not b!1030177) (not b_lambda!15935) (not d!123501) (not b!1030171) (not b!1029986) (not b!1029972) (not b!1030156) (not d!123515) (not b!1030138) (not d!123465) (not d!123471) (not d!123499) (not d!123405) (not b!1029994) (not b!1029939) (not bm!43546) (not bm!43542) (not d!123401) (not b!1029999) (not bm!43539) (not b!1030118) (not b!1030159) (not b!1030127) (not d!123449) (not b_next!20601) (not bm!43536) (not b!1030073) (not d!123435) tp_is_empty!24321 (not b!1029924) (not d!123525) (not d!123531) (not d!123521) (not bm!43541) (not b!1030140) (not b!1030075) (not b!1030169) (not b!1030134) (not d!123425) (not b!1030000) (not b!1030113) (not b_lambda!15939) (not b!1029891) (not d!123475) (not b!1029892) (not d!123529) (not b!1030162) (not d!123477) (not b!1030133) (not b!1029929) (not bm!43543) (not b!1029952) (not bm!43544) (not b!1030130) (not d!123505) (not d!123535) (not b!1030005) (not b!1030121) (not d!123417) (not d!123479) (not b!1030172) (not d!123467) (not d!123421) (not b_lambda!15961) (not b!1030129) (not b!1029923) (not b!1030165) (not d!123533) (not d!123519) (not d!123393) (not b!1030093) (not b!1030163) (not b!1030110) (not b!1030135) (not d!123411) (not d!123485) (not b!1029922) (not b!1030158) (not bm!43548) (not d!123489) (not d!123391) (not d!123439) (not d!123487) (not b!1030109) (not d!123469) (not d!123537) (not d!123461) (not b!1030175) (not b!1030102) (not b!1030132) (not b!1030111) (not b!1029942) (not d!123483) (not b!1029958) (not b!1029893) (not bm!43540) (not b!1030103) (not d!123395) (not b!1029998) (not d!123383) (not b!1029957) (not b!1029948) (not b!1030152) (not b_lambda!15927) (not b!1030104) (not d!123443) (not bm!43533) (not b!1030089) (not bm!43532) (not d!123427) (not d!123511) (not b!1029983) (not b!1029938) (not bm!43547))
(check-sat b_and!32987 (not b_next!20601))

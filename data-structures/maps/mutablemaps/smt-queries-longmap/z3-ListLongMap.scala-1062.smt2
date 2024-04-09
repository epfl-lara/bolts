; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22068 () Bool)

(assert start!22068)

(declare-fun b!228130 () Bool)

(declare-fun b_free!6123 () Bool)

(declare-fun b_next!6123 () Bool)

(assert (=> b!228130 (= b_free!6123 (not b_next!6123))))

(declare-fun tp!21511 () Bool)

(declare-fun b_and!13039 () Bool)

(assert (=> b!228130 (= tp!21511 b_and!13039)))

(declare-datatypes ((V!7627 0))(
  ( (V!7628 (val!3037 Int)) )
))
(declare-datatypes ((ValueCell!2649 0))(
  ( (ValueCellFull!2649 (v!5053 V!7627)) (EmptyCell!2649) )
))
(declare-datatypes ((array!11212 0))(
  ( (array!11213 (arr!5325 (Array (_ BitVec 32) ValueCell!2649)) (size!5658 (_ BitVec 32))) )
))
(declare-datatypes ((array!11214 0))(
  ( (array!11215 (arr!5326 (Array (_ BitVec 32) (_ BitVec 64))) (size!5659 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3198 0))(
  ( (LongMapFixedSize!3199 (defaultEntry!4258 Int) (mask!10126 (_ BitVec 32)) (extraKeys!3995 (_ BitVec 32)) (zeroValue!4099 V!7627) (minValue!4099 V!7627) (_size!1648 (_ BitVec 32)) (_keys!6312 array!11214) (_values!4241 array!11212) (_vacant!1648 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3198)

(declare-datatypes ((SeekEntryResult!914 0))(
  ( (MissingZero!914 (index!5826 (_ BitVec 32))) (Found!914 (index!5827 (_ BitVec 32))) (Intermediate!914 (undefined!1726 Bool) (index!5828 (_ BitVec 32)) (x!23326 (_ BitVec 32))) (Undefined!914) (MissingVacant!914 (index!5829 (_ BitVec 32))) )
))
(declare-fun lt!114821 () SeekEntryResult!914)

(declare-fun bm!21198 () Bool)

(declare-fun call!21202 () Bool)

(declare-fun c!37816 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21198 (= call!21202 (inRange!0 (ite c!37816 (index!5826 lt!114821) (index!5829 lt!114821)) (mask!10126 thiss!1504)))))

(declare-fun b!228116 () Bool)

(declare-fun res!112301 () Bool)

(assert (=> b!228116 (= res!112301 (= (select (arr!5326 (_keys!6312 thiss!1504)) (index!5829 lt!114821)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!148007 () Bool)

(assert (=> b!228116 (=> (not res!112301) (not e!148007))))

(declare-fun b!228117 () Bool)

(declare-fun c!37814 () Bool)

(get-info :version)

(assert (=> b!228117 (= c!37814 ((_ is MissingVacant!914) lt!114821))))

(declare-fun e!148009 () Bool)

(declare-fun e!148001 () Bool)

(assert (=> b!228117 (= e!148009 e!148001)))

(declare-fun b!228118 () Bool)

(declare-fun call!21201 () Bool)

(assert (=> b!228118 (= e!148007 (not call!21201))))

(declare-fun b!228119 () Bool)

(declare-datatypes ((Unit!6929 0))(
  ( (Unit!6930) )
))
(declare-fun e!148003 () Unit!6929)

(declare-fun Unit!6931 () Unit!6929)

(assert (=> b!228119 (= e!148003 Unit!6931)))

(declare-fun bm!21199 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11214 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21199 (= call!21201 (arrayContainsKey!0 (_keys!6312 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!228120 () Bool)

(declare-fun e!148005 () Unit!6929)

(declare-fun lt!114818 () Unit!6929)

(assert (=> b!228120 (= e!148005 lt!114818)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!283 (array!11214 array!11212 (_ BitVec 32) (_ BitVec 32) V!7627 V!7627 (_ BitVec 64) Int) Unit!6929)

(assert (=> b!228120 (= lt!114818 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!283 (_keys!6312 thiss!1504) (_values!4241 thiss!1504) (mask!10126 thiss!1504) (extraKeys!3995 thiss!1504) (zeroValue!4099 thiss!1504) (minValue!4099 thiss!1504) key!932 (defaultEntry!4258 thiss!1504)))))

(assert (=> b!228120 (= c!37816 ((_ is MissingZero!914) lt!114821))))

(assert (=> b!228120 e!148009))

(declare-fun b!228121 () Bool)

(declare-fun e!148011 () Bool)

(declare-fun tp_is_empty!5985 () Bool)

(assert (=> b!228121 (= e!148011 tp_is_empty!5985)))

(declare-fun b!228122 () Bool)

(declare-fun e!148012 () Bool)

(assert (=> b!228122 (= e!148012 true)))

(declare-fun lt!114822 () Bool)

(declare-datatypes ((List!3424 0))(
  ( (Nil!3421) (Cons!3420 (h!4068 (_ BitVec 64)) (t!8391 List!3424)) )
))
(declare-fun arrayNoDuplicates!0 (array!11214 (_ BitVec 32) List!3424) Bool)

(assert (=> b!228122 (= lt!114822 (arrayNoDuplicates!0 (_keys!6312 thiss!1504) #b00000000000000000000000000000000 Nil!3421))))

(declare-fun b!228123 () Bool)

(declare-fun e!148006 () Bool)

(declare-fun e!148014 () Bool)

(assert (=> b!228123 (= e!148006 e!148014)))

(declare-fun res!112299 () Bool)

(assert (=> b!228123 (=> (not res!112299) (not e!148014))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!228123 (= res!112299 (or (= lt!114821 (MissingZero!914 index!297)) (= lt!114821 (MissingVacant!914 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11214 (_ BitVec 32)) SeekEntryResult!914)

(assert (=> b!228123 (= lt!114821 (seekEntryOrOpen!0 key!932 (_keys!6312 thiss!1504) (mask!10126 thiss!1504)))))

(declare-fun b!228124 () Bool)

(declare-fun res!112300 () Bool)

(declare-fun e!148015 () Bool)

(assert (=> b!228124 (=> (not res!112300) (not e!148015))))

(assert (=> b!228124 (= res!112300 (= (select (arr!5326 (_keys!6312 thiss!1504)) (index!5826 lt!114821)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!228115 () Bool)

(assert (=> b!228115 (= e!148001 ((_ is Undefined!914) lt!114821))))

(declare-fun res!112306 () Bool)

(assert (=> start!22068 (=> (not res!112306) (not e!148006))))

(declare-fun valid!1272 (LongMapFixedSize!3198) Bool)

(assert (=> start!22068 (= res!112306 (valid!1272 thiss!1504))))

(assert (=> start!22068 e!148006))

(declare-fun e!148008 () Bool)

(assert (=> start!22068 e!148008))

(assert (=> start!22068 true))

(declare-fun b!228125 () Bool)

(declare-fun res!112305 () Bool)

(assert (=> b!228125 (=> res!112305 e!148012)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11214 (_ BitVec 32)) Bool)

(assert (=> b!228125 (= res!112305 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6312 thiss!1504) (mask!10126 thiss!1504))))))

(declare-fun b!228126 () Bool)

(declare-fun e!148002 () Bool)

(declare-fun mapRes!10147 () Bool)

(assert (=> b!228126 (= e!148002 (and e!148011 mapRes!10147))))

(declare-fun condMapEmpty!10147 () Bool)

(declare-fun mapDefault!10147 () ValueCell!2649)

(assert (=> b!228126 (= condMapEmpty!10147 (= (arr!5325 (_values!4241 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2649)) mapDefault!10147)))))

(declare-fun b!228127 () Bool)

(declare-fun e!148010 () Bool)

(assert (=> b!228127 (= e!148014 e!148010)))

(declare-fun res!112304 () Bool)

(assert (=> b!228127 (=> (not res!112304) (not e!148010))))

(assert (=> b!228127 (= res!112304 (inRange!0 index!297 (mask!10126 thiss!1504)))))

(declare-fun lt!114817 () Unit!6929)

(assert (=> b!228127 (= lt!114817 e!148005)))

(declare-fun c!37817 () Bool)

(declare-datatypes ((tuple2!4478 0))(
  ( (tuple2!4479 (_1!2249 (_ BitVec 64)) (_2!2249 V!7627)) )
))
(declare-datatypes ((List!3425 0))(
  ( (Nil!3422) (Cons!3421 (h!4069 tuple2!4478) (t!8392 List!3425)) )
))
(declare-datatypes ((ListLongMap!3405 0))(
  ( (ListLongMap!3406 (toList!1718 List!3425)) )
))
(declare-fun contains!1586 (ListLongMap!3405 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1241 (array!11214 array!11212 (_ BitVec 32) (_ BitVec 32) V!7627 V!7627 (_ BitVec 32) Int) ListLongMap!3405)

(assert (=> b!228127 (= c!37817 (contains!1586 (getCurrentListMap!1241 (_keys!6312 thiss!1504) (_values!4241 thiss!1504) (mask!10126 thiss!1504) (extraKeys!3995 thiss!1504) (zeroValue!4099 thiss!1504) (minValue!4099 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4258 thiss!1504)) key!932))))

(declare-fun b!228128 () Bool)

(assert (=> b!228128 (= e!148010 (not e!148012))))

(declare-fun res!112307 () Bool)

(assert (=> b!228128 (=> res!112307 e!148012)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!228128 (= res!112307 (not (validMask!0 (mask!10126 thiss!1504))))))

(declare-fun lt!114820 () array!11214)

(assert (=> b!228128 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!114820 (mask!10126 thiss!1504))))

(declare-fun lt!114823 () Unit!6929)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11214 (_ BitVec 32) (_ BitVec 32)) Unit!6929)

(assert (=> b!228128 (= lt!114823 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6312 thiss!1504) index!297 (mask!10126 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11214 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!228128 (= (arrayCountValidKeys!0 lt!114820 #b00000000000000000000000000000000 (size!5659 (_keys!6312 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6312 thiss!1504) #b00000000000000000000000000000000 (size!5659 (_keys!6312 thiss!1504)))))))

(declare-fun lt!114825 () Unit!6929)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11214 (_ BitVec 32) (_ BitVec 64)) Unit!6929)

(assert (=> b!228128 (= lt!114825 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6312 thiss!1504) index!297 key!932))))

(assert (=> b!228128 (arrayNoDuplicates!0 lt!114820 #b00000000000000000000000000000000 Nil!3421)))

(assert (=> b!228128 (= lt!114820 (array!11215 (store (arr!5326 (_keys!6312 thiss!1504)) index!297 key!932) (size!5659 (_keys!6312 thiss!1504))))))

(declare-fun lt!114815 () Unit!6929)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11214 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3424) Unit!6929)

(assert (=> b!228128 (= lt!114815 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6312 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3421))))

(declare-fun lt!114819 () Unit!6929)

(assert (=> b!228128 (= lt!114819 e!148003)))

(declare-fun c!37815 () Bool)

(assert (=> b!228128 (= c!37815 (arrayContainsKey!0 (_keys!6312 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!228129 () Bool)

(declare-fun res!112308 () Bool)

(assert (=> b!228129 (=> (not res!112308) (not e!148006))))

(assert (=> b!228129 (= res!112308 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!10147 () Bool)

(assert (=> mapIsEmpty!10147 mapRes!10147))

(declare-fun array_inv!3513 (array!11214) Bool)

(declare-fun array_inv!3514 (array!11212) Bool)

(assert (=> b!228130 (= e!148008 (and tp!21511 tp_is_empty!5985 (array_inv!3513 (_keys!6312 thiss!1504)) (array_inv!3514 (_values!4241 thiss!1504)) e!148002))))

(declare-fun b!228131 () Bool)

(assert (=> b!228131 (= e!148001 e!148007)))

(declare-fun res!112302 () Bool)

(assert (=> b!228131 (= res!112302 call!21202)))

(assert (=> b!228131 (=> (not res!112302) (not e!148007))))

(declare-fun b!228132 () Bool)

(declare-fun Unit!6932 () Unit!6929)

(assert (=> b!228132 (= e!148003 Unit!6932)))

(declare-fun lt!114824 () Unit!6929)

(declare-fun lemmaArrayContainsKeyThenInListMap!108 (array!11214 array!11212 (_ BitVec 32) (_ BitVec 32) V!7627 V!7627 (_ BitVec 64) (_ BitVec 32) Int) Unit!6929)

(assert (=> b!228132 (= lt!114824 (lemmaArrayContainsKeyThenInListMap!108 (_keys!6312 thiss!1504) (_values!4241 thiss!1504) (mask!10126 thiss!1504) (extraKeys!3995 thiss!1504) (zeroValue!4099 thiss!1504) (minValue!4099 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4258 thiss!1504)))))

(assert (=> b!228132 false))

(declare-fun b!228133 () Bool)

(declare-fun res!112303 () Bool)

(assert (=> b!228133 (=> (not res!112303) (not e!148015))))

(assert (=> b!228133 (= res!112303 call!21202)))

(assert (=> b!228133 (= e!148009 e!148015)))

(declare-fun b!228134 () Bool)

(declare-fun Unit!6933 () Unit!6929)

(assert (=> b!228134 (= e!148005 Unit!6933)))

(declare-fun lt!114816 () Unit!6929)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!272 (array!11214 array!11212 (_ BitVec 32) (_ BitVec 32) V!7627 V!7627 (_ BitVec 64) Int) Unit!6929)

(assert (=> b!228134 (= lt!114816 (lemmaInListMapThenSeekEntryOrOpenFindsIt!272 (_keys!6312 thiss!1504) (_values!4241 thiss!1504) (mask!10126 thiss!1504) (extraKeys!3995 thiss!1504) (zeroValue!4099 thiss!1504) (minValue!4099 thiss!1504) key!932 (defaultEntry!4258 thiss!1504)))))

(assert (=> b!228134 false))

(declare-fun b!228135 () Bool)

(declare-fun res!112309 () Bool)

(assert (=> b!228135 (=> res!112309 e!148012)))

(assert (=> b!228135 (= res!112309 (or (not (= (size!5658 (_values!4241 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10126 thiss!1504)))) (not (= (size!5659 (_keys!6312 thiss!1504)) (size!5658 (_values!4241 thiss!1504)))) (bvslt (mask!10126 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!3995 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!3995 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!228136 () Bool)

(declare-fun e!148013 () Bool)

(assert (=> b!228136 (= e!148013 tp_is_empty!5985)))

(declare-fun mapNonEmpty!10147 () Bool)

(declare-fun tp!21510 () Bool)

(assert (=> mapNonEmpty!10147 (= mapRes!10147 (and tp!21510 e!148013))))

(declare-fun mapRest!10147 () (Array (_ BitVec 32) ValueCell!2649))

(declare-fun mapKey!10147 () (_ BitVec 32))

(declare-fun mapValue!10147 () ValueCell!2649)

(assert (=> mapNonEmpty!10147 (= (arr!5325 (_values!4241 thiss!1504)) (store mapRest!10147 mapKey!10147 mapValue!10147))))

(declare-fun b!228137 () Bool)

(assert (=> b!228137 (= e!148015 (not call!21201))))

(assert (= (and start!22068 res!112306) b!228129))

(assert (= (and b!228129 res!112308) b!228123))

(assert (= (and b!228123 res!112299) b!228127))

(assert (= (and b!228127 c!37817) b!228134))

(assert (= (and b!228127 (not c!37817)) b!228120))

(assert (= (and b!228120 c!37816) b!228133))

(assert (= (and b!228120 (not c!37816)) b!228117))

(assert (= (and b!228133 res!112303) b!228124))

(assert (= (and b!228124 res!112300) b!228137))

(assert (= (and b!228117 c!37814) b!228131))

(assert (= (and b!228117 (not c!37814)) b!228115))

(assert (= (and b!228131 res!112302) b!228116))

(assert (= (and b!228116 res!112301) b!228118))

(assert (= (or b!228133 b!228131) bm!21198))

(assert (= (or b!228137 b!228118) bm!21199))

(assert (= (and b!228127 res!112304) b!228128))

(assert (= (and b!228128 c!37815) b!228132))

(assert (= (and b!228128 (not c!37815)) b!228119))

(assert (= (and b!228128 (not res!112307)) b!228135))

(assert (= (and b!228135 (not res!112309)) b!228125))

(assert (= (and b!228125 (not res!112305)) b!228122))

(assert (= (and b!228126 condMapEmpty!10147) mapIsEmpty!10147))

(assert (= (and b!228126 (not condMapEmpty!10147)) mapNonEmpty!10147))

(assert (= (and mapNonEmpty!10147 ((_ is ValueCellFull!2649) mapValue!10147)) b!228136))

(assert (= (and b!228126 ((_ is ValueCellFull!2649) mapDefault!10147)) b!228121))

(assert (= b!228130 b!228126))

(assert (= start!22068 b!228130))

(declare-fun m!249965 () Bool)

(assert (=> mapNonEmpty!10147 m!249965))

(declare-fun m!249967 () Bool)

(assert (=> b!228134 m!249967))

(declare-fun m!249969 () Bool)

(assert (=> b!228124 m!249969))

(declare-fun m!249971 () Bool)

(assert (=> b!228122 m!249971))

(declare-fun m!249973 () Bool)

(assert (=> b!228116 m!249973))

(declare-fun m!249975 () Bool)

(assert (=> b!228123 m!249975))

(declare-fun m!249977 () Bool)

(assert (=> start!22068 m!249977))

(declare-fun m!249979 () Bool)

(assert (=> bm!21198 m!249979))

(declare-fun m!249981 () Bool)

(assert (=> b!228128 m!249981))

(declare-fun m!249983 () Bool)

(assert (=> b!228128 m!249983))

(declare-fun m!249985 () Bool)

(assert (=> b!228128 m!249985))

(declare-fun m!249987 () Bool)

(assert (=> b!228128 m!249987))

(declare-fun m!249989 () Bool)

(assert (=> b!228128 m!249989))

(declare-fun m!249991 () Bool)

(assert (=> b!228128 m!249991))

(declare-fun m!249993 () Bool)

(assert (=> b!228128 m!249993))

(declare-fun m!249995 () Bool)

(assert (=> b!228128 m!249995))

(declare-fun m!249997 () Bool)

(assert (=> b!228128 m!249997))

(declare-fun m!249999 () Bool)

(assert (=> b!228128 m!249999))

(declare-fun m!250001 () Bool)

(assert (=> b!228120 m!250001))

(declare-fun m!250003 () Bool)

(assert (=> b!228125 m!250003))

(declare-fun m!250005 () Bool)

(assert (=> b!228130 m!250005))

(declare-fun m!250007 () Bool)

(assert (=> b!228130 m!250007))

(declare-fun m!250009 () Bool)

(assert (=> b!228127 m!250009))

(declare-fun m!250011 () Bool)

(assert (=> b!228127 m!250011))

(assert (=> b!228127 m!250011))

(declare-fun m!250013 () Bool)

(assert (=> b!228127 m!250013))

(declare-fun m!250015 () Bool)

(assert (=> b!228132 m!250015))

(assert (=> bm!21199 m!249983))

(check-sat (not b!228123) (not b!228128) (not bm!21199) b_and!13039 (not mapNonEmpty!10147) (not start!22068) (not bm!21198) (not b!228122) (not b!228130) (not b!228125) (not b!228127) (not b!228132) tp_is_empty!5985 (not b!228134) (not b_next!6123) (not b!228120))
(check-sat b_and!13039 (not b_next!6123))

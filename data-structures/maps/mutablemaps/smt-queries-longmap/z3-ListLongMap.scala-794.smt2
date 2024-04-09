; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18986 () Bool)

(assert start!18986)

(declare-fun b!187077 () Bool)

(declare-fun b_free!4605 () Bool)

(declare-fun b_next!4605 () Bool)

(assert (=> b!187077 (= b_free!4605 (not b_next!4605))))

(declare-fun tp!16625 () Bool)

(declare-fun b_and!11239 () Bool)

(assert (=> b!187077 (= tp!16625 b_and!11239)))

(declare-fun b!187067 () Bool)

(declare-datatypes ((Unit!5633 0))(
  ( (Unit!5634) )
))
(declare-fun e!123124 () Unit!5633)

(declare-fun lt!92568 () Unit!5633)

(assert (=> b!187067 (= e!123124 lt!92568)))

(declare-datatypes ((V!5483 0))(
  ( (V!5484 (val!2233 Int)) )
))
(declare-datatypes ((ValueCell!1845 0))(
  ( (ValueCellFull!1845 (v!4143 V!5483)) (EmptyCell!1845) )
))
(declare-datatypes ((array!7968 0))(
  ( (array!7969 (arr!3760 (Array (_ BitVec 32) (_ BitVec 64))) (size!4078 (_ BitVec 32))) )
))
(declare-datatypes ((array!7970 0))(
  ( (array!7971 (arr!3761 (Array (_ BitVec 32) ValueCell!1845)) (size!4079 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2598 0))(
  ( (LongMapFixedSize!2599 (defaultEntry!3816 Int) (mask!8956 (_ BitVec 32)) (extraKeys!3553 (_ BitVec 32)) (zeroValue!3657 V!5483) (minValue!3657 V!5483) (_size!1348 (_ BitVec 32)) (_keys!5766 array!7968) (_values!3799 array!7970) (_vacant!1348 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2598)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!149 (array!7968 array!7970 (_ BitVec 32) (_ BitVec 32) V!5483 V!5483 (_ BitVec 64) Int) Unit!5633)

(assert (=> b!187067 (= lt!92568 (lemmaInListMapThenSeekEntryOrOpenFindsIt!149 (_keys!5766 thiss!1248) (_values!3799 thiss!1248) (mask!8956 thiss!1248) (extraKeys!3553 thiss!1248) (zeroValue!3657 thiss!1248) (minValue!3657 thiss!1248) key!828 (defaultEntry!3816 thiss!1248)))))

(declare-fun res!88485 () Bool)

(declare-datatypes ((SeekEntryResult!656 0))(
  ( (MissingZero!656 (index!4794 (_ BitVec 32))) (Found!656 (index!4795 (_ BitVec 32))) (Intermediate!656 (undefined!1468 Bool) (index!4796 (_ BitVec 32)) (x!20272 (_ BitVec 32))) (Undefined!656) (MissingVacant!656 (index!4797 (_ BitVec 32))) )
))
(declare-fun lt!92567 () SeekEntryResult!656)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!187067 (= res!88485 (inRange!0 (index!4795 lt!92567) (mask!8956 thiss!1248)))))

(declare-fun e!123129 () Bool)

(assert (=> b!187067 (=> (not res!88485) (not e!123129))))

(assert (=> b!187067 e!123129))

(declare-fun res!88482 () Bool)

(declare-fun e!123121 () Bool)

(assert (=> start!18986 (=> (not res!88482) (not e!123121))))

(declare-fun valid!1061 (LongMapFixedSize!2598) Bool)

(assert (=> start!18986 (= res!88482 (valid!1061 thiss!1248))))

(assert (=> start!18986 e!123121))

(declare-fun e!123127 () Bool)

(assert (=> start!18986 e!123127))

(assert (=> start!18986 true))

(declare-fun b!187068 () Bool)

(declare-fun e!123125 () Bool)

(declare-fun e!123126 () Bool)

(declare-fun mapRes!7538 () Bool)

(assert (=> b!187068 (= e!123125 (and e!123126 mapRes!7538))))

(declare-fun condMapEmpty!7538 () Bool)

(declare-fun mapDefault!7538 () ValueCell!1845)

(assert (=> b!187068 (= condMapEmpty!7538 (= (arr!3761 (_values!3799 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1845)) mapDefault!7538)))))

(declare-fun mapIsEmpty!7538 () Bool)

(assert (=> mapIsEmpty!7538 mapRes!7538))

(declare-fun b!187069 () Bool)

(declare-fun tp_is_empty!4377 () Bool)

(assert (=> b!187069 (= e!123126 tp_is_empty!4377)))

(declare-fun b!187070 () Bool)

(declare-fun e!123123 () Bool)

(assert (=> b!187070 (= e!123123 (and (= (size!4079 (_values!3799 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8956 thiss!1248))) (= (size!4078 (_keys!5766 thiss!1248)) (size!4079 (_values!3799 thiss!1248))) (bvslt (mask!8956 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!187071 () Bool)

(declare-fun Unit!5635 () Unit!5633)

(assert (=> b!187071 (= e!123124 Unit!5635)))

(declare-fun lt!92569 () Unit!5633)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!149 (array!7968 array!7970 (_ BitVec 32) (_ BitVec 32) V!5483 V!5483 (_ BitVec 64) Int) Unit!5633)

(assert (=> b!187071 (= lt!92569 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!149 (_keys!5766 thiss!1248) (_values!3799 thiss!1248) (mask!8956 thiss!1248) (extraKeys!3553 thiss!1248) (zeroValue!3657 thiss!1248) (minValue!3657 thiss!1248) key!828 (defaultEntry!3816 thiss!1248)))))

(assert (=> b!187071 false))

(declare-fun b!187072 () Bool)

(declare-fun e!123130 () Bool)

(assert (=> b!187072 (= e!123121 e!123130)))

(declare-fun res!88481 () Bool)

(assert (=> b!187072 (=> (not res!88481) (not e!123130))))

(get-info :version)

(assert (=> b!187072 (= res!88481 (and (not ((_ is Undefined!656) lt!92567)) (not ((_ is MissingVacant!656) lt!92567)) (not ((_ is MissingZero!656) lt!92567)) ((_ is Found!656) lt!92567)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7968 (_ BitVec 32)) SeekEntryResult!656)

(assert (=> b!187072 (= lt!92567 (seekEntryOrOpen!0 key!828 (_keys!5766 thiss!1248) (mask!8956 thiss!1248)))))

(declare-fun b!187073 () Bool)

(assert (=> b!187073 (= e!123129 (= (select (arr!3760 (_keys!5766 thiss!1248)) (index!4795 lt!92567)) key!828))))

(declare-fun b!187074 () Bool)

(assert (=> b!187074 (= e!123130 e!123123)))

(declare-fun res!88484 () Bool)

(assert (=> b!187074 (=> (not res!88484) (not e!123123))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!187074 (= res!88484 (validMask!0 (mask!8956 thiss!1248)))))

(declare-fun lt!92570 () Unit!5633)

(assert (=> b!187074 (= lt!92570 e!123124)))

(declare-fun c!33566 () Bool)

(declare-datatypes ((tuple2!3470 0))(
  ( (tuple2!3471 (_1!1745 (_ BitVec 64)) (_2!1745 V!5483)) )
))
(declare-datatypes ((List!2399 0))(
  ( (Nil!2396) (Cons!2395 (h!3030 tuple2!3470) (t!7297 List!2399)) )
))
(declare-datatypes ((ListLongMap!2401 0))(
  ( (ListLongMap!2402 (toList!1216 List!2399)) )
))
(declare-fun contains!1310 (ListLongMap!2401 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!859 (array!7968 array!7970 (_ BitVec 32) (_ BitVec 32) V!5483 V!5483 (_ BitVec 32) Int) ListLongMap!2401)

(assert (=> b!187074 (= c!33566 (contains!1310 (getCurrentListMap!859 (_keys!5766 thiss!1248) (_values!3799 thiss!1248) (mask!8956 thiss!1248) (extraKeys!3553 thiss!1248) (zeroValue!3657 thiss!1248) (minValue!3657 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3816 thiss!1248)) key!828))))

(declare-fun b!187075 () Bool)

(declare-fun e!123128 () Bool)

(assert (=> b!187075 (= e!123128 tp_is_empty!4377)))

(declare-fun b!187076 () Bool)

(declare-fun res!88483 () Bool)

(assert (=> b!187076 (=> (not res!88483) (not e!123121))))

(assert (=> b!187076 (= res!88483 (not (= key!828 (bvneg key!828))))))

(declare-fun array_inv!2423 (array!7968) Bool)

(declare-fun array_inv!2424 (array!7970) Bool)

(assert (=> b!187077 (= e!123127 (and tp!16625 tp_is_empty!4377 (array_inv!2423 (_keys!5766 thiss!1248)) (array_inv!2424 (_values!3799 thiss!1248)) e!123125))))

(declare-fun mapNonEmpty!7538 () Bool)

(declare-fun tp!16624 () Bool)

(assert (=> mapNonEmpty!7538 (= mapRes!7538 (and tp!16624 e!123128))))

(declare-fun mapValue!7538 () ValueCell!1845)

(declare-fun mapRest!7538 () (Array (_ BitVec 32) ValueCell!1845))

(declare-fun mapKey!7538 () (_ BitVec 32))

(assert (=> mapNonEmpty!7538 (= (arr!3761 (_values!3799 thiss!1248)) (store mapRest!7538 mapKey!7538 mapValue!7538))))

(assert (= (and start!18986 res!88482) b!187076))

(assert (= (and b!187076 res!88483) b!187072))

(assert (= (and b!187072 res!88481) b!187074))

(assert (= (and b!187074 c!33566) b!187067))

(assert (= (and b!187074 (not c!33566)) b!187071))

(assert (= (and b!187067 res!88485) b!187073))

(assert (= (and b!187074 res!88484) b!187070))

(assert (= (and b!187068 condMapEmpty!7538) mapIsEmpty!7538))

(assert (= (and b!187068 (not condMapEmpty!7538)) mapNonEmpty!7538))

(assert (= (and mapNonEmpty!7538 ((_ is ValueCellFull!1845) mapValue!7538)) b!187075))

(assert (= (and b!187068 ((_ is ValueCellFull!1845) mapDefault!7538)) b!187069))

(assert (= b!187077 b!187068))

(assert (= start!18986 b!187077))

(declare-fun m!213969 () Bool)

(assert (=> b!187072 m!213969))

(declare-fun m!213971 () Bool)

(assert (=> mapNonEmpty!7538 m!213971))

(declare-fun m!213973 () Bool)

(assert (=> start!18986 m!213973))

(declare-fun m!213975 () Bool)

(assert (=> b!187071 m!213975))

(declare-fun m!213977 () Bool)

(assert (=> b!187067 m!213977))

(declare-fun m!213979 () Bool)

(assert (=> b!187067 m!213979))

(declare-fun m!213981 () Bool)

(assert (=> b!187074 m!213981))

(declare-fun m!213983 () Bool)

(assert (=> b!187074 m!213983))

(assert (=> b!187074 m!213983))

(declare-fun m!213985 () Bool)

(assert (=> b!187074 m!213985))

(declare-fun m!213987 () Bool)

(assert (=> b!187073 m!213987))

(declare-fun m!213989 () Bool)

(assert (=> b!187077 m!213989))

(declare-fun m!213991 () Bool)

(assert (=> b!187077 m!213991))

(check-sat (not b!187072) (not b!187074) tp_is_empty!4377 b_and!11239 (not b_next!4605) (not b!187067) (not mapNonEmpty!7538) (not b!187071) (not b!187077) (not start!18986))
(check-sat b_and!11239 (not b_next!4605))
(get-model)

(declare-fun b!187123 () Bool)

(declare-fun e!123168 () SeekEntryResult!656)

(declare-fun lt!92591 () SeekEntryResult!656)

(assert (=> b!187123 (= e!123168 (Found!656 (index!4796 lt!92591)))))

(declare-fun b!187124 () Bool)

(declare-fun c!33576 () Bool)

(declare-fun lt!92590 () (_ BitVec 64))

(assert (=> b!187124 (= c!33576 (= lt!92590 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!123169 () SeekEntryResult!656)

(assert (=> b!187124 (= e!123168 e!123169)))

(declare-fun d!55293 () Bool)

(declare-fun lt!92589 () SeekEntryResult!656)

(assert (=> d!55293 (and (or ((_ is Undefined!656) lt!92589) (not ((_ is Found!656) lt!92589)) (and (bvsge (index!4795 lt!92589) #b00000000000000000000000000000000) (bvslt (index!4795 lt!92589) (size!4078 (_keys!5766 thiss!1248))))) (or ((_ is Undefined!656) lt!92589) ((_ is Found!656) lt!92589) (not ((_ is MissingZero!656) lt!92589)) (and (bvsge (index!4794 lt!92589) #b00000000000000000000000000000000) (bvslt (index!4794 lt!92589) (size!4078 (_keys!5766 thiss!1248))))) (or ((_ is Undefined!656) lt!92589) ((_ is Found!656) lt!92589) ((_ is MissingZero!656) lt!92589) (not ((_ is MissingVacant!656) lt!92589)) (and (bvsge (index!4797 lt!92589) #b00000000000000000000000000000000) (bvslt (index!4797 lt!92589) (size!4078 (_keys!5766 thiss!1248))))) (or ((_ is Undefined!656) lt!92589) (ite ((_ is Found!656) lt!92589) (= (select (arr!3760 (_keys!5766 thiss!1248)) (index!4795 lt!92589)) key!828) (ite ((_ is MissingZero!656) lt!92589) (= (select (arr!3760 (_keys!5766 thiss!1248)) (index!4794 lt!92589)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!656) lt!92589) (= (select (arr!3760 (_keys!5766 thiss!1248)) (index!4797 lt!92589)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!123167 () SeekEntryResult!656)

(assert (=> d!55293 (= lt!92589 e!123167)))

(declare-fun c!33577 () Bool)

(assert (=> d!55293 (= c!33577 (and ((_ is Intermediate!656) lt!92591) (undefined!1468 lt!92591)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7968 (_ BitVec 32)) SeekEntryResult!656)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!55293 (= lt!92591 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8956 thiss!1248)) key!828 (_keys!5766 thiss!1248) (mask!8956 thiss!1248)))))

(assert (=> d!55293 (validMask!0 (mask!8956 thiss!1248))))

(assert (=> d!55293 (= (seekEntryOrOpen!0 key!828 (_keys!5766 thiss!1248) (mask!8956 thiss!1248)) lt!92589)))

(declare-fun b!187125 () Bool)

(assert (=> b!187125 (= e!123167 Undefined!656)))

(declare-fun b!187126 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7968 (_ BitVec 32)) SeekEntryResult!656)

(assert (=> b!187126 (= e!123169 (seekKeyOrZeroReturnVacant!0 (x!20272 lt!92591) (index!4796 lt!92591) (index!4796 lt!92591) key!828 (_keys!5766 thiss!1248) (mask!8956 thiss!1248)))))

(declare-fun b!187127 () Bool)

(assert (=> b!187127 (= e!123167 e!123168)))

(assert (=> b!187127 (= lt!92590 (select (arr!3760 (_keys!5766 thiss!1248)) (index!4796 lt!92591)))))

(declare-fun c!33578 () Bool)

(assert (=> b!187127 (= c!33578 (= lt!92590 key!828))))

(declare-fun b!187128 () Bool)

(assert (=> b!187128 (= e!123169 (MissingZero!656 (index!4796 lt!92591)))))

(assert (= (and d!55293 c!33577) b!187125))

(assert (= (and d!55293 (not c!33577)) b!187127))

(assert (= (and b!187127 c!33578) b!187123))

(assert (= (and b!187127 (not c!33578)) b!187124))

(assert (= (and b!187124 c!33576) b!187128))

(assert (= (and b!187124 (not c!33576)) b!187126))

(assert (=> d!55293 m!213981))

(declare-fun m!214017 () Bool)

(assert (=> d!55293 m!214017))

(declare-fun m!214019 () Bool)

(assert (=> d!55293 m!214019))

(declare-fun m!214021 () Bool)

(assert (=> d!55293 m!214021))

(declare-fun m!214023 () Bool)

(assert (=> d!55293 m!214023))

(declare-fun m!214025 () Bool)

(assert (=> d!55293 m!214025))

(assert (=> d!55293 m!214017))

(declare-fun m!214027 () Bool)

(assert (=> b!187126 m!214027))

(declare-fun m!214029 () Bool)

(assert (=> b!187127 m!214029))

(assert (=> b!187072 d!55293))

(declare-fun d!55295 () Bool)

(assert (=> d!55295 (= (array_inv!2423 (_keys!5766 thiss!1248)) (bvsge (size!4078 (_keys!5766 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!187077 d!55295))

(declare-fun d!55297 () Bool)

(assert (=> d!55297 (= (array_inv!2424 (_values!3799 thiss!1248)) (bvsge (size!4079 (_values!3799 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!187077 d!55297))

(declare-fun d!55299 () Bool)

(declare-fun e!123172 () Bool)

(assert (=> d!55299 e!123172))

(declare-fun res!88506 () Bool)

(assert (=> d!55299 (=> (not res!88506) (not e!123172))))

(declare-fun lt!92596 () SeekEntryResult!656)

(assert (=> d!55299 (= res!88506 ((_ is Found!656) lt!92596))))

(assert (=> d!55299 (= lt!92596 (seekEntryOrOpen!0 key!828 (_keys!5766 thiss!1248) (mask!8956 thiss!1248)))))

(declare-fun lt!92597 () Unit!5633)

(declare-fun choose!1002 (array!7968 array!7970 (_ BitVec 32) (_ BitVec 32) V!5483 V!5483 (_ BitVec 64) Int) Unit!5633)

(assert (=> d!55299 (= lt!92597 (choose!1002 (_keys!5766 thiss!1248) (_values!3799 thiss!1248) (mask!8956 thiss!1248) (extraKeys!3553 thiss!1248) (zeroValue!3657 thiss!1248) (minValue!3657 thiss!1248) key!828 (defaultEntry!3816 thiss!1248)))))

(assert (=> d!55299 (validMask!0 (mask!8956 thiss!1248))))

(assert (=> d!55299 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!149 (_keys!5766 thiss!1248) (_values!3799 thiss!1248) (mask!8956 thiss!1248) (extraKeys!3553 thiss!1248) (zeroValue!3657 thiss!1248) (minValue!3657 thiss!1248) key!828 (defaultEntry!3816 thiss!1248)) lt!92597)))

(declare-fun b!187133 () Bool)

(declare-fun res!88505 () Bool)

(assert (=> b!187133 (=> (not res!88505) (not e!123172))))

(assert (=> b!187133 (= res!88505 (inRange!0 (index!4795 lt!92596) (mask!8956 thiss!1248)))))

(declare-fun b!187134 () Bool)

(assert (=> b!187134 (= e!123172 (= (select (arr!3760 (_keys!5766 thiss!1248)) (index!4795 lt!92596)) key!828))))

(assert (=> b!187134 (and (bvsge (index!4795 lt!92596) #b00000000000000000000000000000000) (bvslt (index!4795 lt!92596) (size!4078 (_keys!5766 thiss!1248))))))

(assert (= (and d!55299 res!88506) b!187133))

(assert (= (and b!187133 res!88505) b!187134))

(assert (=> d!55299 m!213969))

(declare-fun m!214031 () Bool)

(assert (=> d!55299 m!214031))

(assert (=> d!55299 m!213981))

(declare-fun m!214033 () Bool)

(assert (=> b!187133 m!214033))

(declare-fun m!214035 () Bool)

(assert (=> b!187134 m!214035))

(assert (=> b!187067 d!55299))

(declare-fun d!55301 () Bool)

(assert (=> d!55301 (= (inRange!0 (index!4795 lt!92567) (mask!8956 thiss!1248)) (and (bvsge (index!4795 lt!92567) #b00000000000000000000000000000000) (bvslt (index!4795 lt!92567) (bvadd (mask!8956 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!187067 d!55301))

(declare-fun b!187151 () Bool)

(declare-fun e!123183 () Bool)

(declare-fun call!18859 () Bool)

(assert (=> b!187151 (= e!123183 (not call!18859))))

(declare-fun b!187152 () Bool)

(declare-fun e!123184 () Bool)

(declare-fun e!123182 () Bool)

(assert (=> b!187152 (= e!123184 e!123182)))

(declare-fun res!88517 () Bool)

(declare-fun call!18860 () Bool)

(assert (=> b!187152 (= res!88517 call!18860)))

(assert (=> b!187152 (=> (not res!88517) (not e!123182))))

(declare-fun c!33583 () Bool)

(declare-fun lt!92603 () SeekEntryResult!656)

(declare-fun bm!18856 () Bool)

(assert (=> bm!18856 (= call!18860 (inRange!0 (ite c!33583 (index!4794 lt!92603) (index!4797 lt!92603)) (mask!8956 thiss!1248)))))

(declare-fun b!187153 () Bool)

(assert (=> b!187153 (= e!123182 (not call!18859))))

(declare-fun b!187154 () Bool)

(declare-fun e!123181 () Bool)

(assert (=> b!187154 (= e!123181 ((_ is Undefined!656) lt!92603))))

(declare-fun d!55303 () Bool)

(assert (=> d!55303 e!123184))

(assert (=> d!55303 (= c!33583 ((_ is MissingZero!656) lt!92603))))

(assert (=> d!55303 (= lt!92603 (seekEntryOrOpen!0 key!828 (_keys!5766 thiss!1248) (mask!8956 thiss!1248)))))

(declare-fun lt!92602 () Unit!5633)

(declare-fun choose!1003 (array!7968 array!7970 (_ BitVec 32) (_ BitVec 32) V!5483 V!5483 (_ BitVec 64) Int) Unit!5633)

(assert (=> d!55303 (= lt!92602 (choose!1003 (_keys!5766 thiss!1248) (_values!3799 thiss!1248) (mask!8956 thiss!1248) (extraKeys!3553 thiss!1248) (zeroValue!3657 thiss!1248) (minValue!3657 thiss!1248) key!828 (defaultEntry!3816 thiss!1248)))))

(assert (=> d!55303 (validMask!0 (mask!8956 thiss!1248))))

(assert (=> d!55303 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!149 (_keys!5766 thiss!1248) (_values!3799 thiss!1248) (mask!8956 thiss!1248) (extraKeys!3553 thiss!1248) (zeroValue!3657 thiss!1248) (minValue!3657 thiss!1248) key!828 (defaultEntry!3816 thiss!1248)) lt!92602)))

(declare-fun b!187155 () Bool)

(declare-fun res!88516 () Bool)

(assert (=> b!187155 (=> (not res!88516) (not e!123183))))

(assert (=> b!187155 (= res!88516 call!18860)))

(assert (=> b!187155 (= e!123181 e!123183)))

(declare-fun b!187156 () Bool)

(assert (=> b!187156 (and (bvsge (index!4794 lt!92603) #b00000000000000000000000000000000) (bvslt (index!4794 lt!92603) (size!4078 (_keys!5766 thiss!1248))))))

(declare-fun res!88518 () Bool)

(assert (=> b!187156 (= res!88518 (= (select (arr!3760 (_keys!5766 thiss!1248)) (index!4794 lt!92603)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!187156 (=> (not res!88518) (not e!123182))))

(declare-fun bm!18857 () Bool)

(declare-fun arrayContainsKey!0 (array!7968 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!18857 (= call!18859 (arrayContainsKey!0 (_keys!5766 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!187157 () Bool)

(declare-fun res!88515 () Bool)

(assert (=> b!187157 (=> (not res!88515) (not e!123183))))

(assert (=> b!187157 (= res!88515 (= (select (arr!3760 (_keys!5766 thiss!1248)) (index!4797 lt!92603)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!187157 (and (bvsge (index!4797 lt!92603) #b00000000000000000000000000000000) (bvslt (index!4797 lt!92603) (size!4078 (_keys!5766 thiss!1248))))))

(declare-fun b!187158 () Bool)

(assert (=> b!187158 (= e!123184 e!123181)))

(declare-fun c!33584 () Bool)

(assert (=> b!187158 (= c!33584 ((_ is MissingVacant!656) lt!92603))))

(assert (= (and d!55303 c!33583) b!187152))

(assert (= (and d!55303 (not c!33583)) b!187158))

(assert (= (and b!187152 res!88517) b!187156))

(assert (= (and b!187156 res!88518) b!187153))

(assert (= (and b!187158 c!33584) b!187155))

(assert (= (and b!187158 (not c!33584)) b!187154))

(assert (= (and b!187155 res!88516) b!187157))

(assert (= (and b!187157 res!88515) b!187151))

(assert (= (or b!187152 b!187155) bm!18856))

(assert (= (or b!187153 b!187151) bm!18857))

(declare-fun m!214037 () Bool)

(assert (=> bm!18857 m!214037))

(declare-fun m!214039 () Bool)

(assert (=> b!187157 m!214039))

(declare-fun m!214041 () Bool)

(assert (=> bm!18856 m!214041))

(assert (=> d!55303 m!213969))

(declare-fun m!214043 () Bool)

(assert (=> d!55303 m!214043))

(assert (=> d!55303 m!213981))

(declare-fun m!214045 () Bool)

(assert (=> b!187156 m!214045))

(assert (=> b!187071 d!55303))

(declare-fun d!55305 () Bool)

(assert (=> d!55305 (= (validMask!0 (mask!8956 thiss!1248)) (and (or (= (mask!8956 thiss!1248) #b00000000000000000000000000000111) (= (mask!8956 thiss!1248) #b00000000000000000000000000001111) (= (mask!8956 thiss!1248) #b00000000000000000000000000011111) (= (mask!8956 thiss!1248) #b00000000000000000000000000111111) (= (mask!8956 thiss!1248) #b00000000000000000000000001111111) (= (mask!8956 thiss!1248) #b00000000000000000000000011111111) (= (mask!8956 thiss!1248) #b00000000000000000000000111111111) (= (mask!8956 thiss!1248) #b00000000000000000000001111111111) (= (mask!8956 thiss!1248) #b00000000000000000000011111111111) (= (mask!8956 thiss!1248) #b00000000000000000000111111111111) (= (mask!8956 thiss!1248) #b00000000000000000001111111111111) (= (mask!8956 thiss!1248) #b00000000000000000011111111111111) (= (mask!8956 thiss!1248) #b00000000000000000111111111111111) (= (mask!8956 thiss!1248) #b00000000000000001111111111111111) (= (mask!8956 thiss!1248) #b00000000000000011111111111111111) (= (mask!8956 thiss!1248) #b00000000000000111111111111111111) (= (mask!8956 thiss!1248) #b00000000000001111111111111111111) (= (mask!8956 thiss!1248) #b00000000000011111111111111111111) (= (mask!8956 thiss!1248) #b00000000000111111111111111111111) (= (mask!8956 thiss!1248) #b00000000001111111111111111111111) (= (mask!8956 thiss!1248) #b00000000011111111111111111111111) (= (mask!8956 thiss!1248) #b00000000111111111111111111111111) (= (mask!8956 thiss!1248) #b00000001111111111111111111111111) (= (mask!8956 thiss!1248) #b00000011111111111111111111111111) (= (mask!8956 thiss!1248) #b00000111111111111111111111111111) (= (mask!8956 thiss!1248) #b00001111111111111111111111111111) (= (mask!8956 thiss!1248) #b00011111111111111111111111111111) (= (mask!8956 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8956 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!187074 d!55305))

(declare-fun d!55307 () Bool)

(declare-fun e!123189 () Bool)

(assert (=> d!55307 e!123189))

(declare-fun res!88521 () Bool)

(assert (=> d!55307 (=> res!88521 e!123189)))

(declare-fun lt!92614 () Bool)

(assert (=> d!55307 (= res!88521 (not lt!92614))))

(declare-fun lt!92615 () Bool)

(assert (=> d!55307 (= lt!92614 lt!92615)))

(declare-fun lt!92613 () Unit!5633)

(declare-fun e!123190 () Unit!5633)

(assert (=> d!55307 (= lt!92613 e!123190)))

(declare-fun c!33587 () Bool)

(assert (=> d!55307 (= c!33587 lt!92615)))

(declare-fun containsKey!230 (List!2399 (_ BitVec 64)) Bool)

(assert (=> d!55307 (= lt!92615 (containsKey!230 (toList!1216 (getCurrentListMap!859 (_keys!5766 thiss!1248) (_values!3799 thiss!1248) (mask!8956 thiss!1248) (extraKeys!3553 thiss!1248) (zeroValue!3657 thiss!1248) (minValue!3657 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3816 thiss!1248))) key!828))))

(assert (=> d!55307 (= (contains!1310 (getCurrentListMap!859 (_keys!5766 thiss!1248) (_values!3799 thiss!1248) (mask!8956 thiss!1248) (extraKeys!3553 thiss!1248) (zeroValue!3657 thiss!1248) (minValue!3657 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3816 thiss!1248)) key!828) lt!92614)))

(declare-fun b!187165 () Bool)

(declare-fun lt!92612 () Unit!5633)

(assert (=> b!187165 (= e!123190 lt!92612)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!179 (List!2399 (_ BitVec 64)) Unit!5633)

(assert (=> b!187165 (= lt!92612 (lemmaContainsKeyImpliesGetValueByKeyDefined!179 (toList!1216 (getCurrentListMap!859 (_keys!5766 thiss!1248) (_values!3799 thiss!1248) (mask!8956 thiss!1248) (extraKeys!3553 thiss!1248) (zeroValue!3657 thiss!1248) (minValue!3657 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3816 thiss!1248))) key!828))))

(declare-datatypes ((Option!232 0))(
  ( (Some!231 (v!4145 V!5483)) (None!230) )
))
(declare-fun isDefined!180 (Option!232) Bool)

(declare-fun getValueByKey!226 (List!2399 (_ BitVec 64)) Option!232)

(assert (=> b!187165 (isDefined!180 (getValueByKey!226 (toList!1216 (getCurrentListMap!859 (_keys!5766 thiss!1248) (_values!3799 thiss!1248) (mask!8956 thiss!1248) (extraKeys!3553 thiss!1248) (zeroValue!3657 thiss!1248) (minValue!3657 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3816 thiss!1248))) key!828))))

(declare-fun b!187166 () Bool)

(declare-fun Unit!5639 () Unit!5633)

(assert (=> b!187166 (= e!123190 Unit!5639)))

(declare-fun b!187167 () Bool)

(assert (=> b!187167 (= e!123189 (isDefined!180 (getValueByKey!226 (toList!1216 (getCurrentListMap!859 (_keys!5766 thiss!1248) (_values!3799 thiss!1248) (mask!8956 thiss!1248) (extraKeys!3553 thiss!1248) (zeroValue!3657 thiss!1248) (minValue!3657 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3816 thiss!1248))) key!828)))))

(assert (= (and d!55307 c!33587) b!187165))

(assert (= (and d!55307 (not c!33587)) b!187166))

(assert (= (and d!55307 (not res!88521)) b!187167))

(declare-fun m!214047 () Bool)

(assert (=> d!55307 m!214047))

(declare-fun m!214049 () Bool)

(assert (=> b!187165 m!214049))

(declare-fun m!214051 () Bool)

(assert (=> b!187165 m!214051))

(assert (=> b!187165 m!214051))

(declare-fun m!214053 () Bool)

(assert (=> b!187165 m!214053))

(assert (=> b!187167 m!214051))

(assert (=> b!187167 m!214051))

(assert (=> b!187167 m!214053))

(assert (=> b!187074 d!55307))

(declare-fun c!33605 () Bool)

(declare-fun call!18877 () ListLongMap!2401)

(declare-fun bm!18872 () Bool)

(declare-fun call!18880 () ListLongMap!2401)

(declare-fun call!18876 () ListLongMap!2401)

(declare-fun call!18881 () ListLongMap!2401)

(declare-fun c!33600 () Bool)

(declare-fun +!285 (ListLongMap!2401 tuple2!3470) ListLongMap!2401)

(assert (=> bm!18872 (= call!18881 (+!285 (ite c!33600 call!18876 (ite c!33605 call!18880 call!18877)) (ite (or c!33600 c!33605) (tuple2!3471 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3657 thiss!1248)) (tuple2!3471 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3657 thiss!1248)))))))

(declare-fun b!187210 () Bool)

(declare-fun e!123219 () Bool)

(declare-fun e!123223 () Bool)

(assert (=> b!187210 (= e!123219 e!123223)))

(declare-fun res!88541 () Bool)

(declare-fun call!18875 () Bool)

(assert (=> b!187210 (= res!88541 call!18875)))

(assert (=> b!187210 (=> (not res!88541) (not e!123223))))

(declare-fun b!187211 () Bool)

(declare-fun e!123218 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!187211 (= e!123218 (validKeyInArray!0 (select (arr!3760 (_keys!5766 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!187212 () Bool)

(assert (=> b!187212 (= e!123219 (not call!18875))))

(declare-fun b!187213 () Bool)

(declare-fun e!123228 () Bool)

(declare-fun lt!92668 () ListLongMap!2401)

(declare-fun apply!170 (ListLongMap!2401 (_ BitVec 64)) V!5483)

(assert (=> b!187213 (= e!123228 (= (apply!170 lt!92668 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3657 thiss!1248)))))

(declare-fun b!187214 () Bool)

(declare-fun e!123227 () ListLongMap!2401)

(declare-fun call!18879 () ListLongMap!2401)

(assert (=> b!187214 (= e!123227 call!18879)))

(declare-fun b!187215 () Bool)

(declare-fun c!33603 () Bool)

(assert (=> b!187215 (= c!33603 (and (not (= (bvand (extraKeys!3553 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3553 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!123226 () ListLongMap!2401)

(assert (=> b!187215 (= e!123226 e!123227)))

(declare-fun b!187216 () Bool)

(assert (=> b!187216 (= e!123227 call!18877)))

(declare-fun b!187217 () Bool)

(declare-fun e!123224 () Bool)

(declare-fun call!18878 () Bool)

(assert (=> b!187217 (= e!123224 (not call!18878))))

(declare-fun b!187218 () Bool)

(declare-fun e!123220 () ListLongMap!2401)

(assert (=> b!187218 (= e!123220 (+!285 call!18881 (tuple2!3471 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3657 thiss!1248))))))

(declare-fun bm!18874 () Bool)

(assert (=> bm!18874 (= call!18878 (contains!1310 lt!92668 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!187219 () Bool)

(assert (=> b!187219 (= e!123226 call!18879)))

(declare-fun bm!18875 () Bool)

(assert (=> bm!18875 (= call!18877 call!18880)))

(declare-fun b!187220 () Bool)

(declare-fun e!123217 () Bool)

(assert (=> b!187220 (= e!123217 (validKeyInArray!0 (select (arr!3760 (_keys!5766 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!187221 () Bool)

(declare-fun res!88548 () Bool)

(declare-fun e!123225 () Bool)

(assert (=> b!187221 (=> (not res!88548) (not e!123225))))

(declare-fun e!123229 () Bool)

(assert (=> b!187221 (= res!88548 e!123229)))

(declare-fun res!88545 () Bool)

(assert (=> b!187221 (=> res!88545 e!123229)))

(assert (=> b!187221 (= res!88545 (not e!123218))))

(declare-fun res!88547 () Bool)

(assert (=> b!187221 (=> (not res!88547) (not e!123218))))

(assert (=> b!187221 (= res!88547 (bvslt #b00000000000000000000000000000000 (size!4078 (_keys!5766 thiss!1248))))))

(declare-fun b!187222 () Bool)

(assert (=> b!187222 (= e!123225 e!123219)))

(declare-fun c!33602 () Bool)

(assert (=> b!187222 (= c!33602 (not (= (bvand (extraKeys!3553 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!18876 () Bool)

(assert (=> bm!18876 (= call!18875 (contains!1310 lt!92668 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!187223 () Bool)

(declare-fun e!123222 () Unit!5633)

(declare-fun Unit!5640 () Unit!5633)

(assert (=> b!187223 (= e!123222 Unit!5640)))

(declare-fun bm!18877 () Bool)

(assert (=> bm!18877 (= call!18879 call!18881)))

(declare-fun bm!18878 () Bool)

(assert (=> bm!18878 (= call!18880 call!18876)))

(declare-fun b!187224 () Bool)

(declare-fun res!88540 () Bool)

(assert (=> b!187224 (=> (not res!88540) (not e!123225))))

(assert (=> b!187224 (= res!88540 e!123224)))

(declare-fun c!33604 () Bool)

(assert (=> b!187224 (= c!33604 (not (= (bvand (extraKeys!3553 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!187225 () Bool)

(declare-fun e!123221 () Bool)

(assert (=> b!187225 (= e!123229 e!123221)))

(declare-fun res!88543 () Bool)

(assert (=> b!187225 (=> (not res!88543) (not e!123221))))

(assert (=> b!187225 (= res!88543 (contains!1310 lt!92668 (select (arr!3760 (_keys!5766 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!187225 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4078 (_keys!5766 thiss!1248))))))

(declare-fun b!187226 () Bool)

(assert (=> b!187226 (= e!123220 e!123226)))

(assert (=> b!187226 (= c!33605 (and (not (= (bvand (extraKeys!3553 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3553 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!187227 () Bool)

(declare-fun get!2164 (ValueCell!1845 V!5483) V!5483)

(declare-fun dynLambda!508 (Int (_ BitVec 64)) V!5483)

(assert (=> b!187227 (= e!123221 (= (apply!170 lt!92668 (select (arr!3760 (_keys!5766 thiss!1248)) #b00000000000000000000000000000000)) (get!2164 (select (arr!3761 (_values!3799 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!508 (defaultEntry!3816 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!187227 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4079 (_values!3799 thiss!1248))))))

(assert (=> b!187227 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4078 (_keys!5766 thiss!1248))))))

(declare-fun b!187228 () Bool)

(declare-fun lt!92662 () Unit!5633)

(assert (=> b!187228 (= e!123222 lt!92662)))

(declare-fun lt!92661 () ListLongMap!2401)

(declare-fun getCurrentListMapNoExtraKeys!200 (array!7968 array!7970 (_ BitVec 32) (_ BitVec 32) V!5483 V!5483 (_ BitVec 32) Int) ListLongMap!2401)

(assert (=> b!187228 (= lt!92661 (getCurrentListMapNoExtraKeys!200 (_keys!5766 thiss!1248) (_values!3799 thiss!1248) (mask!8956 thiss!1248) (extraKeys!3553 thiss!1248) (zeroValue!3657 thiss!1248) (minValue!3657 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3816 thiss!1248)))))

(declare-fun lt!92681 () (_ BitVec 64))

(assert (=> b!187228 (= lt!92681 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!92663 () (_ BitVec 64))

(assert (=> b!187228 (= lt!92663 (select (arr!3760 (_keys!5766 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!92667 () Unit!5633)

(declare-fun addStillContains!146 (ListLongMap!2401 (_ BitVec 64) V!5483 (_ BitVec 64)) Unit!5633)

(assert (=> b!187228 (= lt!92667 (addStillContains!146 lt!92661 lt!92681 (zeroValue!3657 thiss!1248) lt!92663))))

(assert (=> b!187228 (contains!1310 (+!285 lt!92661 (tuple2!3471 lt!92681 (zeroValue!3657 thiss!1248))) lt!92663)))

(declare-fun lt!92678 () Unit!5633)

(assert (=> b!187228 (= lt!92678 lt!92667)))

(declare-fun lt!92670 () ListLongMap!2401)

(assert (=> b!187228 (= lt!92670 (getCurrentListMapNoExtraKeys!200 (_keys!5766 thiss!1248) (_values!3799 thiss!1248) (mask!8956 thiss!1248) (extraKeys!3553 thiss!1248) (zeroValue!3657 thiss!1248) (minValue!3657 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3816 thiss!1248)))))

(declare-fun lt!92671 () (_ BitVec 64))

(assert (=> b!187228 (= lt!92671 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!92672 () (_ BitVec 64))

(assert (=> b!187228 (= lt!92672 (select (arr!3760 (_keys!5766 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!92673 () Unit!5633)

(declare-fun addApplyDifferent!146 (ListLongMap!2401 (_ BitVec 64) V!5483 (_ BitVec 64)) Unit!5633)

(assert (=> b!187228 (= lt!92673 (addApplyDifferent!146 lt!92670 lt!92671 (minValue!3657 thiss!1248) lt!92672))))

(assert (=> b!187228 (= (apply!170 (+!285 lt!92670 (tuple2!3471 lt!92671 (minValue!3657 thiss!1248))) lt!92672) (apply!170 lt!92670 lt!92672))))

(declare-fun lt!92679 () Unit!5633)

(assert (=> b!187228 (= lt!92679 lt!92673)))

(declare-fun lt!92660 () ListLongMap!2401)

(assert (=> b!187228 (= lt!92660 (getCurrentListMapNoExtraKeys!200 (_keys!5766 thiss!1248) (_values!3799 thiss!1248) (mask!8956 thiss!1248) (extraKeys!3553 thiss!1248) (zeroValue!3657 thiss!1248) (minValue!3657 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3816 thiss!1248)))))

(declare-fun lt!92664 () (_ BitVec 64))

(assert (=> b!187228 (= lt!92664 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!92675 () (_ BitVec 64))

(assert (=> b!187228 (= lt!92675 (select (arr!3760 (_keys!5766 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!92674 () Unit!5633)

(assert (=> b!187228 (= lt!92674 (addApplyDifferent!146 lt!92660 lt!92664 (zeroValue!3657 thiss!1248) lt!92675))))

(assert (=> b!187228 (= (apply!170 (+!285 lt!92660 (tuple2!3471 lt!92664 (zeroValue!3657 thiss!1248))) lt!92675) (apply!170 lt!92660 lt!92675))))

(declare-fun lt!92665 () Unit!5633)

(assert (=> b!187228 (= lt!92665 lt!92674)))

(declare-fun lt!92669 () ListLongMap!2401)

(assert (=> b!187228 (= lt!92669 (getCurrentListMapNoExtraKeys!200 (_keys!5766 thiss!1248) (_values!3799 thiss!1248) (mask!8956 thiss!1248) (extraKeys!3553 thiss!1248) (zeroValue!3657 thiss!1248) (minValue!3657 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3816 thiss!1248)))))

(declare-fun lt!92676 () (_ BitVec 64))

(assert (=> b!187228 (= lt!92676 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!92666 () (_ BitVec 64))

(assert (=> b!187228 (= lt!92666 (select (arr!3760 (_keys!5766 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!187228 (= lt!92662 (addApplyDifferent!146 lt!92669 lt!92676 (minValue!3657 thiss!1248) lt!92666))))

(assert (=> b!187228 (= (apply!170 (+!285 lt!92669 (tuple2!3471 lt!92676 (minValue!3657 thiss!1248))) lt!92666) (apply!170 lt!92669 lt!92666))))

(declare-fun bm!18873 () Bool)

(assert (=> bm!18873 (= call!18876 (getCurrentListMapNoExtraKeys!200 (_keys!5766 thiss!1248) (_values!3799 thiss!1248) (mask!8956 thiss!1248) (extraKeys!3553 thiss!1248) (zeroValue!3657 thiss!1248) (minValue!3657 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3816 thiss!1248)))))

(declare-fun d!55309 () Bool)

(assert (=> d!55309 e!123225))

(declare-fun res!88544 () Bool)

(assert (=> d!55309 (=> (not res!88544) (not e!123225))))

(assert (=> d!55309 (= res!88544 (or (bvsge #b00000000000000000000000000000000 (size!4078 (_keys!5766 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4078 (_keys!5766 thiss!1248))))))))

(declare-fun lt!92680 () ListLongMap!2401)

(assert (=> d!55309 (= lt!92668 lt!92680)))

(declare-fun lt!92677 () Unit!5633)

(assert (=> d!55309 (= lt!92677 e!123222)))

(declare-fun c!33601 () Bool)

(assert (=> d!55309 (= c!33601 e!123217)))

(declare-fun res!88542 () Bool)

(assert (=> d!55309 (=> (not res!88542) (not e!123217))))

(assert (=> d!55309 (= res!88542 (bvslt #b00000000000000000000000000000000 (size!4078 (_keys!5766 thiss!1248))))))

(assert (=> d!55309 (= lt!92680 e!123220)))

(assert (=> d!55309 (= c!33600 (and (not (= (bvand (extraKeys!3553 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3553 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!55309 (validMask!0 (mask!8956 thiss!1248))))

(assert (=> d!55309 (= (getCurrentListMap!859 (_keys!5766 thiss!1248) (_values!3799 thiss!1248) (mask!8956 thiss!1248) (extraKeys!3553 thiss!1248) (zeroValue!3657 thiss!1248) (minValue!3657 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3816 thiss!1248)) lt!92668)))

(declare-fun b!187229 () Bool)

(assert (=> b!187229 (= e!123224 e!123228)))

(declare-fun res!88546 () Bool)

(assert (=> b!187229 (= res!88546 call!18878)))

(assert (=> b!187229 (=> (not res!88546) (not e!123228))))

(declare-fun b!187230 () Bool)

(assert (=> b!187230 (= e!123223 (= (apply!170 lt!92668 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3657 thiss!1248)))))

(assert (= (and d!55309 c!33600) b!187218))

(assert (= (and d!55309 (not c!33600)) b!187226))

(assert (= (and b!187226 c!33605) b!187219))

(assert (= (and b!187226 (not c!33605)) b!187215))

(assert (= (and b!187215 c!33603) b!187214))

(assert (= (and b!187215 (not c!33603)) b!187216))

(assert (= (or b!187214 b!187216) bm!18875))

(assert (= (or b!187219 bm!18875) bm!18878))

(assert (= (or b!187219 b!187214) bm!18877))

(assert (= (or b!187218 bm!18878) bm!18873))

(assert (= (or b!187218 bm!18877) bm!18872))

(assert (= (and d!55309 res!88542) b!187220))

(assert (= (and d!55309 c!33601) b!187228))

(assert (= (and d!55309 (not c!33601)) b!187223))

(assert (= (and d!55309 res!88544) b!187221))

(assert (= (and b!187221 res!88547) b!187211))

(assert (= (and b!187221 (not res!88545)) b!187225))

(assert (= (and b!187225 res!88543) b!187227))

(assert (= (and b!187221 res!88548) b!187224))

(assert (= (and b!187224 c!33604) b!187229))

(assert (= (and b!187224 (not c!33604)) b!187217))

(assert (= (and b!187229 res!88546) b!187213))

(assert (= (or b!187229 b!187217) bm!18874))

(assert (= (and b!187224 res!88540) b!187222))

(assert (= (and b!187222 c!33602) b!187210))

(assert (= (and b!187222 (not c!33602)) b!187212))

(assert (= (and b!187210 res!88541) b!187230))

(assert (= (or b!187210 b!187212) bm!18876))

(declare-fun b_lambda!7313 () Bool)

(assert (=> (not b_lambda!7313) (not b!187227)))

(declare-fun t!7299 () Bool)

(declare-fun tb!2859 () Bool)

(assert (=> (and b!187077 (= (defaultEntry!3816 thiss!1248) (defaultEntry!3816 thiss!1248)) t!7299) tb!2859))

(declare-fun result!4839 () Bool)

(assert (=> tb!2859 (= result!4839 tp_is_empty!4377)))

(assert (=> b!187227 t!7299))

(declare-fun b_and!11243 () Bool)

(assert (= b_and!11239 (and (=> t!7299 result!4839) b_and!11243)))

(declare-fun m!214055 () Bool)

(assert (=> bm!18873 m!214055))

(declare-fun m!214057 () Bool)

(assert (=> bm!18872 m!214057))

(assert (=> b!187228 m!214055))

(declare-fun m!214059 () Bool)

(assert (=> b!187228 m!214059))

(declare-fun m!214061 () Bool)

(assert (=> b!187228 m!214061))

(declare-fun m!214063 () Bool)

(assert (=> b!187228 m!214063))

(declare-fun m!214065 () Bool)

(assert (=> b!187228 m!214065))

(declare-fun m!214067 () Bool)

(assert (=> b!187228 m!214067))

(declare-fun m!214069 () Bool)

(assert (=> b!187228 m!214069))

(declare-fun m!214071 () Bool)

(assert (=> b!187228 m!214071))

(declare-fun m!214073 () Bool)

(assert (=> b!187228 m!214073))

(declare-fun m!214075 () Bool)

(assert (=> b!187228 m!214075))

(declare-fun m!214077 () Bool)

(assert (=> b!187228 m!214077))

(declare-fun m!214079 () Bool)

(assert (=> b!187228 m!214079))

(declare-fun m!214081 () Bool)

(assert (=> b!187228 m!214081))

(assert (=> b!187228 m!214071))

(assert (=> b!187228 m!214081))

(declare-fun m!214083 () Bool)

(assert (=> b!187228 m!214083))

(assert (=> b!187228 m!214067))

(declare-fun m!214085 () Bool)

(assert (=> b!187228 m!214085))

(declare-fun m!214087 () Bool)

(assert (=> b!187228 m!214087))

(assert (=> b!187228 m!214087))

(declare-fun m!214089 () Bool)

(assert (=> b!187228 m!214089))

(assert (=> d!55309 m!213981))

(declare-fun m!214091 () Bool)

(assert (=> b!187213 m!214091))

(declare-fun m!214093 () Bool)

(assert (=> b!187218 m!214093))

(declare-fun m!214095 () Bool)

(assert (=> bm!18876 m!214095))

(declare-fun m!214097 () Bool)

(assert (=> bm!18874 m!214097))

(declare-fun m!214099 () Bool)

(assert (=> b!187227 m!214099))

(declare-fun m!214101 () Bool)

(assert (=> b!187227 m!214101))

(declare-fun m!214103 () Bool)

(assert (=> b!187227 m!214103))

(assert (=> b!187227 m!214063))

(assert (=> b!187227 m!214101))

(assert (=> b!187227 m!214099))

(assert (=> b!187227 m!214063))

(declare-fun m!214105 () Bool)

(assert (=> b!187227 m!214105))

(declare-fun m!214107 () Bool)

(assert (=> b!187230 m!214107))

(assert (=> b!187211 m!214063))

(assert (=> b!187211 m!214063))

(declare-fun m!214109 () Bool)

(assert (=> b!187211 m!214109))

(assert (=> b!187225 m!214063))

(assert (=> b!187225 m!214063))

(declare-fun m!214111 () Bool)

(assert (=> b!187225 m!214111))

(assert (=> b!187220 m!214063))

(assert (=> b!187220 m!214063))

(assert (=> b!187220 m!214109))

(assert (=> b!187074 d!55309))

(declare-fun d!55311 () Bool)

(declare-fun res!88555 () Bool)

(declare-fun e!123232 () Bool)

(assert (=> d!55311 (=> (not res!88555) (not e!123232))))

(declare-fun simpleValid!185 (LongMapFixedSize!2598) Bool)

(assert (=> d!55311 (= res!88555 (simpleValid!185 thiss!1248))))

(assert (=> d!55311 (= (valid!1061 thiss!1248) e!123232)))

(declare-fun b!187239 () Bool)

(declare-fun res!88556 () Bool)

(assert (=> b!187239 (=> (not res!88556) (not e!123232))))

(declare-fun arrayCountValidKeys!0 (array!7968 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!187239 (= res!88556 (= (arrayCountValidKeys!0 (_keys!5766 thiss!1248) #b00000000000000000000000000000000 (size!4078 (_keys!5766 thiss!1248))) (_size!1348 thiss!1248)))))

(declare-fun b!187240 () Bool)

(declare-fun res!88557 () Bool)

(assert (=> b!187240 (=> (not res!88557) (not e!123232))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7968 (_ BitVec 32)) Bool)

(assert (=> b!187240 (= res!88557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5766 thiss!1248) (mask!8956 thiss!1248)))))

(declare-fun b!187241 () Bool)

(declare-datatypes ((List!2400 0))(
  ( (Nil!2397) (Cons!2396 (h!3031 (_ BitVec 64)) (t!7300 List!2400)) )
))
(declare-fun arrayNoDuplicates!0 (array!7968 (_ BitVec 32) List!2400) Bool)

(assert (=> b!187241 (= e!123232 (arrayNoDuplicates!0 (_keys!5766 thiss!1248) #b00000000000000000000000000000000 Nil!2397))))

(assert (= (and d!55311 res!88555) b!187239))

(assert (= (and b!187239 res!88556) b!187240))

(assert (= (and b!187240 res!88557) b!187241))

(declare-fun m!214113 () Bool)

(assert (=> d!55311 m!214113))

(declare-fun m!214115 () Bool)

(assert (=> b!187239 m!214115))

(declare-fun m!214117 () Bool)

(assert (=> b!187240 m!214117))

(declare-fun m!214119 () Bool)

(assert (=> b!187241 m!214119))

(assert (=> start!18986 d!55311))

(declare-fun condMapEmpty!7544 () Bool)

(declare-fun mapDefault!7544 () ValueCell!1845)

(assert (=> mapNonEmpty!7538 (= condMapEmpty!7544 (= mapRest!7538 ((as const (Array (_ BitVec 32) ValueCell!1845)) mapDefault!7544)))))

(declare-fun e!123238 () Bool)

(declare-fun mapRes!7544 () Bool)

(assert (=> mapNonEmpty!7538 (= tp!16624 (and e!123238 mapRes!7544))))

(declare-fun b!187248 () Bool)

(declare-fun e!123237 () Bool)

(assert (=> b!187248 (= e!123237 tp_is_empty!4377)))

(declare-fun mapNonEmpty!7544 () Bool)

(declare-fun tp!16634 () Bool)

(assert (=> mapNonEmpty!7544 (= mapRes!7544 (and tp!16634 e!123237))))

(declare-fun mapValue!7544 () ValueCell!1845)

(declare-fun mapRest!7544 () (Array (_ BitVec 32) ValueCell!1845))

(declare-fun mapKey!7544 () (_ BitVec 32))

(assert (=> mapNonEmpty!7544 (= mapRest!7538 (store mapRest!7544 mapKey!7544 mapValue!7544))))

(declare-fun mapIsEmpty!7544 () Bool)

(assert (=> mapIsEmpty!7544 mapRes!7544))

(declare-fun b!187249 () Bool)

(assert (=> b!187249 (= e!123238 tp_is_empty!4377)))

(assert (= (and mapNonEmpty!7538 condMapEmpty!7544) mapIsEmpty!7544))

(assert (= (and mapNonEmpty!7538 (not condMapEmpty!7544)) mapNonEmpty!7544))

(assert (= (and mapNonEmpty!7544 ((_ is ValueCellFull!1845) mapValue!7544)) b!187248))

(assert (= (and mapNonEmpty!7538 ((_ is ValueCellFull!1845) mapDefault!7544)) b!187249))

(declare-fun m!214121 () Bool)

(assert (=> mapNonEmpty!7544 m!214121))

(declare-fun b_lambda!7315 () Bool)

(assert (= b_lambda!7313 (or (and b!187077 b_free!4605) b_lambda!7315)))

(check-sat (not b!187227) (not b!187240) (not b!187241) (not b!187225) (not d!55293) (not b!187218) (not b_next!4605) (not bm!18874) (not b!187165) (not d!55307) b_and!11243 (not b!187213) (not b!187230) (not bm!18856) (not d!55311) (not b_lambda!7315) (not d!55299) (not d!55309) tp_is_empty!4377 (not b!187239) (not bm!18857) (not d!55303) (not b!187126) (not bm!18873) (not mapNonEmpty!7544) (not b!187228) (not bm!18876) (not b!187220) (not b!187133) (not bm!18872) (not b!187211) (not b!187167))
(check-sat b_and!11243 (not b_next!4605))

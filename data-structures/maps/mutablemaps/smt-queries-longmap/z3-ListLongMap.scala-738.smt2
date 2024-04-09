; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17218 () Bool)

(assert start!17218)

(declare-fun b!172633 () Bool)

(declare-fun b_free!4269 () Bool)

(declare-fun b_next!4269 () Bool)

(assert (=> b!172633 (= b_free!4269 (not b_next!4269))))

(declare-fun tp!15460 () Bool)

(declare-fun b_and!10727 () Bool)

(assert (=> b!172633 (= tp!15460 b_and!10727)))

(declare-fun b!172629 () Bool)

(declare-fun res!81983 () Bool)

(declare-fun e!113982 () Bool)

(assert (=> b!172629 (=> (not res!81983) (not e!113982))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!172629 (= res!81983 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!172630 () Bool)

(declare-fun e!113984 () Bool)

(declare-fun e!113983 () Bool)

(declare-fun mapRes!6878 () Bool)

(assert (=> b!172630 (= e!113984 (and e!113983 mapRes!6878))))

(declare-fun condMapEmpty!6878 () Bool)

(declare-datatypes ((V!5035 0))(
  ( (V!5036 (val!2065 Int)) )
))
(declare-datatypes ((ValueCell!1677 0))(
  ( (ValueCellFull!1677 (v!3929 V!5035)) (EmptyCell!1677) )
))
(declare-datatypes ((array!7206 0))(
  ( (array!7207 (arr!3424 (Array (_ BitVec 32) (_ BitVec 64))) (size!3722 (_ BitVec 32))) )
))
(declare-datatypes ((array!7208 0))(
  ( (array!7209 (arr!3425 (Array (_ BitVec 32) ValueCell!1677)) (size!3723 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2262 0))(
  ( (LongMapFixedSize!2263 (defaultEntry!3577 Int) (mask!8429 (_ BitVec 32)) (extraKeys!3316 (_ BitVec 32)) (zeroValue!3418 V!5035) (minValue!3420 V!5035) (_size!1180 (_ BitVec 32)) (_keys!5415 array!7206) (_values!3560 array!7208) (_vacant!1180 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2262)

(declare-fun mapDefault!6878 () ValueCell!1677)

(assert (=> b!172630 (= condMapEmpty!6878 (= (arr!3425 (_values!3560 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1677)) mapDefault!6878)))))

(declare-fun b!172631 () Bool)

(assert (=> b!172631 (= e!113982 (and (= (size!3723 (_values!3560 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8429 thiss!1248))) (= (size!3722 (_keys!5415 thiss!1248)) (size!3723 (_values!3560 thiss!1248))) (bvsge (mask!8429 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3316 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3316 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!172632 () Bool)

(declare-fun tp_is_empty!4041 () Bool)

(assert (=> b!172632 (= e!113983 tp_is_empty!4041)))

(declare-fun e!113980 () Bool)

(declare-fun array_inv!2183 (array!7206) Bool)

(declare-fun array_inv!2184 (array!7208) Bool)

(assert (=> b!172633 (= e!113980 (and tp!15460 tp_is_empty!4041 (array_inv!2183 (_keys!5415 thiss!1248)) (array_inv!2184 (_values!3560 thiss!1248)) e!113984))))

(declare-fun mapIsEmpty!6878 () Bool)

(assert (=> mapIsEmpty!6878 mapRes!6878))

(declare-fun res!81984 () Bool)

(assert (=> start!17218 (=> (not res!81984) (not e!113982))))

(declare-fun valid!950 (LongMapFixedSize!2262) Bool)

(assert (=> start!17218 (= res!81984 (valid!950 thiss!1248))))

(assert (=> start!17218 e!113982))

(assert (=> start!17218 e!113980))

(assert (=> start!17218 true))

(declare-fun mapNonEmpty!6878 () Bool)

(declare-fun tp!15461 () Bool)

(declare-fun e!113981 () Bool)

(assert (=> mapNonEmpty!6878 (= mapRes!6878 (and tp!15461 e!113981))))

(declare-fun mapKey!6878 () (_ BitVec 32))

(declare-fun mapRest!6878 () (Array (_ BitVec 32) ValueCell!1677))

(declare-fun mapValue!6878 () ValueCell!1677)

(assert (=> mapNonEmpty!6878 (= (arr!3425 (_values!3560 thiss!1248)) (store mapRest!6878 mapKey!6878 mapValue!6878))))

(declare-fun b!172634 () Bool)

(declare-fun res!81982 () Bool)

(assert (=> b!172634 (=> (not res!81982) (not e!113982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!172634 (= res!81982 (validMask!0 (mask!8429 thiss!1248)))))

(declare-fun b!172635 () Bool)

(assert (=> b!172635 (= e!113981 tp_is_empty!4041)))

(assert (= (and start!17218 res!81984) b!172629))

(assert (= (and b!172629 res!81983) b!172634))

(assert (= (and b!172634 res!81982) b!172631))

(assert (= (and b!172630 condMapEmpty!6878) mapIsEmpty!6878))

(assert (= (and b!172630 (not condMapEmpty!6878)) mapNonEmpty!6878))

(get-info :version)

(assert (= (and mapNonEmpty!6878 ((_ is ValueCellFull!1677) mapValue!6878)) b!172635))

(assert (= (and b!172630 ((_ is ValueCellFull!1677) mapDefault!6878)) b!172632))

(assert (= b!172633 b!172630))

(assert (= start!17218 b!172633))

(declare-fun m!201319 () Bool)

(assert (=> b!172633 m!201319))

(declare-fun m!201321 () Bool)

(assert (=> b!172633 m!201321))

(declare-fun m!201323 () Bool)

(assert (=> start!17218 m!201323))

(declare-fun m!201325 () Bool)

(assert (=> mapNonEmpty!6878 m!201325))

(declare-fun m!201327 () Bool)

(assert (=> b!172634 m!201327))

(check-sat tp_is_empty!4041 (not b_next!4269) (not b!172633) (not start!17218) b_and!10727 (not mapNonEmpty!6878) (not b!172634))
(check-sat b_and!10727 (not b_next!4269))
(get-model)

(declare-fun d!52453 () Bool)

(assert (=> d!52453 (= (array_inv!2183 (_keys!5415 thiss!1248)) (bvsge (size!3722 (_keys!5415 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!172633 d!52453))

(declare-fun d!52455 () Bool)

(assert (=> d!52455 (= (array_inv!2184 (_values!3560 thiss!1248)) (bvsge (size!3723 (_values!3560 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!172633 d!52455))

(declare-fun d!52457 () Bool)

(declare-fun res!82000 () Bool)

(declare-fun e!114005 () Bool)

(assert (=> d!52457 (=> (not res!82000) (not e!114005))))

(declare-fun simpleValid!140 (LongMapFixedSize!2262) Bool)

(assert (=> d!52457 (= res!82000 (simpleValid!140 thiss!1248))))

(assert (=> d!52457 (= (valid!950 thiss!1248) e!114005)))

(declare-fun b!172663 () Bool)

(declare-fun res!82001 () Bool)

(assert (=> b!172663 (=> (not res!82001) (not e!114005))))

(declare-fun arrayCountValidKeys!0 (array!7206 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!172663 (= res!82001 (= (arrayCountValidKeys!0 (_keys!5415 thiss!1248) #b00000000000000000000000000000000 (size!3722 (_keys!5415 thiss!1248))) (_size!1180 thiss!1248)))))

(declare-fun b!172664 () Bool)

(declare-fun res!82002 () Bool)

(assert (=> b!172664 (=> (not res!82002) (not e!114005))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7206 (_ BitVec 32)) Bool)

(assert (=> b!172664 (= res!82002 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5415 thiss!1248) (mask!8429 thiss!1248)))))

(declare-fun b!172665 () Bool)

(declare-datatypes ((List!2221 0))(
  ( (Nil!2218) (Cons!2217 (h!2834 (_ BitVec 64)) (t!7036 List!2221)) )
))
(declare-fun arrayNoDuplicates!0 (array!7206 (_ BitVec 32) List!2221) Bool)

(assert (=> b!172665 (= e!114005 (arrayNoDuplicates!0 (_keys!5415 thiss!1248) #b00000000000000000000000000000000 Nil!2218))))

(assert (= (and d!52457 res!82000) b!172663))

(assert (= (and b!172663 res!82001) b!172664))

(assert (= (and b!172664 res!82002) b!172665))

(declare-fun m!201339 () Bool)

(assert (=> d!52457 m!201339))

(declare-fun m!201341 () Bool)

(assert (=> b!172663 m!201341))

(declare-fun m!201343 () Bool)

(assert (=> b!172664 m!201343))

(declare-fun m!201345 () Bool)

(assert (=> b!172665 m!201345))

(assert (=> start!17218 d!52457))

(declare-fun d!52459 () Bool)

(assert (=> d!52459 (= (validMask!0 (mask!8429 thiss!1248)) (and (or (= (mask!8429 thiss!1248) #b00000000000000000000000000000111) (= (mask!8429 thiss!1248) #b00000000000000000000000000001111) (= (mask!8429 thiss!1248) #b00000000000000000000000000011111) (= (mask!8429 thiss!1248) #b00000000000000000000000000111111) (= (mask!8429 thiss!1248) #b00000000000000000000000001111111) (= (mask!8429 thiss!1248) #b00000000000000000000000011111111) (= (mask!8429 thiss!1248) #b00000000000000000000000111111111) (= (mask!8429 thiss!1248) #b00000000000000000000001111111111) (= (mask!8429 thiss!1248) #b00000000000000000000011111111111) (= (mask!8429 thiss!1248) #b00000000000000000000111111111111) (= (mask!8429 thiss!1248) #b00000000000000000001111111111111) (= (mask!8429 thiss!1248) #b00000000000000000011111111111111) (= (mask!8429 thiss!1248) #b00000000000000000111111111111111) (= (mask!8429 thiss!1248) #b00000000000000001111111111111111) (= (mask!8429 thiss!1248) #b00000000000000011111111111111111) (= (mask!8429 thiss!1248) #b00000000000000111111111111111111) (= (mask!8429 thiss!1248) #b00000000000001111111111111111111) (= (mask!8429 thiss!1248) #b00000000000011111111111111111111) (= (mask!8429 thiss!1248) #b00000000000111111111111111111111) (= (mask!8429 thiss!1248) #b00000000001111111111111111111111) (= (mask!8429 thiss!1248) #b00000000011111111111111111111111) (= (mask!8429 thiss!1248) #b00000000111111111111111111111111) (= (mask!8429 thiss!1248) #b00000001111111111111111111111111) (= (mask!8429 thiss!1248) #b00000011111111111111111111111111) (= (mask!8429 thiss!1248) #b00000111111111111111111111111111) (= (mask!8429 thiss!1248) #b00001111111111111111111111111111) (= (mask!8429 thiss!1248) #b00011111111111111111111111111111) (= (mask!8429 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8429 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!172634 d!52459))

(declare-fun mapNonEmpty!6884 () Bool)

(declare-fun mapRes!6884 () Bool)

(declare-fun tp!15470 () Bool)

(declare-fun e!114010 () Bool)

(assert (=> mapNonEmpty!6884 (= mapRes!6884 (and tp!15470 e!114010))))

(declare-fun mapRest!6884 () (Array (_ BitVec 32) ValueCell!1677))

(declare-fun mapValue!6884 () ValueCell!1677)

(declare-fun mapKey!6884 () (_ BitVec 32))

(assert (=> mapNonEmpty!6884 (= mapRest!6878 (store mapRest!6884 mapKey!6884 mapValue!6884))))

(declare-fun mapIsEmpty!6884 () Bool)

(assert (=> mapIsEmpty!6884 mapRes!6884))

(declare-fun b!172673 () Bool)

(declare-fun e!114011 () Bool)

(assert (=> b!172673 (= e!114011 tp_is_empty!4041)))

(declare-fun condMapEmpty!6884 () Bool)

(declare-fun mapDefault!6884 () ValueCell!1677)

(assert (=> mapNonEmpty!6878 (= condMapEmpty!6884 (= mapRest!6878 ((as const (Array (_ BitVec 32) ValueCell!1677)) mapDefault!6884)))))

(assert (=> mapNonEmpty!6878 (= tp!15461 (and e!114011 mapRes!6884))))

(declare-fun b!172672 () Bool)

(assert (=> b!172672 (= e!114010 tp_is_empty!4041)))

(assert (= (and mapNonEmpty!6878 condMapEmpty!6884) mapIsEmpty!6884))

(assert (= (and mapNonEmpty!6878 (not condMapEmpty!6884)) mapNonEmpty!6884))

(assert (= (and mapNonEmpty!6884 ((_ is ValueCellFull!1677) mapValue!6884)) b!172672))

(assert (= (and mapNonEmpty!6878 ((_ is ValueCellFull!1677) mapDefault!6884)) b!172673))

(declare-fun m!201347 () Bool)

(assert (=> mapNonEmpty!6884 m!201347))

(check-sat tp_is_empty!4041 (not b_next!4269) (not mapNonEmpty!6884) (not b!172664) (not b!172663) (not d!52457) (not b!172665) b_and!10727)
(check-sat b_and!10727 (not b_next!4269))
(get-model)

(declare-fun b!172684 () Bool)

(declare-fun e!114021 () Bool)

(declare-fun call!17540 () Bool)

(assert (=> b!172684 (= e!114021 call!17540)))

(declare-fun d!52461 () Bool)

(declare-fun res!82011 () Bool)

(declare-fun e!114020 () Bool)

(assert (=> d!52461 (=> res!82011 e!114020)))

(assert (=> d!52461 (= res!82011 (bvsge #b00000000000000000000000000000000 (size!3722 (_keys!5415 thiss!1248))))))

(assert (=> d!52461 (= (arrayNoDuplicates!0 (_keys!5415 thiss!1248) #b00000000000000000000000000000000 Nil!2218) e!114020)))

(declare-fun bm!17537 () Bool)

(declare-fun c!30859 () Bool)

(assert (=> bm!17537 (= call!17540 (arrayNoDuplicates!0 (_keys!5415 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30859 (Cons!2217 (select (arr!3424 (_keys!5415 thiss!1248)) #b00000000000000000000000000000000) Nil!2218) Nil!2218)))))

(declare-fun b!172685 () Bool)

(declare-fun e!114022 () Bool)

(assert (=> b!172685 (= e!114020 e!114022)))

(declare-fun res!82009 () Bool)

(assert (=> b!172685 (=> (not res!82009) (not e!114022))))

(declare-fun e!114023 () Bool)

(assert (=> b!172685 (= res!82009 (not e!114023))))

(declare-fun res!82010 () Bool)

(assert (=> b!172685 (=> (not res!82010) (not e!114023))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!172685 (= res!82010 (validKeyInArray!0 (select (arr!3424 (_keys!5415 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!172686 () Bool)

(assert (=> b!172686 (= e!114022 e!114021)))

(assert (=> b!172686 (= c!30859 (validKeyInArray!0 (select (arr!3424 (_keys!5415 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!172687 () Bool)

(assert (=> b!172687 (= e!114021 call!17540)))

(declare-fun b!172688 () Bool)

(declare-fun contains!1151 (List!2221 (_ BitVec 64)) Bool)

(assert (=> b!172688 (= e!114023 (contains!1151 Nil!2218 (select (arr!3424 (_keys!5415 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!52461 (not res!82011)) b!172685))

(assert (= (and b!172685 res!82010) b!172688))

(assert (= (and b!172685 res!82009) b!172686))

(assert (= (and b!172686 c!30859) b!172687))

(assert (= (and b!172686 (not c!30859)) b!172684))

(assert (= (or b!172687 b!172684) bm!17537))

(declare-fun m!201349 () Bool)

(assert (=> bm!17537 m!201349))

(declare-fun m!201351 () Bool)

(assert (=> bm!17537 m!201351))

(assert (=> b!172685 m!201349))

(assert (=> b!172685 m!201349))

(declare-fun m!201353 () Bool)

(assert (=> b!172685 m!201353))

(assert (=> b!172686 m!201349))

(assert (=> b!172686 m!201349))

(assert (=> b!172686 m!201353))

(assert (=> b!172688 m!201349))

(assert (=> b!172688 m!201349))

(declare-fun m!201355 () Bool)

(assert (=> b!172688 m!201355))

(assert (=> b!172665 d!52461))

(declare-fun b!172697 () Bool)

(declare-fun e!114032 () Bool)

(declare-fun call!17543 () Bool)

(assert (=> b!172697 (= e!114032 call!17543)))

(declare-fun bm!17540 () Bool)

(assert (=> bm!17540 (= call!17543 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5415 thiss!1248) (mask!8429 thiss!1248)))))

(declare-fun b!172698 () Bool)

(declare-fun e!114031 () Bool)

(assert (=> b!172698 (= e!114032 e!114031)))

(declare-fun lt!85710 () (_ BitVec 64))

(assert (=> b!172698 (= lt!85710 (select (arr!3424 (_keys!5415 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5305 0))(
  ( (Unit!5306) )
))
(declare-fun lt!85712 () Unit!5305)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7206 (_ BitVec 64) (_ BitVec 32)) Unit!5305)

(assert (=> b!172698 (= lt!85712 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5415 thiss!1248) lt!85710 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7206 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!172698 (arrayContainsKey!0 (_keys!5415 thiss!1248) lt!85710 #b00000000000000000000000000000000)))

(declare-fun lt!85711 () Unit!5305)

(assert (=> b!172698 (= lt!85711 lt!85712)))

(declare-fun res!82017 () Bool)

(declare-datatypes ((SeekEntryResult!549 0))(
  ( (MissingZero!549 (index!4364 (_ BitVec 32))) (Found!549 (index!4365 (_ BitVec 32))) (Intermediate!549 (undefined!1361 Bool) (index!4366 (_ BitVec 32)) (x!19108 (_ BitVec 32))) (Undefined!549) (MissingVacant!549 (index!4367 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7206 (_ BitVec 32)) SeekEntryResult!549)

(assert (=> b!172698 (= res!82017 (= (seekEntryOrOpen!0 (select (arr!3424 (_keys!5415 thiss!1248)) #b00000000000000000000000000000000) (_keys!5415 thiss!1248) (mask!8429 thiss!1248)) (Found!549 #b00000000000000000000000000000000)))))

(assert (=> b!172698 (=> (not res!82017) (not e!114031))))

(declare-fun b!172699 () Bool)

(assert (=> b!172699 (= e!114031 call!17543)))

(declare-fun b!172700 () Bool)

(declare-fun e!114030 () Bool)

(assert (=> b!172700 (= e!114030 e!114032)))

(declare-fun c!30862 () Bool)

(assert (=> b!172700 (= c!30862 (validKeyInArray!0 (select (arr!3424 (_keys!5415 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!52463 () Bool)

(declare-fun res!82016 () Bool)

(assert (=> d!52463 (=> res!82016 e!114030)))

(assert (=> d!52463 (= res!82016 (bvsge #b00000000000000000000000000000000 (size!3722 (_keys!5415 thiss!1248))))))

(assert (=> d!52463 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5415 thiss!1248) (mask!8429 thiss!1248)) e!114030)))

(assert (= (and d!52463 (not res!82016)) b!172700))

(assert (= (and b!172700 c!30862) b!172698))

(assert (= (and b!172700 (not c!30862)) b!172697))

(assert (= (and b!172698 res!82017) b!172699))

(assert (= (or b!172699 b!172697) bm!17540))

(declare-fun m!201357 () Bool)

(assert (=> bm!17540 m!201357))

(assert (=> b!172698 m!201349))

(declare-fun m!201359 () Bool)

(assert (=> b!172698 m!201359))

(declare-fun m!201361 () Bool)

(assert (=> b!172698 m!201361))

(assert (=> b!172698 m!201349))

(declare-fun m!201363 () Bool)

(assert (=> b!172698 m!201363))

(assert (=> b!172700 m!201349))

(assert (=> b!172700 m!201349))

(assert (=> b!172700 m!201353))

(assert (=> b!172664 d!52463))

(declare-fun b!172709 () Bool)

(declare-fun res!82029 () Bool)

(declare-fun e!114035 () Bool)

(assert (=> b!172709 (=> (not res!82029) (not e!114035))))

(assert (=> b!172709 (= res!82029 (and (= (size!3723 (_values!3560 thiss!1248)) (bvadd (mask!8429 thiss!1248) #b00000000000000000000000000000001)) (= (size!3722 (_keys!5415 thiss!1248)) (size!3723 (_values!3560 thiss!1248))) (bvsge (_size!1180 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1180 thiss!1248) (bvadd (mask!8429 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!172712 () Bool)

(assert (=> b!172712 (= e!114035 (and (bvsge (extraKeys!3316 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3316 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1180 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!172711 () Bool)

(declare-fun res!82028 () Bool)

(assert (=> b!172711 (=> (not res!82028) (not e!114035))))

(declare-fun size!3726 (LongMapFixedSize!2262) (_ BitVec 32))

(assert (=> b!172711 (= res!82028 (= (size!3726 thiss!1248) (bvadd (_size!1180 thiss!1248) (bvsdiv (bvadd (extraKeys!3316 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!172710 () Bool)

(declare-fun res!82026 () Bool)

(assert (=> b!172710 (=> (not res!82026) (not e!114035))))

(assert (=> b!172710 (= res!82026 (bvsge (size!3726 thiss!1248) (_size!1180 thiss!1248)))))

(declare-fun d!52465 () Bool)

(declare-fun res!82027 () Bool)

(assert (=> d!52465 (=> (not res!82027) (not e!114035))))

(assert (=> d!52465 (= res!82027 (validMask!0 (mask!8429 thiss!1248)))))

(assert (=> d!52465 (= (simpleValid!140 thiss!1248) e!114035)))

(assert (= (and d!52465 res!82027) b!172709))

(assert (= (and b!172709 res!82029) b!172710))

(assert (= (and b!172710 res!82026) b!172711))

(assert (= (and b!172711 res!82028) b!172712))

(declare-fun m!201365 () Bool)

(assert (=> b!172711 m!201365))

(assert (=> b!172710 m!201365))

(assert (=> d!52465 m!201327))

(assert (=> d!52457 d!52465))

(declare-fun b!172721 () Bool)

(declare-fun e!114041 () (_ BitVec 32))

(assert (=> b!172721 (= e!114041 #b00000000000000000000000000000000)))

(declare-fun b!172722 () Bool)

(declare-fun e!114040 () (_ BitVec 32))

(declare-fun call!17546 () (_ BitVec 32))

(assert (=> b!172722 (= e!114040 call!17546)))

(declare-fun d!52467 () Bool)

(declare-fun lt!85715 () (_ BitVec 32))

(assert (=> d!52467 (and (bvsge lt!85715 #b00000000000000000000000000000000) (bvsle lt!85715 (bvsub (size!3722 (_keys!5415 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!52467 (= lt!85715 e!114041)))

(declare-fun c!30868 () Bool)

(assert (=> d!52467 (= c!30868 (bvsge #b00000000000000000000000000000000 (size!3722 (_keys!5415 thiss!1248))))))

(assert (=> d!52467 (and (bvsle #b00000000000000000000000000000000 (size!3722 (_keys!5415 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3722 (_keys!5415 thiss!1248)) (size!3722 (_keys!5415 thiss!1248))))))

(assert (=> d!52467 (= (arrayCountValidKeys!0 (_keys!5415 thiss!1248) #b00000000000000000000000000000000 (size!3722 (_keys!5415 thiss!1248))) lt!85715)))

(declare-fun bm!17543 () Bool)

(assert (=> bm!17543 (= call!17546 (arrayCountValidKeys!0 (_keys!5415 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3722 (_keys!5415 thiss!1248))))))

(declare-fun b!172723 () Bool)

(assert (=> b!172723 (= e!114040 (bvadd #b00000000000000000000000000000001 call!17546))))

(declare-fun b!172724 () Bool)

(assert (=> b!172724 (= e!114041 e!114040)))

(declare-fun c!30867 () Bool)

(assert (=> b!172724 (= c!30867 (validKeyInArray!0 (select (arr!3424 (_keys!5415 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!52467 c!30868) b!172721))

(assert (= (and d!52467 (not c!30868)) b!172724))

(assert (= (and b!172724 c!30867) b!172723))

(assert (= (and b!172724 (not c!30867)) b!172722))

(assert (= (or b!172723 b!172722) bm!17543))

(declare-fun m!201367 () Bool)

(assert (=> bm!17543 m!201367))

(assert (=> b!172724 m!201349))

(assert (=> b!172724 m!201349))

(assert (=> b!172724 m!201353))

(assert (=> b!172663 d!52467))

(declare-fun mapNonEmpty!6885 () Bool)

(declare-fun mapRes!6885 () Bool)

(declare-fun tp!15471 () Bool)

(declare-fun e!114042 () Bool)

(assert (=> mapNonEmpty!6885 (= mapRes!6885 (and tp!15471 e!114042))))

(declare-fun mapValue!6885 () ValueCell!1677)

(declare-fun mapRest!6885 () (Array (_ BitVec 32) ValueCell!1677))

(declare-fun mapKey!6885 () (_ BitVec 32))

(assert (=> mapNonEmpty!6885 (= mapRest!6884 (store mapRest!6885 mapKey!6885 mapValue!6885))))

(declare-fun mapIsEmpty!6885 () Bool)

(assert (=> mapIsEmpty!6885 mapRes!6885))

(declare-fun b!172726 () Bool)

(declare-fun e!114043 () Bool)

(assert (=> b!172726 (= e!114043 tp_is_empty!4041)))

(declare-fun condMapEmpty!6885 () Bool)

(declare-fun mapDefault!6885 () ValueCell!1677)

(assert (=> mapNonEmpty!6884 (= condMapEmpty!6885 (= mapRest!6884 ((as const (Array (_ BitVec 32) ValueCell!1677)) mapDefault!6885)))))

(assert (=> mapNonEmpty!6884 (= tp!15470 (and e!114043 mapRes!6885))))

(declare-fun b!172725 () Bool)

(assert (=> b!172725 (= e!114042 tp_is_empty!4041)))

(assert (= (and mapNonEmpty!6884 condMapEmpty!6885) mapIsEmpty!6885))

(assert (= (and mapNonEmpty!6884 (not condMapEmpty!6885)) mapNonEmpty!6885))

(assert (= (and mapNonEmpty!6885 ((_ is ValueCellFull!1677) mapValue!6885)) b!172725))

(assert (= (and mapNonEmpty!6884 ((_ is ValueCellFull!1677) mapDefault!6885)) b!172726))

(declare-fun m!201369 () Bool)

(assert (=> mapNonEmpty!6885 m!201369))

(check-sat (not b!172700) tp_is_empty!4041 (not b_next!4269) (not mapNonEmpty!6885) (not b!172724) (not b!172688) (not b!172710) (not b!172711) (not b!172686) b_and!10727 (not bm!17543) (not bm!17537) (not bm!17540) (not d!52465) (not b!172685) (not b!172698))
(check-sat b_and!10727 (not b_next!4269))

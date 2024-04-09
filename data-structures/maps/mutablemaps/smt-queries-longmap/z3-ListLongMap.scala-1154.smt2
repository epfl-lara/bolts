; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24286 () Bool)

(assert start!24286)

(declare-fun b!253980 () Bool)

(declare-fun b_free!6675 () Bool)

(declare-fun b_next!6675 () Bool)

(assert (=> b!253980 (= b_free!6675 (not b_next!6675))))

(declare-fun tp!23312 () Bool)

(declare-fun b_and!13735 () Bool)

(assert (=> b!253980 (= tp!23312 b_and!13735)))

(declare-fun b!253962 () Bool)

(declare-fun c!42822 () Bool)

(declare-datatypes ((SeekEntryResult!1154 0))(
  ( (MissingZero!1154 (index!6786 (_ BitVec 32))) (Found!1154 (index!6787 (_ BitVec 32))) (Intermediate!1154 (undefined!1966 Bool) (index!6788 (_ BitVec 32)) (x!24854 (_ BitVec 32))) (Undefined!1154) (MissingVacant!1154 (index!6789 (_ BitVec 32))) )
))
(declare-fun lt!127313 () SeekEntryResult!1154)

(get-info :version)

(assert (=> b!253962 (= c!42822 ((_ is MissingVacant!1154) lt!127313))))

(declare-fun e!164641 () Bool)

(declare-fun e!164630 () Bool)

(assert (=> b!253962 (= e!164641 e!164630)))

(declare-fun b!253963 () Bool)

(declare-fun res!124344 () Bool)

(declare-fun e!164642 () Bool)

(assert (=> b!253963 (=> res!124344 e!164642)))

(declare-datatypes ((V!8363 0))(
  ( (V!8364 (val!3313 Int)) )
))
(declare-datatypes ((ValueCell!2925 0))(
  ( (ValueCellFull!2925 (v!5383 V!8363)) (EmptyCell!2925) )
))
(declare-datatypes ((array!12404 0))(
  ( (array!12405 (arr!5877 (Array (_ BitVec 32) ValueCell!2925)) (size!6224 (_ BitVec 32))) )
))
(declare-datatypes ((array!12406 0))(
  ( (array!12407 (arr!5878 (Array (_ BitVec 32) (_ BitVec 64))) (size!6225 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3750 0))(
  ( (LongMapFixedSize!3751 (defaultEntry!4688 Int) (mask!10930 (_ BitVec 32)) (extraKeys!4425 (_ BitVec 32)) (zeroValue!4529 V!8363) (minValue!4529 V!8363) (_size!1924 (_ BitVec 32)) (_keys!6842 array!12406) (_values!4671 array!12404) (_vacant!1924 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3750)

(assert (=> b!253963 (= res!124344 (or (not (= (size!6224 (_values!4671 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10930 thiss!1504)))) (not (= (size!6225 (_keys!6842 thiss!1504)) (size!6224 (_values!4671 thiss!1504)))) (bvslt (mask!10930 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4425 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4425 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!253964 () Bool)

(declare-datatypes ((Unit!7856 0))(
  ( (Unit!7857) )
))
(declare-fun e!164643 () Unit!7856)

(declare-fun Unit!7858 () Unit!7856)

(assert (=> b!253964 (= e!164643 Unit!7858)))

(declare-fun lt!127315 () Unit!7856)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!413 (array!12406 array!12404 (_ BitVec 32) (_ BitVec 32) V!8363 V!8363 (_ BitVec 64) Int) Unit!7856)

(assert (=> b!253964 (= lt!127315 (lemmaInListMapThenSeekEntryOrOpenFindsIt!413 (_keys!6842 thiss!1504) (_values!4671 thiss!1504) (mask!10930 thiss!1504) (extraKeys!4425 thiss!1504) (zeroValue!4529 thiss!1504) (minValue!4529 thiss!1504) key!932 (defaultEntry!4688 thiss!1504)))))

(assert (=> b!253964 false))

(declare-fun lt!127317 () Bool)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun b!253965 () Bool)

(assert (=> b!253965 (= e!164642 (or (and (not (= (select (arr!5878 (_keys!6842 thiss!1504)) index!297) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5878 (_keys!6842 thiss!1504)) index!297) #b0000000000000000000000000000000000000000000000000000000000000000))) (not lt!127317)))))

(declare-fun b!253966 () Bool)

(declare-fun res!124343 () Bool)

(assert (=> b!253966 (=> res!124343 e!164642)))

(declare-datatypes ((List!3777 0))(
  ( (Nil!3774) (Cons!3773 (h!4435 (_ BitVec 64)) (t!8832 List!3777)) )
))
(declare-fun arrayNoDuplicates!0 (array!12406 (_ BitVec 32) List!3777) Bool)

(assert (=> b!253966 (= res!124343 (not (arrayNoDuplicates!0 (_keys!6842 thiss!1504) #b00000000000000000000000000000000 Nil!3774)))))

(declare-fun res!124351 () Bool)

(declare-fun e!164634 () Bool)

(assert (=> start!24286 (=> (not res!124351) (not e!164634))))

(declare-fun valid!1458 (LongMapFixedSize!3750) Bool)

(assert (=> start!24286 (= res!124351 (valid!1458 thiss!1504))))

(assert (=> start!24286 e!164634))

(declare-fun e!164639 () Bool)

(assert (=> start!24286 e!164639))

(assert (=> start!24286 true))

(declare-fun b!253967 () Bool)

(declare-fun lt!127322 () Unit!7856)

(assert (=> b!253967 (= e!164643 lt!127322)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!414 (array!12406 array!12404 (_ BitVec 32) (_ BitVec 32) V!8363 V!8363 (_ BitVec 64) Int) Unit!7856)

(assert (=> b!253967 (= lt!127322 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!414 (_keys!6842 thiss!1504) (_values!4671 thiss!1504) (mask!10930 thiss!1504) (extraKeys!4425 thiss!1504) (zeroValue!4529 thiss!1504) (minValue!4529 thiss!1504) key!932 (defaultEntry!4688 thiss!1504)))))

(declare-fun c!42821 () Bool)

(assert (=> b!253967 (= c!42821 ((_ is MissingZero!1154) lt!127313))))

(assert (=> b!253967 e!164641))

(declare-fun b!253968 () Bool)

(assert (=> b!253968 (= e!164630 ((_ is Undefined!1154) lt!127313))))

(declare-fun b!253969 () Bool)

(declare-fun e!164638 () Bool)

(assert (=> b!253969 (= e!164630 e!164638)))

(declare-fun res!124353 () Bool)

(declare-fun call!23968 () Bool)

(assert (=> b!253969 (= res!124353 call!23968)))

(assert (=> b!253969 (=> (not res!124353) (not e!164638))))

(declare-fun b!253970 () Bool)

(declare-fun e!164636 () Bool)

(declare-fun tp_is_empty!6537 () Bool)

(assert (=> b!253970 (= e!164636 tp_is_empty!6537)))

(declare-fun b!253971 () Bool)

(declare-fun call!23969 () Bool)

(assert (=> b!253971 (= e!164638 (not call!23969))))

(declare-fun mapIsEmpty!11121 () Bool)

(declare-fun mapRes!11121 () Bool)

(assert (=> mapIsEmpty!11121 mapRes!11121))

(declare-fun b!253972 () Bool)

(declare-fun res!124341 () Bool)

(declare-fun e!164631 () Bool)

(assert (=> b!253972 (=> (not res!124341) (not e!164631))))

(assert (=> b!253972 (= res!124341 call!23968)))

(assert (=> b!253972 (= e!164641 e!164631)))

(declare-fun b!253973 () Bool)

(assert (=> b!253973 (= e!164631 (not call!23969))))

(declare-fun b!253974 () Bool)

(declare-fun e!164629 () Bool)

(assert (=> b!253974 (= e!164629 (and e!164636 mapRes!11121))))

(declare-fun condMapEmpty!11121 () Bool)

(declare-fun mapDefault!11121 () ValueCell!2925)

(assert (=> b!253974 (= condMapEmpty!11121 (= (arr!5877 (_values!4671 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2925)) mapDefault!11121)))))

(declare-fun b!253975 () Bool)

(declare-fun e!164632 () Unit!7856)

(declare-fun Unit!7859 () Unit!7856)

(assert (=> b!253975 (= e!164632 Unit!7859)))

(declare-fun b!253976 () Bool)

(declare-fun res!124350 () Bool)

(assert (=> b!253976 (= res!124350 (= (select (arr!5878 (_keys!6842 thiss!1504)) (index!6789 lt!127313)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!253976 (=> (not res!124350) (not e!164638))))

(declare-fun b!253977 () Bool)

(declare-fun e!164635 () Bool)

(assert (=> b!253977 (= e!164635 (not e!164642))))

(declare-fun res!124342 () Bool)

(assert (=> b!253977 (=> res!124342 e!164642)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!253977 (= res!124342 (not (validMask!0 (mask!10930 thiss!1504))))))

(declare-fun lt!127320 () array!12406)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12406 (_ BitVec 32)) Bool)

(assert (=> b!253977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!127320 (mask!10930 thiss!1504))))

(declare-fun lt!127314 () Unit!7856)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12406 (_ BitVec 32) (_ BitVec 32)) Unit!7856)

(assert (=> b!253977 (= lt!127314 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6842 thiss!1504) index!297 (mask!10930 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12406 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!253977 (= (arrayCountValidKeys!0 lt!127320 #b00000000000000000000000000000000 (size!6225 (_keys!6842 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6842 thiss!1504) #b00000000000000000000000000000000 (size!6225 (_keys!6842 thiss!1504)))))))

(declare-fun lt!127318 () Unit!7856)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12406 (_ BitVec 32) (_ BitVec 64)) Unit!7856)

(assert (=> b!253977 (= lt!127318 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6842 thiss!1504) index!297 key!932))))

(assert (=> b!253977 (arrayNoDuplicates!0 lt!127320 #b00000000000000000000000000000000 Nil!3774)))

(assert (=> b!253977 (= lt!127320 (array!12407 (store (arr!5878 (_keys!6842 thiss!1504)) index!297 key!932) (size!6225 (_keys!6842 thiss!1504))))))

(declare-fun lt!127323 () Unit!7856)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12406 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3777) Unit!7856)

(assert (=> b!253977 (= lt!127323 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6842 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3774))))

(declare-fun lt!127316 () Unit!7856)

(assert (=> b!253977 (= lt!127316 e!164632)))

(declare-fun c!42823 () Bool)

(assert (=> b!253977 (= c!42823 lt!127317)))

(declare-fun arrayContainsKey!0 (array!12406 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!253977 (= lt!127317 (arrayContainsKey!0 (_keys!6842 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!253978 () Bool)

(declare-fun res!124352 () Bool)

(assert (=> b!253978 (=> res!124352 e!164642)))

(assert (=> b!253978 (= res!124352 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6842 thiss!1504) (mask!10930 thiss!1504))))))

(declare-fun b!253979 () Bool)

(declare-fun res!124348 () Bool)

(assert (=> b!253979 (=> res!124348 e!164642)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!253979 (= res!124348 (not (validKeyInArray!0 key!932)))))

(declare-fun bm!23965 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23965 (= call!23968 (inRange!0 (ite c!42821 (index!6786 lt!127313) (index!6789 lt!127313)) (mask!10930 thiss!1504)))))

(declare-fun array_inv!3877 (array!12406) Bool)

(declare-fun array_inv!3878 (array!12404) Bool)

(assert (=> b!253980 (= e!164639 (and tp!23312 tp_is_empty!6537 (array_inv!3877 (_keys!6842 thiss!1504)) (array_inv!3878 (_values!4671 thiss!1504)) e!164629))))

(declare-fun b!253981 () Bool)

(declare-fun Unit!7860 () Unit!7856)

(assert (=> b!253981 (= e!164632 Unit!7860)))

(declare-fun lt!127319 () Unit!7856)

(declare-fun lemmaArrayContainsKeyThenInListMap!218 (array!12406 array!12404 (_ BitVec 32) (_ BitVec 32) V!8363 V!8363 (_ BitVec 64) (_ BitVec 32) Int) Unit!7856)

(assert (=> b!253981 (= lt!127319 (lemmaArrayContainsKeyThenInListMap!218 (_keys!6842 thiss!1504) (_values!4671 thiss!1504) (mask!10930 thiss!1504) (extraKeys!4425 thiss!1504) (zeroValue!4529 thiss!1504) (minValue!4529 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4688 thiss!1504)))))

(assert (=> b!253981 false))

(declare-fun b!253982 () Bool)

(declare-fun e!164640 () Bool)

(assert (=> b!253982 (= e!164640 tp_is_empty!6537)))

(declare-fun b!253983 () Bool)

(declare-fun res!124347 () Bool)

(assert (=> b!253983 (=> (not res!124347) (not e!164634))))

(assert (=> b!253983 (= res!124347 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!253984 () Bool)

(declare-fun e!164633 () Bool)

(assert (=> b!253984 (= e!164633 e!164635)))

(declare-fun res!124345 () Bool)

(assert (=> b!253984 (=> (not res!124345) (not e!164635))))

(assert (=> b!253984 (= res!124345 (inRange!0 index!297 (mask!10930 thiss!1504)))))

(declare-fun lt!127321 () Unit!7856)

(assert (=> b!253984 (= lt!127321 e!164643)))

(declare-fun c!42820 () Bool)

(declare-datatypes ((tuple2!4872 0))(
  ( (tuple2!4873 (_1!2446 (_ BitVec 64)) (_2!2446 V!8363)) )
))
(declare-datatypes ((List!3778 0))(
  ( (Nil!3775) (Cons!3774 (h!4436 tuple2!4872) (t!8833 List!3778)) )
))
(declare-datatypes ((ListLongMap!3799 0))(
  ( (ListLongMap!3800 (toList!1915 List!3778)) )
))
(declare-fun contains!1839 (ListLongMap!3799 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1438 (array!12406 array!12404 (_ BitVec 32) (_ BitVec 32) V!8363 V!8363 (_ BitVec 32) Int) ListLongMap!3799)

(assert (=> b!253984 (= c!42820 (contains!1839 (getCurrentListMap!1438 (_keys!6842 thiss!1504) (_values!4671 thiss!1504) (mask!10930 thiss!1504) (extraKeys!4425 thiss!1504) (zeroValue!4529 thiss!1504) (minValue!4529 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4688 thiss!1504)) key!932))))

(declare-fun mapNonEmpty!11121 () Bool)

(declare-fun tp!23313 () Bool)

(assert (=> mapNonEmpty!11121 (= mapRes!11121 (and tp!23313 e!164640))))

(declare-fun mapKey!11121 () (_ BitVec 32))

(declare-fun mapRest!11121 () (Array (_ BitVec 32) ValueCell!2925))

(declare-fun mapValue!11121 () ValueCell!2925)

(assert (=> mapNonEmpty!11121 (= (arr!5877 (_values!4671 thiss!1504)) (store mapRest!11121 mapKey!11121 mapValue!11121))))

(declare-fun b!253985 () Bool)

(declare-fun res!124349 () Bool)

(assert (=> b!253985 (=> (not res!124349) (not e!164631))))

(assert (=> b!253985 (= res!124349 (= (select (arr!5878 (_keys!6842 thiss!1504)) (index!6786 lt!127313)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!253986 () Bool)

(assert (=> b!253986 (= e!164634 e!164633)))

(declare-fun res!124346 () Bool)

(assert (=> b!253986 (=> (not res!124346) (not e!164633))))

(assert (=> b!253986 (= res!124346 (or (= lt!127313 (MissingZero!1154 index!297)) (= lt!127313 (MissingVacant!1154 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12406 (_ BitVec 32)) SeekEntryResult!1154)

(assert (=> b!253986 (= lt!127313 (seekEntryOrOpen!0 key!932 (_keys!6842 thiss!1504) (mask!10930 thiss!1504)))))

(declare-fun bm!23966 () Bool)

(assert (=> bm!23966 (= call!23969 (arrayContainsKey!0 (_keys!6842 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!253987 () Bool)

(declare-fun res!124340 () Bool)

(assert (=> b!253987 (=> res!124340 e!164642)))

(assert (=> b!253987 (= res!124340 (or (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6225 (_keys!6842 thiss!1504)))))))

(assert (= (and start!24286 res!124351) b!253983))

(assert (= (and b!253983 res!124347) b!253986))

(assert (= (and b!253986 res!124346) b!253984))

(assert (= (and b!253984 c!42820) b!253964))

(assert (= (and b!253984 (not c!42820)) b!253967))

(assert (= (and b!253967 c!42821) b!253972))

(assert (= (and b!253967 (not c!42821)) b!253962))

(assert (= (and b!253972 res!124341) b!253985))

(assert (= (and b!253985 res!124349) b!253973))

(assert (= (and b!253962 c!42822) b!253969))

(assert (= (and b!253962 (not c!42822)) b!253968))

(assert (= (and b!253969 res!124353) b!253976))

(assert (= (and b!253976 res!124350) b!253971))

(assert (= (or b!253972 b!253969) bm!23965))

(assert (= (or b!253973 b!253971) bm!23966))

(assert (= (and b!253984 res!124345) b!253977))

(assert (= (and b!253977 c!42823) b!253981))

(assert (= (and b!253977 (not c!42823)) b!253975))

(assert (= (and b!253977 (not res!124342)) b!253963))

(assert (= (and b!253963 (not res!124344)) b!253978))

(assert (= (and b!253978 (not res!124352)) b!253966))

(assert (= (and b!253966 (not res!124343)) b!253987))

(assert (= (and b!253987 (not res!124340)) b!253979))

(assert (= (and b!253979 (not res!124348)) b!253965))

(assert (= (and b!253974 condMapEmpty!11121) mapIsEmpty!11121))

(assert (= (and b!253974 (not condMapEmpty!11121)) mapNonEmpty!11121))

(assert (= (and mapNonEmpty!11121 ((_ is ValueCellFull!2925) mapValue!11121)) b!253982))

(assert (= (and b!253974 ((_ is ValueCellFull!2925) mapDefault!11121)) b!253970))

(assert (= b!253980 b!253974))

(assert (= start!24286 b!253980))

(declare-fun m!269659 () Bool)

(assert (=> b!253964 m!269659))

(declare-fun m!269661 () Bool)

(assert (=> b!253979 m!269661))

(declare-fun m!269663 () Bool)

(assert (=> b!253984 m!269663))

(declare-fun m!269665 () Bool)

(assert (=> b!253984 m!269665))

(assert (=> b!253984 m!269665))

(declare-fun m!269667 () Bool)

(assert (=> b!253984 m!269667))

(declare-fun m!269669 () Bool)

(assert (=> b!253980 m!269669))

(declare-fun m!269671 () Bool)

(assert (=> b!253980 m!269671))

(declare-fun m!269673 () Bool)

(assert (=> bm!23965 m!269673))

(declare-fun m!269675 () Bool)

(assert (=> b!253966 m!269675))

(declare-fun m!269677 () Bool)

(assert (=> b!253981 m!269677))

(declare-fun m!269679 () Bool)

(assert (=> b!253965 m!269679))

(declare-fun m!269681 () Bool)

(assert (=> b!253977 m!269681))

(declare-fun m!269683 () Bool)

(assert (=> b!253977 m!269683))

(declare-fun m!269685 () Bool)

(assert (=> b!253977 m!269685))

(declare-fun m!269687 () Bool)

(assert (=> b!253977 m!269687))

(declare-fun m!269689 () Bool)

(assert (=> b!253977 m!269689))

(declare-fun m!269691 () Bool)

(assert (=> b!253977 m!269691))

(declare-fun m!269693 () Bool)

(assert (=> b!253977 m!269693))

(declare-fun m!269695 () Bool)

(assert (=> b!253977 m!269695))

(declare-fun m!269697 () Bool)

(assert (=> b!253977 m!269697))

(declare-fun m!269699 () Bool)

(assert (=> b!253977 m!269699))

(declare-fun m!269701 () Bool)

(assert (=> start!24286 m!269701))

(declare-fun m!269703 () Bool)

(assert (=> b!253986 m!269703))

(declare-fun m!269705 () Bool)

(assert (=> b!253967 m!269705))

(declare-fun m!269707 () Bool)

(assert (=> b!253985 m!269707))

(declare-fun m!269709 () Bool)

(assert (=> b!253976 m!269709))

(assert (=> bm!23966 m!269683))

(declare-fun m!269711 () Bool)

(assert (=> b!253978 m!269711))

(declare-fun m!269713 () Bool)

(assert (=> mapNonEmpty!11121 m!269713))

(check-sat (not bm!23966) tp_is_empty!6537 (not start!24286) (not mapNonEmpty!11121) (not b!253964) (not b!253977) (not b!253979) (not b!253966) (not b!253986) (not b_next!6675) (not b!253980) (not b!253981) b_and!13735 (not bm!23965) (not b!253978) (not b!253984) (not b!253967))
(check-sat b_and!13735 (not b_next!6675))

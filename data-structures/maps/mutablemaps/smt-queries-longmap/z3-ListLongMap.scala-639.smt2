; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16196 () Bool)

(assert start!16196)

(declare-fun b!161354 () Bool)

(declare-fun b_free!3645 () Bool)

(declare-fun b_next!3645 () Bool)

(assert (=> b!161354 (= b_free!3645 (not b_next!3645))))

(declare-fun tp!13505 () Bool)

(declare-fun b_and!10077 () Bool)

(assert (=> b!161354 (= tp!13505 b_and!10077)))

(declare-fun b!161352 () Bool)

(declare-datatypes ((Unit!5012 0))(
  ( (Unit!5013) )
))
(declare-fun e!105460 () Unit!5012)

(declare-fun Unit!5014 () Unit!5012)

(assert (=> b!161352 (= e!105460 Unit!5014)))

(declare-fun lt!82226 () Unit!5012)

(declare-datatypes ((V!4243 0))(
  ( (V!4244 (val!1768 Int)) )
))
(declare-datatypes ((ValueCell!1380 0))(
  ( (ValueCellFull!1380 (v!3629 V!4243)) (EmptyCell!1380) )
))
(declare-datatypes ((array!5972 0))(
  ( (array!5973 (arr!2830 (Array (_ BitVec 32) (_ BitVec 64))) (size!3114 (_ BitVec 32))) )
))
(declare-datatypes ((array!5974 0))(
  ( (array!5975 (arr!2831 (Array (_ BitVec 32) ValueCell!1380)) (size!3115 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1668 0))(
  ( (LongMapFixedSize!1669 (defaultEntry!3276 Int) (mask!7866 (_ BitVec 32)) (extraKeys!3017 (_ BitVec 32)) (zeroValue!3119 V!4243) (minValue!3119 V!4243) (_size!883 (_ BitVec 32)) (_keys!5077 array!5972) (_values!3259 array!5974) (_vacant!883 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1668)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!78 (array!5972 array!5974 (_ BitVec 32) (_ BitVec 32) V!4243 V!4243 (_ BitVec 64) Int) Unit!5012)

(assert (=> b!161352 (= lt!82226 (lemmaInListMapThenSeekEntryOrOpenFindsIt!78 (_keys!5077 thiss!1248) (_values!3259 thiss!1248) (mask!7866 thiss!1248) (extraKeys!3017 thiss!1248) (zeroValue!3119 thiss!1248) (minValue!3119 thiss!1248) key!828 (defaultEntry!3276 thiss!1248)))))

(assert (=> b!161352 false))

(declare-fun b!161353 () Bool)

(declare-fun res!76507 () Bool)

(declare-fun e!105458 () Bool)

(assert (=> b!161353 (=> (not res!76507) (not e!105458))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!359 0))(
  ( (MissingZero!359 (index!3604 (_ BitVec 32))) (Found!359 (index!3605 (_ BitVec 32))) (Intermediate!359 (undefined!1171 Bool) (index!3606 (_ BitVec 32)) (x!17815 (_ BitVec 32))) (Undefined!359) (MissingVacant!359 (index!3607 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5972 (_ BitVec 32)) SeekEntryResult!359)

(assert (=> b!161353 (= res!76507 ((_ is Undefined!359) (seekEntryOrOpen!0 key!828 (_keys!5077 thiss!1248) (mask!7866 thiss!1248))))))

(declare-fun mapIsEmpty!5858 () Bool)

(declare-fun mapRes!5858 () Bool)

(assert (=> mapIsEmpty!5858 mapRes!5858))

(declare-fun b!161355 () Bool)

(declare-fun e!105456 () Bool)

(declare-fun e!105461 () Bool)

(assert (=> b!161355 (= e!105456 (and e!105461 mapRes!5858))))

(declare-fun condMapEmpty!5858 () Bool)

(declare-fun mapDefault!5858 () ValueCell!1380)

(assert (=> b!161355 (= condMapEmpty!5858 (= (arr!2831 (_values!3259 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1380)) mapDefault!5858)))))

(declare-fun b!161356 () Bool)

(declare-fun res!76508 () Bool)

(assert (=> b!161356 (=> (not res!76508) (not e!105458))))

(assert (=> b!161356 (= res!76508 (not (= key!828 (bvneg key!828))))))

(declare-fun b!161357 () Bool)

(assert (=> b!161357 (= e!105458 false)))

(declare-fun lt!82225 () Unit!5012)

(assert (=> b!161357 (= lt!82225 e!105460)))

(declare-fun c!29937 () Bool)

(declare-datatypes ((tuple2!2942 0))(
  ( (tuple2!2943 (_1!1481 (_ BitVec 64)) (_2!1481 V!4243)) )
))
(declare-datatypes ((List!1993 0))(
  ( (Nil!1990) (Cons!1989 (h!2602 tuple2!2942) (t!6803 List!1993)) )
))
(declare-datatypes ((ListLongMap!1951 0))(
  ( (ListLongMap!1952 (toList!991 List!1993)) )
))
(declare-fun contains!1021 (ListLongMap!1951 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!651 (array!5972 array!5974 (_ BitVec 32) (_ BitVec 32) V!4243 V!4243 (_ BitVec 32) Int) ListLongMap!1951)

(assert (=> b!161357 (= c!29937 (contains!1021 (getCurrentListMap!651 (_keys!5077 thiss!1248) (_values!3259 thiss!1248) (mask!7866 thiss!1248) (extraKeys!3017 thiss!1248) (zeroValue!3119 thiss!1248) (minValue!3119 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3276 thiss!1248)) key!828))))

(declare-fun mapNonEmpty!5858 () Bool)

(declare-fun tp!13504 () Bool)

(declare-fun e!105457 () Bool)

(assert (=> mapNonEmpty!5858 (= mapRes!5858 (and tp!13504 e!105457))))

(declare-fun mapRest!5858 () (Array (_ BitVec 32) ValueCell!1380))

(declare-fun mapValue!5858 () ValueCell!1380)

(declare-fun mapKey!5858 () (_ BitVec 32))

(assert (=> mapNonEmpty!5858 (= (arr!2831 (_values!3259 thiss!1248)) (store mapRest!5858 mapKey!5858 mapValue!5858))))

(declare-fun b!161358 () Bool)

(declare-fun tp_is_empty!3447 () Bool)

(assert (=> b!161358 (= e!105457 tp_is_empty!3447)))

(declare-fun b!161359 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!76 (array!5972 array!5974 (_ BitVec 32) (_ BitVec 32) V!4243 V!4243 (_ BitVec 64) Int) Unit!5012)

(assert (=> b!161359 (= e!105460 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!76 (_keys!5077 thiss!1248) (_values!3259 thiss!1248) (mask!7866 thiss!1248) (extraKeys!3017 thiss!1248) (zeroValue!3119 thiss!1248) (minValue!3119 thiss!1248) key!828 (defaultEntry!3276 thiss!1248)))))

(declare-fun b!161360 () Bool)

(assert (=> b!161360 (= e!105461 tp_is_empty!3447)))

(declare-fun e!105459 () Bool)

(declare-fun array_inv!1795 (array!5972) Bool)

(declare-fun array_inv!1796 (array!5974) Bool)

(assert (=> b!161354 (= e!105459 (and tp!13505 tp_is_empty!3447 (array_inv!1795 (_keys!5077 thiss!1248)) (array_inv!1796 (_values!3259 thiss!1248)) e!105456))))

(declare-fun res!76506 () Bool)

(assert (=> start!16196 (=> (not res!76506) (not e!105458))))

(declare-fun valid!758 (LongMapFixedSize!1668) Bool)

(assert (=> start!16196 (= res!76506 (valid!758 thiss!1248))))

(assert (=> start!16196 e!105458))

(assert (=> start!16196 e!105459))

(assert (=> start!16196 true))

(assert (= (and start!16196 res!76506) b!161356))

(assert (= (and b!161356 res!76508) b!161353))

(assert (= (and b!161353 res!76507) b!161357))

(assert (= (and b!161357 c!29937) b!161352))

(assert (= (and b!161357 (not c!29937)) b!161359))

(assert (= (and b!161355 condMapEmpty!5858) mapIsEmpty!5858))

(assert (= (and b!161355 (not condMapEmpty!5858)) mapNonEmpty!5858))

(assert (= (and mapNonEmpty!5858 ((_ is ValueCellFull!1380) mapValue!5858)) b!161358))

(assert (= (and b!161355 ((_ is ValueCellFull!1380) mapDefault!5858)) b!161360))

(assert (= b!161354 b!161355))

(assert (= start!16196 b!161354))

(declare-fun m!192881 () Bool)

(assert (=> b!161359 m!192881))

(declare-fun m!192883 () Bool)

(assert (=> mapNonEmpty!5858 m!192883))

(declare-fun m!192885 () Bool)

(assert (=> b!161352 m!192885))

(declare-fun m!192887 () Bool)

(assert (=> b!161353 m!192887))

(declare-fun m!192889 () Bool)

(assert (=> start!16196 m!192889))

(declare-fun m!192891 () Bool)

(assert (=> b!161357 m!192891))

(assert (=> b!161357 m!192891))

(declare-fun m!192893 () Bool)

(assert (=> b!161357 m!192893))

(declare-fun m!192895 () Bool)

(assert (=> b!161354 m!192895))

(declare-fun m!192897 () Bool)

(assert (=> b!161354 m!192897))

(check-sat (not b!161353) (not mapNonEmpty!5858) (not b_next!3645) (not b!161352) (not start!16196) (not b!161354) (not b!161357) (not b!161359) b_and!10077 tp_is_empty!3447)
(check-sat b_and!10077 (not b_next!3645))

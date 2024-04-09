; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18084 () Bool)

(assert start!18084)

(declare-fun b!179924 () Bool)

(declare-fun b_free!4443 () Bool)

(declare-fun b_next!4443 () Bool)

(assert (=> b!179924 (= b_free!4443 (not b_next!4443))))

(declare-fun tp!16059 () Bool)

(declare-fun b_and!10995 () Bool)

(assert (=> b!179924 (= tp!16059 b_and!10995)))

(declare-fun b!179921 () Bool)

(declare-fun e!118507 () Bool)

(assert (=> b!179921 (= e!118507 false)))

(declare-datatypes ((V!5267 0))(
  ( (V!5268 (val!2152 Int)) )
))
(declare-datatypes ((tuple2!3340 0))(
  ( (tuple2!3341 (_1!1680 (_ BitVec 64)) (_2!1680 V!5267)) )
))
(declare-datatypes ((List!2306 0))(
  ( (Nil!2303) (Cons!2302 (h!2927 tuple2!3340) (t!7162 List!2306)) )
))
(declare-datatypes ((ListLongMap!2281 0))(
  ( (ListLongMap!2282 (toList!1156 List!2306)) )
))
(declare-fun lt!88884 () ListLongMap!2281)

(declare-datatypes ((ValueCell!1764 0))(
  ( (ValueCellFull!1764 (v!4037 V!5267)) (EmptyCell!1764) )
))
(declare-datatypes ((array!7598 0))(
  ( (array!7599 (arr!3598 (Array (_ BitVec 32) (_ BitVec 64))) (size!3906 (_ BitVec 32))) )
))
(declare-datatypes ((array!7600 0))(
  ( (array!7601 (arr!3599 (Array (_ BitVec 32) ValueCell!1764)) (size!3907 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2436 0))(
  ( (LongMapFixedSize!2437 (defaultEntry!3694 Int) (mask!8687 (_ BitVec 32)) (extraKeys!3431 (_ BitVec 32)) (zeroValue!3535 V!5267) (minValue!3535 V!5267) (_size!1267 (_ BitVec 32)) (_keys!5585 array!7598) (_values!3677 array!7600) (_vacant!1267 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2436)

(declare-fun map!1927 (LongMapFixedSize!2436) ListLongMap!2281)

(assert (=> b!179921 (= lt!88884 (map!1927 thiss!1248))))

(declare-datatypes ((Unit!5472 0))(
  ( (Unit!5473) )
))
(declare-fun lt!88883 () Unit!5472)

(declare-fun e!118504 () Unit!5472)

(assert (=> b!179921 (= lt!88883 e!118504)))

(declare-fun c!32224 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun contains!1226 (ListLongMap!2281 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!803 (array!7598 array!7600 (_ BitVec 32) (_ BitVec 32) V!5267 V!5267 (_ BitVec 32) Int) ListLongMap!2281)

(assert (=> b!179921 (= c!32224 (contains!1226 (getCurrentListMap!803 (_keys!5585 thiss!1248) (_values!3677 thiss!1248) (mask!8687 thiss!1248) (extraKeys!3431 thiss!1248) (zeroValue!3535 thiss!1248) (minValue!3535 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3694 thiss!1248)) key!828))))

(declare-fun res!85249 () Bool)

(assert (=> start!18084 (=> (not res!85249) (not e!118507))))

(declare-fun valid!1007 (LongMapFixedSize!2436) Bool)

(assert (=> start!18084 (= res!85249 (valid!1007 thiss!1248))))

(assert (=> start!18084 e!118507))

(declare-fun e!118506 () Bool)

(assert (=> start!18084 e!118506))

(assert (=> start!18084 true))

(declare-fun b!179922 () Bool)

(declare-fun res!85247 () Bool)

(assert (=> b!179922 (=> (not res!85247) (not e!118507))))

(assert (=> b!179922 (= res!85247 (not (= key!828 (bvneg key!828))))))

(declare-fun b!179923 () Bool)

(declare-fun e!118509 () Bool)

(declare-fun e!118505 () Bool)

(declare-fun mapRes!7216 () Bool)

(assert (=> b!179923 (= e!118509 (and e!118505 mapRes!7216))))

(declare-fun condMapEmpty!7216 () Bool)

(declare-fun mapDefault!7216 () ValueCell!1764)

(assert (=> b!179923 (= condMapEmpty!7216 (= (arr!3599 (_values!3677 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1764)) mapDefault!7216)))))

(declare-fun tp_is_empty!4215 () Bool)

(declare-fun array_inv!2307 (array!7598) Bool)

(declare-fun array_inv!2308 (array!7600) Bool)

(assert (=> b!179924 (= e!118506 (and tp!16059 tp_is_empty!4215 (array_inv!2307 (_keys!5585 thiss!1248)) (array_inv!2308 (_values!3677 thiss!1248)) e!118509))))

(declare-fun mapIsEmpty!7216 () Bool)

(assert (=> mapIsEmpty!7216 mapRes!7216))

(declare-fun b!179925 () Bool)

(declare-fun e!118508 () Bool)

(assert (=> b!179925 (= e!118508 tp_is_empty!4215)))

(declare-fun b!179926 () Bool)

(declare-fun Unit!5474 () Unit!5472)

(assert (=> b!179926 (= e!118504 Unit!5474)))

(declare-fun lt!88882 () Unit!5472)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!140 (array!7598 array!7600 (_ BitVec 32) (_ BitVec 32) V!5267 V!5267 (_ BitVec 64) Int) Unit!5472)

(assert (=> b!179926 (= lt!88882 (lemmaInListMapThenSeekEntryOrOpenFindsIt!140 (_keys!5585 thiss!1248) (_values!3677 thiss!1248) (mask!8687 thiss!1248) (extraKeys!3431 thiss!1248) (zeroValue!3535 thiss!1248) (minValue!3535 thiss!1248) key!828 (defaultEntry!3694 thiss!1248)))))

(assert (=> b!179926 false))

(declare-fun b!179927 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!138 (array!7598 array!7600 (_ BitVec 32) (_ BitVec 32) V!5267 V!5267 (_ BitVec 64) Int) Unit!5472)

(assert (=> b!179927 (= e!118504 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!138 (_keys!5585 thiss!1248) (_values!3677 thiss!1248) (mask!8687 thiss!1248) (extraKeys!3431 thiss!1248) (zeroValue!3535 thiss!1248) (minValue!3535 thiss!1248) key!828 (defaultEntry!3694 thiss!1248)))))

(declare-fun b!179928 () Bool)

(declare-fun res!85248 () Bool)

(assert (=> b!179928 (=> (not res!85248) (not e!118507))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!597 0))(
  ( (MissingZero!597 (index!4556 (_ BitVec 32))) (Found!597 (index!4557 (_ BitVec 32))) (Intermediate!597 (undefined!1409 Bool) (index!4558 (_ BitVec 32)) (x!19679 (_ BitVec 32))) (Undefined!597) (MissingVacant!597 (index!4559 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7598 (_ BitVec 32)) SeekEntryResult!597)

(assert (=> b!179928 (= res!85248 ((_ is Undefined!597) (seekEntryOrOpen!0 key!828 (_keys!5585 thiss!1248) (mask!8687 thiss!1248))))))

(declare-fun b!179929 () Bool)

(assert (=> b!179929 (= e!118505 tp_is_empty!4215)))

(declare-fun mapNonEmpty!7216 () Bool)

(declare-fun tp!16060 () Bool)

(assert (=> mapNonEmpty!7216 (= mapRes!7216 (and tp!16060 e!118508))))

(declare-fun mapKey!7216 () (_ BitVec 32))

(declare-fun mapValue!7216 () ValueCell!1764)

(declare-fun mapRest!7216 () (Array (_ BitVec 32) ValueCell!1764))

(assert (=> mapNonEmpty!7216 (= (arr!3599 (_values!3677 thiss!1248)) (store mapRest!7216 mapKey!7216 mapValue!7216))))

(assert (= (and start!18084 res!85249) b!179922))

(assert (= (and b!179922 res!85247) b!179928))

(assert (= (and b!179928 res!85248) b!179921))

(assert (= (and b!179921 c!32224) b!179926))

(assert (= (and b!179921 (not c!32224)) b!179927))

(assert (= (and b!179923 condMapEmpty!7216) mapIsEmpty!7216))

(assert (= (and b!179923 (not condMapEmpty!7216)) mapNonEmpty!7216))

(assert (= (and mapNonEmpty!7216 ((_ is ValueCellFull!1764) mapValue!7216)) b!179925))

(assert (= (and b!179923 ((_ is ValueCellFull!1764) mapDefault!7216)) b!179929))

(assert (= b!179924 b!179923))

(assert (= start!18084 b!179924))

(declare-fun m!208023 () Bool)

(assert (=> b!179921 m!208023))

(declare-fun m!208025 () Bool)

(assert (=> b!179921 m!208025))

(assert (=> b!179921 m!208025))

(declare-fun m!208027 () Bool)

(assert (=> b!179921 m!208027))

(declare-fun m!208029 () Bool)

(assert (=> b!179927 m!208029))

(declare-fun m!208031 () Bool)

(assert (=> start!18084 m!208031))

(declare-fun m!208033 () Bool)

(assert (=> mapNonEmpty!7216 m!208033))

(declare-fun m!208035 () Bool)

(assert (=> b!179928 m!208035))

(declare-fun m!208037 () Bool)

(assert (=> b!179926 m!208037))

(declare-fun m!208039 () Bool)

(assert (=> b!179924 m!208039))

(declare-fun m!208041 () Bool)

(assert (=> b!179924 m!208041))

(check-sat b_and!10995 (not b_next!4443) (not b!179927) (not start!18084) (not b!179924) tp_is_empty!4215 (not b!179926) (not mapNonEmpty!7216) (not b!179921) (not b!179928))
(check-sat b_and!10995 (not b_next!4443))

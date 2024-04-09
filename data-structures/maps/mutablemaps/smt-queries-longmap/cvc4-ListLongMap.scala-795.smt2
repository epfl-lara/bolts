; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19014 () Bool)

(assert start!19014)

(declare-fun b!187338 () Bool)

(declare-fun b_free!4613 () Bool)

(declare-fun b_next!4613 () Bool)

(assert (=> b!187338 (= b_free!4613 (not b_next!4613))))

(declare-fun tp!16652 () Bool)

(declare-fun b_and!11249 () Bool)

(assert (=> b!187338 (= tp!16652 b_and!11249)))

(declare-fun res!88601 () Bool)

(declare-fun e!123323 () Bool)

(assert (=> start!19014 (=> (not res!88601) (not e!123323))))

(declare-datatypes ((V!5493 0))(
  ( (V!5494 (val!2237 Int)) )
))
(declare-datatypes ((ValueCell!1849 0))(
  ( (ValueCellFull!1849 (v!4148 V!5493)) (EmptyCell!1849) )
))
(declare-datatypes ((array!7986 0))(
  ( (array!7987 (arr!3768 (Array (_ BitVec 32) (_ BitVec 64))) (size!4086 (_ BitVec 32))) )
))
(declare-datatypes ((array!7988 0))(
  ( (array!7989 (arr!3769 (Array (_ BitVec 32) ValueCell!1849)) (size!4087 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2606 0))(
  ( (LongMapFixedSize!2607 (defaultEntry!3823 Int) (mask!8968 (_ BitVec 32)) (extraKeys!3560 (_ BitVec 32)) (zeroValue!3664 V!5493) (minValue!3664 V!5493) (_size!1352 (_ BitVec 32)) (_keys!5774 array!7986) (_values!3806 array!7988) (_vacant!1352 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2606)

(declare-fun valid!1064 (LongMapFixedSize!2606) Bool)

(assert (=> start!19014 (= res!88601 (valid!1064 thiss!1248))))

(assert (=> start!19014 e!123323))

(declare-fun e!123321 () Bool)

(assert (=> start!19014 e!123321))

(assert (=> start!19014 true))

(declare-fun e!123328 () Bool)

(declare-fun tp_is_empty!4385 () Bool)

(declare-fun array_inv!2429 (array!7986) Bool)

(declare-fun array_inv!2430 (array!7988) Bool)

(assert (=> b!187338 (= e!123321 (and tp!16652 tp_is_empty!4385 (array_inv!2429 (_keys!5774 thiss!1248)) (array_inv!2430 (_values!3806 thiss!1248)) e!123328))))

(declare-fun b!187339 () Bool)

(declare-fun e!123319 () Bool)

(assert (=> b!187339 (= e!123319 (and (= (size!4087 (_values!3806 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8968 thiss!1248))) (= (size!4086 (_keys!5774 thiss!1248)) (size!4087 (_values!3806 thiss!1248))) (bvsge (mask!8968 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3560 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!187340 () Bool)

(declare-fun e!123325 () Bool)

(assert (=> b!187340 (= e!123325 tp_is_empty!4385)))

(declare-fun mapNonEmpty!7553 () Bool)

(declare-fun mapRes!7553 () Bool)

(declare-fun tp!16651 () Bool)

(assert (=> mapNonEmpty!7553 (= mapRes!7553 (and tp!16651 e!123325))))

(declare-fun mapKey!7553 () (_ BitVec 32))

(declare-fun mapRest!7553 () (Array (_ BitVec 32) ValueCell!1849))

(declare-fun mapValue!7553 () ValueCell!1849)

(assert (=> mapNonEmpty!7553 (= (arr!3769 (_values!3806 thiss!1248)) (store mapRest!7553 mapKey!7553 mapValue!7553))))

(declare-fun e!123327 () Bool)

(declare-fun b!187341 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!658 0))(
  ( (MissingZero!658 (index!4802 (_ BitVec 32))) (Found!658 (index!4803 (_ BitVec 32))) (Intermediate!658 (undefined!1470 Bool) (index!4804 (_ BitVec 32)) (x!20292 (_ BitVec 32))) (Undefined!658) (MissingVacant!658 (index!4805 (_ BitVec 32))) )
))
(declare-fun lt!92716 () SeekEntryResult!658)

(assert (=> b!187341 (= e!123327 (= (select (arr!3768 (_keys!5774 thiss!1248)) (index!4803 lt!92716)) key!828))))

(declare-fun mapIsEmpty!7553 () Bool)

(assert (=> mapIsEmpty!7553 mapRes!7553))

(declare-fun b!187342 () Bool)

(declare-datatypes ((Unit!5646 0))(
  ( (Unit!5647) )
))
(declare-fun e!123322 () Unit!5646)

(declare-fun lt!92715 () Unit!5646)

(assert (=> b!187342 (= e!123322 lt!92715)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!151 (array!7986 array!7988 (_ BitVec 32) (_ BitVec 32) V!5493 V!5493 (_ BitVec 64) Int) Unit!5646)

(assert (=> b!187342 (= lt!92715 (lemmaInListMapThenSeekEntryOrOpenFindsIt!151 (_keys!5774 thiss!1248) (_values!3806 thiss!1248) (mask!8968 thiss!1248) (extraKeys!3560 thiss!1248) (zeroValue!3664 thiss!1248) (minValue!3664 thiss!1248) key!828 (defaultEntry!3823 thiss!1248)))))

(declare-fun res!88598 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!187342 (= res!88598 (inRange!0 (index!4803 lt!92716) (mask!8968 thiss!1248)))))

(assert (=> b!187342 (=> (not res!88598) (not e!123327))))

(assert (=> b!187342 e!123327))

(declare-fun b!187343 () Bool)

(declare-fun e!123320 () Bool)

(assert (=> b!187343 (= e!123323 e!123320)))

(declare-fun res!88599 () Bool)

(assert (=> b!187343 (=> (not res!88599) (not e!123320))))

(assert (=> b!187343 (= res!88599 (and (not (is-Undefined!658 lt!92716)) (not (is-MissingVacant!658 lt!92716)) (not (is-MissingZero!658 lt!92716)) (is-Found!658 lt!92716)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7986 (_ BitVec 32)) SeekEntryResult!658)

(assert (=> b!187343 (= lt!92716 (seekEntryOrOpen!0 key!828 (_keys!5774 thiss!1248) (mask!8968 thiss!1248)))))

(declare-fun b!187344 () Bool)

(declare-fun res!88600 () Bool)

(assert (=> b!187344 (=> (not res!88600) (not e!123323))))

(assert (=> b!187344 (= res!88600 (not (= key!828 (bvneg key!828))))))

(declare-fun b!187345 () Bool)

(declare-fun e!123324 () Bool)

(assert (=> b!187345 (= e!123324 tp_is_empty!4385)))

(declare-fun b!187346 () Bool)

(declare-fun Unit!5648 () Unit!5646)

(assert (=> b!187346 (= e!123322 Unit!5648)))

(declare-fun lt!92717 () Unit!5646)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!152 (array!7986 array!7988 (_ BitVec 32) (_ BitVec 32) V!5493 V!5493 (_ BitVec 64) Int) Unit!5646)

(assert (=> b!187346 (= lt!92717 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!152 (_keys!5774 thiss!1248) (_values!3806 thiss!1248) (mask!8968 thiss!1248) (extraKeys!3560 thiss!1248) (zeroValue!3664 thiss!1248) (minValue!3664 thiss!1248) key!828 (defaultEntry!3823 thiss!1248)))))

(assert (=> b!187346 false))

(declare-fun b!187347 () Bool)

(assert (=> b!187347 (= e!123328 (and e!123324 mapRes!7553))))

(declare-fun condMapEmpty!7553 () Bool)

(declare-fun mapDefault!7553 () ValueCell!1849)


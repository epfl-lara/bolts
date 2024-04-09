; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18082 () Bool)

(assert start!18082)

(declare-fun b!179894 () Bool)

(declare-fun b_free!4441 () Bool)

(declare-fun b_next!4441 () Bool)

(assert (=> b!179894 (= b_free!4441 (not b_next!4441))))

(declare-fun tp!16054 () Bool)

(declare-fun b_and!10993 () Bool)

(assert (=> b!179894 (= tp!16054 b_and!10993)))

(declare-fun e!118487 () Bool)

(declare-fun e!118486 () Bool)

(declare-fun tp_is_empty!4213 () Bool)

(declare-datatypes ((V!5265 0))(
  ( (V!5266 (val!2151 Int)) )
))
(declare-datatypes ((ValueCell!1763 0))(
  ( (ValueCellFull!1763 (v!4036 V!5265)) (EmptyCell!1763) )
))
(declare-datatypes ((array!7594 0))(
  ( (array!7595 (arr!3596 (Array (_ BitVec 32) (_ BitVec 64))) (size!3904 (_ BitVec 32))) )
))
(declare-datatypes ((array!7596 0))(
  ( (array!7597 (arr!3597 (Array (_ BitVec 32) ValueCell!1763)) (size!3905 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2434 0))(
  ( (LongMapFixedSize!2435 (defaultEntry!3693 Int) (mask!8686 (_ BitVec 32)) (extraKeys!3430 (_ BitVec 32)) (zeroValue!3534 V!5265) (minValue!3534 V!5265) (_size!1266 (_ BitVec 32)) (_keys!5584 array!7594) (_values!3676 array!7596) (_vacant!1266 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2434)

(declare-fun array_inv!2305 (array!7594) Bool)

(declare-fun array_inv!2306 (array!7596) Bool)

(assert (=> b!179894 (= e!118486 (and tp!16054 tp_is_empty!4213 (array_inv!2305 (_keys!5584 thiss!1248)) (array_inv!2306 (_values!3676 thiss!1248)) e!118487))))

(declare-fun b!179895 () Bool)

(declare-datatypes ((Unit!5469 0))(
  ( (Unit!5470) )
))
(declare-fun e!118482 () Unit!5469)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!137 (array!7594 array!7596 (_ BitVec 32) (_ BitVec 32) V!5265 V!5265 (_ BitVec 64) Int) Unit!5469)

(assert (=> b!179895 (= e!118482 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!137 (_keys!5584 thiss!1248) (_values!3676 thiss!1248) (mask!8686 thiss!1248) (extraKeys!3430 thiss!1248) (zeroValue!3534 thiss!1248) (minValue!3534 thiss!1248) key!828 (defaultEntry!3693 thiss!1248)))))

(declare-fun b!179896 () Bool)

(declare-fun res!85240 () Bool)

(declare-fun e!118483 () Bool)

(assert (=> b!179896 (=> (not res!85240) (not e!118483))))

(assert (=> b!179896 (= res!85240 (not (= key!828 (bvneg key!828))))))

(declare-fun b!179897 () Bool)

(declare-fun e!118485 () Bool)

(assert (=> b!179897 (= e!118485 tp_is_empty!4213)))

(declare-fun b!179898 () Bool)

(declare-fun Unit!5471 () Unit!5469)

(assert (=> b!179898 (= e!118482 Unit!5471)))

(declare-fun lt!88874 () Unit!5469)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!139 (array!7594 array!7596 (_ BitVec 32) (_ BitVec 32) V!5265 V!5265 (_ BitVec 64) Int) Unit!5469)

(assert (=> b!179898 (= lt!88874 (lemmaInListMapThenSeekEntryOrOpenFindsIt!139 (_keys!5584 thiss!1248) (_values!3676 thiss!1248) (mask!8686 thiss!1248) (extraKeys!3430 thiss!1248) (zeroValue!3534 thiss!1248) (minValue!3534 thiss!1248) key!828 (defaultEntry!3693 thiss!1248)))))

(assert (=> b!179898 false))

(declare-fun mapNonEmpty!7213 () Bool)

(declare-fun mapRes!7213 () Bool)

(declare-fun tp!16053 () Bool)

(assert (=> mapNonEmpty!7213 (= mapRes!7213 (and tp!16053 e!118485))))

(declare-fun mapKey!7213 () (_ BitVec 32))

(declare-fun mapValue!7213 () ValueCell!1763)

(declare-fun mapRest!7213 () (Array (_ BitVec 32) ValueCell!1763))

(assert (=> mapNonEmpty!7213 (= (arr!3597 (_values!3676 thiss!1248)) (store mapRest!7213 mapKey!7213 mapValue!7213))))

(declare-fun res!85238 () Bool)

(assert (=> start!18082 (=> (not res!85238) (not e!118483))))

(declare-fun valid!1006 (LongMapFixedSize!2434) Bool)

(assert (=> start!18082 (= res!85238 (valid!1006 thiss!1248))))

(assert (=> start!18082 e!118483))

(assert (=> start!18082 e!118486))

(assert (=> start!18082 true))

(declare-fun mapIsEmpty!7213 () Bool)

(assert (=> mapIsEmpty!7213 mapRes!7213))

(declare-fun b!179899 () Bool)

(assert (=> b!179899 (= e!118483 false)))

(declare-datatypes ((tuple2!3338 0))(
  ( (tuple2!3339 (_1!1679 (_ BitVec 64)) (_2!1679 V!5265)) )
))
(declare-datatypes ((List!2305 0))(
  ( (Nil!2302) (Cons!2301 (h!2926 tuple2!3338) (t!7161 List!2305)) )
))
(declare-datatypes ((ListLongMap!2279 0))(
  ( (ListLongMap!2280 (toList!1155 List!2305)) )
))
(declare-fun lt!88873 () ListLongMap!2279)

(declare-fun map!1926 (LongMapFixedSize!2434) ListLongMap!2279)

(assert (=> b!179899 (= lt!88873 (map!1926 thiss!1248))))

(declare-fun lt!88875 () Unit!5469)

(assert (=> b!179899 (= lt!88875 e!118482)))

(declare-fun c!32221 () Bool)

(declare-fun contains!1225 (ListLongMap!2279 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!802 (array!7594 array!7596 (_ BitVec 32) (_ BitVec 32) V!5265 V!5265 (_ BitVec 32) Int) ListLongMap!2279)

(assert (=> b!179899 (= c!32221 (contains!1225 (getCurrentListMap!802 (_keys!5584 thiss!1248) (_values!3676 thiss!1248) (mask!8686 thiss!1248) (extraKeys!3430 thiss!1248) (zeroValue!3534 thiss!1248) (minValue!3534 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3693 thiss!1248)) key!828))))

(declare-fun b!179900 () Bool)

(declare-fun res!85239 () Bool)

(assert (=> b!179900 (=> (not res!85239) (not e!118483))))

(declare-datatypes ((SeekEntryResult!596 0))(
  ( (MissingZero!596 (index!4552 (_ BitVec 32))) (Found!596 (index!4553 (_ BitVec 32))) (Intermediate!596 (undefined!1408 Bool) (index!4554 (_ BitVec 32)) (x!19678 (_ BitVec 32))) (Undefined!596) (MissingVacant!596 (index!4555 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7594 (_ BitVec 32)) SeekEntryResult!596)

(assert (=> b!179900 (= res!85239 (is-Undefined!596 (seekEntryOrOpen!0 key!828 (_keys!5584 thiss!1248) (mask!8686 thiss!1248))))))

(declare-fun b!179901 () Bool)

(declare-fun e!118484 () Bool)

(assert (=> b!179901 (= e!118487 (and e!118484 mapRes!7213))))

(declare-fun condMapEmpty!7213 () Bool)

(declare-fun mapDefault!7213 () ValueCell!1763)


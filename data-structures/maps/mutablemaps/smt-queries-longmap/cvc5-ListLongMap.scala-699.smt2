; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16710 () Bool)

(assert start!16710)

(declare-fun b!167331 () Bool)

(declare-fun b_free!4003 () Bool)

(declare-fun b_next!4003 () Bool)

(assert (=> b!167331 (= b_free!4003 (not b_next!4003))))

(declare-fun tp!14609 () Bool)

(declare-fun b_and!10435 () Bool)

(assert (=> b!167331 (= tp!14609 b_and!10435)))

(declare-fun mapNonEmpty!6426 () Bool)

(declare-fun mapRes!6426 () Bool)

(declare-fun tp!14610 () Bool)

(declare-fun e!109893 () Bool)

(assert (=> mapNonEmpty!6426 (= mapRes!6426 (and tp!14610 e!109893))))

(declare-datatypes ((V!4721 0))(
  ( (V!4722 (val!1947 Int)) )
))
(declare-datatypes ((ValueCell!1559 0))(
  ( (ValueCellFull!1559 (v!3808 V!4721)) (EmptyCell!1559) )
))
(declare-fun mapValue!6426 () ValueCell!1559)

(declare-fun mapRest!6426 () (Array (_ BitVec 32) ValueCell!1559))

(declare-fun mapKey!6426 () (_ BitVec 32))

(declare-datatypes ((array!6706 0))(
  ( (array!6707 (arr!3188 (Array (_ BitVec 32) (_ BitVec 64))) (size!3476 (_ BitVec 32))) )
))
(declare-datatypes ((array!6708 0))(
  ( (array!6709 (arr!3189 (Array (_ BitVec 32) ValueCell!1559)) (size!3477 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2026 0))(
  ( (LongMapFixedSize!2027 (defaultEntry!3455 Int) (mask!8202 (_ BitVec 32)) (extraKeys!3196 (_ BitVec 32)) (zeroValue!3298 V!4721) (minValue!3298 V!4721) (_size!1062 (_ BitVec 32)) (_keys!5280 array!6706) (_values!3438 array!6708) (_vacant!1062 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2026)

(assert (=> mapNonEmpty!6426 (= (arr!3189 (_values!3438 thiss!1248)) (store mapRest!6426 mapKey!6426 mapValue!6426))))

(declare-fun b!167326 () Bool)

(declare-fun e!109891 () Bool)

(declare-fun tp_is_empty!3805 () Bool)

(assert (=> b!167326 (= e!109891 tp_is_empty!3805)))

(declare-fun b!167327 () Bool)

(declare-fun e!109900 () Bool)

(declare-fun e!109897 () Bool)

(assert (=> b!167327 (= e!109900 e!109897)))

(declare-fun res!79597 () Bool)

(assert (=> b!167327 (=> (not res!79597) (not e!109897))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!167327 (= res!79597 (validMask!0 (mask!8202 thiss!1248)))))

(declare-datatypes ((Unit!5120 0))(
  ( (Unit!5121) )
))
(declare-fun lt!83690 () Unit!5120)

(declare-fun e!109894 () Unit!5120)

(assert (=> b!167327 (= lt!83690 e!109894)))

(declare-fun c!30267 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3136 0))(
  ( (tuple2!3137 (_1!1578 (_ BitVec 64)) (_2!1578 V!4721)) )
))
(declare-datatypes ((List!2147 0))(
  ( (Nil!2144) (Cons!2143 (h!2760 tuple2!3136) (t!6957 List!2147)) )
))
(declare-datatypes ((ListLongMap!2105 0))(
  ( (ListLongMap!2106 (toList!1068 List!2147)) )
))
(declare-fun contains!1104 (ListLongMap!2105 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!721 (array!6706 array!6708 (_ BitVec 32) (_ BitVec 32) V!4721 V!4721 (_ BitVec 32) Int) ListLongMap!2105)

(assert (=> b!167327 (= c!30267 (contains!1104 (getCurrentListMap!721 (_keys!5280 thiss!1248) (_values!3438 thiss!1248) (mask!8202 thiss!1248) (extraKeys!3196 thiss!1248) (zeroValue!3298 thiss!1248) (minValue!3298 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3455 thiss!1248)) key!828))))

(declare-fun b!167328 () Bool)

(assert (=> b!167328 (= e!109893 tp_is_empty!3805)))

(declare-fun res!79601 () Bool)

(declare-fun e!109892 () Bool)

(assert (=> start!16710 (=> (not res!79601) (not e!109892))))

(declare-fun valid!877 (LongMapFixedSize!2026) Bool)

(assert (=> start!16710 (= res!79601 (valid!877 thiss!1248))))

(assert (=> start!16710 e!109892))

(declare-fun e!109896 () Bool)

(assert (=> start!16710 e!109896))

(assert (=> start!16710 true))

(declare-fun mapIsEmpty!6426 () Bool)

(assert (=> mapIsEmpty!6426 mapRes!6426))

(declare-fun b!167329 () Bool)

(declare-fun res!79600 () Bool)

(assert (=> b!167329 (=> (not res!79600) (not e!109892))))

(assert (=> b!167329 (= res!79600 (not (= key!828 (bvneg key!828))))))

(declare-fun b!167330 () Bool)

(assert (=> b!167330 (= e!109897 false)))

(declare-fun lt!83687 () Bool)

(declare-datatypes ((List!2148 0))(
  ( (Nil!2145) (Cons!2144 (h!2761 (_ BitVec 64)) (t!6958 List!2148)) )
))
(declare-fun arrayNoDuplicates!0 (array!6706 (_ BitVec 32) List!2148) Bool)

(assert (=> b!167330 (= lt!83687 (arrayNoDuplicates!0 (_keys!5280 thiss!1248) #b00000000000000000000000000000000 Nil!2145))))

(declare-fun e!109898 () Bool)

(declare-fun array_inv!2045 (array!6706) Bool)

(declare-fun array_inv!2046 (array!6708) Bool)

(assert (=> b!167331 (= e!109896 (and tp!14609 tp_is_empty!3805 (array_inv!2045 (_keys!5280 thiss!1248)) (array_inv!2046 (_values!3438 thiss!1248)) e!109898))))

(declare-fun b!167332 () Bool)

(declare-fun res!79596 () Bool)

(assert (=> b!167332 (=> (not res!79596) (not e!109897))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6706 (_ BitVec 32)) Bool)

(assert (=> b!167332 (= res!79596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5280 thiss!1248) (mask!8202 thiss!1248)))))

(declare-fun b!167333 () Bool)

(declare-fun Unit!5122 () Unit!5120)

(assert (=> b!167333 (= e!109894 Unit!5122)))

(declare-fun lt!83689 () Unit!5120)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!104 (array!6706 array!6708 (_ BitVec 32) (_ BitVec 32) V!4721 V!4721 (_ BitVec 64) Int) Unit!5120)

(assert (=> b!167333 (= lt!83689 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!104 (_keys!5280 thiss!1248) (_values!3438 thiss!1248) (mask!8202 thiss!1248) (extraKeys!3196 thiss!1248) (zeroValue!3298 thiss!1248) (minValue!3298 thiss!1248) key!828 (defaultEntry!3455 thiss!1248)))))

(assert (=> b!167333 false))

(declare-fun b!167334 () Bool)

(assert (=> b!167334 (= e!109892 e!109900)))

(declare-fun res!79602 () Bool)

(assert (=> b!167334 (=> (not res!79602) (not e!109900))))

(declare-datatypes ((SeekEntryResult!488 0))(
  ( (MissingZero!488 (index!4120 (_ BitVec 32))) (Found!488 (index!4121 (_ BitVec 32))) (Intermediate!488 (undefined!1300 Bool) (index!4122 (_ BitVec 32)) (x!18532 (_ BitVec 32))) (Undefined!488) (MissingVacant!488 (index!4123 (_ BitVec 32))) )
))
(declare-fun lt!83688 () SeekEntryResult!488)

(assert (=> b!167334 (= res!79602 (and (not (is-Undefined!488 lt!83688)) (not (is-MissingVacant!488 lt!83688)) (not (is-MissingZero!488 lt!83688)) (is-Found!488 lt!83688)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6706 (_ BitVec 32)) SeekEntryResult!488)

(assert (=> b!167334 (= lt!83688 (seekEntryOrOpen!0 key!828 (_keys!5280 thiss!1248) (mask!8202 thiss!1248)))))

(declare-fun e!109899 () Bool)

(declare-fun b!167335 () Bool)

(assert (=> b!167335 (= e!109899 (= (select (arr!3188 (_keys!5280 thiss!1248)) (index!4121 lt!83688)) key!828))))

(declare-fun b!167336 () Bool)

(declare-fun lt!83686 () Unit!5120)

(assert (=> b!167336 (= e!109894 lt!83686)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!106 (array!6706 array!6708 (_ BitVec 32) (_ BitVec 32) V!4721 V!4721 (_ BitVec 64) Int) Unit!5120)

(assert (=> b!167336 (= lt!83686 (lemmaInListMapThenSeekEntryOrOpenFindsIt!106 (_keys!5280 thiss!1248) (_values!3438 thiss!1248) (mask!8202 thiss!1248) (extraKeys!3196 thiss!1248) (zeroValue!3298 thiss!1248) (minValue!3298 thiss!1248) key!828 (defaultEntry!3455 thiss!1248)))))

(declare-fun res!79599 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!167336 (= res!79599 (inRange!0 (index!4121 lt!83688) (mask!8202 thiss!1248)))))

(assert (=> b!167336 (=> (not res!79599) (not e!109899))))

(assert (=> b!167336 e!109899))

(declare-fun b!167337 () Bool)

(assert (=> b!167337 (= e!109898 (and e!109891 mapRes!6426))))

(declare-fun condMapEmpty!6426 () Bool)

(declare-fun mapDefault!6426 () ValueCell!1559)


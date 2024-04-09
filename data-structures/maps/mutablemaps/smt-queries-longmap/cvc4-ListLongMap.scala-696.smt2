; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16696 () Bool)

(assert start!16696)

(declare-fun b!167057 () Bool)

(declare-fun b_free!3989 () Bool)

(declare-fun b_next!3989 () Bool)

(assert (=> b!167057 (= b_free!3989 (not b_next!3989))))

(declare-fun tp!14568 () Bool)

(declare-fun b_and!10421 () Bool)

(assert (=> b!167057 (= tp!14568 b_and!10421)))

(declare-fun b!167053 () Bool)

(declare-fun res!79450 () Bool)

(declare-fun e!109683 () Bool)

(assert (=> b!167053 (=> (not res!79450) (not e!109683))))

(declare-datatypes ((V!4701 0))(
  ( (V!4702 (val!1940 Int)) )
))
(declare-datatypes ((ValueCell!1552 0))(
  ( (ValueCellFull!1552 (v!3801 V!4701)) (EmptyCell!1552) )
))
(declare-datatypes ((array!6678 0))(
  ( (array!6679 (arr!3174 (Array (_ BitVec 32) (_ BitVec 64))) (size!3462 (_ BitVec 32))) )
))
(declare-datatypes ((array!6680 0))(
  ( (array!6681 (arr!3175 (Array (_ BitVec 32) ValueCell!1552)) (size!3463 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2012 0))(
  ( (LongMapFixedSize!2013 (defaultEntry!3448 Int) (mask!8189 (_ BitVec 32)) (extraKeys!3189 (_ BitVec 32)) (zeroValue!3291 V!4701) (minValue!3291 V!4701) (_size!1055 (_ BitVec 32)) (_keys!5273 array!6678) (_values!3431 array!6680) (_vacant!1055 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2012)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6678 (_ BitVec 32)) Bool)

(assert (=> b!167053 (= res!79450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5273 thiss!1248) (mask!8189 thiss!1248)))))

(declare-fun b!167054 () Bool)

(declare-fun e!109681 () Bool)

(declare-fun e!109685 () Bool)

(assert (=> b!167054 (= e!109681 e!109685)))

(declare-fun res!79451 () Bool)

(assert (=> b!167054 (=> (not res!79451) (not e!109685))))

(declare-datatypes ((SeekEntryResult!481 0))(
  ( (MissingZero!481 (index!4092 (_ BitVec 32))) (Found!481 (index!4093 (_ BitVec 32))) (Intermediate!481 (undefined!1293 Bool) (index!4094 (_ BitVec 32)) (x!18501 (_ BitVec 32))) (Undefined!481) (MissingVacant!481 (index!4095 (_ BitVec 32))) )
))
(declare-fun lt!83581 () SeekEntryResult!481)

(assert (=> b!167054 (= res!79451 (and (not (is-Undefined!481 lt!83581)) (not (is-MissingVacant!481 lt!83581)) (not (is-MissingZero!481 lt!83581)) (is-Found!481 lt!83581)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6678 (_ BitVec 32)) SeekEntryResult!481)

(assert (=> b!167054 (= lt!83581 (seekEntryOrOpen!0 key!828 (_keys!5273 thiss!1248) (mask!8189 thiss!1248)))))

(declare-fun res!79449 () Bool)

(assert (=> start!16696 (=> (not res!79449) (not e!109681))))

(declare-fun valid!873 (LongMapFixedSize!2012) Bool)

(assert (=> start!16696 (= res!79449 (valid!873 thiss!1248))))

(assert (=> start!16696 e!109681))

(declare-fun e!109689 () Bool)

(assert (=> start!16696 e!109689))

(assert (=> start!16696 true))

(declare-fun b!167055 () Bool)

(declare-datatypes ((Unit!5101 0))(
  ( (Unit!5102) )
))
(declare-fun e!109687 () Unit!5101)

(declare-fun lt!83584 () Unit!5101)

(assert (=> b!167055 (= e!109687 lt!83584)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!100 (array!6678 array!6680 (_ BitVec 32) (_ BitVec 32) V!4701 V!4701 (_ BitVec 64) Int) Unit!5101)

(assert (=> b!167055 (= lt!83584 (lemmaInListMapThenSeekEntryOrOpenFindsIt!100 (_keys!5273 thiss!1248) (_values!3431 thiss!1248) (mask!8189 thiss!1248) (extraKeys!3189 thiss!1248) (zeroValue!3291 thiss!1248) (minValue!3291 thiss!1248) key!828 (defaultEntry!3448 thiss!1248)))))

(declare-fun res!79453 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!167055 (= res!79453 (inRange!0 (index!4093 lt!83581) (mask!8189 thiss!1248)))))

(declare-fun e!109684 () Bool)

(assert (=> b!167055 (=> (not res!79453) (not e!109684))))

(assert (=> b!167055 e!109684))

(declare-fun mapIsEmpty!6405 () Bool)

(declare-fun mapRes!6405 () Bool)

(assert (=> mapIsEmpty!6405 mapRes!6405))

(declare-fun b!167056 () Bool)

(assert (=> b!167056 (= e!109685 e!109683)))

(declare-fun res!79452 () Bool)

(assert (=> b!167056 (=> (not res!79452) (not e!109683))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!167056 (= res!79452 (validMask!0 (mask!8189 thiss!1248)))))

(declare-fun lt!83583 () Unit!5101)

(assert (=> b!167056 (= lt!83583 e!109687)))

(declare-fun c!30246 () Bool)

(declare-datatypes ((tuple2!3126 0))(
  ( (tuple2!3127 (_1!1573 (_ BitVec 64)) (_2!1573 V!4701)) )
))
(declare-datatypes ((List!2136 0))(
  ( (Nil!2133) (Cons!2132 (h!2749 tuple2!3126) (t!6946 List!2136)) )
))
(declare-datatypes ((ListLongMap!2095 0))(
  ( (ListLongMap!2096 (toList!1063 List!2136)) )
))
(declare-fun contains!1099 (ListLongMap!2095 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!716 (array!6678 array!6680 (_ BitVec 32) (_ BitVec 32) V!4701 V!4701 (_ BitVec 32) Int) ListLongMap!2095)

(assert (=> b!167056 (= c!30246 (contains!1099 (getCurrentListMap!716 (_keys!5273 thiss!1248) (_values!3431 thiss!1248) (mask!8189 thiss!1248) (extraKeys!3189 thiss!1248) (zeroValue!3291 thiss!1248) (minValue!3291 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3448 thiss!1248)) key!828))))

(declare-fun e!109688 () Bool)

(declare-fun tp_is_empty!3791 () Bool)

(declare-fun array_inv!2031 (array!6678) Bool)

(declare-fun array_inv!2032 (array!6680) Bool)

(assert (=> b!167057 (= e!109689 (and tp!14568 tp_is_empty!3791 (array_inv!2031 (_keys!5273 thiss!1248)) (array_inv!2032 (_values!3431 thiss!1248)) e!109688))))

(declare-fun b!167058 () Bool)

(declare-fun e!109690 () Bool)

(assert (=> b!167058 (= e!109690 tp_is_empty!3791)))

(declare-fun b!167059 () Bool)

(assert (=> b!167059 (= e!109683 false)))

(declare-fun lt!83582 () Bool)

(declare-datatypes ((List!2137 0))(
  ( (Nil!2134) (Cons!2133 (h!2750 (_ BitVec 64)) (t!6947 List!2137)) )
))
(declare-fun arrayNoDuplicates!0 (array!6678 (_ BitVec 32) List!2137) Bool)

(assert (=> b!167059 (= lt!83582 (arrayNoDuplicates!0 (_keys!5273 thiss!1248) #b00000000000000000000000000000000 Nil!2134))))

(declare-fun b!167060 () Bool)

(declare-fun e!109682 () Bool)

(assert (=> b!167060 (= e!109682 tp_is_empty!3791)))

(declare-fun b!167061 () Bool)

(assert (=> b!167061 (= e!109688 (and e!109690 mapRes!6405))))

(declare-fun condMapEmpty!6405 () Bool)

(declare-fun mapDefault!6405 () ValueCell!1552)


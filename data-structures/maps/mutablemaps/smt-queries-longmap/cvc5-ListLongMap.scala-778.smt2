; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18442 () Bool)

(assert start!18442)

(declare-fun b!182750 () Bool)

(declare-fun b_free!4507 () Bool)

(declare-fun b_next!4507 () Bool)

(assert (=> b!182750 (= b_free!4507 (not b_next!4507))))

(declare-fun tp!16286 () Bool)

(declare-fun b_and!11091 () Bool)

(assert (=> b!182750 (= tp!16286 b_and!11091)))

(declare-fun b!182746 () Bool)

(declare-fun res!86506 () Bool)

(declare-fun e!120333 () Bool)

(assert (=> b!182746 (=> (not res!86506) (not e!120333))))

(declare-datatypes ((V!5353 0))(
  ( (V!5354 (val!2184 Int)) )
))
(declare-datatypes ((ValueCell!1796 0))(
  ( (ValueCellFull!1796 (v!4081 V!5353)) (EmptyCell!1796) )
))
(declare-datatypes ((array!7746 0))(
  ( (array!7747 (arr!3662 (Array (_ BitVec 32) (_ BitVec 64))) (size!3974 (_ BitVec 32))) )
))
(declare-datatypes ((array!7748 0))(
  ( (array!7749 (arr!3663 (Array (_ BitVec 32) ValueCell!1796)) (size!3975 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2500 0))(
  ( (LongMapFixedSize!2501 (defaultEntry!3738 Int) (mask!8789 (_ BitVec 32)) (extraKeys!3475 (_ BitVec 32)) (zeroValue!3579 V!5353) (minValue!3579 V!5353) (_size!1299 (_ BitVec 32)) (_keys!5653 array!7746) (_values!3721 array!7748) (_vacant!1299 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2500)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7746 (_ BitVec 32)) Bool)

(assert (=> b!182746 (= res!86506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5653 thiss!1248) (mask!8789 thiss!1248)))))

(declare-fun b!182747 () Bool)

(declare-fun e!120337 () Bool)

(declare-fun tp_is_empty!4279 () Bool)

(assert (=> b!182747 (= e!120337 tp_is_empty!4279)))

(declare-fun b!182748 () Bool)

(assert (=> b!182748 (= e!120333 false)))

(declare-fun lt!90424 () Bool)

(declare-datatypes ((List!2342 0))(
  ( (Nil!2339) (Cons!2338 (h!2967 (_ BitVec 64)) (t!7214 List!2342)) )
))
(declare-fun arrayNoDuplicates!0 (array!7746 (_ BitVec 32) List!2342) Bool)

(assert (=> b!182748 (= lt!90424 (arrayNoDuplicates!0 (_keys!5653 thiss!1248) #b00000000000000000000000000000000 Nil!2339))))

(declare-fun b!182749 () Bool)

(declare-fun e!120335 () Bool)

(assert (=> b!182749 (= e!120335 e!120333)))

(declare-fun res!86502 () Bool)

(assert (=> b!182749 (=> (not res!86502) (not e!120333))))

(declare-datatypes ((SeekEntryResult!620 0))(
  ( (MissingZero!620 (index!4650 (_ BitVec 32))) (Found!620 (index!4651 (_ BitVec 32))) (Intermediate!620 (undefined!1432 Bool) (index!4652 (_ BitVec 32)) (x!19930 (_ BitVec 32))) (Undefined!620) (MissingVacant!620 (index!4653 (_ BitVec 32))) )
))
(declare-fun lt!90425 () SeekEntryResult!620)

(assert (=> b!182749 (= res!86502 (and (not (is-Undefined!620 lt!90425)) (not (is-MissingVacant!620 lt!90425)) (not (is-MissingZero!620 lt!90425)) (is-Found!620 lt!90425)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7746 (_ BitVec 32)) SeekEntryResult!620)

(assert (=> b!182749 (= lt!90425 (seekEntryOrOpen!0 key!828 (_keys!5653 thiss!1248) (mask!8789 thiss!1248)))))

(declare-fun res!86503 () Bool)

(assert (=> start!18442 (=> (not res!86503) (not e!120335))))

(declare-fun valid!1028 (LongMapFixedSize!2500) Bool)

(assert (=> start!18442 (= res!86503 (valid!1028 thiss!1248))))

(assert (=> start!18442 e!120335))

(declare-fun e!120331 () Bool)

(assert (=> start!18442 e!120331))

(assert (=> start!18442 true))

(declare-fun mapNonEmpty!7346 () Bool)

(declare-fun mapRes!7346 () Bool)

(declare-fun tp!16285 () Bool)

(declare-fun e!120336 () Bool)

(assert (=> mapNonEmpty!7346 (= mapRes!7346 (and tp!16285 e!120336))))

(declare-fun mapKey!7346 () (_ BitVec 32))

(declare-fun mapValue!7346 () ValueCell!1796)

(declare-fun mapRest!7346 () (Array (_ BitVec 32) ValueCell!1796))

(assert (=> mapNonEmpty!7346 (= (arr!3663 (_values!3721 thiss!1248)) (store mapRest!7346 mapKey!7346 mapValue!7346))))

(declare-fun e!120334 () Bool)

(declare-fun array_inv!2355 (array!7746) Bool)

(declare-fun array_inv!2356 (array!7748) Bool)

(assert (=> b!182750 (= e!120331 (and tp!16286 tp_is_empty!4279 (array_inv!2355 (_keys!5653 thiss!1248)) (array_inv!2356 (_values!3721 thiss!1248)) e!120334))))

(declare-fun b!182751 () Bool)

(declare-fun res!86508 () Bool)

(assert (=> b!182751 (=> (not res!86508) (not e!120333))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!182751 (= res!86508 (validMask!0 (mask!8789 thiss!1248)))))

(declare-fun b!182752 () Bool)

(declare-fun res!86505 () Bool)

(assert (=> b!182752 (=> (not res!86505) (not e!120335))))

(assert (=> b!182752 (= res!86505 (not (= key!828 (bvneg key!828))))))

(declare-fun b!182753 () Bool)

(assert (=> b!182753 (= e!120336 tp_is_empty!4279)))

(declare-fun b!182754 () Bool)

(declare-fun res!86507 () Bool)

(assert (=> b!182754 (=> (not res!86507) (not e!120333))))

(declare-datatypes ((tuple2!3400 0))(
  ( (tuple2!3401 (_1!1710 (_ BitVec 64)) (_2!1710 V!5353)) )
))
(declare-datatypes ((List!2343 0))(
  ( (Nil!2340) (Cons!2339 (h!2968 tuple2!3400) (t!7215 List!2343)) )
))
(declare-datatypes ((ListLongMap!2331 0))(
  ( (ListLongMap!2332 (toList!1181 List!2343)) )
))
(declare-fun contains!1260 (ListLongMap!2331 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!824 (array!7746 array!7748 (_ BitVec 32) (_ BitVec 32) V!5353 V!5353 (_ BitVec 32) Int) ListLongMap!2331)

(assert (=> b!182754 (= res!86507 (contains!1260 (getCurrentListMap!824 (_keys!5653 thiss!1248) (_values!3721 thiss!1248) (mask!8789 thiss!1248) (extraKeys!3475 thiss!1248) (zeroValue!3579 thiss!1248) (minValue!3579 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3738 thiss!1248)) key!828))))

(declare-fun b!182755 () Bool)

(assert (=> b!182755 (= e!120334 (and e!120337 mapRes!7346))))

(declare-fun condMapEmpty!7346 () Bool)

(declare-fun mapDefault!7346 () ValueCell!1796)


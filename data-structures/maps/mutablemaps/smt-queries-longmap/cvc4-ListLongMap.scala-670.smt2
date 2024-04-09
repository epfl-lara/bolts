; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16540 () Bool)

(assert start!16540)

(declare-fun b!164344 () Bool)

(declare-fun b_free!3833 () Bool)

(declare-fun b_next!3833 () Bool)

(assert (=> b!164344 (= b_free!3833 (not b_next!3833))))

(declare-fun tp!14099 () Bool)

(declare-fun b_and!10265 () Bool)

(assert (=> b!164344 (= tp!14099 b_and!10265)))

(declare-fun b!164337 () Bool)

(declare-fun e!107833 () Bool)

(declare-fun e!107832 () Bool)

(assert (=> b!164337 (= e!107833 e!107832)))

(declare-fun res!77815 () Bool)

(assert (=> b!164337 (=> (not res!77815) (not e!107832))))

(declare-datatypes ((SeekEntryResult!425 0))(
  ( (MissingZero!425 (index!3868 (_ BitVec 32))) (Found!425 (index!3869 (_ BitVec 32))) (Intermediate!425 (undefined!1237 Bool) (index!3870 (_ BitVec 32)) (x!18237 (_ BitVec 32))) (Undefined!425) (MissingVacant!425 (index!3871 (_ BitVec 32))) )
))
(declare-fun lt!82900 () SeekEntryResult!425)

(assert (=> b!164337 (= res!77815 (and (not (is-Undefined!425 lt!82900)) (not (is-MissingVacant!425 lt!82900)) (not (is-MissingZero!425 lt!82900)) (is-Found!425 lt!82900)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4493 0))(
  ( (V!4494 (val!1862 Int)) )
))
(declare-datatypes ((ValueCell!1474 0))(
  ( (ValueCellFull!1474 (v!3723 V!4493)) (EmptyCell!1474) )
))
(declare-datatypes ((array!6366 0))(
  ( (array!6367 (arr!3018 (Array (_ BitVec 32) (_ BitVec 64))) (size!3306 (_ BitVec 32))) )
))
(declare-datatypes ((array!6368 0))(
  ( (array!6369 (arr!3019 (Array (_ BitVec 32) ValueCell!1474)) (size!3307 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1856 0))(
  ( (LongMapFixedSize!1857 (defaultEntry!3370 Int) (mask!8059 (_ BitVec 32)) (extraKeys!3111 (_ BitVec 32)) (zeroValue!3213 V!4493) (minValue!3213 V!4493) (_size!977 (_ BitVec 32)) (_keys!5195 array!6366) (_values!3353 array!6368) (_vacant!977 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1856)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6366 (_ BitVec 32)) SeekEntryResult!425)

(assert (=> b!164337 (= lt!82900 (seekEntryOrOpen!0 key!828 (_keys!5195 thiss!1248) (mask!8059 thiss!1248)))))

(declare-fun mapIsEmpty!6171 () Bool)

(declare-fun mapRes!6171 () Bool)

(assert (=> mapIsEmpty!6171 mapRes!6171))

(declare-fun b!164338 () Bool)

(declare-fun res!77811 () Bool)

(assert (=> b!164338 (=> (not res!77811) (not e!107832))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!164338 (= res!77811 (validMask!0 (mask!8059 thiss!1248)))))

(declare-fun res!77817 () Bool)

(assert (=> start!16540 (=> (not res!77817) (not e!107833))))

(declare-fun valid!818 (LongMapFixedSize!1856) Bool)

(assert (=> start!16540 (= res!77817 (valid!818 thiss!1248))))

(assert (=> start!16540 e!107833))

(declare-fun e!107836 () Bool)

(assert (=> start!16540 e!107836))

(assert (=> start!16540 true))

(declare-fun b!164339 () Bool)

(declare-fun res!77812 () Bool)

(assert (=> b!164339 (=> (not res!77812) (not e!107832))))

(assert (=> b!164339 (= res!77812 (and (= (size!3307 (_values!3353 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8059 thiss!1248))) (= (size!3306 (_keys!5195 thiss!1248)) (size!3307 (_values!3353 thiss!1248))) (bvsge (mask!8059 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3111 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3111 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!164340 () Bool)

(declare-fun res!77813 () Bool)

(assert (=> b!164340 (=> (not res!77813) (not e!107833))))

(assert (=> b!164340 (= res!77813 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!6171 () Bool)

(declare-fun tp!14100 () Bool)

(declare-fun e!107834 () Bool)

(assert (=> mapNonEmpty!6171 (= mapRes!6171 (and tp!14100 e!107834))))

(declare-fun mapValue!6171 () ValueCell!1474)

(declare-fun mapRest!6171 () (Array (_ BitVec 32) ValueCell!1474))

(declare-fun mapKey!6171 () (_ BitVec 32))

(assert (=> mapNonEmpty!6171 (= (arr!3019 (_values!3353 thiss!1248)) (store mapRest!6171 mapKey!6171 mapValue!6171))))

(declare-fun b!164341 () Bool)

(declare-fun res!77814 () Bool)

(assert (=> b!164341 (=> (not res!77814) (not e!107832))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6366 (_ BitVec 32)) Bool)

(assert (=> b!164341 (= res!77814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5195 thiss!1248) (mask!8059 thiss!1248)))))

(declare-fun b!164342 () Bool)

(declare-fun e!107830 () Bool)

(declare-fun tp_is_empty!3635 () Bool)

(assert (=> b!164342 (= e!107830 tp_is_empty!3635)))

(declare-fun b!164343 () Bool)

(assert (=> b!164343 (= e!107834 tp_is_empty!3635)))

(declare-fun e!107835 () Bool)

(declare-fun array_inv!1923 (array!6366) Bool)

(declare-fun array_inv!1924 (array!6368) Bool)

(assert (=> b!164344 (= e!107836 (and tp!14099 tp_is_empty!3635 (array_inv!1923 (_keys!5195 thiss!1248)) (array_inv!1924 (_values!3353 thiss!1248)) e!107835))))

(declare-fun b!164345 () Bool)

(assert (=> b!164345 (= e!107832 false)))

(declare-fun lt!82901 () Bool)

(declare-datatypes ((List!2024 0))(
  ( (Nil!2021) (Cons!2020 (h!2637 (_ BitVec 64)) (t!6834 List!2024)) )
))
(declare-fun arrayNoDuplicates!0 (array!6366 (_ BitVec 32) List!2024) Bool)

(assert (=> b!164345 (= lt!82901 (arrayNoDuplicates!0 (_keys!5195 thiss!1248) #b00000000000000000000000000000000 Nil!2021))))

(declare-fun b!164346 () Bool)

(declare-fun res!77816 () Bool)

(assert (=> b!164346 (=> (not res!77816) (not e!107832))))

(declare-datatypes ((tuple2!3018 0))(
  ( (tuple2!3019 (_1!1519 (_ BitVec 64)) (_2!1519 V!4493)) )
))
(declare-datatypes ((List!2025 0))(
  ( (Nil!2022) (Cons!2021 (h!2638 tuple2!3018) (t!6835 List!2025)) )
))
(declare-datatypes ((ListLongMap!1987 0))(
  ( (ListLongMap!1988 (toList!1009 List!2025)) )
))
(declare-fun contains!1045 (ListLongMap!1987 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!662 (array!6366 array!6368 (_ BitVec 32) (_ BitVec 32) V!4493 V!4493 (_ BitVec 32) Int) ListLongMap!1987)

(assert (=> b!164346 (= res!77816 (contains!1045 (getCurrentListMap!662 (_keys!5195 thiss!1248) (_values!3353 thiss!1248) (mask!8059 thiss!1248) (extraKeys!3111 thiss!1248) (zeroValue!3213 thiss!1248) (minValue!3213 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3370 thiss!1248)) key!828))))

(declare-fun b!164347 () Bool)

(assert (=> b!164347 (= e!107835 (and e!107830 mapRes!6171))))

(declare-fun condMapEmpty!6171 () Bool)

(declare-fun mapDefault!6171 () ValueCell!1474)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18396 () Bool)

(assert start!18396)

(declare-fun b!182299 () Bool)

(declare-fun b_free!4495 () Bool)

(declare-fun b_next!4495 () Bool)

(assert (=> b!182299 (= b_free!4495 (not b_next!4495))))

(declare-fun tp!16244 () Bool)

(declare-fun b_and!11075 () Bool)

(assert (=> b!182299 (= tp!16244 b_and!11075)))

(declare-fun b!182298 () Bool)

(declare-fun e!120053 () Bool)

(declare-fun tp_is_empty!4267 () Bool)

(assert (=> b!182298 (= e!120053 tp_is_empty!4267)))

(declare-fun e!120049 () Bool)

(declare-datatypes ((V!5337 0))(
  ( (V!5338 (val!2178 Int)) )
))
(declare-datatypes ((ValueCell!1790 0))(
  ( (ValueCellFull!1790 (v!4073 V!5337)) (EmptyCell!1790) )
))
(declare-datatypes ((array!7718 0))(
  ( (array!7719 (arr!3650 (Array (_ BitVec 32) (_ BitVec 64))) (size!3962 (_ BitVec 32))) )
))
(declare-datatypes ((array!7720 0))(
  ( (array!7721 (arr!3651 (Array (_ BitVec 32) ValueCell!1790)) (size!3963 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2488 0))(
  ( (LongMapFixedSize!2489 (defaultEntry!3730 Int) (mask!8771 (_ BitVec 32)) (extraKeys!3467 (_ BitVec 32)) (zeroValue!3571 V!5337) (minValue!3571 V!5337) (_size!1293 (_ BitVec 32)) (_keys!5641 array!7718) (_values!3713 array!7720) (_vacant!1293 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2488)

(declare-fun e!120052 () Bool)

(declare-fun array_inv!2343 (array!7718) Bool)

(declare-fun array_inv!2344 (array!7720) Bool)

(assert (=> b!182299 (= e!120052 (and tp!16244 tp_is_empty!4267 (array_inv!2343 (_keys!5641 thiss!1248)) (array_inv!2344 (_values!3713 thiss!1248)) e!120049))))

(declare-fun b!182300 () Bool)

(declare-fun res!86289 () Bool)

(declare-fun e!120051 () Bool)

(assert (=> b!182300 (=> (not res!86289) (not e!120051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!182300 (= res!86289 (validMask!0 (mask!8771 thiss!1248)))))

(declare-fun b!182301 () Bool)

(declare-fun res!86287 () Bool)

(declare-fun e!120055 () Bool)

(assert (=> b!182301 (=> (not res!86287) (not e!120055))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!182301 (= res!86287 (not (= key!828 (bvneg key!828))))))

(declare-fun b!182302 () Bool)

(declare-fun e!120054 () Bool)

(assert (=> b!182302 (= e!120054 tp_is_empty!4267)))

(declare-fun b!182303 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7718 (_ BitVec 32)) Bool)

(assert (=> b!182303 (= e!120051 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5641 thiss!1248) (mask!8771 thiss!1248))))))

(declare-fun b!182304 () Bool)

(assert (=> b!182304 (= e!120055 e!120051)))

(declare-fun res!86285 () Bool)

(assert (=> b!182304 (=> (not res!86285) (not e!120051))))

(declare-datatypes ((SeekEntryResult!614 0))(
  ( (MissingZero!614 (index!4626 (_ BitVec 32))) (Found!614 (index!4627 (_ BitVec 32))) (Intermediate!614 (undefined!1426 Bool) (index!4628 (_ BitVec 32)) (x!19888 (_ BitVec 32))) (Undefined!614) (MissingVacant!614 (index!4629 (_ BitVec 32))) )
))
(declare-fun lt!90212 () SeekEntryResult!614)

(assert (=> b!182304 (= res!86285 (and (not (is-Undefined!614 lt!90212)) (not (is-MissingVacant!614 lt!90212)) (not (is-MissingZero!614 lt!90212)) (is-Found!614 lt!90212)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7718 (_ BitVec 32)) SeekEntryResult!614)

(assert (=> b!182304 (= lt!90212 (seekEntryOrOpen!0 key!828 (_keys!5641 thiss!1248) (mask!8771 thiss!1248)))))

(declare-fun mapIsEmpty!7322 () Bool)

(declare-fun mapRes!7322 () Bool)

(assert (=> mapIsEmpty!7322 mapRes!7322))

(declare-fun b!182305 () Bool)

(declare-fun res!86286 () Bool)

(assert (=> b!182305 (=> (not res!86286) (not e!120051))))

(assert (=> b!182305 (= res!86286 (and (= (size!3963 (_values!3713 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8771 thiss!1248))) (= (size!3962 (_keys!5641 thiss!1248)) (size!3963 (_values!3713 thiss!1248))) (bvsge (mask!8771 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3467 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3467 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun res!86288 () Bool)

(assert (=> start!18396 (=> (not res!86288) (not e!120055))))

(declare-fun valid!1022 (LongMapFixedSize!2488) Bool)

(assert (=> start!18396 (= res!86288 (valid!1022 thiss!1248))))

(assert (=> start!18396 e!120055))

(assert (=> start!18396 e!120052))

(assert (=> start!18396 true))

(declare-fun b!182306 () Bool)

(assert (=> b!182306 (= e!120049 (and e!120053 mapRes!7322))))

(declare-fun condMapEmpty!7322 () Bool)

(declare-fun mapDefault!7322 () ValueCell!1790)


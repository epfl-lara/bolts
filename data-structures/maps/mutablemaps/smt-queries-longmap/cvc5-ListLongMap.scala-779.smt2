; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18448 () Bool)

(assert start!18448)

(declare-fun b!182847 () Bool)

(declare-fun b_free!4513 () Bool)

(declare-fun b_next!4513 () Bool)

(assert (=> b!182847 (= b_free!4513 (not b_next!4513))))

(declare-fun tp!16304 () Bool)

(declare-fun b_and!11097 () Bool)

(assert (=> b!182847 (= tp!16304 b_and!11097)))

(declare-fun e!120394 () Bool)

(declare-fun tp_is_empty!4285 () Bool)

(declare-fun e!120396 () Bool)

(declare-datatypes ((V!5361 0))(
  ( (V!5362 (val!2187 Int)) )
))
(declare-datatypes ((ValueCell!1799 0))(
  ( (ValueCellFull!1799 (v!4084 V!5361)) (EmptyCell!1799) )
))
(declare-datatypes ((array!7758 0))(
  ( (array!7759 (arr!3668 (Array (_ BitVec 32) (_ BitVec 64))) (size!3980 (_ BitVec 32))) )
))
(declare-datatypes ((array!7760 0))(
  ( (array!7761 (arr!3669 (Array (_ BitVec 32) ValueCell!1799)) (size!3981 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2506 0))(
  ( (LongMapFixedSize!2507 (defaultEntry!3741 Int) (mask!8794 (_ BitVec 32)) (extraKeys!3478 (_ BitVec 32)) (zeroValue!3582 V!5361) (minValue!3582 V!5361) (_size!1302 (_ BitVec 32)) (_keys!5656 array!7758) (_values!3724 array!7760) (_vacant!1302 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2506)

(declare-fun array_inv!2361 (array!7758) Bool)

(declare-fun array_inv!2362 (array!7760) Bool)

(assert (=> b!182847 (= e!120394 (and tp!16304 tp_is_empty!4285 (array_inv!2361 (_keys!5656 thiss!1248)) (array_inv!2362 (_values!3724 thiss!1248)) e!120396))))

(declare-fun mapNonEmpty!7355 () Bool)

(declare-fun mapRes!7355 () Bool)

(declare-fun tp!16303 () Bool)

(declare-fun e!120400 () Bool)

(assert (=> mapNonEmpty!7355 (= mapRes!7355 (and tp!16303 e!120400))))

(declare-fun mapKey!7355 () (_ BitVec 32))

(declare-fun mapRest!7355 () (Array (_ BitVec 32) ValueCell!1799))

(declare-fun mapValue!7355 () ValueCell!1799)

(assert (=> mapNonEmpty!7355 (= (arr!3669 (_values!3724 thiss!1248)) (store mapRest!7355 mapKey!7355 mapValue!7355))))

(declare-fun b!182848 () Bool)

(declare-fun res!86574 () Bool)

(declare-fun e!120397 () Bool)

(assert (=> b!182848 (=> (not res!86574) (not e!120397))))

(declare-datatypes ((List!2348 0))(
  ( (Nil!2345) (Cons!2344 (h!2973 (_ BitVec 64)) (t!7220 List!2348)) )
))
(declare-fun arrayNoDuplicates!0 (array!7758 (_ BitVec 32) List!2348) Bool)

(assert (=> b!182848 (= res!86574 (arrayNoDuplicates!0 (_keys!5656 thiss!1248) #b00000000000000000000000000000000 Nil!2345))))

(declare-fun b!182849 () Bool)

(declare-fun res!86567 () Bool)

(assert (=> b!182849 (=> (not res!86567) (not e!120397))))

(assert (=> b!182849 (= res!86567 (and (= (size!3981 (_values!3724 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8794 thiss!1248))) (= (size!3980 (_keys!5656 thiss!1248)) (size!3981 (_values!3724 thiss!1248))) (bvsge (mask!8794 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3478 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3478 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!182850 () Bool)

(declare-fun e!120398 () Bool)

(assert (=> b!182850 (= e!120398 e!120397)))

(declare-fun res!86570 () Bool)

(assert (=> b!182850 (=> (not res!86570) (not e!120397))))

(declare-datatypes ((SeekEntryResult!623 0))(
  ( (MissingZero!623 (index!4662 (_ BitVec 32))) (Found!623 (index!4663 (_ BitVec 32))) (Intermediate!623 (undefined!1435 Bool) (index!4664 (_ BitVec 32)) (x!19941 (_ BitVec 32))) (Undefined!623) (MissingVacant!623 (index!4665 (_ BitVec 32))) )
))
(declare-fun lt!90440 () SeekEntryResult!623)

(assert (=> b!182850 (= res!86570 (and (not (is-Undefined!623 lt!90440)) (not (is-MissingVacant!623 lt!90440)) (not (is-MissingZero!623 lt!90440)) (is-Found!623 lt!90440)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7758 (_ BitVec 32)) SeekEntryResult!623)

(assert (=> b!182850 (= lt!90440 (seekEntryOrOpen!0 key!828 (_keys!5656 thiss!1248) (mask!8794 thiss!1248)))))

(declare-fun b!182851 () Bool)

(declare-fun res!86572 () Bool)

(assert (=> b!182851 (=> (not res!86572) (not e!120397))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!182851 (= res!86572 (validMask!0 (mask!8794 thiss!1248)))))

(declare-fun b!182852 () Bool)

(declare-fun e!120395 () Bool)

(assert (=> b!182852 (= e!120396 (and e!120395 mapRes!7355))))

(declare-fun condMapEmpty!7355 () Bool)

(declare-fun mapDefault!7355 () ValueCell!1799)


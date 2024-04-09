; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18418 () Bool)

(assert start!18418)

(declare-fun b!182512 () Bool)

(declare-fun b_free!4501 () Bool)

(declare-fun b_next!4501 () Bool)

(assert (=> b!182512 (= b_free!4501 (not b_next!4501))))

(declare-fun tp!16265 () Bool)

(declare-fun b_and!11083 () Bool)

(assert (=> b!182512 (= tp!16265 b_and!11083)))

(declare-fun b!182511 () Bool)

(declare-fun res!86390 () Bool)

(declare-fun e!120190 () Bool)

(assert (=> b!182511 (=> (not res!86390) (not e!120190))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!182511 (= res!86390 (not (= key!828 (bvneg key!828))))))

(declare-fun e!120189 () Bool)

(declare-fun tp_is_empty!4273 () Bool)

(declare-datatypes ((V!5345 0))(
  ( (V!5346 (val!2181 Int)) )
))
(declare-datatypes ((ValueCell!1793 0))(
  ( (ValueCellFull!1793 (v!4077 V!5345)) (EmptyCell!1793) )
))
(declare-datatypes ((array!7732 0))(
  ( (array!7733 (arr!3656 (Array (_ BitVec 32) (_ BitVec 64))) (size!3968 (_ BitVec 32))) )
))
(declare-datatypes ((array!7734 0))(
  ( (array!7735 (arr!3657 (Array (_ BitVec 32) ValueCell!1793)) (size!3969 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2494 0))(
  ( (LongMapFixedSize!2495 (defaultEntry!3734 Int) (mask!8780 (_ BitVec 32)) (extraKeys!3471 (_ BitVec 32)) (zeroValue!3575 V!5345) (minValue!3575 V!5345) (_size!1296 (_ BitVec 32)) (_keys!5647 array!7732) (_values!3717 array!7734) (_vacant!1296 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2494)

(declare-fun e!120185 () Bool)

(declare-fun array_inv!2349 (array!7732) Bool)

(declare-fun array_inv!2350 (array!7734) Bool)

(assert (=> b!182512 (= e!120185 (and tp!16265 tp_is_empty!4273 (array_inv!2349 (_keys!5647 thiss!1248)) (array_inv!2350 (_values!3717 thiss!1248)) e!120189))))

(declare-fun b!182513 () Bool)

(declare-fun e!120187 () Bool)

(assert (=> b!182513 (= e!120187 tp_is_empty!4273)))

(declare-fun b!182514 () Bool)

(declare-fun res!86388 () Bool)

(declare-fun e!120188 () Bool)

(assert (=> b!182514 (=> (not res!86388) (not e!120188))))

(declare-datatypes ((tuple2!3394 0))(
  ( (tuple2!3395 (_1!1707 (_ BitVec 64)) (_2!1707 V!5345)) )
))
(declare-datatypes ((List!2337 0))(
  ( (Nil!2334) (Cons!2333 (h!2962 tuple2!3394) (t!7207 List!2337)) )
))
(declare-datatypes ((ListLongMap!2325 0))(
  ( (ListLongMap!2326 (toList!1178 List!2337)) )
))
(declare-fun contains!1256 (ListLongMap!2325 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!821 (array!7732 array!7734 (_ BitVec 32) (_ BitVec 32) V!5345 V!5345 (_ BitVec 32) Int) ListLongMap!2325)

(assert (=> b!182514 (= res!86388 (contains!1256 (getCurrentListMap!821 (_keys!5647 thiss!1248) (_values!3717 thiss!1248) (mask!8780 thiss!1248) (extraKeys!3471 thiss!1248) (zeroValue!3575 thiss!1248) (minValue!3575 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3734 thiss!1248)) key!828))))

(declare-fun b!182515 () Bool)

(declare-fun res!86387 () Bool)

(assert (=> b!182515 (=> (not res!86387) (not e!120188))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!182515 (= res!86387 (validMask!0 (mask!8780 thiss!1248)))))

(declare-fun res!86386 () Bool)

(assert (=> start!18418 (=> (not res!86386) (not e!120190))))

(declare-fun valid!1025 (LongMapFixedSize!2494) Bool)

(assert (=> start!18418 (= res!86386 (valid!1025 thiss!1248))))

(assert (=> start!18418 e!120190))

(assert (=> start!18418 e!120185))

(assert (=> start!18418 true))

(declare-fun b!182516 () Bool)

(declare-fun res!86389 () Bool)

(assert (=> b!182516 (=> (not res!86389) (not e!120188))))

(assert (=> b!182516 (= res!86389 (and (= (size!3969 (_values!3717 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8780 thiss!1248))) (= (size!3968 (_keys!5647 thiss!1248)) (size!3969 (_values!3717 thiss!1248))) (bvsge (mask!8780 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3471 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3471 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!7334 () Bool)

(declare-fun mapRes!7334 () Bool)

(declare-fun tp!16264 () Bool)

(assert (=> mapNonEmpty!7334 (= mapRes!7334 (and tp!16264 e!120187))))

(declare-fun mapKey!7334 () (_ BitVec 32))

(declare-fun mapValue!7334 () ValueCell!1793)

(declare-fun mapRest!7334 () (Array (_ BitVec 32) ValueCell!1793))

(assert (=> mapNonEmpty!7334 (= (arr!3657 (_values!3717 thiss!1248)) (store mapRest!7334 mapKey!7334 mapValue!7334))))

(declare-fun b!182517 () Bool)

(assert (=> b!182517 (= e!120190 e!120188)))

(declare-fun res!86385 () Bool)

(assert (=> b!182517 (=> (not res!86385) (not e!120188))))

(declare-datatypes ((SeekEntryResult!617 0))(
  ( (MissingZero!617 (index!4638 (_ BitVec 32))) (Found!617 (index!4639 (_ BitVec 32))) (Intermediate!617 (undefined!1429 Bool) (index!4640 (_ BitVec 32)) (x!19909 (_ BitVec 32))) (Undefined!617) (MissingVacant!617 (index!4641 (_ BitVec 32))) )
))
(declare-fun lt!90317 () SeekEntryResult!617)

(assert (=> b!182517 (= res!86385 (and (not (is-Undefined!617 lt!90317)) (not (is-MissingVacant!617 lt!90317)) (not (is-MissingZero!617 lt!90317)) (is-Found!617 lt!90317)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7732 (_ BitVec 32)) SeekEntryResult!617)

(assert (=> b!182517 (= lt!90317 (seekEntryOrOpen!0 key!828 (_keys!5647 thiss!1248) (mask!8780 thiss!1248)))))

(declare-fun b!182518 () Bool)

(declare-fun e!120184 () Bool)

(assert (=> b!182518 (= e!120189 (and e!120184 mapRes!7334))))

(declare-fun condMapEmpty!7334 () Bool)

(declare-fun mapDefault!7334 () ValueCell!1793)


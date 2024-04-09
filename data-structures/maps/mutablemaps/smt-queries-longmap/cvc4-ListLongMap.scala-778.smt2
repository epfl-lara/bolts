; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18446 () Bool)

(assert start!18446)

(declare-fun b!182819 () Bool)

(declare-fun b_free!4511 () Bool)

(declare-fun b_next!4511 () Bool)

(assert (=> b!182819 (= b_free!4511 (not b_next!4511))))

(declare-fun tp!16298 () Bool)

(declare-fun b_and!11095 () Bool)

(assert (=> b!182819 (= tp!16298 b_and!11095)))

(declare-fun b!182812 () Bool)

(declare-fun res!86544 () Bool)

(declare-fun e!120378 () Bool)

(assert (=> b!182812 (=> (not res!86544) (not e!120378))))

(declare-datatypes ((V!5357 0))(
  ( (V!5358 (val!2186 Int)) )
))
(declare-datatypes ((ValueCell!1798 0))(
  ( (ValueCellFull!1798 (v!4083 V!5357)) (EmptyCell!1798) )
))
(declare-datatypes ((array!7754 0))(
  ( (array!7755 (arr!3666 (Array (_ BitVec 32) (_ BitVec 64))) (size!3978 (_ BitVec 32))) )
))
(declare-datatypes ((array!7756 0))(
  ( (array!7757 (arr!3667 (Array (_ BitVec 32) ValueCell!1798)) (size!3979 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2504 0))(
  ( (LongMapFixedSize!2505 (defaultEntry!3740 Int) (mask!8791 (_ BitVec 32)) (extraKeys!3477 (_ BitVec 32)) (zeroValue!3581 V!5357) (minValue!3581 V!5357) (_size!1301 (_ BitVec 32)) (_keys!5655 array!7754) (_values!3723 array!7756) (_vacant!1301 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2504)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3404 0))(
  ( (tuple2!3405 (_1!1712 (_ BitVec 64)) (_2!1712 V!5357)) )
))
(declare-datatypes ((List!2346 0))(
  ( (Nil!2343) (Cons!2342 (h!2971 tuple2!3404) (t!7218 List!2346)) )
))
(declare-datatypes ((ListLongMap!2335 0))(
  ( (ListLongMap!2336 (toList!1183 List!2346)) )
))
(declare-fun contains!1262 (ListLongMap!2335 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!826 (array!7754 array!7756 (_ BitVec 32) (_ BitVec 32) V!5357 V!5357 (_ BitVec 32) Int) ListLongMap!2335)

(assert (=> b!182812 (= res!86544 (contains!1262 (getCurrentListMap!826 (_keys!5655 thiss!1248) (_values!3723 thiss!1248) (mask!8791 thiss!1248) (extraKeys!3477 thiss!1248) (zeroValue!3581 thiss!1248) (minValue!3581 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3740 thiss!1248)) key!828))))

(declare-fun b!182813 () Bool)

(declare-fun res!86550 () Bool)

(assert (=> b!182813 (=> (not res!86550) (not e!120378))))

(assert (=> b!182813 (= res!86550 (and (= (size!3979 (_values!3723 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8791 thiss!1248))) (= (size!3978 (_keys!5655 thiss!1248)) (size!3979 (_values!3723 thiss!1248))) (bvsge (mask!8791 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3477 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3477 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!182814 () Bool)

(declare-fun e!120374 () Bool)

(declare-fun tp_is_empty!4283 () Bool)

(assert (=> b!182814 (= e!120374 tp_is_empty!4283)))

(declare-fun b!182815 () Bool)

(declare-fun res!86549 () Bool)

(declare-fun e!120379 () Bool)

(assert (=> b!182815 (=> (not res!86549) (not e!120379))))

(assert (=> b!182815 (= res!86549 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!7352 () Bool)

(declare-fun mapRes!7352 () Bool)

(assert (=> mapIsEmpty!7352 mapRes!7352))

(declare-fun b!182816 () Bool)

(assert (=> b!182816 (= e!120379 e!120378)))

(declare-fun res!86547 () Bool)

(assert (=> b!182816 (=> (not res!86547) (not e!120378))))

(declare-datatypes ((SeekEntryResult!622 0))(
  ( (MissingZero!622 (index!4658 (_ BitVec 32))) (Found!622 (index!4659 (_ BitVec 32))) (Intermediate!622 (undefined!1434 Bool) (index!4660 (_ BitVec 32)) (x!19932 (_ BitVec 32))) (Undefined!622) (MissingVacant!622 (index!4661 (_ BitVec 32))) )
))
(declare-fun lt!90437 () SeekEntryResult!622)

(assert (=> b!182816 (= res!86547 (and (not (is-Undefined!622 lt!90437)) (not (is-MissingVacant!622 lt!90437)) (not (is-MissingZero!622 lt!90437)) (is-Found!622 lt!90437)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7754 (_ BitVec 32)) SeekEntryResult!622)

(assert (=> b!182816 (= lt!90437 (seekEntryOrOpen!0 key!828 (_keys!5655 thiss!1248) (mask!8791 thiss!1248)))))

(declare-fun b!182817 () Bool)

(declare-fun res!86548 () Bool)

(assert (=> b!182817 (=> (not res!86548) (not e!120378))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7754 (_ BitVec 32)) Bool)

(assert (=> b!182817 (= res!86548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5655 thiss!1248) (mask!8791 thiss!1248)))))

(declare-fun mapNonEmpty!7352 () Bool)

(declare-fun tp!16297 () Bool)

(declare-fun e!120373 () Bool)

(assert (=> mapNonEmpty!7352 (= mapRes!7352 (and tp!16297 e!120373))))

(declare-fun mapValue!7352 () ValueCell!1798)

(declare-fun mapKey!7352 () (_ BitVec 32))

(declare-fun mapRest!7352 () (Array (_ BitVec 32) ValueCell!1798))

(assert (=> mapNonEmpty!7352 (= (arr!3667 (_values!3723 thiss!1248)) (store mapRest!7352 mapKey!7352 mapValue!7352))))

(declare-fun b!182818 () Bool)

(assert (=> b!182818 (= e!120378 false)))

(declare-fun lt!90436 () Bool)

(declare-datatypes ((List!2347 0))(
  ( (Nil!2344) (Cons!2343 (h!2972 (_ BitVec 64)) (t!7219 List!2347)) )
))
(declare-fun arrayNoDuplicates!0 (array!7754 (_ BitVec 32) List!2347) Bool)

(assert (=> b!182818 (= lt!90436 (arrayNoDuplicates!0 (_keys!5655 thiss!1248) #b00000000000000000000000000000000 Nil!2344))))

(declare-fun e!120376 () Bool)

(declare-fun e!120377 () Bool)

(declare-fun array_inv!2359 (array!7754) Bool)

(declare-fun array_inv!2360 (array!7756) Bool)

(assert (=> b!182819 (= e!120377 (and tp!16298 tp_is_empty!4283 (array_inv!2359 (_keys!5655 thiss!1248)) (array_inv!2360 (_values!3723 thiss!1248)) e!120376))))

(declare-fun b!182820 () Bool)

(assert (=> b!182820 (= e!120373 tp_is_empty!4283)))

(declare-fun b!182821 () Bool)

(declare-fun res!86545 () Bool)

(assert (=> b!182821 (=> (not res!86545) (not e!120378))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!182821 (= res!86545 (validMask!0 (mask!8791 thiss!1248)))))

(declare-fun res!86546 () Bool)

(assert (=> start!18446 (=> (not res!86546) (not e!120379))))

(declare-fun valid!1030 (LongMapFixedSize!2504) Bool)

(assert (=> start!18446 (= res!86546 (valid!1030 thiss!1248))))

(assert (=> start!18446 e!120379))

(assert (=> start!18446 e!120377))

(assert (=> start!18446 true))

(declare-fun b!182822 () Bool)

(assert (=> b!182822 (= e!120376 (and e!120374 mapRes!7352))))

(declare-fun condMapEmpty!7352 () Bool)

(declare-fun mapDefault!7352 () ValueCell!1798)


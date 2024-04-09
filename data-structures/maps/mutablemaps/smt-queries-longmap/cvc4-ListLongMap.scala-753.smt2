; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17682 () Bool)

(assert start!17682)

(declare-fun b!176612 () Bool)

(declare-fun b_free!4361 () Bool)

(declare-fun b_next!4361 () Bool)

(assert (=> b!176612 (= b_free!4361 (not b_next!4361))))

(declare-fun tp!15777 () Bool)

(declare-fun b_and!10875 () Bool)

(assert (=> b!176612 (= tp!15777 b_and!10875)))

(declare-fun b!176610 () Bool)

(declare-fun res!83718 () Bool)

(declare-fun e!116510 () Bool)

(assert (=> b!176610 (=> (not res!83718) (not e!116510))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!5157 0))(
  ( (V!5158 (val!2111 Int)) )
))
(declare-datatypes ((ValueCell!1723 0))(
  ( (ValueCellFull!1723 (v!3985 V!5157)) (EmptyCell!1723) )
))
(declare-datatypes ((array!7412 0))(
  ( (array!7413 (arr!3516 (Array (_ BitVec 32) (_ BitVec 64))) (size!3820 (_ BitVec 32))) )
))
(declare-datatypes ((array!7414 0))(
  ( (array!7415 (arr!3517 (Array (_ BitVec 32) ValueCell!1723)) (size!3821 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2354 0))(
  ( (LongMapFixedSize!2355 (defaultEntry!3638 Int) (mask!8560 (_ BitVec 32)) (extraKeys!3375 (_ BitVec 32)) (zeroValue!3479 V!5157) (minValue!3479 V!5157) (_size!1226 (_ BitVec 32)) (_keys!5501 array!7412) (_values!3621 array!7414) (_vacant!1226 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2354)

(declare-datatypes ((SeekEntryResult!567 0))(
  ( (MissingZero!567 (index!4436 (_ BitVec 32))) (Found!567 (index!4437 (_ BitVec 32))) (Intermediate!567 (undefined!1379 Bool) (index!4438 (_ BitVec 32)) (x!19395 (_ BitVec 32))) (Undefined!567) (MissingVacant!567 (index!4439 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7412 (_ BitVec 32)) SeekEntryResult!567)

(assert (=> b!176610 (= res!83718 (is-Undefined!567 (seekEntryOrOpen!0 key!828 (_keys!5501 thiss!1248) (mask!8560 thiss!1248))))))

(declare-fun b!176611 () Bool)

(declare-fun e!116511 () Bool)

(declare-fun tp_is_empty!4133 () Bool)

(assert (=> b!176611 (= e!116511 tp_is_empty!4133)))

(declare-fun e!116513 () Bool)

(declare-fun e!116512 () Bool)

(declare-fun array_inv!2243 (array!7412) Bool)

(declare-fun array_inv!2244 (array!7414) Bool)

(assert (=> b!176612 (= e!116512 (and tp!15777 tp_is_empty!4133 (array_inv!2243 (_keys!5501 thiss!1248)) (array_inv!2244 (_values!3621 thiss!1248)) e!116513))))

(declare-fun b!176613 () Bool)

(declare-fun res!83717 () Bool)

(assert (=> b!176613 (=> (not res!83717) (not e!116510))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!176613 (= res!83717 (validMask!0 (mask!8560 thiss!1248)))))

(declare-fun b!176614 () Bool)

(declare-fun res!83716 () Bool)

(assert (=> b!176614 (=> (not res!83716) (not e!116510))))

(assert (=> b!176614 (= res!83716 (not (= key!828 (bvneg key!828))))))

(declare-fun b!176615 () Bool)

(declare-fun res!83719 () Bool)

(assert (=> b!176615 (=> (not res!83719) (not e!116510))))

(assert (=> b!176615 (= res!83719 (and (= (size!3821 (_values!3621 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8560 thiss!1248))) (= (size!3820 (_keys!5501 thiss!1248)) (size!3821 (_values!3621 thiss!1248))) (bvsge (mask!8560 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3375 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3375 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun res!83714 () Bool)

(assert (=> start!17682 (=> (not res!83714) (not e!116510))))

(declare-fun valid!981 (LongMapFixedSize!2354) Bool)

(assert (=> start!17682 (= res!83714 (valid!981 thiss!1248))))

(assert (=> start!17682 e!116510))

(assert (=> start!17682 e!116512))

(assert (=> start!17682 true))

(declare-fun b!176616 () Bool)

(declare-fun res!83720 () Bool)

(assert (=> b!176616 (=> (not res!83720) (not e!116510))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7412 (_ BitVec 32)) Bool)

(assert (=> b!176616 (= res!83720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5501 thiss!1248) (mask!8560 thiss!1248)))))

(declare-fun b!176617 () Bool)

(declare-fun e!116515 () Bool)

(assert (=> b!176617 (= e!116515 tp_is_empty!4133)))

(declare-fun mapNonEmpty!7056 () Bool)

(declare-fun mapRes!7056 () Bool)

(declare-fun tp!15776 () Bool)

(assert (=> mapNonEmpty!7056 (= mapRes!7056 (and tp!15776 e!116515))))

(declare-fun mapKey!7056 () (_ BitVec 32))

(declare-fun mapValue!7056 () ValueCell!1723)

(declare-fun mapRest!7056 () (Array (_ BitVec 32) ValueCell!1723))

(assert (=> mapNonEmpty!7056 (= (arr!3517 (_values!3621 thiss!1248)) (store mapRest!7056 mapKey!7056 mapValue!7056))))

(declare-fun mapIsEmpty!7056 () Bool)

(assert (=> mapIsEmpty!7056 mapRes!7056))

(declare-fun b!176618 () Bool)

(declare-datatypes ((List!2259 0))(
  ( (Nil!2256) (Cons!2255 (h!2876 (_ BitVec 64)) (t!7093 List!2259)) )
))
(declare-fun arrayNoDuplicates!0 (array!7412 (_ BitVec 32) List!2259) Bool)

(assert (=> b!176618 (= e!116510 (not (arrayNoDuplicates!0 (_keys!5501 thiss!1248) #b00000000000000000000000000000000 Nil!2256)))))

(declare-fun b!176619 () Bool)

(declare-fun res!83715 () Bool)

(assert (=> b!176619 (=> (not res!83715) (not e!116510))))

(declare-datatypes ((tuple2!3282 0))(
  ( (tuple2!3283 (_1!1651 (_ BitVec 64)) (_2!1651 V!5157)) )
))
(declare-datatypes ((List!2260 0))(
  ( (Nil!2257) (Cons!2256 (h!2877 tuple2!3282) (t!7094 List!2260)) )
))
(declare-datatypes ((ListLongMap!2223 0))(
  ( (ListLongMap!2224 (toList!1127 List!2260)) )
))
(declare-fun contains!1185 (ListLongMap!2223 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!774 (array!7412 array!7414 (_ BitVec 32) (_ BitVec 32) V!5157 V!5157 (_ BitVec 32) Int) ListLongMap!2223)

(assert (=> b!176619 (= res!83715 (contains!1185 (getCurrentListMap!774 (_keys!5501 thiss!1248) (_values!3621 thiss!1248) (mask!8560 thiss!1248) (extraKeys!3375 thiss!1248) (zeroValue!3479 thiss!1248) (minValue!3479 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3638 thiss!1248)) key!828))))

(declare-fun b!176620 () Bool)

(assert (=> b!176620 (= e!116513 (and e!116511 mapRes!7056))))

(declare-fun condMapEmpty!7056 () Bool)

(declare-fun mapDefault!7056 () ValueCell!1723)


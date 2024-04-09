; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18422 () Bool)

(assert start!18422)

(declare-fun b!182579 () Bool)

(declare-fun b_free!4505 () Bool)

(declare-fun b_next!4505 () Bool)

(assert (=> b!182579 (= b_free!4505 (not b_next!4505))))

(declare-fun tp!16277 () Bool)

(declare-fun b_and!11087 () Bool)

(assert (=> b!182579 (= tp!16277 b_and!11087)))

(declare-fun b!182577 () Bool)

(declare-fun e!120231 () Bool)

(declare-fun e!120227 () Bool)

(assert (=> b!182577 (= e!120231 e!120227)))

(declare-fun res!86430 () Bool)

(assert (=> b!182577 (=> (not res!86430) (not e!120227))))

(declare-datatypes ((SeekEntryResult!619 0))(
  ( (MissingZero!619 (index!4646 (_ BitVec 32))) (Found!619 (index!4647 (_ BitVec 32))) (Intermediate!619 (undefined!1431 Bool) (index!4648 (_ BitVec 32)) (x!19911 (_ BitVec 32))) (Undefined!619) (MissingVacant!619 (index!4649 (_ BitVec 32))) )
))
(declare-fun lt!90323 () SeekEntryResult!619)

(assert (=> b!182577 (= res!86430 (and (not (is-Undefined!619 lt!90323)) (not (is-MissingVacant!619 lt!90323)) (not (is-MissingZero!619 lt!90323)) (is-Found!619 lt!90323)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!5349 0))(
  ( (V!5350 (val!2183 Int)) )
))
(declare-datatypes ((ValueCell!1795 0))(
  ( (ValueCellFull!1795 (v!4079 V!5349)) (EmptyCell!1795) )
))
(declare-datatypes ((array!7740 0))(
  ( (array!7741 (arr!3660 (Array (_ BitVec 32) (_ BitVec 64))) (size!3972 (_ BitVec 32))) )
))
(declare-datatypes ((array!7742 0))(
  ( (array!7743 (arr!3661 (Array (_ BitVec 32) ValueCell!1795)) (size!3973 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2498 0))(
  ( (LongMapFixedSize!2499 (defaultEntry!3736 Int) (mask!8782 (_ BitVec 32)) (extraKeys!3473 (_ BitVec 32)) (zeroValue!3577 V!5349) (minValue!3577 V!5349) (_size!1298 (_ BitVec 32)) (_keys!5649 array!7740) (_values!3719 array!7742) (_vacant!1298 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2498)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7740 (_ BitVec 32)) SeekEntryResult!619)

(assert (=> b!182577 (= lt!90323 (seekEntryOrOpen!0 key!828 (_keys!5649 thiss!1248) (mask!8782 thiss!1248)))))

(declare-fun b!182578 () Bool)

(declare-fun res!86431 () Bool)

(assert (=> b!182578 (=> (not res!86431) (not e!120227))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!182578 (= res!86431 (validMask!0 (mask!8782 thiss!1248)))))

(declare-fun mapNonEmpty!7340 () Bool)

(declare-fun mapRes!7340 () Bool)

(declare-fun tp!16276 () Bool)

(declare-fun e!120232 () Bool)

(assert (=> mapNonEmpty!7340 (= mapRes!7340 (and tp!16276 e!120232))))

(declare-fun mapRest!7340 () (Array (_ BitVec 32) ValueCell!1795))

(declare-fun mapKey!7340 () (_ BitVec 32))

(declare-fun mapValue!7340 () ValueCell!1795)

(assert (=> mapNonEmpty!7340 (= (arr!3661 (_values!3719 thiss!1248)) (store mapRest!7340 mapKey!7340 mapValue!7340))))

(declare-fun tp_is_empty!4277 () Bool)

(declare-fun e!120226 () Bool)

(declare-fun e!120230 () Bool)

(declare-fun array_inv!2353 (array!7740) Bool)

(declare-fun array_inv!2354 (array!7742) Bool)

(assert (=> b!182579 (= e!120230 (and tp!16277 tp_is_empty!4277 (array_inv!2353 (_keys!5649 thiss!1248)) (array_inv!2354 (_values!3719 thiss!1248)) e!120226))))

(declare-fun b!182580 () Bool)

(declare-fun res!86428 () Bool)

(assert (=> b!182580 (=> (not res!86428) (not e!120231))))

(assert (=> b!182580 (= res!86428 (not (= key!828 (bvneg key!828))))))

(declare-fun b!182581 () Bool)

(declare-fun res!86432 () Bool)

(assert (=> b!182581 (=> (not res!86432) (not e!120227))))

(declare-datatypes ((tuple2!3398 0))(
  ( (tuple2!3399 (_1!1709 (_ BitVec 64)) (_2!1709 V!5349)) )
))
(declare-datatypes ((List!2340 0))(
  ( (Nil!2337) (Cons!2336 (h!2965 tuple2!3398) (t!7210 List!2340)) )
))
(declare-datatypes ((ListLongMap!2329 0))(
  ( (ListLongMap!2330 (toList!1180 List!2340)) )
))
(declare-fun contains!1258 (ListLongMap!2329 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!823 (array!7740 array!7742 (_ BitVec 32) (_ BitVec 32) V!5349 V!5349 (_ BitVec 32) Int) ListLongMap!2329)

(assert (=> b!182581 (= res!86432 (contains!1258 (getCurrentListMap!823 (_keys!5649 thiss!1248) (_values!3719 thiss!1248) (mask!8782 thiss!1248) (extraKeys!3473 thiss!1248) (zeroValue!3577 thiss!1248) (minValue!3577 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3736 thiss!1248)) key!828))))

(declare-fun b!182582 () Bool)

(declare-fun res!86429 () Bool)

(assert (=> b!182582 (=> (not res!86429) (not e!120227))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7740 (_ BitVec 32)) Bool)

(assert (=> b!182582 (= res!86429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5649 thiss!1248) (mask!8782 thiss!1248)))))

(declare-fun b!182583 () Bool)

(declare-fun res!86427 () Bool)

(assert (=> b!182583 (=> (not res!86427) (not e!120227))))

(assert (=> b!182583 (= res!86427 (and (= (size!3973 (_values!3719 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8782 thiss!1248))) (= (size!3972 (_keys!5649 thiss!1248)) (size!3973 (_values!3719 thiss!1248))) (bvsge (mask!8782 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3473 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3473 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!182585 () Bool)

(assert (=> b!182585 (= e!120232 tp_is_empty!4277)))

(declare-fun mapIsEmpty!7340 () Bool)

(assert (=> mapIsEmpty!7340 mapRes!7340))

(declare-fun b!182586 () Bool)

(declare-datatypes ((List!2341 0))(
  ( (Nil!2338) (Cons!2337 (h!2966 (_ BitVec 64)) (t!7211 List!2341)) )
))
(declare-fun arrayNoDuplicates!0 (array!7740 (_ BitVec 32) List!2341) Bool)

(assert (=> b!182586 (= e!120227 (not (arrayNoDuplicates!0 (_keys!5649 thiss!1248) #b00000000000000000000000000000000 Nil!2338)))))

(declare-fun b!182587 () Bool)

(declare-fun e!120228 () Bool)

(assert (=> b!182587 (= e!120228 tp_is_empty!4277)))

(declare-fun res!86433 () Bool)

(assert (=> start!18422 (=> (not res!86433) (not e!120231))))

(declare-fun valid!1027 (LongMapFixedSize!2498) Bool)

(assert (=> start!18422 (= res!86433 (valid!1027 thiss!1248))))

(assert (=> start!18422 e!120231))

(assert (=> start!18422 e!120230))

(assert (=> start!18422 true))

(declare-fun b!182584 () Bool)

(assert (=> b!182584 (= e!120226 (and e!120228 mapRes!7340))))

(declare-fun condMapEmpty!7340 () Bool)

(declare-fun mapDefault!7340 () ValueCell!1795)


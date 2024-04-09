; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18452 () Bool)

(assert start!18452)

(declare-fun b!182926 () Bool)

(declare-fun b_free!4517 () Bool)

(declare-fun b_next!4517 () Bool)

(assert (=> b!182926 (= b_free!4517 (not b_next!4517))))

(declare-fun tp!16316 () Bool)

(declare-fun b_and!11101 () Bool)

(assert (=> b!182926 (= tp!16316 b_and!11101)))

(declare-fun b!182919 () Bool)

(declare-fun res!86615 () Bool)

(declare-fun e!120440 () Bool)

(assert (=> b!182919 (=> (not res!86615) (not e!120440))))

(declare-datatypes ((V!5365 0))(
  ( (V!5366 (val!2189 Int)) )
))
(declare-datatypes ((ValueCell!1801 0))(
  ( (ValueCellFull!1801 (v!4086 V!5365)) (EmptyCell!1801) )
))
(declare-datatypes ((array!7766 0))(
  ( (array!7767 (arr!3672 (Array (_ BitVec 32) (_ BitVec 64))) (size!3984 (_ BitVec 32))) )
))
(declare-datatypes ((array!7768 0))(
  ( (array!7769 (arr!3673 (Array (_ BitVec 32) ValueCell!1801)) (size!3985 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2510 0))(
  ( (LongMapFixedSize!2511 (defaultEntry!3743 Int) (mask!8796 (_ BitVec 32)) (extraKeys!3480 (_ BitVec 32)) (zeroValue!3584 V!5365) (minValue!3584 V!5365) (_size!1304 (_ BitVec 32)) (_keys!5658 array!7766) (_values!3726 array!7768) (_vacant!1304 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2510)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3408 0))(
  ( (tuple2!3409 (_1!1714 (_ BitVec 64)) (_2!1714 V!5365)) )
))
(declare-datatypes ((List!2351 0))(
  ( (Nil!2348) (Cons!2347 (h!2976 tuple2!3408) (t!7223 List!2351)) )
))
(declare-datatypes ((ListLongMap!2339 0))(
  ( (ListLongMap!2340 (toList!1185 List!2351)) )
))
(declare-fun contains!1264 (ListLongMap!2339 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!828 (array!7766 array!7768 (_ BitVec 32) (_ BitVec 32) V!5365 V!5365 (_ BitVec 32) Int) ListLongMap!2339)

(assert (=> b!182919 (= res!86615 (contains!1264 (getCurrentListMap!828 (_keys!5658 thiss!1248) (_values!3726 thiss!1248) (mask!8796 thiss!1248) (extraKeys!3480 thiss!1248) (zeroValue!3584 thiss!1248) (minValue!3584 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3743 thiss!1248)) key!828))))

(declare-fun b!182920 () Bool)

(declare-fun res!86618 () Bool)

(assert (=> b!182920 (=> (not res!86618) (not e!120440))))

(assert (=> b!182920 (= res!86618 (and (= (size!3985 (_values!3726 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8796 thiss!1248))) (= (size!3984 (_keys!5658 thiss!1248)) (size!3985 (_values!3726 thiss!1248))) (bvsge (mask!8796 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3480 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3480 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!182921 () Bool)

(declare-fun res!86617 () Bool)

(assert (=> b!182921 (=> (not res!86617) (not e!120440))))

(declare-datatypes ((List!2352 0))(
  ( (Nil!2349) (Cons!2348 (h!2977 (_ BitVec 64)) (t!7224 List!2352)) )
))
(declare-fun arrayNoDuplicates!0 (array!7766 (_ BitVec 32) List!2352) Bool)

(assert (=> b!182921 (= res!86617 (arrayNoDuplicates!0 (_keys!5658 thiss!1248) #b00000000000000000000000000000000 Nil!2349))))

(declare-fun b!182922 () Bool)

(declare-fun res!86621 () Bool)

(assert (=> b!182922 (=> (not res!86621) (not e!120440))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7766 (_ BitVec 32)) Bool)

(assert (=> b!182922 (= res!86621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5658 thiss!1248) (mask!8796 thiss!1248)))))

(declare-fun b!182923 () Bool)

(declare-fun e!120442 () Bool)

(declare-fun tp_is_empty!4289 () Bool)

(assert (=> b!182923 (= e!120442 tp_is_empty!4289)))

(declare-fun res!86616 () Bool)

(declare-fun e!120438 () Bool)

(assert (=> start!18452 (=> (not res!86616) (not e!120438))))

(declare-fun valid!1032 (LongMapFixedSize!2510) Bool)

(assert (=> start!18452 (= res!86616 (valid!1032 thiss!1248))))

(assert (=> start!18452 e!120438))

(declare-fun e!120441 () Bool)

(assert (=> start!18452 e!120441))

(assert (=> start!18452 true))

(declare-fun b!182924 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!182924 (= e!120440 (not (validKeyInArray!0 key!828)))))

(declare-fun b!182925 () Bool)

(assert (=> b!182925 (= e!120438 e!120440)))

(declare-fun res!86622 () Bool)

(assert (=> b!182925 (=> (not res!86622) (not e!120440))))

(declare-datatypes ((SeekEntryResult!625 0))(
  ( (MissingZero!625 (index!4670 (_ BitVec 32))) (Found!625 (index!4671 (_ BitVec 32))) (Intermediate!625 (undefined!1437 Bool) (index!4672 (_ BitVec 32)) (x!19943 (_ BitVec 32))) (Undefined!625) (MissingVacant!625 (index!4673 (_ BitVec 32))) )
))
(declare-fun lt!90446 () SeekEntryResult!625)

(assert (=> b!182925 (= res!86622 (and (not (is-Undefined!625 lt!90446)) (not (is-MissingVacant!625 lt!90446)) (not (is-MissingZero!625 lt!90446)) (is-Found!625 lt!90446)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7766 (_ BitVec 32)) SeekEntryResult!625)

(assert (=> b!182925 (= lt!90446 (seekEntryOrOpen!0 key!828 (_keys!5658 thiss!1248) (mask!8796 thiss!1248)))))

(declare-fun e!120439 () Bool)

(declare-fun array_inv!2365 (array!7766) Bool)

(declare-fun array_inv!2366 (array!7768) Bool)

(assert (=> b!182926 (= e!120441 (and tp!16316 tp_is_empty!4289 (array_inv!2365 (_keys!5658 thiss!1248)) (array_inv!2366 (_values!3726 thiss!1248)) e!120439))))

(declare-fun mapNonEmpty!7361 () Bool)

(declare-fun mapRes!7361 () Bool)

(declare-fun tp!16315 () Bool)

(declare-fun e!120436 () Bool)

(assert (=> mapNonEmpty!7361 (= mapRes!7361 (and tp!16315 e!120436))))

(declare-fun mapKey!7361 () (_ BitVec 32))

(declare-fun mapRest!7361 () (Array (_ BitVec 32) ValueCell!1801))

(declare-fun mapValue!7361 () ValueCell!1801)

(assert (=> mapNonEmpty!7361 (= (arr!3673 (_values!3726 thiss!1248)) (store mapRest!7361 mapKey!7361 mapValue!7361))))

(declare-fun mapIsEmpty!7361 () Bool)

(assert (=> mapIsEmpty!7361 mapRes!7361))

(declare-fun b!182927 () Bool)

(assert (=> b!182927 (= e!120439 (and e!120442 mapRes!7361))))

(declare-fun condMapEmpty!7361 () Bool)

(declare-fun mapDefault!7361 () ValueCell!1801)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18494 () Bool)

(assert start!18494)

(declare-fun b!183272 () Bool)

(declare-fun b_free!4525 () Bool)

(declare-fun b_next!4525 () Bool)

(assert (=> b!183272 (= b_free!4525 (not b_next!4525))))

(declare-fun tp!16346 () Bool)

(declare-fun b_and!11113 () Bool)

(assert (=> b!183272 (= tp!16346 b_and!11113)))

(declare-fun b!183266 () Bool)

(declare-fun e!120668 () Bool)

(declare-fun tp_is_empty!4297 () Bool)

(assert (=> b!183266 (= e!120668 tp_is_empty!4297)))

(declare-fun b!183267 () Bool)

(declare-fun res!86764 () Bool)

(declare-fun e!120673 () Bool)

(assert (=> b!183267 (=> (not res!86764) (not e!120673))))

(declare-datatypes ((V!5377 0))(
  ( (V!5378 (val!2193 Int)) )
))
(declare-datatypes ((ValueCell!1805 0))(
  ( (ValueCellFull!1805 (v!4092 V!5377)) (EmptyCell!1805) )
))
(declare-datatypes ((array!7786 0))(
  ( (array!7787 (arr!3680 (Array (_ BitVec 32) (_ BitVec 64))) (size!3992 (_ BitVec 32))) )
))
(declare-datatypes ((array!7788 0))(
  ( (array!7789 (arr!3681 (Array (_ BitVec 32) ValueCell!1805)) (size!3993 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2518 0))(
  ( (LongMapFixedSize!2519 (defaultEntry!3749 Int) (mask!8811 (_ BitVec 32)) (extraKeys!3486 (_ BitVec 32)) (zeroValue!3590 V!5377) (minValue!3590 V!5377) (_size!1308 (_ BitVec 32)) (_keys!5667 array!7786) (_values!3732 array!7788) (_vacant!1308 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2518)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!183267 (= res!86764 (validMask!0 (mask!8811 thiss!1248)))))

(declare-fun b!183269 () Bool)

(declare-fun e!120671 () Bool)

(assert (=> b!183269 (= e!120671 tp_is_empty!4297)))

(declare-fun b!183270 () Bool)

(declare-fun res!86763 () Bool)

(assert (=> b!183270 (=> (not res!86763) (not e!120673))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3414 0))(
  ( (tuple2!3415 (_1!1717 (_ BitVec 64)) (_2!1717 V!5377)) )
))
(declare-datatypes ((List!2356 0))(
  ( (Nil!2353) (Cons!2352 (h!2981 tuple2!3414) (t!7232 List!2356)) )
))
(declare-datatypes ((ListLongMap!2345 0))(
  ( (ListLongMap!2346 (toList!1188 List!2356)) )
))
(declare-fun contains!1268 (ListLongMap!2345 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!831 (array!7786 array!7788 (_ BitVec 32) (_ BitVec 32) V!5377 V!5377 (_ BitVec 32) Int) ListLongMap!2345)

(assert (=> b!183270 (= res!86763 (not (contains!1268 (getCurrentListMap!831 (_keys!5667 thiss!1248) (_values!3732 thiss!1248) (mask!8811 thiss!1248) (extraKeys!3486 thiss!1248) (zeroValue!3590 thiss!1248) (minValue!3590 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3749 thiss!1248)) key!828)))))

(declare-fun b!183271 () Bool)

(declare-fun e!120669 () Bool)

(assert (=> b!183271 (= e!120669 e!120673)))

(declare-fun res!86762 () Bool)

(assert (=> b!183271 (=> (not res!86762) (not e!120673))))

(declare-datatypes ((SeekEntryResult!629 0))(
  ( (MissingZero!629 (index!4686 (_ BitVec 32))) (Found!629 (index!4687 (_ BitVec 32))) (Intermediate!629 (undefined!1441 Bool) (index!4688 (_ BitVec 32)) (x!19983 (_ BitVec 32))) (Undefined!629) (MissingVacant!629 (index!4689 (_ BitVec 32))) )
))
(declare-fun lt!90641 () SeekEntryResult!629)

(assert (=> b!183271 (= res!86762 (and (not (is-Undefined!629 lt!90641)) (not (is-MissingVacant!629 lt!90641)) (not (is-MissingZero!629 lt!90641)) (is-Found!629 lt!90641)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7786 (_ BitVec 32)) SeekEntryResult!629)

(assert (=> b!183271 (= lt!90641 (seekEntryOrOpen!0 key!828 (_keys!5667 thiss!1248) (mask!8811 thiss!1248)))))

(declare-fun e!120672 () Bool)

(declare-fun e!120670 () Bool)

(declare-fun array_inv!2369 (array!7786) Bool)

(declare-fun array_inv!2370 (array!7788) Bool)

(assert (=> b!183272 (= e!120672 (and tp!16346 tp_is_empty!4297 (array_inv!2369 (_keys!5667 thiss!1248)) (array_inv!2370 (_values!3732 thiss!1248)) e!120670))))

(declare-fun mapNonEmpty!7379 () Bool)

(declare-fun mapRes!7379 () Bool)

(declare-fun tp!16345 () Bool)

(assert (=> mapNonEmpty!7379 (= mapRes!7379 (and tp!16345 e!120668))))

(declare-fun mapRest!7379 () (Array (_ BitVec 32) ValueCell!1805))

(declare-fun mapValue!7379 () ValueCell!1805)

(declare-fun mapKey!7379 () (_ BitVec 32))

(assert (=> mapNonEmpty!7379 (= (arr!3681 (_values!3732 thiss!1248)) (store mapRest!7379 mapKey!7379 mapValue!7379))))

(declare-fun b!183273 () Bool)

(assert (=> b!183273 (= e!120670 (and e!120671 mapRes!7379))))

(declare-fun condMapEmpty!7379 () Bool)

(declare-fun mapDefault!7379 () ValueCell!1805)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17948 () Bool)

(assert start!17948)

(declare-fun b!178721 () Bool)

(declare-fun b_free!4411 () Bool)

(declare-fun b_next!4411 () Bool)

(assert (=> b!178721 (= b_free!4411 (not b_next!4411))))

(declare-fun tp!15950 () Bool)

(declare-fun b_and!10951 () Bool)

(assert (=> b!178721 (= tp!15950 b_and!10951)))

(declare-fun b!178719 () Bool)

(declare-fun res!84670 () Bool)

(declare-fun e!117791 () Bool)

(assert (=> b!178719 (=> (not res!84670) (not e!117791))))

(declare-datatypes ((V!5225 0))(
  ( (V!5226 (val!2136 Int)) )
))
(declare-datatypes ((ValueCell!1748 0))(
  ( (ValueCellFull!1748 (v!4017 V!5225)) (EmptyCell!1748) )
))
(declare-datatypes ((array!7526 0))(
  ( (array!7527 (arr!3566 (Array (_ BitVec 32) (_ BitVec 64))) (size!3873 (_ BitVec 32))) )
))
(declare-datatypes ((array!7528 0))(
  ( (array!7529 (arr!3567 (Array (_ BitVec 32) ValueCell!1748)) (size!3874 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2404 0))(
  ( (LongMapFixedSize!2405 (defaultEntry!3673 Int) (mask!8641 (_ BitVec 32)) (extraKeys!3410 (_ BitVec 32)) (zeroValue!3514 V!5225) (minValue!3514 V!5225) (_size!1251 (_ BitVec 32)) (_keys!5554 array!7526) (_values!3656 array!7528) (_vacant!1251 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2404)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3316 0))(
  ( (tuple2!3317 (_1!1668 (_ BitVec 64)) (_2!1668 V!5225)) )
))
(declare-datatypes ((List!2286 0))(
  ( (Nil!2283) (Cons!2282 (h!2906 tuple2!3316) (t!7134 List!2286)) )
))
(declare-datatypes ((ListLongMap!2257 0))(
  ( (ListLongMap!2258 (toList!1144 List!2286)) )
))
(declare-fun contains!1210 (ListLongMap!2257 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!791 (array!7526 array!7528 (_ BitVec 32) (_ BitVec 32) V!5225 V!5225 (_ BitVec 32) Int) ListLongMap!2257)

(assert (=> b!178719 (= res!84670 (not (contains!1210 (getCurrentListMap!791 (_keys!5554 thiss!1248) (_values!3656 thiss!1248) (mask!8641 thiss!1248) (extraKeys!3410 thiss!1248) (zeroValue!3514 thiss!1248) (minValue!3514 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3673 thiss!1248)) key!828)))))

(declare-fun b!178720 () Bool)

(declare-fun res!84672 () Bool)

(assert (=> b!178720 (=> (not res!84672) (not e!117791))))

(declare-datatypes ((SeekEntryResult!587 0))(
  ( (MissingZero!587 (index!4516 (_ BitVec 32))) (Found!587 (index!4517 (_ BitVec 32))) (Intermediate!587 (undefined!1399 Bool) (index!4518 (_ BitVec 32)) (x!19581 (_ BitVec 32))) (Undefined!587) (MissingVacant!587 (index!4519 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7526 (_ BitVec 32)) SeekEntryResult!587)

(assert (=> b!178720 (= res!84672 (is-Undefined!587 (seekEntryOrOpen!0 key!828 (_keys!5554 thiss!1248) (mask!8641 thiss!1248))))))

(declare-fun res!84674 () Bool)

(assert (=> start!17948 (=> (not res!84674) (not e!117791))))

(declare-fun valid!998 (LongMapFixedSize!2404) Bool)

(assert (=> start!17948 (= res!84674 (valid!998 thiss!1248))))

(assert (=> start!17948 e!117791))

(declare-fun e!117794 () Bool)

(assert (=> start!17948 e!117794))

(assert (=> start!17948 true))

(declare-fun mapNonEmpty!7155 () Bool)

(declare-fun mapRes!7155 () Bool)

(declare-fun tp!15951 () Bool)

(declare-fun e!117796 () Bool)

(assert (=> mapNonEmpty!7155 (= mapRes!7155 (and tp!15951 e!117796))))

(declare-fun mapRest!7155 () (Array (_ BitVec 32) ValueCell!1748))

(declare-fun mapKey!7155 () (_ BitVec 32))

(declare-fun mapValue!7155 () ValueCell!1748)

(assert (=> mapNonEmpty!7155 (= (arr!3567 (_values!3656 thiss!1248)) (store mapRest!7155 mapKey!7155 mapValue!7155))))

(declare-fun tp_is_empty!4183 () Bool)

(declare-fun e!117793 () Bool)

(declare-fun array_inv!2283 (array!7526) Bool)

(declare-fun array_inv!2284 (array!7528) Bool)

(assert (=> b!178721 (= e!117794 (and tp!15950 tp_is_empty!4183 (array_inv!2283 (_keys!5554 thiss!1248)) (array_inv!2284 (_values!3656 thiss!1248)) e!117793))))

(declare-fun b!178722 () Bool)

(declare-fun res!84673 () Bool)

(assert (=> b!178722 (=> (not res!84673) (not e!117791))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!178722 (= res!84673 (validMask!0 (mask!8641 thiss!1248)))))

(declare-fun b!178723 () Bool)

(assert (=> b!178723 (= e!117796 tp_is_empty!4183)))

(declare-fun b!178724 () Bool)

(declare-fun e!117792 () Bool)

(assert (=> b!178724 (= e!117793 (and e!117792 mapRes!7155))))

(declare-fun condMapEmpty!7155 () Bool)

(declare-fun mapDefault!7155 () ValueCell!1748)


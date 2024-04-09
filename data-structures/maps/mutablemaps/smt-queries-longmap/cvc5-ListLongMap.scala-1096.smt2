; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22514 () Bool)

(assert start!22514)

(declare-fun b!235222 () Bool)

(declare-fun b_free!6325 () Bool)

(declare-fun b_next!6325 () Bool)

(assert (=> b!235222 (= b_free!6325 (not b_next!6325))))

(declare-fun tp!22141 () Bool)

(declare-fun b_and!13271 () Bool)

(assert (=> b!235222 (= tp!22141 b_and!13271)))

(declare-fun b!235215 () Bool)

(declare-fun res!115359 () Bool)

(declare-fun e!152771 () Bool)

(assert (=> b!235215 (=> (not res!115359) (not e!152771))))

(declare-datatypes ((V!7897 0))(
  ( (V!7898 (val!3138 Int)) )
))
(declare-datatypes ((ValueCell!2750 0))(
  ( (ValueCellFull!2750 (v!5161 V!7897)) (EmptyCell!2750) )
))
(declare-datatypes ((array!11630 0))(
  ( (array!11631 (arr!5527 (Array (_ BitVec 32) ValueCell!2750)) (size!5864 (_ BitVec 32))) )
))
(declare-datatypes ((array!11632 0))(
  ( (array!11633 (arr!5528 (Array (_ BitVec 32) (_ BitVec 64))) (size!5865 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3400 0))(
  ( (LongMapFixedSize!3401 (defaultEntry!4370 Int) (mask!10337 (_ BitVec 32)) (extraKeys!4107 (_ BitVec 32)) (zeroValue!4211 V!7897) (minValue!4211 V!7897) (_size!1749 (_ BitVec 32)) (_keys!6444 array!11632) (_values!4353 array!11630) (_vacant!1749 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3400)

(assert (=> b!235215 (= res!115359 (and (= (size!5864 (_values!4353 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10337 thiss!1504))) (= (size!5865 (_keys!6444 thiss!1504)) (size!5864 (_values!4353 thiss!1504))) (bvsge (mask!10337 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4107 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4107 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!235216 () Bool)

(declare-datatypes ((List!3552 0))(
  ( (Nil!3549) (Cons!3548 (h!4200 (_ BitVec 64)) (t!8533 List!3552)) )
))
(declare-fun arrayNoDuplicates!0 (array!11632 (_ BitVec 32) List!3552) Bool)

(assert (=> b!235216 (= e!152771 (not (arrayNoDuplicates!0 (_keys!6444 thiss!1504) #b00000000000000000000000000000000 Nil!3549)))))

(declare-fun b!235217 () Bool)

(declare-fun res!115353 () Bool)

(declare-fun e!152773 () Bool)

(assert (=> b!235217 (=> (not res!115353) (not e!152773))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!235217 (= res!115353 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!10475 () Bool)

(declare-fun mapRes!10475 () Bool)

(declare-fun tp!22142 () Bool)

(declare-fun e!152772 () Bool)

(assert (=> mapNonEmpty!10475 (= mapRes!10475 (and tp!22142 e!152772))))

(declare-fun mapValue!10475 () ValueCell!2750)

(declare-fun mapKey!10475 () (_ BitVec 32))

(declare-fun mapRest!10475 () (Array (_ BitVec 32) ValueCell!2750))

(assert (=> mapNonEmpty!10475 (= (arr!5527 (_values!4353 thiss!1504)) (store mapRest!10475 mapKey!10475 mapValue!10475))))

(declare-fun b!235218 () Bool)

(declare-fun res!115356 () Bool)

(assert (=> b!235218 (=> (not res!115356) (not e!152771))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!235218 (= res!115356 (validMask!0 (mask!10337 thiss!1504)))))

(declare-fun b!235219 () Bool)

(assert (=> b!235219 (= e!152773 e!152771)))

(declare-fun res!115355 () Bool)

(assert (=> b!235219 (=> (not res!115355) (not e!152771))))

(declare-datatypes ((SeekEntryResult!996 0))(
  ( (MissingZero!996 (index!6154 (_ BitVec 32))) (Found!996 (index!6155 (_ BitVec 32))) (Intermediate!996 (undefined!1808 Bool) (index!6156 (_ BitVec 32)) (x!23782 (_ BitVec 32))) (Undefined!996) (MissingVacant!996 (index!6157 (_ BitVec 32))) )
))
(declare-fun lt!119051 () SeekEntryResult!996)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!235219 (= res!115355 (or (= lt!119051 (MissingZero!996 index!297)) (= lt!119051 (MissingVacant!996 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11632 (_ BitVec 32)) SeekEntryResult!996)

(assert (=> b!235219 (= lt!119051 (seekEntryOrOpen!0 key!932 (_keys!6444 thiss!1504) (mask!10337 thiss!1504)))))

(declare-fun b!235220 () Bool)

(declare-fun res!115357 () Bool)

(assert (=> b!235220 (=> (not res!115357) (not e!152771))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11632 (_ BitVec 32)) Bool)

(assert (=> b!235220 (= res!115357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6444 thiss!1504) (mask!10337 thiss!1504)))))

(declare-fun b!235221 () Bool)

(declare-fun e!152770 () Bool)

(declare-fun tp_is_empty!6187 () Bool)

(assert (=> b!235221 (= e!152770 tp_is_empty!6187)))

(declare-fun e!152774 () Bool)

(declare-fun e!152775 () Bool)

(declare-fun array_inv!3635 (array!11632) Bool)

(declare-fun array_inv!3636 (array!11630) Bool)

(assert (=> b!235222 (= e!152775 (and tp!22141 tp_is_empty!6187 (array_inv!3635 (_keys!6444 thiss!1504)) (array_inv!3636 (_values!4353 thiss!1504)) e!152774))))

(declare-fun b!235223 () Bool)

(declare-fun res!115358 () Bool)

(assert (=> b!235223 (=> (not res!115358) (not e!152771))))

(declare-datatypes ((tuple2!4620 0))(
  ( (tuple2!4621 (_1!2320 (_ BitVec 64)) (_2!2320 V!7897)) )
))
(declare-datatypes ((List!3553 0))(
  ( (Nil!3550) (Cons!3549 (h!4201 tuple2!4620) (t!8534 List!3553)) )
))
(declare-datatypes ((ListLongMap!3547 0))(
  ( (ListLongMap!3548 (toList!1789 List!3553)) )
))
(declare-fun contains!1659 (ListLongMap!3547 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1312 (array!11632 array!11630 (_ BitVec 32) (_ BitVec 32) V!7897 V!7897 (_ BitVec 32) Int) ListLongMap!3547)

(assert (=> b!235223 (= res!115358 (contains!1659 (getCurrentListMap!1312 (_keys!6444 thiss!1504) (_values!4353 thiss!1504) (mask!10337 thiss!1504) (extraKeys!4107 thiss!1504) (zeroValue!4211 thiss!1504) (minValue!4211 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4370 thiss!1504)) key!932))))

(declare-fun res!115354 () Bool)

(assert (=> start!22514 (=> (not res!115354) (not e!152773))))

(declare-fun valid!1334 (LongMapFixedSize!3400) Bool)

(assert (=> start!22514 (= res!115354 (valid!1334 thiss!1504))))

(assert (=> start!22514 e!152773))

(assert (=> start!22514 e!152775))

(assert (=> start!22514 true))

(declare-fun mapIsEmpty!10475 () Bool)

(assert (=> mapIsEmpty!10475 mapRes!10475))

(declare-fun b!235224 () Bool)

(assert (=> b!235224 (= e!152772 tp_is_empty!6187)))

(declare-fun b!235225 () Bool)

(assert (=> b!235225 (= e!152774 (and e!152770 mapRes!10475))))

(declare-fun condMapEmpty!10475 () Bool)

(declare-fun mapDefault!10475 () ValueCell!2750)


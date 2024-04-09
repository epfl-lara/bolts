; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22924 () Bool)

(assert start!22924)

(declare-fun b!238791 () Bool)

(declare-fun b_free!6415 () Bool)

(declare-fun b_next!6415 () Bool)

(assert (=> b!238791 (= b_free!6415 (not b_next!6415))))

(declare-fun tp!22448 () Bool)

(declare-fun b_and!13399 () Bool)

(assert (=> b!238791 (= tp!22448 b_and!13399)))

(declare-fun b!238776 () Bool)

(declare-fun e!155046 () Bool)

(declare-fun e!155050 () Bool)

(assert (=> b!238776 (= e!155046 e!155050)))

(declare-fun res!117038 () Bool)

(declare-fun call!22203 () Bool)

(assert (=> b!238776 (= res!117038 call!22203)))

(assert (=> b!238776 (=> (not res!117038) (not e!155050))))

(declare-fun b!238777 () Bool)

(declare-fun res!117033 () Bool)

(declare-fun e!155049 () Bool)

(assert (=> b!238777 (=> (not res!117033) (not e!155049))))

(declare-datatypes ((V!8017 0))(
  ( (V!8018 (val!3183 Int)) )
))
(declare-datatypes ((ValueCell!2795 0))(
  ( (ValueCellFull!2795 (v!5217 V!8017)) (EmptyCell!2795) )
))
(declare-datatypes ((array!11832 0))(
  ( (array!11833 (arr!5617 (Array (_ BitVec 32) ValueCell!2795)) (size!5958 (_ BitVec 32))) )
))
(declare-datatypes ((array!11834 0))(
  ( (array!11835 (arr!5618 (Array (_ BitVec 32) (_ BitVec 64))) (size!5959 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3490 0))(
  ( (LongMapFixedSize!3491 (defaultEntry!4430 Int) (mask!10470 (_ BitVec 32)) (extraKeys!4167 (_ BitVec 32)) (zeroValue!4271 V!8017) (minValue!4271 V!8017) (_size!1794 (_ BitVec 32)) (_keys!6532 array!11834) (_values!4413 array!11832) (_vacant!1794 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3490)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11834 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!238777 (= res!117033 (arrayContainsKey!0 (_keys!6532 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!238778 () Bool)

(declare-fun e!155039 () Bool)

(declare-fun e!155047 () Bool)

(assert (=> b!238778 (= e!155039 e!155047)))

(declare-fun res!117041 () Bool)

(assert (=> b!238778 (=> (not res!117041) (not e!155047))))

(declare-datatypes ((SeekEntryResult!1033 0))(
  ( (MissingZero!1033 (index!6302 (_ BitVec 32))) (Found!1033 (index!6303 (_ BitVec 32))) (Intermediate!1033 (undefined!1845 Bool) (index!6304 (_ BitVec 32)) (x!24081 (_ BitVec 32))) (Undefined!1033) (MissingVacant!1033 (index!6305 (_ BitVec 32))) )
))
(declare-fun lt!120689 () SeekEntryResult!1033)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!238778 (= res!117041 (or (= lt!120689 (MissingZero!1033 index!297)) (= lt!120689 (MissingVacant!1033 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11834 (_ BitVec 32)) SeekEntryResult!1033)

(assert (=> b!238778 (= lt!120689 (seekEntryOrOpen!0 key!932 (_keys!6532 thiss!1504) (mask!10470 thiss!1504)))))

(declare-fun bm!22200 () Bool)

(declare-fun call!22204 () Bool)

(assert (=> bm!22200 (= call!22204 (arrayContainsKey!0 (_keys!6532 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!238779 () Bool)

(declare-fun c!39801 () Bool)

(assert (=> b!238779 (= c!39801 (is-MissingVacant!1033 lt!120689))))

(declare-fun e!155045 () Bool)

(assert (=> b!238779 (= e!155045 e!155046)))

(declare-fun b!238780 () Bool)

(assert (=> b!238780 (= e!155050 (not call!22204))))

(declare-fun b!238781 () Bool)

(declare-fun e!155044 () Bool)

(declare-fun e!155042 () Bool)

(declare-fun mapRes!10647 () Bool)

(assert (=> b!238781 (= e!155044 (and e!155042 mapRes!10647))))

(declare-fun condMapEmpty!10647 () Bool)

(declare-fun mapDefault!10647 () ValueCell!2795)


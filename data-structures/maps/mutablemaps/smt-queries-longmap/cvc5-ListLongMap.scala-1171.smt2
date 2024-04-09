; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25140 () Bool)

(assert start!25140)

(declare-fun b!261748 () Bool)

(declare-fun b_free!6775 () Bool)

(declare-fun b_next!6775 () Bool)

(assert (=> b!261748 (= b_free!6775 (not b_next!6775))))

(declare-fun tp!23656 () Bool)

(declare-fun b_and!13927 () Bool)

(assert (=> b!261748 (= tp!23656 b_and!13927)))

(declare-fun b!261740 () Bool)

(declare-fun e!169625 () Bool)

(declare-fun tp_is_empty!6637 () Bool)

(assert (=> b!261740 (= e!169625 tp_is_empty!6637)))

(declare-fun b!261741 () Bool)

(declare-fun e!169623 () Bool)

(declare-fun e!169615 () Bool)

(assert (=> b!261741 (= e!169623 e!169615)))

(declare-fun res!127891 () Bool)

(assert (=> b!261741 (=> (not res!127891) (not e!169615))))

(declare-datatypes ((SeekEntryResult!1200 0))(
  ( (MissingZero!1200 (index!6970 (_ BitVec 32))) (Found!1200 (index!6971 (_ BitVec 32))) (Intermediate!1200 (undefined!2012 Bool) (index!6972 (_ BitVec 32)) (x!25198 (_ BitVec 32))) (Undefined!1200) (MissingVacant!1200 (index!6973 (_ BitVec 32))) )
))
(declare-fun lt!132248 () SeekEntryResult!1200)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!261741 (= res!127891 (or (= lt!132248 (MissingZero!1200 index!297)) (= lt!132248 (MissingVacant!1200 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!8497 0))(
  ( (V!8498 (val!3363 Int)) )
))
(declare-datatypes ((ValueCell!2975 0))(
  ( (ValueCellFull!2975 (v!5484 V!8497)) (EmptyCell!2975) )
))
(declare-datatypes ((array!12630 0))(
  ( (array!12631 (arr!5977 (Array (_ BitVec 32) ValueCell!2975)) (size!6328 (_ BitVec 32))) )
))
(declare-datatypes ((array!12632 0))(
  ( (array!12633 (arr!5978 (Array (_ BitVec 32) (_ BitVec 64))) (size!6329 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3850 0))(
  ( (LongMapFixedSize!3851 (defaultEntry!4823 Int) (mask!11173 (_ BitVec 32)) (extraKeys!4560 (_ BitVec 32)) (zeroValue!4664 V!8497) (minValue!4664 V!8497) (_size!1974 (_ BitVec 32)) (_keys!7011 array!12632) (_values!4806 array!12630) (_vacant!1974 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3850)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12632 (_ BitVec 32)) SeekEntryResult!1200)

(assert (=> b!261741 (= lt!132248 (seekEntryOrOpen!0 key!932 (_keys!7011 thiss!1504) (mask!11173 thiss!1504)))))

(declare-fun res!127885 () Bool)

(assert (=> start!25140 (=> (not res!127885) (not e!169623))))

(declare-fun valid!1493 (LongMapFixedSize!3850) Bool)

(assert (=> start!25140 (= res!127885 (valid!1493 thiss!1504))))

(assert (=> start!25140 e!169623))

(declare-fun e!169619 () Bool)

(assert (=> start!25140 e!169619))

(assert (=> start!25140 true))

(assert (=> start!25140 tp_is_empty!6637))

(declare-fun b!261742 () Bool)

(declare-datatypes ((Unit!8141 0))(
  ( (Unit!8142) )
))
(declare-fun e!169624 () Unit!8141)

(declare-fun Unit!8143 () Unit!8141)

(assert (=> b!261742 (= e!169624 Unit!8143)))

(declare-fun b!261743 () Bool)

(declare-fun e!169618 () Bool)

(declare-fun mapRes!11314 () Bool)

(assert (=> b!261743 (= e!169618 (and e!169625 mapRes!11314))))

(declare-fun condMapEmpty!11314 () Bool)

(declare-fun mapDefault!11314 () ValueCell!2975)


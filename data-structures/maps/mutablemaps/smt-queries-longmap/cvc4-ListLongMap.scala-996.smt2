; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21504 () Bool)

(assert start!21504)

(declare-fun b!215622 () Bool)

(declare-fun b_free!5729 () Bool)

(declare-fun b_next!5729 () Bool)

(assert (=> b!215622 (= b_free!5729 (not b_next!5729))))

(declare-fun tp!20304 () Bool)

(declare-fun b_and!12637 () Bool)

(assert (=> b!215622 (= tp!20304 b_and!12637)))

(declare-fun mapIsEmpty!9532 () Bool)

(declare-fun mapRes!9532 () Bool)

(assert (=> mapIsEmpty!9532 mapRes!9532))

(declare-fun b!215616 () Bool)

(declare-fun e!140293 () Bool)

(declare-fun e!140294 () Bool)

(assert (=> b!215616 (= e!140293 e!140294)))

(declare-fun res!105476 () Bool)

(assert (=> b!215616 (=> (not res!105476) (not e!140294))))

(declare-datatypes ((SeekEntryResult!745 0))(
  ( (MissingZero!745 (index!5150 (_ BitVec 32))) (Found!745 (index!5151 (_ BitVec 32))) (Intermediate!745 (undefined!1557 Bool) (index!5152 (_ BitVec 32)) (x!22543 (_ BitVec 32))) (Undefined!745) (MissingVacant!745 (index!5153 (_ BitVec 32))) )
))
(declare-fun lt!111019 () SeekEntryResult!745)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!215616 (= res!105476 (or (= lt!111019 (MissingZero!745 index!297)) (= lt!111019 (MissingVacant!745 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7101 0))(
  ( (V!7102 (val!2840 Int)) )
))
(declare-datatypes ((ValueCell!2452 0))(
  ( (ValueCellFull!2452 (v!4854 V!7101)) (EmptyCell!2452) )
))
(declare-datatypes ((array!10410 0))(
  ( (array!10411 (arr!4931 (Array (_ BitVec 32) ValueCell!2452)) (size!5261 (_ BitVec 32))) )
))
(declare-datatypes ((array!10412 0))(
  ( (array!10413 (arr!4932 (Array (_ BitVec 32) (_ BitVec 64))) (size!5262 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2804 0))(
  ( (LongMapFixedSize!2805 (defaultEntry!4052 Int) (mask!9758 (_ BitVec 32)) (extraKeys!3789 (_ BitVec 32)) (zeroValue!3893 V!7101) (minValue!3893 V!7101) (_size!1451 (_ BitVec 32)) (_keys!6087 array!10412) (_values!4035 array!10410) (_vacant!1451 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2804)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10412 (_ BitVec 32)) SeekEntryResult!745)

(assert (=> b!215616 (= lt!111019 (seekEntryOrOpen!0 key!932 (_keys!6087 thiss!1504) (mask!9758 thiss!1504)))))

(declare-fun b!215617 () Bool)

(assert (=> b!215617 (= e!140294 (and (= (size!5261 (_values!4035 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9758 thiss!1504))) (= (size!5262 (_keys!6087 thiss!1504)) (size!5261 (_values!4035 thiss!1504))) (bvsge (mask!9758 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!3789 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!215618 () Bool)

(declare-fun e!140292 () Bool)

(declare-fun tp_is_empty!5591 () Bool)

(assert (=> b!215618 (= e!140292 tp_is_empty!5591)))

(declare-fun b!215619 () Bool)

(declare-fun e!140296 () Bool)

(assert (=> b!215619 (= e!140296 tp_is_empty!5591)))

(declare-fun b!215620 () Bool)

(declare-fun e!140295 () Bool)

(assert (=> b!215620 (= e!140295 (and e!140292 mapRes!9532))))

(declare-fun condMapEmpty!9532 () Bool)

(declare-fun mapDefault!9532 () ValueCell!2452)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21560 () Bool)

(assert start!21560)

(declare-fun b!215987 () Bool)

(declare-fun b_free!5737 () Bool)

(declare-fun b_next!5737 () Bool)

(assert (=> b!215987 (= b_free!5737 (not b_next!5737))))

(declare-fun tp!20336 () Bool)

(declare-fun b_and!12645 () Bool)

(assert (=> b!215987 (= tp!20336 b_and!12645)))

(declare-fun b!215980 () Bool)

(declare-fun res!105621 () Bool)

(declare-fun e!140529 () Bool)

(assert (=> b!215980 (=> (not res!105621) (not e!140529))))

(declare-datatypes ((V!7113 0))(
  ( (V!7114 (val!2844 Int)) )
))
(declare-datatypes ((ValueCell!2456 0))(
  ( (ValueCellFull!2456 (v!4858 V!7113)) (EmptyCell!2456) )
))
(declare-datatypes ((array!10430 0))(
  ( (array!10431 (arr!4939 (Array (_ BitVec 32) ValueCell!2456)) (size!5271 (_ BitVec 32))) )
))
(declare-datatypes ((array!10432 0))(
  ( (array!10433 (arr!4940 (Array (_ BitVec 32) (_ BitVec 64))) (size!5272 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2812 0))(
  ( (LongMapFixedSize!2813 (defaultEntry!4056 Int) (mask!9778 (_ BitVec 32)) (extraKeys!3793 (_ BitVec 32)) (zeroValue!3897 V!7113) (minValue!3897 V!7113) (_size!1455 (_ BitVec 32)) (_keys!6099 array!10432) (_values!4039 array!10430) (_vacant!1455 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2812)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!215980 (= res!105621 (validMask!0 (mask!9778 thiss!1504)))))

(declare-fun res!105618 () Bool)

(declare-fun e!140523 () Bool)

(assert (=> start!21560 (=> (not res!105618) (not e!140523))))

(declare-fun valid!1135 (LongMapFixedSize!2812) Bool)

(assert (=> start!21560 (= res!105618 (valid!1135 thiss!1504))))

(assert (=> start!21560 e!140523))

(declare-fun e!140524 () Bool)

(assert (=> start!21560 e!140524))

(assert (=> start!21560 true))

(declare-fun mapIsEmpty!9552 () Bool)

(declare-fun mapRes!9552 () Bool)

(assert (=> mapIsEmpty!9552 mapRes!9552))

(declare-fun b!215981 () Bool)

(assert (=> b!215981 (= e!140523 e!140529)))

(declare-fun res!105620 () Bool)

(assert (=> b!215981 (=> (not res!105620) (not e!140529))))

(declare-datatypes ((SeekEntryResult!747 0))(
  ( (MissingZero!747 (index!5158 (_ BitVec 32))) (Found!747 (index!5159 (_ BitVec 32))) (Intermediate!747 (undefined!1559 Bool) (index!5160 (_ BitVec 32)) (x!22595 (_ BitVec 32))) (Undefined!747) (MissingVacant!747 (index!5161 (_ BitVec 32))) )
))
(declare-fun lt!111109 () SeekEntryResult!747)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!215981 (= res!105620 (or (= lt!111109 (MissingZero!747 index!297)) (= lt!111109 (MissingVacant!747 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10432 (_ BitVec 32)) SeekEntryResult!747)

(assert (=> b!215981 (= lt!111109 (seekEntryOrOpen!0 key!932 (_keys!6099 thiss!1504) (mask!9778 thiss!1504)))))

(declare-fun b!215982 () Bool)

(declare-fun e!140527 () Bool)

(declare-fun tp_is_empty!5599 () Bool)

(assert (=> b!215982 (= e!140527 tp_is_empty!5599)))

(declare-fun mapNonEmpty!9552 () Bool)

(declare-fun tp!20337 () Bool)

(declare-fun e!140525 () Bool)

(assert (=> mapNonEmpty!9552 (= mapRes!9552 (and tp!20337 e!140525))))

(declare-fun mapValue!9552 () ValueCell!2456)

(declare-fun mapKey!9552 () (_ BitVec 32))

(declare-fun mapRest!9552 () (Array (_ BitVec 32) ValueCell!2456))

(assert (=> mapNonEmpty!9552 (= (arr!4939 (_values!4039 thiss!1504)) (store mapRest!9552 mapKey!9552 mapValue!9552))))

(declare-fun b!215983 () Bool)

(declare-fun res!105617 () Bool)

(assert (=> b!215983 (=> (not res!105617) (not e!140529))))

(assert (=> b!215983 (= res!105617 (and (= (size!5271 (_values!4039 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9778 thiss!1504))) (= (size!5272 (_keys!6099 thiss!1504)) (size!5271 (_values!4039 thiss!1504))) (bvsge (mask!9778 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3793 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3793 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!215984 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10432 (_ BitVec 32)) Bool)

(assert (=> b!215984 (= e!140529 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6099 thiss!1504) (mask!9778 thiss!1504))))))

(declare-fun b!215985 () Bool)

(declare-fun e!140526 () Bool)

(assert (=> b!215985 (= e!140526 (and e!140527 mapRes!9552))))

(declare-fun condMapEmpty!9552 () Bool)

(declare-fun mapDefault!9552 () ValueCell!2456)


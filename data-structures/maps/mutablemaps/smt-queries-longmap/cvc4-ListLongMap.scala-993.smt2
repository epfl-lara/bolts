; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21428 () Bool)

(assert start!21428)

(declare-fun b!215105 () Bool)

(declare-fun b_free!5711 () Bool)

(declare-fun b_next!5711 () Bool)

(assert (=> b!215105 (= b_free!5711 (not b_next!5711))))

(declare-fun tp!20239 () Bool)

(declare-fun b_and!12619 () Bool)

(assert (=> b!215105 (= tp!20239 b_and!12619)))

(declare-fun b!215099 () Bool)

(declare-fun e!139939 () Bool)

(declare-fun tp_is_empty!5573 () Bool)

(assert (=> b!215099 (= e!139939 tp_is_empty!5573)))

(declare-fun mapIsEmpty!9494 () Bool)

(declare-fun mapRes!9494 () Bool)

(assert (=> mapIsEmpty!9494 mapRes!9494))

(declare-fun b!215100 () Bool)

(declare-fun res!105269 () Bool)

(declare-fun e!139936 () Bool)

(assert (=> b!215100 (=> (not res!105269) (not e!139936))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!215100 (= res!105269 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!215101 () Bool)

(declare-fun e!139940 () Bool)

(assert (=> b!215101 (= e!139936 e!139940)))

(declare-fun res!105268 () Bool)

(assert (=> b!215101 (=> (not res!105268) (not e!139940))))

(declare-datatypes ((SeekEntryResult!739 0))(
  ( (MissingZero!739 (index!5126 (_ BitVec 32))) (Found!739 (index!5127 (_ BitVec 32))) (Intermediate!739 (undefined!1551 Bool) (index!5128 (_ BitVec 32)) (x!22471 (_ BitVec 32))) (Undefined!739) (MissingVacant!739 (index!5129 (_ BitVec 32))) )
))
(declare-fun lt!110905 () SeekEntryResult!739)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!215101 (= res!105268 (or (= lt!110905 (MissingZero!739 index!297)) (= lt!110905 (MissingVacant!739 index!297))))))

(declare-datatypes ((V!7077 0))(
  ( (V!7078 (val!2831 Int)) )
))
(declare-datatypes ((ValueCell!2443 0))(
  ( (ValueCellFull!2443 (v!4845 V!7077)) (EmptyCell!2443) )
))
(declare-datatypes ((array!10368 0))(
  ( (array!10369 (arr!4913 (Array (_ BitVec 32) ValueCell!2443)) (size!5241 (_ BitVec 32))) )
))
(declare-datatypes ((array!10370 0))(
  ( (array!10371 (arr!4914 (Array (_ BitVec 32) (_ BitVec 64))) (size!5242 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2786 0))(
  ( (LongMapFixedSize!2787 (defaultEntry!4043 Int) (mask!9729 (_ BitVec 32)) (extraKeys!3780 (_ BitVec 32)) (zeroValue!3884 V!7077) (minValue!3884 V!7077) (_size!1442 (_ BitVec 32)) (_keys!6069 array!10370) (_values!4026 array!10368) (_vacant!1442 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2786)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10370 (_ BitVec 32)) SeekEntryResult!739)

(assert (=> b!215101 (= lt!110905 (seekEntryOrOpen!0 key!932 (_keys!6069 thiss!1504) (mask!9729 thiss!1504)))))

(declare-fun b!215102 () Bool)

(assert (=> b!215102 (= e!139940 (not (= (size!5241 (_values!4026 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9729 thiss!1504)))))))

(declare-fun b!215103 () Bool)

(declare-fun e!139937 () Bool)

(declare-fun e!139942 () Bool)

(assert (=> b!215103 (= e!139937 (and e!139942 mapRes!9494))))

(declare-fun condMapEmpty!9494 () Bool)

(declare-fun mapDefault!9494 () ValueCell!2443)


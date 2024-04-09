; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21866 () Bool)

(assert start!21866)

(declare-fun b!220361 () Bool)

(declare-fun b_free!5921 () Bool)

(declare-fun b_next!5921 () Bool)

(assert (=> b!220361 (= b_free!5921 (not b_next!5921))))

(declare-fun tp!20905 () Bool)

(declare-fun b_and!12837 () Bool)

(assert (=> b!220361 (= tp!20905 b_and!12837)))

(declare-fun b!220346 () Bool)

(declare-fun res!108061 () Bool)

(declare-fun e!143286 () Bool)

(assert (=> b!220346 (=> (not res!108061) (not e!143286))))

(declare-datatypes ((V!7357 0))(
  ( (V!7358 (val!2936 Int)) )
))
(declare-datatypes ((ValueCell!2548 0))(
  ( (ValueCellFull!2548 (v!4952 V!7357)) (EmptyCell!2548) )
))
(declare-datatypes ((array!10808 0))(
  ( (array!10809 (arr!5123 (Array (_ BitVec 32) ValueCell!2548)) (size!5456 (_ BitVec 32))) )
))
(declare-datatypes ((array!10810 0))(
  ( (array!10811 (arr!5124 (Array (_ BitVec 32) (_ BitVec 64))) (size!5457 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2996 0))(
  ( (LongMapFixedSize!2997 (defaultEntry!4157 Int) (mask!9957 (_ BitVec 32)) (extraKeys!3894 (_ BitVec 32)) (zeroValue!3998 V!7357) (minValue!3998 V!7357) (_size!1547 (_ BitVec 32)) (_keys!6211 array!10810) (_values!4140 array!10808) (_vacant!1547 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2996)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!220346 (= res!108061 (validMask!0 (mask!9957 thiss!1504)))))

(declare-fun b!220347 () Bool)

(declare-fun e!143278 () Bool)

(declare-fun e!143285 () Bool)

(assert (=> b!220347 (= e!143278 e!143285)))

(declare-fun res!108060 () Bool)

(assert (=> b!220347 (=> (not res!108060) (not e!143285))))

(declare-datatypes ((SeekEntryResult!821 0))(
  ( (MissingZero!821 (index!5454 (_ BitVec 32))) (Found!821 (index!5455 (_ BitVec 32))) (Intermediate!821 (undefined!1633 Bool) (index!5456 (_ BitVec 32)) (x!22961 (_ BitVec 32))) (Undefined!821) (MissingVacant!821 (index!5457 (_ BitVec 32))) )
))
(declare-fun lt!112191 () SeekEntryResult!821)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!220347 (= res!108060 (or (= lt!112191 (MissingZero!821 index!297)) (= lt!112191 (MissingVacant!821 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10810 (_ BitVec 32)) SeekEntryResult!821)

(assert (=> b!220347 (= lt!112191 (seekEntryOrOpen!0 key!932 (_keys!6211 thiss!1504) (mask!9957 thiss!1504)))))

(declare-fun b!220348 () Bool)

(declare-fun e!143281 () Bool)

(declare-fun e!143283 () Bool)

(declare-fun mapRes!9844 () Bool)

(assert (=> b!220348 (= e!143281 (and e!143283 mapRes!9844))))

(declare-fun condMapEmpty!9844 () Bool)

(declare-fun mapDefault!9844 () ValueCell!2548)


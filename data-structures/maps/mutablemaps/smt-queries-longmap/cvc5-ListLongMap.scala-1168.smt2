; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24926 () Bool)

(assert start!24926)

(declare-fun b!259970 () Bool)

(declare-fun b_free!6757 () Bool)

(declare-fun b_next!6757 () Bool)

(assert (=> b!259970 (= b_free!6757 (not b_next!6757))))

(declare-fun tp!23594 () Bool)

(declare-fun b_and!13881 () Bool)

(assert (=> b!259970 (= tp!23594 b_and!13881)))

(declare-fun b!259952 () Bool)

(declare-fun e!168489 () Bool)

(declare-fun call!24777 () Bool)

(assert (=> b!259952 (= e!168489 (not call!24777))))

(declare-fun b!259953 () Bool)

(declare-datatypes ((Unit!8081 0))(
  ( (Unit!8082) )
))
(declare-fun e!168490 () Unit!8081)

(declare-fun Unit!8083 () Unit!8081)

(assert (=> b!259953 (= e!168490 Unit!8083)))

(declare-fun lt!131113 () Unit!8081)

(declare-datatypes ((V!8473 0))(
  ( (V!8474 (val!3354 Int)) )
))
(declare-datatypes ((ValueCell!2966 0))(
  ( (ValueCellFull!2966 (v!5463 V!8473)) (EmptyCell!2966) )
))
(declare-datatypes ((array!12590 0))(
  ( (array!12591 (arr!5959 (Array (_ BitVec 32) ValueCell!2966)) (size!6308 (_ BitVec 32))) )
))
(declare-datatypes ((array!12592 0))(
  ( (array!12593 (arr!5960 (Array (_ BitVec 32) (_ BitVec 64))) (size!6309 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3832 0))(
  ( (LongMapFixedSize!3833 (defaultEntry!4794 Int) (mask!11120 (_ BitVec 32)) (extraKeys!4531 (_ BitVec 32)) (zeroValue!4635 V!8473) (minValue!4635 V!8473) (_size!1965 (_ BitVec 32)) (_keys!6974 array!12592) (_values!4777 array!12590) (_vacant!1965 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3832)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!442 (array!12592 array!12590 (_ BitVec 32) (_ BitVec 32) V!8473 V!8473 (_ BitVec 64) Int) Unit!8081)

(assert (=> b!259953 (= lt!131113 (lemmaInListMapThenSeekEntryOrOpenFindsIt!442 (_keys!6974 thiss!1504) (_values!4777 thiss!1504) (mask!11120 thiss!1504) (extraKeys!4531 thiss!1504) (zeroValue!4635 thiss!1504) (minValue!4635 thiss!1504) key!932 (defaultEntry!4794 thiss!1504)))))

(assert (=> b!259953 false))

(declare-fun b!259954 () Bool)

(declare-fun e!168482 () Bool)

(assert (=> b!259954 (= e!168482 (not call!24777))))

(declare-fun bm!24774 () Bool)

(declare-fun call!24778 () Bool)

(declare-fun c!44140 () Bool)

(declare-datatypes ((SeekEntryResult!1192 0))(
  ( (MissingZero!1192 (index!6938 (_ BitVec 32))) (Found!1192 (index!6939 (_ BitVec 32))) (Intermediate!1192 (undefined!2004 Bool) (index!6940 (_ BitVec 32)) (x!25130 (_ BitVec 32))) (Undefined!1192) (MissingVacant!1192 (index!6941 (_ BitVec 32))) )
))
(declare-fun lt!131109 () SeekEntryResult!1192)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!24774 (= call!24778 (inRange!0 (ite c!44140 (index!6938 lt!131109) (index!6941 lt!131109)) (mask!11120 thiss!1504)))))

(declare-fun b!259955 () Bool)

(declare-fun e!168491 () Bool)

(declare-fun e!168486 () Bool)

(declare-fun mapRes!11279 () Bool)

(assert (=> b!259955 (= e!168491 (and e!168486 mapRes!11279))))

(declare-fun condMapEmpty!11279 () Bool)

(declare-fun mapDefault!11279 () ValueCell!2966)


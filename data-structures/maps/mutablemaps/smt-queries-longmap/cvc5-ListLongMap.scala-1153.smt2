; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24278 () Bool)

(assert start!24278)

(declare-fun b!253661 () Bool)

(declare-fun b_free!6667 () Bool)

(declare-fun b_next!6667 () Bool)

(assert (=> b!253661 (= b_free!6667 (not b_next!6667))))

(declare-fun tp!23288 () Bool)

(declare-fun b_and!13727 () Bool)

(assert (=> b!253661 (= tp!23288 b_and!13727)))

(declare-fun b!253650 () Bool)

(declare-fun res!124172 () Bool)

(declare-fun e!164454 () Bool)

(assert (=> b!253650 (=> res!124172 e!164454)))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!8353 0))(
  ( (V!8354 (val!3309 Int)) )
))
(declare-datatypes ((ValueCell!2921 0))(
  ( (ValueCellFull!2921 (v!5379 V!8353)) (EmptyCell!2921) )
))
(declare-datatypes ((array!12388 0))(
  ( (array!12389 (arr!5869 (Array (_ BitVec 32) ValueCell!2921)) (size!6216 (_ BitVec 32))) )
))
(declare-datatypes ((array!12390 0))(
  ( (array!12391 (arr!5870 (Array (_ BitVec 32) (_ BitVec 64))) (size!6217 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3742 0))(
  ( (LongMapFixedSize!3743 (defaultEntry!4684 Int) (mask!10924 (_ BitVec 32)) (extraKeys!4421 (_ BitVec 32)) (zeroValue!4525 V!8353) (minValue!4525 V!8353) (_size!1920 (_ BitVec 32)) (_keys!6838 array!12390) (_values!4667 array!12388) (_vacant!1920 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3742)

(assert (=> b!253650 (= res!124172 (or (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6217 (_keys!6838 thiss!1504)))))))

(declare-fun b!253651 () Bool)

(declare-fun res!124175 () Bool)

(declare-fun e!164453 () Bool)

(assert (=> b!253651 (=> (not res!124175) (not e!164453))))

(declare-fun call!23944 () Bool)

(assert (=> b!253651 (= res!124175 call!23944)))

(declare-fun e!164460 () Bool)

(assert (=> b!253651 (= e!164460 e!164453)))

(declare-fun b!253652 () Bool)

(declare-fun res!124176 () Bool)

(declare-datatypes ((SeekEntryResult!1150 0))(
  ( (MissingZero!1150 (index!6770 (_ BitVec 32))) (Found!1150 (index!6771 (_ BitVec 32))) (Intermediate!1150 (undefined!1962 Bool) (index!6772 (_ BitVec 32)) (x!24842 (_ BitVec 32))) (Undefined!1150) (MissingVacant!1150 (index!6773 (_ BitVec 32))) )
))
(declare-fun lt!127193 () SeekEntryResult!1150)

(assert (=> b!253652 (= res!124176 (= (select (arr!5870 (_keys!6838 thiss!1504)) (index!6773 lt!127193)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!164461 () Bool)

(assert (=> b!253652 (=> (not res!124176) (not e!164461))))

(declare-fun b!253653 () Bool)

(declare-fun e!164457 () Bool)

(declare-fun e!164451 () Bool)

(declare-fun mapRes!11109 () Bool)

(assert (=> b!253653 (= e!164457 (and e!164451 mapRes!11109))))

(declare-fun condMapEmpty!11109 () Bool)

(declare-fun mapDefault!11109 () ValueCell!2921)


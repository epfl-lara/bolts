; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23676 () Bool)

(assert start!23676)

(declare-fun b!248740 () Bool)

(declare-fun b_free!6611 () Bool)

(declare-fun b_next!6611 () Bool)

(assert (=> b!248740 (= b_free!6611 (not b_next!6611))))

(declare-fun tp!23087 () Bool)

(declare-fun b_and!13635 () Bool)

(assert (=> b!248740 (= tp!23087 b_and!13635)))

(declare-fun b!248728 () Bool)

(declare-fun res!121903 () Bool)

(declare-fun e!161351 () Bool)

(assert (=> b!248728 (=> (not res!121903) (not e!161351))))

(declare-fun call!23328 () Bool)

(assert (=> b!248728 (= res!121903 call!23328)))

(declare-fun e!161350 () Bool)

(assert (=> b!248728 (= e!161350 e!161351)))

(declare-fun b!248729 () Bool)

(declare-fun res!121902 () Bool)

(assert (=> b!248729 (=> (not res!121902) (not e!161351))))

(declare-datatypes ((V!8277 0))(
  ( (V!8278 (val!3281 Int)) )
))
(declare-datatypes ((ValueCell!2893 0))(
  ( (ValueCellFull!2893 (v!5337 V!8277)) (EmptyCell!2893) )
))
(declare-datatypes ((array!12256 0))(
  ( (array!12257 (arr!5813 (Array (_ BitVec 32) ValueCell!2893)) (size!6156 (_ BitVec 32))) )
))
(declare-datatypes ((array!12258 0))(
  ( (array!12259 (arr!5814 (Array (_ BitVec 32) (_ BitVec 64))) (size!6157 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3686 0))(
  ( (LongMapFixedSize!3687 (defaultEntry!4600 Int) (mask!10754 (_ BitVec 32)) (extraKeys!4337 (_ BitVec 32)) (zeroValue!4441 V!8277) (minValue!4441 V!8277) (_size!1892 (_ BitVec 32)) (_keys!6726 array!12258) (_values!4583 array!12256) (_vacant!1892 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3686)

(declare-datatypes ((SeekEntryResult!1124 0))(
  ( (MissingZero!1124 (index!6666 (_ BitVec 32))) (Found!1124 (index!6667 (_ BitVec 32))) (Intermediate!1124 (undefined!1936 Bool) (index!6668 (_ BitVec 32)) (x!24604 (_ BitVec 32))) (Undefined!1124) (MissingVacant!1124 (index!6669 (_ BitVec 32))) )
))
(declare-fun lt!124599 () SeekEntryResult!1124)

(assert (=> b!248729 (= res!121902 (= (select (arr!5814 (_keys!6726 thiss!1504)) (index!6666 lt!124599)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!248730 () Bool)

(declare-fun e!161352 () Bool)

(declare-fun e!161343 () Bool)

(declare-fun mapRes!10991 () Bool)

(assert (=> b!248730 (= e!161352 (and e!161343 mapRes!10991))))

(declare-fun condMapEmpty!10991 () Bool)

(declare-fun mapDefault!10991 () ValueCell!2893)


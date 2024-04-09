; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23310 () Bool)

(assert start!23310)

(declare-fun b!245021 () Bool)

(declare-fun b_free!6551 () Bool)

(declare-fun b_next!6551 () Bool)

(assert (=> b!245021 (= b_free!6551 (not b_next!6551))))

(declare-fun tp!22881 () Bool)

(declare-fun b_and!13555 () Bool)

(assert (=> b!245021 (= tp!22881 b_and!13555)))

(declare-datatypes ((SeekEntryResult!1096 0))(
  ( (MissingZero!1096 (index!6554 (_ BitVec 32))) (Found!1096 (index!6555 (_ BitVec 32))) (Intermediate!1096 (undefined!1908 Bool) (index!6556 (_ BitVec 32)) (x!24408 (_ BitVec 32))) (Undefined!1096) (MissingVacant!1096 (index!6557 (_ BitVec 32))) )
))
(declare-fun lt!122729 () SeekEntryResult!1096)

(declare-datatypes ((V!8197 0))(
  ( (V!8198 (val!3251 Int)) )
))
(declare-datatypes ((ValueCell!2863 0))(
  ( (ValueCellFull!2863 (v!5298 V!8197)) (EmptyCell!2863) )
))
(declare-datatypes ((array!12120 0))(
  ( (array!12121 (arr!5753 (Array (_ BitVec 32) ValueCell!2863)) (size!6095 (_ BitVec 32))) )
))
(declare-datatypes ((array!12122 0))(
  ( (array!12123 (arr!5754 (Array (_ BitVec 32) (_ BitVec 64))) (size!6096 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3626 0))(
  ( (LongMapFixedSize!3627 (defaultEntry!4534 Int) (mask!10639 (_ BitVec 32)) (extraKeys!4271 (_ BitVec 32)) (zeroValue!4375 V!8197) (minValue!4375 V!8197) (_size!1862 (_ BitVec 32)) (_keys!6647 array!12122) (_values!4517 array!12120) (_vacant!1862 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3626)

(declare-fun bm!22851 () Bool)

(declare-fun call!22855 () Bool)

(declare-fun c!40878 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22851 (= call!22855 (inRange!0 (ite c!40878 (index!6554 lt!122729) (index!6557 lt!122729)) (mask!10639 thiss!1504)))))

(declare-fun b!245010 () Bool)

(declare-fun e!158975 () Bool)

(declare-fun e!158969 () Bool)

(declare-fun mapRes!10876 () Bool)

(assert (=> b!245010 (= e!158975 (and e!158969 mapRes!10876))))

(declare-fun condMapEmpty!10876 () Bool)

(declare-fun mapDefault!10876 () ValueCell!2863)


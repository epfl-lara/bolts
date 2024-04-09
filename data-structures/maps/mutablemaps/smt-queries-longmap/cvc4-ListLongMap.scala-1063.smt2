; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22076 () Bool)

(assert start!22076)

(declare-fun b!228403 () Bool)

(declare-fun b_free!6131 () Bool)

(declare-fun b_next!6131 () Bool)

(assert (=> b!228403 (= b_free!6131 (not b_next!6131))))

(declare-fun tp!21534 () Bool)

(declare-fun b_and!13047 () Bool)

(assert (=> b!228403 (= tp!21534 b_and!13047)))

(declare-fun bm!21222 () Bool)

(declare-fun call!21225 () Bool)

(declare-datatypes ((V!7637 0))(
  ( (V!7638 (val!3041 Int)) )
))
(declare-datatypes ((ValueCell!2653 0))(
  ( (ValueCellFull!2653 (v!5057 V!7637)) (EmptyCell!2653) )
))
(declare-datatypes ((array!11228 0))(
  ( (array!11229 (arr!5333 (Array (_ BitVec 32) ValueCell!2653)) (size!5666 (_ BitVec 32))) )
))
(declare-datatypes ((array!11230 0))(
  ( (array!11231 (arr!5334 (Array (_ BitVec 32) (_ BitVec 64))) (size!5667 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3206 0))(
  ( (LongMapFixedSize!3207 (defaultEntry!4262 Int) (mask!10132 (_ BitVec 32)) (extraKeys!3999 (_ BitVec 32)) (zeroValue!4103 V!7637) (minValue!4103 V!7637) (_size!1652 (_ BitVec 32)) (_keys!6316 array!11230) (_values!4245 array!11228) (_vacant!1652 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3206)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11230 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21222 (= call!21225 (arrayContainsKey!0 (_keys!6316 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!228392 () Bool)

(declare-fun e!148183 () Bool)

(assert (=> b!228392 (= e!148183 true)))

(declare-fun lt!114949 () Bool)

(declare-datatypes ((List!3431 0))(
  ( (Nil!3428) (Cons!3427 (h!4075 (_ BitVec 64)) (t!8398 List!3431)) )
))
(declare-fun arrayNoDuplicates!0 (array!11230 (_ BitVec 32) List!3431) Bool)

(assert (=> b!228392 (= lt!114949 (arrayNoDuplicates!0 (_keys!6316 thiss!1504) #b00000000000000000000000000000000 Nil!3428))))

(declare-fun b!228393 () Bool)

(declare-datatypes ((Unit!6945 0))(
  ( (Unit!6946) )
))
(declare-fun e!148181 () Unit!6945)

(declare-fun Unit!6947 () Unit!6945)

(assert (=> b!228393 (= e!148181 Unit!6947)))

(declare-fun b!228394 () Bool)

(declare-fun e!148186 () Bool)

(declare-fun e!148184 () Bool)

(declare-fun mapRes!10159 () Bool)

(assert (=> b!228394 (= e!148186 (and e!148184 mapRes!10159))))

(declare-fun condMapEmpty!10159 () Bool)

(declare-fun mapDefault!10159 () ValueCell!2653)


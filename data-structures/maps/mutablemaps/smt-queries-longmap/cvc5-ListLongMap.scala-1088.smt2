; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22222 () Bool)

(assert start!22222)

(declare-fun b!232951 () Bool)

(declare-fun b_free!6277 () Bool)

(declare-fun b_next!6277 () Bool)

(assert (=> b!232951 (= b_free!6277 (not b_next!6277))))

(declare-fun tp!21972 () Bool)

(declare-fun b_and!13193 () Bool)

(assert (=> b!232951 (= tp!21972 b_and!13193)))

(declare-fun bm!21660 () Bool)

(declare-fun call!21663 () Bool)

(declare-datatypes ((V!7833 0))(
  ( (V!7834 (val!3114 Int)) )
))
(declare-datatypes ((ValueCell!2726 0))(
  ( (ValueCellFull!2726 (v!5130 V!7833)) (EmptyCell!2726) )
))
(declare-datatypes ((array!11520 0))(
  ( (array!11521 (arr!5479 (Array (_ BitVec 32) ValueCell!2726)) (size!5812 (_ BitVec 32))) )
))
(declare-datatypes ((array!11522 0))(
  ( (array!11523 (arr!5480 (Array (_ BitVec 32) (_ BitVec 64))) (size!5813 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3352 0))(
  ( (LongMapFixedSize!3353 (defaultEntry!4335 Int) (mask!10255 (_ BitVec 32)) (extraKeys!4072 (_ BitVec 32)) (zeroValue!4176 V!7833) (minValue!4176 V!7833) (_size!1725 (_ BitVec 32)) (_keys!6389 array!11522) (_values!4318 array!11520) (_vacant!1725 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3352)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11522 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21660 (= call!21663 (arrayContainsKey!0 (_keys!6389 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!232948 () Bool)

(declare-fun res!114365 () Bool)

(declare-fun e!151327 () Bool)

(assert (=> b!232948 (=> (not res!114365) (not e!151327))))

(declare-fun call!21664 () Bool)

(assert (=> b!232948 (= res!114365 call!21664)))

(declare-fun e!151324 () Bool)

(assert (=> b!232948 (= e!151324 e!151327)))

(declare-fun b!232949 () Bool)

(declare-fun e!151319 () Bool)

(declare-fun e!151320 () Bool)

(declare-fun mapRes!10378 () Bool)

(assert (=> b!232949 (= e!151319 (and e!151320 mapRes!10378))))

(declare-fun condMapEmpty!10378 () Bool)

(declare-fun mapDefault!10378 () ValueCell!2726)


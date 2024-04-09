; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16988 () Bool)

(assert start!16988)

(declare-fun b!170643 () Bool)

(declare-fun b_free!4223 () Bool)

(declare-fun b_next!4223 () Bool)

(assert (=> b!170643 (= b_free!4223 (not b_next!4223))))

(declare-fun tp!15292 () Bool)

(declare-fun b_and!10655 () Bool)

(assert (=> b!170643 (= tp!15292 b_and!10655)))

(declare-fun b!170638 () Bool)

(declare-fun e!112644 () Bool)

(declare-fun tp_is_empty!3995 () Bool)

(assert (=> b!170638 (= e!112644 tp_is_empty!3995)))

(declare-fun b!170639 () Bool)

(declare-fun e!112649 () Bool)

(declare-fun e!112647 () Bool)

(declare-fun mapRes!6779 () Bool)

(assert (=> b!170639 (= e!112649 (and e!112647 mapRes!6779))))

(declare-fun condMapEmpty!6779 () Bool)

(declare-datatypes ((V!4973 0))(
  ( (V!4974 (val!2042 Int)) )
))
(declare-datatypes ((ValueCell!1654 0))(
  ( (ValueCellFull!1654 (v!3903 V!4973)) (EmptyCell!1654) )
))
(declare-datatypes ((array!7098 0))(
  ( (array!7099 (arr!3378 (Array (_ BitVec 32) (_ BitVec 64))) (size!3671 (_ BitVec 32))) )
))
(declare-datatypes ((array!7100 0))(
  ( (array!7101 (arr!3379 (Array (_ BitVec 32) ValueCell!1654)) (size!3672 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2216 0))(
  ( (LongMapFixedSize!2217 (defaultEntry!3550 Int) (mask!8370 (_ BitVec 32)) (extraKeys!3291 (_ BitVec 32)) (zeroValue!3393 V!4973) (minValue!3393 V!4973) (_size!1157 (_ BitVec 32)) (_keys!5380 array!7098) (_values!3533 array!7100) (_vacant!1157 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2216)

(declare-fun mapDefault!6779 () ValueCell!1654)


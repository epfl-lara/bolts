; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17952 () Bool)

(assert start!17952)

(declare-fun b!178773 () Bool)

(declare-fun b_free!4415 () Bool)

(declare-fun b_next!4415 () Bool)

(assert (=> b!178773 (= b_free!4415 (not b_next!4415))))

(declare-fun tp!15962 () Bool)

(declare-fun b_and!10955 () Bool)

(assert (=> b!178773 (= tp!15962 b_and!10955)))

(declare-fun e!117832 () Bool)

(declare-fun tp_is_empty!4187 () Bool)

(declare-fun e!117828 () Bool)

(declare-datatypes ((V!5229 0))(
  ( (V!5230 (val!2138 Int)) )
))
(declare-datatypes ((ValueCell!1750 0))(
  ( (ValueCellFull!1750 (v!4019 V!5229)) (EmptyCell!1750) )
))
(declare-datatypes ((array!7534 0))(
  ( (array!7535 (arr!3570 (Array (_ BitVec 32) (_ BitVec 64))) (size!3877 (_ BitVec 32))) )
))
(declare-datatypes ((array!7536 0))(
  ( (array!7537 (arr!3571 (Array (_ BitVec 32) ValueCell!1750)) (size!3878 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2408 0))(
  ( (LongMapFixedSize!2409 (defaultEntry!3675 Int) (mask!8643 (_ BitVec 32)) (extraKeys!3412 (_ BitVec 32)) (zeroValue!3516 V!5229) (minValue!3516 V!5229) (_size!1253 (_ BitVec 32)) (_keys!5556 array!7534) (_values!3658 array!7536) (_vacant!1253 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2408)

(declare-fun array_inv!2287 (array!7534) Bool)

(declare-fun array_inv!2288 (array!7536) Bool)

(assert (=> b!178773 (= e!117832 (and tp!15962 tp_is_empty!4187 (array_inv!2287 (_keys!5556 thiss!1248)) (array_inv!2288 (_values!3658 thiss!1248)) e!117828))))

(declare-fun mapIsEmpty!7161 () Bool)

(declare-fun mapRes!7161 () Bool)

(assert (=> mapIsEmpty!7161 mapRes!7161))

(declare-fun b!178774 () Bool)

(declare-fun e!117830 () Bool)

(assert (=> b!178774 (= e!117828 (and e!117830 mapRes!7161))))

(declare-fun condMapEmpty!7161 () Bool)

(declare-fun mapDefault!7161 () ValueCell!1750)


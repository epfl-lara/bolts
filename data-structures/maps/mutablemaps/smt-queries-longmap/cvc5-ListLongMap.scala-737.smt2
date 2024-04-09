; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17194 () Bool)

(assert start!17194)

(declare-fun b!172479 () Bool)

(declare-fun b_free!4261 () Bool)

(declare-fun b_next!4261 () Bool)

(assert (=> b!172479 (= b_free!4261 (not b_next!4261))))

(declare-fun tp!15432 () Bool)

(declare-fun b_and!10719 () Bool)

(assert (=> b!172479 (= tp!15432 b_and!10719)))

(declare-fun mapNonEmpty!6862 () Bool)

(declare-fun mapRes!6862 () Bool)

(declare-fun tp!15433 () Bool)

(declare-fun e!113869 () Bool)

(assert (=> mapNonEmpty!6862 (= mapRes!6862 (and tp!15433 e!113869))))

(declare-datatypes ((V!5025 0))(
  ( (V!5026 (val!2061 Int)) )
))
(declare-datatypes ((ValueCell!1673 0))(
  ( (ValueCellFull!1673 (v!3925 V!5025)) (EmptyCell!1673) )
))
(declare-fun mapRest!6862 () (Array (_ BitVec 32) ValueCell!1673))

(declare-fun mapValue!6862 () ValueCell!1673)

(declare-fun mapKey!6862 () (_ BitVec 32))

(declare-datatypes ((array!7188 0))(
  ( (array!7189 (arr!3416 (Array (_ BitVec 32) (_ BitVec 64))) (size!3713 (_ BitVec 32))) )
))
(declare-datatypes ((array!7190 0))(
  ( (array!7191 (arr!3417 (Array (_ BitVec 32) ValueCell!1673)) (size!3714 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2254 0))(
  ( (LongMapFixedSize!2255 (defaultEntry!3573 Int) (mask!8421 (_ BitVec 32)) (extraKeys!3312 (_ BitVec 32)) (zeroValue!3414 V!5025) (minValue!3416 V!5025) (_size!1176 (_ BitVec 32)) (_keys!5410 array!7188) (_values!3556 array!7190) (_vacant!1176 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2254)

(assert (=> mapNonEmpty!6862 (= (arr!3417 (_values!3556 thiss!1248)) (store mapRest!6862 mapKey!6862 mapValue!6862))))

(declare-fun b!172475 () Bool)

(declare-fun e!113867 () Bool)

(declare-fun e!113868 () Bool)

(assert (=> b!172475 (= e!113867 (and e!113868 mapRes!6862))))

(declare-fun condMapEmpty!6862 () Bool)

(declare-fun mapDefault!6862 () ValueCell!1673)


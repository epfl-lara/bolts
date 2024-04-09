; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16302 () Bool)

(assert start!16302)

(declare-fun b!162500 () Bool)

(declare-fun b_free!3751 () Bool)

(declare-fun b_next!3751 () Bool)

(assert (=> b!162500 (= b_free!3751 (not b_next!3751))))

(declare-fun tp!13823 () Bool)

(declare-fun b_and!10183 () Bool)

(assert (=> b!162500 (= tp!13823 b_and!10183)))

(declare-fun b!162496 () Bool)

(declare-fun e!106525 () Bool)

(declare-fun tp_is_empty!3553 () Bool)

(assert (=> b!162496 (= e!106525 tp_is_empty!3553)))

(declare-fun b!162497 () Bool)

(declare-fun e!106528 () Bool)

(assert (=> b!162497 (= e!106528 tp_is_empty!3553)))

(declare-fun b!162498 () Bool)

(declare-fun e!106527 () Bool)

(declare-fun mapRes!6017 () Bool)

(assert (=> b!162498 (= e!106527 (and e!106528 mapRes!6017))))

(declare-fun condMapEmpty!6017 () Bool)

(declare-datatypes ((V!4385 0))(
  ( (V!4386 (val!1821 Int)) )
))
(declare-datatypes ((ValueCell!1433 0))(
  ( (ValueCellFull!1433 (v!3682 V!4385)) (EmptyCell!1433) )
))
(declare-datatypes ((array!6184 0))(
  ( (array!6185 (arr!2936 (Array (_ BitVec 32) (_ BitVec 64))) (size!3220 (_ BitVec 32))) )
))
(declare-datatypes ((array!6186 0))(
  ( (array!6187 (arr!2937 (Array (_ BitVec 32) ValueCell!1433)) (size!3221 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1774 0))(
  ( (LongMapFixedSize!1775 (defaultEntry!3329 Int) (mask!7955 (_ BitVec 32)) (extraKeys!3070 (_ BitVec 32)) (zeroValue!3172 V!4385) (minValue!3172 V!4385) (_size!936 (_ BitVec 32)) (_keys!5130 array!6184) (_values!3312 array!6186) (_vacant!936 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1774)

(declare-fun mapDefault!6017 () ValueCell!1433)


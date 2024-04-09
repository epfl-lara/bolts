; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16960 () Bool)

(assert start!16960)

(declare-fun b!170337 () Bool)

(declare-fun b_free!4195 () Bool)

(declare-fun b_next!4195 () Bool)

(assert (=> b!170337 (= b_free!4195 (not b_next!4195))))

(declare-fun tp!15209 () Bool)

(declare-fun b_and!10627 () Bool)

(assert (=> b!170337 (= tp!15209 b_and!10627)))

(declare-fun b!170336 () Bool)

(declare-fun e!112394 () Bool)

(declare-fun tp_is_empty!3967 () Bool)

(assert (=> b!170336 (= e!112394 tp_is_empty!3967)))

(declare-fun e!112393 () Bool)

(declare-fun e!112395 () Bool)

(declare-datatypes ((V!4937 0))(
  ( (V!4938 (val!2028 Int)) )
))
(declare-datatypes ((ValueCell!1640 0))(
  ( (ValueCellFull!1640 (v!3889 V!4937)) (EmptyCell!1640) )
))
(declare-datatypes ((array!7042 0))(
  ( (array!7043 (arr!3350 (Array (_ BitVec 32) (_ BitVec 64))) (size!3643 (_ BitVec 32))) )
))
(declare-datatypes ((array!7044 0))(
  ( (array!7045 (arr!3351 (Array (_ BitVec 32) ValueCell!1640)) (size!3644 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2188 0))(
  ( (LongMapFixedSize!2189 (defaultEntry!3536 Int) (mask!8348 (_ BitVec 32)) (extraKeys!3277 (_ BitVec 32)) (zeroValue!3379 V!4937) (minValue!3379 V!4937) (_size!1143 (_ BitVec 32)) (_keys!5366 array!7042) (_values!3519 array!7044) (_vacant!1143 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2188)

(declare-fun array_inv!2133 (array!7042) Bool)

(declare-fun array_inv!2134 (array!7044) Bool)

(assert (=> b!170337 (= e!112393 (and tp!15209 tp_is_empty!3967 (array_inv!2133 (_keys!5366 thiss!1248)) (array_inv!2134 (_values!3519 thiss!1248)) e!112395))))

(declare-fun b!170338 () Bool)

(declare-fun res!80992 () Bool)

(declare-fun e!112397 () Bool)

(assert (=> b!170338 (=> (not res!80992) (not e!112397))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!170338 (= res!80992 (validMask!0 (mask!8348 thiss!1248)))))

(declare-fun b!170339 () Bool)

(declare-fun e!112392 () Bool)

(assert (=> b!170339 (= e!112392 tp_is_empty!3967)))

(declare-fun b!170340 () Bool)

(declare-fun mapRes!6737 () Bool)

(assert (=> b!170340 (= e!112395 (and e!112392 mapRes!6737))))

(declare-fun condMapEmpty!6737 () Bool)

(declare-fun mapDefault!6737 () ValueCell!1640)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17140 () Bool)

(assert start!17140)

(declare-fun b!172174 () Bool)

(declare-fun b_free!4247 () Bool)

(declare-fun b_next!4247 () Bool)

(assert (=> b!172174 (= b_free!4247 (not b_next!4247))))

(declare-fun tp!15379 () Bool)

(declare-fun b_and!10705 () Bool)

(assert (=> b!172174 (= tp!15379 b_and!10705)))

(declare-fun b!172171 () Bool)

(declare-fun res!81766 () Bool)

(declare-fun e!113651 () Bool)

(assert (=> b!172171 (=> (not res!81766) (not e!113651))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!172171 (= res!81766 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!172172 () Bool)

(declare-fun e!113650 () Bool)

(declare-fun tp_is_empty!4019 () Bool)

(assert (=> b!172172 (= e!113650 tp_is_empty!4019)))

(declare-fun mapIsEmpty!6830 () Bool)

(declare-fun mapRes!6830 () Bool)

(assert (=> mapIsEmpty!6830 mapRes!6830))

(declare-fun b!172173 () Bool)

(declare-fun res!81768 () Bool)

(assert (=> b!172173 (=> (not res!81768) (not e!113651))))

(declare-datatypes ((V!5005 0))(
  ( (V!5006 (val!2054 Int)) )
))
(declare-datatypes ((ValueCell!1666 0))(
  ( (ValueCellFull!1666 (v!3918 V!5005)) (EmptyCell!1666) )
))
(declare-datatypes ((array!7154 0))(
  ( (array!7155 (arr!3402 (Array (_ BitVec 32) (_ BitVec 64))) (size!3697 (_ BitVec 32))) )
))
(declare-datatypes ((array!7156 0))(
  ( (array!7157 (arr!3403 (Array (_ BitVec 32) ValueCell!1666)) (size!3698 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2240 0))(
  ( (LongMapFixedSize!2241 (defaultEntry!3566 Int) (mask!8403 (_ BitVec 32)) (extraKeys!3305 (_ BitVec 32)) (zeroValue!3407 V!5005) (minValue!3409 V!5005) (_size!1169 (_ BitVec 32)) (_keys!5401 array!7154) (_values!3549 array!7156) (_vacant!1169 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2240)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!172173 (= res!81768 (validMask!0 (mask!8403 thiss!1248)))))

(declare-fun e!113649 () Bool)

(declare-fun e!113654 () Bool)

(declare-fun array_inv!2169 (array!7154) Bool)

(declare-fun array_inv!2170 (array!7156) Bool)

(assert (=> b!172174 (= e!113654 (and tp!15379 tp_is_empty!4019 (array_inv!2169 (_keys!5401 thiss!1248)) (array_inv!2170 (_values!3549 thiss!1248)) e!113649))))

(declare-fun b!172175 () Bool)

(assert (=> b!172175 (= e!113651 (not (= (size!3698 (_values!3549 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8403 thiss!1248)))))))

(declare-fun b!172176 () Bool)

(declare-fun e!113653 () Bool)

(assert (=> b!172176 (= e!113649 (and e!113653 mapRes!6830))))

(declare-fun condMapEmpty!6830 () Bool)

(declare-fun mapDefault!6830 () ValueCell!1666)


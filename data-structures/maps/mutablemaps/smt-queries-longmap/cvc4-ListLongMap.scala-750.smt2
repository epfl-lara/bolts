; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17548 () Bool)

(assert start!17548)

(declare-fun b!175613 () Bool)

(declare-fun b_free!4343 () Bool)

(declare-fun b_next!4343 () Bool)

(assert (=> b!175613 (= b_free!4343 (not b_next!4343))))

(declare-fun tp!15711 () Bool)

(declare-fun b_and!10843 () Bool)

(assert (=> b!175613 (= tp!15711 b_and!10843)))

(declare-fun b!175611 () Bool)

(declare-fun e!115922 () Bool)

(declare-fun tp_is_empty!4115 () Bool)

(assert (=> b!175611 (= e!115922 tp_is_empty!4115)))

(declare-fun mapNonEmpty!7018 () Bool)

(declare-fun mapRes!7018 () Bool)

(declare-fun tp!15712 () Bool)

(declare-fun e!115919 () Bool)

(assert (=> mapNonEmpty!7018 (= mapRes!7018 (and tp!15712 e!115919))))

(declare-datatypes ((V!5133 0))(
  ( (V!5134 (val!2102 Int)) )
))
(declare-datatypes ((ValueCell!1714 0))(
  ( (ValueCellFull!1714 (v!3973 V!5133)) (EmptyCell!1714) )
))
(declare-fun mapValue!7018 () ValueCell!1714)

(declare-fun mapRest!7018 () (Array (_ BitVec 32) ValueCell!1714))

(declare-fun mapKey!7018 () (_ BitVec 32))

(declare-datatypes ((array!7370 0))(
  ( (array!7371 (arr!3498 (Array (_ BitVec 32) (_ BitVec 64))) (size!3800 (_ BitVec 32))) )
))
(declare-datatypes ((array!7372 0))(
  ( (array!7373 (arr!3499 (Array (_ BitVec 32) ValueCell!1714)) (size!3801 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2336 0))(
  ( (LongMapFixedSize!2337 (defaultEntry!3624 Int) (mask!8525 (_ BitVec 32)) (extraKeys!3361 (_ BitVec 32)) (zeroValue!3465 V!5133) (minValue!3465 V!5133) (_size!1217 (_ BitVec 32)) (_keys!5477 array!7370) (_values!3607 array!7372) (_vacant!1217 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2336)

(assert (=> mapNonEmpty!7018 (= (arr!3499 (_values!3607 thiss!1248)) (store mapRest!7018 mapKey!7018 mapValue!7018))))

(declare-fun b!175612 () Bool)

(declare-fun e!115921 () Bool)

(assert (=> b!175612 (= e!115921 (and (= (size!3801 (_values!3607 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8525 thiss!1248))) (= (size!3800 (_keys!5477 thiss!1248)) (size!3801 (_values!3607 thiss!1248))) (bvsge (mask!8525 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3361 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun e!115920 () Bool)

(declare-fun e!115918 () Bool)

(declare-fun array_inv!2231 (array!7370) Bool)

(declare-fun array_inv!2232 (array!7372) Bool)

(assert (=> b!175613 (= e!115918 (and tp!15711 tp_is_empty!4115 (array_inv!2231 (_keys!5477 thiss!1248)) (array_inv!2232 (_values!3607 thiss!1248)) e!115920))))

(declare-fun b!175614 () Bool)

(declare-fun res!83266 () Bool)

(assert (=> b!175614 (=> (not res!83266) (not e!115921))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!175614 (= res!83266 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!7018 () Bool)

(assert (=> mapIsEmpty!7018 mapRes!7018))

(declare-fun b!175615 () Bool)

(assert (=> b!175615 (= e!115920 (and e!115922 mapRes!7018))))

(declare-fun condMapEmpty!7018 () Bool)

(declare-fun mapDefault!7018 () ValueCell!1714)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15728 () Bool)

(assert start!15728)

(declare-fun b!156734 () Bool)

(declare-fun b_free!3383 () Bool)

(declare-fun b_next!3383 () Bool)

(assert (=> b!156734 (= b_free!3383 (not b_next!3383))))

(declare-fun tp!12673 () Bool)

(declare-fun b_and!9815 () Bool)

(assert (=> b!156734 (= tp!12673 b_and!9815)))

(declare-fun b!156733 () Bool)

(declare-fun res!74101 () Bool)

(declare-fun e!102523 () Bool)

(assert (=> b!156733 (=> (not res!74101) (not e!102523))))

(declare-datatypes ((V!3893 0))(
  ( (V!3894 (val!1637 Int)) )
))
(declare-datatypes ((ValueCell!1249 0))(
  ( (ValueCellFull!1249 (v!3498 V!3893)) (EmptyCell!1249) )
))
(declare-datatypes ((array!5422 0))(
  ( (array!5423 (arr!2568 (Array (_ BitVec 32) (_ BitVec 64))) (size!2846 (_ BitVec 32))) )
))
(declare-datatypes ((array!5424 0))(
  ( (array!5425 (arr!2569 (Array (_ BitVec 32) ValueCell!1249)) (size!2847 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1406 0))(
  ( (LongMapFixedSize!1407 (defaultEntry!3145 Int) (mask!7604 (_ BitVec 32)) (extraKeys!2886 (_ BitVec 32)) (zeroValue!2988 V!3893) (minValue!2988 V!3893) (_size!752 (_ BitVec 32)) (_keys!4920 array!5422) (_values!3128 array!5424) (_vacant!752 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1406)

(assert (=> b!156733 (= res!74101 (and (= (size!2847 (_values!3128 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7604 thiss!1248))) (= (size!2846 (_keys!4920 thiss!1248)) (size!2847 (_values!3128 thiss!1248))) (bvsge (mask!7604 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2886 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2886 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2886 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2886 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2886 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2886 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2886 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun e!102519 () Bool)

(declare-fun e!102521 () Bool)

(declare-fun tp_is_empty!3185 () Bool)

(declare-fun array_inv!1621 (array!5422) Bool)

(declare-fun array_inv!1622 (array!5424) Bool)

(assert (=> b!156734 (= e!102519 (and tp!12673 tp_is_empty!3185 (array_inv!1621 (_keys!4920 thiss!1248)) (array_inv!1622 (_values!3128 thiss!1248)) e!102521))))

(declare-fun b!156735 () Bool)

(declare-fun e!102522 () Bool)

(declare-fun mapRes!5420 () Bool)

(assert (=> b!156735 (= e!102521 (and e!102522 mapRes!5420))))

(declare-fun condMapEmpty!5420 () Bool)

(declare-fun mapDefault!5420 () ValueCell!1249)


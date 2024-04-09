; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75522 () Bool)

(assert start!75522)

(declare-fun b!888219 () Bool)

(declare-fun b_free!15565 () Bool)

(declare-fun b_next!15565 () Bool)

(assert (=> b!888219 (= b_free!15565 (not b_next!15565))))

(declare-fun tp!54647 () Bool)

(declare-fun b_and!25821 () Bool)

(assert (=> b!888219 (= tp!54647 b_and!25821)))

(declare-fun b!888215 () Bool)

(declare-fun e!494930 () Bool)

(declare-fun tp_is_empty!17893 () Bool)

(assert (=> b!888215 (= e!494930 tp_is_empty!17893)))

(declare-fun b!888216 () Bool)

(declare-fun res!602364 () Bool)

(declare-fun e!494931 () Bool)

(assert (=> b!888216 (=> (not res!602364) (not e!494931))))

(declare-fun key!785 () (_ BitVec 64))

(declare-datatypes ((array!51742 0))(
  ( (array!51743 (arr!24878 (Array (_ BitVec 32) (_ BitVec 64))) (size!25320 (_ BitVec 32))) )
))
(declare-datatypes ((V!28823 0))(
  ( (V!28824 (val!8997 Int)) )
))
(declare-datatypes ((ValueCell!8465 0))(
  ( (ValueCellFull!8465 (v!11466 V!28823)) (EmptyCell!8465) )
))
(declare-datatypes ((array!51744 0))(
  ( (array!51745 (arr!24879 (Array (_ BitVec 32) ValueCell!8465)) (size!25321 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3946 0))(
  ( (LongMapFixedSize!3947 (defaultEntry!5167 Int) (mask!25580 (_ BitVec 32)) (extraKeys!4861 (_ BitVec 32)) (zeroValue!4965 V!28823) (minValue!4965 V!28823) (_size!2028 (_ BitVec 32)) (_keys!9842 array!51742) (_values!5152 array!51744) (_vacant!2028 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3946)

(assert (=> b!888216 (= res!602364 (and (= key!785 (bvneg key!785)) (or (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (= (bvand (extraKeys!4861 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4861 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!602363 () Bool)

(assert (=> start!75522 (=> (not res!602363) (not e!494931))))

(declare-fun valid!1528 (LongMapFixedSize!3946) Bool)

(assert (=> start!75522 (= res!602363 (valid!1528 thiss!1181))))

(assert (=> start!75522 e!494931))

(declare-fun e!494928 () Bool)

(assert (=> start!75522 e!494928))

(assert (=> start!75522 true))

(declare-fun mapNonEmpty!28376 () Bool)

(declare-fun mapRes!28376 () Bool)

(declare-fun tp!54646 () Bool)

(assert (=> mapNonEmpty!28376 (= mapRes!28376 (and tp!54646 e!494930))))

(declare-fun mapRest!28376 () (Array (_ BitVec 32) ValueCell!8465))

(declare-fun mapValue!28376 () ValueCell!8465)

(declare-fun mapKey!28376 () (_ BitVec 32))

(assert (=> mapNonEmpty!28376 (= (arr!24879 (_values!5152 thiss!1181)) (store mapRest!28376 mapKey!28376 mapValue!28376))))

(declare-fun b!888217 () Bool)

(declare-fun e!494932 () Bool)

(assert (=> b!888217 (= e!494932 tp_is_empty!17893)))

(declare-fun b!888218 () Bool)

(declare-fun e!494929 () Bool)

(assert (=> b!888218 (= e!494929 (and e!494932 mapRes!28376))))

(declare-fun condMapEmpty!28376 () Bool)

(declare-fun mapDefault!28376 () ValueCell!8465)


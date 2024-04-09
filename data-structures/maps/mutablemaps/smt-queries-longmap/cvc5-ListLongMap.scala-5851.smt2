; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75654 () Bool)

(assert start!75654)

(declare-fun b!889044 () Bool)

(declare-fun b_free!15607 () Bool)

(declare-fun b_next!15607 () Bool)

(assert (=> b!889044 (= b_free!15607 (not b_next!15607))))

(declare-fun tp!54788 () Bool)

(declare-fun b_and!25865 () Bool)

(assert (=> b!889044 (= tp!54788 b_and!25865)))

(declare-fun mapIsEmpty!28454 () Bool)

(declare-fun mapRes!28454 () Bool)

(assert (=> mapIsEmpty!28454 mapRes!28454))

(declare-fun b!889041 () Bool)

(declare-fun e!495547 () Bool)

(declare-fun e!495546 () Bool)

(assert (=> b!889041 (= e!495547 (and e!495546 mapRes!28454))))

(declare-fun condMapEmpty!28454 () Bool)

(declare-datatypes ((array!51834 0))(
  ( (array!51835 (arr!24920 (Array (_ BitVec 32) (_ BitVec 64))) (size!25365 (_ BitVec 32))) )
))
(declare-datatypes ((V!28879 0))(
  ( (V!28880 (val!9018 Int)) )
))
(declare-datatypes ((ValueCell!8486 0))(
  ( (ValueCellFull!8486 (v!11490 V!28879)) (EmptyCell!8486) )
))
(declare-datatypes ((array!51836 0))(
  ( (array!51837 (arr!24921 (Array (_ BitVec 32) ValueCell!8486)) (size!25366 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3988 0))(
  ( (LongMapFixedSize!3989 (defaultEntry!5191 Int) (mask!25626 (_ BitVec 32)) (extraKeys!4885 (_ BitVec 32)) (zeroValue!4989 V!28879) (minValue!4989 V!28879) (_size!2049 (_ BitVec 32)) (_keys!9870 array!51834) (_values!5176 array!51836) (_vacant!2049 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3988)

(declare-fun mapDefault!28454 () ValueCell!8486)


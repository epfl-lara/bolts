; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75464 () Bool)

(assert start!75464)

(declare-fun b!887864 () Bool)

(declare-fun b_free!15551 () Bool)

(declare-fun b_next!15551 () Bool)

(assert (=> b!887864 (= b_free!15551 (not b_next!15551))))

(declare-fun tp!54600 () Bool)

(declare-fun b_and!25805 () Bool)

(assert (=> b!887864 (= tp!54600 b_and!25805)))

(declare-fun b!887862 () Bool)

(declare-fun e!494672 () Bool)

(declare-fun e!494676 () Bool)

(declare-fun mapRes!28351 () Bool)

(assert (=> b!887862 (= e!494672 (and e!494676 mapRes!28351))))

(declare-fun condMapEmpty!28351 () Bool)

(declare-datatypes ((array!51712 0))(
  ( (array!51713 (arr!24864 (Array (_ BitVec 32) (_ BitVec 64))) (size!25305 (_ BitVec 32))) )
))
(declare-datatypes ((V!28803 0))(
  ( (V!28804 (val!8990 Int)) )
))
(declare-datatypes ((ValueCell!8458 0))(
  ( (ValueCellFull!8458 (v!11456 V!28803)) (EmptyCell!8458) )
))
(declare-datatypes ((array!51714 0))(
  ( (array!51715 (arr!24865 (Array (_ BitVec 32) ValueCell!8458)) (size!25306 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3932 0))(
  ( (LongMapFixedSize!3933 (defaultEntry!5157 Int) (mask!25560 (_ BitVec 32)) (extraKeys!4851 (_ BitVec 32)) (zeroValue!4955 V!28803) (minValue!4955 V!28803) (_size!2021 (_ BitVec 32)) (_keys!9830 array!51712) (_values!5142 array!51714) (_vacant!2021 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3932)

(declare-fun mapDefault!28351 () ValueCell!8458)


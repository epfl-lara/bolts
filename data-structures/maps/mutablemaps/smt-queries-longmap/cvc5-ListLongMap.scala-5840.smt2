; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75454 () Bool)

(assert start!75454)

(declare-fun b!887786 () Bool)

(declare-fun b_free!15541 () Bool)

(declare-fun b_next!15541 () Bool)

(assert (=> b!887786 (= b_free!15541 (not b_next!15541))))

(declare-fun tp!54571 () Bool)

(declare-fun b_and!25795 () Bool)

(assert (=> b!887786 (= tp!54571 b_and!25795)))

(declare-fun e!494592 () Bool)

(declare-fun tp_is_empty!17869 () Bool)

(declare-datatypes ((array!51692 0))(
  ( (array!51693 (arr!24854 (Array (_ BitVec 32) (_ BitVec 64))) (size!25295 (_ BitVec 32))) )
))
(declare-datatypes ((V!28791 0))(
  ( (V!28792 (val!8985 Int)) )
))
(declare-datatypes ((ValueCell!8453 0))(
  ( (ValueCellFull!8453 (v!11451 V!28791)) (EmptyCell!8453) )
))
(declare-datatypes ((array!51694 0))(
  ( (array!51695 (arr!24855 (Array (_ BitVec 32) ValueCell!8453)) (size!25296 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3922 0))(
  ( (LongMapFixedSize!3923 (defaultEntry!5152 Int) (mask!25553 (_ BitVec 32)) (extraKeys!4846 (_ BitVec 32)) (zeroValue!4950 V!28791) (minValue!4950 V!28791) (_size!2016 (_ BitVec 32)) (_keys!9825 array!51692) (_values!5137 array!51694) (_vacant!2016 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3922)

(declare-fun e!494589 () Bool)

(declare-fun array_inv!19536 (array!51692) Bool)

(declare-fun array_inv!19537 (array!51694) Bool)

(assert (=> b!887786 (= e!494592 (and tp!54571 tp_is_empty!17869 (array_inv!19536 (_keys!9825 thiss!1181)) (array_inv!19537 (_values!5137 thiss!1181)) e!494589))))

(declare-fun b!887787 () Bool)

(declare-fun e!494593 () Bool)

(assert (=> b!887787 (= e!494593 tp_is_empty!17869)))

(declare-fun b!887788 () Bool)

(declare-fun mapRes!28336 () Bool)

(assert (=> b!887788 (= e!494589 (and e!494593 mapRes!28336))))

(declare-fun condMapEmpty!28336 () Bool)

(declare-fun mapDefault!28336 () ValueCell!8453)


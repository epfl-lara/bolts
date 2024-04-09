; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75436 () Bool)

(assert start!75436)

(declare-fun b!887686 () Bool)

(declare-fun b_free!15535 () Bool)

(declare-fun b_next!15535 () Bool)

(assert (=> b!887686 (= b_free!15535 (not b_next!15535))))

(declare-fun tp!54550 () Bool)

(declare-fun b_and!25789 () Bool)

(assert (=> b!887686 (= tp!54550 b_and!25789)))

(declare-fun b!887682 () Bool)

(declare-fun e!494498 () Bool)

(declare-fun e!494503 () Bool)

(declare-fun mapRes!28324 () Bool)

(assert (=> b!887682 (= e!494498 (and e!494503 mapRes!28324))))

(declare-fun condMapEmpty!28324 () Bool)

(declare-datatypes ((V!28783 0))(
  ( (V!28784 (val!8982 Int)) )
))
(declare-datatypes ((array!51678 0))(
  ( (array!51679 (arr!24848 (Array (_ BitVec 32) (_ BitVec 64))) (size!25289 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!8450 0))(
  ( (ValueCellFull!8450 (v!11444 V!28783)) (EmptyCell!8450) )
))
(declare-datatypes ((array!51680 0))(
  ( (array!51681 (arr!24849 (Array (_ BitVec 32) ValueCell!8450)) (size!25290 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3916 0))(
  ( (LongMapFixedSize!3917 (defaultEntry!5149 Int) (mask!25548 (_ BitVec 32)) (extraKeys!4843 (_ BitVec 32)) (zeroValue!4947 V!28783) (minValue!4947 V!28783) (_size!2013 (_ BitVec 32)) (_keys!9822 array!51678) (_values!5134 array!51680) (_vacant!2013 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1070 0))(
  ( (Cell!1071 (v!11445 LongMapFixedSize!3916)) )
))
(declare-datatypes ((LongMap!1070 0))(
  ( (LongMap!1071 (underlying!546 Cell!1070)) )
))
(declare-fun thiss!821 () LongMap!1070)

(declare-fun mapDefault!28324 () ValueCell!8450)


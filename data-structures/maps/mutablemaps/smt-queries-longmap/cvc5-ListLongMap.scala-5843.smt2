; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75516 () Bool)

(assert start!75516)

(declare-fun b!888178 () Bool)

(declare-fun b_free!15559 () Bool)

(declare-fun b_next!15559 () Bool)

(assert (=> b!888178 (= b_free!15559 (not b_next!15559))))

(declare-fun tp!54628 () Bool)

(declare-fun b_and!25815 () Bool)

(assert (=> b!888178 (= tp!54628 b_and!25815)))

(declare-fun mapNonEmpty!28367 () Bool)

(declare-fun mapRes!28367 () Bool)

(declare-fun tp!54629 () Bool)

(declare-fun e!494882 () Bool)

(assert (=> mapNonEmpty!28367 (= mapRes!28367 (and tp!54629 e!494882))))

(declare-datatypes ((V!28815 0))(
  ( (V!28816 (val!8994 Int)) )
))
(declare-datatypes ((ValueCell!8462 0))(
  ( (ValueCellFull!8462 (v!11463 V!28815)) (EmptyCell!8462) )
))
(declare-fun mapValue!28367 () ValueCell!8462)

(declare-fun mapKey!28367 () (_ BitVec 32))

(declare-datatypes ((array!51730 0))(
  ( (array!51731 (arr!24872 (Array (_ BitVec 32) (_ BitVec 64))) (size!25314 (_ BitVec 32))) )
))
(declare-datatypes ((array!51732 0))(
  ( (array!51733 (arr!24873 (Array (_ BitVec 32) ValueCell!8462)) (size!25315 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3940 0))(
  ( (LongMapFixedSize!3941 (defaultEntry!5164 Int) (mask!25575 (_ BitVec 32)) (extraKeys!4858 (_ BitVec 32)) (zeroValue!4962 V!28815) (minValue!4962 V!28815) (_size!2025 (_ BitVec 32)) (_keys!9839 array!51730) (_values!5149 array!51732) (_vacant!2025 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3940)

(declare-fun mapRest!28367 () (Array (_ BitVec 32) ValueCell!8462))

(assert (=> mapNonEmpty!28367 (= (arr!24873 (_values!5149 thiss!1181)) (store mapRest!28367 mapKey!28367 mapValue!28367))))

(declare-fun b!888175 () Bool)

(declare-fun tp_is_empty!17887 () Bool)

(assert (=> b!888175 (= e!494882 tp_is_empty!17887)))

(declare-fun b!888176 () Bool)

(declare-fun e!494880 () Bool)

(assert (=> b!888176 (= e!494880 tp_is_empty!17887)))

(declare-fun lt!401660 () Bool)

(declare-fun valid!1526 (LongMapFixedSize!3940) Bool)

(assert (=> start!75516 (= lt!401660 (valid!1526 thiss!1181))))

(assert (=> start!75516 false))

(declare-fun e!494883 () Bool)

(assert (=> start!75516 e!494883))

(declare-fun b!888177 () Bool)

(declare-fun e!494884 () Bool)

(assert (=> b!888177 (= e!494884 (and e!494880 mapRes!28367))))

(declare-fun condMapEmpty!28367 () Bool)

(declare-fun mapDefault!28367 () ValueCell!8462)


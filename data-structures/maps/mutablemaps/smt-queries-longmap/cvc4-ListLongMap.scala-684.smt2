; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16624 () Bool)

(assert start!16624)

(declare-fun b!165732 () Bool)

(declare-fun b_free!3917 () Bool)

(declare-fun b_next!3917 () Bool)

(assert (=> b!165732 (= b_free!3917 (not b_next!3917))))

(declare-fun tp!14352 () Bool)

(declare-fun b_and!10349 () Bool)

(assert (=> b!165732 (= tp!14352 b_and!10349)))

(declare-fun b!165723 () Bool)

(declare-fun e!108712 () Bool)

(declare-fun tp_is_empty!3719 () Bool)

(assert (=> b!165723 (= e!108712 tp_is_empty!3719)))

(declare-fun b!165724 () Bool)

(declare-fun e!108718 () Bool)

(assert (=> b!165724 (= e!108718 false)))

(declare-fun lt!83152 () Bool)

(declare-datatypes ((V!4605 0))(
  ( (V!4606 (val!1904 Int)) )
))
(declare-datatypes ((ValueCell!1516 0))(
  ( (ValueCellFull!1516 (v!3765 V!4605)) (EmptyCell!1516) )
))
(declare-datatypes ((array!6534 0))(
  ( (array!6535 (arr!3102 (Array (_ BitVec 32) (_ BitVec 64))) (size!3390 (_ BitVec 32))) )
))
(declare-datatypes ((array!6536 0))(
  ( (array!6537 (arr!3103 (Array (_ BitVec 32) ValueCell!1516)) (size!3391 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1940 0))(
  ( (LongMapFixedSize!1941 (defaultEntry!3412 Int) (mask!8129 (_ BitVec 32)) (extraKeys!3153 (_ BitVec 32)) (zeroValue!3255 V!4605) (minValue!3255 V!4605) (_size!1019 (_ BitVec 32)) (_keys!5237 array!6534) (_values!3395 array!6536) (_vacant!1019 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1940)

(declare-datatypes ((List!2088 0))(
  ( (Nil!2085) (Cons!2084 (h!2701 (_ BitVec 64)) (t!6898 List!2088)) )
))
(declare-fun arrayNoDuplicates!0 (array!6534 (_ BitVec 32) List!2088) Bool)

(assert (=> b!165724 (= lt!83152 (arrayNoDuplicates!0 (_keys!5237 thiss!1248) #b00000000000000000000000000000000 Nil!2085))))

(declare-fun b!165725 () Bool)

(declare-fun e!108715 () Bool)

(declare-fun e!108713 () Bool)

(declare-fun mapRes!6297 () Bool)

(assert (=> b!165725 (= e!108715 (and e!108713 mapRes!6297))))

(declare-fun condMapEmpty!6297 () Bool)

(declare-fun mapDefault!6297 () ValueCell!1516)


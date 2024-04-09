; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22308 () Bool)

(assert start!22308)

(declare-fun b!233709 () Bool)

(declare-fun b_free!6299 () Bool)

(declare-fun b_next!6299 () Bool)

(assert (=> b!233709 (= b_free!6299 (not b_next!6299))))

(declare-fun tp!22045 () Bool)

(declare-fun b_and!13223 () Bool)

(assert (=> b!233709 (= tp!22045 b_and!13223)))

(declare-fun b!233706 () Bool)

(declare-fun res!114698 () Bool)

(declare-fun e!151830 () Bool)

(assert (=> b!233706 (=> (not res!114698) (not e!151830))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!233706 (= res!114698 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!233707 () Bool)

(declare-fun e!151829 () Bool)

(declare-fun tp_is_empty!6161 () Bool)

(assert (=> b!233707 (= e!151829 tp_is_empty!6161)))

(declare-fun b!233708 () Bool)

(declare-fun e!151826 () Bool)

(declare-datatypes ((V!7861 0))(
  ( (V!7862 (val!3125 Int)) )
))
(declare-datatypes ((ValueCell!2737 0))(
  ( (ValueCellFull!2737 (v!5143 V!7861)) (EmptyCell!2737) )
))
(declare-datatypes ((array!11568 0))(
  ( (array!11569 (arr!5501 (Array (_ BitVec 32) ValueCell!2737)) (size!5835 (_ BitVec 32))) )
))
(declare-datatypes ((array!11570 0))(
  ( (array!11571 (arr!5502 (Array (_ BitVec 32) (_ BitVec 64))) (size!5836 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3374 0))(
  ( (LongMapFixedSize!3375 (defaultEntry!4349 Int) (mask!10283 (_ BitVec 32)) (extraKeys!4086 (_ BitVec 32)) (zeroValue!4190 V!7861) (minValue!4190 V!7861) (_size!1736 (_ BitVec 32)) (_keys!6408 array!11570) (_values!4332 array!11568) (_vacant!1736 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3374)

(assert (=> b!233708 (= e!151826 (and (= (size!5835 (_values!4332 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10283 thiss!1504))) (not (= (size!5836 (_keys!6408 thiss!1504)) (size!5835 (_values!4332 thiss!1504))))))))

(declare-fun e!151825 () Bool)

(declare-fun e!151828 () Bool)

(declare-fun array_inv!3617 (array!11570) Bool)

(declare-fun array_inv!3618 (array!11568) Bool)

(assert (=> b!233709 (= e!151828 (and tp!22045 tp_is_empty!6161 (array_inv!3617 (_keys!6408 thiss!1504)) (array_inv!3618 (_values!4332 thiss!1504)) e!151825))))

(declare-fun b!233710 () Bool)

(declare-fun mapRes!10418 () Bool)

(assert (=> b!233710 (= e!151825 (and e!151829 mapRes!10418))))

(declare-fun condMapEmpty!10418 () Bool)

(declare-fun mapDefault!10418 () ValueCell!2737)


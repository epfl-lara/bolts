; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16212 () Bool)

(assert start!16212)

(declare-fun b!161562 () Bool)

(declare-fun b_free!3661 () Bool)

(declare-fun b_next!3661 () Bool)

(assert (=> b!161562 (= b_free!3661 (not b_next!3661))))

(declare-fun tp!13553 () Bool)

(declare-fun b_and!10093 () Bool)

(assert (=> b!161562 (= tp!13553 b_and!10093)))

(declare-fun mapNonEmpty!5882 () Bool)

(declare-fun mapRes!5882 () Bool)

(declare-fun tp!13552 () Bool)

(declare-fun e!105625 () Bool)

(assert (=> mapNonEmpty!5882 (= mapRes!5882 (and tp!13552 e!105625))))

(declare-datatypes ((V!4265 0))(
  ( (V!4266 (val!1776 Int)) )
))
(declare-datatypes ((ValueCell!1388 0))(
  ( (ValueCellFull!1388 (v!3637 V!4265)) (EmptyCell!1388) )
))
(declare-fun mapValue!5882 () ValueCell!1388)

(declare-fun mapKey!5882 () (_ BitVec 32))

(declare-fun mapRest!5882 () (Array (_ BitVec 32) ValueCell!1388))

(declare-datatypes ((array!6004 0))(
  ( (array!6005 (arr!2846 (Array (_ BitVec 32) (_ BitVec 64))) (size!3130 (_ BitVec 32))) )
))
(declare-datatypes ((array!6006 0))(
  ( (array!6007 (arr!2847 (Array (_ BitVec 32) ValueCell!1388)) (size!3131 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1684 0))(
  ( (LongMapFixedSize!1685 (defaultEntry!3284 Int) (mask!7880 (_ BitVec 32)) (extraKeys!3025 (_ BitVec 32)) (zeroValue!3127 V!4265) (minValue!3127 V!4265) (_size!891 (_ BitVec 32)) (_keys!5085 array!6004) (_values!3267 array!6006) (_vacant!891 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1684)

(assert (=> mapNonEmpty!5882 (= (arr!2847 (_values!3267 thiss!1248)) (store mapRest!5882 mapKey!5882 mapValue!5882))))

(declare-fun tp_is_empty!3463 () Bool)

(declare-fun e!105626 () Bool)

(declare-fun e!105623 () Bool)

(declare-fun array_inv!1805 (array!6004) Bool)

(declare-fun array_inv!1806 (array!6006) Bool)

(assert (=> b!161562 (= e!105626 (and tp!13553 tp_is_empty!3463 (array_inv!1805 (_keys!5085 thiss!1248)) (array_inv!1806 (_values!3267 thiss!1248)) e!105623))))

(declare-fun b!161563 () Bool)

(declare-fun e!105622 () Bool)

(assert (=> b!161563 (= e!105622 tp_is_empty!3463)))

(declare-fun b!161564 () Bool)

(assert (=> b!161564 (= e!105623 (and e!105622 mapRes!5882))))

(declare-fun condMapEmpty!5882 () Bool)

(declare-fun mapDefault!5882 () ValueCell!1388)


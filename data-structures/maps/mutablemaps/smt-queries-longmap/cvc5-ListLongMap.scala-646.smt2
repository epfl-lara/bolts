; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16236 () Bool)

(assert start!16236)

(declare-fun b!161782 () Bool)

(declare-fun b_free!3685 () Bool)

(declare-fun b_next!3685 () Bool)

(assert (=> b!161782 (= b_free!3685 (not b_next!3685))))

(declare-fun tp!13624 () Bool)

(declare-fun b_and!10117 () Bool)

(assert (=> b!161782 (= tp!13624 b_and!10117)))

(declare-fun b!161781 () Bool)

(declare-fun e!105842 () Bool)

(declare-fun tp_is_empty!3487 () Bool)

(assert (=> b!161781 (= e!105842 tp_is_empty!3487)))

(declare-fun mapNonEmpty!5918 () Bool)

(declare-fun mapRes!5918 () Bool)

(declare-fun tp!13625 () Bool)

(assert (=> mapNonEmpty!5918 (= mapRes!5918 (and tp!13625 e!105842))))

(declare-fun mapKey!5918 () (_ BitVec 32))

(declare-datatypes ((V!4297 0))(
  ( (V!4298 (val!1788 Int)) )
))
(declare-datatypes ((ValueCell!1400 0))(
  ( (ValueCellFull!1400 (v!3649 V!4297)) (EmptyCell!1400) )
))
(declare-fun mapRest!5918 () (Array (_ BitVec 32) ValueCell!1400))

(declare-datatypes ((array!6052 0))(
  ( (array!6053 (arr!2870 (Array (_ BitVec 32) (_ BitVec 64))) (size!3154 (_ BitVec 32))) )
))
(declare-datatypes ((array!6054 0))(
  ( (array!6055 (arr!2871 (Array (_ BitVec 32) ValueCell!1400)) (size!3155 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1708 0))(
  ( (LongMapFixedSize!1709 (defaultEntry!3296 Int) (mask!7900 (_ BitVec 32)) (extraKeys!3037 (_ BitVec 32)) (zeroValue!3139 V!4297) (minValue!3139 V!4297) (_size!903 (_ BitVec 32)) (_keys!5097 array!6052) (_values!3279 array!6054) (_vacant!903 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1708)

(declare-fun mapValue!5918 () ValueCell!1400)

(assert (=> mapNonEmpty!5918 (= (arr!2871 (_values!3279 thiss!1248)) (store mapRest!5918 mapKey!5918 mapValue!5918))))

(declare-fun e!105840 () Bool)

(declare-fun e!105841 () Bool)

(declare-fun array_inv!1825 (array!6052) Bool)

(declare-fun array_inv!1826 (array!6054) Bool)

(assert (=> b!161782 (= e!105841 (and tp!13624 tp_is_empty!3487 (array_inv!1825 (_keys!5097 thiss!1248)) (array_inv!1826 (_values!3279 thiss!1248)) e!105840))))

(declare-fun b!161783 () Bool)

(declare-fun e!105844 () Bool)

(assert (=> b!161783 (= e!105840 (and e!105844 mapRes!5918))))

(declare-fun condMapEmpty!5918 () Bool)

(declare-fun mapDefault!5918 () ValueCell!1400)


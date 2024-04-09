; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76648 () Bool)

(assert start!76648)

(declare-fun b!897178 () Bool)

(declare-fun b_free!15979 () Bool)

(declare-fun b_next!15979 () Bool)

(assert (=> b!897178 (= b_free!15979 (not b_next!15979))))

(declare-fun tp!55988 () Bool)

(declare-fun b_and!26289 () Bool)

(assert (=> b!897178 (= tp!55988 b_and!26289)))

(declare-fun e!501696 () Bool)

(declare-fun tp_is_empty!18307 () Bool)

(declare-datatypes ((array!52626 0))(
  ( (array!52627 (arr!25292 (Array (_ BitVec 32) (_ BitVec 64))) (size!25747 (_ BitVec 32))) )
))
(declare-datatypes ((V!29375 0))(
  ( (V!29376 (val!9204 Int)) )
))
(declare-datatypes ((ValueCell!8672 0))(
  ( (ValueCellFull!8672 (v!11691 V!29375)) (EmptyCell!8672) )
))
(declare-datatypes ((array!52628 0))(
  ( (array!52629 (arr!25293 (Array (_ BitVec 32) ValueCell!8672)) (size!25748 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4360 0))(
  ( (LongMapFixedSize!4361 (defaultEntry!5392 Int) (mask!26070 (_ BitVec 32)) (extraKeys!5101 (_ BitVec 32)) (zeroValue!5205 V!29375) (minValue!5205 V!29375) (_size!2235 (_ BitVec 32)) (_keys!10143 array!52626) (_values!5392 array!52628) (_vacant!2235 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4360)

(declare-fun e!501694 () Bool)

(declare-fun array_inv!19826 (array!52626) Bool)

(declare-fun array_inv!19827 (array!52628) Bool)

(assert (=> b!897178 (= e!501696 (and tp!55988 tp_is_empty!18307 (array_inv!19826 (_keys!10143 thiss!1181)) (array_inv!19827 (_values!5392 thiss!1181)) e!501694))))

(declare-fun mapIsEmpty!29096 () Bool)

(declare-fun mapRes!29096 () Bool)

(assert (=> mapIsEmpty!29096 mapRes!29096))

(declare-fun b!897179 () Bool)

(declare-fun e!501699 () Bool)

(assert (=> b!897179 (= e!501699 tp_is_empty!18307)))

(declare-fun b!897180 () Bool)

(declare-fun res!606580 () Bool)

(declare-fun e!501697 () Bool)

(assert (=> b!897180 (=> (not res!606580) (not e!501697))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!897180 (= res!606580 (not (= key!785 (bvneg key!785))))))

(declare-fun b!897181 () Bool)

(assert (=> b!897181 (= e!501694 (and e!501699 mapRes!29096))))

(declare-fun condMapEmpty!29096 () Bool)

(declare-fun mapDefault!29096 () ValueCell!8672)


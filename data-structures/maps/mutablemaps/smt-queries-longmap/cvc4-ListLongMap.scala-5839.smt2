; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75440 () Bool)

(assert start!75440)

(declare-fun b!887724 () Bool)

(declare-fun b_free!15539 () Bool)

(declare-fun b_next!15539 () Bool)

(assert (=> b!887724 (= b_free!15539 (not b_next!15539))))

(declare-fun tp!54561 () Bool)

(declare-fun b_and!25793 () Bool)

(assert (=> b!887724 (= tp!54561 b_and!25793)))

(declare-fun mapNonEmpty!28330 () Bool)

(declare-fun mapRes!28330 () Bool)

(declare-fun tp!54562 () Bool)

(declare-fun e!494544 () Bool)

(assert (=> mapNonEmpty!28330 (= mapRes!28330 (and tp!54562 e!494544))))

(declare-datatypes ((V!28787 0))(
  ( (V!28788 (val!8984 Int)) )
))
(declare-datatypes ((ValueCell!8452 0))(
  ( (ValueCellFull!8452 (v!11448 V!28787)) (EmptyCell!8452) )
))
(declare-fun mapValue!28330 () ValueCell!8452)

(declare-datatypes ((array!51686 0))(
  ( (array!51687 (arr!24852 (Array (_ BitVec 32) (_ BitVec 64))) (size!25293 (_ BitVec 32))) )
))
(declare-datatypes ((array!51688 0))(
  ( (array!51689 (arr!24853 (Array (_ BitVec 32) ValueCell!8452)) (size!25294 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3920 0))(
  ( (LongMapFixedSize!3921 (defaultEntry!5151 Int) (mask!25550 (_ BitVec 32)) (extraKeys!4845 (_ BitVec 32)) (zeroValue!4949 V!28787) (minValue!4949 V!28787) (_size!2015 (_ BitVec 32)) (_keys!9824 array!51686) (_values!5136 array!51688) (_vacant!2015 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1074 0))(
  ( (Cell!1075 (v!11449 LongMapFixedSize!3920)) )
))
(declare-datatypes ((LongMap!1074 0))(
  ( (LongMap!1075 (underlying!548 Cell!1074)) )
))
(declare-fun thiss!821 () LongMap!1074)

(declare-fun mapRest!28330 () (Array (_ BitVec 32) ValueCell!8452))

(declare-fun mapKey!28330 () (_ BitVec 32))

(assert (=> mapNonEmpty!28330 (= (arr!24853 (_values!5136 (v!11449 (underlying!548 thiss!821)))) (store mapRest!28330 mapKey!28330 mapValue!28330))))

(declare-fun mapIsEmpty!28330 () Bool)

(assert (=> mapIsEmpty!28330 mapRes!28330))

(declare-fun e!494545 () Bool)

(declare-fun e!494547 () Bool)

(declare-fun tp_is_empty!17867 () Bool)

(declare-fun array_inv!19534 (array!51686) Bool)

(declare-fun array_inv!19535 (array!51688) Bool)

(assert (=> b!887724 (= e!494545 (and tp!54561 tp_is_empty!17867 (array_inv!19534 (_keys!9824 (v!11449 (underlying!548 thiss!821)))) (array_inv!19535 (_values!5136 (v!11449 (underlying!548 thiss!821)))) e!494547))))

(declare-fun res!602232 () Bool)

(declare-fun e!494546 () Bool)

(assert (=> start!75440 (=> (not res!602232) (not e!494546))))

(declare-fun valid!1518 (LongMap!1074) Bool)

(assert (=> start!75440 (= res!602232 (valid!1518 thiss!821))))

(assert (=> start!75440 e!494546))

(declare-fun e!494550 () Bool)

(assert (=> start!75440 e!494550))

(assert (=> start!75440 true))

(declare-fun b!887725 () Bool)

(declare-fun e!494551 () Bool)

(assert (=> b!887725 (= e!494551 tp_is_empty!17867)))

(declare-fun b!887726 () Bool)

(declare-fun e!494548 () Bool)

(assert (=> b!887726 (= e!494548 e!494545)))

(declare-fun b!887727 () Bool)

(assert (=> b!887727 (= e!494550 e!494548)))

(declare-fun b!887728 () Bool)

(assert (=> b!887728 (= e!494544 tp_is_empty!17867)))

(declare-fun b!887729 () Bool)

(assert (=> b!887729 (= e!494547 (and e!494551 mapRes!28330))))

(declare-fun condMapEmpty!28330 () Bool)

(declare-fun mapDefault!28330 () ValueCell!8452)


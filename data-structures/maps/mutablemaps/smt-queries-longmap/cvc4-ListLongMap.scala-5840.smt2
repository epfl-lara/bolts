; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75458 () Bool)

(assert start!75458)

(declare-fun b!887813 () Bool)

(declare-fun b_free!15545 () Bool)

(declare-fun b_next!15545 () Bool)

(assert (=> b!887813 (= b_free!15545 (not b_next!15545))))

(declare-fun tp!54583 () Bool)

(declare-fun b_and!25799 () Bool)

(assert (=> b!887813 (= tp!54583 b_and!25799)))

(declare-fun b!887810 () Bool)

(declare-fun e!494619 () Bool)

(declare-fun tp_is_empty!17873 () Bool)

(assert (=> b!887810 (= e!494619 tp_is_empty!17873)))

(declare-fun b!887811 () Bool)

(declare-fun e!494620 () Bool)

(declare-fun mapRes!28342 () Bool)

(assert (=> b!887811 (= e!494620 (and e!494619 mapRes!28342))))

(declare-fun condMapEmpty!28342 () Bool)

(declare-datatypes ((array!51700 0))(
  ( (array!51701 (arr!24858 (Array (_ BitVec 32) (_ BitVec 64))) (size!25299 (_ BitVec 32))) )
))
(declare-datatypes ((V!28795 0))(
  ( (V!28796 (val!8987 Int)) )
))
(declare-datatypes ((ValueCell!8455 0))(
  ( (ValueCellFull!8455 (v!11453 V!28795)) (EmptyCell!8455) )
))
(declare-datatypes ((array!51702 0))(
  ( (array!51703 (arr!24859 (Array (_ BitVec 32) ValueCell!8455)) (size!25300 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3926 0))(
  ( (LongMapFixedSize!3927 (defaultEntry!5154 Int) (mask!25555 (_ BitVec 32)) (extraKeys!4848 (_ BitVec 32)) (zeroValue!4952 V!28795) (minValue!4952 V!28795) (_size!2018 (_ BitVec 32)) (_keys!9827 array!51700) (_values!5139 array!51702) (_vacant!2018 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3926)

(declare-fun mapDefault!28342 () ValueCell!8455)


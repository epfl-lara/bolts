; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75688 () Bool)

(assert start!75688)

(declare-fun b!889382 () Bool)

(declare-fun b_free!15631 () Bool)

(declare-fun b_next!15631 () Bool)

(assert (=> b!889382 (= b_free!15631 (not b_next!15631))))

(declare-fun tp!54862 () Bool)

(declare-fun b_and!25889 () Bool)

(assert (=> b!889382 (= tp!54862 b_and!25889)))

(declare-fun mapNonEmpty!28493 () Bool)

(declare-fun mapRes!28493 () Bool)

(declare-fun tp!54863 () Bool)

(declare-fun e!495802 () Bool)

(assert (=> mapNonEmpty!28493 (= mapRes!28493 (and tp!54863 e!495802))))

(declare-datatypes ((V!28911 0))(
  ( (V!28912 (val!9030 Int)) )
))
(declare-datatypes ((ValueCell!8498 0))(
  ( (ValueCellFull!8498 (v!11502 V!28911)) (EmptyCell!8498) )
))
(declare-fun mapRest!28493 () (Array (_ BitVec 32) ValueCell!8498))

(declare-datatypes ((array!51884 0))(
  ( (array!51885 (arr!24944 (Array (_ BitVec 32) (_ BitVec 64))) (size!25389 (_ BitVec 32))) )
))
(declare-datatypes ((array!51886 0))(
  ( (array!51887 (arr!24945 (Array (_ BitVec 32) ValueCell!8498)) (size!25390 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4012 0))(
  ( (LongMapFixedSize!4013 (defaultEntry!5203 Int) (mask!25647 (_ BitVec 32)) (extraKeys!4897 (_ BitVec 32)) (zeroValue!5001 V!28911) (minValue!5001 V!28911) (_size!2061 (_ BitVec 32)) (_keys!9882 array!51884) (_values!5188 array!51886) (_vacant!2061 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4012)

(declare-fun mapKey!28493 () (_ BitVec 32))

(declare-fun mapValue!28493 () ValueCell!8498)

(assert (=> mapNonEmpty!28493 (= (arr!24945 (_values!5188 thiss!1181)) (store mapRest!28493 mapKey!28493 mapValue!28493))))

(declare-fun b!889376 () Bool)

(declare-fun e!495800 () Bool)

(declare-fun tp_is_empty!17959 () Bool)

(assert (=> b!889376 (= e!495800 tp_is_empty!17959)))

(declare-fun b!889377 () Bool)

(declare-fun e!495801 () Bool)

(assert (=> b!889377 (= e!495801 (and e!495800 mapRes!28493))))

(declare-fun condMapEmpty!28493 () Bool)

(declare-fun mapDefault!28493 () ValueCell!8498)


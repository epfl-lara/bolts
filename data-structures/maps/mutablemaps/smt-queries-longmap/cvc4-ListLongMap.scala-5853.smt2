; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75680 () Bool)

(assert start!75680)

(declare-fun b!889267 () Bool)

(declare-fun b_free!15623 () Bool)

(declare-fun b_next!15623 () Bool)

(assert (=> b!889267 (= b_free!15623 (not b_next!15623))))

(declare-fun tp!54838 () Bool)

(declare-fun b_and!25881 () Bool)

(assert (=> b!889267 (= tp!54838 b_and!25881)))

(declare-datatypes ((array!51868 0))(
  ( (array!51869 (arr!24936 (Array (_ BitVec 32) (_ BitVec 64))) (size!25381 (_ BitVec 32))) )
))
(declare-datatypes ((V!28899 0))(
  ( (V!28900 (val!9026 Int)) )
))
(declare-datatypes ((ValueCell!8494 0))(
  ( (ValueCellFull!8494 (v!11498 V!28899)) (EmptyCell!8494) )
))
(declare-datatypes ((array!51870 0))(
  ( (array!51871 (arr!24937 (Array (_ BitVec 32) ValueCell!8494)) (size!25382 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4004 0))(
  ( (LongMapFixedSize!4005 (defaultEntry!5199 Int) (mask!25639 (_ BitVec 32)) (extraKeys!4893 (_ BitVec 32)) (zeroValue!4997 V!28899) (minValue!4997 V!28899) (_size!2057 (_ BitVec 32)) (_keys!9878 array!51868) (_values!5184 array!51870) (_vacant!2057 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4004)

(declare-fun e!495722 () Bool)

(declare-fun e!495716 () Bool)

(declare-fun tp_is_empty!17951 () Bool)

(declare-fun array_inv!19586 (array!51868) Bool)

(declare-fun array_inv!19587 (array!51870) Bool)

(assert (=> b!889267 (= e!495722 (and tp!54838 tp_is_empty!17951 (array_inv!19586 (_keys!9878 thiss!1181)) (array_inv!19587 (_values!5184 thiss!1181)) e!495716))))

(declare-fun b!889268 () Bool)

(declare-fun e!495719 () Bool)

(assert (=> b!889268 (= e!495719 tp_is_empty!17951)))

(declare-fun mapNonEmpty!28481 () Bool)

(declare-fun mapRes!28481 () Bool)

(declare-fun tp!54839 () Bool)

(declare-fun e!495718 () Bool)

(assert (=> mapNonEmpty!28481 (= mapRes!28481 (and tp!54839 e!495718))))

(declare-fun mapRest!28481 () (Array (_ BitVec 32) ValueCell!8494))

(declare-fun mapKey!28481 () (_ BitVec 32))

(declare-fun mapValue!28481 () ValueCell!8494)

(assert (=> mapNonEmpty!28481 (= (arr!24937 (_values!5184 thiss!1181)) (store mapRest!28481 mapKey!28481 mapValue!28481))))

(declare-fun b!889269 () Bool)

(assert (=> b!889269 (= e!495716 (and e!495719 mapRes!28481))))

(declare-fun condMapEmpty!28481 () Bool)

(declare-fun mapDefault!28481 () ValueCell!8494)


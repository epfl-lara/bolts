; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10962 () Bool)

(assert start!10962)

(declare-fun b!88824 () Bool)

(declare-fun b_free!2265 () Bool)

(declare-fun b_next!2265 () Bool)

(assert (=> b!88824 (= b_free!2265 (not b_next!2265))))

(declare-fun tp!9034 () Bool)

(declare-fun b_and!5337 () Bool)

(assert (=> b!88824 (= tp!9034 b_and!5337)))

(declare-fun b!88839 () Bool)

(declare-fun b_free!2267 () Bool)

(declare-fun b_next!2267 () Bool)

(assert (=> b!88839 (= b_free!2267 (not b_next!2267))))

(declare-fun tp!9033 () Bool)

(declare-fun b_and!5339 () Bool)

(assert (=> b!88839 (= tp!9033 b_and!5339)))

(declare-datatypes ((V!3045 0))(
  ( (V!3046 (val!1319 Int)) )
))
(declare-datatypes ((array!4060 0))(
  ( (array!4061 (arr!1932 (Array (_ BitVec 32) (_ BitVec 64))) (size!2178 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!931 0))(
  ( (ValueCellFull!931 (v!2677 V!3045)) (EmptyCell!931) )
))
(declare-datatypes ((array!4062 0))(
  ( (array!4063 (arr!1933 (Array (_ BitVec 32) ValueCell!931)) (size!2179 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!770 0))(
  ( (LongMapFixedSize!771 (defaultEntry!2373 Int) (mask!6417 (_ BitVec 32)) (extraKeys!2206 (_ BitVec 32)) (zeroValue!2262 V!3045) (minValue!2262 V!3045) (_size!434 (_ BitVec 32)) (_keys!4051 array!4060) (_values!2356 array!4062) (_vacant!434 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!576 0))(
  ( (Cell!577 (v!2678 LongMapFixedSize!770)) )
))
(declare-datatypes ((LongMap!576 0))(
  ( (LongMap!577 (underlying!299 Cell!576)) )
))
(declare-fun thiss!992 () LongMap!576)

(declare-fun e!57872 () Bool)

(declare-fun tp_is_empty!2549 () Bool)

(declare-fun e!57862 () Bool)

(declare-fun array_inv!1157 (array!4060) Bool)

(declare-fun array_inv!1158 (array!4062) Bool)

(assert (=> b!88824 (= e!57862 (and tp!9034 tp_is_empty!2549 (array_inv!1157 (_keys!4051 (v!2678 (underlying!299 thiss!992)))) (array_inv!1158 (_values!2356 (v!2678 (underlying!299 thiss!992)))) e!57872))))

(declare-fun mapNonEmpty!3455 () Bool)

(declare-fun mapRes!3455 () Bool)

(declare-fun tp!9035 () Bool)

(declare-fun e!57863 () Bool)

(assert (=> mapNonEmpty!3455 (= mapRes!3455 (and tp!9035 e!57863))))

(declare-fun mapRest!3455 () (Array (_ BitVec 32) ValueCell!931))

(declare-fun mapKey!3456 () (_ BitVec 32))

(declare-fun mapValue!3455 () ValueCell!931)

(declare-fun newMap!16 () LongMapFixedSize!770)

(assert (=> mapNonEmpty!3455 (= (arr!1933 (_values!2356 newMap!16)) (store mapRest!3455 mapKey!3456 mapValue!3455))))

(declare-fun b!88825 () Bool)

(declare-fun e!57868 () Bool)

(declare-fun e!57873 () Bool)

(assert (=> b!88825 (= e!57868 (and e!57873 mapRes!3455))))

(declare-fun condMapEmpty!3456 () Bool)

(declare-fun mapDefault!3455 () ValueCell!931)


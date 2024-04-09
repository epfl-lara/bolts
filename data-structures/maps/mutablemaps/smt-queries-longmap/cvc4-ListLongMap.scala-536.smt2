; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13536 () Bool)

(assert start!13536)

(declare-fun b!124187 () Bool)

(declare-fun b_free!2829 () Bool)

(declare-fun b_next!2829 () Bool)

(assert (=> b!124187 (= b_free!2829 (not b_next!2829))))

(declare-fun tp!10884 () Bool)

(declare-fun b_and!7645 () Bool)

(assert (=> b!124187 (= tp!10884 b_and!7645)))

(declare-fun b!124178 () Bool)

(declare-fun b_free!2831 () Bool)

(declare-fun b_next!2831 () Bool)

(assert (=> b!124178 (= b_free!2831 (not b_next!2831))))

(declare-fun tp!10883 () Bool)

(declare-fun b_and!7647 () Bool)

(assert (=> b!124178 (= tp!10883 b_and!7647)))

(declare-fun mapIsEmpty!4457 () Bool)

(declare-fun mapRes!4458 () Bool)

(assert (=> mapIsEmpty!4457 mapRes!4458))

(declare-datatypes ((V!3421 0))(
  ( (V!3422 (val!1460 Int)) )
))
(declare-datatypes ((array!4674 0))(
  ( (array!4675 (arr!2214 (Array (_ BitVec 32) (_ BitVec 64))) (size!2477 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1072 0))(
  ( (ValueCellFull!1072 (v!3099 V!3421)) (EmptyCell!1072) )
))
(declare-datatypes ((array!4676 0))(
  ( (array!4677 (arr!2215 (Array (_ BitVec 32) ValueCell!1072)) (size!2478 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1052 0))(
  ( (LongMapFixedSize!1053 (defaultEntry!2761 Int) (mask!7004 (_ BitVec 32)) (extraKeys!2546 (_ BitVec 32)) (zeroValue!2626 V!3421) (minValue!2626 V!3421) (_size!575 (_ BitVec 32)) (_keys!4490 array!4674) (_values!2744 array!4676) (_vacant!575 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1052)

(declare-fun tp_is_empty!2831 () Bool)

(declare-fun e!81188 () Bool)

(declare-fun e!81185 () Bool)

(declare-fun array_inv!1355 (array!4674) Bool)

(declare-fun array_inv!1356 (array!4676) Bool)

(assert (=> b!124178 (= e!81185 (and tp!10883 tp_is_empty!2831 (array_inv!1355 (_keys!4490 newMap!16)) (array_inv!1356 (_values!2744 newMap!16)) e!81188))))

(declare-fun b!124179 () Bool)

(declare-fun e!81195 () Bool)

(assert (=> b!124179 (= e!81195 tp_is_empty!2831)))

(declare-fun b!124180 () Bool)

(declare-fun res!60218 () Bool)

(declare-fun e!81186 () Bool)

(assert (=> b!124180 (=> (not res!60218) (not e!81186))))

(declare-datatypes ((Cell!844 0))(
  ( (Cell!845 (v!3100 LongMapFixedSize!1052)) )
))
(declare-datatypes ((LongMap!844 0))(
  ( (LongMap!845 (underlying!433 Cell!844)) )
))
(declare-fun thiss!992 () LongMap!844)

(assert (=> b!124180 (= res!60218 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7004 newMap!16)) (_size!575 (v!3100 (underlying!433 thiss!992)))))))

(declare-fun mapNonEmpty!4457 () Bool)

(declare-fun mapRes!4457 () Bool)

(declare-fun tp!10881 () Bool)

(declare-fun e!81184 () Bool)

(assert (=> mapNonEmpty!4457 (= mapRes!4457 (and tp!10881 e!81184))))

(declare-fun mapRest!4457 () (Array (_ BitVec 32) ValueCell!1072))

(declare-fun mapKey!4458 () (_ BitVec 32))

(declare-fun mapValue!4457 () ValueCell!1072)

(assert (=> mapNonEmpty!4457 (= (arr!2215 (_values!2744 newMap!16)) (store mapRest!4457 mapKey!4458 mapValue!4457))))

(declare-fun b!124181 () Bool)

(assert (=> b!124181 (= e!81184 tp_is_empty!2831)))

(declare-fun b!124182 () Bool)

(declare-fun e!81192 () Bool)

(declare-fun e!81193 () Bool)

(assert (=> b!124182 (= e!81192 e!81193)))

(declare-fun b!124183 () Bool)

(declare-fun res!60221 () Bool)

(assert (=> b!124183 (=> (not res!60221) (not e!81186))))

(declare-fun valid!497 (LongMapFixedSize!1052) Bool)

(assert (=> b!124183 (= res!60221 (valid!497 newMap!16))))

(declare-fun b!124184 () Bool)

(declare-fun e!81194 () Bool)

(assert (=> b!124184 (= e!81194 tp_is_empty!2831)))

(declare-fun b!124185 () Bool)

(assert (=> b!124185 (= e!81188 (and e!81194 mapRes!4457))))

(declare-fun condMapEmpty!4457 () Bool)

(declare-fun mapDefault!4457 () ValueCell!1072)


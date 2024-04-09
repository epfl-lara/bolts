; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8106 () Bool)

(assert start!8106)

(declare-fun b!51094 () Bool)

(declare-fun b_free!1581 () Bool)

(declare-fun b_next!1581 () Bool)

(assert (=> b!51094 (= b_free!1581 (not b_next!1581))))

(declare-fun tp!6815 () Bool)

(declare-fun b_and!2801 () Bool)

(assert (=> b!51094 (= tp!6815 b_and!2801)))

(declare-fun b!51091 () Bool)

(declare-fun b_free!1583 () Bool)

(declare-fun b_next!1583 () Bool)

(assert (=> b!51091 (= b_free!1583 (not b_next!1583))))

(declare-fun tp!6817 () Bool)

(declare-fun b_and!2803 () Bool)

(assert (=> b!51091 (= tp!6817 b_and!2803)))

(declare-fun tp_is_empty!2207 () Bool)

(declare-fun e!33104 () Bool)

(declare-datatypes ((V!2589 0))(
  ( (V!2590 (val!1148 Int)) )
))
(declare-datatypes ((array!3328 0))(
  ( (array!3329 (arr!1590 (Array (_ BitVec 32) (_ BitVec 64))) (size!1815 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!760 0))(
  ( (ValueCellFull!760 (v!2181 V!2589)) (EmptyCell!760) )
))
(declare-datatypes ((array!3330 0))(
  ( (array!3331 (arr!1591 (Array (_ BitVec 32) ValueCell!760)) (size!1816 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!428 0))(
  ( (LongMapFixedSize!429 (defaultEntry!1928 Int) (mask!5727 (_ BitVec 32)) (extraKeys!1819 (_ BitVec 32)) (zeroValue!1846 V!2589) (minValue!1846 V!2589) (_size!263 (_ BitVec 32)) (_keys!3540 array!3328) (_values!1911 array!3330) (_vacant!263 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!428)

(declare-fun e!33101 () Bool)

(declare-fun array_inv!925 (array!3328) Bool)

(declare-fun array_inv!926 (array!3330) Bool)

(assert (=> b!51091 (= e!33104 (and tp!6817 tp_is_empty!2207 (array_inv!925 (_keys!3540 newMap!16)) (array_inv!926 (_values!1911 newMap!16)) e!33101))))

(declare-fun b!51092 () Bool)

(declare-fun res!29285 () Bool)

(declare-fun e!33103 () Bool)

(assert (=> b!51092 (=> (not res!29285) (not e!33103))))

(declare-fun valid!147 (LongMapFixedSize!428) Bool)

(assert (=> b!51092 (= res!29285 (valid!147 newMap!16))))

(declare-fun mapIsEmpty!2263 () Bool)

(declare-fun mapRes!2263 () Bool)

(assert (=> mapIsEmpty!2263 mapRes!2263))

(declare-fun b!51093 () Bool)

(declare-fun e!33108 () Bool)

(declare-fun e!33109 () Bool)

(assert (=> b!51093 (= e!33108 e!33109)))

(declare-fun mapIsEmpty!2264 () Bool)

(declare-fun mapRes!2264 () Bool)

(assert (=> mapIsEmpty!2264 mapRes!2264))

(declare-fun e!33110 () Bool)

(declare-datatypes ((Cell!250 0))(
  ( (Cell!251 (v!2182 LongMapFixedSize!428)) )
))
(declare-datatypes ((LongMap!250 0))(
  ( (LongMap!251 (underlying!136 Cell!250)) )
))
(declare-fun thiss!992 () LongMap!250)

(declare-fun e!33102 () Bool)

(assert (=> b!51094 (= e!33110 (and tp!6815 tp_is_empty!2207 (array_inv!925 (_keys!3540 (v!2182 (underlying!136 thiss!992)))) (array_inv!926 (_values!1911 (v!2182 (underlying!136 thiss!992)))) e!33102))))

(declare-fun mapNonEmpty!2263 () Bool)

(declare-fun tp!6818 () Bool)

(declare-fun e!33107 () Bool)

(assert (=> mapNonEmpty!2263 (= mapRes!2263 (and tp!6818 e!33107))))

(declare-fun mapValue!2263 () ValueCell!760)

(declare-fun mapKey!2263 () (_ BitVec 32))

(declare-fun mapRest!2264 () (Array (_ BitVec 32) ValueCell!760))

(assert (=> mapNonEmpty!2263 (= (arr!1591 (_values!1911 newMap!16)) (store mapRest!2264 mapKey!2263 mapValue!2263))))

(declare-fun b!51095 () Bool)

(declare-fun res!29283 () Bool)

(assert (=> b!51095 (=> (not res!29283) (not e!33103))))

(assert (=> b!51095 (= res!29283 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5727 newMap!16)) (_size!263 (v!2182 (underlying!136 thiss!992)))))))

(declare-fun b!51096 () Bool)

(declare-fun e!33105 () Bool)

(assert (=> b!51096 (= e!33101 (and e!33105 mapRes!2263))))

(declare-fun condMapEmpty!2263 () Bool)

(declare-fun mapDefault!2263 () ValueCell!760)


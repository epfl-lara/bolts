; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3128 () Bool)

(assert start!3128)

(declare-fun b!19067 () Bool)

(declare-fun b_free!661 () Bool)

(declare-fun b_next!661 () Bool)

(assert (=> b!19067 (= b_free!661 (not b_next!661))))

(declare-fun tp!3180 () Bool)

(declare-fun b_and!1323 () Bool)

(assert (=> b!19067 (= tp!3180 b_and!1323)))

(declare-fun mapIsEmpty!829 () Bool)

(declare-fun mapRes!829 () Bool)

(assert (=> mapIsEmpty!829 mapRes!829))

(declare-fun tp_is_empty!925 () Bool)

(declare-fun e!12249 () Bool)

(declare-datatypes ((V!1059 0))(
  ( (V!1060 (val!489 Int)) )
))
(declare-datatypes ((ValueCell!263 0))(
  ( (ValueCellFull!263 (v!1494 V!1059)) (EmptyCell!263) )
))
(declare-datatypes ((array!1051 0))(
  ( (array!1052 (arr!505 (Array (_ BitVec 32) ValueCell!263)) (size!595 (_ BitVec 32))) )
))
(declare-datatypes ((array!1053 0))(
  ( (array!1054 (arr!506 (Array (_ BitVec 32) (_ BitVec 64))) (size!596 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!112 0))(
  ( (LongMapFixedSize!113 (defaultEntry!1675 Int) (mask!4614 (_ BitVec 32)) (extraKeys!1585 (_ BitVec 32)) (zeroValue!1609 V!1059) (minValue!1609 V!1059) (_size!89 (_ BitVec 32)) (_keys!3100 array!1053) (_values!1671 array!1051) (_vacant!89 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!112 0))(
  ( (Cell!113 (v!1495 LongMapFixedSize!112)) )
))
(declare-datatypes ((LongMap!112 0))(
  ( (LongMap!113 (underlying!67 Cell!112)) )
))
(declare-fun thiss!938 () LongMap!112)

(declare-fun e!12248 () Bool)

(declare-fun array_inv!359 (array!1053) Bool)

(declare-fun array_inv!360 (array!1051) Bool)

(assert (=> b!19067 (= e!12249 (and tp!3180 tp_is_empty!925 (array_inv!359 (_keys!3100 (v!1495 (underlying!67 thiss!938)))) (array_inv!360 (_values!1671 (v!1495 (underlying!67 thiss!938)))) e!12248))))

(declare-fun mapNonEmpty!829 () Bool)

(declare-fun tp!3181 () Bool)

(declare-fun e!12245 () Bool)

(assert (=> mapNonEmpty!829 (= mapRes!829 (and tp!3181 e!12245))))

(declare-fun mapValue!829 () ValueCell!263)

(declare-fun mapKey!829 () (_ BitVec 32))

(declare-fun mapRest!829 () (Array (_ BitVec 32) ValueCell!263))

(assert (=> mapNonEmpty!829 (= (arr!505 (_values!1671 (v!1495 (underlying!67 thiss!938)))) (store mapRest!829 mapKey!829 mapValue!829))))

(declare-fun b!19068 () Bool)

(declare-fun e!12243 () Bool)

(assert (=> b!19068 (= e!12243 e!12249)))

(declare-fun b!19069 () Bool)

(declare-fun e!12247 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!19069 (= e!12247 (not (validMask!0 (mask!4614 (v!1495 (underlying!67 thiss!938))))))))

(declare-fun b!19070 () Bool)

(assert (=> b!19070 (= e!12245 tp_is_empty!925)))

(declare-fun b!19071 () Bool)

(declare-fun e!12242 () Bool)

(assert (=> b!19071 (= e!12248 (and e!12242 mapRes!829))))

(declare-fun condMapEmpty!829 () Bool)

(declare-fun mapDefault!829 () ValueCell!263)


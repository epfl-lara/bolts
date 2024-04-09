; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3176 () Bool)

(assert start!3176)

(declare-fun b!19348 () Bool)

(declare-fun b_free!673 () Bool)

(declare-fun b_next!673 () Bool)

(assert (=> b!19348 (= b_free!673 (not b_next!673))))

(declare-fun tp!3226 () Bool)

(declare-fun b_and!1335 () Bool)

(assert (=> b!19348 (= tp!3226 b_and!1335)))

(declare-fun e!12473 () Bool)

(declare-fun e!12478 () Bool)

(declare-datatypes ((V!1075 0))(
  ( (V!1076 (val!495 Int)) )
))
(declare-datatypes ((ValueCell!269 0))(
  ( (ValueCellFull!269 (v!1506 V!1075)) (EmptyCell!269) )
))
(declare-datatypes ((array!1079 0))(
  ( (array!1080 (arr!517 (Array (_ BitVec 32) ValueCell!269)) (size!609 (_ BitVec 32))) )
))
(declare-datatypes ((array!1081 0))(
  ( (array!1082 (arr!518 (Array (_ BitVec 32) (_ BitVec 64))) (size!610 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!124 0))(
  ( (LongMapFixedSize!125 (defaultEntry!1681 Int) (mask!4628 (_ BitVec 32)) (extraKeys!1591 (_ BitVec 32)) (zeroValue!1615 V!1075) (minValue!1615 V!1075) (_size!95 (_ BitVec 32)) (_keys!3108 array!1081) (_values!1677 array!1079) (_vacant!95 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!124 0))(
  ( (Cell!125 (v!1507 LongMapFixedSize!124)) )
))
(declare-datatypes ((LongMap!124 0))(
  ( (LongMap!125 (underlying!73 Cell!124)) )
))
(declare-fun thiss!938 () LongMap!124)

(declare-fun tp_is_empty!937 () Bool)

(declare-fun array_inv!369 (array!1081) Bool)

(declare-fun array_inv!370 (array!1079) Bool)

(assert (=> b!19348 (= e!12473 (and tp!3226 tp_is_empty!937 (array_inv!369 (_keys!3108 (v!1507 (underlying!73 thiss!938)))) (array_inv!370 (_values!1677 (v!1507 (underlying!73 thiss!938)))) e!12478))))

(declare-fun res!13157 () Bool)

(declare-fun e!12475 () Bool)

(assert (=> start!3176 (=> (not res!13157) (not e!12475))))

(declare-fun valid!63 (LongMap!124) Bool)

(assert (=> start!3176 (= res!13157 (valid!63 thiss!938))))

(assert (=> start!3176 e!12475))

(declare-fun e!12479 () Bool)

(assert (=> start!3176 e!12479))

(declare-fun mapNonEmpty!857 () Bool)

(declare-fun mapRes!857 () Bool)

(declare-fun tp!3227 () Bool)

(declare-fun e!12476 () Bool)

(assert (=> mapNonEmpty!857 (= mapRes!857 (and tp!3227 e!12476))))

(declare-fun mapKey!857 () (_ BitVec 32))

(declare-fun mapRest!857 () (Array (_ BitVec 32) ValueCell!269))

(declare-fun mapValue!857 () ValueCell!269)

(assert (=> mapNonEmpty!857 (= (arr!517 (_values!1677 (v!1507 (underlying!73 thiss!938)))) (store mapRest!857 mapKey!857 mapValue!857))))

(declare-fun b!19349 () Bool)

(declare-fun res!13158 () Bool)

(assert (=> b!19349 (=> (not res!13158) (not e!12475))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!19349 (= res!13158 (validMask!0 (mask!4628 (v!1507 (underlying!73 thiss!938)))))))

(declare-fun b!19350 () Bool)

(declare-fun e!12477 () Bool)

(assert (=> b!19350 (= e!12478 (and e!12477 mapRes!857))))

(declare-fun condMapEmpty!857 () Bool)

(declare-fun mapDefault!857 () ValueCell!269)


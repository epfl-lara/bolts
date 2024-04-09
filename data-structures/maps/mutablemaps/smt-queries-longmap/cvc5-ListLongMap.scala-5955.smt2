; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77584 () Bool)

(assert start!77584)

(declare-fun b_free!16141 () Bool)

(declare-fun b_next!16141 () Bool)

(assert (=> start!77584 (= b_free!16141 (not b_next!16141))))

(declare-fun tp!56686 () Bool)

(declare-fun b_and!26525 () Bool)

(assert (=> start!77584 (= tp!56686 b_and!26525)))

(declare-fun res!609654 () Bool)

(declare-fun e!506255 () Bool)

(assert (=> start!77584 (=> (not res!609654) (not e!506255))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77584 (= res!609654 (validMask!0 mask!1756))))

(assert (=> start!77584 e!506255))

(declare-datatypes ((V!29711 0))(
  ( (V!29712 (val!9330 Int)) )
))
(declare-datatypes ((ValueCell!8798 0))(
  ( (ValueCellFull!8798 (v!11835 V!29711)) (EmptyCell!8798) )
))
(declare-datatypes ((array!53156 0))(
  ( (array!53157 (arr!25533 (Array (_ BitVec 32) ValueCell!8798)) (size!25993 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53156)

(declare-fun e!506258 () Bool)

(declare-fun array_inv!19984 (array!53156) Bool)

(assert (=> start!77584 (and (array_inv!19984 _values!1152) e!506258)))

(assert (=> start!77584 tp!56686))

(assert (=> start!77584 true))

(declare-fun tp_is_empty!18559 () Bool)

(assert (=> start!77584 tp_is_empty!18559))

(declare-datatypes ((array!53158 0))(
  ( (array!53159 (arr!25534 (Array (_ BitVec 32) (_ BitVec 64))) (size!25994 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53158)

(declare-fun array_inv!19985 (array!53158) Bool)

(assert (=> start!77584 (array_inv!19985 _keys!1386)))

(declare-fun b!903464 () Bool)

(declare-fun res!609655 () Bool)

(assert (=> b!903464 (=> (not res!609655) (not e!506255))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53158 (_ BitVec 32)) Bool)

(assert (=> b!903464 (= res!609655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!903465 () Bool)

(declare-fun e!506257 () Bool)

(assert (=> b!903465 (= e!506257 tp_is_empty!18559)))

(declare-fun mapNonEmpty!29551 () Bool)

(declare-fun mapRes!29551 () Bool)

(declare-fun tp!56685 () Bool)

(declare-fun e!506256 () Bool)

(assert (=> mapNonEmpty!29551 (= mapRes!29551 (and tp!56685 e!506256))))

(declare-fun mapRest!29551 () (Array (_ BitVec 32) ValueCell!8798))

(declare-fun mapValue!29551 () ValueCell!8798)

(declare-fun mapKey!29551 () (_ BitVec 32))

(assert (=> mapNonEmpty!29551 (= (arr!25533 _values!1152) (store mapRest!29551 mapKey!29551 mapValue!29551))))

(declare-fun b!903466 () Bool)

(assert (=> b!903466 (= e!506258 (and e!506257 mapRes!29551))))

(declare-fun condMapEmpty!29551 () Bool)

(declare-fun mapDefault!29551 () ValueCell!8798)


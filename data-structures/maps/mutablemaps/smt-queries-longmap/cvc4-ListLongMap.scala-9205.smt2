; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110618 () Bool)

(assert start!110618)

(declare-fun b_free!29417 () Bool)

(declare-fun b_next!29417 () Bool)

(assert (=> start!110618 (= b_free!29417 (not b_next!29417))))

(declare-fun tp!103573 () Bool)

(declare-fun b_and!47635 () Bool)

(assert (=> start!110618 (= tp!103573 b_and!47635)))

(declare-fun b!1308182 () Bool)

(declare-fun res!868476 () Bool)

(declare-fun e!746464 () Bool)

(assert (=> b!1308182 (=> (not res!868476) (not e!746464))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87261 0))(
  ( (array!87262 (arr!42106 (Array (_ BitVec 32) (_ BitVec 64))) (size!42657 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87261)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!51965 0))(
  ( (V!51966 (val!17648 Int)) )
))
(declare-fun minValue!1296 () V!51965)

(declare-datatypes ((ValueCell!16675 0))(
  ( (ValueCellFull!16675 (v!20273 V!51965)) (EmptyCell!16675) )
))
(declare-datatypes ((array!87263 0))(
  ( (array!87264 (arr!42107 (Array (_ BitVec 32) ValueCell!16675)) (size!42658 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87263)

(declare-fun zeroValue!1296 () V!51965)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22888 0))(
  ( (tuple2!22889 (_1!11454 (_ BitVec 64)) (_2!11454 V!51965)) )
))
(declare-datatypes ((List!30059 0))(
  ( (Nil!30056) (Cons!30055 (h!31264 tuple2!22888) (t!43672 List!30059)) )
))
(declare-datatypes ((ListLongMap!20557 0))(
  ( (ListLongMap!20558 (toList!10294 List!30059)) )
))
(declare-fun contains!8380 (ListLongMap!20557 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5250 (array!87261 array!87263 (_ BitVec 32) (_ BitVec 32) V!51965 V!51965 (_ BitVec 32) Int) ListLongMap!20557)

(assert (=> b!1308182 (= res!868476 (contains!8380 (getCurrentListMap!5250 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1308183 () Bool)

(declare-fun res!868473 () Bool)

(assert (=> b!1308183 (=> (not res!868473) (not e!746464))))

(assert (=> b!1308183 (= res!868473 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42657 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!868471 () Bool)

(assert (=> start!110618 (=> (not res!868471) (not e!746464))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110618 (= res!868471 (validMask!0 mask!2040))))

(assert (=> start!110618 e!746464))

(assert (=> start!110618 tp!103573))

(declare-fun array_inv!31825 (array!87261) Bool)

(assert (=> start!110618 (array_inv!31825 _keys!1628)))

(assert (=> start!110618 true))

(declare-fun tp_is_empty!35147 () Bool)

(assert (=> start!110618 tp_is_empty!35147))

(declare-fun e!746463 () Bool)

(declare-fun array_inv!31826 (array!87263) Bool)

(assert (=> start!110618 (and (array_inv!31826 _values!1354) e!746463)))

(declare-fun b!1308184 () Bool)

(declare-fun e!746461 () Bool)

(assert (=> b!1308184 (= e!746461 tp_is_empty!35147)))

(declare-fun b!1308185 () Bool)

(declare-fun res!868474 () Bool)

(assert (=> b!1308185 (=> (not res!868474) (not e!746464))))

(assert (=> b!1308185 (= res!868474 (not (= (select (arr!42106 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1308186 () Bool)

(declare-fun res!868478 () Bool)

(assert (=> b!1308186 (=> (not res!868478) (not e!746464))))

(assert (=> b!1308186 (= res!868478 (and (= (size!42658 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42657 _keys!1628) (size!42658 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!54349 () Bool)

(declare-fun mapRes!54349 () Bool)

(declare-fun tp!103574 () Bool)

(assert (=> mapNonEmpty!54349 (= mapRes!54349 (and tp!103574 e!746461))))

(declare-fun mapValue!54349 () ValueCell!16675)

(declare-fun mapKey!54349 () (_ BitVec 32))

(declare-fun mapRest!54349 () (Array (_ BitVec 32) ValueCell!16675))

(assert (=> mapNonEmpty!54349 (= (arr!42107 _values!1354) (store mapRest!54349 mapKey!54349 mapValue!54349))))

(declare-fun b!1308187 () Bool)

(declare-fun res!868477 () Bool)

(assert (=> b!1308187 (=> (not res!868477) (not e!746464))))

(declare-datatypes ((List!30060 0))(
  ( (Nil!30057) (Cons!30056 (h!31265 (_ BitVec 64)) (t!43673 List!30060)) )
))
(declare-fun arrayNoDuplicates!0 (array!87261 (_ BitVec 32) List!30060) Bool)

(assert (=> b!1308187 (= res!868477 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30057))))

(declare-fun mapIsEmpty!54349 () Bool)

(assert (=> mapIsEmpty!54349 mapRes!54349))

(declare-fun b!1308188 () Bool)

(declare-fun e!746462 () Bool)

(assert (=> b!1308188 (= e!746462 tp_is_empty!35147)))

(declare-fun b!1308189 () Bool)

(assert (=> b!1308189 (= e!746463 (and e!746462 mapRes!54349))))

(declare-fun condMapEmpty!54349 () Bool)

(declare-fun mapDefault!54349 () ValueCell!16675)


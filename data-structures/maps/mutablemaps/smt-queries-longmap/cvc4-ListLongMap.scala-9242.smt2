; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110840 () Bool)

(assert start!110840)

(declare-fun b_free!29639 () Bool)

(declare-fun b_next!29639 () Bool)

(assert (=> start!110840 (= b_free!29639 (not b_next!29639))))

(declare-fun tp!104239 () Bool)

(declare-fun b_and!47857 () Bool)

(assert (=> start!110840 (= tp!104239 b_and!47857)))

(declare-fun b!1311354 () Bool)

(declare-fun e!748128 () Bool)

(assert (=> b!1311354 (= e!748128 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87689 0))(
  ( (array!87690 (arr!42320 (Array (_ BitVec 32) (_ BitVec 64))) (size!42871 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87689)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52261 0))(
  ( (V!52262 (val!17759 Int)) )
))
(declare-fun minValue!1296 () V!52261)

(declare-datatypes ((ValueCell!16786 0))(
  ( (ValueCellFull!16786 (v!20384 V!52261)) (EmptyCell!16786) )
))
(declare-datatypes ((array!87691 0))(
  ( (array!87692 (arr!42321 (Array (_ BitVec 32) ValueCell!16786)) (size!42872 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87691)

(declare-fun zeroValue!1296 () V!52261)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun lt!585409 () Bool)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23054 0))(
  ( (tuple2!23055 (_1!11537 (_ BitVec 64)) (_2!11537 V!52261)) )
))
(declare-datatypes ((List!30219 0))(
  ( (Nil!30216) (Cons!30215 (h!31424 tuple2!23054) (t!43832 List!30219)) )
))
(declare-datatypes ((ListLongMap!20723 0))(
  ( (ListLongMap!20724 (toList!10377 List!30219)) )
))
(declare-fun contains!8463 (ListLongMap!20723 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5333 (array!87689 array!87691 (_ BitVec 32) (_ BitVec 32) V!52261 V!52261 (_ BitVec 32) Int) ListLongMap!20723)

(assert (=> b!1311354 (= lt!585409 (contains!8463 (getCurrentListMap!5333 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun res!870647 () Bool)

(assert (=> start!110840 (=> (not res!870647) (not e!748128))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110840 (= res!870647 (validMask!0 mask!2040))))

(assert (=> start!110840 e!748128))

(assert (=> start!110840 tp!104239))

(declare-fun array_inv!31963 (array!87689) Bool)

(assert (=> start!110840 (array_inv!31963 _keys!1628)))

(assert (=> start!110840 true))

(declare-fun tp_is_empty!35369 () Bool)

(assert (=> start!110840 tp_is_empty!35369))

(declare-fun e!748127 () Bool)

(declare-fun array_inv!31964 (array!87691) Bool)

(assert (=> start!110840 (and (array_inv!31964 _values!1354) e!748127)))

(declare-fun b!1311355 () Bool)

(declare-fun e!748130 () Bool)

(assert (=> b!1311355 (= e!748130 tp_is_empty!35369)))

(declare-fun b!1311356 () Bool)

(declare-fun res!870644 () Bool)

(assert (=> b!1311356 (=> (not res!870644) (not e!748128))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87689 (_ BitVec 32)) Bool)

(assert (=> b!1311356 (= res!870644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54682 () Bool)

(declare-fun mapRes!54682 () Bool)

(assert (=> mapIsEmpty!54682 mapRes!54682))

(declare-fun b!1311357 () Bool)

(declare-fun res!870643 () Bool)

(assert (=> b!1311357 (=> (not res!870643) (not e!748128))))

(assert (=> b!1311357 (= res!870643 (and (= (size!42872 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42871 _keys!1628) (size!42872 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1311358 () Bool)

(declare-fun e!748126 () Bool)

(assert (=> b!1311358 (= e!748127 (and e!748126 mapRes!54682))))

(declare-fun condMapEmpty!54682 () Bool)

(declare-fun mapDefault!54682 () ValueCell!16786)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110710 () Bool)

(assert start!110710)

(declare-fun b_free!29509 () Bool)

(declare-fun b_next!29509 () Bool)

(assert (=> start!110710 (= b_free!29509 (not b_next!29509))))

(declare-fun tp!103850 () Bool)

(declare-fun b_and!47727 () Bool)

(assert (=> start!110710 (= tp!103850 b_and!47727)))

(declare-fun b!1309470 () Bool)

(declare-fun e!747151 () Bool)

(assert (=> b!1309470 (= e!747151 false)))

(declare-fun lt!585214 () Bool)

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87435 0))(
  ( (array!87436 (arr!42193 (Array (_ BitVec 32) (_ BitVec 64))) (size!42744 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87435)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52089 0))(
  ( (V!52090 (val!17694 Int)) )
))
(declare-fun minValue!1296 () V!52089)

(declare-datatypes ((ValueCell!16721 0))(
  ( (ValueCellFull!16721 (v!20319 V!52089)) (EmptyCell!16721) )
))
(declare-datatypes ((array!87437 0))(
  ( (array!87438 (arr!42194 (Array (_ BitVec 32) ValueCell!16721)) (size!42745 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87437)

(declare-fun zeroValue!1296 () V!52089)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22954 0))(
  ( (tuple2!22955 (_1!11487 (_ BitVec 64)) (_2!11487 V!52089)) )
))
(declare-datatypes ((List!30122 0))(
  ( (Nil!30119) (Cons!30118 (h!31327 tuple2!22954) (t!43735 List!30122)) )
))
(declare-datatypes ((ListLongMap!20623 0))(
  ( (ListLongMap!20624 (toList!10327 List!30122)) )
))
(declare-fun contains!8413 (ListLongMap!20623 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5283 (array!87435 array!87437 (_ BitVec 32) (_ BitVec 32) V!52089 V!52089 (_ BitVec 32) Int) ListLongMap!20623)

(assert (=> b!1309470 (= lt!585214 (contains!8413 (getCurrentListMap!5283 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1309471 () Bool)

(declare-fun e!747153 () Bool)

(declare-fun tp_is_empty!35239 () Bool)

(assert (=> b!1309471 (= e!747153 tp_is_empty!35239)))

(declare-fun b!1309472 () Bool)

(declare-fun res!869345 () Bool)

(assert (=> b!1309472 (=> (not res!869345) (not e!747151))))

(assert (=> b!1309472 (= res!869345 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42744 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1309473 () Bool)

(declare-fun res!869344 () Bool)

(assert (=> b!1309473 (=> (not res!869344) (not e!747151))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87435 (_ BitVec 32)) Bool)

(assert (=> b!1309473 (= res!869344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54487 () Bool)

(declare-fun mapRes!54487 () Bool)

(assert (=> mapIsEmpty!54487 mapRes!54487))

(declare-fun b!1309474 () Bool)

(declare-fun e!747155 () Bool)

(assert (=> b!1309474 (= e!747155 tp_is_empty!35239)))

(declare-fun b!1309475 () Bool)

(declare-fun e!747154 () Bool)

(assert (=> b!1309475 (= e!747154 (and e!747155 mapRes!54487))))

(declare-fun condMapEmpty!54487 () Bool)

(declare-fun mapDefault!54487 () ValueCell!16721)


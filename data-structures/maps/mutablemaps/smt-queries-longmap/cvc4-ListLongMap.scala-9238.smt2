; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110816 () Bool)

(assert start!110816)

(declare-fun b_free!29615 () Bool)

(declare-fun b_next!29615 () Bool)

(assert (=> start!110816 (= b_free!29615 (not b_next!29615))))

(declare-fun tp!104168 () Bool)

(declare-fun b_and!47833 () Bool)

(assert (=> start!110816 (= tp!104168 b_and!47833)))

(declare-fun res!870466 () Bool)

(declare-fun e!747947 () Bool)

(assert (=> start!110816 (=> (not res!870466) (not e!747947))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110816 (= res!870466 (validMask!0 mask!2040))))

(assert (=> start!110816 e!747947))

(assert (=> start!110816 tp!104168))

(declare-datatypes ((array!87641 0))(
  ( (array!87642 (arr!42296 (Array (_ BitVec 32) (_ BitVec 64))) (size!42847 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87641)

(declare-fun array_inv!31949 (array!87641) Bool)

(assert (=> start!110816 (array_inv!31949 _keys!1628)))

(assert (=> start!110816 true))

(declare-fun tp_is_empty!35345 () Bool)

(assert (=> start!110816 tp_is_empty!35345))

(declare-datatypes ((V!52229 0))(
  ( (V!52230 (val!17747 Int)) )
))
(declare-datatypes ((ValueCell!16774 0))(
  ( (ValueCellFull!16774 (v!20372 V!52229)) (EmptyCell!16774) )
))
(declare-datatypes ((array!87643 0))(
  ( (array!87644 (arr!42297 (Array (_ BitVec 32) ValueCell!16774)) (size!42848 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87643)

(declare-fun e!747949 () Bool)

(declare-fun array_inv!31950 (array!87643) Bool)

(assert (=> start!110816 (and (array_inv!31950 _values!1354) e!747949)))

(declare-fun b!1311066 () Bool)

(declare-fun res!870464 () Bool)

(assert (=> b!1311066 (=> (not res!870464) (not e!747947))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87641 (_ BitVec 32)) Bool)

(assert (=> b!1311066 (= res!870464 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!54646 () Bool)

(declare-fun mapRes!54646 () Bool)

(declare-fun tp!104167 () Bool)

(declare-fun e!747946 () Bool)

(assert (=> mapNonEmpty!54646 (= mapRes!54646 (and tp!104167 e!747946))))

(declare-fun mapRest!54646 () (Array (_ BitVec 32) ValueCell!16774))

(declare-fun mapKey!54646 () (_ BitVec 32))

(declare-fun mapValue!54646 () ValueCell!16774)

(assert (=> mapNonEmpty!54646 (= (arr!42297 _values!1354) (store mapRest!54646 mapKey!54646 mapValue!54646))))

(declare-fun b!1311067 () Bool)

(declare-fun res!870465 () Bool)

(assert (=> b!1311067 (=> (not res!870465) (not e!747947))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1311067 (= res!870465 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42847 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1311068 () Bool)

(declare-fun e!747948 () Bool)

(assert (=> b!1311068 (= e!747948 tp_is_empty!35345)))

(declare-fun mapIsEmpty!54646 () Bool)

(assert (=> mapIsEmpty!54646 mapRes!54646))

(declare-fun b!1311069 () Bool)

(assert (=> b!1311069 (= e!747946 tp_is_empty!35345)))

(declare-fun b!1311070 () Bool)

(assert (=> b!1311070 (= e!747947 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585373 () Bool)

(declare-fun minValue!1296 () V!52229)

(declare-fun zeroValue!1296 () V!52229)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!23038 0))(
  ( (tuple2!23039 (_1!11529 (_ BitVec 64)) (_2!11529 V!52229)) )
))
(declare-datatypes ((List!30203 0))(
  ( (Nil!30200) (Cons!30199 (h!31408 tuple2!23038) (t!43816 List!30203)) )
))
(declare-datatypes ((ListLongMap!20707 0))(
  ( (ListLongMap!20708 (toList!10369 List!30203)) )
))
(declare-fun contains!8455 (ListLongMap!20707 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5325 (array!87641 array!87643 (_ BitVec 32) (_ BitVec 32) V!52229 V!52229 (_ BitVec 32) Int) ListLongMap!20707)

(assert (=> b!1311070 (= lt!585373 (contains!8455 (getCurrentListMap!5325 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1311071 () Bool)

(declare-fun res!870467 () Bool)

(assert (=> b!1311071 (=> (not res!870467) (not e!747947))))

(declare-datatypes ((List!30204 0))(
  ( (Nil!30201) (Cons!30200 (h!31409 (_ BitVec 64)) (t!43817 List!30204)) )
))
(declare-fun arrayNoDuplicates!0 (array!87641 (_ BitVec 32) List!30204) Bool)

(assert (=> b!1311071 (= res!870467 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30201))))

(declare-fun b!1311072 () Bool)

(declare-fun res!870463 () Bool)

(assert (=> b!1311072 (=> (not res!870463) (not e!747947))))

(assert (=> b!1311072 (= res!870463 (and (= (size!42848 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42847 _keys!1628) (size!42848 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1311073 () Bool)

(assert (=> b!1311073 (= e!747949 (and e!747948 mapRes!54646))))

(declare-fun condMapEmpty!54646 () Bool)

(declare-fun mapDefault!54646 () ValueCell!16774)


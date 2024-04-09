; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110774 () Bool)

(assert start!110774)

(declare-fun b_free!29573 () Bool)

(declare-fun b_next!29573 () Bool)

(assert (=> start!110774 (= b_free!29573 (not b_next!29573))))

(declare-fun tp!104042 () Bool)

(declare-fun b_and!47791 () Bool)

(assert (=> start!110774 (= tp!104042 b_and!47791)))

(declare-fun b!1310558 () Bool)

(declare-fun e!747632 () Bool)

(declare-fun tp_is_empty!35303 () Bool)

(assert (=> b!1310558 (= e!747632 tp_is_empty!35303)))

(declare-fun mapNonEmpty!54583 () Bool)

(declare-fun mapRes!54583 () Bool)

(declare-fun tp!104041 () Bool)

(declare-fun e!747631 () Bool)

(assert (=> mapNonEmpty!54583 (= mapRes!54583 (and tp!104041 e!747631))))

(declare-datatypes ((V!52173 0))(
  ( (V!52174 (val!17726 Int)) )
))
(declare-datatypes ((ValueCell!16753 0))(
  ( (ValueCellFull!16753 (v!20351 V!52173)) (EmptyCell!16753) )
))
(declare-datatypes ((array!87561 0))(
  ( (array!87562 (arr!42256 (Array (_ BitVec 32) ValueCell!16753)) (size!42807 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87561)

(declare-fun mapKey!54583 () (_ BitVec 32))

(declare-fun mapValue!54583 () ValueCell!16753)

(declare-fun mapRest!54583 () (Array (_ BitVec 32) ValueCell!16753))

(assert (=> mapNonEmpty!54583 (= (arr!42256 _values!1354) (store mapRest!54583 mapKey!54583 mapValue!54583))))

(declare-fun b!1310559 () Bool)

(assert (=> b!1310559 (= e!747631 tp_is_empty!35303)))

(declare-fun b!1310560 () Bool)

(declare-fun e!747634 () Bool)

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1310560 (= e!747634 (not (bvsge (bvadd #b00000000000000000000000000000001 from!2020) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87563 0))(
  ( (array!87564 (arr!42257 (Array (_ BitVec 32) (_ BitVec 64))) (size!42808 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87563)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52173)

(declare-fun zeroValue!1296 () V!52173)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!23008 0))(
  ( (tuple2!23009 (_1!11514 (_ BitVec 64)) (_2!11514 V!52173)) )
))
(declare-datatypes ((List!30172 0))(
  ( (Nil!30169) (Cons!30168 (h!31377 tuple2!23008) (t!43785 List!30172)) )
))
(declare-datatypes ((ListLongMap!20677 0))(
  ( (ListLongMap!20678 (toList!10354 List!30172)) )
))
(declare-fun contains!8440 (ListLongMap!20677 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5310 (array!87563 array!87561 (_ BitVec 32) (_ BitVec 32) V!52173 V!52173 (_ BitVec 32) Int) ListLongMap!20677)

(assert (=> b!1310560 (contains!8440 (getCurrentListMap!5310 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43294 0))(
  ( (Unit!43295) )
))
(declare-fun lt!585310 () Unit!43294)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!21 (array!87563 array!87561 (_ BitVec 32) (_ BitVec 32) V!52173 V!52173 (_ BitVec 64) (_ BitVec 32) Int) Unit!43294)

(assert (=> b!1310560 (= lt!585310 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!21 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1310561 () Bool)

(declare-fun res!870149 () Bool)

(assert (=> b!1310561 (=> (not res!870149) (not e!747634))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87563 (_ BitVec 32)) Bool)

(assert (=> b!1310561 (= res!870149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54583 () Bool)

(assert (=> mapIsEmpty!54583 mapRes!54583))

(declare-fun b!1310562 () Bool)

(declare-fun res!870145 () Bool)

(assert (=> b!1310562 (=> (not res!870145) (not e!747634))))

(declare-datatypes ((List!30173 0))(
  ( (Nil!30170) (Cons!30169 (h!31378 (_ BitVec 64)) (t!43786 List!30173)) )
))
(declare-fun arrayNoDuplicates!0 (array!87563 (_ BitVec 32) List!30173) Bool)

(assert (=> b!1310562 (= res!870145 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30170))))

(declare-fun res!870152 () Bool)

(assert (=> start!110774 (=> (not res!870152) (not e!747634))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110774 (= res!870152 (validMask!0 mask!2040))))

(assert (=> start!110774 e!747634))

(assert (=> start!110774 tp!104042))

(declare-fun array_inv!31925 (array!87563) Bool)

(assert (=> start!110774 (array_inv!31925 _keys!1628)))

(assert (=> start!110774 true))

(assert (=> start!110774 tp_is_empty!35303))

(declare-fun e!747633 () Bool)

(declare-fun array_inv!31926 (array!87561) Bool)

(assert (=> start!110774 (and (array_inv!31926 _values!1354) e!747633)))

(declare-fun b!1310563 () Bool)

(declare-fun res!870150 () Bool)

(assert (=> b!1310563 (=> (not res!870150) (not e!747634))))

(assert (=> b!1310563 (= res!870150 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1310564 () Bool)

(declare-fun res!870146 () Bool)

(assert (=> b!1310564 (=> (not res!870146) (not e!747634))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1310564 (= res!870146 (validKeyInArray!0 (select (arr!42257 _keys!1628) from!2020)))))

(declare-fun b!1310565 () Bool)

(declare-fun res!870148 () Bool)

(assert (=> b!1310565 (=> (not res!870148) (not e!747634))))

(assert (=> b!1310565 (= res!870148 (not (= (select (arr!42257 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1310566 () Bool)

(declare-fun res!870151 () Bool)

(assert (=> b!1310566 (=> (not res!870151) (not e!747634))))

(assert (=> b!1310566 (= res!870151 (and (= (size!42807 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42808 _keys!1628) (size!42807 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1310567 () Bool)

(assert (=> b!1310567 (= e!747633 (and e!747632 mapRes!54583))))

(declare-fun condMapEmpty!54583 () Bool)

(declare-fun mapDefault!54583 () ValueCell!16753)


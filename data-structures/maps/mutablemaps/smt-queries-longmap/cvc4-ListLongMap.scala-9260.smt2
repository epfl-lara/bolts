; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110948 () Bool)

(assert start!110948)

(declare-fun b_free!29747 () Bool)

(declare-fun b_next!29747 () Bool)

(assert (=> start!110948 (= b_free!29747 (not b_next!29747))))

(declare-fun tp!104563 () Bool)

(declare-fun b_and!47965 () Bool)

(assert (=> start!110948 (= tp!104563 b_and!47965)))

(declare-fun b!1312974 () Bool)

(declare-fun res!871780 () Bool)

(declare-fun e!748936 () Bool)

(assert (=> b!1312974 (=> (not res!871780) (not e!748936))))

(declare-datatypes ((array!87903 0))(
  ( (array!87904 (arr!42427 (Array (_ BitVec 32) (_ BitVec 64))) (size!42978 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87903)

(declare-datatypes ((V!52405 0))(
  ( (V!52406 (val!17813 Int)) )
))
(declare-datatypes ((ValueCell!16840 0))(
  ( (ValueCellFull!16840 (v!20438 V!52405)) (EmptyCell!16840) )
))
(declare-datatypes ((array!87905 0))(
  ( (array!87906 (arr!42428 (Array (_ BitVec 32) ValueCell!16840)) (size!42979 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87905)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun mask!2040 () (_ BitVec 32))

(assert (=> b!1312974 (= res!871780 (and (= (size!42979 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42978 _keys!1628) (size!42979 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1312975 () Bool)

(declare-fun res!871781 () Bool)

(assert (=> b!1312975 (=> (not res!871781) (not e!748936))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1312975 (= res!871781 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42978 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312976 () Bool)

(declare-fun e!748937 () Bool)

(declare-fun tp_is_empty!35477 () Bool)

(assert (=> b!1312976 (= e!748937 tp_is_empty!35477)))

(declare-fun mapNonEmpty!54844 () Bool)

(declare-fun mapRes!54844 () Bool)

(declare-fun tp!104564 () Bool)

(declare-fun e!748939 () Bool)

(assert (=> mapNonEmpty!54844 (= mapRes!54844 (and tp!104564 e!748939))))

(declare-fun mapRest!54844 () (Array (_ BitVec 32) ValueCell!16840))

(declare-fun mapKey!54844 () (_ BitVec 32))

(declare-fun mapValue!54844 () ValueCell!16840)

(assert (=> mapNonEmpty!54844 (= (arr!42428 _values!1354) (store mapRest!54844 mapKey!54844 mapValue!54844))))

(declare-fun b!1312977 () Bool)

(declare-fun res!871778 () Bool)

(assert (=> b!1312977 (=> (not res!871778) (not e!748936))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87903 (_ BitVec 32)) Bool)

(assert (=> b!1312977 (= res!871778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54844 () Bool)

(assert (=> mapIsEmpty!54844 mapRes!54844))

(declare-fun b!1312978 () Bool)

(assert (=> b!1312978 (= e!748936 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52405)

(declare-fun zeroValue!1296 () V!52405)

(declare-fun lt!585571 () Bool)

(declare-datatypes ((tuple2!23138 0))(
  ( (tuple2!23139 (_1!11579 (_ BitVec 64)) (_2!11579 V!52405)) )
))
(declare-datatypes ((List!30298 0))(
  ( (Nil!30295) (Cons!30294 (h!31503 tuple2!23138) (t!43911 List!30298)) )
))
(declare-datatypes ((ListLongMap!20807 0))(
  ( (ListLongMap!20808 (toList!10419 List!30298)) )
))
(declare-fun contains!8505 (ListLongMap!20807 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5375 (array!87903 array!87905 (_ BitVec 32) (_ BitVec 32) V!52405 V!52405 (_ BitVec 32) Int) ListLongMap!20807)

(assert (=> b!1312978 (= lt!585571 (contains!8505 (getCurrentListMap!5375 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1312979 () Bool)

(assert (=> b!1312979 (= e!748939 tp_is_empty!35477)))

(declare-fun res!871777 () Bool)

(assert (=> start!110948 (=> (not res!871777) (not e!748936))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110948 (= res!871777 (validMask!0 mask!2040))))

(assert (=> start!110948 e!748936))

(assert (=> start!110948 tp!104563))

(declare-fun array_inv!32033 (array!87903) Bool)

(assert (=> start!110948 (array_inv!32033 _keys!1628)))

(assert (=> start!110948 true))

(assert (=> start!110948 tp_is_empty!35477))

(declare-fun e!748940 () Bool)

(declare-fun array_inv!32034 (array!87905) Bool)

(assert (=> start!110948 (and (array_inv!32034 _values!1354) e!748940)))

(declare-fun b!1312980 () Bool)

(declare-fun res!871779 () Bool)

(assert (=> b!1312980 (=> (not res!871779) (not e!748936))))

(declare-datatypes ((List!30299 0))(
  ( (Nil!30296) (Cons!30295 (h!31504 (_ BitVec 64)) (t!43912 List!30299)) )
))
(declare-fun arrayNoDuplicates!0 (array!87903 (_ BitVec 32) List!30299) Bool)

(assert (=> b!1312980 (= res!871779 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30296))))

(declare-fun b!1312981 () Bool)

(assert (=> b!1312981 (= e!748940 (and e!748937 mapRes!54844))))

(declare-fun condMapEmpty!54844 () Bool)

(declare-fun mapDefault!54844 () ValueCell!16840)


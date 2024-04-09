; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110878 () Bool)

(assert start!110878)

(declare-fun b_free!29677 () Bool)

(declare-fun b_next!29677 () Bool)

(assert (=> start!110878 (= b_free!29677 (not b_next!29677))))

(declare-fun tp!104354 () Bool)

(declare-fun b_and!47895 () Bool)

(assert (=> start!110878 (= tp!104354 b_and!47895)))

(declare-fun b!1311998 () Bool)

(declare-fun res!871120 () Bool)

(declare-fun e!748412 () Bool)

(assert (=> b!1311998 (=> (not res!871120) (not e!748412))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87765 0))(
  ( (array!87766 (arr!42358 (Array (_ BitVec 32) (_ BitVec 64))) (size!42909 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87765)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52313 0))(
  ( (V!52314 (val!17778 Int)) )
))
(declare-fun minValue!1296 () V!52313)

(declare-datatypes ((ValueCell!16805 0))(
  ( (ValueCellFull!16805 (v!20403 V!52313)) (EmptyCell!16805) )
))
(declare-datatypes ((array!87767 0))(
  ( (array!87768 (arr!42359 (Array (_ BitVec 32) ValueCell!16805)) (size!42910 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87767)

(declare-fun zeroValue!1296 () V!52313)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23088 0))(
  ( (tuple2!23089 (_1!11554 (_ BitVec 64)) (_2!11554 V!52313)) )
))
(declare-datatypes ((List!30248 0))(
  ( (Nil!30245) (Cons!30244 (h!31453 tuple2!23088) (t!43861 List!30248)) )
))
(declare-datatypes ((ListLongMap!20757 0))(
  ( (ListLongMap!20758 (toList!10394 List!30248)) )
))
(declare-fun contains!8480 (ListLongMap!20757 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5350 (array!87765 array!87767 (_ BitVec 32) (_ BitVec 32) V!52313 V!52313 (_ BitVec 32) Int) ListLongMap!20757)

(assert (=> b!1311998 (= res!871120 (contains!8480 (getCurrentListMap!5350 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun mapNonEmpty!54739 () Bool)

(declare-fun mapRes!54739 () Bool)

(declare-fun tp!104353 () Bool)

(declare-fun e!748415 () Bool)

(assert (=> mapNonEmpty!54739 (= mapRes!54739 (and tp!104353 e!748415))))

(declare-fun mapRest!54739 () (Array (_ BitVec 32) ValueCell!16805))

(declare-fun mapValue!54739 () ValueCell!16805)

(declare-fun mapKey!54739 () (_ BitVec 32))

(assert (=> mapNonEmpty!54739 (= (arr!42359 _values!1354) (store mapRest!54739 mapKey!54739 mapValue!54739))))

(declare-fun b!1311999 () Bool)

(declare-fun res!871121 () Bool)

(assert (=> b!1311999 (=> (not res!871121) (not e!748412))))

(declare-datatypes ((List!30249 0))(
  ( (Nil!30246) (Cons!30245 (h!31454 (_ BitVec 64)) (t!43862 List!30249)) )
))
(declare-fun arrayNoDuplicates!0 (array!87765 (_ BitVec 32) List!30249) Bool)

(assert (=> b!1311999 (= res!871121 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30246))))

(declare-fun b!1312000 () Bool)

(declare-fun res!871118 () Bool)

(assert (=> b!1312000 (=> (not res!871118) (not e!748412))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1312000 (= res!871118 (validKeyInArray!0 (select (arr!42358 _keys!1628) from!2020)))))

(declare-fun res!871122 () Bool)

(assert (=> start!110878 (=> (not res!871122) (not e!748412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110878 (= res!871122 (validMask!0 mask!2040))))

(assert (=> start!110878 e!748412))

(assert (=> start!110878 tp!104354))

(declare-fun array_inv!31989 (array!87765) Bool)

(assert (=> start!110878 (array_inv!31989 _keys!1628)))

(assert (=> start!110878 true))

(declare-fun tp_is_empty!35407 () Bool)

(assert (=> start!110878 tp_is_empty!35407))

(declare-fun e!748414 () Bool)

(declare-fun array_inv!31990 (array!87767) Bool)

(assert (=> start!110878 (and (array_inv!31990 _values!1354) e!748414)))

(declare-fun b!1312001 () Bool)

(declare-fun res!871119 () Bool)

(assert (=> b!1312001 (=> (not res!871119) (not e!748412))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87765 (_ BitVec 32)) Bool)

(assert (=> b!1312001 (= res!871119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1312002 () Bool)

(declare-fun res!871117 () Bool)

(assert (=> b!1312002 (=> (not res!871117) (not e!748412))))

(assert (=> b!1312002 (= res!871117 (and (= (size!42910 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42909 _keys!1628) (size!42910 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1312003 () Bool)

(declare-fun res!871124 () Bool)

(assert (=> b!1312003 (=> (not res!871124) (not e!748412))))

(assert (=> b!1312003 (= res!871124 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42909 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312004 () Bool)

(declare-fun e!748413 () Bool)

(assert (=> b!1312004 (= e!748414 (and e!748413 mapRes!54739))))

(declare-fun condMapEmpty!54739 () Bool)

(declare-fun mapDefault!54739 () ValueCell!16805)


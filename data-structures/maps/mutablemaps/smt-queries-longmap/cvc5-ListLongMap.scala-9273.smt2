; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111022 () Bool)

(assert start!111022)

(declare-fun b_free!29821 () Bool)

(declare-fun b_next!29821 () Bool)

(assert (=> start!111022 (= b_free!29821 (not b_next!29821))))

(declare-fun tp!104785 () Bool)

(declare-fun b_and!48039 () Bool)

(assert (=> start!111022 (= tp!104785 b_and!48039)))

(declare-fun res!872361 () Bool)

(declare-fun e!749495 () Bool)

(assert (=> start!111022 (=> (not res!872361) (not e!749495))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111022 (= res!872361 (validMask!0 mask!2040))))

(assert (=> start!111022 e!749495))

(assert (=> start!111022 tp!104785))

(declare-datatypes ((array!88041 0))(
  ( (array!88042 (arr!42496 (Array (_ BitVec 32) (_ BitVec 64))) (size!43047 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88041)

(declare-fun array_inv!32075 (array!88041) Bool)

(assert (=> start!111022 (array_inv!32075 _keys!1628)))

(assert (=> start!111022 true))

(declare-fun tp_is_empty!35551 () Bool)

(assert (=> start!111022 tp_is_empty!35551))

(declare-datatypes ((V!52505 0))(
  ( (V!52506 (val!17850 Int)) )
))
(declare-datatypes ((ValueCell!16877 0))(
  ( (ValueCellFull!16877 (v!20475 V!52505)) (EmptyCell!16877) )
))
(declare-datatypes ((array!88043 0))(
  ( (array!88044 (arr!42497 (Array (_ BitVec 32) ValueCell!16877)) (size!43048 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88043)

(declare-fun e!749492 () Bool)

(declare-fun array_inv!32076 (array!88043) Bool)

(assert (=> start!111022 (and (array_inv!32076 _values!1354) e!749492)))

(declare-fun b!1313889 () Bool)

(declare-fun res!872362 () Bool)

(assert (=> b!1313889 (=> (not res!872362) (not e!749495))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88041 (_ BitVec 32)) Bool)

(assert (=> b!1313889 (= res!872362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!54955 () Bool)

(declare-fun mapRes!54955 () Bool)

(declare-fun tp!104786 () Bool)

(declare-fun e!749491 () Bool)

(assert (=> mapNonEmpty!54955 (= mapRes!54955 (and tp!104786 e!749491))))

(declare-fun mapRest!54955 () (Array (_ BitVec 32) ValueCell!16877))

(declare-fun mapValue!54955 () ValueCell!16877)

(declare-fun mapKey!54955 () (_ BitVec 32))

(assert (=> mapNonEmpty!54955 (= (arr!42497 _values!1354) (store mapRest!54955 mapKey!54955 mapValue!54955))))

(declare-fun b!1313890 () Bool)

(declare-fun res!872359 () Bool)

(assert (=> b!1313890 (=> (not res!872359) (not e!749495))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1313890 (= res!872359 (and (= (size!43048 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43047 _keys!1628) (size!43048 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1313891 () Bool)

(declare-fun res!872360 () Bool)

(assert (=> b!1313891 (=> (not res!872360) (not e!749495))))

(declare-datatypes ((List!30350 0))(
  ( (Nil!30347) (Cons!30346 (h!31555 (_ BitVec 64)) (t!43963 List!30350)) )
))
(declare-fun arrayNoDuplicates!0 (array!88041 (_ BitVec 32) List!30350) Bool)

(assert (=> b!1313891 (= res!872360 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30347))))

(declare-fun b!1313892 () Bool)

(assert (=> b!1313892 (= e!749491 tp_is_empty!35551)))

(declare-fun b!1313893 () Bool)

(assert (=> b!1313893 (= e!749495 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun lt!585673 () Bool)

(declare-fun minValue!1296 () V!52505)

(declare-fun zeroValue!1296 () V!52505)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23188 0))(
  ( (tuple2!23189 (_1!11604 (_ BitVec 64)) (_2!11604 V!52505)) )
))
(declare-datatypes ((List!30351 0))(
  ( (Nil!30348) (Cons!30347 (h!31556 tuple2!23188) (t!43964 List!30351)) )
))
(declare-datatypes ((ListLongMap!20857 0))(
  ( (ListLongMap!20858 (toList!10444 List!30351)) )
))
(declare-fun contains!8530 (ListLongMap!20857 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5400 (array!88041 array!88043 (_ BitVec 32) (_ BitVec 32) V!52505 V!52505 (_ BitVec 32) Int) ListLongMap!20857)

(assert (=> b!1313893 (= lt!585673 (contains!8530 (getCurrentListMap!5400 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1313894 () Bool)

(declare-fun e!749494 () Bool)

(assert (=> b!1313894 (= e!749494 tp_is_empty!35551)))

(declare-fun b!1313895 () Bool)

(assert (=> b!1313895 (= e!749492 (and e!749494 mapRes!54955))))

(declare-fun condMapEmpty!54955 () Bool)

(declare-fun mapDefault!54955 () ValueCell!16877)


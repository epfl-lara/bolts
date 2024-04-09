; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111070 () Bool)

(assert start!111070)

(declare-fun b_free!29869 () Bool)

(declare-fun b_next!29869 () Bool)

(assert (=> start!111070 (= b_free!29869 (not b_next!29869))))

(declare-fun tp!104930 () Bool)

(declare-fun b_and!48087 () Bool)

(assert (=> start!111070 (= tp!104930 b_and!48087)))

(declare-fun b!1314501 () Bool)

(declare-fun e!749852 () Bool)

(assert (=> b!1314501 (= e!749852 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!88131 0))(
  ( (array!88132 (arr!42541 (Array (_ BitVec 32) (_ BitVec 64))) (size!43092 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88131)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52569 0))(
  ( (V!52570 (val!17874 Int)) )
))
(declare-fun minValue!1296 () V!52569)

(declare-datatypes ((ValueCell!16901 0))(
  ( (ValueCellFull!16901 (v!20499 V!52569)) (EmptyCell!16901) )
))
(declare-datatypes ((array!88133 0))(
  ( (array!88134 (arr!42542 (Array (_ BitVec 32) ValueCell!16901)) (size!43093 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88133)

(declare-fun zeroValue!1296 () V!52569)

(declare-fun lt!585745 () Bool)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23216 0))(
  ( (tuple2!23217 (_1!11618 (_ BitVec 64)) (_2!11618 V!52569)) )
))
(declare-datatypes ((List!30380 0))(
  ( (Nil!30377) (Cons!30376 (h!31585 tuple2!23216) (t!43993 List!30380)) )
))
(declare-datatypes ((ListLongMap!20885 0))(
  ( (ListLongMap!20886 (toList!10458 List!30380)) )
))
(declare-fun contains!8544 (ListLongMap!20885 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5414 (array!88131 array!88133 (_ BitVec 32) (_ BitVec 32) V!52569 V!52569 (_ BitVec 32) Int) ListLongMap!20885)

(assert (=> b!1314501 (= lt!585745 (contains!8544 (getCurrentListMap!5414 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1314502 () Bool)

(declare-fun res!872759 () Bool)

(assert (=> b!1314502 (=> (not res!872759) (not e!749852))))

(assert (=> b!1314502 (= res!872759 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43092 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1314503 () Bool)

(declare-fun res!872756 () Bool)

(assert (=> b!1314503 (=> (not res!872756) (not e!749852))))

(assert (=> b!1314503 (= res!872756 (and (= (size!43093 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43092 _keys!1628) (size!43093 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!55027 () Bool)

(declare-fun mapRes!55027 () Bool)

(declare-fun tp!104929 () Bool)

(declare-fun e!749855 () Bool)

(assert (=> mapNonEmpty!55027 (= mapRes!55027 (and tp!104929 e!749855))))

(declare-fun mapKey!55027 () (_ BitVec 32))

(declare-fun mapRest!55027 () (Array (_ BitVec 32) ValueCell!16901))

(declare-fun mapValue!55027 () ValueCell!16901)

(assert (=> mapNonEmpty!55027 (= (arr!42542 _values!1354) (store mapRest!55027 mapKey!55027 mapValue!55027))))

(declare-fun b!1314504 () Bool)

(declare-fun res!872758 () Bool)

(assert (=> b!1314504 (=> (not res!872758) (not e!749852))))

(declare-datatypes ((List!30381 0))(
  ( (Nil!30378) (Cons!30377 (h!31586 (_ BitVec 64)) (t!43994 List!30381)) )
))
(declare-fun arrayNoDuplicates!0 (array!88131 (_ BitVec 32) List!30381) Bool)

(assert (=> b!1314504 (= res!872758 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30378))))

(declare-fun b!1314505 () Bool)

(declare-fun e!749854 () Bool)

(declare-fun e!749851 () Bool)

(assert (=> b!1314505 (= e!749854 (and e!749851 mapRes!55027))))

(declare-fun condMapEmpty!55027 () Bool)

(declare-fun mapDefault!55027 () ValueCell!16901)


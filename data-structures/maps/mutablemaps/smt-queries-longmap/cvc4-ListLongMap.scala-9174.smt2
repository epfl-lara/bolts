; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110374 () Bool)

(assert start!110374)

(declare-fun b_free!29321 () Bool)

(declare-fun b_next!29321 () Bool)

(assert (=> start!110374 (= b_free!29321 (not b_next!29321))))

(declare-fun tp!103133 () Bool)

(declare-fun b_and!47537 () Bool)

(assert (=> start!110374 (= tp!103133 b_and!47537)))

(declare-fun res!867108 () Bool)

(declare-fun e!744900 () Bool)

(assert (=> start!110374 (=> (not res!867108) (not e!744900))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110374 (= res!867108 (validMask!0 mask!2175))))

(assert (=> start!110374 e!744900))

(declare-fun tp_is_empty!34961 () Bool)

(assert (=> start!110374 tp_is_empty!34961))

(assert (=> start!110374 true))

(declare-datatypes ((V!51717 0))(
  ( (V!51718 (val!17555 Int)) )
))
(declare-datatypes ((ValueCell!16582 0))(
  ( (ValueCellFull!16582 (v!20178 V!51717)) (EmptyCell!16582) )
))
(declare-datatypes ((array!86905 0))(
  ( (array!86906 (arr!41934 (Array (_ BitVec 32) ValueCell!16582)) (size!42485 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86905)

(declare-fun e!744903 () Bool)

(declare-fun array_inv!31711 (array!86905) Bool)

(assert (=> start!110374 (and (array_inv!31711 _values!1445) e!744903)))

(declare-datatypes ((array!86907 0))(
  ( (array!86908 (arr!41935 (Array (_ BitVec 32) (_ BitVec 64))) (size!42486 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86907)

(declare-fun array_inv!31712 (array!86907) Bool)

(assert (=> start!110374 (array_inv!31712 _keys!1741)))

(assert (=> start!110374 tp!103133))

(declare-fun b!1305853 () Bool)

(declare-fun res!867111 () Bool)

(assert (=> b!1305853 (=> (not res!867111) (not e!744900))))

(declare-datatypes ((List!29970 0))(
  ( (Nil!29967) (Cons!29966 (h!31175 (_ BitVec 64)) (t!43581 List!29970)) )
))
(declare-fun arrayNoDuplicates!0 (array!86907 (_ BitVec 32) List!29970) Bool)

(assert (=> b!1305853 (= res!867111 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29967))))

(declare-fun b!1305854 () Bool)

(declare-fun e!744899 () Bool)

(assert (=> b!1305854 (= e!744899 tp_is_empty!34961)))

(declare-fun b!1305855 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1305855 (= e!744900 (and (or (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000) (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!54052 () Bool)

(declare-fun mapRes!54052 () Bool)

(assert (=> mapIsEmpty!54052 mapRes!54052))

(declare-fun b!1305856 () Bool)

(declare-fun res!867106 () Bool)

(assert (=> b!1305856 (=> (not res!867106) (not e!744900))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1305856 (= res!867106 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42486 _keys!1741))))))

(declare-fun mapNonEmpty!54052 () Bool)

(declare-fun tp!103132 () Bool)

(assert (=> mapNonEmpty!54052 (= mapRes!54052 (and tp!103132 e!744899))))

(declare-fun mapRest!54052 () (Array (_ BitVec 32) ValueCell!16582))

(declare-fun mapKey!54052 () (_ BitVec 32))

(declare-fun mapValue!54052 () ValueCell!16582)

(assert (=> mapNonEmpty!54052 (= (arr!41934 _values!1445) (store mapRest!54052 mapKey!54052 mapValue!54052))))

(declare-fun b!1305857 () Bool)

(declare-fun res!867107 () Bool)

(assert (=> b!1305857 (=> (not res!867107) (not e!744900))))

(declare-fun minValue!1387 () V!51717)

(declare-fun zeroValue!1387 () V!51717)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22824 0))(
  ( (tuple2!22825 (_1!11422 (_ BitVec 64)) (_2!11422 V!51717)) )
))
(declare-datatypes ((List!29971 0))(
  ( (Nil!29968) (Cons!29967 (h!31176 tuple2!22824) (t!43582 List!29971)) )
))
(declare-datatypes ((ListLongMap!20493 0))(
  ( (ListLongMap!20494 (toList!10262 List!29971)) )
))
(declare-fun contains!8343 (ListLongMap!20493 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5218 (array!86907 array!86905 (_ BitVec 32) (_ BitVec 32) V!51717 V!51717 (_ BitVec 32) Int) ListLongMap!20493)

(assert (=> b!1305857 (= res!867107 (contains!8343 (getCurrentListMap!5218 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1305858 () Bool)

(declare-fun res!867110 () Bool)

(assert (=> b!1305858 (=> (not res!867110) (not e!744900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86907 (_ BitVec 32)) Bool)

(assert (=> b!1305858 (= res!867110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1305859 () Bool)

(declare-fun e!744901 () Bool)

(assert (=> b!1305859 (= e!744901 tp_is_empty!34961)))

(declare-fun b!1305860 () Bool)

(declare-fun res!867109 () Bool)

(assert (=> b!1305860 (=> (not res!867109) (not e!744900))))

(assert (=> b!1305860 (= res!867109 (and (= (size!42485 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42486 _keys!1741) (size!42485 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1305861 () Bool)

(assert (=> b!1305861 (= e!744903 (and e!744901 mapRes!54052))))

(declare-fun condMapEmpty!54052 () Bool)

(declare-fun mapDefault!54052 () ValueCell!16582)


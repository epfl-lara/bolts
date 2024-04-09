; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108776 () Bool)

(assert start!108776)

(declare-fun b_free!28253 () Bool)

(declare-fun b_next!28253 () Bool)

(assert (=> start!108776 (= b_free!28253 (not b_next!28253))))

(declare-fun tp!99876 () Bool)

(declare-fun b_and!46329 () Bool)

(assert (=> start!108776 (= tp!99876 b_and!46329)))

(declare-fun b!1283894 () Bool)

(declare-fun e!733432 () Bool)

(declare-fun tp_is_empty!33893 () Bool)

(assert (=> b!1283894 (= e!733432 tp_is_empty!33893)))

(declare-fun b!1283895 () Bool)

(declare-fun res!852987 () Bool)

(declare-fun e!733435 () Bool)

(assert (=> b!1283895 (=> (not res!852987) (not e!733435))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1283895 (= res!852987 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!52397 () Bool)

(declare-fun mapRes!52397 () Bool)

(assert (=> mapIsEmpty!52397 mapRes!52397))

(declare-fun b!1283896 () Bool)

(declare-fun e!733431 () Bool)

(assert (=> b!1283896 (= e!733431 tp_is_empty!33893)))

(declare-fun b!1283897 () Bool)

(declare-fun res!852984 () Bool)

(assert (=> b!1283897 (=> (not res!852984) (not e!733435))))

(declare-datatypes ((array!84803 0))(
  ( (array!84804 (arr!40899 (Array (_ BitVec 32) (_ BitVec 64))) (size!41450 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84803)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84803 (_ BitVec 32)) Bool)

(assert (=> b!1283897 (= res!852984 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1283899 () Bool)

(declare-fun res!852982 () Bool)

(assert (=> b!1283899 (=> (not res!852982) (not e!733435))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1283899 (= res!852982 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41450 _keys!1741))))))

(declare-fun b!1283900 () Bool)

(declare-fun res!852990 () Bool)

(assert (=> b!1283900 (=> (not res!852990) (not e!733435))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1283900 (= res!852990 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41450 _keys!1741))))))

(declare-fun mapNonEmpty!52397 () Bool)

(declare-fun tp!99875 () Bool)

(assert (=> mapNonEmpty!52397 (= mapRes!52397 (and tp!99875 e!733431))))

(declare-datatypes ((V!50293 0))(
  ( (V!50294 (val!17021 Int)) )
))
(declare-datatypes ((ValueCell!16048 0))(
  ( (ValueCellFull!16048 (v!19621 V!50293)) (EmptyCell!16048) )
))
(declare-fun mapValue!52397 () ValueCell!16048)

(declare-fun mapRest!52397 () (Array (_ BitVec 32) ValueCell!16048))

(declare-datatypes ((array!84805 0))(
  ( (array!84806 (arr!40900 (Array (_ BitVec 32) ValueCell!16048)) (size!41451 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84805)

(declare-fun mapKey!52397 () (_ BitVec 32))

(assert (=> mapNonEmpty!52397 (= (arr!40900 _values!1445) (store mapRest!52397 mapKey!52397 mapValue!52397))))

(declare-fun b!1283901 () Bool)

(declare-fun res!852985 () Bool)

(assert (=> b!1283901 (=> (not res!852985) (not e!733435))))

(assert (=> b!1283901 (= res!852985 (and (= (size!41451 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41450 _keys!1741) (size!41451 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1283902 () Bool)

(declare-fun res!852989 () Bool)

(assert (=> b!1283902 (=> (not res!852989) (not e!733435))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283902 (= res!852989 (validKeyInArray!0 (select (arr!40899 _keys!1741) from!2144)))))

(declare-fun b!1283903 () Bool)

(declare-fun e!733434 () Bool)

(assert (=> b!1283903 (= e!733434 (and e!733432 mapRes!52397))))

(declare-fun condMapEmpty!52397 () Bool)

(declare-fun mapDefault!52397 () ValueCell!16048)


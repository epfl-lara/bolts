; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108838 () Bool)

(assert start!108838)

(declare-fun b_free!28315 () Bool)

(declare-fun b_next!28315 () Bool)

(assert (=> start!108838 (= b_free!28315 (not b_next!28315))))

(declare-fun tp!100062 () Bool)

(declare-fun b_and!46391 () Bool)

(assert (=> start!108838 (= tp!100062 b_and!46391)))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun e!733896 () Bool)

(declare-fun b!1284721 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84925 0))(
  ( (array!84926 (arr!40960 (Array (_ BitVec 32) (_ BitVec 64))) (size!41511 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84925)

(assert (=> b!1284721 (= e!733896 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsgt from!2144 (size!41511 _keys!1741))))))

(declare-fun b!1284722 () Bool)

(declare-fun res!853536 () Bool)

(assert (=> b!1284722 (=> (not res!853536) (not e!733896))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1284722 (= res!853536 (validKeyInArray!0 (select (arr!40960 _keys!1741) from!2144)))))

(declare-fun b!1284723 () Bool)

(declare-fun e!733898 () Bool)

(declare-fun tp_is_empty!33955 () Bool)

(assert (=> b!1284723 (= e!733898 tp_is_empty!33955)))

(declare-fun mapNonEmpty!52490 () Bool)

(declare-fun mapRes!52490 () Bool)

(declare-fun tp!100061 () Bool)

(declare-fun e!733897 () Bool)

(assert (=> mapNonEmpty!52490 (= mapRes!52490 (and tp!100061 e!733897))))

(declare-fun mapKey!52490 () (_ BitVec 32))

(declare-datatypes ((V!50377 0))(
  ( (V!50378 (val!17052 Int)) )
))
(declare-datatypes ((ValueCell!16079 0))(
  ( (ValueCellFull!16079 (v!19652 V!50377)) (EmptyCell!16079) )
))
(declare-fun mapRest!52490 () (Array (_ BitVec 32) ValueCell!16079))

(declare-fun mapValue!52490 () ValueCell!16079)

(declare-datatypes ((array!84927 0))(
  ( (array!84928 (arr!40961 (Array (_ BitVec 32) ValueCell!16079)) (size!41512 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84927)

(assert (=> mapNonEmpty!52490 (= (arr!40961 _values!1445) (store mapRest!52490 mapKey!52490 mapValue!52490))))

(declare-fun mapIsEmpty!52490 () Bool)

(assert (=> mapIsEmpty!52490 mapRes!52490))

(declare-fun b!1284724 () Bool)

(declare-fun res!853530 () Bool)

(assert (=> b!1284724 (=> (not res!853530) (not e!733896))))

(declare-datatypes ((List!29198 0))(
  ( (Nil!29195) (Cons!29194 (h!30403 (_ BitVec 64)) (t!42749 List!29198)) )
))
(declare-fun arrayNoDuplicates!0 (array!84925 (_ BitVec 32) List!29198) Bool)

(assert (=> b!1284724 (= res!853530 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29195))))

(declare-fun b!1284725 () Bool)

(declare-fun e!733899 () Bool)

(assert (=> b!1284725 (= e!733899 (and e!733898 mapRes!52490))))

(declare-fun condMapEmpty!52490 () Bool)

(declare-fun mapDefault!52490 () ValueCell!16079)


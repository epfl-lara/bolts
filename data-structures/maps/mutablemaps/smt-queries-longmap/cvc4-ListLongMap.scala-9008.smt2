; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108848 () Bool)

(assert start!108848)

(declare-fun b_free!28325 () Bool)

(declare-fun b_next!28325 () Bool)

(assert (=> start!108848 (= b_free!28325 (not b_next!28325))))

(declare-fun tp!100091 () Bool)

(declare-fun b_and!46401 () Bool)

(assert (=> start!108848 (= tp!100091 b_and!46401)))

(declare-fun b!1284893 () Bool)

(declare-fun e!733971 () Bool)

(assert (=> b!1284893 (= e!733971 false)))

(declare-datatypes ((V!50389 0))(
  ( (V!50390 (val!17057 Int)) )
))
(declare-fun minValue!1387 () V!50389)

(declare-fun zeroValue!1387 () V!50389)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!576801 () Bool)

(declare-datatypes ((ValueCell!16084 0))(
  ( (ValueCellFull!16084 (v!19657 V!50389)) (EmptyCell!16084) )
))
(declare-datatypes ((array!84945 0))(
  ( (array!84946 (arr!40970 (Array (_ BitVec 32) ValueCell!16084)) (size!41521 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84945)

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!84947 0))(
  ( (array!84948 (arr!40971 (Array (_ BitVec 32) (_ BitVec 64))) (size!41522 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84947)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((tuple2!21992 0))(
  ( (tuple2!21993 (_1!11006 (_ BitVec 64)) (_2!11006 V!50389)) )
))
(declare-datatypes ((List!29206 0))(
  ( (Nil!29203) (Cons!29202 (h!30411 tuple2!21992) (t!42757 List!29206)) )
))
(declare-datatypes ((ListLongMap!19661 0))(
  ( (ListLongMap!19662 (toList!9846 List!29206)) )
))
(declare-fun contains!7901 (ListLongMap!19661 (_ BitVec 64)) Bool)

(declare-fun +!4275 (ListLongMap!19661 tuple2!21992) ListLongMap!19661)

(declare-fun getCurrentListMapNoExtraKeys!5986 (array!84947 array!84945 (_ BitVec 32) (_ BitVec 32) V!50389 V!50389 (_ BitVec 32) Int) ListLongMap!19661)

(assert (=> b!1284893 (= lt!576801 (contains!7901 (+!4275 (getCurrentListMapNoExtraKeys!5986 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21993 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun b!1284894 () Bool)

(declare-fun res!853661 () Bool)

(assert (=> b!1284894 (=> (not res!853661) (not e!733971))))

(assert (=> b!1284894 (= res!853661 (and (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!1284895 () Bool)

(declare-fun res!853660 () Bool)

(assert (=> b!1284895 (=> (not res!853660) (not e!733971))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1284895 (= res!853660 (validKeyInArray!0 (select (arr!40971 _keys!1741) from!2144)))))

(declare-fun b!1284896 () Bool)

(declare-fun e!733972 () Bool)

(declare-fun tp_is_empty!33965 () Bool)

(assert (=> b!1284896 (= e!733972 tp_is_empty!33965)))

(declare-fun b!1284897 () Bool)

(declare-fun res!853658 () Bool)

(assert (=> b!1284897 (=> (not res!853658) (not e!733971))))

(assert (=> b!1284897 (= res!853658 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41522 _keys!1741))))))

(declare-fun b!1284898 () Bool)

(declare-fun e!733973 () Bool)

(declare-fun e!733974 () Bool)

(declare-fun mapRes!52505 () Bool)

(assert (=> b!1284898 (= e!733973 (and e!733974 mapRes!52505))))

(declare-fun condMapEmpty!52505 () Bool)

(declare-fun mapDefault!52505 () ValueCell!16084)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111776 () Bool)

(assert start!111776)

(declare-fun b_free!30397 () Bool)

(declare-fun b_next!30397 () Bool)

(assert (=> start!111776 (= b_free!30397 (not b_next!30397))))

(declare-fun tp!106667 () Bool)

(declare-fun b_and!48945 () Bool)

(assert (=> start!111776 (= tp!106667 b_and!48945)))

(declare-fun b!1323959 () Bool)

(declare-fun e!754789 () Bool)

(assert (=> b!1323959 (= e!754789 false)))

(declare-datatypes ((array!89303 0))(
  ( (array!89304 (arr!43121 (Array (_ BitVec 32) (_ BitVec 64))) (size!43672 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89303)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun lt!589360 () Bool)

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53393 0))(
  ( (V!53394 (val!18183 Int)) )
))
(declare-fun zeroValue!1279 () V!53393)

(declare-datatypes ((ValueCell!17210 0))(
  ( (ValueCellFull!17210 (v!20811 V!53393)) (EmptyCell!17210) )
))
(declare-datatypes ((array!89305 0))(
  ( (array!89306 (arr!43122 (Array (_ BitVec 32) ValueCell!17210)) (size!43673 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89305)

(declare-fun minValue!1279 () V!53393)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23590 0))(
  ( (tuple2!23591 (_1!11805 (_ BitVec 64)) (_2!11805 V!53393)) )
))
(declare-datatypes ((List!30763 0))(
  ( (Nil!30760) (Cons!30759 (h!31968 tuple2!23590) (t!44696 List!30763)) )
))
(declare-datatypes ((ListLongMap!21259 0))(
  ( (ListLongMap!21260 (toList!10645 List!30763)) )
))
(declare-fun contains!8736 (ListLongMap!21259 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5582 (array!89303 array!89305 (_ BitVec 32) (_ BitVec 32) V!53393 V!53393 (_ BitVec 32) Int) ListLongMap!21259)

(assert (=> b!1323959 (= lt!589360 (contains!8736 (getCurrentListMap!5582 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1323960 () Bool)

(declare-fun e!754791 () Bool)

(declare-fun tp_is_empty!36217 () Bool)

(assert (=> b!1323960 (= e!754791 tp_is_empty!36217)))

(declare-fun b!1323961 () Bool)

(declare-fun res!878876 () Bool)

(assert (=> b!1323961 (=> (not res!878876) (not e!754789))))

(declare-datatypes ((List!30764 0))(
  ( (Nil!30761) (Cons!30760 (h!31969 (_ BitVec 64)) (t!44697 List!30764)) )
))
(declare-fun arrayNoDuplicates!0 (array!89303 (_ BitVec 32) List!30764) Bool)

(assert (=> b!1323961 (= res!878876 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30761))))

(declare-fun b!1323962 () Bool)

(declare-fun e!754788 () Bool)

(declare-fun mapRes!55973 () Bool)

(assert (=> b!1323962 (= e!754788 (and e!754791 mapRes!55973))))

(declare-fun condMapEmpty!55973 () Bool)

(declare-fun mapDefault!55973 () ValueCell!17210)


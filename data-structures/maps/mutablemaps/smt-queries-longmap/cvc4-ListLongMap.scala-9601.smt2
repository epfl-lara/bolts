; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113566 () Bool)

(assert start!113566)

(declare-fun b_free!31523 () Bool)

(declare-fun b_next!31523 () Bool)

(assert (=> start!113566 (= b_free!31523 (not b_next!31523))))

(declare-fun tp!110379 () Bool)

(declare-fun b_and!50845 () Bool)

(assert (=> start!113566 (= tp!110379 b_and!50845)))

(declare-fun b!1347478 () Bool)

(declare-fun res!894139 () Bool)

(declare-fun e!766700 () Bool)

(assert (=> b!1347478 (=> (not res!894139) (not e!766700))))

(declare-datatypes ((array!91837 0))(
  ( (array!91838 (arr!44369 (Array (_ BitVec 32) (_ BitVec 64))) (size!44920 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91837)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91837 (_ BitVec 32)) Bool)

(assert (=> b!1347478 (= res!894139 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapIsEmpty!57995 () Bool)

(declare-fun mapRes!57995 () Bool)

(assert (=> mapIsEmpty!57995 mapRes!57995))

(declare-fun b!1347479 () Bool)

(declare-fun res!894136 () Bool)

(assert (=> b!1347479 (=> (not res!894136) (not e!766700))))

(declare-datatypes ((List!31592 0))(
  ( (Nil!31589) (Cons!31588 (h!32797 (_ BitVec 64)) (t!46201 List!31592)) )
))
(declare-fun arrayNoDuplicates!0 (array!91837 (_ BitVec 32) List!31592) Bool)

(assert (=> b!1347479 (= res!894136 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31589))))

(declare-fun b!1347480 () Bool)

(declare-fun e!766696 () Bool)

(declare-fun tp_is_empty!37523 () Bool)

(assert (=> b!1347480 (= e!766696 tp_is_empty!37523)))

(declare-fun b!1347481 () Bool)

(declare-fun e!766698 () Bool)

(assert (=> b!1347481 (= e!766698 tp_is_empty!37523)))

(declare-fun b!1347482 () Bool)

(declare-fun res!894142 () Bool)

(assert (=> b!1347482 (=> (not res!894142) (not e!766700))))

(declare-datatypes ((V!55133 0))(
  ( (V!55134 (val!18836 Int)) )
))
(declare-fun minValue!1245 () V!55133)

(declare-fun zeroValue!1245 () V!55133)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17863 0))(
  ( (ValueCellFull!17863 (v!21485 V!55133)) (EmptyCell!17863) )
))
(declare-datatypes ((array!91839 0))(
  ( (array!91840 (arr!44370 (Array (_ BitVec 32) ValueCell!17863)) (size!44921 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91839)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24422 0))(
  ( (tuple2!24423 (_1!12221 (_ BitVec 64)) (_2!12221 V!55133)) )
))
(declare-datatypes ((List!31593 0))(
  ( (Nil!31590) (Cons!31589 (h!32798 tuple2!24422) (t!46202 List!31593)) )
))
(declare-datatypes ((ListLongMap!22091 0))(
  ( (ListLongMap!22092 (toList!11061 List!31593)) )
))
(declare-fun contains!9174 (ListLongMap!22091 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5951 (array!91837 array!91839 (_ BitVec 32) (_ BitVec 32) V!55133 V!55133 (_ BitVec 32) Int) ListLongMap!22091)

(assert (=> b!1347482 (= res!894142 (contains!9174 (getCurrentListMap!5951 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1347483 () Bool)

(declare-fun e!766699 () Bool)

(assert (=> b!1347483 (= e!766699 (and e!766696 mapRes!57995))))

(declare-fun condMapEmpty!57995 () Bool)

(declare-fun mapDefault!57995 () ValueCell!17863)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113312 () Bool)

(assert start!113312)

(declare-fun b_free!31327 () Bool)

(declare-fun b_next!31327 () Bool)

(assert (=> start!113312 (= b_free!31327 (not b_next!31327))))

(declare-fun tp!109787 () Bool)

(declare-fun b_and!50559 () Bool)

(assert (=> start!113312 (= tp!109787 b_and!50559)))

(declare-fun b!1343914 () Bool)

(declare-fun e!764904 () Bool)

(assert (=> b!1343914 (= e!764904 false)))

(declare-datatypes ((V!54873 0))(
  ( (V!54874 (val!18738 Int)) )
))
(declare-fun minValue!1245 () V!54873)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91453 0))(
  ( (array!91454 (arr!44178 (Array (_ BitVec 32) (_ BitVec 64))) (size!44729 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91453)

(declare-fun zeroValue!1245 () V!54873)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17765 0))(
  ( (ValueCellFull!17765 (v!21384 V!54873)) (EmptyCell!17765) )
))
(declare-datatypes ((array!91455 0))(
  ( (array!91456 (arr!44179 (Array (_ BitVec 32) ValueCell!17765)) (size!44730 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91455)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun lt!595072 () Bool)

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((tuple2!24296 0))(
  ( (tuple2!24297 (_1!12158 (_ BitVec 64)) (_2!12158 V!54873)) )
))
(declare-datatypes ((List!31469 0))(
  ( (Nil!31466) (Cons!31465 (h!32674 tuple2!24296) (t!46000 List!31469)) )
))
(declare-datatypes ((ListLongMap!21965 0))(
  ( (ListLongMap!21966 (toList!10998 List!31469)) )
))
(declare-fun contains!9110 (ListLongMap!21965 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5891 (array!91453 array!91455 (_ BitVec 32) (_ BitVec 32) V!54873 V!54873 (_ BitVec 32) Int) ListLongMap!21965)

(assert (=> b!1343914 (= lt!595072 (contains!9110 (getCurrentListMap!5891 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1343916 () Bool)

(declare-fun e!764905 () Bool)

(declare-fun e!764903 () Bool)

(declare-fun mapRes!57697 () Bool)

(assert (=> b!1343916 (= e!764905 (and e!764903 mapRes!57697))))

(declare-fun condMapEmpty!57697 () Bool)

(declare-fun mapDefault!57697 () ValueCell!17765)


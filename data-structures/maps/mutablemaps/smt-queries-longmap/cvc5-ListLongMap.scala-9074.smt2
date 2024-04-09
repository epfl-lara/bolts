; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109264 () Bool)

(assert start!109264)

(declare-fun b_free!28717 () Bool)

(declare-fun b_next!28717 () Bool)

(assert (=> start!109264 (= b_free!28717 (not b_next!28717))))

(declare-fun tp!101271 () Bool)

(declare-fun b_and!46817 () Bool)

(assert (=> start!109264 (= tp!101271 b_and!46817)))

(declare-fun b!1292053 () Bool)

(declare-fun res!858569 () Bool)

(declare-fun e!737528 () Bool)

(assert (=> b!1292053 (=> (not res!858569) (not e!737528))))

(declare-datatypes ((array!85707 0))(
  ( (array!85708 (arr!41350 (Array (_ BitVec 32) (_ BitVec 64))) (size!41901 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85707)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1292053 (= res!858569 (not (validKeyInArray!0 (select (arr!41350 _keys!1741) from!2144))))))

(declare-fun b!1292054 () Bool)

(declare-fun res!858563 () Bool)

(assert (=> b!1292054 (=> (not res!858563) (not e!737528))))

(declare-datatypes ((V!50913 0))(
  ( (V!50914 (val!17253 Int)) )
))
(declare-fun minValue!1387 () V!50913)

(declare-fun zeroValue!1387 () V!50913)

(declare-datatypes ((ValueCell!16280 0))(
  ( (ValueCellFull!16280 (v!19854 V!50913)) (EmptyCell!16280) )
))
(declare-datatypes ((array!85709 0))(
  ( (array!85710 (arr!41351 (Array (_ BitVec 32) ValueCell!16280)) (size!41902 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85709)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((tuple2!22326 0))(
  ( (tuple2!22327 (_1!11173 (_ BitVec 64)) (_2!11173 V!50913)) )
))
(declare-datatypes ((List!29516 0))(
  ( (Nil!29513) (Cons!29512 (h!30721 tuple2!22326) (t!43087 List!29516)) )
))
(declare-datatypes ((ListLongMap!19995 0))(
  ( (ListLongMap!19996 (toList!10013 List!29516)) )
))
(declare-fun contains!8069 (ListLongMap!19995 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5006 (array!85707 array!85709 (_ BitVec 32) (_ BitVec 32) V!50913 V!50913 (_ BitVec 32) Int) ListLongMap!19995)

(assert (=> b!1292054 (= res!858563 (contains!8069 (getCurrentListMap!5006 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapNonEmpty!53096 () Bool)

(declare-fun mapRes!53096 () Bool)

(declare-fun tp!101270 () Bool)

(declare-fun e!737530 () Bool)

(assert (=> mapNonEmpty!53096 (= mapRes!53096 (and tp!101270 e!737530))))

(declare-fun mapValue!53096 () ValueCell!16280)

(declare-fun mapRest!53096 () (Array (_ BitVec 32) ValueCell!16280))

(declare-fun mapKey!53096 () (_ BitVec 32))

(assert (=> mapNonEmpty!53096 (= (arr!41351 _values!1445) (store mapRest!53096 mapKey!53096 mapValue!53096))))

(declare-fun b!1292055 () Bool)

(declare-fun res!858567 () Bool)

(assert (=> b!1292055 (=> (not res!858567) (not e!737528))))

(assert (=> b!1292055 (= res!858567 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41901 _keys!1741))))))

(declare-fun b!1292056 () Bool)

(declare-fun e!737526 () Bool)

(declare-fun tp_is_empty!34357 () Bool)

(assert (=> b!1292056 (= e!737526 tp_is_empty!34357)))

(declare-fun b!1292057 () Bool)

(declare-fun e!737527 () Bool)

(assert (=> b!1292057 (= e!737527 (and e!737526 mapRes!53096))))

(declare-fun condMapEmpty!53096 () Bool)

(declare-fun mapDefault!53096 () ValueCell!16280)


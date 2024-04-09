; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109418 () Bool)

(assert start!109418)

(declare-fun b_free!28871 () Bool)

(declare-fun b_next!28871 () Bool)

(assert (=> start!109418 (= b_free!28871 (not b_next!28871))))

(declare-fun tp!101733 () Bool)

(declare-fun b_and!46971 () Bool)

(assert (=> start!109418 (= tp!101733 b_and!46971)))

(declare-fun mapIsEmpty!53327 () Bool)

(declare-fun mapRes!53327 () Bool)

(assert (=> mapIsEmpty!53327 mapRes!53327))

(declare-fun b!1294702 () Bool)

(declare-fun res!860522 () Bool)

(declare-fun e!738793 () Bool)

(assert (=> b!1294702 (=> (not res!860522) (not e!738793))))

(declare-datatypes ((V!51117 0))(
  ( (V!51118 (val!17330 Int)) )
))
(declare-fun zeroValue!1387 () V!51117)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16357 0))(
  ( (ValueCellFull!16357 (v!19931 V!51117)) (EmptyCell!16357) )
))
(declare-datatypes ((array!86007 0))(
  ( (array!86008 (arr!41500 (Array (_ BitVec 32) ValueCell!16357)) (size!42051 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86007)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86009 0))(
  ( (array!86010 (arr!41501 (Array (_ BitVec 32) (_ BitVec 64))) (size!42052 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86009)

(declare-fun minValue!1387 () V!51117)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22456 0))(
  ( (tuple2!22457 (_1!11238 (_ BitVec 64)) (_2!11238 V!51117)) )
))
(declare-datatypes ((List!29628 0))(
  ( (Nil!29625) (Cons!29624 (h!30833 tuple2!22456) (t!43199 List!29628)) )
))
(declare-datatypes ((ListLongMap!20125 0))(
  ( (ListLongMap!20126 (toList!10078 List!29628)) )
))
(declare-fun contains!8134 (ListLongMap!20125 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5061 (array!86009 array!86007 (_ BitVec 32) (_ BitVec 32) V!51117 V!51117 (_ BitVec 32) Int) ListLongMap!20125)

(assert (=> b!1294702 (= res!860522 (contains!8134 (getCurrentListMap!5061 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1294703 () Bool)

(declare-fun e!738790 () Bool)

(declare-fun tp_is_empty!34511 () Bool)

(assert (=> b!1294703 (= e!738790 tp_is_empty!34511)))

(declare-fun mapNonEmpty!53327 () Bool)

(declare-fun tp!101732 () Bool)

(assert (=> mapNonEmpty!53327 (= mapRes!53327 (and tp!101732 e!738790))))

(declare-fun mapValue!53327 () ValueCell!16357)

(declare-fun mapRest!53327 () (Array (_ BitVec 32) ValueCell!16357))

(declare-fun mapKey!53327 () (_ BitVec 32))

(assert (=> mapNonEmpty!53327 (= (arr!41500 _values!1445) (store mapRest!53327 mapKey!53327 mapValue!53327))))

(declare-fun b!1294704 () Bool)

(declare-fun res!860524 () Bool)

(assert (=> b!1294704 (=> (not res!860524) (not e!738793))))

(assert (=> b!1294704 (= res!860524 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42052 _keys!1741))))))

(declare-fun res!860520 () Bool)

(assert (=> start!109418 (=> (not res!860520) (not e!738793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109418 (= res!860520 (validMask!0 mask!2175))))

(assert (=> start!109418 e!738793))

(assert (=> start!109418 tp_is_empty!34511))

(assert (=> start!109418 true))

(declare-fun e!738791 () Bool)

(declare-fun array_inv!31403 (array!86007) Bool)

(assert (=> start!109418 (and (array_inv!31403 _values!1445) e!738791)))

(declare-fun array_inv!31404 (array!86009) Bool)

(assert (=> start!109418 (array_inv!31404 _keys!1741)))

(assert (=> start!109418 tp!101733))

(declare-fun b!1294705 () Bool)

(declare-fun res!860519 () Bool)

(assert (=> b!1294705 (=> (not res!860519) (not e!738793))))

(assert (=> b!1294705 (= res!860519 (and (= (size!42051 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42052 _keys!1741) (size!42051 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1294706 () Bool)

(declare-fun e!738792 () Bool)

(assert (=> b!1294706 (= e!738791 (and e!738792 mapRes!53327))))

(declare-fun condMapEmpty!53327 () Bool)

(declare-fun mapDefault!53327 () ValueCell!16357)


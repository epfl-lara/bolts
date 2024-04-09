; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109154 () Bool)

(assert start!109154)

(declare-fun b_free!28607 () Bool)

(declare-fun b_next!28607 () Bool)

(assert (=> start!109154 (= b_free!28607 (not b_next!28607))))

(declare-fun tp!100941 () Bool)

(declare-fun b_and!46707 () Bool)

(assert (=> start!109154 (= tp!100941 b_and!46707)))

(declare-fun b!1290111 () Bool)

(declare-fun e!736575 () Bool)

(declare-fun tp_is_empty!34247 () Bool)

(assert (=> b!1290111 (= e!736575 tp_is_empty!34247)))

(declare-fun b!1290112 () Bool)

(declare-fun res!857123 () Bool)

(declare-fun e!736579 () Bool)

(assert (=> b!1290112 (=> (not res!857123) (not e!736579))))

(declare-datatypes ((V!50765 0))(
  ( (V!50766 (val!17198 Int)) )
))
(declare-fun minValue!1387 () V!50765)

(declare-fun zeroValue!1387 () V!50765)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16225 0))(
  ( (ValueCellFull!16225 (v!19799 V!50765)) (EmptyCell!16225) )
))
(declare-datatypes ((array!85493 0))(
  ( (array!85494 (arr!41243 (Array (_ BitVec 32) ValueCell!16225)) (size!41794 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85493)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85495 0))(
  ( (array!85496 (arr!41244 (Array (_ BitVec 32) (_ BitVec 64))) (size!41795 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85495)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22234 0))(
  ( (tuple2!22235 (_1!11127 (_ BitVec 64)) (_2!11127 V!50765)) )
))
(declare-datatypes ((List!29431 0))(
  ( (Nil!29428) (Cons!29427 (h!30636 tuple2!22234) (t!43002 List!29431)) )
))
(declare-datatypes ((ListLongMap!19903 0))(
  ( (ListLongMap!19904 (toList!9967 List!29431)) )
))
(declare-fun contains!8023 (ListLongMap!19903 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4968 (array!85495 array!85493 (_ BitVec 32) (_ BitVec 32) V!50765 V!50765 (_ BitVec 32) Int) ListLongMap!19903)

(assert (=> b!1290112 (= res!857123 (contains!8023 (getCurrentListMap!4968 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapNonEmpty!52931 () Bool)

(declare-fun mapRes!52931 () Bool)

(declare-fun tp!100940 () Bool)

(declare-fun e!736578 () Bool)

(assert (=> mapNonEmpty!52931 (= mapRes!52931 (and tp!100940 e!736578))))

(declare-fun mapValue!52931 () ValueCell!16225)

(declare-fun mapKey!52931 () (_ BitVec 32))

(declare-fun mapRest!52931 () (Array (_ BitVec 32) ValueCell!16225))

(assert (=> mapNonEmpty!52931 (= (arr!41243 _values!1445) (store mapRest!52931 mapKey!52931 mapValue!52931))))

(declare-fun b!1290113 () Bool)

(declare-fun e!736576 () Bool)

(assert (=> b!1290113 (= e!736576 (and e!736575 mapRes!52931))))

(declare-fun condMapEmpty!52931 () Bool)

(declare-fun mapDefault!52931 () ValueCell!16225)


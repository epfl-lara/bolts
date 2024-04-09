; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108782 () Bool)

(assert start!108782)

(declare-fun b_free!28259 () Bool)

(declare-fun b_next!28259 () Bool)

(assert (=> start!108782 (= b_free!28259 (not b_next!28259))))

(declare-fun tp!99893 () Bool)

(declare-fun b_and!46335 () Bool)

(assert (=> start!108782 (= tp!99893 b_and!46335)))

(declare-fun b!1284002 () Bool)

(declare-fun res!853064 () Bool)

(declare-fun e!733478 () Bool)

(assert (=> b!1284002 (=> (not res!853064) (not e!733478))))

(declare-datatypes ((array!84815 0))(
  ( (array!84816 (arr!40905 (Array (_ BitVec 32) (_ BitVec 64))) (size!41456 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84815)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1284002 (= res!853064 (validKeyInArray!0 (select (arr!40905 _keys!1741) from!2144)))))

(declare-fun b!1284003 () Bool)

(declare-fun res!853071 () Bool)

(assert (=> b!1284003 (=> (not res!853071) (not e!733478))))

(declare-datatypes ((V!50301 0))(
  ( (V!50302 (val!17024 Int)) )
))
(declare-fun minValue!1387 () V!50301)

(declare-fun zeroValue!1387 () V!50301)

(declare-datatypes ((ValueCell!16051 0))(
  ( (ValueCellFull!16051 (v!19624 V!50301)) (EmptyCell!16051) )
))
(declare-datatypes ((array!84817 0))(
  ( (array!84818 (arr!40906 (Array (_ BitVec 32) ValueCell!16051)) (size!41457 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84817)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21950 0))(
  ( (tuple2!21951 (_1!10985 (_ BitVec 64)) (_2!10985 V!50301)) )
))
(declare-datatypes ((List!29157 0))(
  ( (Nil!29154) (Cons!29153 (h!30362 tuple2!21950) (t!42708 List!29157)) )
))
(declare-datatypes ((ListLongMap!19619 0))(
  ( (ListLongMap!19620 (toList!9825 List!29157)) )
))
(declare-fun contains!7880 (ListLongMap!19619 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4843 (array!84815 array!84817 (_ BitVec 32) (_ BitVec 32) V!50301 V!50301 (_ BitVec 32) Int) ListLongMap!19619)

(assert (=> b!1284003 (= res!853071 (contains!7880 (getCurrentListMap!4843 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapNonEmpty!52406 () Bool)

(declare-fun mapRes!52406 () Bool)

(declare-fun tp!99894 () Bool)

(declare-fun e!733476 () Bool)

(assert (=> mapNonEmpty!52406 (= mapRes!52406 (and tp!99894 e!733476))))

(declare-fun mapRest!52406 () (Array (_ BitVec 32) ValueCell!16051))

(declare-fun mapKey!52406 () (_ BitVec 32))

(declare-fun mapValue!52406 () ValueCell!16051)

(assert (=> mapNonEmpty!52406 (= (arr!40906 _values!1445) (store mapRest!52406 mapKey!52406 mapValue!52406))))

(declare-fun b!1284004 () Bool)

(declare-fun res!853066 () Bool)

(assert (=> b!1284004 (=> (not res!853066) (not e!733478))))

(declare-datatypes ((List!29158 0))(
  ( (Nil!29155) (Cons!29154 (h!30363 (_ BitVec 64)) (t!42709 List!29158)) )
))
(declare-fun arrayNoDuplicates!0 (array!84815 (_ BitVec 32) List!29158) Bool)

(assert (=> b!1284004 (= res!853066 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29155))))

(declare-fun mapIsEmpty!52406 () Bool)

(assert (=> mapIsEmpty!52406 mapRes!52406))

(declare-fun b!1284005 () Bool)

(declare-fun res!853065 () Bool)

(assert (=> b!1284005 (=> (not res!853065) (not e!733478))))

(assert (=> b!1284005 (= res!853065 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41456 _keys!1741))))))

(declare-fun b!1284006 () Bool)

(declare-fun res!853068 () Bool)

(assert (=> b!1284006 (=> (not res!853068) (not e!733478))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84815 (_ BitVec 32)) Bool)

(assert (=> b!1284006 (= res!853068 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1284007 () Bool)

(declare-fun e!733479 () Bool)

(declare-fun tp_is_empty!33899 () Bool)

(assert (=> b!1284007 (= e!733479 tp_is_empty!33899)))

(declare-fun b!1284008 () Bool)

(declare-fun e!733480 () Bool)

(assert (=> b!1284008 (= e!733480 (and e!733479 mapRes!52406))))

(declare-fun condMapEmpty!52406 () Bool)

(declare-fun mapDefault!52406 () ValueCell!16051)


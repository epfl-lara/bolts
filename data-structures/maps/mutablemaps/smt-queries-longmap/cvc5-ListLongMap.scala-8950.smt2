; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108462 () Bool)

(assert start!108462)

(declare-fun b_free!27973 () Bool)

(declare-fun b_next!27973 () Bool)

(assert (=> start!108462 (= b_free!27973 (not b_next!27973))))

(declare-fun tp!99029 () Bool)

(declare-fun b_and!46043 () Bool)

(assert (=> start!108462 (= tp!99029 b_and!46043)))

(declare-fun res!850087 () Bool)

(declare-fun e!731140 () Bool)

(assert (=> start!108462 (=> (not res!850087) (not e!731140))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108462 (= res!850087 (validMask!0 mask!2175))))

(assert (=> start!108462 e!731140))

(declare-fun tp_is_empty!33613 () Bool)

(assert (=> start!108462 tp_is_empty!33613))

(assert (=> start!108462 true))

(declare-datatypes ((V!49921 0))(
  ( (V!49922 (val!16881 Int)) )
))
(declare-datatypes ((ValueCell!15908 0))(
  ( (ValueCellFull!15908 (v!19479 V!49921)) (EmptyCell!15908) )
))
(declare-datatypes ((array!84261 0))(
  ( (array!84262 (arr!40630 (Array (_ BitVec 32) ValueCell!15908)) (size!41181 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84261)

(declare-fun e!731138 () Bool)

(declare-fun array_inv!30823 (array!84261) Bool)

(assert (=> start!108462 (and (array_inv!30823 _values!1445) e!731138)))

(declare-datatypes ((array!84263 0))(
  ( (array!84264 (arr!40631 (Array (_ BitVec 32) (_ BitVec 64))) (size!41182 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84263)

(declare-fun array_inv!30824 (array!84263) Bool)

(assert (=> start!108462 (array_inv!30824 _keys!1741)))

(assert (=> start!108462 tp!99029))

(declare-fun b!1279591 () Bool)

(declare-fun res!850091 () Bool)

(assert (=> b!1279591 (=> (not res!850091) (not e!731140))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1279591 (= res!850091 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41182 _keys!1741))))))

(declare-fun b!1279592 () Bool)

(declare-fun res!850088 () Bool)

(assert (=> b!1279592 (=> (not res!850088) (not e!731140))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84263 (_ BitVec 32)) Bool)

(assert (=> b!1279592 (= res!850088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1279593 () Bool)

(assert (=> b!1279593 (= e!731140 false)))

(declare-fun minValue!1387 () V!49921)

(declare-fun zeroValue!1387 () V!49921)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!575968 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21748 0))(
  ( (tuple2!21749 (_1!10884 (_ BitVec 64)) (_2!10884 V!49921)) )
))
(declare-datatypes ((List!28960 0))(
  ( (Nil!28957) (Cons!28956 (h!30165 tuple2!21748) (t!42507 List!28960)) )
))
(declare-datatypes ((ListLongMap!19417 0))(
  ( (ListLongMap!19418 (toList!9724 List!28960)) )
))
(declare-fun contains!7777 (ListLongMap!19417 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4744 (array!84263 array!84261 (_ BitVec 32) (_ BitVec 32) V!49921 V!49921 (_ BitVec 32) Int) ListLongMap!19417)

(assert (=> b!1279593 (= lt!575968 (contains!7777 (getCurrentListMap!4744 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1279594 () Bool)

(declare-fun e!731139 () Bool)

(assert (=> b!1279594 (= e!731139 tp_is_empty!33613)))

(declare-fun b!1279595 () Bool)

(declare-fun e!731137 () Bool)

(assert (=> b!1279595 (= e!731137 tp_is_empty!33613)))

(declare-fun mapIsEmpty!51971 () Bool)

(declare-fun mapRes!51971 () Bool)

(assert (=> mapIsEmpty!51971 mapRes!51971))

(declare-fun mapNonEmpty!51971 () Bool)

(declare-fun tp!99030 () Bool)

(assert (=> mapNonEmpty!51971 (= mapRes!51971 (and tp!99030 e!731137))))

(declare-fun mapKey!51971 () (_ BitVec 32))

(declare-fun mapRest!51971 () (Array (_ BitVec 32) ValueCell!15908))

(declare-fun mapValue!51971 () ValueCell!15908)

(assert (=> mapNonEmpty!51971 (= (arr!40630 _values!1445) (store mapRest!51971 mapKey!51971 mapValue!51971))))

(declare-fun b!1279596 () Bool)

(declare-fun res!850090 () Bool)

(assert (=> b!1279596 (=> (not res!850090) (not e!731140))))

(declare-datatypes ((List!28961 0))(
  ( (Nil!28958) (Cons!28957 (h!30166 (_ BitVec 64)) (t!42508 List!28961)) )
))
(declare-fun arrayNoDuplicates!0 (array!84263 (_ BitVec 32) List!28961) Bool)

(assert (=> b!1279596 (= res!850090 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28958))))

(declare-fun b!1279597 () Bool)

(assert (=> b!1279597 (= e!731138 (and e!731139 mapRes!51971))))

(declare-fun condMapEmpty!51971 () Bool)

(declare-fun mapDefault!51971 () ValueCell!15908)


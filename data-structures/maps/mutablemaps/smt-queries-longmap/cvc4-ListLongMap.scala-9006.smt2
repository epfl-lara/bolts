; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108836 () Bool)

(assert start!108836)

(declare-fun b_free!28313 () Bool)

(declare-fun b_next!28313 () Bool)

(assert (=> start!108836 (= b_free!28313 (not b_next!28313))))

(declare-fun tp!100056 () Bool)

(declare-fun b_and!46389 () Bool)

(assert (=> start!108836 (= tp!100056 b_and!46389)))

(declare-fun b!1284690 () Bool)

(declare-fun res!853509 () Bool)

(declare-fun e!733884 () Bool)

(assert (=> b!1284690 (=> (not res!853509) (not e!733884))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50373 0))(
  ( (V!50374 (val!17051 Int)) )
))
(declare-datatypes ((ValueCell!16078 0))(
  ( (ValueCellFull!16078 (v!19651 V!50373)) (EmptyCell!16078) )
))
(declare-datatypes ((array!84921 0))(
  ( (array!84922 (arr!40958 (Array (_ BitVec 32) ValueCell!16078)) (size!41509 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84921)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84923 0))(
  ( (array!84924 (arr!40959 (Array (_ BitVec 32) (_ BitVec 64))) (size!41510 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84923)

(assert (=> b!1284690 (= res!853509 (and (= (size!41509 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41510 _keys!1741) (size!41509 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1284691 () Bool)

(declare-fun res!853510 () Bool)

(assert (=> b!1284691 (=> (not res!853510) (not e!733884))))

(declare-datatypes ((List!29196 0))(
  ( (Nil!29193) (Cons!29192 (h!30401 (_ BitVec 64)) (t!42747 List!29196)) )
))
(declare-fun arrayNoDuplicates!0 (array!84923 (_ BitVec 32) List!29196) Bool)

(assert (=> b!1284691 (= res!853510 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29193))))

(declare-fun b!1284692 () Bool)

(declare-fun res!853508 () Bool)

(assert (=> b!1284692 (=> (not res!853508) (not e!733884))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1284692 (= res!853508 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41510 _keys!1741))))))

(declare-fun mapNonEmpty!52487 () Bool)

(declare-fun mapRes!52487 () Bool)

(declare-fun tp!100055 () Bool)

(declare-fun e!733881 () Bool)

(assert (=> mapNonEmpty!52487 (= mapRes!52487 (and tp!100055 e!733881))))

(declare-fun mapKey!52487 () (_ BitVec 32))

(declare-fun mapRest!52487 () (Array (_ BitVec 32) ValueCell!16078))

(declare-fun mapValue!52487 () ValueCell!16078)

(assert (=> mapNonEmpty!52487 (= (arr!40958 _values!1445) (store mapRest!52487 mapKey!52487 mapValue!52487))))

(declare-fun b!1284693 () Bool)

(assert (=> b!1284693 (= e!733884 false)))

(declare-fun minValue!1387 () V!50373)

(declare-fun zeroValue!1387 () V!50373)

(declare-fun lt!576792 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21984 0))(
  ( (tuple2!21985 (_1!11002 (_ BitVec 64)) (_2!11002 V!50373)) )
))
(declare-datatypes ((List!29197 0))(
  ( (Nil!29194) (Cons!29193 (h!30402 tuple2!21984) (t!42748 List!29197)) )
))
(declare-datatypes ((ListLongMap!19653 0))(
  ( (ListLongMap!19654 (toList!9842 List!29197)) )
))
(declare-fun contains!7897 (ListLongMap!19653 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4860 (array!84923 array!84921 (_ BitVec 32) (_ BitVec 32) V!50373 V!50373 (_ BitVec 32) Int) ListLongMap!19653)

(assert (=> b!1284693 (= lt!576792 (contains!7897 (getCurrentListMap!4860 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1284694 () Bool)

(declare-fun res!853512 () Bool)

(assert (=> b!1284694 (=> (not res!853512) (not e!733884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84923 (_ BitVec 32)) Bool)

(assert (=> b!1284694 (= res!853512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!52487 () Bool)

(assert (=> mapIsEmpty!52487 mapRes!52487))

(declare-fun b!1284696 () Bool)

(declare-fun e!733883 () Bool)

(declare-fun e!733885 () Bool)

(assert (=> b!1284696 (= e!733883 (and e!733885 mapRes!52487))))

(declare-fun condMapEmpty!52487 () Bool)

(declare-fun mapDefault!52487 () ValueCell!16078)


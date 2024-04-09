; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108808 () Bool)

(assert start!108808)

(declare-fun b_free!28285 () Bool)

(declare-fun b_next!28285 () Bool)

(assert (=> start!108808 (= b_free!28285 (not b_next!28285))))

(declare-fun tp!99971 () Bool)

(declare-fun b_and!46361 () Bool)

(assert (=> start!108808 (= tp!99971 b_and!46361)))

(declare-fun mapNonEmpty!52445 () Bool)

(declare-fun mapRes!52445 () Bool)

(declare-fun tp!99972 () Bool)

(declare-fun e!733673 () Bool)

(assert (=> mapNonEmpty!52445 (= mapRes!52445 (and tp!99972 e!733673))))

(declare-fun mapKey!52445 () (_ BitVec 32))

(declare-datatypes ((V!50337 0))(
  ( (V!50338 (val!17037 Int)) )
))
(declare-datatypes ((ValueCell!16064 0))(
  ( (ValueCellFull!16064 (v!19637 V!50337)) (EmptyCell!16064) )
))
(declare-fun mapValue!52445 () ValueCell!16064)

(declare-datatypes ((array!84865 0))(
  ( (array!84866 (arr!40930 (Array (_ BitVec 32) ValueCell!16064)) (size!41481 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84865)

(declare-fun mapRest!52445 () (Array (_ BitVec 32) ValueCell!16064))

(assert (=> mapNonEmpty!52445 (= (arr!40930 _values!1445) (store mapRest!52445 mapKey!52445 mapValue!52445))))

(declare-fun b!1284355 () Bool)

(declare-fun res!853301 () Bool)

(declare-fun e!733672 () Bool)

(assert (=> b!1284355 (=> (not res!853301) (not e!733672))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84867 0))(
  ( (array!84868 (arr!40931 (Array (_ BitVec 32) (_ BitVec 64))) (size!41482 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84867)

(assert (=> b!1284355 (= res!853301 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41482 _keys!1741))))))

(declare-fun mapIsEmpty!52445 () Bool)

(assert (=> mapIsEmpty!52445 mapRes!52445))

(declare-fun b!1284356 () Bool)

(assert (=> b!1284356 (= e!733672 false)))

(declare-fun minValue!1387 () V!50337)

(declare-fun zeroValue!1387 () V!50337)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!576750 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21966 0))(
  ( (tuple2!21967 (_1!10993 (_ BitVec 64)) (_2!10993 V!50337)) )
))
(declare-datatypes ((List!29174 0))(
  ( (Nil!29171) (Cons!29170 (h!30379 tuple2!21966) (t!42725 List!29174)) )
))
(declare-datatypes ((ListLongMap!19635 0))(
  ( (ListLongMap!19636 (toList!9833 List!29174)) )
))
(declare-fun contains!7888 (ListLongMap!19635 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4851 (array!84867 array!84865 (_ BitVec 32) (_ BitVec 32) V!50337 V!50337 (_ BitVec 32) Int) ListLongMap!19635)

(assert (=> b!1284356 (= lt!576750 (contains!7888 (getCurrentListMap!4851 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1284357 () Bool)

(declare-fun res!853298 () Bool)

(assert (=> b!1284357 (=> (not res!853298) (not e!733672))))

(assert (=> b!1284357 (= res!853298 (and (= (size!41481 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41482 _keys!1741) (size!41481 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1284354 () Bool)

(declare-fun e!733675 () Bool)

(declare-fun e!733671 () Bool)

(assert (=> b!1284354 (= e!733675 (and e!733671 mapRes!52445))))

(declare-fun condMapEmpty!52445 () Bool)

(declare-fun mapDefault!52445 () ValueCell!16064)


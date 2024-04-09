; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108528 () Bool)

(assert start!108528)

(declare-fun b_free!28039 () Bool)

(declare-fun b_next!28039 () Bool)

(assert (=> start!108528 (= b_free!28039 (not b_next!28039))))

(declare-fun tp!99227 () Bool)

(declare-fun b_and!46109 () Bool)

(assert (=> start!108528 (= tp!99227 b_and!46109)))

(declare-fun b!1280387 () Bool)

(declare-fun res!850588 () Bool)

(declare-fun e!731635 () Bool)

(assert (=> b!1280387 (=> (not res!850588) (not e!731635))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84387 0))(
  ( (array!84388 (arr!40693 (Array (_ BitVec 32) (_ BitVec 64))) (size!41244 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84387)

(assert (=> b!1280387 (= res!850588 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41244 _keys!1741))))))

(declare-fun b!1280388 () Bool)

(declare-fun res!850589 () Bool)

(assert (=> b!1280388 (=> (not res!850589) (not e!731635))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50009 0))(
  ( (V!50010 (val!16914 Int)) )
))
(declare-datatypes ((ValueCell!15941 0))(
  ( (ValueCellFull!15941 (v!19512 V!50009)) (EmptyCell!15941) )
))
(declare-datatypes ((array!84389 0))(
  ( (array!84390 (arr!40694 (Array (_ BitVec 32) ValueCell!15941)) (size!41245 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84389)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1280388 (= res!850589 (and (= (size!41245 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41244 _keys!1741) (size!41245 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1280389 () Bool)

(declare-fun res!850592 () Bool)

(assert (=> b!1280389 (=> (not res!850592) (not e!731635))))

(declare-fun minValue!1387 () V!50009)

(declare-fun zeroValue!1387 () V!50009)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21794 0))(
  ( (tuple2!21795 (_1!10907 (_ BitVec 64)) (_2!10907 V!50009)) )
))
(declare-datatypes ((List!29004 0))(
  ( (Nil!29001) (Cons!29000 (h!30209 tuple2!21794) (t!42551 List!29004)) )
))
(declare-datatypes ((ListLongMap!19463 0))(
  ( (ListLongMap!19464 (toList!9747 List!29004)) )
))
(declare-fun contains!7800 (ListLongMap!19463 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4767 (array!84387 array!84389 (_ BitVec 32) (_ BitVec 32) V!50009 V!50009 (_ BitVec 32) Int) ListLongMap!19463)

(assert (=> b!1280389 (= res!850592 (contains!7800 (getCurrentListMap!4767 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1280390 () Bool)

(assert (=> b!1280390 (= e!731635 (not true))))

(assert (=> b!1280390 (contains!7800 (getCurrentListMap!4767 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42337 0))(
  ( (Unit!42338) )
))
(declare-fun lt!576067 () Unit!42337)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!1 (array!84387 array!84389 (_ BitVec 32) (_ BitVec 32) V!50009 V!50009 (_ BitVec 64) (_ BitVec 32) Int) Unit!42337)

(assert (=> b!1280390 (= lt!576067 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!1 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1280391 () Bool)

(declare-fun res!850587 () Bool)

(assert (=> b!1280391 (=> (not res!850587) (not e!731635))))

(assert (=> b!1280391 (= res!850587 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41244 _keys!1741)) (not (= (select (arr!40693 _keys!1741) from!2144) k!1205))))))

(declare-fun b!1280392 () Bool)

(declare-fun e!731634 () Bool)

(declare-fun tp_is_empty!33679 () Bool)

(assert (=> b!1280392 (= e!731634 tp_is_empty!33679)))

(declare-fun b!1280393 () Bool)

(declare-fun e!731631 () Bool)

(assert (=> b!1280393 (= e!731631 tp_is_empty!33679)))

(declare-fun b!1280394 () Bool)

(declare-fun res!850591 () Bool)

(assert (=> b!1280394 (=> (not res!850591) (not e!731635))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84387 (_ BitVec 32)) Bool)

(assert (=> b!1280394 (= res!850591 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1280395 () Bool)

(declare-fun res!850590 () Bool)

(assert (=> b!1280395 (=> (not res!850590) (not e!731635))))

(declare-datatypes ((List!29005 0))(
  ( (Nil!29002) (Cons!29001 (h!30210 (_ BitVec 64)) (t!42552 List!29005)) )
))
(declare-fun arrayNoDuplicates!0 (array!84387 (_ BitVec 32) List!29005) Bool)

(assert (=> b!1280395 (= res!850590 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29002))))

(declare-fun b!1280396 () Bool)

(declare-fun e!731633 () Bool)

(declare-fun mapRes!52070 () Bool)

(assert (=> b!1280396 (= e!731633 (and e!731634 mapRes!52070))))

(declare-fun condMapEmpty!52070 () Bool)

(declare-fun mapDefault!52070 () ValueCell!15941)


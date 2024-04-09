; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108552 () Bool)

(assert start!108552)

(declare-fun b_free!28063 () Bool)

(declare-fun b_next!28063 () Bool)

(assert (=> start!108552 (= b_free!28063 (not b_next!28063))))

(declare-fun tp!99300 () Bool)

(declare-fun b_and!46133 () Bool)

(assert (=> start!108552 (= tp!99300 b_and!46133)))

(declare-fun b!1280747 () Bool)

(declare-fun res!850842 () Bool)

(declare-fun e!731812 () Bool)

(assert (=> b!1280747 (=> (not res!850842) (not e!731812))))

(declare-datatypes ((array!84435 0))(
  ( (array!84436 (arr!40717 (Array (_ BitVec 32) (_ BitVec 64))) (size!41268 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84435)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84435 (_ BitVec 32)) Bool)

(assert (=> b!1280747 (= res!850842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1280748 () Bool)

(declare-fun res!850841 () Bool)

(assert (=> b!1280748 (=> (not res!850841) (not e!731812))))

(declare-datatypes ((List!29024 0))(
  ( (Nil!29021) (Cons!29020 (h!30229 (_ BitVec 64)) (t!42571 List!29024)) )
))
(declare-fun arrayNoDuplicates!0 (array!84435 (_ BitVec 32) List!29024) Bool)

(assert (=> b!1280748 (= res!850841 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29021))))

(declare-fun b!1280749 () Bool)

(assert (=> b!1280749 (= e!731812 (not true))))

(declare-datatypes ((V!50041 0))(
  ( (V!50042 (val!16926 Int)) )
))
(declare-fun minValue!1387 () V!50041)

(declare-fun zeroValue!1387 () V!50041)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15953 0))(
  ( (ValueCellFull!15953 (v!19524 V!50041)) (EmptyCell!15953) )
))
(declare-datatypes ((array!84437 0))(
  ( (array!84438 (arr!40718 (Array (_ BitVec 32) ValueCell!15953)) (size!41269 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84437)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21814 0))(
  ( (tuple2!21815 (_1!10917 (_ BitVec 64)) (_2!10917 V!50041)) )
))
(declare-datatypes ((List!29025 0))(
  ( (Nil!29022) (Cons!29021 (h!30230 tuple2!21814) (t!42572 List!29025)) )
))
(declare-datatypes ((ListLongMap!19483 0))(
  ( (ListLongMap!19484 (toList!9757 List!29025)) )
))
(declare-fun contains!7810 (ListLongMap!19483 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4777 (array!84435 array!84437 (_ BitVec 32) (_ BitVec 32) V!50041 V!50041 (_ BitVec 32) Int) ListLongMap!19483)

(assert (=> b!1280749 (contains!7810 (getCurrentListMap!4777 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42355 0))(
  ( (Unit!42356) )
))
(declare-fun lt!576103 () Unit!42355)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!10 (array!84435 array!84437 (_ BitVec 32) (_ BitVec 32) V!50041 V!50041 (_ BitVec 64) (_ BitVec 32) Int) Unit!42355)

(assert (=> b!1280749 (= lt!576103 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!10 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1280750 () Bool)

(declare-fun e!731811 () Bool)

(declare-fun tp_is_empty!33703 () Bool)

(assert (=> b!1280750 (= e!731811 tp_is_empty!33703)))

(declare-fun b!1280751 () Bool)

(declare-fun res!850839 () Bool)

(assert (=> b!1280751 (=> (not res!850839) (not e!731812))))

(assert (=> b!1280751 (= res!850839 (contains!7810 (getCurrentListMap!4777 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1280752 () Bool)

(declare-fun e!731813 () Bool)

(declare-fun e!731815 () Bool)

(declare-fun mapRes!52106 () Bool)

(assert (=> b!1280752 (= e!731813 (and e!731815 mapRes!52106))))

(declare-fun condMapEmpty!52106 () Bool)

(declare-fun mapDefault!52106 () ValueCell!15953)


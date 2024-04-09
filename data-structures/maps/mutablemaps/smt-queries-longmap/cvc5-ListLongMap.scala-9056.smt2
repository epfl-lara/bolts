; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109156 () Bool)

(assert start!109156)

(declare-fun b_free!28609 () Bool)

(declare-fun b_next!28609 () Bool)

(assert (=> start!109156 (= b_free!28609 (not b_next!28609))))

(declare-fun tp!100946 () Bool)

(declare-fun b_and!46709 () Bool)

(assert (=> start!109156 (= tp!100946 b_and!46709)))

(declare-fun b!1290147 () Bool)

(declare-fun res!857146 () Bool)

(declare-fun e!736596 () Bool)

(assert (=> b!1290147 (=> (not res!857146) (not e!736596))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50769 0))(
  ( (V!50770 (val!17199 Int)) )
))
(declare-datatypes ((ValueCell!16226 0))(
  ( (ValueCellFull!16226 (v!19800 V!50769)) (EmptyCell!16226) )
))
(declare-datatypes ((array!85497 0))(
  ( (array!85498 (arr!41245 (Array (_ BitVec 32) ValueCell!16226)) (size!41796 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85497)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85499 0))(
  ( (array!85500 (arr!41246 (Array (_ BitVec 32) (_ BitVec 64))) (size!41797 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85499)

(assert (=> b!1290147 (= res!857146 (and (= (size!41796 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41797 _keys!1741) (size!41796 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1290148 () Bool)

(declare-fun res!857149 () Bool)

(assert (=> b!1290148 (=> (not res!857149) (not e!736596))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1290148 (= res!857149 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41797 _keys!1741))))))

(declare-fun b!1290149 () Bool)

(declare-fun res!857151 () Bool)

(assert (=> b!1290149 (=> (not res!857151) (not e!736596))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1290149 (= res!857151 (not (validKeyInArray!0 (select (arr!41246 _keys!1741) from!2144))))))

(declare-fun b!1290150 () Bool)

(declare-fun e!736597 () Bool)

(assert (=> b!1290150 (= e!736597 (bvsle from!2144 (size!41797 _keys!1741)))))

(declare-datatypes ((tuple2!22236 0))(
  ( (tuple2!22237 (_1!11128 (_ BitVec 64)) (_2!11128 V!50769)) )
))
(declare-datatypes ((List!29432 0))(
  ( (Nil!29429) (Cons!29428 (h!30637 tuple2!22236) (t!43003 List!29432)) )
))
(declare-datatypes ((ListLongMap!19905 0))(
  ( (ListLongMap!19906 (toList!9968 List!29432)) )
))
(declare-fun lt!578463 () ListLongMap!19905)

(declare-fun minValue!1387 () V!50769)

(declare-fun contains!8024 (ListLongMap!19905 (_ BitVec 64)) Bool)

(declare-fun +!4337 (ListLongMap!19905 tuple2!22236) ListLongMap!19905)

(assert (=> b!1290150 (not (contains!8024 (+!4337 lt!578463 (tuple2!22237 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-datatypes ((Unit!42625 0))(
  ( (Unit!42626) )
))
(declare-fun lt!578461 () Unit!42625)

(declare-fun addStillNotContains!382 (ListLongMap!19905 (_ BitVec 64) V!50769 (_ BitVec 64)) Unit!42625)

(assert (=> b!1290150 (= lt!578461 (addStillNotContains!382 lt!578463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun zeroValue!1387 () V!50769)

(assert (=> b!1290150 (not (contains!8024 (+!4337 lt!578463 (tuple2!22237 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!578464 () Unit!42625)

(assert (=> b!1290150 (= lt!578464 (addStillNotContains!382 lt!578463 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6049 (array!85499 array!85497 (_ BitVec 32) (_ BitVec 32) V!50769 V!50769 (_ BitVec 32) Int) ListLongMap!19905)

(assert (=> b!1290150 (= lt!578463 (getCurrentListMapNoExtraKeys!6049 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1290151 () Bool)

(declare-fun res!857147 () Bool)

(assert (=> b!1290151 (=> (not res!857147) (not e!736596))))

(declare-datatypes ((List!29433 0))(
  ( (Nil!29430) (Cons!29429 (h!30638 (_ BitVec 64)) (t!43004 List!29433)) )
))
(declare-fun arrayNoDuplicates!0 (array!85499 (_ BitVec 32) List!29433) Bool)

(assert (=> b!1290151 (= res!857147 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29430))))

(declare-fun mapNonEmpty!52934 () Bool)

(declare-fun mapRes!52934 () Bool)

(declare-fun tp!100947 () Bool)

(declare-fun e!736592 () Bool)

(assert (=> mapNonEmpty!52934 (= mapRes!52934 (and tp!100947 e!736592))))

(declare-fun mapValue!52934 () ValueCell!16226)

(declare-fun mapKey!52934 () (_ BitVec 32))

(declare-fun mapRest!52934 () (Array (_ BitVec 32) ValueCell!16226))

(assert (=> mapNonEmpty!52934 (= (arr!41245 _values!1445) (store mapRest!52934 mapKey!52934 mapValue!52934))))

(declare-fun b!1290152 () Bool)

(declare-fun res!857143 () Bool)

(assert (=> b!1290152 (=> (not res!857143) (not e!736596))))

(declare-fun getCurrentListMap!4969 (array!85499 array!85497 (_ BitVec 32) (_ BitVec 32) V!50769 V!50769 (_ BitVec 32) Int) ListLongMap!19905)

(assert (=> b!1290152 (= res!857143 (contains!8024 (getCurrentListMap!4969 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun res!857150 () Bool)

(assert (=> start!109156 (=> (not res!857150) (not e!736596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109156 (= res!857150 (validMask!0 mask!2175))))

(assert (=> start!109156 e!736596))

(declare-fun tp_is_empty!34249 () Bool)

(assert (=> start!109156 tp_is_empty!34249))

(assert (=> start!109156 true))

(declare-fun e!736594 () Bool)

(declare-fun array_inv!31235 (array!85497) Bool)

(assert (=> start!109156 (and (array_inv!31235 _values!1445) e!736594)))

(declare-fun array_inv!31236 (array!85499) Bool)

(assert (=> start!109156 (array_inv!31236 _keys!1741)))

(assert (=> start!109156 tp!100946))

(declare-fun b!1290153 () Bool)

(declare-fun e!736595 () Bool)

(assert (=> b!1290153 (= e!736594 (and e!736595 mapRes!52934))))

(declare-fun condMapEmpty!52934 () Bool)

(declare-fun mapDefault!52934 () ValueCell!16226)


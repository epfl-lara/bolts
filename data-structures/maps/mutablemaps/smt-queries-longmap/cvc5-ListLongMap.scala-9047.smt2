; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109102 () Bool)

(assert start!109102)

(declare-fun b_free!28555 () Bool)

(declare-fun b_next!28555 () Bool)

(assert (=> start!109102 (= b_free!28555 (not b_next!28555))))

(declare-fun tp!100785 () Bool)

(declare-fun b_and!46655 () Bool)

(assert (=> start!109102 (= tp!100785 b_and!46655)))

(declare-fun mapIsEmpty!52853 () Bool)

(declare-fun mapRes!52853 () Bool)

(assert (=> mapIsEmpty!52853 mapRes!52853))

(declare-fun res!856414 () Bool)

(declare-fun e!736106 () Bool)

(assert (=> start!109102 (=> (not res!856414) (not e!736106))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109102 (= res!856414 (validMask!0 mask!2175))))

(assert (=> start!109102 e!736106))

(declare-fun tp_is_empty!34195 () Bool)

(assert (=> start!109102 tp_is_empty!34195))

(assert (=> start!109102 true))

(declare-datatypes ((V!50697 0))(
  ( (V!50698 (val!17172 Int)) )
))
(declare-datatypes ((ValueCell!16199 0))(
  ( (ValueCellFull!16199 (v!19773 V!50697)) (EmptyCell!16199) )
))
(declare-datatypes ((array!85389 0))(
  ( (array!85390 (arr!41191 (Array (_ BitVec 32) ValueCell!16199)) (size!41742 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85389)

(declare-fun e!736108 () Bool)

(declare-fun array_inv!31199 (array!85389) Bool)

(assert (=> start!109102 (and (array_inv!31199 _values!1445) e!736108)))

(declare-datatypes ((array!85391 0))(
  ( (array!85392 (arr!41192 (Array (_ BitVec 32) (_ BitVec 64))) (size!41743 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85391)

(declare-fun array_inv!31200 (array!85391) Bool)

(assert (=> start!109102 (array_inv!31200 _keys!1741)))

(assert (=> start!109102 tp!100785))

(declare-fun b!1289175 () Bool)

(declare-fun res!856418 () Bool)

(assert (=> b!1289175 (=> (not res!856418) (not e!736106))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1289175 (= res!856418 (not (validKeyInArray!0 (select (arr!41192 _keys!1741) from!2144))))))

(declare-fun b!1289176 () Bool)

(declare-fun res!856417 () Bool)

(assert (=> b!1289176 (=> (not res!856417) (not e!736106))))

(declare-fun minValue!1387 () V!50697)

(declare-fun zeroValue!1387 () V!50697)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22184 0))(
  ( (tuple2!22185 (_1!11102 (_ BitVec 64)) (_2!11102 V!50697)) )
))
(declare-datatypes ((List!29384 0))(
  ( (Nil!29381) (Cons!29380 (h!30589 tuple2!22184) (t!42955 List!29384)) )
))
(declare-datatypes ((ListLongMap!19853 0))(
  ( (ListLongMap!19854 (toList!9942 List!29384)) )
))
(declare-fun contains!7998 (ListLongMap!19853 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4945 (array!85391 array!85389 (_ BitVec 32) (_ BitVec 32) V!50697 V!50697 (_ BitVec 32) Int) ListLongMap!19853)

(assert (=> b!1289176 (= res!856417 (contains!7998 (getCurrentListMap!4945 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1289177 () Bool)

(declare-fun e!736111 () Bool)

(assert (=> b!1289177 (= e!736106 (not e!736111))))

(declare-fun res!856416 () Bool)

(assert (=> b!1289177 (=> res!856416 e!736111)))

(assert (=> b!1289177 (= res!856416 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1289177 (not (contains!7998 (ListLongMap!19854 Nil!29381) k!1205))))

(declare-datatypes ((Unit!42579 0))(
  ( (Unit!42580) )
))
(declare-fun lt!578140 () Unit!42579)

(declare-fun emptyContainsNothing!54 ((_ BitVec 64)) Unit!42579)

(assert (=> b!1289177 (= lt!578140 (emptyContainsNothing!54 k!1205))))

(declare-fun b!1289178 () Bool)

(declare-fun res!856419 () Bool)

(assert (=> b!1289178 (=> (not res!856419) (not e!736106))))

(declare-datatypes ((List!29385 0))(
  ( (Nil!29382) (Cons!29381 (h!30590 (_ BitVec 64)) (t!42956 List!29385)) )
))
(declare-fun arrayNoDuplicates!0 (array!85391 (_ BitVec 32) List!29385) Bool)

(assert (=> b!1289178 (= res!856419 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29382))))

(declare-fun b!1289179 () Bool)

(declare-fun res!856422 () Bool)

(assert (=> b!1289179 (=> (not res!856422) (not e!736106))))

(assert (=> b!1289179 (= res!856422 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41743 _keys!1741))))))

(declare-fun b!1289180 () Bool)

(declare-fun e!736110 () Bool)

(assert (=> b!1289180 (= e!736110 tp_is_empty!34195)))

(declare-fun b!1289181 () Bool)

(declare-fun res!856415 () Bool)

(assert (=> b!1289181 (=> (not res!856415) (not e!736106))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85391 (_ BitVec 32)) Bool)

(assert (=> b!1289181 (= res!856415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1289182 () Bool)

(assert (=> b!1289182 (= e!736111 true)))

(declare-fun lt!578137 () Bool)

(declare-fun lt!578138 () ListLongMap!19853)

(assert (=> b!1289182 (= lt!578137 (contains!7998 lt!578138 k!1205))))

(declare-fun +!4315 (ListLongMap!19853 tuple2!22184) ListLongMap!19853)

(assert (=> b!1289182 (not (contains!7998 (+!4315 lt!578138 (tuple2!22185 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!578139 () Unit!42579)

(declare-fun addStillNotContains!360 (ListLongMap!19853 (_ BitVec 64) V!50697 (_ BitVec 64)) Unit!42579)

(assert (=> b!1289182 (= lt!578139 (addStillNotContains!360 lt!578138 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6027 (array!85391 array!85389 (_ BitVec 32) (_ BitVec 32) V!50697 V!50697 (_ BitVec 32) Int) ListLongMap!19853)

(assert (=> b!1289182 (= lt!578138 (getCurrentListMapNoExtraKeys!6027 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1289183 () Bool)

(declare-fun res!856420 () Bool)

(assert (=> b!1289183 (=> (not res!856420) (not e!736106))))

(assert (=> b!1289183 (= res!856420 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41743 _keys!1741))))))

(declare-fun b!1289184 () Bool)

(declare-fun e!736107 () Bool)

(assert (=> b!1289184 (= e!736107 tp_is_empty!34195)))

(declare-fun b!1289185 () Bool)

(assert (=> b!1289185 (= e!736108 (and e!736110 mapRes!52853))))

(declare-fun condMapEmpty!52853 () Bool)

(declare-fun mapDefault!52853 () ValueCell!16199)


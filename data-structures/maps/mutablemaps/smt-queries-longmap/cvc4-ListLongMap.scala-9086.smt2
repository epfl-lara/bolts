; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109340 () Bool)

(assert start!109340)

(declare-fun b_free!28793 () Bool)

(declare-fun b_next!28793 () Bool)

(assert (=> start!109340 (= b_free!28793 (not b_next!28793))))

(declare-fun tp!101498 () Bool)

(declare-fun b_and!46893 () Bool)

(assert (=> start!109340 (= tp!101498 b_and!46893)))

(declare-fun b!1293378 () Bool)

(declare-fun e!738171 () Bool)

(declare-fun e!738167 () Bool)

(assert (=> b!1293378 (= e!738171 (not e!738167))))

(declare-fun res!859549 () Bool)

(assert (=> b!1293378 (=> res!859549 e!738167)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1293378 (= res!859549 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!51013 0))(
  ( (V!51014 (val!17291 Int)) )
))
(declare-datatypes ((tuple2!22394 0))(
  ( (tuple2!22395 (_1!11207 (_ BitVec 64)) (_2!11207 V!51013)) )
))
(declare-datatypes ((List!29576 0))(
  ( (Nil!29573) (Cons!29572 (h!30781 tuple2!22394) (t!43147 List!29576)) )
))
(declare-datatypes ((ListLongMap!20063 0))(
  ( (ListLongMap!20064 (toList!10047 List!29576)) )
))
(declare-fun contains!8103 (ListLongMap!20063 (_ BitVec 64)) Bool)

(assert (=> b!1293378 (not (contains!8103 (ListLongMap!20064 Nil!29573) k!1205))))

(declare-datatypes ((Unit!42771 0))(
  ( (Unit!42772) )
))
(declare-fun lt!579495 () Unit!42771)

(declare-fun emptyContainsNothing!142 ((_ BitVec 64)) Unit!42771)

(assert (=> b!1293378 (= lt!579495 (emptyContainsNothing!142 k!1205))))

(declare-fun b!1293379 () Bool)

(declare-fun e!738172 () Bool)

(declare-fun tp_is_empty!34433 () Bool)

(assert (=> b!1293379 (= e!738172 tp_is_empty!34433)))

(declare-fun b!1293380 () Bool)

(declare-fun res!859548 () Bool)

(assert (=> b!1293380 (=> (not res!859548) (not e!738171))))

(declare-fun minValue!1387 () V!51013)

(declare-fun zeroValue!1387 () V!51013)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16318 0))(
  ( (ValueCellFull!16318 (v!19892 V!51013)) (EmptyCell!16318) )
))
(declare-datatypes ((array!85855 0))(
  ( (array!85856 (arr!41424 (Array (_ BitVec 32) ValueCell!16318)) (size!41975 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85855)

(declare-datatypes ((array!85857 0))(
  ( (array!85858 (arr!41425 (Array (_ BitVec 32) (_ BitVec 64))) (size!41976 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85857)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMap!5033 (array!85857 array!85855 (_ BitVec 32) (_ BitVec 32) V!51013 V!51013 (_ BitVec 32) Int) ListLongMap!20063)

(assert (=> b!1293380 (= res!859548 (contains!8103 (getCurrentListMap!5033 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1293381 () Bool)

(declare-fun res!859552 () Bool)

(assert (=> b!1293381 (=> (not res!859552) (not e!738171))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1293381 (= res!859552 (not (validKeyInArray!0 (select (arr!41425 _keys!1741) from!2144))))))

(declare-fun b!1293382 () Bool)

(declare-fun res!859554 () Bool)

(assert (=> b!1293382 (=> (not res!859554) (not e!738171))))

(assert (=> b!1293382 (= res!859554 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41976 _keys!1741))))))

(declare-fun b!1293384 () Bool)

(assert (=> b!1293384 (= e!738167 true)))

(declare-fun lt!579494 () ListLongMap!20063)

(declare-fun +!4378 (ListLongMap!20063 tuple2!22394) ListLongMap!20063)

(assert (=> b!1293384 (not (contains!8103 (+!4378 lt!579494 (tuple2!22395 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!579496 () Unit!42771)

(declare-fun addStillNotContains!423 (ListLongMap!20063 (_ BitVec 64) V!51013 (_ BitVec 64)) Unit!42771)

(assert (=> b!1293384 (= lt!579496 (addStillNotContains!423 lt!579494 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6091 (array!85857 array!85855 (_ BitVec 32) (_ BitVec 32) V!51013 V!51013 (_ BitVec 32) Int) ListLongMap!20063)

(assert (=> b!1293384 (= lt!579494 (getCurrentListMapNoExtraKeys!6091 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1293385 () Bool)

(declare-fun res!859553 () Bool)

(assert (=> b!1293385 (=> (not res!859553) (not e!738171))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85857 (_ BitVec 32)) Bool)

(assert (=> b!1293385 (= res!859553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1293386 () Bool)

(declare-fun res!859547 () Bool)

(assert (=> b!1293386 (=> (not res!859547) (not e!738171))))

(assert (=> b!1293386 (= res!859547 (and (= (size!41975 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41976 _keys!1741) (size!41975 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1293387 () Bool)

(declare-fun res!859551 () Bool)

(assert (=> b!1293387 (=> (not res!859551) (not e!738171))))

(assert (=> b!1293387 (= res!859551 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41976 _keys!1741))))))

(declare-fun b!1293388 () Bool)

(declare-fun e!738170 () Bool)

(assert (=> b!1293388 (= e!738170 tp_is_empty!34433)))

(declare-fun mapNonEmpty!53210 () Bool)

(declare-fun mapRes!53210 () Bool)

(declare-fun tp!101499 () Bool)

(assert (=> mapNonEmpty!53210 (= mapRes!53210 (and tp!101499 e!738172))))

(declare-fun mapKey!53210 () (_ BitVec 32))

(declare-fun mapValue!53210 () ValueCell!16318)

(declare-fun mapRest!53210 () (Array (_ BitVec 32) ValueCell!16318))

(assert (=> mapNonEmpty!53210 (= (arr!41424 _values!1445) (store mapRest!53210 mapKey!53210 mapValue!53210))))

(declare-fun b!1293389 () Bool)

(declare-fun res!859550 () Bool)

(assert (=> b!1293389 (=> (not res!859550) (not e!738171))))

(declare-datatypes ((List!29577 0))(
  ( (Nil!29574) (Cons!29573 (h!30782 (_ BitVec 64)) (t!43148 List!29577)) )
))
(declare-fun arrayNoDuplicates!0 (array!85857 (_ BitVec 32) List!29577) Bool)

(assert (=> b!1293389 (= res!859550 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29574))))

(declare-fun mapIsEmpty!53210 () Bool)

(assert (=> mapIsEmpty!53210 mapRes!53210))

(declare-fun b!1293383 () Bool)

(declare-fun e!738169 () Bool)

(assert (=> b!1293383 (= e!738169 (and e!738170 mapRes!53210))))

(declare-fun condMapEmpty!53210 () Bool)

(declare-fun mapDefault!53210 () ValueCell!16318)


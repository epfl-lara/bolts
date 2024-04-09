; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109382 () Bool)

(assert start!109382)

(declare-fun b_free!28835 () Bool)

(declare-fun b_next!28835 () Bool)

(assert (=> start!109382 (= b_free!28835 (not b_next!28835))))

(declare-fun tp!101624 () Bool)

(declare-fun b_and!46935 () Bool)

(assert (=> start!109382 (= tp!101624 b_and!46935)))

(declare-fun b!1294108 () Bool)

(declare-fun e!738519 () Bool)

(declare-fun tp_is_empty!34475 () Bool)

(assert (=> b!1294108 (= e!738519 tp_is_empty!34475)))

(declare-fun b!1294109 () Bool)

(declare-fun res!860090 () Bool)

(declare-fun e!738520 () Bool)

(assert (=> b!1294109 (=> (not res!860090) (not e!738520))))

(declare-datatypes ((array!85937 0))(
  ( (array!85938 (arr!41465 (Array (_ BitVec 32) (_ BitVec 64))) (size!42016 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85937)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85937 (_ BitVec 32)) Bool)

(assert (=> b!1294109 (= res!860090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1294110 () Bool)

(assert (=> b!1294110 (= e!738520 (not true))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!51069 0))(
  ( (V!51070 (val!17312 Int)) )
))
(declare-datatypes ((tuple2!22428 0))(
  ( (tuple2!22429 (_1!11224 (_ BitVec 64)) (_2!11224 V!51069)) )
))
(declare-datatypes ((List!29606 0))(
  ( (Nil!29603) (Cons!29602 (h!30811 tuple2!22428) (t!43177 List!29606)) )
))
(declare-datatypes ((ListLongMap!20097 0))(
  ( (ListLongMap!20098 (toList!10064 List!29606)) )
))
(declare-fun contains!8120 (ListLongMap!20097 (_ BitVec 64)) Bool)

(assert (=> b!1294110 (not (contains!8120 (ListLongMap!20098 Nil!29603) k!1205))))

(declare-datatypes ((Unit!42801 0))(
  ( (Unit!42802) )
))
(declare-fun lt!579631 () Unit!42801)

(declare-fun emptyContainsNothing!157 ((_ BitVec 64)) Unit!42801)

(assert (=> b!1294110 (= lt!579631 (emptyContainsNothing!157 k!1205))))

(declare-fun b!1294111 () Bool)

(declare-fun res!860093 () Bool)

(assert (=> b!1294111 (=> (not res!860093) (not e!738520))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1294111 (= res!860093 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42016 _keys!1741))))))

(declare-fun b!1294112 () Bool)

(declare-fun e!738522 () Bool)

(assert (=> b!1294112 (= e!738522 tp_is_empty!34475)))

(declare-fun b!1294113 () Bool)

(declare-fun res!860094 () Bool)

(assert (=> b!1294113 (=> (not res!860094) (not e!738520))))

(declare-fun minValue!1387 () V!51069)

(declare-fun zeroValue!1387 () V!51069)

(declare-datatypes ((ValueCell!16339 0))(
  ( (ValueCellFull!16339 (v!19913 V!51069)) (EmptyCell!16339) )
))
(declare-datatypes ((array!85939 0))(
  ( (array!85940 (arr!41466 (Array (_ BitVec 32) ValueCell!16339)) (size!42017 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85939)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5049 (array!85937 array!85939 (_ BitVec 32) (_ BitVec 32) V!51069 V!51069 (_ BitVec 32) Int) ListLongMap!20097)

(assert (=> b!1294113 (= res!860094 (contains!8120 (getCurrentListMap!5049 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1294114 () Bool)

(declare-fun res!860087 () Bool)

(assert (=> b!1294114 (=> (not res!860087) (not e!738520))))

(assert (=> b!1294114 (= res!860087 (and (= (size!42017 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42016 _keys!1741) (size!42017 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!53273 () Bool)

(declare-fun mapRes!53273 () Bool)

(declare-fun tp!101625 () Bool)

(assert (=> mapNonEmpty!53273 (= mapRes!53273 (and tp!101625 e!738519))))

(declare-fun mapKey!53273 () (_ BitVec 32))

(declare-fun mapRest!53273 () (Array (_ BitVec 32) ValueCell!16339))

(declare-fun mapValue!53273 () ValueCell!16339)

(assert (=> mapNonEmpty!53273 (= (arr!41466 _values!1445) (store mapRest!53273 mapKey!53273 mapValue!53273))))

(declare-fun b!1294115 () Bool)

(declare-fun e!738523 () Bool)

(assert (=> b!1294115 (= e!738523 (and e!738522 mapRes!53273))))

(declare-fun condMapEmpty!53273 () Bool)

(declare-fun mapDefault!53273 () ValueCell!16339)


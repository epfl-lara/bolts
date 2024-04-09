; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109144 () Bool)

(assert start!109144)

(declare-fun b_free!28597 () Bool)

(declare-fun b_next!28597 () Bool)

(assert (=> start!109144 (= b_free!28597 (not b_next!28597))))

(declare-fun tp!100911 () Bool)

(declare-fun b_and!46697 () Bool)

(assert (=> start!109144 (= tp!100911 b_and!46697)))

(declare-fun b!1289931 () Bool)

(declare-fun e!736486 () Bool)

(declare-fun tp_is_empty!34237 () Bool)

(assert (=> b!1289931 (= e!736486 tp_is_empty!34237)))

(declare-fun b!1289932 () Bool)

(declare-fun e!736488 () Bool)

(declare-fun e!736484 () Bool)

(assert (=> b!1289932 (= e!736488 (not e!736484))))

(declare-fun res!856989 () Bool)

(assert (=> b!1289932 (=> res!856989 e!736484)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1289932 (= res!856989 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!50753 0))(
  ( (V!50754 (val!17193 Int)) )
))
(declare-datatypes ((tuple2!22224 0))(
  ( (tuple2!22225 (_1!11122 (_ BitVec 64)) (_2!11122 V!50753)) )
))
(declare-datatypes ((List!29421 0))(
  ( (Nil!29418) (Cons!29417 (h!30626 tuple2!22224) (t!42992 List!29421)) )
))
(declare-datatypes ((ListLongMap!19893 0))(
  ( (ListLongMap!19894 (toList!9962 List!29421)) )
))
(declare-fun contains!8018 (ListLongMap!19893 (_ BitVec 64)) Bool)

(assert (=> b!1289932 (not (contains!8018 (ListLongMap!19894 Nil!29418) k!1205))))

(declare-datatypes ((Unit!42615 0))(
  ( (Unit!42616) )
))
(declare-fun lt!578389 () Unit!42615)

(declare-fun emptyContainsNothing!69 ((_ BitVec 64)) Unit!42615)

(assert (=> b!1289932 (= lt!578389 (emptyContainsNothing!69 k!1205))))

(declare-fun b!1289933 () Bool)

(declare-fun res!856985 () Bool)

(assert (=> b!1289933 (=> (not res!856985) (not e!736488))))

(declare-fun minValue!1387 () V!50753)

(declare-fun zeroValue!1387 () V!50753)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16220 0))(
  ( (ValueCellFull!16220 (v!19794 V!50753)) (EmptyCell!16220) )
))
(declare-datatypes ((array!85473 0))(
  ( (array!85474 (arr!41233 (Array (_ BitVec 32) ValueCell!16220)) (size!41784 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85473)

(declare-datatypes ((array!85475 0))(
  ( (array!85476 (arr!41234 (Array (_ BitVec 32) (_ BitVec 64))) (size!41785 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85475)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMap!4964 (array!85475 array!85473 (_ BitVec 32) (_ BitVec 32) V!50753 V!50753 (_ BitVec 32) Int) ListLongMap!19893)

(assert (=> b!1289933 (= res!856985 (contains!8018 (getCurrentListMap!4964 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1289934 () Bool)

(declare-fun res!856987 () Bool)

(assert (=> b!1289934 (=> (not res!856987) (not e!736488))))

(assert (=> b!1289934 (= res!856987 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41785 _keys!1741))))))

(declare-fun b!1289935 () Bool)

(declare-fun e!736485 () Bool)

(assert (=> b!1289935 (= e!736485 tp_is_empty!34237)))

(declare-fun mapNonEmpty!52916 () Bool)

(declare-fun mapRes!52916 () Bool)

(declare-fun tp!100910 () Bool)

(assert (=> mapNonEmpty!52916 (= mapRes!52916 (and tp!100910 e!736485))))

(declare-fun mapValue!52916 () ValueCell!16220)

(declare-fun mapKey!52916 () (_ BitVec 32))

(declare-fun mapRest!52916 () (Array (_ BitVec 32) ValueCell!16220))

(assert (=> mapNonEmpty!52916 (= (arr!41233 _values!1445) (store mapRest!52916 mapKey!52916 mapValue!52916))))

(declare-fun b!1289936 () Bool)

(assert (=> b!1289936 (= e!736484 true)))

(declare-fun lt!578391 () ListLongMap!19893)

(declare-fun +!4332 (ListLongMap!19893 tuple2!22224) ListLongMap!19893)

(assert (=> b!1289936 (not (contains!8018 (+!4332 lt!578391 (tuple2!22225 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!578392 () Unit!42615)

(declare-fun addStillNotContains!377 (ListLongMap!19893 (_ BitVec 64) V!50753 (_ BitVec 64)) Unit!42615)

(assert (=> b!1289936 (= lt!578392 (addStillNotContains!377 lt!578391 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1289936 (not (contains!8018 (+!4332 lt!578391 (tuple2!22225 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!578390 () Unit!42615)

(assert (=> b!1289936 (= lt!578390 (addStillNotContains!377 lt!578391 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6044 (array!85475 array!85473 (_ BitVec 32) (_ BitVec 32) V!50753 V!50753 (_ BitVec 32) Int) ListLongMap!19893)

(assert (=> b!1289936 (= lt!578391 (getCurrentListMapNoExtraKeys!6044 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1289938 () Bool)

(declare-fun res!856986 () Bool)

(assert (=> b!1289938 (=> (not res!856986) (not e!736488))))

(declare-datatypes ((List!29422 0))(
  ( (Nil!29419) (Cons!29418 (h!30627 (_ BitVec 64)) (t!42993 List!29422)) )
))
(declare-fun arrayNoDuplicates!0 (array!85475 (_ BitVec 32) List!29422) Bool)

(assert (=> b!1289938 (= res!856986 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29419))))

(declare-fun b!1289939 () Bool)

(declare-fun res!856983 () Bool)

(assert (=> b!1289939 (=> (not res!856983) (not e!736488))))

(assert (=> b!1289939 (= res!856983 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41785 _keys!1741))))))

(declare-fun mapIsEmpty!52916 () Bool)

(assert (=> mapIsEmpty!52916 mapRes!52916))

(declare-fun b!1289940 () Bool)

(declare-fun res!856982 () Bool)

(assert (=> b!1289940 (=> (not res!856982) (not e!736488))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85475 (_ BitVec 32)) Bool)

(assert (=> b!1289940 (= res!856982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1289941 () Bool)

(declare-fun e!736489 () Bool)

(assert (=> b!1289941 (= e!736489 (and e!736486 mapRes!52916))))

(declare-fun condMapEmpty!52916 () Bool)

(declare-fun mapDefault!52916 () ValueCell!16220)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109442 () Bool)

(assert start!109442)

(declare-fun b_free!28895 () Bool)

(declare-fun b_next!28895 () Bool)

(assert (=> start!109442 (= b_free!28895 (not b_next!28895))))

(declare-fun tp!101805 () Bool)

(declare-fun b_and!46995 () Bool)

(assert (=> start!109442 (= tp!101805 b_and!46995)))

(declare-fun mapIsEmpty!53363 () Bool)

(declare-fun mapRes!53363 () Bool)

(assert (=> mapIsEmpty!53363 mapRes!53363))

(declare-fun b!1295134 () Bool)

(declare-fun res!860845 () Bool)

(declare-fun e!739007 () Bool)

(assert (=> b!1295134 (=> (not res!860845) (not e!739007))))

(declare-datatypes ((array!86053 0))(
  ( (array!86054 (arr!41523 (Array (_ BitVec 32) (_ BitVec 64))) (size!42074 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86053)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1295134 (= res!860845 (not (validKeyInArray!0 (select (arr!41523 _keys!1741) from!2144))))))

(declare-fun b!1295135 () Bool)

(declare-fun e!739004 () Bool)

(assert (=> b!1295135 (= e!739007 (not e!739004))))

(declare-fun res!860847 () Bool)

(assert (=> b!1295135 (=> res!860847 e!739004)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1295135 (= res!860847 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!51149 0))(
  ( (V!51150 (val!17342 Int)) )
))
(declare-datatypes ((tuple2!22478 0))(
  ( (tuple2!22479 (_1!11249 (_ BitVec 64)) (_2!11249 V!51149)) )
))
(declare-datatypes ((List!29647 0))(
  ( (Nil!29644) (Cons!29643 (h!30852 tuple2!22478) (t!43218 List!29647)) )
))
(declare-datatypes ((ListLongMap!20147 0))(
  ( (ListLongMap!20148 (toList!10089 List!29647)) )
))
(declare-fun contains!8145 (ListLongMap!20147 (_ BitVec 64)) Bool)

(assert (=> b!1295135 (not (contains!8145 (ListLongMap!20148 Nil!29644) k!1205))))

(declare-datatypes ((Unit!42845 0))(
  ( (Unit!42846) )
))
(declare-fun lt!579782 () Unit!42845)

(declare-fun emptyContainsNothing!178 ((_ BitVec 64)) Unit!42845)

(assert (=> b!1295135 (= lt!579782 (emptyContainsNothing!178 k!1205))))

(declare-fun b!1295136 () Bool)

(declare-fun res!860849 () Bool)

(assert (=> b!1295136 (=> (not res!860849) (not e!739007))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86053 (_ BitVec 32)) Bool)

(assert (=> b!1295136 (= res!860849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1295137 () Bool)

(declare-fun res!860848 () Bool)

(assert (=> b!1295137 (=> (not res!860848) (not e!739007))))

(assert (=> b!1295137 (= res!860848 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42074 _keys!1741))))))

(declare-fun b!1295133 () Bool)

(declare-fun e!739009 () Bool)

(declare-fun tp_is_empty!34535 () Bool)

(assert (=> b!1295133 (= e!739009 tp_is_empty!34535)))

(declare-fun res!860850 () Bool)

(assert (=> start!109442 (=> (not res!860850) (not e!739007))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109442 (= res!860850 (validMask!0 mask!2175))))

(assert (=> start!109442 e!739007))

(assert (=> start!109442 tp_is_empty!34535))

(assert (=> start!109442 true))

(declare-datatypes ((ValueCell!16369 0))(
  ( (ValueCellFull!16369 (v!19943 V!51149)) (EmptyCell!16369) )
))
(declare-datatypes ((array!86055 0))(
  ( (array!86056 (arr!41524 (Array (_ BitVec 32) ValueCell!16369)) (size!42075 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86055)

(declare-fun e!739005 () Bool)

(declare-fun array_inv!31423 (array!86055) Bool)

(assert (=> start!109442 (and (array_inv!31423 _values!1445) e!739005)))

(declare-fun array_inv!31424 (array!86053) Bool)

(assert (=> start!109442 (array_inv!31424 _keys!1741)))

(assert (=> start!109442 tp!101805))

(declare-fun b!1295138 () Bool)

(declare-fun res!860843 () Bool)

(assert (=> b!1295138 (=> (not res!860843) (not e!739007))))

(declare-fun minValue!1387 () V!51149)

(declare-fun zeroValue!1387 () V!51149)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5070 (array!86053 array!86055 (_ BitVec 32) (_ BitVec 32) V!51149 V!51149 (_ BitVec 32) Int) ListLongMap!20147)

(assert (=> b!1295138 (= res!860843 (contains!8145 (getCurrentListMap!5070 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1295139 () Bool)

(declare-fun res!860846 () Bool)

(assert (=> b!1295139 (=> (not res!860846) (not e!739007))))

(declare-datatypes ((List!29648 0))(
  ( (Nil!29645) (Cons!29644 (h!30853 (_ BitVec 64)) (t!43219 List!29648)) )
))
(declare-fun arrayNoDuplicates!0 (array!86053 (_ BitVec 32) List!29648) Bool)

(assert (=> b!1295139 (= res!860846 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29645))))

(declare-fun b!1295140 () Bool)

(assert (=> b!1295140 (= e!739004 true)))

(declare-fun lt!579783 () ListLongMap!20147)

(declare-fun +!4393 (ListLongMap!20147 tuple2!22478) ListLongMap!20147)

(assert (=> b!1295140 (not (contains!8145 (+!4393 lt!579783 (tuple2!22479 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!579784 () Unit!42845)

(declare-fun addStillNotContains!438 (ListLongMap!20147 (_ BitVec 64) V!51149 (_ BitVec 64)) Unit!42845)

(assert (=> b!1295140 (= lt!579784 (addStillNotContains!438 lt!579783 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6109 (array!86053 array!86055 (_ BitVec 32) (_ BitVec 32) V!51149 V!51149 (_ BitVec 32) Int) ListLongMap!20147)

(assert (=> b!1295140 (= lt!579783 (getCurrentListMapNoExtraKeys!6109 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1295141 () Bool)

(declare-fun res!860844 () Bool)

(assert (=> b!1295141 (=> (not res!860844) (not e!739007))))

(assert (=> b!1295141 (= res!860844 (and (= (size!42075 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42074 _keys!1741) (size!42075 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1295142 () Bool)

(declare-fun e!739006 () Bool)

(assert (=> b!1295142 (= e!739006 tp_is_empty!34535)))

(declare-fun b!1295143 () Bool)

(declare-fun res!860842 () Bool)

(assert (=> b!1295143 (=> (not res!860842) (not e!739007))))

(assert (=> b!1295143 (= res!860842 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42074 _keys!1741))))))

(declare-fun b!1295144 () Bool)

(assert (=> b!1295144 (= e!739005 (and e!739009 mapRes!53363))))

(declare-fun condMapEmpty!53363 () Bool)

(declare-fun mapDefault!53363 () ValueCell!16369)


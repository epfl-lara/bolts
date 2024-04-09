; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109048 () Bool)

(assert start!109048)

(declare-fun b_free!28501 () Bool)

(declare-fun b_next!28501 () Bool)

(assert (=> start!109048 (= b_free!28501 (not b_next!28501))))

(declare-fun tp!100622 () Bool)

(declare-fun b_and!46601 () Bool)

(assert (=> start!109048 (= tp!100622 b_and!46601)))

(declare-fun b!1288203 () Bool)

(declare-fun e!735625 () Bool)

(declare-fun e!735623 () Bool)

(assert (=> b!1288203 (= e!735625 (not e!735623))))

(declare-fun res!855689 () Bool)

(assert (=> b!1288203 (=> res!855689 e!735623)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1288203 (= res!855689 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!50625 0))(
  ( (V!50626 (val!17145 Int)) )
))
(declare-datatypes ((tuple2!22142 0))(
  ( (tuple2!22143 (_1!11081 (_ BitVec 64)) (_2!11081 V!50625)) )
))
(declare-datatypes ((List!29341 0))(
  ( (Nil!29338) (Cons!29337 (h!30546 tuple2!22142) (t!42912 List!29341)) )
))
(declare-datatypes ((ListLongMap!19811 0))(
  ( (ListLongMap!19812 (toList!9921 List!29341)) )
))
(declare-fun contains!7977 (ListLongMap!19811 (_ BitVec 64)) Bool)

(assert (=> b!1288203 (not (contains!7977 (ListLongMap!19812 Nil!29338) k!1205))))

(declare-datatypes ((Unit!42537 0))(
  ( (Unit!42538) )
))
(declare-fun lt!577892 () Unit!42537)

(declare-fun emptyContainsNothing!36 ((_ BitVec 64)) Unit!42537)

(assert (=> b!1288203 (= lt!577892 (emptyContainsNothing!36 k!1205))))

(declare-fun b!1288204 () Bool)

(declare-fun res!855688 () Bool)

(assert (=> b!1288204 (=> (not res!855688) (not e!735625))))

(declare-datatypes ((array!85283 0))(
  ( (array!85284 (arr!41138 (Array (_ BitVec 32) (_ BitVec 64))) (size!41689 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85283)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85283 (_ BitVec 32)) Bool)

(assert (=> b!1288204 (= res!855688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1288205 () Bool)

(declare-fun res!855691 () Bool)

(assert (=> b!1288205 (=> (not res!855691) (not e!735625))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1288205 (= res!855691 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41689 _keys!1741))))))

(declare-fun b!1288206 () Bool)

(declare-fun res!855686 () Bool)

(assert (=> b!1288206 (=> (not res!855686) (not e!735625))))

(declare-datatypes ((ValueCell!16172 0))(
  ( (ValueCellFull!16172 (v!19746 V!50625)) (EmptyCell!16172) )
))
(declare-datatypes ((array!85285 0))(
  ( (array!85286 (arr!41139 (Array (_ BitVec 32) ValueCell!16172)) (size!41690 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85285)

(assert (=> b!1288206 (= res!855686 (and (= (size!41690 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41689 _keys!1741) (size!41690 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1288207 () Bool)

(declare-fun res!855690 () Bool)

(assert (=> b!1288207 (=> (not res!855690) (not e!735625))))

(declare-datatypes ((List!29342 0))(
  ( (Nil!29339) (Cons!29338 (h!30547 (_ BitVec 64)) (t!42913 List!29342)) )
))
(declare-fun arrayNoDuplicates!0 (array!85283 (_ BitVec 32) List!29342) Bool)

(assert (=> b!1288207 (= res!855690 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29339))))

(declare-fun res!855687 () Bool)

(assert (=> start!109048 (=> (not res!855687) (not e!735625))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109048 (= res!855687 (validMask!0 mask!2175))))

(assert (=> start!109048 e!735625))

(declare-fun tp_is_empty!34141 () Bool)

(assert (=> start!109048 tp_is_empty!34141))

(assert (=> start!109048 true))

(declare-fun e!735624 () Bool)

(declare-fun array_inv!31167 (array!85285) Bool)

(assert (=> start!109048 (and (array_inv!31167 _values!1445) e!735624)))

(declare-fun array_inv!31168 (array!85283) Bool)

(assert (=> start!109048 (array_inv!31168 _keys!1741)))

(assert (=> start!109048 tp!100622))

(declare-fun b!1288208 () Bool)

(declare-fun e!735620 () Bool)

(declare-fun mapRes!52772 () Bool)

(assert (=> b!1288208 (= e!735624 (and e!735620 mapRes!52772))))

(declare-fun condMapEmpty!52772 () Bool)

(declare-fun mapDefault!52772 () ValueCell!16172)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109586 () Bool)

(assert start!109586)

(declare-fun b_free!29039 () Bool)

(declare-fun b_next!29039 () Bool)

(assert (=> start!109586 (= b_free!29039 (not b_next!29039))))

(declare-fun tp!102236 () Bool)

(declare-fun b_and!47139 () Bool)

(assert (=> start!109586 (= tp!102236 b_and!47139)))

(declare-fun b!1297405 () Bool)

(declare-fun res!862304 () Bool)

(declare-fun e!740242 () Bool)

(assert (=> b!1297405 (=> (not res!862304) (not e!740242))))

(declare-datatypes ((array!86333 0))(
  ( (array!86334 (arr!41663 (Array (_ BitVec 32) (_ BitVec 64))) (size!42214 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86333)

(declare-datatypes ((List!29752 0))(
  ( (Nil!29749) (Cons!29748 (h!30957 (_ BitVec 64)) (t!43323 List!29752)) )
))
(declare-fun arrayNoDuplicates!0 (array!86333 (_ BitVec 32) List!29752) Bool)

(assert (=> b!1297405 (= res!862304 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29749))))

(declare-fun mapNonEmpty!53579 () Bool)

(declare-fun mapRes!53579 () Bool)

(declare-fun tp!102237 () Bool)

(declare-fun e!740239 () Bool)

(assert (=> mapNonEmpty!53579 (= mapRes!53579 (and tp!102237 e!740239))))

(declare-datatypes ((V!51341 0))(
  ( (V!51342 (val!17414 Int)) )
))
(declare-datatypes ((ValueCell!16441 0))(
  ( (ValueCellFull!16441 (v!20015 V!51341)) (EmptyCell!16441) )
))
(declare-datatypes ((array!86335 0))(
  ( (array!86336 (arr!41664 (Array (_ BitVec 32) ValueCell!16441)) (size!42215 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86335)

(declare-fun mapKey!53579 () (_ BitVec 32))

(declare-fun mapValue!53579 () ValueCell!16441)

(declare-fun mapRest!53579 () (Array (_ BitVec 32) ValueCell!16441))

(assert (=> mapNonEmpty!53579 (= (arr!41664 _values!1445) (store mapRest!53579 mapKey!53579 mapValue!53579))))

(declare-fun b!1297406 () Bool)

(assert (=> b!1297406 (= e!740242 false)))

(declare-fun minValue!1387 () V!51341)

(declare-fun zeroValue!1387 () V!51341)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!580540 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22588 0))(
  ( (tuple2!22589 (_1!11304 (_ BitVec 64)) (_2!11304 V!51341)) )
))
(declare-datatypes ((List!29753 0))(
  ( (Nil!29750) (Cons!29749 (h!30958 tuple2!22588) (t!43324 List!29753)) )
))
(declare-datatypes ((ListLongMap!20257 0))(
  ( (ListLongMap!20258 (toList!10144 List!29753)) )
))
(declare-fun contains!8198 (ListLongMap!20257 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5118 (array!86333 array!86335 (_ BitVec 32) (_ BitVec 32) V!51341 V!51341 (_ BitVec 32) Int) ListLongMap!20257)

(assert (=> b!1297406 (= lt!580540 (contains!8198 (getCurrentListMap!5118 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1297407 () Bool)

(declare-fun tp_is_empty!34679 () Bool)

(assert (=> b!1297407 (= e!740239 tp_is_empty!34679)))

(declare-fun b!1297408 () Bool)

(declare-fun res!862306 () Bool)

(assert (=> b!1297408 (=> (not res!862306) (not e!740242))))

(assert (=> b!1297408 (= res!862306 (and (= (size!42215 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42214 _keys!1741) (size!42215 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!53579 () Bool)

(assert (=> mapIsEmpty!53579 mapRes!53579))

(declare-fun b!1297409 () Bool)

(declare-fun res!862308 () Bool)

(assert (=> b!1297409 (=> (not res!862308) (not e!740242))))

(assert (=> b!1297409 (= res!862308 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42214 _keys!1741))))))

(declare-fun b!1297410 () Bool)

(declare-fun e!740241 () Bool)

(assert (=> b!1297410 (= e!740241 tp_is_empty!34679)))

(declare-fun b!1297411 () Bool)

(declare-fun e!740238 () Bool)

(assert (=> b!1297411 (= e!740238 (and e!740241 mapRes!53579))))

(declare-fun condMapEmpty!53579 () Bool)

(declare-fun mapDefault!53579 () ValueCell!16441)


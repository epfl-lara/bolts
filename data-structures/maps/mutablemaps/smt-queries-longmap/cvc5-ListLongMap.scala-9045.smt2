; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109090 () Bool)

(assert start!109090)

(declare-fun b_free!28543 () Bool)

(declare-fun b_next!28543 () Bool)

(assert (=> start!109090 (= b_free!28543 (not b_next!28543))))

(declare-fun tp!100748 () Bool)

(declare-fun b_and!46643 () Bool)

(assert (=> start!109090 (= tp!100748 b_and!46643)))

(declare-fun b!1288959 () Bool)

(declare-fun e!736000 () Bool)

(declare-fun tp_is_empty!34183 () Bool)

(assert (=> b!1288959 (= e!736000 tp_is_empty!34183)))

(declare-fun b!1288960 () Bool)

(declare-fun e!736003 () Bool)

(assert (=> b!1288960 (= e!736003 true)))

(declare-datatypes ((V!50681 0))(
  ( (V!50682 (val!17166 Int)) )
))
(declare-datatypes ((tuple2!22174 0))(
  ( (tuple2!22175 (_1!11097 (_ BitVec 64)) (_2!11097 V!50681)) )
))
(declare-datatypes ((List!29374 0))(
  ( (Nil!29371) (Cons!29370 (h!30579 tuple2!22174) (t!42945 List!29374)) )
))
(declare-datatypes ((ListLongMap!19843 0))(
  ( (ListLongMap!19844 (toList!9937 List!29374)) )
))
(declare-fun lt!578081 () ListLongMap!19843)

(declare-fun zeroValue!1387 () V!50681)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!7993 (ListLongMap!19843 (_ BitVec 64)) Bool)

(declare-fun +!4312 (ListLongMap!19843 tuple2!22174) ListLongMap!19843)

(assert (=> b!1288960 (not (contains!7993 (+!4312 lt!578081 (tuple2!22175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-datatypes ((Unit!42569 0))(
  ( (Unit!42570) )
))
(declare-fun lt!578082 () Unit!42569)

(declare-fun addStillNotContains!357 (ListLongMap!19843 (_ BitVec 64) V!50681 (_ BitVec 64)) Unit!42569)

(assert (=> b!1288960 (= lt!578082 (addStillNotContains!357 lt!578081 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16193 0))(
  ( (ValueCellFull!16193 (v!19767 V!50681)) (EmptyCell!16193) )
))
(declare-datatypes ((array!85365 0))(
  ( (array!85366 (arr!41179 (Array (_ BitVec 32) ValueCell!16193)) (size!41730 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85365)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85367 0))(
  ( (array!85368 (arr!41180 (Array (_ BitVec 32) (_ BitVec 64))) (size!41731 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85367)

(declare-fun minValue!1387 () V!50681)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6024 (array!85367 array!85365 (_ BitVec 32) (_ BitVec 32) V!50681 V!50681 (_ BitVec 32) Int) ListLongMap!19843)

(assert (=> b!1288960 (= lt!578081 (getCurrentListMapNoExtraKeys!6024 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1288961 () Bool)

(declare-fun res!856256 () Bool)

(declare-fun e!735999 () Bool)

(assert (=> b!1288961 (=> (not res!856256) (not e!735999))))

(declare-datatypes ((List!29375 0))(
  ( (Nil!29372) (Cons!29371 (h!30580 (_ BitVec 64)) (t!42946 List!29375)) )
))
(declare-fun arrayNoDuplicates!0 (array!85367 (_ BitVec 32) List!29375) Bool)

(assert (=> b!1288961 (= res!856256 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29372))))

(declare-fun b!1288963 () Bool)

(declare-fun res!856259 () Bool)

(assert (=> b!1288963 (=> (not res!856259) (not e!735999))))

(assert (=> b!1288963 (= res!856259 (and (= (size!41730 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41731 _keys!1741) (size!41730 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!52835 () Bool)

(declare-fun mapRes!52835 () Bool)

(assert (=> mapIsEmpty!52835 mapRes!52835))

(declare-fun mapNonEmpty!52835 () Bool)

(declare-fun tp!100749 () Bool)

(assert (=> mapNonEmpty!52835 (= mapRes!52835 (and tp!100749 e!736000))))

(declare-fun mapRest!52835 () (Array (_ BitVec 32) ValueCell!16193))

(declare-fun mapKey!52835 () (_ BitVec 32))

(declare-fun mapValue!52835 () ValueCell!16193)

(assert (=> mapNonEmpty!52835 (= (arr!41179 _values!1445) (store mapRest!52835 mapKey!52835 mapValue!52835))))

(declare-fun b!1288964 () Bool)

(declare-fun res!856253 () Bool)

(assert (=> b!1288964 (=> (not res!856253) (not e!735999))))

(declare-fun getCurrentListMap!4940 (array!85367 array!85365 (_ BitVec 32) (_ BitVec 32) V!50681 V!50681 (_ BitVec 32) Int) ListLongMap!19843)

(assert (=> b!1288964 (= res!856253 (contains!7993 (getCurrentListMap!4940 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1288965 () Bool)

(declare-fun res!856252 () Bool)

(assert (=> b!1288965 (=> (not res!856252) (not e!735999))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1288965 (= res!856252 (not (validKeyInArray!0 (select (arr!41180 _keys!1741) from!2144))))))

(declare-fun b!1288966 () Bool)

(declare-fun res!856257 () Bool)

(assert (=> b!1288966 (=> (not res!856257) (not e!735999))))

(assert (=> b!1288966 (= res!856257 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41731 _keys!1741))))))

(declare-fun b!1288967 () Bool)

(declare-fun res!856260 () Bool)

(assert (=> b!1288967 (=> (not res!856260) (not e!735999))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85367 (_ BitVec 32)) Bool)

(assert (=> b!1288967 (= res!856260 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1288968 () Bool)

(declare-fun e!735998 () Bool)

(assert (=> b!1288968 (= e!735998 tp_is_empty!34183)))

(declare-fun b!1288969 () Bool)

(declare-fun e!736001 () Bool)

(assert (=> b!1288969 (= e!736001 (and e!735998 mapRes!52835))))

(declare-fun condMapEmpty!52835 () Bool)

(declare-fun mapDefault!52835 () ValueCell!16193)


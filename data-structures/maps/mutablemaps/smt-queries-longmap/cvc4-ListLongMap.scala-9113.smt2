; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109502 () Bool)

(assert start!109502)

(declare-fun b_free!28955 () Bool)

(declare-fun b_next!28955 () Bool)

(assert (=> start!109502 (= b_free!28955 (not b_next!28955))))

(declare-fun tp!101984 () Bool)

(declare-fun b_and!47055 () Bool)

(assert (=> start!109502 (= tp!101984 b_and!47055)))

(declare-fun b!1296298 () Bool)

(declare-fun res!861642 () Bool)

(declare-fun e!739585 () Bool)

(assert (=> b!1296298 (=> (not res!861642) (not e!739585))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!86169 0))(
  ( (array!86170 (arr!41581 (Array (_ BitVec 32) (_ BitVec 64))) (size!42132 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86169)

(assert (=> b!1296298 (= res!861642 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42132 _keys!1741))))))

(declare-fun bm!63383 () Bool)

(declare-datatypes ((V!51229 0))(
  ( (V!51230 (val!17372 Int)) )
))
(declare-datatypes ((tuple2!22526 0))(
  ( (tuple2!22527 (_1!11273 (_ BitVec 64)) (_2!11273 V!51229)) )
))
(declare-datatypes ((List!29693 0))(
  ( (Nil!29690) (Cons!29689 (h!30898 tuple2!22526) (t!43264 List!29693)) )
))
(declare-datatypes ((ListLongMap!20195 0))(
  ( (ListLongMap!20196 (toList!10113 List!29693)) )
))
(declare-fun call!63387 () ListLongMap!20195)

(declare-fun call!63396 () ListLongMap!20195)

(assert (=> bm!63383 (= call!63387 call!63396)))

(declare-fun zeroValue!1387 () V!51229)

(declare-fun c!124328 () Bool)

(declare-datatypes ((Unit!42892 0))(
  ( (Unit!42893) )
))
(declare-fun call!63392 () Unit!42892)

(declare-fun c!124330 () Bool)

(declare-fun bm!63384 () Bool)

(declare-fun minValue!1387 () V!51229)

(declare-fun lt!580283 () ListLongMap!20195)

(declare-fun lt!580282 () ListLongMap!20195)

(declare-fun lt!580286 () ListLongMap!20195)

(declare-fun addStillNotContains!458 (ListLongMap!20195 (_ BitVec 64) V!51229 (_ BitVec 64)) Unit!42892)

(assert (=> bm!63384 (= call!63392 (addStillNotContains!458 (ite c!124328 lt!580286 (ite c!124330 lt!580282 lt!580283)) (ite (or c!124328 c!124330) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124328 c!124330) zeroValue!1387 minValue!1387) k!1205))))

(declare-fun b!1296299 () Bool)

(declare-fun res!861639 () Bool)

(assert (=> b!1296299 (=> (not res!861639) (not e!739585))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1296299 (= res!861639 (not (validKeyInArray!0 (select (arr!41581 _keys!1741) from!2144))))))

(declare-fun bm!63385 () Bool)

(declare-fun call!63394 () ListLongMap!20195)

(declare-fun call!63393 () ListLongMap!20195)

(assert (=> bm!63385 (= call!63394 call!63393)))

(declare-fun bm!63386 () Bool)

(declare-fun call!63395 () Unit!42892)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!62 ((_ BitVec 64) (_ BitVec 64) V!51229 ListLongMap!20195) Unit!42892)

(assert (=> bm!63386 (= call!63395 (lemmaInListMapAfterAddingDiffThenInBefore!62 k!1205 (ite (or c!124328 c!124330) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124328 c!124330) zeroValue!1387 minValue!1387) (ite c!124328 lt!580286 (ite c!124330 lt!580282 lt!580283))))))

(declare-fun b!1296300 () Bool)

(declare-fun e!739583 () Unit!42892)

(declare-fun lt!580287 () Unit!42892)

(assert (=> b!1296300 (= e!739583 lt!580287)))

(assert (=> b!1296300 (= lt!580283 call!63387)))

(declare-fun lt!580285 () Unit!42892)

(declare-fun call!63388 () Unit!42892)

(assert (=> b!1296300 (= lt!580285 call!63388)))

(declare-fun call!63397 () Bool)

(assert (=> b!1296300 (not call!63397)))

(declare-fun call!63391 () Unit!42892)

(assert (=> b!1296300 (= lt!580287 call!63391)))

(declare-fun call!63389 () Bool)

(assert (=> b!1296300 call!63389))

(declare-fun mapIsEmpty!53453 () Bool)

(declare-fun mapRes!53453 () Bool)

(assert (=> mapIsEmpty!53453 mapRes!53453))

(declare-fun b!1296301 () Bool)

(declare-fun res!861638 () Bool)

(assert (=> b!1296301 (=> (not res!861638) (not e!739585))))

(assert (=> b!1296301 (= res!861638 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42132 _keys!1741))))))

(declare-fun b!1296302 () Bool)

(declare-fun c!124329 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun lt!580280 () Bool)

(assert (=> b!1296302 (= c!124329 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!580280))))

(declare-fun e!739582 () Unit!42892)

(assert (=> b!1296302 (= e!739582 e!739583)))

(declare-fun res!861637 () Bool)

(assert (=> start!109502 (=> (not res!861637) (not e!739585))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109502 (= res!861637 (validMask!0 mask!2175))))

(assert (=> start!109502 e!739585))

(declare-fun tp_is_empty!34595 () Bool)

(assert (=> start!109502 tp_is_empty!34595))

(assert (=> start!109502 true))

(declare-datatypes ((ValueCell!16399 0))(
  ( (ValueCellFull!16399 (v!19973 V!51229)) (EmptyCell!16399) )
))
(declare-datatypes ((array!86171 0))(
  ( (array!86172 (arr!41582 (Array (_ BitVec 32) ValueCell!16399)) (size!42133 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86171)

(declare-fun e!739580 () Bool)

(declare-fun array_inv!31469 (array!86171) Bool)

(assert (=> start!109502 (and (array_inv!31469 _values!1445) e!739580)))

(declare-fun array_inv!31470 (array!86169) Bool)

(assert (=> start!109502 (array_inv!31470 _keys!1741)))

(assert (=> start!109502 tp!101984))

(declare-fun b!1296303 () Bool)

(declare-fun e!739578 () Bool)

(assert (=> b!1296303 (= e!739580 (and e!739578 mapRes!53453))))

(declare-fun condMapEmpty!53453 () Bool)

(declare-fun mapDefault!53453 () ValueCell!16399)


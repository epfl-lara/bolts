; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98610 () Bool)

(assert start!98610)

(declare-fun b_free!24179 () Bool)

(declare-fun b_next!24179 () Bool)

(assert (=> start!98610 (= b_free!24179 (not b_next!24179))))

(declare-fun tp!85249 () Bool)

(declare-fun b_and!39221 () Bool)

(assert (=> start!98610 (= tp!85249 b_and!39221)))

(declare-datatypes ((V!43405 0))(
  ( (V!43406 (val!14411 Int)) )
))
(declare-fun zeroValue!944 () V!43405)

(declare-fun bm!51686 () Bool)

(declare-datatypes ((tuple2!18328 0))(
  ( (tuple2!18329 (_1!9174 (_ BitVec 64)) (_2!9174 V!43405)) )
))
(declare-datatypes ((List!25127 0))(
  ( (Nil!25124) (Cons!25123 (h!26332 tuple2!18328) (t!36305 List!25127)) )
))
(declare-datatypes ((ListLongMap!16309 0))(
  ( (ListLongMap!16310 (toList!8170 List!25127)) )
))
(declare-fun lt!509777 () ListLongMap!16309)

(declare-fun call!51696 () ListLongMap!16309)

(declare-fun c!112421 () Bool)

(declare-fun c!112422 () Bool)

(declare-fun lt!509792 () ListLongMap!16309)

(declare-fun minValue!944 () V!43405)

(declare-fun +!3514 (ListLongMap!16309 tuple2!18328) ListLongMap!16309)

(assert (=> bm!51686 (= call!51696 (+!3514 (ite c!112422 lt!509792 lt!509777) (ite c!112422 (tuple2!18329 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!112421 (tuple2!18329 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18329 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1143210 () Bool)

(declare-fun res!761780 () Bool)

(declare-fun e!650379 () Bool)

(assert (=> b!1143210 (=> (not res!761780) (not e!650379))))

(declare-datatypes ((array!74228 0))(
  ( (array!74229 (arr!35761 (Array (_ BitVec 32) (_ BitVec 64))) (size!36298 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74228)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74228 (_ BitVec 32)) Bool)

(assert (=> b!1143210 (= res!761780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1143211 () Bool)

(declare-datatypes ((Unit!37442 0))(
  ( (Unit!37443) )
))
(declare-fun e!650386 () Unit!37442)

(declare-fun lt!509782 () Unit!37442)

(assert (=> b!1143211 (= e!650386 lt!509782)))

(declare-fun call!51690 () Unit!37442)

(assert (=> b!1143211 (= lt!509782 call!51690)))

(declare-fun call!51693 () Bool)

(assert (=> b!1143211 call!51693))

(declare-fun bm!51687 () Bool)

(declare-fun call!51689 () Unit!37442)

(assert (=> bm!51687 (= call!51690 call!51689)))

(declare-fun b!1143212 () Bool)

(declare-fun e!650391 () Bool)

(declare-fun e!650389 () Bool)

(declare-fun mapRes!44888 () Bool)

(assert (=> b!1143212 (= e!650391 (and e!650389 mapRes!44888))))

(declare-fun condMapEmpty!44888 () Bool)

(declare-datatypes ((ValueCell!13645 0))(
  ( (ValueCellFull!13645 (v!17049 V!43405)) (EmptyCell!13645) )
))
(declare-datatypes ((array!74230 0))(
  ( (array!74231 (arr!35762 (Array (_ BitVec 32) ValueCell!13645)) (size!36299 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74230)

(declare-fun mapDefault!44888 () ValueCell!13645)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72578 () Bool)

(assert start!72578)

(declare-fun b_free!13735 () Bool)

(declare-fun b_next!13735 () Bool)

(assert (=> start!72578 (= b_free!13735 (not b_next!13735))))

(declare-fun tp!48305 () Bool)

(declare-fun b_and!22839 () Bool)

(assert (=> start!72578 (= tp!48305 b_and!22839)))

(declare-fun b!841994 () Bool)

(declare-fun res!572427 () Bool)

(declare-fun e!469676 () Bool)

(assert (=> b!841994 (=> (not res!572427) (not e!469676))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!47444 0))(
  ( (array!47445 (arr!22749 (Array (_ BitVec 32) (_ BitVec 64))) (size!23190 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47444)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!841994 (= res!572427 (and (= (select (arr!22749 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23190 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun res!572429 () Bool)

(assert (=> start!72578 (=> (not res!572429) (not e!469676))))

(assert (=> start!72578 (= res!572429 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23190 _keys!868))))))

(assert (=> start!72578 e!469676))

(declare-fun tp_is_empty!15601 () Bool)

(assert (=> start!72578 tp_is_empty!15601))

(assert (=> start!72578 true))

(assert (=> start!72578 tp!48305))

(declare-fun array_inv!18084 (array!47444) Bool)

(assert (=> start!72578 (array_inv!18084 _keys!868)))

(declare-datatypes ((V!25849 0))(
  ( (V!25850 (val!7848 Int)) )
))
(declare-datatypes ((ValueCell!7361 0))(
  ( (ValueCellFull!7361 (v!10269 V!25849)) (EmptyCell!7361) )
))
(declare-datatypes ((array!47446 0))(
  ( (array!47447 (arr!22750 (Array (_ BitVec 32) ValueCell!7361)) (size!23191 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47446)

(declare-fun e!469679 () Bool)

(declare-fun array_inv!18085 (array!47446) Bool)

(assert (=> start!72578 (and (array_inv!18085 _values!688) e!469679)))

(declare-fun b!841995 () Bool)

(declare-fun res!572426 () Bool)

(assert (=> b!841995 (=> (not res!572426) (not e!469676))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!841995 (= res!572426 (validKeyInArray!0 k!854))))

(declare-fun mapIsEmpty!25001 () Bool)

(declare-fun mapRes!25001 () Bool)

(assert (=> mapIsEmpty!25001 mapRes!25001))

(declare-fun b!841996 () Bool)

(declare-fun res!572428 () Bool)

(assert (=> b!841996 (=> (not res!572428) (not e!469676))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!841996 (= res!572428 (validMask!0 mask!1196))))

(declare-fun v!557 () V!25849)

(declare-fun b!841997 () Bool)

(declare-fun e!469677 () Bool)

(declare-datatypes ((tuple2!10438 0))(
  ( (tuple2!10439 (_1!5229 (_ BitVec 64)) (_2!5229 V!25849)) )
))
(declare-datatypes ((List!16262 0))(
  ( (Nil!16259) (Cons!16258 (h!17389 tuple2!10438) (t!22641 List!16262)) )
))
(declare-datatypes ((ListLongMap!9221 0))(
  ( (ListLongMap!9222 (toList!4626 List!16262)) )
))
(declare-fun call!37438 () ListLongMap!9221)

(declare-fun call!37439 () ListLongMap!9221)

(declare-fun +!2028 (ListLongMap!9221 tuple2!10438) ListLongMap!9221)

(assert (=> b!841997 (= e!469677 (= call!37439 (+!2028 call!37438 (tuple2!10439 k!854 v!557))))))

(declare-fun b!841998 () Bool)

(assert (=> b!841998 (= e!469676 (not true))))

(assert (=> b!841998 e!469677))

(declare-fun c!91380 () Bool)

(assert (=> b!841998 (= c!91380 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!25849)

(declare-fun zeroValue!654 () V!25849)

(declare-datatypes ((Unit!28910 0))(
  ( (Unit!28911) )
))
(declare-fun lt!380913 () Unit!28910)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!304 (array!47444 array!47446 (_ BitVec 32) (_ BitVec 32) V!25849 V!25849 (_ BitVec 32) (_ BitVec 64) V!25849 (_ BitVec 32) Int) Unit!28910)

(assert (=> b!841998 (= lt!380913 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!304 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!37435 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2615 (array!47444 array!47446 (_ BitVec 32) (_ BitVec 32) V!25849 V!25849 (_ BitVec 32) Int) ListLongMap!9221)

(assert (=> bm!37435 (= call!37439 (getCurrentListMapNoExtraKeys!2615 _keys!868 (array!47447 (store (arr!22750 _values!688) i!612 (ValueCellFull!7361 v!557)) (size!23191 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841999 () Bool)

(declare-fun res!572423 () Bool)

(assert (=> b!841999 (=> (not res!572423) (not e!469676))))

(assert (=> b!841999 (= res!572423 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23190 _keys!868))))))

(declare-fun b!842000 () Bool)

(declare-fun e!469680 () Bool)

(assert (=> b!842000 (= e!469679 (and e!469680 mapRes!25001))))

(declare-fun condMapEmpty!25001 () Bool)

(declare-fun mapDefault!25001 () ValueCell!7361)


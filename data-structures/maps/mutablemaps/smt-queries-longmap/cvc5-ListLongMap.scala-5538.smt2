; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73040 () Bool)

(assert start!73040)

(declare-fun b_free!13927 () Bool)

(declare-fun b_next!13927 () Bool)

(assert (=> start!73040 (= b_free!13927 (not b_next!13927))))

(declare-fun tp!49285 () Bool)

(declare-fun b_and!23031 () Bool)

(assert (=> start!73040 (= tp!49285 b_and!23031)))

(declare-fun b!848289 () Bool)

(declare-fun e!473338 () Bool)

(declare-fun e!473339 () Bool)

(assert (=> b!848289 (= e!473338 (not e!473339))))

(declare-fun res!576445 () Bool)

(assert (=> b!848289 (=> res!576445 e!473339)))

(declare-datatypes ((array!48318 0))(
  ( (array!48319 (arr!23186 (Array (_ BitVec 32) (_ BitVec 64))) (size!23627 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48318)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!848289 (= res!576445 (not (validKeyInArray!0 (select (arr!23186 _keys!868) from!1053))))))

(declare-fun e!473335 () Bool)

(assert (=> b!848289 e!473335))

(declare-fun c!91479 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!848289 (= c!91479 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((V!26465 0))(
  ( (V!26466 (val!8079 Int)) )
))
(declare-fun v!557 () V!26465)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7592 0))(
  ( (ValueCellFull!7592 (v!10500 V!26465)) (EmptyCell!7592) )
))
(declare-datatypes ((array!48320 0))(
  ( (array!48321 (arr!23187 (Array (_ BitVec 32) ValueCell!7592)) (size!23628 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48320)

(declare-fun minValue!654 () V!26465)

(declare-fun zeroValue!654 () V!26465)

(declare-datatypes ((Unit!28952 0))(
  ( (Unit!28953) )
))
(declare-fun lt!381963 () Unit!28952)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!325 (array!48318 array!48320 (_ BitVec 32) (_ BitVec 32) V!26465 V!26465 (_ BitVec 32) (_ BitVec 64) V!26465 (_ BitVec 32) Int) Unit!28952)

(assert (=> b!848289 (= lt!381963 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!325 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!576441 () Bool)

(declare-fun e!473333 () Bool)

(assert (=> start!73040 (=> (not res!576441) (not e!473333))))

(assert (=> start!73040 (= res!576441 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23627 _keys!868))))))

(assert (=> start!73040 e!473333))

(declare-fun tp_is_empty!16063 () Bool)

(assert (=> start!73040 tp_is_empty!16063))

(assert (=> start!73040 true))

(assert (=> start!73040 tp!49285))

(declare-fun array_inv!18388 (array!48318) Bool)

(assert (=> start!73040 (array_inv!18388 _keys!868)))

(declare-fun e!473337 () Bool)

(declare-fun array_inv!18389 (array!48320) Bool)

(assert (=> start!73040 (and (array_inv!18389 _values!688) e!473337)))

(declare-fun b!848290 () Bool)

(declare-fun res!576444 () Bool)

(assert (=> b!848290 (=> (not res!576444) (not e!473333))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48318 (_ BitVec 32)) Bool)

(assert (=> b!848290 (= res!576444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!848291 () Bool)

(declare-fun e!473340 () Bool)

(assert (=> b!848291 (= e!473340 tp_is_empty!16063)))

(declare-fun b!848292 () Bool)

(declare-fun res!576449 () Bool)

(assert (=> b!848292 (=> (not res!576449) (not e!473333))))

(assert (=> b!848292 (= res!576449 (and (= (size!23628 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23627 _keys!868) (size!23628 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!848293 () Bool)

(declare-fun res!576450 () Bool)

(assert (=> b!848293 (=> (not res!576450) (not e!473333))))

(declare-datatypes ((List!16485 0))(
  ( (Nil!16482) (Cons!16481 (h!17612 (_ BitVec 64)) (t!22866 List!16485)) )
))
(declare-fun arrayNoDuplicates!0 (array!48318 (_ BitVec 32) List!16485) Bool)

(assert (=> b!848293 (= res!576450 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16482))))

(declare-fun mapIsEmpty!25694 () Bool)

(declare-fun mapRes!25694 () Bool)

(assert (=> mapIsEmpty!25694 mapRes!25694))

(declare-fun b!848294 () Bool)

(assert (=> b!848294 (= e!473337 (and e!473340 mapRes!25694))))

(declare-fun condMapEmpty!25694 () Bool)

(declare-fun mapDefault!25694 () ValueCell!7592)


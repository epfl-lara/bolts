; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72594 () Bool)

(assert start!72594)

(declare-fun b!842258 () Bool)

(declare-fun res!572585 () Bool)

(declare-fun e!469815 () Bool)

(assert (=> b!842258 (=> (not res!572585) (not e!469815))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842258 (= res!572585 (validMask!0 mask!1196))))

(declare-fun b!842259 () Bool)

(assert (=> b!842259 (= e!469815 false)))

(declare-fun lt!380937 () Bool)

(declare-datatypes ((array!47476 0))(
  ( (array!47477 (arr!22765 (Array (_ BitVec 32) (_ BitVec 64))) (size!23206 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47476)

(declare-datatypes ((List!16272 0))(
  ( (Nil!16269) (Cons!16268 (h!17399 (_ BitVec 64)) (t!22651 List!16272)) )
))
(declare-fun arrayNoDuplicates!0 (array!47476 (_ BitVec 32) List!16272) Bool)

(assert (=> b!842259 (= lt!380937 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16269))))

(declare-fun res!572584 () Bool)

(assert (=> start!72594 (=> (not res!572584) (not e!469815))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72594 (= res!572584 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23206 _keys!868))))))

(assert (=> start!72594 e!469815))

(assert (=> start!72594 true))

(declare-fun array_inv!18096 (array!47476) Bool)

(assert (=> start!72594 (array_inv!18096 _keys!868)))

(declare-datatypes ((V!25869 0))(
  ( (V!25870 (val!7856 Int)) )
))
(declare-datatypes ((ValueCell!7369 0))(
  ( (ValueCellFull!7369 (v!10277 V!25869)) (EmptyCell!7369) )
))
(declare-datatypes ((array!47478 0))(
  ( (array!47479 (arr!22766 (Array (_ BitVec 32) ValueCell!7369)) (size!23207 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47478)

(declare-fun e!469812 () Bool)

(declare-fun array_inv!18097 (array!47478) Bool)

(assert (=> start!72594 (and (array_inv!18097 _values!688) e!469812)))

(declare-fun mapIsEmpty!25025 () Bool)

(declare-fun mapRes!25025 () Bool)

(assert (=> mapIsEmpty!25025 mapRes!25025))

(declare-fun mapNonEmpty!25025 () Bool)

(declare-fun tp!48344 () Bool)

(declare-fun e!469813 () Bool)

(assert (=> mapNonEmpty!25025 (= mapRes!25025 (and tp!48344 e!469813))))

(declare-fun mapValue!25025 () ValueCell!7369)

(declare-fun mapKey!25025 () (_ BitVec 32))

(declare-fun mapRest!25025 () (Array (_ BitVec 32) ValueCell!7369))

(assert (=> mapNonEmpty!25025 (= (arr!22766 _values!688) (store mapRest!25025 mapKey!25025 mapValue!25025))))

(declare-fun b!842260 () Bool)

(declare-fun res!572586 () Bool)

(assert (=> b!842260 (=> (not res!572586) (not e!469815))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!842260 (= res!572586 (and (= (size!23207 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23206 _keys!868) (size!23207 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842261 () Bool)

(declare-fun e!469814 () Bool)

(assert (=> b!842261 (= e!469812 (and e!469814 mapRes!25025))))

(declare-fun condMapEmpty!25025 () Bool)

(declare-fun mapDefault!25025 () ValueCell!7369)


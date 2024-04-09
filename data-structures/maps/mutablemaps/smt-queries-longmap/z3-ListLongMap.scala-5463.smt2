; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72592 () Bool)

(assert start!72592)

(declare-fun b!842237 () Bool)

(declare-fun e!469798 () Bool)

(assert (=> b!842237 (= e!469798 false)))

(declare-fun lt!380934 () Bool)

(declare-datatypes ((array!47472 0))(
  ( (array!47473 (arr!22763 (Array (_ BitVec 32) (_ BitVec 64))) (size!23204 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47472)

(declare-datatypes ((List!16271 0))(
  ( (Nil!16268) (Cons!16267 (h!17398 (_ BitVec 64)) (t!22650 List!16271)) )
))
(declare-fun arrayNoDuplicates!0 (array!47472 (_ BitVec 32) List!16271) Bool)

(assert (=> b!842237 (= lt!380934 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16268))))

(declare-fun res!572574 () Bool)

(assert (=> start!72592 (=> (not res!572574) (not e!469798))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72592 (= res!572574 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23204 _keys!868))))))

(assert (=> start!72592 e!469798))

(assert (=> start!72592 true))

(declare-fun array_inv!18094 (array!47472) Bool)

(assert (=> start!72592 (array_inv!18094 _keys!868)))

(declare-datatypes ((V!25867 0))(
  ( (V!25868 (val!7855 Int)) )
))
(declare-datatypes ((ValueCell!7368 0))(
  ( (ValueCellFull!7368 (v!10276 V!25867)) (EmptyCell!7368) )
))
(declare-datatypes ((array!47474 0))(
  ( (array!47475 (arr!22764 (Array (_ BitVec 32) ValueCell!7368)) (size!23205 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47474)

(declare-fun e!469800 () Bool)

(declare-fun array_inv!18095 (array!47474) Bool)

(assert (=> start!72592 (and (array_inv!18095 _values!688) e!469800)))

(declare-fun mapIsEmpty!25022 () Bool)

(declare-fun mapRes!25022 () Bool)

(assert (=> mapIsEmpty!25022 mapRes!25022))

(declare-fun b!842238 () Bool)

(declare-fun e!469799 () Bool)

(assert (=> b!842238 (= e!469800 (and e!469799 mapRes!25022))))

(declare-fun condMapEmpty!25022 () Bool)

(declare-fun mapDefault!25022 () ValueCell!7368)

(assert (=> b!842238 (= condMapEmpty!25022 (= (arr!22764 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7368)) mapDefault!25022)))))

(declare-fun b!842239 () Bool)

(declare-fun res!572573 () Bool)

(assert (=> b!842239 (=> (not res!572573) (not e!469798))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47472 (_ BitVec 32)) Bool)

(assert (=> b!842239 (= res!572573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!842240 () Bool)

(declare-fun e!469796 () Bool)

(declare-fun tp_is_empty!15615 () Bool)

(assert (=> b!842240 (= e!469796 tp_is_empty!15615)))

(declare-fun b!842241 () Bool)

(declare-fun res!572571 () Bool)

(assert (=> b!842241 (=> (not res!572571) (not e!469798))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!842241 (= res!572571 (and (= (size!23205 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23204 _keys!868) (size!23205 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842242 () Bool)

(declare-fun res!572572 () Bool)

(assert (=> b!842242 (=> (not res!572572) (not e!469798))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842242 (= res!572572 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!25022 () Bool)

(declare-fun tp!48341 () Bool)

(assert (=> mapNonEmpty!25022 (= mapRes!25022 (and tp!48341 e!469796))))

(declare-fun mapRest!25022 () (Array (_ BitVec 32) ValueCell!7368))

(declare-fun mapKey!25022 () (_ BitVec 32))

(declare-fun mapValue!25022 () ValueCell!7368)

(assert (=> mapNonEmpty!25022 (= (arr!22764 _values!688) (store mapRest!25022 mapKey!25022 mapValue!25022))))

(declare-fun b!842243 () Bool)

(assert (=> b!842243 (= e!469799 tp_is_empty!15615)))

(assert (= (and start!72592 res!572574) b!842242))

(assert (= (and b!842242 res!572572) b!842241))

(assert (= (and b!842241 res!572571) b!842239))

(assert (= (and b!842239 res!572573) b!842237))

(assert (= (and b!842238 condMapEmpty!25022) mapIsEmpty!25022))

(assert (= (and b!842238 (not condMapEmpty!25022)) mapNonEmpty!25022))

(get-info :version)

(assert (= (and mapNonEmpty!25022 ((_ is ValueCellFull!7368) mapValue!25022)) b!842240))

(assert (= (and b!842238 ((_ is ValueCellFull!7368) mapDefault!25022)) b!842243))

(assert (= start!72592 b!842238))

(declare-fun m!785477 () Bool)

(assert (=> b!842242 m!785477))

(declare-fun m!785479 () Bool)

(assert (=> b!842239 m!785479))

(declare-fun m!785481 () Bool)

(assert (=> mapNonEmpty!25022 m!785481))

(declare-fun m!785483 () Bool)

(assert (=> b!842237 m!785483))

(declare-fun m!785485 () Bool)

(assert (=> start!72592 m!785485))

(declare-fun m!785487 () Bool)

(assert (=> start!72592 m!785487))

(check-sat tp_is_empty!15615 (not mapNonEmpty!25022) (not start!72592) (not b!842239) (not b!842242) (not b!842237))
(check-sat)

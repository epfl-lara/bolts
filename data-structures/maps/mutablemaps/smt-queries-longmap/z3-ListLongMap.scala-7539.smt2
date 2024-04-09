; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95592 () Bool)

(assert start!95592)

(declare-fun res!719283 () Bool)

(declare-fun e!617076 () Bool)

(assert (=> start!95592 (=> (not res!719283) (not e!617076))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95592 (= res!719283 (validMask!0 mask!1414))))

(assert (=> start!95592 e!617076))

(assert (=> start!95592 true))

(declare-datatypes ((array!69334 0))(
  ( (array!69335 (arr!33337 (Array (_ BitVec 32) (_ BitVec 64))) (size!33874 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69334)

(declare-fun array_inv!25616 (array!69334) Bool)

(assert (=> start!95592 (array_inv!25616 _keys!1070)))

(declare-datatypes ((V!40075 0))(
  ( (V!40076 (val!13162 Int)) )
))
(declare-datatypes ((ValueCell!12396 0))(
  ( (ValueCellFull!12396 (v!15784 V!40075)) (EmptyCell!12396) )
))
(declare-datatypes ((array!69336 0))(
  ( (array!69337 (arr!33338 (Array (_ BitVec 32) ValueCell!12396)) (size!33875 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69336)

(declare-fun e!617075 () Bool)

(declare-fun array_inv!25617 (array!69336) Bool)

(assert (=> start!95592 (and (array_inv!25617 _values!874) e!617075)))

(declare-fun b!1079227 () Bool)

(declare-fun res!719279 () Bool)

(assert (=> b!1079227 (=> (not res!719279) (not e!617076))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1079227 (= res!719279 (validKeyInArray!0 k0!904))))

(declare-fun b!1079228 () Bool)

(declare-fun e!617073 () Bool)

(assert (=> b!1079228 (= e!617076 e!617073)))

(declare-fun res!719284 () Bool)

(assert (=> b!1079228 (=> (not res!719284) (not e!617073))))

(declare-fun lt!478763 () array!69334)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69334 (_ BitVec 32)) Bool)

(assert (=> b!1079228 (= res!719284 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478763 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1079228 (= lt!478763 (array!69335 (store (arr!33337 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33874 _keys!1070)))))

(declare-fun b!1079229 () Bool)

(assert (=> b!1079229 (= e!617073 (not true))))

(declare-fun arrayContainsKey!0 (array!69334 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1079229 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35433 0))(
  ( (Unit!35434) )
))
(declare-fun lt!478762 () Unit!35433)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69334 (_ BitVec 64) (_ BitVec 32)) Unit!35433)

(assert (=> b!1079229 (= lt!478762 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1079230 () Bool)

(declare-fun e!617072 () Bool)

(declare-fun tp_is_empty!26211 () Bool)

(assert (=> b!1079230 (= e!617072 tp_is_empty!26211)))

(declare-fun b!1079231 () Bool)

(declare-fun res!719277 () Bool)

(assert (=> b!1079231 (=> (not res!719277) (not e!617076))))

(assert (=> b!1079231 (= res!719277 (= (select (arr!33337 _keys!1070) i!650) k0!904))))

(declare-fun b!1079232 () Bool)

(declare-fun res!719278 () Bool)

(assert (=> b!1079232 (=> (not res!719278) (not e!617076))))

(declare-datatypes ((List!23372 0))(
  ( (Nil!23369) (Cons!23368 (h!24577 (_ BitVec 64)) (t!32738 List!23372)) )
))
(declare-fun arrayNoDuplicates!0 (array!69334 (_ BitVec 32) List!23372) Bool)

(assert (=> b!1079232 (= res!719278 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23369))))

(declare-fun b!1079233 () Bool)

(declare-fun res!719281 () Bool)

(assert (=> b!1079233 (=> (not res!719281) (not e!617073))))

(assert (=> b!1079233 (= res!719281 (arrayNoDuplicates!0 lt!478763 #b00000000000000000000000000000000 Nil!23369))))

(declare-fun b!1079234 () Bool)

(declare-fun res!719282 () Bool)

(assert (=> b!1079234 (=> (not res!719282) (not e!617076))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1079234 (= res!719282 (and (= (size!33875 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33874 _keys!1070) (size!33875 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!41071 () Bool)

(declare-fun mapRes!41071 () Bool)

(assert (=> mapIsEmpty!41071 mapRes!41071))

(declare-fun b!1079235 () Bool)

(declare-fun e!617074 () Bool)

(assert (=> b!1079235 (= e!617074 tp_is_empty!26211)))

(declare-fun b!1079236 () Bool)

(declare-fun res!719285 () Bool)

(assert (=> b!1079236 (=> (not res!719285) (not e!617076))))

(assert (=> b!1079236 (= res!719285 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33874 _keys!1070))))))

(declare-fun b!1079237 () Bool)

(declare-fun res!719280 () Bool)

(assert (=> b!1079237 (=> (not res!719280) (not e!617076))))

(assert (=> b!1079237 (= res!719280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1079238 () Bool)

(assert (=> b!1079238 (= e!617075 (and e!617072 mapRes!41071))))

(declare-fun condMapEmpty!41071 () Bool)

(declare-fun mapDefault!41071 () ValueCell!12396)

(assert (=> b!1079238 (= condMapEmpty!41071 (= (arr!33338 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12396)) mapDefault!41071)))))

(declare-fun mapNonEmpty!41071 () Bool)

(declare-fun tp!78534 () Bool)

(assert (=> mapNonEmpty!41071 (= mapRes!41071 (and tp!78534 e!617074))))

(declare-fun mapRest!41071 () (Array (_ BitVec 32) ValueCell!12396))

(declare-fun mapValue!41071 () ValueCell!12396)

(declare-fun mapKey!41071 () (_ BitVec 32))

(assert (=> mapNonEmpty!41071 (= (arr!33338 _values!874) (store mapRest!41071 mapKey!41071 mapValue!41071))))

(assert (= (and start!95592 res!719283) b!1079234))

(assert (= (and b!1079234 res!719282) b!1079237))

(assert (= (and b!1079237 res!719280) b!1079232))

(assert (= (and b!1079232 res!719278) b!1079236))

(assert (= (and b!1079236 res!719285) b!1079227))

(assert (= (and b!1079227 res!719279) b!1079231))

(assert (= (and b!1079231 res!719277) b!1079228))

(assert (= (and b!1079228 res!719284) b!1079233))

(assert (= (and b!1079233 res!719281) b!1079229))

(assert (= (and b!1079238 condMapEmpty!41071) mapIsEmpty!41071))

(assert (= (and b!1079238 (not condMapEmpty!41071)) mapNonEmpty!41071))

(get-info :version)

(assert (= (and mapNonEmpty!41071 ((_ is ValueCellFull!12396) mapValue!41071)) b!1079235))

(assert (= (and b!1079238 ((_ is ValueCellFull!12396) mapDefault!41071)) b!1079230))

(assert (= start!95592 b!1079238))

(declare-fun m!997619 () Bool)

(assert (=> b!1079227 m!997619))

(declare-fun m!997621 () Bool)

(assert (=> b!1079231 m!997621))

(declare-fun m!997623 () Bool)

(assert (=> b!1079237 m!997623))

(declare-fun m!997625 () Bool)

(assert (=> start!95592 m!997625))

(declare-fun m!997627 () Bool)

(assert (=> start!95592 m!997627))

(declare-fun m!997629 () Bool)

(assert (=> start!95592 m!997629))

(declare-fun m!997631 () Bool)

(assert (=> b!1079228 m!997631))

(declare-fun m!997633 () Bool)

(assert (=> b!1079228 m!997633))

(declare-fun m!997635 () Bool)

(assert (=> b!1079233 m!997635))

(declare-fun m!997637 () Bool)

(assert (=> b!1079229 m!997637))

(declare-fun m!997639 () Bool)

(assert (=> b!1079229 m!997639))

(declare-fun m!997641 () Bool)

(assert (=> b!1079232 m!997641))

(declare-fun m!997643 () Bool)

(assert (=> mapNonEmpty!41071 m!997643))

(check-sat (not b!1079237) (not mapNonEmpty!41071) (not b!1079229) (not b!1079233) (not b!1079232) (not start!95592) tp_is_empty!26211 (not b!1079227) (not b!1079228))
(check-sat)

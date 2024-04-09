; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95598 () Bool)

(assert start!95598)

(declare-fun b!1079335 () Bool)

(declare-fun res!719365 () Bool)

(declare-fun e!617131 () Bool)

(assert (=> b!1079335 (=> (not res!719365) (not e!617131))))

(declare-datatypes ((array!69346 0))(
  ( (array!69347 (arr!33343 (Array (_ BitVec 32) (_ BitVec 64))) (size!33880 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69346)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69346 (_ BitVec 32)) Bool)

(assert (=> b!1079335 (= res!719365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1079336 () Bool)

(declare-fun e!617128 () Bool)

(assert (=> b!1079336 (= e!617128 (not true))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69346 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1079336 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35437 0))(
  ( (Unit!35438) )
))
(declare-fun lt!478781 () Unit!35437)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69346 (_ BitVec 64) (_ BitVec 32)) Unit!35437)

(assert (=> b!1079336 (= lt!478781 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1079337 () Bool)

(declare-fun res!719366 () Bool)

(assert (=> b!1079337 (=> (not res!719366) (not e!617131))))

(assert (=> b!1079337 (= res!719366 (= (select (arr!33343 _keys!1070) i!650) k0!904))))

(declare-fun b!1079338 () Bool)

(declare-fun res!719364 () Bool)

(assert (=> b!1079338 (=> (not res!719364) (not e!617131))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1079338 (= res!719364 (validKeyInArray!0 k0!904))))

(declare-fun mapIsEmpty!41080 () Bool)

(declare-fun mapRes!41080 () Bool)

(assert (=> mapIsEmpty!41080 mapRes!41080))

(declare-fun b!1079339 () Bool)

(declare-fun res!719362 () Bool)

(assert (=> b!1079339 (=> (not res!719362) (not e!617131))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40083 0))(
  ( (V!40084 (val!13165 Int)) )
))
(declare-datatypes ((ValueCell!12399 0))(
  ( (ValueCellFull!12399 (v!15787 V!40083)) (EmptyCell!12399) )
))
(declare-datatypes ((array!69348 0))(
  ( (array!69349 (arr!33344 (Array (_ BitVec 32) ValueCell!12399)) (size!33881 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69348)

(assert (=> b!1079339 (= res!719362 (and (= (size!33881 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33880 _keys!1070) (size!33881 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!41080 () Bool)

(declare-fun tp!78543 () Bool)

(declare-fun e!617130 () Bool)

(assert (=> mapNonEmpty!41080 (= mapRes!41080 (and tp!78543 e!617130))))

(declare-fun mapValue!41080 () ValueCell!12399)

(declare-fun mapKey!41080 () (_ BitVec 32))

(declare-fun mapRest!41080 () (Array (_ BitVec 32) ValueCell!12399))

(assert (=> mapNonEmpty!41080 (= (arr!33344 _values!874) (store mapRest!41080 mapKey!41080 mapValue!41080))))

(declare-fun b!1079341 () Bool)

(declare-fun tp_is_empty!26217 () Bool)

(assert (=> b!1079341 (= e!617130 tp_is_empty!26217)))

(declare-fun b!1079342 () Bool)

(assert (=> b!1079342 (= e!617131 e!617128)))

(declare-fun res!719359 () Bool)

(assert (=> b!1079342 (=> (not res!719359) (not e!617128))))

(declare-fun lt!478780 () array!69346)

(assert (=> b!1079342 (= res!719359 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478780 mask!1414))))

(assert (=> b!1079342 (= lt!478780 (array!69347 (store (arr!33343 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33880 _keys!1070)))))

(declare-fun b!1079343 () Bool)

(declare-fun res!719361 () Bool)

(assert (=> b!1079343 (=> (not res!719361) (not e!617128))))

(declare-datatypes ((List!23375 0))(
  ( (Nil!23372) (Cons!23371 (h!24580 (_ BitVec 64)) (t!32741 List!23375)) )
))
(declare-fun arrayNoDuplicates!0 (array!69346 (_ BitVec 32) List!23375) Bool)

(assert (=> b!1079343 (= res!719361 (arrayNoDuplicates!0 lt!478780 #b00000000000000000000000000000000 Nil!23372))))

(declare-fun b!1079344 () Bool)

(declare-fun e!617127 () Bool)

(declare-fun e!617126 () Bool)

(assert (=> b!1079344 (= e!617127 (and e!617126 mapRes!41080))))

(declare-fun condMapEmpty!41080 () Bool)

(declare-fun mapDefault!41080 () ValueCell!12399)

(assert (=> b!1079344 (= condMapEmpty!41080 (= (arr!33344 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12399)) mapDefault!41080)))))

(declare-fun res!719360 () Bool)

(assert (=> start!95598 (=> (not res!719360) (not e!617131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95598 (= res!719360 (validMask!0 mask!1414))))

(assert (=> start!95598 e!617131))

(assert (=> start!95598 true))

(declare-fun array_inv!25618 (array!69346) Bool)

(assert (=> start!95598 (array_inv!25618 _keys!1070)))

(declare-fun array_inv!25619 (array!69348) Bool)

(assert (=> start!95598 (and (array_inv!25619 _values!874) e!617127)))

(declare-fun b!1079340 () Bool)

(declare-fun res!719363 () Bool)

(assert (=> b!1079340 (=> (not res!719363) (not e!617131))))

(assert (=> b!1079340 (= res!719363 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23372))))

(declare-fun b!1079345 () Bool)

(assert (=> b!1079345 (= e!617126 tp_is_empty!26217)))

(declare-fun b!1079346 () Bool)

(declare-fun res!719358 () Bool)

(assert (=> b!1079346 (=> (not res!719358) (not e!617131))))

(assert (=> b!1079346 (= res!719358 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33880 _keys!1070))))))

(assert (= (and start!95598 res!719360) b!1079339))

(assert (= (and b!1079339 res!719362) b!1079335))

(assert (= (and b!1079335 res!719365) b!1079340))

(assert (= (and b!1079340 res!719363) b!1079346))

(assert (= (and b!1079346 res!719358) b!1079338))

(assert (= (and b!1079338 res!719364) b!1079337))

(assert (= (and b!1079337 res!719366) b!1079342))

(assert (= (and b!1079342 res!719359) b!1079343))

(assert (= (and b!1079343 res!719361) b!1079336))

(assert (= (and b!1079344 condMapEmpty!41080) mapIsEmpty!41080))

(assert (= (and b!1079344 (not condMapEmpty!41080)) mapNonEmpty!41080))

(get-info :version)

(assert (= (and mapNonEmpty!41080 ((_ is ValueCellFull!12399) mapValue!41080)) b!1079341))

(assert (= (and b!1079344 ((_ is ValueCellFull!12399) mapDefault!41080)) b!1079345))

(assert (= start!95598 b!1079344))

(declare-fun m!997697 () Bool)

(assert (=> b!1079340 m!997697))

(declare-fun m!997699 () Bool)

(assert (=> b!1079336 m!997699))

(declare-fun m!997701 () Bool)

(assert (=> b!1079336 m!997701))

(declare-fun m!997703 () Bool)

(assert (=> b!1079338 m!997703))

(declare-fun m!997705 () Bool)

(assert (=> b!1079343 m!997705))

(declare-fun m!997707 () Bool)

(assert (=> mapNonEmpty!41080 m!997707))

(declare-fun m!997709 () Bool)

(assert (=> b!1079337 m!997709))

(declare-fun m!997711 () Bool)

(assert (=> b!1079342 m!997711))

(declare-fun m!997713 () Bool)

(assert (=> b!1079342 m!997713))

(declare-fun m!997715 () Bool)

(assert (=> start!95598 m!997715))

(declare-fun m!997717 () Bool)

(assert (=> start!95598 m!997717))

(declare-fun m!997719 () Bool)

(assert (=> start!95598 m!997719))

(declare-fun m!997721 () Bool)

(assert (=> b!1079335 m!997721))

(check-sat (not b!1079340) (not b!1079335) tp_is_empty!26217 (not mapNonEmpty!41080) (not start!95598) (not b!1079342) (not b!1079343) (not b!1079336) (not b!1079338))
(check-sat)

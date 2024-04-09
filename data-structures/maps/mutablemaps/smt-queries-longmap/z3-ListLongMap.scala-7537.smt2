; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95580 () Bool)

(assert start!95580)

(declare-fun b!1079011 () Bool)

(declare-fun res!719123 () Bool)

(declare-fun e!616968 () Bool)

(assert (=> b!1079011 (=> (not res!719123) (not e!616968))))

(declare-datatypes ((array!69310 0))(
  ( (array!69311 (arr!33325 (Array (_ BitVec 32) (_ BitVec 64))) (size!33862 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69310)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69310 (_ BitVec 32)) Bool)

(assert (=> b!1079011 (= res!719123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1079012 () Bool)

(declare-fun res!719120 () Bool)

(declare-fun e!616967 () Bool)

(assert (=> b!1079012 (=> (not res!719120) (not e!616967))))

(declare-fun lt!478727 () array!69310)

(declare-datatypes ((List!23366 0))(
  ( (Nil!23363) (Cons!23362 (h!24571 (_ BitVec 64)) (t!32732 List!23366)) )
))
(declare-fun arrayNoDuplicates!0 (array!69310 (_ BitVec 32) List!23366) Bool)

(assert (=> b!1079012 (= res!719120 (arrayNoDuplicates!0 lt!478727 #b00000000000000000000000000000000 Nil!23363))))

(declare-fun b!1079013 () Bool)

(assert (=> b!1079013 (= e!616967 (not true))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69310 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1079013 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35423 0))(
  ( (Unit!35424) )
))
(declare-fun lt!478726 () Unit!35423)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69310 (_ BitVec 64) (_ BitVec 32)) Unit!35423)

(assert (=> b!1079013 (= lt!478726 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1079014 () Bool)

(declare-fun e!616964 () Bool)

(declare-fun tp_is_empty!26199 () Bool)

(assert (=> b!1079014 (= e!616964 tp_is_empty!26199)))

(declare-fun b!1079015 () Bool)

(declare-fun res!719121 () Bool)

(assert (=> b!1079015 (=> (not res!719121) (not e!616968))))

(assert (=> b!1079015 (= res!719121 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23363))))

(declare-fun b!1079016 () Bool)

(declare-fun e!616965 () Bool)

(declare-fun e!616969 () Bool)

(declare-fun mapRes!41053 () Bool)

(assert (=> b!1079016 (= e!616965 (and e!616969 mapRes!41053))))

(declare-fun condMapEmpty!41053 () Bool)

(declare-datatypes ((V!40059 0))(
  ( (V!40060 (val!13156 Int)) )
))
(declare-datatypes ((ValueCell!12390 0))(
  ( (ValueCellFull!12390 (v!15778 V!40059)) (EmptyCell!12390) )
))
(declare-datatypes ((array!69312 0))(
  ( (array!69313 (arr!33326 (Array (_ BitVec 32) ValueCell!12390)) (size!33863 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69312)

(declare-fun mapDefault!41053 () ValueCell!12390)

(assert (=> b!1079016 (= condMapEmpty!41053 (= (arr!33326 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12390)) mapDefault!41053)))))

(declare-fun b!1079017 () Bool)

(declare-fun res!719117 () Bool)

(assert (=> b!1079017 (=> (not res!719117) (not e!616968))))

(assert (=> b!1079017 (= res!719117 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33862 _keys!1070))))))

(declare-fun b!1079018 () Bool)

(assert (=> b!1079018 (= e!616969 tp_is_empty!26199)))

(declare-fun b!1079019 () Bool)

(declare-fun res!719115 () Bool)

(assert (=> b!1079019 (=> (not res!719115) (not e!616968))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1079019 (= res!719115 (and (= (size!33863 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33862 _keys!1070) (size!33863 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1079020 () Bool)

(declare-fun res!719118 () Bool)

(assert (=> b!1079020 (=> (not res!719118) (not e!616968))))

(assert (=> b!1079020 (= res!719118 (= (select (arr!33325 _keys!1070) i!650) k0!904))))

(declare-fun res!719116 () Bool)

(assert (=> start!95580 (=> (not res!719116) (not e!616968))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95580 (= res!719116 (validMask!0 mask!1414))))

(assert (=> start!95580 e!616968))

(assert (=> start!95580 true))

(declare-fun array_inv!25606 (array!69310) Bool)

(assert (=> start!95580 (array_inv!25606 _keys!1070)))

(declare-fun array_inv!25607 (array!69312) Bool)

(assert (=> start!95580 (and (array_inv!25607 _values!874) e!616965)))

(declare-fun mapIsEmpty!41053 () Bool)

(assert (=> mapIsEmpty!41053 mapRes!41053))

(declare-fun mapNonEmpty!41053 () Bool)

(declare-fun tp!78516 () Bool)

(assert (=> mapNonEmpty!41053 (= mapRes!41053 (and tp!78516 e!616964))))

(declare-fun mapKey!41053 () (_ BitVec 32))

(declare-fun mapRest!41053 () (Array (_ BitVec 32) ValueCell!12390))

(declare-fun mapValue!41053 () ValueCell!12390)

(assert (=> mapNonEmpty!41053 (= (arr!33326 _values!874) (store mapRest!41053 mapKey!41053 mapValue!41053))))

(declare-fun b!1079021 () Bool)

(assert (=> b!1079021 (= e!616968 e!616967)))

(declare-fun res!719122 () Bool)

(assert (=> b!1079021 (=> (not res!719122) (not e!616967))))

(assert (=> b!1079021 (= res!719122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478727 mask!1414))))

(assert (=> b!1079021 (= lt!478727 (array!69311 (store (arr!33325 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33862 _keys!1070)))))

(declare-fun b!1079022 () Bool)

(declare-fun res!719119 () Bool)

(assert (=> b!1079022 (=> (not res!719119) (not e!616968))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1079022 (= res!719119 (validKeyInArray!0 k0!904))))

(assert (= (and start!95580 res!719116) b!1079019))

(assert (= (and b!1079019 res!719115) b!1079011))

(assert (= (and b!1079011 res!719123) b!1079015))

(assert (= (and b!1079015 res!719121) b!1079017))

(assert (= (and b!1079017 res!719117) b!1079022))

(assert (= (and b!1079022 res!719119) b!1079020))

(assert (= (and b!1079020 res!719118) b!1079021))

(assert (= (and b!1079021 res!719122) b!1079012))

(assert (= (and b!1079012 res!719120) b!1079013))

(assert (= (and b!1079016 condMapEmpty!41053) mapIsEmpty!41053))

(assert (= (and b!1079016 (not condMapEmpty!41053)) mapNonEmpty!41053))

(get-info :version)

(assert (= (and mapNonEmpty!41053 ((_ is ValueCellFull!12390) mapValue!41053)) b!1079014))

(assert (= (and b!1079016 ((_ is ValueCellFull!12390) mapDefault!41053)) b!1079018))

(assert (= start!95580 b!1079016))

(declare-fun m!997463 () Bool)

(assert (=> b!1079012 m!997463))

(declare-fun m!997465 () Bool)

(assert (=> start!95580 m!997465))

(declare-fun m!997467 () Bool)

(assert (=> start!95580 m!997467))

(declare-fun m!997469 () Bool)

(assert (=> start!95580 m!997469))

(declare-fun m!997471 () Bool)

(assert (=> b!1079020 m!997471))

(declare-fun m!997473 () Bool)

(assert (=> b!1079015 m!997473))

(declare-fun m!997475 () Bool)

(assert (=> mapNonEmpty!41053 m!997475))

(declare-fun m!997477 () Bool)

(assert (=> b!1079013 m!997477))

(declare-fun m!997479 () Bool)

(assert (=> b!1079013 m!997479))

(declare-fun m!997481 () Bool)

(assert (=> b!1079021 m!997481))

(declare-fun m!997483 () Bool)

(assert (=> b!1079021 m!997483))

(declare-fun m!997485 () Bool)

(assert (=> b!1079022 m!997485))

(declare-fun m!997487 () Bool)

(assert (=> b!1079011 m!997487))

(check-sat (not start!95580) (not b!1079011) (not b!1079021) (not mapNonEmpty!41053) (not b!1079012) tp_is_empty!26199 (not b!1079013) (not b!1079022) (not b!1079015))
(check-sat)

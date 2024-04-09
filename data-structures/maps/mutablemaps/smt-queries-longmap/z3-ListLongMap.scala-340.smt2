; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6198 () Bool)

(assert start!6198)

(declare-fun res!25183 () Bool)

(declare-fun e!26790 () Bool)

(assert (=> start!6198 (=> (not res!25183) (not e!26790))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6198 (= res!25183 (validMask!0 mask!853))))

(assert (=> start!6198 e!26790))

(assert (=> start!6198 true))

(declare-fun b!42321 () Bool)

(assert (=> b!42321 (= e!26790 (not true))))

(declare-datatypes ((array!2793 0))(
  ( (array!2794 (arr!1340 (Array (_ BitVec 32) (_ BitVec 64))) (size!1507 (_ BitVec 32))) )
))
(declare-fun lt!17469 () array!2793)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2793 (_ BitVec 32)) Bool)

(assert (=> b!42321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17469 mask!853)))

(declare-datatypes ((Unit!1117 0))(
  ( (Unit!1118) )
))
(declare-fun lt!17470 () Unit!1117)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2793 (_ BitVec 32) (_ BitVec 32)) Unit!1117)

(assert (=> b!42321 (= lt!17470 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17469 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2793 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42321 (= (arrayCountValidKeys!0 lt!17469 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17468 () Unit!1117)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2793 (_ BitVec 32) (_ BitVec 32)) Unit!1117)

(assert (=> b!42321 (= lt!17468 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17469 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42321 (= lt!17469 (array!2794 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6198 res!25183) b!42321))

(declare-fun m!35943 () Bool)

(assert (=> start!6198 m!35943))

(declare-fun m!35945 () Bool)

(assert (=> b!42321 m!35945))

(declare-fun m!35947 () Bool)

(assert (=> b!42321 m!35947))

(declare-fun m!35949 () Bool)

(assert (=> b!42321 m!35949))

(declare-fun m!35951 () Bool)

(assert (=> b!42321 m!35951))

(check-sat (not b!42321) (not start!6198))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6162 () Bool)

(assert start!6162)

(declare-fun res!25156 () Bool)

(declare-fun e!26745 () Bool)

(assert (=> start!6162 (=> (not res!25156) (not e!26745))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6162 (= res!25156 (validMask!0 mask!853))))

(assert (=> start!6162 e!26745))

(assert (=> start!6162 true))

(declare-fun b!42258 () Bool)

(assert (=> b!42258 (= e!26745 (not true))))

(declare-datatypes ((array!2775 0))(
  ( (array!2776 (arr!1331 (Array (_ BitVec 32) (_ BitVec 64))) (size!1495 (_ BitVec 32))) )
))
(declare-fun lt!17391 () array!2775)

(declare-fun arrayCountValidKeys!0 (array!2775 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42258 (= (arrayCountValidKeys!0 lt!17391 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1099 0))(
  ( (Unit!1100) )
))
(declare-fun lt!17392 () Unit!1099)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2775 (_ BitVec 32) (_ BitVec 32)) Unit!1099)

(assert (=> b!42258 (= lt!17392 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17391 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42258 (= lt!17391 (array!2776 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6162 res!25156) b!42258))

(declare-fun m!35861 () Bool)

(assert (=> start!6162 m!35861))

(declare-fun m!35863 () Bool)

(assert (=> b!42258 m!35863))

(declare-fun m!35865 () Bool)

(assert (=> b!42258 m!35865))

(check-sat (not b!42258) (not start!6162))

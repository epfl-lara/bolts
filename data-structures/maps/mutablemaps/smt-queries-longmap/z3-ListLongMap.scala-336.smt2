; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6156 () Bool)

(assert start!6156)

(declare-fun res!25147 () Bool)

(declare-fun e!26736 () Bool)

(assert (=> start!6156 (=> (not res!25147) (not e!26736))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6156 (= res!25147 (validMask!0 mask!853))))

(assert (=> start!6156 e!26736))

(assert (=> start!6156 true))

(declare-fun b!42249 () Bool)

(assert (=> b!42249 (= e!26736 (not true))))

(declare-datatypes ((array!2769 0))(
  ( (array!2770 (arr!1328 (Array (_ BitVec 32) (_ BitVec 64))) (size!1492 (_ BitVec 32))) )
))
(declare-fun lt!17373 () array!2769)

(declare-fun arrayCountValidKeys!0 (array!2769 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42249 (= (arrayCountValidKeys!0 lt!17373 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1093 0))(
  ( (Unit!1094) )
))
(declare-fun lt!17374 () Unit!1093)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2769 (_ BitVec 32) (_ BitVec 32)) Unit!1093)

(assert (=> b!42249 (= lt!17374 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17373 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42249 (= lt!17373 (array!2770 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6156 res!25147) b!42249))

(declare-fun m!35843 () Bool)

(assert (=> start!6156 m!35843))

(declare-fun m!35845 () Bool)

(assert (=> b!42249 m!35845))

(declare-fun m!35847 () Bool)

(assert (=> b!42249 m!35847))

(check-sat (not b!42249) (not start!6156))
(check-sat)

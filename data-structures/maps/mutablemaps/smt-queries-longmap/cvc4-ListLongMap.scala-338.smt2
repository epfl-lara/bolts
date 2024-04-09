; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6170 () Bool)

(assert start!6170)

(declare-fun res!25168 () Bool)

(declare-fun e!26757 () Bool)

(assert (=> start!6170 (=> (not res!25168) (not e!26757))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6170 (= res!25168 (validMask!0 mask!853))))

(assert (=> start!6170 e!26757))

(assert (=> start!6170 true))

(declare-fun b!42270 () Bool)

(assert (=> b!42270 (= e!26757 (not true))))

(declare-datatypes ((array!2783 0))(
  ( (array!2784 (arr!1335 (Array (_ BitVec 32) (_ BitVec 64))) (size!1499 (_ BitVec 32))) )
))
(declare-fun lt!17415 () array!2783)

(declare-fun arrayCountValidKeys!0 (array!2783 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42270 (= (arrayCountValidKeys!0 lt!17415 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1107 0))(
  ( (Unit!1108) )
))
(declare-fun lt!17416 () Unit!1107)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2783 (_ BitVec 32) (_ BitVec 32)) Unit!1107)

(assert (=> b!42270 (= lt!17416 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17415 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42270 (= lt!17415 (array!2784 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6170 res!25168) b!42270))

(declare-fun m!35885 () Bool)

(assert (=> start!6170 m!35885))

(declare-fun m!35887 () Bool)

(assert (=> b!42270 m!35887))

(declare-fun m!35889 () Bool)

(assert (=> b!42270 m!35889))

(push 1)

(assert (not b!42270))

(assert (not start!6170))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


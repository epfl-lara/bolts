; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6168 () Bool)

(assert start!6168)

(declare-fun res!25165 () Bool)

(declare-fun e!26754 () Bool)

(assert (=> start!6168 (=> (not res!25165) (not e!26754))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6168 (= res!25165 (validMask!0 mask!853))))

(assert (=> start!6168 e!26754))

(assert (=> start!6168 true))

(declare-fun b!42267 () Bool)

(assert (=> b!42267 (= e!26754 (not true))))

(declare-datatypes ((array!2781 0))(
  ( (array!2782 (arr!1334 (Array (_ BitVec 32) (_ BitVec 64))) (size!1498 (_ BitVec 32))) )
))
(declare-fun lt!17409 () array!2781)

(declare-fun arrayCountValidKeys!0 (array!2781 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42267 (= (arrayCountValidKeys!0 lt!17409 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1105 0))(
  ( (Unit!1106) )
))
(declare-fun lt!17410 () Unit!1105)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2781 (_ BitVec 32) (_ BitVec 32)) Unit!1105)

(assert (=> b!42267 (= lt!17410 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17409 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42267 (= lt!17409 (array!2782 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6168 res!25165) b!42267))

(declare-fun m!35879 () Bool)

(assert (=> start!6168 m!35879))

(declare-fun m!35881 () Bool)

(assert (=> b!42267 m!35881))

(declare-fun m!35883 () Bool)

(assert (=> b!42267 m!35883))

(check-sat (not start!6168) (not b!42267))
(check-sat)

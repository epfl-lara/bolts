; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6242 () Bool)

(assert start!6242)

(declare-fun res!25222 () Bool)

(declare-fun e!26856 () Bool)

(assert (=> start!6242 (=> (not res!25222) (not e!26856))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6242 (= res!25222 (validMask!0 mask!853))))

(assert (=> start!6242 e!26856))

(assert (=> start!6242 true))

(declare-fun b!42414 () Bool)

(assert (=> b!42414 (= e!26856 (not true))))

(declare-datatypes ((array!2807 0))(
  ( (array!2808 (arr!1347 (Array (_ BitVec 32) (_ BitVec 64))) (size!1517 (_ BitVec 32))) )
))
(declare-fun lt!17586 () array!2807)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2807 (_ BitVec 32)) Bool)

(assert (=> b!42414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17586 mask!853)))

(declare-datatypes ((Unit!1131 0))(
  ( (Unit!1132) )
))
(declare-fun lt!17587 () Unit!1131)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2807 (_ BitVec 32) (_ BitVec 32)) Unit!1131)

(assert (=> b!42414 (= lt!17587 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17586 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2807 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42414 (= (arrayCountValidKeys!0 lt!17586 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17585 () Unit!1131)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2807 (_ BitVec 32) (_ BitVec 32)) Unit!1131)

(assert (=> b!42414 (= lt!17585 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17586 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42414 (= lt!17586 (array!2808 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6242 res!25222) b!42414))

(declare-fun m!36067 () Bool)

(assert (=> start!6242 m!36067))

(declare-fun m!36069 () Bool)

(assert (=> b!42414 m!36069))

(declare-fun m!36071 () Bool)

(assert (=> b!42414 m!36071))

(declare-fun m!36073 () Bool)

(assert (=> b!42414 m!36073))

(declare-fun m!36075 () Bool)

(assert (=> b!42414 m!36075))

(push 1)

(assert (not b!42414))

(assert (not start!6242))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


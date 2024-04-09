; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6158 () Bool)

(assert start!6158)

(declare-fun res!25150 () Bool)

(declare-fun e!26739 () Bool)

(assert (=> start!6158 (=> (not res!25150) (not e!26739))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6158 (= res!25150 (validMask!0 mask!853))))

(assert (=> start!6158 e!26739))

(assert (=> start!6158 true))

(declare-fun b!42252 () Bool)

(assert (=> b!42252 (= e!26739 (not true))))

(declare-datatypes ((array!2771 0))(
  ( (array!2772 (arr!1329 (Array (_ BitVec 32) (_ BitVec 64))) (size!1493 (_ BitVec 32))) )
))
(declare-fun lt!17379 () array!2771)

(declare-fun arrayCountValidKeys!0 (array!2771 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42252 (= (arrayCountValidKeys!0 lt!17379 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1095 0))(
  ( (Unit!1096) )
))
(declare-fun lt!17380 () Unit!1095)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2771 (_ BitVec 32) (_ BitVec 32)) Unit!1095)

(assert (=> b!42252 (= lt!17380 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17379 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42252 (= lt!17379 (array!2772 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6158 res!25150) b!42252))

(declare-fun m!35849 () Bool)

(assert (=> start!6158 m!35849))

(declare-fun m!35851 () Bool)

(assert (=> b!42252 m!35851))

(declare-fun m!35853 () Bool)

(assert (=> b!42252 m!35853))

(push 1)

(assert (not b!42252))

(assert (not start!6158))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


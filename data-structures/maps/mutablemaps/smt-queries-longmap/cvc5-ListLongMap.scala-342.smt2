; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6238 () Bool)

(assert start!6238)

(declare-fun res!25216 () Bool)

(declare-fun e!26850 () Bool)

(assert (=> start!6238 (=> (not res!25216) (not e!26850))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6238 (= res!25216 (validMask!0 mask!853))))

(assert (=> start!6238 e!26850))

(assert (=> start!6238 true))

(declare-fun b!42408 () Bool)

(assert (=> b!42408 (= e!26850 (not true))))

(declare-datatypes ((array!2803 0))(
  ( (array!2804 (arr!1345 (Array (_ BitVec 32) (_ BitVec 64))) (size!1515 (_ BitVec 32))) )
))
(declare-fun lt!17569 () array!2803)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2803 (_ BitVec 32)) Bool)

(assert (=> b!42408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17569 mask!853)))

(declare-datatypes ((Unit!1127 0))(
  ( (Unit!1128) )
))
(declare-fun lt!17568 () Unit!1127)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2803 (_ BitVec 32) (_ BitVec 32)) Unit!1127)

(assert (=> b!42408 (= lt!17568 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17569 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2803 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42408 (= (arrayCountValidKeys!0 lt!17569 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17567 () Unit!1127)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2803 (_ BitVec 32) (_ BitVec 32)) Unit!1127)

(assert (=> b!42408 (= lt!17567 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17569 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42408 (= lt!17569 (array!2804 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6238 res!25216) b!42408))

(declare-fun m!36047 () Bool)

(assert (=> start!6238 m!36047))

(declare-fun m!36049 () Bool)

(assert (=> b!42408 m!36049))

(declare-fun m!36051 () Bool)

(assert (=> b!42408 m!36051))

(declare-fun m!36053 () Bool)

(assert (=> b!42408 m!36053))

(declare-fun m!36055 () Bool)

(assert (=> b!42408 m!36055))

(push 1)

(assert (not b!42408))

(assert (not start!6238))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53014 () Bool)

(assert start!53014)

(declare-fun b!576952 () Bool)

(declare-fun res!365136 () Bool)

(declare-fun e!331900 () Bool)

(assert (=> b!576952 (=> (not res!365136) (not e!331900))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!35986 0))(
  ( (array!35987 (arr!17268 (Array (_ BitVec 32) (_ BitVec 64))) (size!17632 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35986)

(assert (=> b!576952 (= res!365136 (and (= (size!17632 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17632 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17632 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!576953 () Bool)

(declare-fun res!365138 () Bool)

(assert (=> b!576953 (=> (not res!365138) (not e!331900))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576953 (= res!365138 (validKeyInArray!0 (select (arr!17268 a!2986) j!136)))))

(declare-fun res!365137 () Bool)

(assert (=> start!53014 (=> (not res!365137) (not e!331900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53014 (= res!365137 (validMask!0 mask!3053))))

(assert (=> start!53014 e!331900))

(assert (=> start!53014 true))

(declare-fun array_inv!13042 (array!35986) Bool)

(assert (=> start!53014 (array_inv!13042 a!2986)))

(declare-fun b!576954 () Bool)

(assert (=> b!576954 (= e!331900 false)))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5715 0))(
  ( (MissingZero!5715 (index!25087 (_ BitVec 32))) (Found!5715 (index!25088 (_ BitVec 32))) (Intermediate!5715 (undefined!6527 Bool) (index!25089 (_ BitVec 32)) (x!54035 (_ BitVec 32))) (Undefined!5715) (MissingVacant!5715 (index!25090 (_ BitVec 32))) )
))
(declare-fun lt!263870 () SeekEntryResult!5715)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35986 (_ BitVec 32)) SeekEntryResult!5715)

(assert (=> b!576954 (= lt!263870 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!576955 () Bool)

(declare-fun res!365134 () Bool)

(assert (=> b!576955 (=> (not res!365134) (not e!331900))))

(assert (=> b!576955 (= res!365134 (validKeyInArray!0 k!1786))))

(declare-fun b!576956 () Bool)

(declare-fun res!365135 () Bool)

(assert (=> b!576956 (=> (not res!365135) (not e!331900))))

(declare-fun arrayContainsKey!0 (array!35986 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576956 (= res!365135 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53014 res!365137) b!576952))

(assert (= (and b!576952 res!365136) b!576953))

(assert (= (and b!576953 res!365138) b!576955))

(assert (= (and b!576955 res!365134) b!576956))

(assert (= (and b!576956 res!365135) b!576954))

(declare-fun m!555901 () Bool)

(assert (=> b!576956 m!555901))

(declare-fun m!555903 () Bool)

(assert (=> b!576953 m!555903))

(assert (=> b!576953 m!555903))

(declare-fun m!555905 () Bool)

(assert (=> b!576953 m!555905))

(declare-fun m!555907 () Bool)

(assert (=> b!576955 m!555907))

(declare-fun m!555909 () Bool)

(assert (=> start!53014 m!555909))

(declare-fun m!555911 () Bool)

(assert (=> start!53014 m!555911))

(declare-fun m!555913 () Bool)

(assert (=> b!576954 m!555913))

(push 1)

(assert (not b!576955))

(assert (not b!576954))

(assert (not start!53014))

(assert (not b!576953))

(assert (not b!576956))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


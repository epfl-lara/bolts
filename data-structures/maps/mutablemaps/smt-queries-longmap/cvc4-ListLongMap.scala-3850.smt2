; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53006 () Bool)

(assert start!53006)

(declare-fun b!576883 () Bool)

(declare-fun e!331876 () Bool)

(assert (=> b!576883 (= e!331876 false)))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5711 0))(
  ( (MissingZero!5711 (index!25071 (_ BitVec 32))) (Found!5711 (index!25072 (_ BitVec 32))) (Intermediate!5711 (undefined!6523 Bool) (index!25073 (_ BitVec 32)) (x!54015 (_ BitVec 32))) (Undefined!5711) (MissingVacant!5711 (index!25074 (_ BitVec 32))) )
))
(declare-fun lt!263867 () SeekEntryResult!5711)

(declare-datatypes ((array!35978 0))(
  ( (array!35979 (arr!17264 (Array (_ BitVec 32) (_ BitVec 64))) (size!17628 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35978)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35978 (_ BitVec 32)) SeekEntryResult!5711)

(assert (=> b!576883 (= lt!263867 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!365065 () Bool)

(assert (=> start!53006 (=> (not res!365065) (not e!331876))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53006 (= res!365065 (validMask!0 mask!3053))))

(assert (=> start!53006 e!331876))

(assert (=> start!53006 true))

(declare-fun array_inv!13038 (array!35978) Bool)

(assert (=> start!53006 (array_inv!13038 a!2986)))

(declare-fun b!576884 () Bool)

(declare-fun res!365069 () Bool)

(assert (=> b!576884 (=> (not res!365069) (not e!331876))))

(declare-fun arrayContainsKey!0 (array!35978 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576884 (= res!365069 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!576885 () Bool)

(declare-fun res!365066 () Bool)

(assert (=> b!576885 (=> (not res!365066) (not e!331876))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!576885 (= res!365066 (and (= (size!17628 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17628 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17628 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!576886 () Bool)

(declare-fun res!365068 () Bool)

(assert (=> b!576886 (=> (not res!365068) (not e!331876))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576886 (= res!365068 (validKeyInArray!0 (select (arr!17264 a!2986) j!136)))))

(declare-fun b!576887 () Bool)

(declare-fun res!365067 () Bool)

(assert (=> b!576887 (=> (not res!365067) (not e!331876))))

(assert (=> b!576887 (= res!365067 (validKeyInArray!0 k!1786))))

(assert (= (and start!53006 res!365065) b!576885))

(assert (= (and b!576885 res!365066) b!576886))

(assert (= (and b!576886 res!365068) b!576887))

(assert (= (and b!576887 res!365067) b!576884))

(assert (= (and b!576884 res!365069) b!576883))

(declare-fun m!555845 () Bool)

(assert (=> b!576883 m!555845))

(declare-fun m!555847 () Bool)

(assert (=> b!576887 m!555847))

(declare-fun m!555849 () Bool)

(assert (=> start!53006 m!555849))

(declare-fun m!555851 () Bool)

(assert (=> start!53006 m!555851))

(declare-fun m!555853 () Bool)

(assert (=> b!576884 m!555853))

(declare-fun m!555855 () Bool)

(assert (=> b!576886 m!555855))

(assert (=> b!576886 m!555855))

(declare-fun m!555857 () Bool)

(assert (=> b!576886 m!555857))

(push 1)

(assert (not b!576887))

(assert (not b!576886))

(assert (not start!53006))

(assert (not b!576884))

(assert (not b!576883))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


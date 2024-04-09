; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53028 () Bool)

(assert start!53028)

(declare-fun res!365241 () Bool)

(declare-fun e!331942 () Bool)

(assert (=> start!53028 (=> (not res!365241) (not e!331942))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53028 (= res!365241 (validMask!0 mask!3053))))

(assert (=> start!53028 e!331942))

(assert (=> start!53028 true))

(declare-datatypes ((array!36000 0))(
  ( (array!36001 (arr!17275 (Array (_ BitVec 32) (_ BitVec 64))) (size!17639 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36000)

(declare-fun array_inv!13049 (array!36000) Bool)

(assert (=> start!53028 (array_inv!13049 a!2986)))

(declare-fun b!577057 () Bool)

(declare-fun res!365240 () Bool)

(assert (=> b!577057 (=> (not res!365240) (not e!331942))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36000 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577057 (= res!365240 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577058 () Bool)

(declare-fun res!365242 () Bool)

(assert (=> b!577058 (=> (not res!365242) (not e!331942))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577058 (= res!365242 (validKeyInArray!0 k0!1786))))

(declare-fun b!577059 () Bool)

(declare-fun res!365239 () Bool)

(assert (=> b!577059 (=> (not res!365239) (not e!331942))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!577059 (= res!365239 (validKeyInArray!0 (select (arr!17275 a!2986) j!136)))))

(declare-fun b!577060 () Bool)

(declare-fun res!365243 () Bool)

(assert (=> b!577060 (=> (not res!365243) (not e!331942))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577060 (= res!365243 (and (= (size!17639 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17639 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17639 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577061 () Bool)

(assert (=> b!577061 (= e!331942 false)))

(declare-datatypes ((SeekEntryResult!5722 0))(
  ( (MissingZero!5722 (index!25115 (_ BitVec 32))) (Found!5722 (index!25116 (_ BitVec 32))) (Intermediate!5722 (undefined!6534 Bool) (index!25117 (_ BitVec 32)) (x!54058 (_ BitVec 32))) (Undefined!5722) (MissingVacant!5722 (index!25118 (_ BitVec 32))) )
))
(declare-fun lt!263891 () SeekEntryResult!5722)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36000 (_ BitVec 32)) SeekEntryResult!5722)

(assert (=> b!577061 (= lt!263891 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!53028 res!365241) b!577060))

(assert (= (and b!577060 res!365243) b!577059))

(assert (= (and b!577059 res!365239) b!577058))

(assert (= (and b!577058 res!365242) b!577057))

(assert (= (and b!577057 res!365240) b!577061))

(declare-fun m!555999 () Bool)

(assert (=> b!577058 m!555999))

(declare-fun m!556001 () Bool)

(assert (=> b!577061 m!556001))

(declare-fun m!556003 () Bool)

(assert (=> b!577057 m!556003))

(declare-fun m!556005 () Bool)

(assert (=> b!577059 m!556005))

(assert (=> b!577059 m!556005))

(declare-fun m!556007 () Bool)

(assert (=> b!577059 m!556007))

(declare-fun m!556009 () Bool)

(assert (=> start!53028 m!556009))

(declare-fun m!556011 () Bool)

(assert (=> start!53028 m!556011))

(check-sat (not b!577058) (not b!577059) (not start!53028) (not b!577057) (not b!577061))

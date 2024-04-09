; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53034 () Bool)

(assert start!53034)

(declare-fun b!577102 () Bool)

(declare-fun e!331960 () Bool)

(assert (=> b!577102 (= e!331960 false)))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5725 0))(
  ( (MissingZero!5725 (index!25127 (_ BitVec 32))) (Found!5725 (index!25128 (_ BitVec 32))) (Intermediate!5725 (undefined!6537 Bool) (index!25129 (_ BitVec 32)) (x!54069 (_ BitVec 32))) (Undefined!5725) (MissingVacant!5725 (index!25130 (_ BitVec 32))) )
))
(declare-fun lt!263900 () SeekEntryResult!5725)

(declare-datatypes ((array!36006 0))(
  ( (array!36007 (arr!17278 (Array (_ BitVec 32) (_ BitVec 64))) (size!17642 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36006)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36006 (_ BitVec 32)) SeekEntryResult!5725)

(assert (=> b!577102 (= lt!263900 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!577103 () Bool)

(declare-fun res!365284 () Bool)

(assert (=> b!577103 (=> (not res!365284) (not e!331960))))

(declare-fun arrayContainsKey!0 (array!36006 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577103 (= res!365284 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577104 () Bool)

(declare-fun res!365288 () Bool)

(assert (=> b!577104 (=> (not res!365288) (not e!331960))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577104 (= res!365288 (validKeyInArray!0 k0!1786))))

(declare-fun res!365286 () Bool)

(assert (=> start!53034 (=> (not res!365286) (not e!331960))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53034 (= res!365286 (validMask!0 mask!3053))))

(assert (=> start!53034 e!331960))

(assert (=> start!53034 true))

(declare-fun array_inv!13052 (array!36006) Bool)

(assert (=> start!53034 (array_inv!13052 a!2986)))

(declare-fun b!577105 () Bool)

(declare-fun res!365285 () Bool)

(assert (=> b!577105 (=> (not res!365285) (not e!331960))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577105 (= res!365285 (and (= (size!17642 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17642 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17642 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577106 () Bool)

(declare-fun res!365287 () Bool)

(assert (=> b!577106 (=> (not res!365287) (not e!331960))))

(assert (=> b!577106 (= res!365287 (validKeyInArray!0 (select (arr!17278 a!2986) j!136)))))

(assert (= (and start!53034 res!365286) b!577105))

(assert (= (and b!577105 res!365285) b!577106))

(assert (= (and b!577106 res!365287) b!577104))

(assert (= (and b!577104 res!365288) b!577103))

(assert (= (and b!577103 res!365284) b!577102))

(declare-fun m!556041 () Bool)

(assert (=> start!53034 m!556041))

(declare-fun m!556043 () Bool)

(assert (=> start!53034 m!556043))

(declare-fun m!556045 () Bool)

(assert (=> b!577103 m!556045))

(declare-fun m!556047 () Bool)

(assert (=> b!577106 m!556047))

(assert (=> b!577106 m!556047))

(declare-fun m!556049 () Bool)

(assert (=> b!577106 m!556049))

(declare-fun m!556051 () Bool)

(assert (=> b!577102 m!556051))

(declare-fun m!556053 () Bool)

(assert (=> b!577104 m!556053))

(check-sat (not start!53034) (not b!577102) (not b!577104) (not b!577103) (not b!577106))

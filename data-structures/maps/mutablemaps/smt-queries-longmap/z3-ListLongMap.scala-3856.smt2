; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53040 () Bool)

(assert start!53040)

(declare-fun b!577147 () Bool)

(declare-fun e!331978 () Bool)

(assert (=> b!577147 (= e!331978 false)))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!36012 0))(
  ( (array!36013 (arr!17281 (Array (_ BitVec 32) (_ BitVec 64))) (size!17645 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36012)

(declare-datatypes ((SeekEntryResult!5728 0))(
  ( (MissingZero!5728 (index!25139 (_ BitVec 32))) (Found!5728 (index!25140 (_ BitVec 32))) (Intermediate!5728 (undefined!6540 Bool) (index!25141 (_ BitVec 32)) (x!54080 (_ BitVec 32))) (Undefined!5728) (MissingVacant!5728 (index!25142 (_ BitVec 32))) )
))
(declare-fun lt!263909 () SeekEntryResult!5728)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36012 (_ BitVec 32)) SeekEntryResult!5728)

(assert (=> b!577147 (= lt!263909 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!577148 () Bool)

(declare-fun res!365330 () Bool)

(assert (=> b!577148 (=> (not res!365330) (not e!331978))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577148 (= res!365330 (validKeyInArray!0 k0!1786))))

(declare-fun res!365332 () Bool)

(assert (=> start!53040 (=> (not res!365332) (not e!331978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53040 (= res!365332 (validMask!0 mask!3053))))

(assert (=> start!53040 e!331978))

(assert (=> start!53040 true))

(declare-fun array_inv!13055 (array!36012) Bool)

(assert (=> start!53040 (array_inv!13055 a!2986)))

(declare-fun b!577149 () Bool)

(declare-fun res!365331 () Bool)

(assert (=> b!577149 (=> (not res!365331) (not e!331978))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577149 (= res!365331 (and (= (size!17645 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17645 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17645 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577150 () Bool)

(declare-fun res!365329 () Bool)

(assert (=> b!577150 (=> (not res!365329) (not e!331978))))

(declare-fun arrayContainsKey!0 (array!36012 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577150 (= res!365329 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577151 () Bool)

(declare-fun res!365333 () Bool)

(assert (=> b!577151 (=> (not res!365333) (not e!331978))))

(assert (=> b!577151 (= res!365333 (validKeyInArray!0 (select (arr!17281 a!2986) j!136)))))

(assert (= (and start!53040 res!365332) b!577149))

(assert (= (and b!577149 res!365331) b!577151))

(assert (= (and b!577151 res!365333) b!577148))

(assert (= (and b!577148 res!365330) b!577150))

(assert (= (and b!577150 res!365329) b!577147))

(declare-fun m!556083 () Bool)

(assert (=> start!53040 m!556083))

(declare-fun m!556085 () Bool)

(assert (=> start!53040 m!556085))

(declare-fun m!556087 () Bool)

(assert (=> b!577151 m!556087))

(assert (=> b!577151 m!556087))

(declare-fun m!556089 () Bool)

(assert (=> b!577151 m!556089))

(declare-fun m!556091 () Bool)

(assert (=> b!577147 m!556091))

(declare-fun m!556093 () Bool)

(assert (=> b!577150 m!556093))

(declare-fun m!556095 () Bool)

(assert (=> b!577148 m!556095))

(check-sat (not b!577150) (not b!577148) (not b!577147) (not b!577151) (not start!53040))

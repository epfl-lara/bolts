; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53460 () Bool)

(assert start!53460)

(declare-fun b!581304 () Bool)

(declare-fun res!369273 () Bool)

(declare-fun e!333572 () Bool)

(assert (=> b!581304 (=> (not res!369273) (not e!333572))))

(declare-datatypes ((array!36315 0))(
  ( (array!36316 (arr!17428 (Array (_ BitVec 32) (_ BitVec 64))) (size!17792 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36315)

(declare-datatypes ((List!11522 0))(
  ( (Nil!11519) (Cons!11518 (h!12563 (_ BitVec 64)) (t!17758 List!11522)) )
))
(declare-fun arrayNoDuplicates!0 (array!36315 (_ BitVec 32) List!11522) Bool)

(assert (=> b!581304 (= res!369273 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11519))))

(declare-fun b!581305 () Bool)

(declare-fun res!369272 () Bool)

(declare-fun e!333573 () Bool)

(assert (=> b!581305 (=> (not res!369272) (not e!333573))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581305 (= res!369272 (validKeyInArray!0 k0!1786))))

(declare-fun b!581306 () Bool)

(assert (=> b!581306 (= e!333572 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5875 0))(
  ( (MissingZero!5875 (index!25727 (_ BitVec 32))) (Found!5875 (index!25728 (_ BitVec 32))) (Intermediate!5875 (undefined!6687 Bool) (index!25729 (_ BitVec 32)) (x!54619 (_ BitVec 32))) (Undefined!5875) (MissingVacant!5875 (index!25730 (_ BitVec 32))) )
))
(declare-fun lt!264880 () SeekEntryResult!5875)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36315 (_ BitVec 32)) SeekEntryResult!5875)

(assert (=> b!581306 (= lt!264880 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17428 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581307 () Bool)

(declare-fun res!369271 () Bool)

(assert (=> b!581307 (=> (not res!369271) (not e!333573))))

(declare-fun arrayContainsKey!0 (array!36315 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581307 (= res!369271 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581308 () Bool)

(declare-fun res!369274 () Bool)

(assert (=> b!581308 (=> (not res!369274) (not e!333573))))

(assert (=> b!581308 (= res!369274 (validKeyInArray!0 (select (arr!17428 a!2986) j!136)))))

(declare-fun b!581309 () Bool)

(declare-fun res!369276 () Bool)

(assert (=> b!581309 (=> (not res!369276) (not e!333573))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581309 (= res!369276 (and (= (size!17792 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17792 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17792 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!369277 () Bool)

(assert (=> start!53460 (=> (not res!369277) (not e!333573))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53460 (= res!369277 (validMask!0 mask!3053))))

(assert (=> start!53460 e!333573))

(assert (=> start!53460 true))

(declare-fun array_inv!13202 (array!36315) Bool)

(assert (=> start!53460 (array_inv!13202 a!2986)))

(declare-fun b!581310 () Bool)

(declare-fun res!369275 () Bool)

(assert (=> b!581310 (=> (not res!369275) (not e!333572))))

(assert (=> b!581310 (= res!369275 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17428 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17428 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581311 () Bool)

(declare-fun res!369278 () Bool)

(assert (=> b!581311 (=> (not res!369278) (not e!333572))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36315 (_ BitVec 32)) Bool)

(assert (=> b!581311 (= res!369278 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581312 () Bool)

(assert (=> b!581312 (= e!333573 e!333572)))

(declare-fun res!369270 () Bool)

(assert (=> b!581312 (=> (not res!369270) (not e!333572))))

(declare-fun lt!264881 () SeekEntryResult!5875)

(assert (=> b!581312 (= res!369270 (or (= lt!264881 (MissingZero!5875 i!1108)) (= lt!264881 (MissingVacant!5875 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36315 (_ BitVec 32)) SeekEntryResult!5875)

(assert (=> b!581312 (= lt!264881 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!53460 res!369277) b!581309))

(assert (= (and b!581309 res!369276) b!581308))

(assert (= (and b!581308 res!369274) b!581305))

(assert (= (and b!581305 res!369272) b!581307))

(assert (= (and b!581307 res!369271) b!581312))

(assert (= (and b!581312 res!369270) b!581311))

(assert (= (and b!581311 res!369278) b!581304))

(assert (= (and b!581304 res!369273) b!581310))

(assert (= (and b!581310 res!369275) b!581306))

(declare-fun m!559893 () Bool)

(assert (=> b!581312 m!559893))

(declare-fun m!559895 () Bool)

(assert (=> b!581307 m!559895))

(declare-fun m!559897 () Bool)

(assert (=> b!581310 m!559897))

(declare-fun m!559899 () Bool)

(assert (=> b!581310 m!559899))

(declare-fun m!559901 () Bool)

(assert (=> b!581310 m!559901))

(declare-fun m!559903 () Bool)

(assert (=> start!53460 m!559903))

(declare-fun m!559905 () Bool)

(assert (=> start!53460 m!559905))

(declare-fun m!559907 () Bool)

(assert (=> b!581311 m!559907))

(declare-fun m!559909 () Bool)

(assert (=> b!581308 m!559909))

(assert (=> b!581308 m!559909))

(declare-fun m!559911 () Bool)

(assert (=> b!581308 m!559911))

(declare-fun m!559913 () Bool)

(assert (=> b!581305 m!559913))

(declare-fun m!559915 () Bool)

(assert (=> b!581304 m!559915))

(assert (=> b!581306 m!559909))

(assert (=> b!581306 m!559909))

(declare-fun m!559917 () Bool)

(assert (=> b!581306 m!559917))

(check-sat (not b!581306) (not b!581308) (not b!581305) (not b!581304) (not start!53460) (not b!581312) (not b!581311) (not b!581307))
(check-sat)

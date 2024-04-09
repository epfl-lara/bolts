; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53238 () Bool)

(assert start!53238)

(declare-fun res!366275 () Bool)

(declare-fun e!332573 () Bool)

(assert (=> start!53238 (=> (not res!366275) (not e!332573))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53238 (= res!366275 (validMask!0 mask!3053))))

(assert (=> start!53238 e!332573))

(assert (=> start!53238 true))

(declare-datatypes ((array!36093 0))(
  ( (array!36094 (arr!17317 (Array (_ BitVec 32) (_ BitVec 64))) (size!17681 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36093)

(declare-fun array_inv!13091 (array!36093) Bool)

(assert (=> start!53238 (array_inv!13091 a!2986)))

(declare-fun b!578306 () Bool)

(declare-fun res!366273 () Bool)

(assert (=> b!578306 (=> (not res!366273) (not e!332573))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36093 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578306 (= res!366273 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578307 () Bool)

(declare-fun res!366274 () Bool)

(assert (=> b!578307 (=> (not res!366274) (not e!332573))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578307 (= res!366274 (and (= (size!17681 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17681 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17681 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578308 () Bool)

(declare-fun e!332575 () Bool)

(assert (=> b!578308 (= e!332573 e!332575)))

(declare-fun res!366272 () Bool)

(assert (=> b!578308 (=> (not res!366272) (not e!332575))))

(declare-datatypes ((SeekEntryResult!5764 0))(
  ( (MissingZero!5764 (index!25283 (_ BitVec 32))) (Found!5764 (index!25284 (_ BitVec 32))) (Intermediate!5764 (undefined!6576 Bool) (index!25285 (_ BitVec 32)) (x!54212 (_ BitVec 32))) (Undefined!5764) (MissingVacant!5764 (index!25286 (_ BitVec 32))) )
))
(declare-fun lt!264241 () SeekEntryResult!5764)

(assert (=> b!578308 (= res!366272 (or (= lt!264241 (MissingZero!5764 i!1108)) (= lt!264241 (MissingVacant!5764 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36093 (_ BitVec 32)) SeekEntryResult!5764)

(assert (=> b!578308 (= lt!264241 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!578309 () Bool)

(declare-fun res!366277 () Bool)

(assert (=> b!578309 (=> (not res!366277) (not e!332573))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578309 (= res!366277 (validKeyInArray!0 k0!1786))))

(declare-fun b!578310 () Bool)

(declare-fun res!366278 () Bool)

(assert (=> b!578310 (=> (not res!366278) (not e!332575))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36093 (_ BitVec 32)) Bool)

(assert (=> b!578310 (= res!366278 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578311 () Bool)

(assert (=> b!578311 (= e!332575 false)))

(declare-fun lt!264242 () Bool)

(declare-datatypes ((List!11411 0))(
  ( (Nil!11408) (Cons!11407 (h!12452 (_ BitVec 64)) (t!17647 List!11411)) )
))
(declare-fun arrayNoDuplicates!0 (array!36093 (_ BitVec 32) List!11411) Bool)

(assert (=> b!578311 (= lt!264242 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11408))))

(declare-fun b!578312 () Bool)

(declare-fun res!366276 () Bool)

(assert (=> b!578312 (=> (not res!366276) (not e!332573))))

(assert (=> b!578312 (= res!366276 (validKeyInArray!0 (select (arr!17317 a!2986) j!136)))))

(assert (= (and start!53238 res!366275) b!578307))

(assert (= (and b!578307 res!366274) b!578312))

(assert (= (and b!578312 res!366276) b!578309))

(assert (= (and b!578309 res!366277) b!578306))

(assert (= (and b!578306 res!366273) b!578308))

(assert (= (and b!578308 res!366272) b!578310))

(assert (= (and b!578310 res!366278) b!578311))

(declare-fun m!557035 () Bool)

(assert (=> b!578309 m!557035))

(declare-fun m!557037 () Bool)

(assert (=> b!578310 m!557037))

(declare-fun m!557039 () Bool)

(assert (=> b!578312 m!557039))

(assert (=> b!578312 m!557039))

(declare-fun m!557041 () Bool)

(assert (=> b!578312 m!557041))

(declare-fun m!557043 () Bool)

(assert (=> b!578311 m!557043))

(declare-fun m!557045 () Bool)

(assert (=> b!578306 m!557045))

(declare-fun m!557047 () Bool)

(assert (=> start!53238 m!557047))

(declare-fun m!557049 () Bool)

(assert (=> start!53238 m!557049))

(declare-fun m!557051 () Bool)

(assert (=> b!578308 m!557051))

(check-sat (not b!578310) (not start!53238) (not b!578312) (not b!578306) (not b!578308) (not b!578311) (not b!578309))
(check-sat)

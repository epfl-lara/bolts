; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44698 () Bool)

(assert start!44698)

(declare-fun b!490185 () Bool)

(declare-fun e!288175 () Bool)

(declare-fun e!288172 () Bool)

(assert (=> b!490185 (= e!288175 e!288172)))

(declare-fun res!293278 () Bool)

(assert (=> b!490185 (=> (not res!293278) (not e!288172))))

(declare-datatypes ((SeekEntryResult!3717 0))(
  ( (MissingZero!3717 (index!17047 (_ BitVec 32))) (Found!3717 (index!17048 (_ BitVec 32))) (Intermediate!3717 (undefined!4529 Bool) (index!17049 (_ BitVec 32)) (x!46178 (_ BitVec 32))) (Undefined!3717) (MissingVacant!3717 (index!17050 (_ BitVec 32))) )
))
(declare-fun lt!221416 () SeekEntryResult!3717)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!490185 (= res!293278 (or (= lt!221416 (MissingZero!3717 i!1204)) (= lt!221416 (MissingVacant!3717 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31717 0))(
  ( (array!31718 (arr!15243 (Array (_ BitVec 32) (_ BitVec 64))) (size!15607 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31717)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31717 (_ BitVec 32)) SeekEntryResult!3717)

(assert (=> b!490185 (= lt!221416 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!490186 () Bool)

(declare-fun e!288174 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!490186 (= e!288174 (= (seekEntryOrOpen!0 (select (arr!15243 a!3235) j!176) a!3235 mask!3524) (Found!3717 j!176)))))

(declare-fun b!490187 () Bool)

(declare-fun res!293274 () Bool)

(assert (=> b!490187 (=> (not res!293274) (not e!288175))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490187 (= res!293274 (validKeyInArray!0 k!2280))))

(declare-fun b!490188 () Bool)

(declare-fun res!293272 () Bool)

(assert (=> b!490188 (=> (not res!293272) (not e!288175))))

(assert (=> b!490188 (= res!293272 (and (= (size!15607 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15607 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15607 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!293273 () Bool)

(assert (=> start!44698 (=> (not res!293273) (not e!288175))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44698 (= res!293273 (validMask!0 mask!3524))))

(assert (=> start!44698 e!288175))

(assert (=> start!44698 true))

(declare-fun array_inv!11017 (array!31717) Bool)

(assert (=> start!44698 (array_inv!11017 a!3235)))

(declare-fun b!490189 () Bool)

(assert (=> b!490189 (= e!288172 (not true))))

(declare-fun lt!221415 () SeekEntryResult!3717)

(declare-fun lt!221419 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31717 (_ BitVec 32)) SeekEntryResult!3717)

(assert (=> b!490189 (= lt!221415 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221419 (select (store (arr!15243 a!3235) i!1204 k!2280) j!176) (array!31718 (store (arr!15243 a!3235) i!1204 k!2280) (size!15607 a!3235)) mask!3524))))

(declare-fun lt!221420 () (_ BitVec 32))

(declare-fun lt!221417 () SeekEntryResult!3717)

(assert (=> b!490189 (= lt!221417 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221420 (select (arr!15243 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490189 (= lt!221419 (toIndex!0 (select (store (arr!15243 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!490189 (= lt!221420 (toIndex!0 (select (arr!15243 a!3235) j!176) mask!3524))))

(assert (=> b!490189 e!288174))

(declare-fun res!293276 () Bool)

(assert (=> b!490189 (=> (not res!293276) (not e!288174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31717 (_ BitVec 32)) Bool)

(assert (=> b!490189 (= res!293276 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14372 0))(
  ( (Unit!14373) )
))
(declare-fun lt!221418 () Unit!14372)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31717 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14372)

(assert (=> b!490189 (= lt!221418 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490190 () Bool)

(declare-fun res!293277 () Bool)

(assert (=> b!490190 (=> (not res!293277) (not e!288172))))

(declare-datatypes ((List!9454 0))(
  ( (Nil!9451) (Cons!9450 (h!10312 (_ BitVec 64)) (t!15690 List!9454)) )
))
(declare-fun arrayNoDuplicates!0 (array!31717 (_ BitVec 32) List!9454) Bool)

(assert (=> b!490190 (= res!293277 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9451))))

(declare-fun b!490191 () Bool)

(declare-fun res!293279 () Bool)

(assert (=> b!490191 (=> (not res!293279) (not e!288175))))

(declare-fun arrayContainsKey!0 (array!31717 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490191 (= res!293279 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490192 () Bool)

(declare-fun res!293271 () Bool)

(assert (=> b!490192 (=> (not res!293271) (not e!288175))))

(assert (=> b!490192 (= res!293271 (validKeyInArray!0 (select (arr!15243 a!3235) j!176)))))

(declare-fun b!490193 () Bool)

(declare-fun res!293275 () Bool)

(assert (=> b!490193 (=> (not res!293275) (not e!288172))))

(assert (=> b!490193 (= res!293275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!44698 res!293273) b!490188))

(assert (= (and b!490188 res!293272) b!490192))

(assert (= (and b!490192 res!293271) b!490187))

(assert (= (and b!490187 res!293274) b!490191))

(assert (= (and b!490191 res!293279) b!490185))

(assert (= (and b!490185 res!293278) b!490193))

(assert (= (and b!490193 res!293275) b!490190))

(assert (= (and b!490190 res!293277) b!490189))

(assert (= (and b!490189 res!293276) b!490186))

(declare-fun m!470311 () Bool)

(assert (=> b!490190 m!470311))

(declare-fun m!470313 () Bool)

(assert (=> b!490187 m!470313))

(declare-fun m!470315 () Bool)

(assert (=> b!490186 m!470315))

(assert (=> b!490186 m!470315))

(declare-fun m!470317 () Bool)

(assert (=> b!490186 m!470317))

(declare-fun m!470319 () Bool)

(assert (=> start!44698 m!470319))

(declare-fun m!470321 () Bool)

(assert (=> start!44698 m!470321))

(declare-fun m!470323 () Bool)

(assert (=> b!490189 m!470323))

(declare-fun m!470325 () Bool)

(assert (=> b!490189 m!470325))

(assert (=> b!490189 m!470315))

(declare-fun m!470327 () Bool)

(assert (=> b!490189 m!470327))

(declare-fun m!470329 () Bool)

(assert (=> b!490189 m!470329))

(declare-fun m!470331 () Bool)

(assert (=> b!490189 m!470331))

(assert (=> b!490189 m!470323))

(assert (=> b!490189 m!470315))

(declare-fun m!470333 () Bool)

(assert (=> b!490189 m!470333))

(assert (=> b!490189 m!470315))

(declare-fun m!470335 () Bool)

(assert (=> b!490189 m!470335))

(assert (=> b!490189 m!470323))

(declare-fun m!470337 () Bool)

(assert (=> b!490189 m!470337))

(declare-fun m!470339 () Bool)

(assert (=> b!490193 m!470339))

(assert (=> b!490192 m!470315))

(assert (=> b!490192 m!470315))

(declare-fun m!470341 () Bool)

(assert (=> b!490192 m!470341))

(declare-fun m!470343 () Bool)

(assert (=> b!490191 m!470343))

(declare-fun m!470345 () Bool)

(assert (=> b!490185 m!470345))

(push 1)


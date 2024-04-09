; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44640 () Bool)

(assert start!44640)

(declare-fun b!489402 () Bool)

(declare-fun res!292492 () Bool)

(declare-fun e!287826 () Bool)

(assert (=> b!489402 (=> (not res!292492) (not e!287826))))

(declare-datatypes ((array!31659 0))(
  ( (array!31660 (arr!15214 (Array (_ BitVec 32) (_ BitVec 64))) (size!15578 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31659)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489402 (= res!292492 (validKeyInArray!0 (select (arr!15214 a!3235) j!176)))))

(declare-fun res!292496 () Bool)

(assert (=> start!44640 (=> (not res!292496) (not e!287826))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44640 (= res!292496 (validMask!0 mask!3524))))

(assert (=> start!44640 e!287826))

(assert (=> start!44640 true))

(declare-fun array_inv!10988 (array!31659) Bool)

(assert (=> start!44640 (array_inv!10988 a!3235)))

(declare-fun b!489403 () Bool)

(declare-fun res!292491 () Bool)

(declare-fun e!287824 () Bool)

(assert (=> b!489403 (=> (not res!292491) (not e!287824))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31659 (_ BitVec 32)) Bool)

(assert (=> b!489403 (= res!292491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489404 () Bool)

(assert (=> b!489404 (= e!287824 (not true))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3688 0))(
  ( (MissingZero!3688 (index!16931 (_ BitVec 32))) (Found!3688 (index!16932 (_ BitVec 32))) (Intermediate!3688 (undefined!4500 Bool) (index!16933 (_ BitVec 32)) (x!46069 (_ BitVec 32))) (Undefined!3688) (MissingVacant!3688 (index!16934 (_ BitVec 32))) )
))
(declare-fun lt!220896 () SeekEntryResult!3688)

(declare-fun lt!220898 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31659 (_ BitVec 32)) SeekEntryResult!3688)

(assert (=> b!489404 (= lt!220896 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220898 (select (store (arr!15214 a!3235) i!1204 k0!2280) j!176) (array!31660 (store (arr!15214 a!3235) i!1204 k0!2280) (size!15578 a!3235)) mask!3524))))

(declare-fun lt!220893 () (_ BitVec 32))

(declare-fun lt!220895 () SeekEntryResult!3688)

(assert (=> b!489404 (= lt!220895 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220893 (select (arr!15214 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489404 (= lt!220898 (toIndex!0 (select (store (arr!15214 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!489404 (= lt!220893 (toIndex!0 (select (arr!15214 a!3235) j!176) mask!3524))))

(declare-fun e!287827 () Bool)

(assert (=> b!489404 e!287827))

(declare-fun res!292495 () Bool)

(assert (=> b!489404 (=> (not res!292495) (not e!287827))))

(assert (=> b!489404 (= res!292495 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14314 0))(
  ( (Unit!14315) )
))
(declare-fun lt!220894 () Unit!14314)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31659 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14314)

(assert (=> b!489404 (= lt!220894 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489405 () Bool)

(declare-fun res!292489 () Bool)

(assert (=> b!489405 (=> (not res!292489) (not e!287826))))

(assert (=> b!489405 (= res!292489 (validKeyInArray!0 k0!2280))))

(declare-fun b!489406 () Bool)

(assert (=> b!489406 (= e!287826 e!287824)))

(declare-fun res!292493 () Bool)

(assert (=> b!489406 (=> (not res!292493) (not e!287824))))

(declare-fun lt!220897 () SeekEntryResult!3688)

(assert (=> b!489406 (= res!292493 (or (= lt!220897 (MissingZero!3688 i!1204)) (= lt!220897 (MissingVacant!3688 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31659 (_ BitVec 32)) SeekEntryResult!3688)

(assert (=> b!489406 (= lt!220897 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!489407 () Bool)

(assert (=> b!489407 (= e!287827 (= (seekEntryOrOpen!0 (select (arr!15214 a!3235) j!176) a!3235 mask!3524) (Found!3688 j!176)))))

(declare-fun b!489408 () Bool)

(declare-fun res!292488 () Bool)

(assert (=> b!489408 (=> (not res!292488) (not e!287826))))

(assert (=> b!489408 (= res!292488 (and (= (size!15578 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15578 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15578 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489409 () Bool)

(declare-fun res!292494 () Bool)

(assert (=> b!489409 (=> (not res!292494) (not e!287824))))

(declare-datatypes ((List!9425 0))(
  ( (Nil!9422) (Cons!9421 (h!10283 (_ BitVec 64)) (t!15661 List!9425)) )
))
(declare-fun arrayNoDuplicates!0 (array!31659 (_ BitVec 32) List!9425) Bool)

(assert (=> b!489409 (= res!292494 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9422))))

(declare-fun b!489410 () Bool)

(declare-fun res!292490 () Bool)

(assert (=> b!489410 (=> (not res!292490) (not e!287826))))

(declare-fun arrayContainsKey!0 (array!31659 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489410 (= res!292490 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44640 res!292496) b!489408))

(assert (= (and b!489408 res!292488) b!489402))

(assert (= (and b!489402 res!292492) b!489405))

(assert (= (and b!489405 res!292489) b!489410))

(assert (= (and b!489410 res!292490) b!489406))

(assert (= (and b!489406 res!292493) b!489403))

(assert (= (and b!489403 res!292491) b!489409))

(assert (= (and b!489409 res!292494) b!489404))

(assert (= (and b!489404 res!292495) b!489407))

(declare-fun m!469267 () Bool)

(assert (=> b!489404 m!469267))

(declare-fun m!469269 () Bool)

(assert (=> b!489404 m!469269))

(declare-fun m!469271 () Bool)

(assert (=> b!489404 m!469271))

(assert (=> b!489404 m!469271))

(declare-fun m!469273 () Bool)

(assert (=> b!489404 m!469273))

(declare-fun m!469275 () Bool)

(assert (=> b!489404 m!469275))

(declare-fun m!469277 () Bool)

(assert (=> b!489404 m!469277))

(assert (=> b!489404 m!469275))

(declare-fun m!469279 () Bool)

(assert (=> b!489404 m!469279))

(assert (=> b!489404 m!469275))

(declare-fun m!469281 () Bool)

(assert (=> b!489404 m!469281))

(assert (=> b!489404 m!469271))

(declare-fun m!469283 () Bool)

(assert (=> b!489404 m!469283))

(assert (=> b!489407 m!469275))

(assert (=> b!489407 m!469275))

(declare-fun m!469285 () Bool)

(assert (=> b!489407 m!469285))

(declare-fun m!469287 () Bool)

(assert (=> b!489405 m!469287))

(declare-fun m!469289 () Bool)

(assert (=> b!489403 m!469289))

(declare-fun m!469291 () Bool)

(assert (=> start!44640 m!469291))

(declare-fun m!469293 () Bool)

(assert (=> start!44640 m!469293))

(declare-fun m!469295 () Bool)

(assert (=> b!489406 m!469295))

(assert (=> b!489402 m!469275))

(assert (=> b!489402 m!469275))

(declare-fun m!469297 () Bool)

(assert (=> b!489402 m!469297))

(declare-fun m!469299 () Bool)

(assert (=> b!489409 m!469299))

(declare-fun m!469301 () Bool)

(assert (=> b!489410 m!469301))

(check-sat (not b!489403) (not b!489404) (not b!489409) (not start!44640) (not b!489407) (not b!489410) (not b!489406) (not b!489402) (not b!489405))
(check-sat)

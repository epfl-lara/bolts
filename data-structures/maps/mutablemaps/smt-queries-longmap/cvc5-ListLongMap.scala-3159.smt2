; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44536 () Bool)

(assert start!44536)

(declare-fun b!488535 () Bool)

(declare-fun res!291738 () Bool)

(declare-fun e!287391 () Bool)

(assert (=> b!488535 (=> (not res!291738) (not e!287391))))

(declare-datatypes ((array!31606 0))(
  ( (array!31607 (arr!15189 (Array (_ BitVec 32) (_ BitVec 64))) (size!15553 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31606)

(declare-datatypes ((List!9400 0))(
  ( (Nil!9397) (Cons!9396 (h!10255 (_ BitVec 64)) (t!15636 List!9400)) )
))
(declare-fun arrayNoDuplicates!0 (array!31606 (_ BitVec 32) List!9400) Bool)

(assert (=> b!488535 (= res!291738 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9397))))

(declare-fun b!488536 () Bool)

(declare-fun e!287392 () Bool)

(assert (=> b!488536 (= e!287392 e!287391)))

(declare-fun res!291740 () Bool)

(assert (=> b!488536 (=> (not res!291740) (not e!287391))))

(declare-datatypes ((SeekEntryResult!3663 0))(
  ( (MissingZero!3663 (index!16831 (_ BitVec 32))) (Found!3663 (index!16832 (_ BitVec 32))) (Intermediate!3663 (undefined!4475 Bool) (index!16833 (_ BitVec 32)) (x!45977 (_ BitVec 32))) (Undefined!3663) (MissingVacant!3663 (index!16834 (_ BitVec 32))) )
))
(declare-fun lt!220475 () SeekEntryResult!3663)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!488536 (= res!291740 (or (= lt!220475 (MissingZero!3663 i!1204)) (= lt!220475 (MissingVacant!3663 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31606 (_ BitVec 32)) SeekEntryResult!3663)

(assert (=> b!488536 (= lt!220475 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!488537 () Bool)

(declare-fun res!291734 () Bool)

(assert (=> b!488537 (=> (not res!291734) (not e!287391))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31606 (_ BitVec 32)) Bool)

(assert (=> b!488537 (= res!291734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!488538 () Bool)

(declare-fun res!291732 () Bool)

(assert (=> b!488538 (=> (not res!291732) (not e!287392))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!488538 (= res!291732 (and (= (size!15553 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15553 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15553 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488539 () Bool)

(declare-fun res!291735 () Bool)

(assert (=> b!488539 (=> (not res!291735) (not e!287392))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488539 (= res!291735 (validKeyInArray!0 k!2280))))

(declare-fun res!291737 () Bool)

(assert (=> start!44536 (=> (not res!291737) (not e!287392))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44536 (= res!291737 (validMask!0 mask!3524))))

(assert (=> start!44536 e!287392))

(assert (=> start!44536 true))

(declare-fun array_inv!10963 (array!31606) Bool)

(assert (=> start!44536 (array_inv!10963 a!3235)))

(declare-fun e!287389 () Bool)

(declare-fun b!488540 () Bool)

(assert (=> b!488540 (= e!287389 (= (seekEntryOrOpen!0 (select (arr!15189 a!3235) j!176) a!3235 mask!3524) (Found!3663 j!176)))))

(declare-fun b!488541 () Bool)

(declare-fun res!291739 () Bool)

(assert (=> b!488541 (=> (not res!291739) (not e!287392))))

(assert (=> b!488541 (= res!291739 (validKeyInArray!0 (select (arr!15189 a!3235) j!176)))))

(declare-fun b!488542 () Bool)

(declare-fun res!291733 () Bool)

(assert (=> b!488542 (=> (not res!291733) (not e!287392))))

(declare-fun arrayContainsKey!0 (array!31606 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488542 (= res!291733 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!488543 () Bool)

(assert (=> b!488543 (= e!287391 (not (bvsge mask!3524 #b00000000000000000000000000000000)))))

(declare-fun lt!220473 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!488543 (= lt!220473 (toIndex!0 (select (store (arr!15189 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!488543 e!287389))

(declare-fun res!291736 () Bool)

(assert (=> b!488543 (=> (not res!291736) (not e!287389))))

(assert (=> b!488543 (= res!291736 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14264 0))(
  ( (Unit!14265) )
))
(declare-fun lt!220474 () Unit!14264)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31606 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14264)

(assert (=> b!488543 (= lt!220474 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!44536 res!291737) b!488538))

(assert (= (and b!488538 res!291732) b!488541))

(assert (= (and b!488541 res!291739) b!488539))

(assert (= (and b!488539 res!291735) b!488542))

(assert (= (and b!488542 res!291733) b!488536))

(assert (= (and b!488536 res!291740) b!488537))

(assert (= (and b!488537 res!291734) b!488535))

(assert (= (and b!488535 res!291738) b!488543))

(assert (= (and b!488543 res!291736) b!488540))

(declare-fun m!468289 () Bool)

(assert (=> b!488541 m!468289))

(assert (=> b!488541 m!468289))

(declare-fun m!468291 () Bool)

(assert (=> b!488541 m!468291))

(declare-fun m!468293 () Bool)

(assert (=> b!488535 m!468293))

(declare-fun m!468295 () Bool)

(assert (=> b!488543 m!468295))

(declare-fun m!468297 () Bool)

(assert (=> b!488543 m!468297))

(declare-fun m!468299 () Bool)

(assert (=> b!488543 m!468299))

(declare-fun m!468301 () Bool)

(assert (=> b!488543 m!468301))

(assert (=> b!488543 m!468299))

(declare-fun m!468303 () Bool)

(assert (=> b!488543 m!468303))

(declare-fun m!468305 () Bool)

(assert (=> b!488537 m!468305))

(declare-fun m!468307 () Bool)

(assert (=> b!488536 m!468307))

(declare-fun m!468309 () Bool)

(assert (=> b!488542 m!468309))

(declare-fun m!468311 () Bool)

(assert (=> b!488539 m!468311))

(assert (=> b!488540 m!468289))

(assert (=> b!488540 m!468289))

(declare-fun m!468313 () Bool)

(assert (=> b!488540 m!468313))

(declare-fun m!468315 () Bool)

(assert (=> start!44536 m!468315))

(declare-fun m!468317 () Bool)

(assert (=> start!44536 m!468317))

(push 1)


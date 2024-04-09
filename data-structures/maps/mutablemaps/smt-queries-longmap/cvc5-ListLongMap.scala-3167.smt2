; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44638 () Bool)

(assert start!44638)

(declare-fun b!489375 () Bool)

(declare-fun res!292461 () Bool)

(declare-fun e!287814 () Bool)

(assert (=> b!489375 (=> (not res!292461) (not e!287814))))

(declare-datatypes ((array!31657 0))(
  ( (array!31658 (arr!15213 (Array (_ BitVec 32) (_ BitVec 64))) (size!15577 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31657)

(declare-datatypes ((List!9424 0))(
  ( (Nil!9421) (Cons!9420 (h!10282 (_ BitVec 64)) (t!15660 List!9424)) )
))
(declare-fun arrayNoDuplicates!0 (array!31657 (_ BitVec 32) List!9424) Bool)

(assert (=> b!489375 (= res!292461 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9421))))

(declare-fun b!489376 () Bool)

(declare-fun res!292463 () Bool)

(declare-fun e!287815 () Bool)

(assert (=> b!489376 (=> (not res!292463) (not e!287815))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489376 (= res!292463 (validKeyInArray!0 (select (arr!15213 a!3235) j!176)))))

(declare-fun res!292464 () Bool)

(assert (=> start!44638 (=> (not res!292464) (not e!287815))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44638 (= res!292464 (validMask!0 mask!3524))))

(assert (=> start!44638 e!287815))

(assert (=> start!44638 true))

(declare-fun array_inv!10987 (array!31657) Bool)

(assert (=> start!44638 (array_inv!10987 a!3235)))

(declare-fun b!489377 () Bool)

(declare-fun res!292468 () Bool)

(assert (=> b!489377 (=> (not res!292468) (not e!287815))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!489377 (= res!292468 (validKeyInArray!0 k!2280))))

(declare-fun b!489378 () Bool)

(assert (=> b!489378 (= e!287814 (not true))))

(declare-datatypes ((SeekEntryResult!3687 0))(
  ( (MissingZero!3687 (index!16927 (_ BitVec 32))) (Found!3687 (index!16928 (_ BitVec 32))) (Intermediate!3687 (undefined!4499 Bool) (index!16929 (_ BitVec 32)) (x!46068 (_ BitVec 32))) (Undefined!3687) (MissingVacant!3687 (index!16930 (_ BitVec 32))) )
))
(declare-fun lt!220877 () SeekEntryResult!3687)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!220875 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31657 (_ BitVec 32)) SeekEntryResult!3687)

(assert (=> b!489378 (= lt!220877 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220875 (select (store (arr!15213 a!3235) i!1204 k!2280) j!176) (array!31658 (store (arr!15213 a!3235) i!1204 k!2280) (size!15577 a!3235)) mask!3524))))

(declare-fun lt!220878 () SeekEntryResult!3687)

(declare-fun lt!220879 () (_ BitVec 32))

(assert (=> b!489378 (= lt!220878 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220879 (select (arr!15213 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489378 (= lt!220875 (toIndex!0 (select (store (arr!15213 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489378 (= lt!220879 (toIndex!0 (select (arr!15213 a!3235) j!176) mask!3524))))

(declare-fun e!287812 () Bool)

(assert (=> b!489378 e!287812))

(declare-fun res!292462 () Bool)

(assert (=> b!489378 (=> (not res!292462) (not e!287812))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31657 (_ BitVec 32)) Bool)

(assert (=> b!489378 (= res!292462 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14312 0))(
  ( (Unit!14313) )
))
(declare-fun lt!220880 () Unit!14312)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31657 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14312)

(assert (=> b!489378 (= lt!220880 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489379 () Bool)

(declare-fun res!292465 () Bool)

(assert (=> b!489379 (=> (not res!292465) (not e!287815))))

(assert (=> b!489379 (= res!292465 (and (= (size!15577 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15577 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15577 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489380 () Bool)

(assert (=> b!489380 (= e!287815 e!287814)))

(declare-fun res!292469 () Bool)

(assert (=> b!489380 (=> (not res!292469) (not e!287814))))

(declare-fun lt!220876 () SeekEntryResult!3687)

(assert (=> b!489380 (= res!292469 (or (= lt!220876 (MissingZero!3687 i!1204)) (= lt!220876 (MissingVacant!3687 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31657 (_ BitVec 32)) SeekEntryResult!3687)

(assert (=> b!489380 (= lt!220876 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!489381 () Bool)

(assert (=> b!489381 (= e!287812 (= (seekEntryOrOpen!0 (select (arr!15213 a!3235) j!176) a!3235 mask!3524) (Found!3687 j!176)))))

(declare-fun b!489382 () Bool)

(declare-fun res!292466 () Bool)

(assert (=> b!489382 (=> (not res!292466) (not e!287815))))

(declare-fun arrayContainsKey!0 (array!31657 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489382 (= res!292466 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489383 () Bool)

(declare-fun res!292467 () Bool)

(assert (=> b!489383 (=> (not res!292467) (not e!287814))))

(assert (=> b!489383 (= res!292467 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!44638 res!292464) b!489379))

(assert (= (and b!489379 res!292465) b!489376))

(assert (= (and b!489376 res!292463) b!489377))

(assert (= (and b!489377 res!292468) b!489382))

(assert (= (and b!489382 res!292466) b!489380))

(assert (= (and b!489380 res!292469) b!489383))

(assert (= (and b!489383 res!292467) b!489375))

(assert (= (and b!489375 res!292461) b!489378))

(assert (= (and b!489378 res!292462) b!489381))

(declare-fun m!469231 () Bool)

(assert (=> b!489378 m!469231))

(declare-fun m!469233 () Bool)

(assert (=> b!489378 m!469233))

(declare-fun m!469235 () Bool)

(assert (=> b!489378 m!469235))

(declare-fun m!469237 () Bool)

(assert (=> b!489378 m!469237))

(assert (=> b!489378 m!469233))

(declare-fun m!469239 () Bool)

(assert (=> b!489378 m!469239))

(assert (=> b!489378 m!469233))

(declare-fun m!469241 () Bool)

(assert (=> b!489378 m!469241))

(assert (=> b!489378 m!469237))

(declare-fun m!469243 () Bool)

(assert (=> b!489378 m!469243))

(declare-fun m!469245 () Bool)

(assert (=> b!489378 m!469245))

(assert (=> b!489378 m!469237))

(declare-fun m!469247 () Bool)

(assert (=> b!489378 m!469247))

(declare-fun m!469249 () Bool)

(assert (=> b!489383 m!469249))

(declare-fun m!469251 () Bool)

(assert (=> b!489377 m!469251))

(declare-fun m!469253 () Bool)

(assert (=> b!489380 m!469253))

(declare-fun m!469255 () Bool)

(assert (=> start!44638 m!469255))

(declare-fun m!469257 () Bool)

(assert (=> start!44638 m!469257))

(declare-fun m!469259 () Bool)

(assert (=> b!489375 m!469259))

(assert (=> b!489381 m!469233))

(assert (=> b!489381 m!469233))

(declare-fun m!469261 () Bool)

(assert (=> b!489381 m!469261))

(assert (=> b!489376 m!469233))

(assert (=> b!489376 m!469233))

(declare-fun m!469263 () Bool)

(assert (=> b!489376 m!469263))

(declare-fun m!469265 () Bool)

(assert (=> b!489382 m!469265))

(push 1)


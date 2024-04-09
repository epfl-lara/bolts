; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45218 () Bool)

(assert start!45218)

(declare-fun res!298599 () Bool)

(declare-fun e!290933 () Bool)

(assert (=> start!45218 (=> (not res!298599) (not e!290933))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45218 (= res!298599 (validMask!0 mask!3524))))

(assert (=> start!45218 e!290933))

(assert (=> start!45218 true))

(declare-datatypes ((array!32066 0))(
  ( (array!32067 (arr!15413 (Array (_ BitVec 32) (_ BitVec 64))) (size!15777 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32066)

(declare-fun array_inv!11187 (array!32066) Bool)

(assert (=> start!45218 (array_inv!11187 a!3235)))

(declare-fun b!496060 () Bool)

(declare-fun e!290934 () Bool)

(declare-fun e!290931 () Bool)

(assert (=> b!496060 (= e!290934 (not e!290931))))

(declare-fun res!298606 () Bool)

(assert (=> b!496060 (=> res!298606 e!290931)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3887 0))(
  ( (MissingZero!3887 (index!17727 (_ BitVec 32))) (Found!3887 (index!17728 (_ BitVec 32))) (Intermediate!3887 (undefined!4699 Bool) (index!17729 (_ BitVec 32)) (x!46814 (_ BitVec 32))) (Undefined!3887) (MissingVacant!3887 (index!17730 (_ BitVec 32))) )
))
(declare-fun lt!224623 () SeekEntryResult!3887)

(declare-fun lt!224622 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32066 (_ BitVec 32)) SeekEntryResult!3887)

(assert (=> b!496060 (= res!298606 (= lt!224623 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224622 (select (store (arr!15413 a!3235) i!1204 k!2280) j!176) (array!32067 (store (arr!15413 a!3235) i!1204 k!2280) (size!15777 a!3235)) mask!3524)))))

(declare-fun lt!224620 () (_ BitVec 32))

(assert (=> b!496060 (= lt!224623 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224620 (select (arr!15413 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496060 (= lt!224622 (toIndex!0 (select (store (arr!15413 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!496060 (= lt!224620 (toIndex!0 (select (arr!15413 a!3235) j!176) mask!3524))))

(declare-fun e!290935 () Bool)

(assert (=> b!496060 e!290935))

(declare-fun res!298605 () Bool)

(assert (=> b!496060 (=> (not res!298605) (not e!290935))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32066 (_ BitVec 32)) Bool)

(assert (=> b!496060 (= res!298605 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14712 0))(
  ( (Unit!14713) )
))
(declare-fun lt!224624 () Unit!14712)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32066 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14712)

(assert (=> b!496060 (= lt!224624 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496061 () Bool)

(assert (=> b!496061 (= e!290933 e!290934)))

(declare-fun res!298603 () Bool)

(assert (=> b!496061 (=> (not res!298603) (not e!290934))))

(declare-fun lt!224621 () SeekEntryResult!3887)

(assert (=> b!496061 (= res!298603 (or (= lt!224621 (MissingZero!3887 i!1204)) (= lt!224621 (MissingVacant!3887 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32066 (_ BitVec 32)) SeekEntryResult!3887)

(assert (=> b!496061 (= lt!224621 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!496062 () Bool)

(declare-fun res!298601 () Bool)

(assert (=> b!496062 (=> (not res!298601) (not e!290933))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496062 (= res!298601 (validKeyInArray!0 k!2280))))

(declare-fun b!496063 () Bool)

(declare-fun res!298602 () Bool)

(assert (=> b!496063 (=> (not res!298602) (not e!290933))))

(assert (=> b!496063 (= res!298602 (and (= (size!15777 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15777 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15777 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496064 () Bool)

(declare-fun res!298597 () Bool)

(assert (=> b!496064 (=> (not res!298597) (not e!290934))))

(assert (=> b!496064 (= res!298597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496065 () Bool)

(declare-fun res!298600 () Bool)

(assert (=> b!496065 (=> res!298600 e!290931)))

(assert (=> b!496065 (= res!298600 (or (undefined!4699 lt!224623) (not (is-Intermediate!3887 lt!224623))))))

(declare-fun b!496066 () Bool)

(assert (=> b!496066 (= e!290931 true)))

(assert (=> b!496066 (and (bvslt (x!46814 lt!224623) #b01111111111111111111111111111110) (or (= (select (arr!15413 a!3235) (index!17729 lt!224623)) (select (arr!15413 a!3235) j!176)) (= (select (arr!15413 a!3235) (index!17729 lt!224623)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15413 a!3235) (index!17729 lt!224623)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496067 () Bool)

(declare-fun res!298604 () Bool)

(assert (=> b!496067 (=> (not res!298604) (not e!290934))))

(declare-datatypes ((List!9624 0))(
  ( (Nil!9621) (Cons!9620 (h!10491 (_ BitVec 64)) (t!15860 List!9624)) )
))
(declare-fun arrayNoDuplicates!0 (array!32066 (_ BitVec 32) List!9624) Bool)

(assert (=> b!496067 (= res!298604 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9621))))

(declare-fun b!496068 () Bool)

(declare-fun res!298598 () Bool)

(assert (=> b!496068 (=> (not res!298598) (not e!290933))))

(declare-fun arrayContainsKey!0 (array!32066 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496068 (= res!298598 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496069 () Bool)

(declare-fun res!298607 () Bool)

(assert (=> b!496069 (=> (not res!298607) (not e!290933))))

(assert (=> b!496069 (= res!298607 (validKeyInArray!0 (select (arr!15413 a!3235) j!176)))))

(declare-fun b!496070 () Bool)

(assert (=> b!496070 (= e!290935 (= (seekEntryOrOpen!0 (select (arr!15413 a!3235) j!176) a!3235 mask!3524) (Found!3887 j!176)))))

(assert (= (and start!45218 res!298599) b!496063))

(assert (= (and b!496063 res!298602) b!496069))

(assert (= (and b!496069 res!298607) b!496062))

(assert (= (and b!496062 res!298601) b!496068))

(assert (= (and b!496068 res!298598) b!496061))

(assert (= (and b!496061 res!298603) b!496064))

(assert (= (and b!496064 res!298597) b!496067))

(assert (= (and b!496067 res!298604) b!496060))

(assert (= (and b!496060 res!298605) b!496070))

(assert (= (and b!496060 (not res!298606)) b!496065))

(assert (= (and b!496065 (not res!298600)) b!496066))

(declare-fun m!477305 () Bool)

(assert (=> b!496066 m!477305))

(declare-fun m!477307 () Bool)

(assert (=> b!496066 m!477307))

(declare-fun m!477309 () Bool)

(assert (=> start!45218 m!477309))

(declare-fun m!477311 () Bool)

(assert (=> start!45218 m!477311))

(assert (=> b!496069 m!477307))

(assert (=> b!496069 m!477307))

(declare-fun m!477313 () Bool)

(assert (=> b!496069 m!477313))

(declare-fun m!477315 () Bool)

(assert (=> b!496064 m!477315))

(declare-fun m!477317 () Bool)

(assert (=> b!496068 m!477317))

(declare-fun m!477319 () Bool)

(assert (=> b!496060 m!477319))

(declare-fun m!477321 () Bool)

(assert (=> b!496060 m!477321))

(declare-fun m!477323 () Bool)

(assert (=> b!496060 m!477323))

(assert (=> b!496060 m!477323))

(declare-fun m!477325 () Bool)

(assert (=> b!496060 m!477325))

(assert (=> b!496060 m!477307))

(declare-fun m!477327 () Bool)

(assert (=> b!496060 m!477327))

(declare-fun m!477329 () Bool)

(assert (=> b!496060 m!477329))

(assert (=> b!496060 m!477323))

(declare-fun m!477331 () Bool)

(assert (=> b!496060 m!477331))

(assert (=> b!496060 m!477307))

(declare-fun m!477333 () Bool)

(assert (=> b!496060 m!477333))

(assert (=> b!496060 m!477307))

(declare-fun m!477335 () Bool)

(assert (=> b!496061 m!477335))

(declare-fun m!477337 () Bool)

(assert (=> b!496062 m!477337))

(assert (=> b!496070 m!477307))

(assert (=> b!496070 m!477307))

(declare-fun m!477339 () Bool)

(assert (=> b!496070 m!477339))

(declare-fun m!477341 () Bool)

(assert (=> b!496067 m!477341))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45226 () Bool)

(assert start!45226)

(declare-fun b!496192 () Bool)

(declare-fun res!298735 () Bool)

(declare-fun e!290992 () Bool)

(assert (=> b!496192 (=> (not res!298735) (not e!290992))))

(declare-datatypes ((array!32074 0))(
  ( (array!32075 (arr!15417 (Array (_ BitVec 32) (_ BitVec 64))) (size!15781 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32074)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496192 (= res!298735 (validKeyInArray!0 (select (arr!15417 a!3235) j!176)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!290991 () Bool)

(declare-fun b!496193 () Bool)

(declare-datatypes ((SeekEntryResult!3891 0))(
  ( (MissingZero!3891 (index!17743 (_ BitVec 32))) (Found!3891 (index!17744 (_ BitVec 32))) (Intermediate!3891 (undefined!4703 Bool) (index!17745 (_ BitVec 32)) (x!46834 (_ BitVec 32))) (Undefined!3891) (MissingVacant!3891 (index!17746 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32074 (_ BitVec 32)) SeekEntryResult!3891)

(assert (=> b!496193 (= e!290991 (= (seekEntryOrOpen!0 (select (arr!15417 a!3235) j!176) a!3235 mask!3524) (Found!3891 j!176)))))

(declare-fun b!496194 () Bool)

(declare-fun res!298734 () Bool)

(declare-fun e!290993 () Bool)

(assert (=> b!496194 (=> (not res!298734) (not e!290993))))

(declare-datatypes ((List!9628 0))(
  ( (Nil!9625) (Cons!9624 (h!10495 (_ BitVec 64)) (t!15864 List!9628)) )
))
(declare-fun arrayNoDuplicates!0 (array!32074 (_ BitVec 32) List!9628) Bool)

(assert (=> b!496194 (= res!298734 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9625))))

(declare-fun res!298733 () Bool)

(assert (=> start!45226 (=> (not res!298733) (not e!290992))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45226 (= res!298733 (validMask!0 mask!3524))))

(assert (=> start!45226 e!290992))

(assert (=> start!45226 true))

(declare-fun array_inv!11191 (array!32074) Bool)

(assert (=> start!45226 (array_inv!11191 a!3235)))

(declare-fun b!496195 () Bool)

(declare-fun res!298739 () Bool)

(assert (=> b!496195 (=> (not res!298739) (not e!290992))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!496195 (= res!298739 (and (= (size!15781 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15781 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15781 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496196 () Bool)

(assert (=> b!496196 (= e!290992 e!290993)))

(declare-fun res!298731 () Bool)

(assert (=> b!496196 (=> (not res!298731) (not e!290993))))

(declare-fun lt!224683 () SeekEntryResult!3891)

(assert (=> b!496196 (= res!298731 (or (= lt!224683 (MissingZero!3891 i!1204)) (= lt!224683 (MissingVacant!3891 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!496196 (= lt!224683 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!496197 () Bool)

(declare-fun e!290995 () Bool)

(assert (=> b!496197 (= e!290995 true)))

(declare-fun lt!224680 () SeekEntryResult!3891)

(assert (=> b!496197 (and (bvslt (x!46834 lt!224680) #b01111111111111111111111111111110) (or (= (select (arr!15417 a!3235) (index!17745 lt!224680)) (select (arr!15417 a!3235) j!176)) (= (select (arr!15417 a!3235) (index!17745 lt!224680)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15417 a!3235) (index!17745 lt!224680)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496198 () Bool)

(declare-fun res!298736 () Bool)

(assert (=> b!496198 (=> (not res!298736) (not e!290992))))

(declare-fun arrayContainsKey!0 (array!32074 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496198 (= res!298736 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496199 () Bool)

(assert (=> b!496199 (= e!290993 (not e!290995))))

(declare-fun res!298730 () Bool)

(assert (=> b!496199 (=> res!298730 e!290995)))

(declare-fun lt!224681 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32074 (_ BitVec 32)) SeekEntryResult!3891)

(assert (=> b!496199 (= res!298730 (= lt!224680 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224681 (select (store (arr!15417 a!3235) i!1204 k!2280) j!176) (array!32075 (store (arr!15417 a!3235) i!1204 k!2280) (size!15781 a!3235)) mask!3524)))))

(declare-fun lt!224684 () (_ BitVec 32))

(assert (=> b!496199 (= lt!224680 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224684 (select (arr!15417 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496199 (= lt!224681 (toIndex!0 (select (store (arr!15417 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!496199 (= lt!224684 (toIndex!0 (select (arr!15417 a!3235) j!176) mask!3524))))

(assert (=> b!496199 e!290991))

(declare-fun res!298729 () Bool)

(assert (=> b!496199 (=> (not res!298729) (not e!290991))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32074 (_ BitVec 32)) Bool)

(assert (=> b!496199 (= res!298729 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14720 0))(
  ( (Unit!14721) )
))
(declare-fun lt!224682 () Unit!14720)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32074 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14720)

(assert (=> b!496199 (= lt!224682 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496200 () Bool)

(declare-fun res!298738 () Bool)

(assert (=> b!496200 (=> res!298738 e!290995)))

(assert (=> b!496200 (= res!298738 (or (undefined!4703 lt!224680) (not (is-Intermediate!3891 lt!224680))))))

(declare-fun b!496201 () Bool)

(declare-fun res!298732 () Bool)

(assert (=> b!496201 (=> (not res!298732) (not e!290993))))

(assert (=> b!496201 (= res!298732 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496202 () Bool)

(declare-fun res!298737 () Bool)

(assert (=> b!496202 (=> (not res!298737) (not e!290992))))

(assert (=> b!496202 (= res!298737 (validKeyInArray!0 k!2280))))

(assert (= (and start!45226 res!298733) b!496195))

(assert (= (and b!496195 res!298739) b!496192))

(assert (= (and b!496192 res!298735) b!496202))

(assert (= (and b!496202 res!298737) b!496198))

(assert (= (and b!496198 res!298736) b!496196))

(assert (= (and b!496196 res!298731) b!496201))

(assert (= (and b!496201 res!298732) b!496194))

(assert (= (and b!496194 res!298734) b!496199))

(assert (= (and b!496199 res!298729) b!496193))

(assert (= (and b!496199 (not res!298730)) b!496200))

(assert (= (and b!496200 (not res!298738)) b!496197))

(declare-fun m!477457 () Bool)

(assert (=> b!496197 m!477457))

(declare-fun m!477459 () Bool)

(assert (=> b!496197 m!477459))

(assert (=> b!496192 m!477459))

(assert (=> b!496192 m!477459))

(declare-fun m!477461 () Bool)

(assert (=> b!496192 m!477461))

(declare-fun m!477463 () Bool)

(assert (=> start!45226 m!477463))

(declare-fun m!477465 () Bool)

(assert (=> start!45226 m!477465))

(declare-fun m!477467 () Bool)

(assert (=> b!496196 m!477467))

(declare-fun m!477469 () Bool)

(assert (=> b!496201 m!477469))

(assert (=> b!496193 m!477459))

(assert (=> b!496193 m!477459))

(declare-fun m!477471 () Bool)

(assert (=> b!496193 m!477471))

(declare-fun m!477473 () Bool)

(assert (=> b!496194 m!477473))

(declare-fun m!477475 () Bool)

(assert (=> b!496199 m!477475))

(declare-fun m!477477 () Bool)

(assert (=> b!496199 m!477477))

(declare-fun m!477479 () Bool)

(assert (=> b!496199 m!477479))

(assert (=> b!496199 m!477479))

(declare-fun m!477481 () Bool)

(assert (=> b!496199 m!477481))

(assert (=> b!496199 m!477459))

(declare-fun m!477483 () Bool)

(assert (=> b!496199 m!477483))

(assert (=> b!496199 m!477459))

(assert (=> b!496199 m!477459))

(declare-fun m!477485 () Bool)

(assert (=> b!496199 m!477485))

(declare-fun m!477487 () Bool)

(assert (=> b!496199 m!477487))

(assert (=> b!496199 m!477479))

(declare-fun m!477489 () Bool)

(assert (=> b!496199 m!477489))

(declare-fun m!477491 () Bool)

(assert (=> b!496202 m!477491))

(declare-fun m!477493 () Bool)

(assert (=> b!496198 m!477493))

(push 1)


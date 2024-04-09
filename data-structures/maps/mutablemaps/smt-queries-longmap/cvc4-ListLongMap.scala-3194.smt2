; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44804 () Bool)

(assert start!44804)

(declare-fun b!491642 () Bool)

(declare-fun e!288834 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!491642 (= e!288834 (bvsge mask!3524 #b00000000000000000000000000000000))))

(declare-fun b!491643 () Bool)

(declare-fun res!294737 () Bool)

(declare-fun e!288836 () Bool)

(assert (=> b!491643 (=> (not res!294737) (not e!288836))))

(declare-datatypes ((array!31823 0))(
  ( (array!31824 (arr!15296 (Array (_ BitVec 32) (_ BitVec 64))) (size!15660 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31823)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31823 (_ BitVec 32)) Bool)

(assert (=> b!491643 (= res!294737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491644 () Bool)

(declare-fun res!294736 () Bool)

(declare-fun e!288835 () Bool)

(assert (=> b!491644 (=> (not res!294736) (not e!288835))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!491644 (= res!294736 (and (= (size!15660 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15660 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15660 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!491645 () Bool)

(declare-fun res!294734 () Bool)

(assert (=> b!491645 (=> (not res!294734) (not e!288835))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491645 (= res!294734 (validKeyInArray!0 k!2280))))

(declare-fun e!288837 () Bool)

(declare-fun b!491646 () Bool)

(declare-datatypes ((SeekEntryResult!3770 0))(
  ( (MissingZero!3770 (index!17259 (_ BitVec 32))) (Found!3770 (index!17260 (_ BitVec 32))) (Intermediate!3770 (undefined!4582 Bool) (index!17261 (_ BitVec 32)) (x!46367 (_ BitVec 32))) (Undefined!3770) (MissingVacant!3770 (index!17262 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31823 (_ BitVec 32)) SeekEntryResult!3770)

(assert (=> b!491646 (= e!288837 (= (seekEntryOrOpen!0 (select (arr!15296 a!3235) j!176) a!3235 mask!3524) (Found!3770 j!176)))))

(declare-fun b!491647 () Bool)

(declare-fun res!294732 () Bool)

(assert (=> b!491647 (=> (not res!294732) (not e!288835))))

(declare-fun arrayContainsKey!0 (array!31823 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491647 (= res!294732 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!491648 () Bool)

(declare-fun res!294731 () Bool)

(assert (=> b!491648 (=> (not res!294731) (not e!288836))))

(declare-datatypes ((List!9507 0))(
  ( (Nil!9504) (Cons!9503 (h!10365 (_ BitVec 64)) (t!15743 List!9507)) )
))
(declare-fun arrayNoDuplicates!0 (array!31823 (_ BitVec 32) List!9507) Bool)

(assert (=> b!491648 (= res!294731 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9504))))

(declare-fun res!294735 () Bool)

(assert (=> start!44804 (=> (not res!294735) (not e!288835))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44804 (= res!294735 (validMask!0 mask!3524))))

(assert (=> start!44804 e!288835))

(assert (=> start!44804 true))

(declare-fun array_inv!11070 (array!31823) Bool)

(assert (=> start!44804 (array_inv!11070 a!3235)))

(declare-fun b!491649 () Bool)

(assert (=> b!491649 (= e!288835 e!288836)))

(declare-fun res!294730 () Bool)

(assert (=> b!491649 (=> (not res!294730) (not e!288836))))

(declare-fun lt!222338 () SeekEntryResult!3770)

(assert (=> b!491649 (= res!294730 (or (= lt!222338 (MissingZero!3770 i!1204)) (= lt!222338 (MissingVacant!3770 i!1204))))))

(assert (=> b!491649 (= lt!222338 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!491650 () Bool)

(declare-fun res!294728 () Bool)

(assert (=> b!491650 (=> (not res!294728) (not e!288835))))

(assert (=> b!491650 (= res!294728 (validKeyInArray!0 (select (arr!15296 a!3235) j!176)))))

(declare-fun b!491651 () Bool)

(assert (=> b!491651 (= e!288836 (not e!288834))))

(declare-fun res!294733 () Bool)

(assert (=> b!491651 (=> res!294733 e!288834)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31823 (_ BitVec 32)) SeekEntryResult!3770)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491651 (= res!294733 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15296 a!3235) j!176) mask!3524) (select (arr!15296 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!15296 a!3235) i!1204 k!2280) j!176) mask!3524) (select (store (arr!15296 a!3235) i!1204 k!2280) j!176) (array!31824 (store (arr!15296 a!3235) i!1204 k!2280) (size!15660 a!3235)) mask!3524)))))

(assert (=> b!491651 e!288837))

(declare-fun res!294729 () Bool)

(assert (=> b!491651 (=> (not res!294729) (not e!288837))))

(assert (=> b!491651 (= res!294729 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14478 0))(
  ( (Unit!14479) )
))
(declare-fun lt!222337 () Unit!14478)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31823 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14478)

(assert (=> b!491651 (= lt!222337 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!44804 res!294735) b!491644))

(assert (= (and b!491644 res!294736) b!491650))

(assert (= (and b!491650 res!294728) b!491645))

(assert (= (and b!491645 res!294734) b!491647))

(assert (= (and b!491647 res!294732) b!491649))

(assert (= (and b!491649 res!294730) b!491643))

(assert (= (and b!491643 res!294737) b!491648))

(assert (= (and b!491648 res!294731) b!491651))

(assert (= (and b!491651 res!294729) b!491646))

(assert (= (and b!491651 (not res!294733)) b!491642))

(declare-fun m!472423 () Bool)

(assert (=> b!491650 m!472423))

(assert (=> b!491650 m!472423))

(declare-fun m!472425 () Bool)

(assert (=> b!491650 m!472425))

(declare-fun m!472427 () Bool)

(assert (=> b!491647 m!472427))

(assert (=> b!491646 m!472423))

(assert (=> b!491646 m!472423))

(declare-fun m!472429 () Bool)

(assert (=> b!491646 m!472429))

(declare-fun m!472431 () Bool)

(assert (=> start!44804 m!472431))

(declare-fun m!472433 () Bool)

(assert (=> start!44804 m!472433))

(declare-fun m!472435 () Bool)

(assert (=> b!491648 m!472435))

(declare-fun m!472437 () Bool)

(assert (=> b!491651 m!472437))

(declare-fun m!472439 () Bool)

(assert (=> b!491651 m!472439))

(declare-fun m!472441 () Bool)

(assert (=> b!491651 m!472441))

(declare-fun m!472443 () Bool)

(assert (=> b!491651 m!472443))

(assert (=> b!491651 m!472423))

(declare-fun m!472445 () Bool)

(assert (=> b!491651 m!472445))

(assert (=> b!491651 m!472423))

(assert (=> b!491651 m!472443))

(declare-fun m!472447 () Bool)

(assert (=> b!491651 m!472447))

(assert (=> b!491651 m!472441))

(declare-fun m!472449 () Bool)

(assert (=> b!491651 m!472449))

(assert (=> b!491651 m!472423))

(declare-fun m!472451 () Bool)

(assert (=> b!491651 m!472451))

(assert (=> b!491651 m!472441))

(assert (=> b!491651 m!472447))

(declare-fun m!472453 () Bool)

(assert (=> b!491645 m!472453))

(declare-fun m!472455 () Bool)

(assert (=> b!491649 m!472455))

(declare-fun m!472457 () Bool)

(assert (=> b!491643 m!472457))

(push 1)

(assert (not b!491650))

(assert (not b!491643))


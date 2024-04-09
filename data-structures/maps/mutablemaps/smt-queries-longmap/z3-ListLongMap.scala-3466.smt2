; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48138 () Bool)

(assert start!48138)

(declare-fun b!529876 () Bool)

(declare-fun e!308758 () Bool)

(declare-fun e!308756 () Bool)

(assert (=> b!529876 (= e!308758 e!308756)))

(declare-fun res!325732 () Bool)

(assert (=> b!529876 (=> res!325732 e!308756)))

(declare-fun lt!244446 () Bool)

(declare-datatypes ((SeekEntryResult!4585 0))(
  ( (MissingZero!4585 (index!20564 (_ BitVec 32))) (Found!4585 (index!20565 (_ BitVec 32))) (Intermediate!4585 (undefined!5397 Bool) (index!20566 (_ BitVec 32)) (x!49562 (_ BitVec 32))) (Undefined!4585) (MissingVacant!4585 (index!20567 (_ BitVec 32))) )
))
(declare-fun lt!244447 () SeekEntryResult!4585)

(assert (=> b!529876 (= res!325732 (or (and (not lt!244446) (undefined!5397 lt!244447)) (and (not lt!244446) (not (undefined!5397 lt!244447)))))))

(get-info :version)

(assert (=> b!529876 (= lt!244446 (not ((_ is Intermediate!4585) lt!244447)))))

(declare-fun b!529877 () Bool)

(declare-fun e!308754 () Bool)

(declare-fun e!308757 () Bool)

(assert (=> b!529877 (= e!308754 e!308757)))

(declare-fun res!325736 () Bool)

(assert (=> b!529877 (=> (not res!325736) (not e!308757))))

(declare-fun lt!244443 () SeekEntryResult!4585)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!529877 (= res!325736 (or (= lt!244443 (MissingZero!4585 i!1204)) (= lt!244443 (MissingVacant!4585 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33534 0))(
  ( (array!33535 (arr!16111 (Array (_ BitVec 32) (_ BitVec 64))) (size!16475 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33534)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33534 (_ BitVec 32)) SeekEntryResult!4585)

(assert (=> b!529877 (= lt!244443 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!529878 () Bool)

(declare-fun res!325742 () Bool)

(assert (=> b!529878 (=> (not res!325742) (not e!308754))))

(declare-fun arrayContainsKey!0 (array!33534 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!529878 (= res!325742 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!529879 () Bool)

(assert (=> b!529879 (= e!308757 (not e!308758))))

(declare-fun res!325741 () Bool)

(assert (=> b!529879 (=> res!325741 e!308758)))

(declare-fun lt!244444 () (_ BitVec 64))

(declare-fun lt!244448 () (_ BitVec 32))

(declare-fun lt!244440 () array!33534)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33534 (_ BitVec 32)) SeekEntryResult!4585)

(assert (=> b!529879 (= res!325741 (= lt!244447 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244448 lt!244444 lt!244440 mask!3524)))))

(declare-fun lt!244441 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!529879 (= lt!244447 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244441 (select (arr!16111 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529879 (= lt!244448 (toIndex!0 lt!244444 mask!3524))))

(assert (=> b!529879 (= lt!244444 (select (store (arr!16111 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!529879 (= lt!244441 (toIndex!0 (select (arr!16111 a!3235) j!176) mask!3524))))

(assert (=> b!529879 (= lt!244440 (array!33535 (store (arr!16111 a!3235) i!1204 k0!2280) (size!16475 a!3235)))))

(declare-fun e!308753 () Bool)

(assert (=> b!529879 e!308753))

(declare-fun res!325737 () Bool)

(assert (=> b!529879 (=> (not res!325737) (not e!308753))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33534 (_ BitVec 32)) Bool)

(assert (=> b!529879 (= res!325737 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16774 0))(
  ( (Unit!16775) )
))
(declare-fun lt!244445 () Unit!16774)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33534 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16774)

(assert (=> b!529879 (= lt!244445 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!529881 () Bool)

(declare-fun res!325735 () Bool)

(assert (=> b!529881 (=> (not res!325735) (not e!308754))))

(assert (=> b!529881 (= res!325735 (and (= (size!16475 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16475 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16475 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!529882 () Bool)

(declare-fun res!325734 () Bool)

(assert (=> b!529882 (=> (not res!325734) (not e!308757))))

(declare-datatypes ((List!10322 0))(
  ( (Nil!10319) (Cons!10318 (h!11258 (_ BitVec 64)) (t!16558 List!10322)) )
))
(declare-fun arrayNoDuplicates!0 (array!33534 (_ BitVec 32) List!10322) Bool)

(assert (=> b!529882 (= res!325734 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10319))))

(declare-fun b!529883 () Bool)

(declare-fun res!325733 () Bool)

(assert (=> b!529883 (=> (not res!325733) (not e!308757))))

(assert (=> b!529883 (= res!325733 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!529884 () Bool)

(declare-fun res!325740 () Bool)

(assert (=> b!529884 (=> (not res!325740) (not e!308754))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!529884 (= res!325740 (validKeyInArray!0 (select (arr!16111 a!3235) j!176)))))

(declare-fun res!325739 () Bool)

(assert (=> start!48138 (=> (not res!325739) (not e!308754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48138 (= res!325739 (validMask!0 mask!3524))))

(assert (=> start!48138 e!308754))

(assert (=> start!48138 true))

(declare-fun array_inv!11885 (array!33534) Bool)

(assert (=> start!48138 (array_inv!11885 a!3235)))

(declare-fun b!529880 () Bool)

(declare-fun res!325738 () Bool)

(assert (=> b!529880 (=> (not res!325738) (not e!308754))))

(assert (=> b!529880 (= res!325738 (validKeyInArray!0 k0!2280))))

(declare-fun b!529885 () Bool)

(assert (=> b!529885 (= e!308756 true)))

(declare-fun lt!244442 () SeekEntryResult!4585)

(assert (=> b!529885 (= lt!244442 (seekEntryOrOpen!0 lt!244444 lt!244440 mask!3524))))

(assert (=> b!529885 false))

(declare-fun b!529886 () Bool)

(assert (=> b!529886 (= e!308753 (= (seekEntryOrOpen!0 (select (arr!16111 a!3235) j!176) a!3235 mask!3524) (Found!4585 j!176)))))

(assert (= (and start!48138 res!325739) b!529881))

(assert (= (and b!529881 res!325735) b!529884))

(assert (= (and b!529884 res!325740) b!529880))

(assert (= (and b!529880 res!325738) b!529878))

(assert (= (and b!529878 res!325742) b!529877))

(assert (= (and b!529877 res!325736) b!529883))

(assert (= (and b!529883 res!325733) b!529882))

(assert (= (and b!529882 res!325734) b!529879))

(assert (= (and b!529879 res!325737) b!529886))

(assert (= (and b!529879 (not res!325741)) b!529876))

(assert (= (and b!529876 (not res!325732)) b!529885))

(declare-fun m!510441 () Bool)

(assert (=> b!529885 m!510441))

(declare-fun m!510443 () Bool)

(assert (=> start!48138 m!510443))

(declare-fun m!510445 () Bool)

(assert (=> start!48138 m!510445))

(declare-fun m!510447 () Bool)

(assert (=> b!529880 m!510447))

(declare-fun m!510449 () Bool)

(assert (=> b!529879 m!510449))

(declare-fun m!510451 () Bool)

(assert (=> b!529879 m!510451))

(declare-fun m!510453 () Bool)

(assert (=> b!529879 m!510453))

(declare-fun m!510455 () Bool)

(assert (=> b!529879 m!510455))

(declare-fun m!510457 () Bool)

(assert (=> b!529879 m!510457))

(assert (=> b!529879 m!510455))

(declare-fun m!510459 () Bool)

(assert (=> b!529879 m!510459))

(declare-fun m!510461 () Bool)

(assert (=> b!529879 m!510461))

(declare-fun m!510463 () Bool)

(assert (=> b!529879 m!510463))

(assert (=> b!529879 m!510455))

(declare-fun m!510465 () Bool)

(assert (=> b!529879 m!510465))

(assert (=> b!529886 m!510455))

(assert (=> b!529886 m!510455))

(declare-fun m!510467 () Bool)

(assert (=> b!529886 m!510467))

(declare-fun m!510469 () Bool)

(assert (=> b!529877 m!510469))

(declare-fun m!510471 () Bool)

(assert (=> b!529883 m!510471))

(assert (=> b!529884 m!510455))

(assert (=> b!529884 m!510455))

(declare-fun m!510473 () Bool)

(assert (=> b!529884 m!510473))

(declare-fun m!510475 () Bool)

(assert (=> b!529878 m!510475))

(declare-fun m!510477 () Bool)

(assert (=> b!529882 m!510477))

(check-sat (not b!529884) (not b!529880) (not b!529885) (not b!529886) (not b!529883) (not b!529878) (not b!529882) (not b!529877) (not b!529879) (not start!48138))
(check-sat)

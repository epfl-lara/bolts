; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44650 () Bool)

(assert start!44650)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!287885 () Bool)

(declare-datatypes ((array!31669 0))(
  ( (array!31670 (arr!15219 (Array (_ BitVec 32) (_ BitVec 64))) (size!15583 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31669)

(declare-fun b!489537 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3693 0))(
  ( (MissingZero!3693 (index!16951 (_ BitVec 32))) (Found!3693 (index!16952 (_ BitVec 32))) (Intermediate!3693 (undefined!4505 Bool) (index!16953 (_ BitVec 32)) (x!46090 (_ BitVec 32))) (Undefined!3693) (MissingVacant!3693 (index!16954 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31669 (_ BitVec 32)) SeekEntryResult!3693)

(assert (=> b!489537 (= e!287885 (= (seekEntryOrOpen!0 (select (arr!15219 a!3235) j!176) a!3235 mask!3524) (Found!3693 j!176)))))

(declare-fun b!489538 () Bool)

(declare-fun res!292623 () Bool)

(declare-fun e!287886 () Bool)

(assert (=> b!489538 (=> (not res!292623) (not e!287886))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!489538 (= res!292623 (and (= (size!15583 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15583 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15583 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!292629 () Bool)

(assert (=> start!44650 (=> (not res!292629) (not e!287886))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44650 (= res!292629 (validMask!0 mask!3524))))

(assert (=> start!44650 e!287886))

(assert (=> start!44650 true))

(declare-fun array_inv!10993 (array!31669) Bool)

(assert (=> start!44650 (array_inv!10993 a!3235)))

(declare-fun b!489539 () Bool)

(declare-fun e!287884 () Bool)

(assert (=> b!489539 (= e!287886 e!287884)))

(declare-fun res!292625 () Bool)

(assert (=> b!489539 (=> (not res!292625) (not e!287884))))

(declare-fun lt!220986 () SeekEntryResult!3693)

(assert (=> b!489539 (= res!292625 (or (= lt!220986 (MissingZero!3693 i!1204)) (= lt!220986 (MissingVacant!3693 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!489539 (= lt!220986 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!489540 () Bool)

(declare-fun res!292624 () Bool)

(assert (=> b!489540 (=> (not res!292624) (not e!287884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31669 (_ BitVec 32)) Bool)

(assert (=> b!489540 (= res!292624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489541 () Bool)

(declare-fun res!292631 () Bool)

(assert (=> b!489541 (=> (not res!292631) (not e!287886))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489541 (= res!292631 (validKeyInArray!0 (select (arr!15219 a!3235) j!176)))))

(declare-fun b!489542 () Bool)

(declare-fun res!292628 () Bool)

(assert (=> b!489542 (=> (not res!292628) (not e!287886))))

(assert (=> b!489542 (= res!292628 (validKeyInArray!0 k!2280))))

(declare-fun b!489543 () Bool)

(declare-fun res!292627 () Bool)

(assert (=> b!489543 (=> (not res!292627) (not e!287884))))

(declare-datatypes ((List!9430 0))(
  ( (Nil!9427) (Cons!9426 (h!10288 (_ BitVec 64)) (t!15666 List!9430)) )
))
(declare-fun arrayNoDuplicates!0 (array!31669 (_ BitVec 32) List!9430) Bool)

(assert (=> b!489543 (= res!292627 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9427))))

(declare-fun b!489544 () Bool)

(assert (=> b!489544 (= e!287884 (not true))))

(declare-fun lt!220984 () SeekEntryResult!3693)

(declare-fun lt!220987 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31669 (_ BitVec 32)) SeekEntryResult!3693)

(assert (=> b!489544 (= lt!220984 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220987 (select (store (arr!15219 a!3235) i!1204 k!2280) j!176) (array!31670 (store (arr!15219 a!3235) i!1204 k!2280) (size!15583 a!3235)) mask!3524))))

(declare-fun lt!220988 () (_ BitVec 32))

(declare-fun lt!220983 () SeekEntryResult!3693)

(assert (=> b!489544 (= lt!220983 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220988 (select (arr!15219 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489544 (= lt!220987 (toIndex!0 (select (store (arr!15219 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489544 (= lt!220988 (toIndex!0 (select (arr!15219 a!3235) j!176) mask!3524))))

(assert (=> b!489544 e!287885))

(declare-fun res!292630 () Bool)

(assert (=> b!489544 (=> (not res!292630) (not e!287885))))

(assert (=> b!489544 (= res!292630 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14324 0))(
  ( (Unit!14325) )
))
(declare-fun lt!220985 () Unit!14324)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31669 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14324)

(assert (=> b!489544 (= lt!220985 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489545 () Bool)

(declare-fun res!292626 () Bool)

(assert (=> b!489545 (=> (not res!292626) (not e!287886))))

(declare-fun arrayContainsKey!0 (array!31669 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489545 (= res!292626 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44650 res!292629) b!489538))

(assert (= (and b!489538 res!292623) b!489541))

(assert (= (and b!489541 res!292631) b!489542))

(assert (= (and b!489542 res!292628) b!489545))

(assert (= (and b!489545 res!292626) b!489539))

(assert (= (and b!489539 res!292625) b!489540))

(assert (= (and b!489540 res!292624) b!489543))

(assert (= (and b!489543 res!292627) b!489544))

(assert (= (and b!489544 res!292630) b!489537))

(declare-fun m!469447 () Bool)

(assert (=> b!489540 m!469447))

(declare-fun m!469449 () Bool)

(assert (=> b!489539 m!469449))

(declare-fun m!469451 () Bool)

(assert (=> b!489541 m!469451))

(assert (=> b!489541 m!469451))

(declare-fun m!469453 () Bool)

(assert (=> b!489541 m!469453))

(declare-fun m!469455 () Bool)

(assert (=> start!44650 m!469455))

(declare-fun m!469457 () Bool)

(assert (=> start!44650 m!469457))

(declare-fun m!469459 () Bool)

(assert (=> b!489544 m!469459))

(declare-fun m!469461 () Bool)

(assert (=> b!489544 m!469461))

(declare-fun m!469463 () Bool)

(assert (=> b!489544 m!469463))

(assert (=> b!489544 m!469451))

(declare-fun m!469465 () Bool)

(assert (=> b!489544 m!469465))

(assert (=> b!489544 m!469451))

(declare-fun m!469467 () Bool)

(assert (=> b!489544 m!469467))

(assert (=> b!489544 m!469463))

(declare-fun m!469469 () Bool)

(assert (=> b!489544 m!469469))

(assert (=> b!489544 m!469463))

(declare-fun m!469471 () Bool)

(assert (=> b!489544 m!469471))

(assert (=> b!489544 m!469451))

(declare-fun m!469473 () Bool)

(assert (=> b!489544 m!469473))

(declare-fun m!469475 () Bool)

(assert (=> b!489542 m!469475))

(declare-fun m!469477 () Bool)

(assert (=> b!489543 m!469477))

(assert (=> b!489537 m!469451))

(assert (=> b!489537 m!469451))

(declare-fun m!469479 () Bool)

(assert (=> b!489537 m!469479))

(declare-fun m!469481 () Bool)

(assert (=> b!489545 m!469481))

(push 1)


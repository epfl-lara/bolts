; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44648 () Bool)

(assert start!44648)

(declare-fun b!489511 () Bool)

(declare-fun res!292602 () Bool)

(declare-fun e!287873 () Bool)

(assert (=> b!489511 (=> (not res!292602) (not e!287873))))

(declare-datatypes ((array!31667 0))(
  ( (array!31668 (arr!15218 (Array (_ BitVec 32) (_ BitVec 64))) (size!15582 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31667)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31667 (_ BitVec 32)) Bool)

(assert (=> b!489511 (= res!292602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489512 () Bool)

(declare-fun res!292601 () Bool)

(declare-fun e!287874 () Bool)

(assert (=> b!489512 (=> (not res!292601) (not e!287874))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31667 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489512 (= res!292601 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489513 () Bool)

(assert (=> b!489513 (= e!287874 e!287873)))

(declare-fun res!292597 () Bool)

(assert (=> b!489513 (=> (not res!292597) (not e!287873))))

(declare-datatypes ((SeekEntryResult!3692 0))(
  ( (MissingZero!3692 (index!16947 (_ BitVec 32))) (Found!3692 (index!16948 (_ BitVec 32))) (Intermediate!3692 (undefined!4504 Bool) (index!16949 (_ BitVec 32)) (x!46081 (_ BitVec 32))) (Undefined!3692) (MissingVacant!3692 (index!16950 (_ BitVec 32))) )
))
(declare-fun lt!220965 () SeekEntryResult!3692)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!489513 (= res!292597 (or (= lt!220965 (MissingZero!3692 i!1204)) (= lt!220965 (MissingVacant!3692 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31667 (_ BitVec 32)) SeekEntryResult!3692)

(assert (=> b!489513 (= lt!220965 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!489514 () Bool)

(declare-fun res!292596 () Bool)

(assert (=> b!489514 (=> (not res!292596) (not e!287874))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489514 (= res!292596 (validKeyInArray!0 k!2280))))

(declare-fun b!489515 () Bool)

(assert (=> b!489515 (= e!287873 (not true))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!220970 () (_ BitVec 32))

(declare-fun lt!220968 () SeekEntryResult!3692)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31667 (_ BitVec 32)) SeekEntryResult!3692)

(assert (=> b!489515 (= lt!220968 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220970 (select (store (arr!15218 a!3235) i!1204 k!2280) j!176) (array!31668 (store (arr!15218 a!3235) i!1204 k!2280) (size!15582 a!3235)) mask!3524))))

(declare-fun lt!220969 () (_ BitVec 32))

(declare-fun lt!220967 () SeekEntryResult!3692)

(assert (=> b!489515 (= lt!220967 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220969 (select (arr!15218 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489515 (= lt!220970 (toIndex!0 (select (store (arr!15218 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489515 (= lt!220969 (toIndex!0 (select (arr!15218 a!3235) j!176) mask!3524))))

(declare-fun e!287872 () Bool)

(assert (=> b!489515 e!287872))

(declare-fun res!292603 () Bool)

(assert (=> b!489515 (=> (not res!292603) (not e!287872))))

(assert (=> b!489515 (= res!292603 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14322 0))(
  ( (Unit!14323) )
))
(declare-fun lt!220966 () Unit!14322)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31667 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14322)

(assert (=> b!489515 (= lt!220966 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489516 () Bool)

(assert (=> b!489516 (= e!287872 (= (seekEntryOrOpen!0 (select (arr!15218 a!3235) j!176) a!3235 mask!3524) (Found!3692 j!176)))))

(declare-fun res!292599 () Bool)

(assert (=> start!44648 (=> (not res!292599) (not e!287874))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44648 (= res!292599 (validMask!0 mask!3524))))

(assert (=> start!44648 e!287874))

(assert (=> start!44648 true))

(declare-fun array_inv!10992 (array!31667) Bool)

(assert (=> start!44648 (array_inv!10992 a!3235)))

(declare-fun b!489510 () Bool)

(declare-fun res!292600 () Bool)

(assert (=> b!489510 (=> (not res!292600) (not e!287874))))

(assert (=> b!489510 (= res!292600 (and (= (size!15582 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15582 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15582 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489517 () Bool)

(declare-fun res!292604 () Bool)

(assert (=> b!489517 (=> (not res!292604) (not e!287874))))

(assert (=> b!489517 (= res!292604 (validKeyInArray!0 (select (arr!15218 a!3235) j!176)))))

(declare-fun b!489518 () Bool)

(declare-fun res!292598 () Bool)

(assert (=> b!489518 (=> (not res!292598) (not e!287873))))

(declare-datatypes ((List!9429 0))(
  ( (Nil!9426) (Cons!9425 (h!10287 (_ BitVec 64)) (t!15665 List!9429)) )
))
(declare-fun arrayNoDuplicates!0 (array!31667 (_ BitVec 32) List!9429) Bool)

(assert (=> b!489518 (= res!292598 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9426))))

(assert (= (and start!44648 res!292599) b!489510))

(assert (= (and b!489510 res!292600) b!489517))

(assert (= (and b!489517 res!292604) b!489514))

(assert (= (and b!489514 res!292596) b!489512))

(assert (= (and b!489512 res!292601) b!489513))

(assert (= (and b!489513 res!292597) b!489511))

(assert (= (and b!489511 res!292602) b!489518))

(assert (= (and b!489518 res!292598) b!489515))

(assert (= (and b!489515 res!292603) b!489516))

(declare-fun m!469411 () Bool)

(assert (=> b!489518 m!469411))

(declare-fun m!469413 () Bool)

(assert (=> b!489514 m!469413))

(declare-fun m!469415 () Bool)

(assert (=> b!489513 m!469415))

(declare-fun m!469417 () Bool)

(assert (=> b!489517 m!469417))

(assert (=> b!489517 m!469417))

(declare-fun m!469419 () Bool)

(assert (=> b!489517 m!469419))

(assert (=> b!489516 m!469417))

(assert (=> b!489516 m!469417))

(declare-fun m!469421 () Bool)

(assert (=> b!489516 m!469421))

(assert (=> b!489515 m!469417))

(declare-fun m!469423 () Bool)

(assert (=> b!489515 m!469423))

(declare-fun m!469425 () Bool)

(assert (=> b!489515 m!469425))

(declare-fun m!469427 () Bool)

(assert (=> b!489515 m!469427))

(declare-fun m!469429 () Bool)

(assert (=> b!489515 m!469429))

(assert (=> b!489515 m!469417))

(declare-fun m!469431 () Bool)

(assert (=> b!489515 m!469431))

(assert (=> b!489515 m!469417))

(declare-fun m!469433 () Bool)

(assert (=> b!489515 m!469433))

(assert (=> b!489515 m!469429))

(declare-fun m!469435 () Bool)

(assert (=> b!489515 m!469435))

(assert (=> b!489515 m!469429))

(declare-fun m!469437 () Bool)

(assert (=> b!489515 m!469437))

(declare-fun m!469439 () Bool)

(assert (=> b!489512 m!469439))

(declare-fun m!469441 () Bool)

(assert (=> b!489511 m!469441))

(declare-fun m!469443 () Bool)

(assert (=> start!44648 m!469443))

(declare-fun m!469445 () Bool)

(assert (=> start!44648 m!469445))

(push 1)


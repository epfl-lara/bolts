; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45784 () Bool)

(assert start!45784)

(declare-fun b!506359 () Bool)

(declare-fun res!307476 () Bool)

(declare-fun e!296374 () Bool)

(assert (=> b!506359 (=> (not res!307476) (not e!296374))))

(declare-datatypes ((array!32500 0))(
  ( (array!32501 (arr!15627 (Array (_ BitVec 32) (_ BitVec 64))) (size!15991 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32500)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32500 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506359 (= res!307476 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506360 () Bool)

(declare-fun res!307477 () Bool)

(declare-fun e!296373 () Bool)

(assert (=> b!506360 (=> (not res!307477) (not e!296373))))

(declare-datatypes ((List!9838 0))(
  ( (Nil!9835) (Cons!9834 (h!10711 (_ BitVec 64)) (t!16074 List!9838)) )
))
(declare-fun arrayNoDuplicates!0 (array!32500 (_ BitVec 32) List!9838) Bool)

(assert (=> b!506360 (= res!307477 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9835))))

(declare-fun b!506361 () Bool)

(assert (=> b!506361 (= e!296374 e!296373)))

(declare-fun res!307469 () Bool)

(assert (=> b!506361 (=> (not res!307469) (not e!296373))))

(declare-datatypes ((SeekEntryResult!4101 0))(
  ( (MissingZero!4101 (index!18592 (_ BitVec 32))) (Found!4101 (index!18593 (_ BitVec 32))) (Intermediate!4101 (undefined!4913 Bool) (index!18594 (_ BitVec 32)) (x!47625 (_ BitVec 32))) (Undefined!4101) (MissingVacant!4101 (index!18595 (_ BitVec 32))) )
))
(declare-fun lt!231119 () SeekEntryResult!4101)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!506361 (= res!307469 (or (= lt!231119 (MissingZero!4101 i!1204)) (= lt!231119 (MissingVacant!4101 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32500 (_ BitVec 32)) SeekEntryResult!4101)

(assert (=> b!506361 (= lt!231119 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!506362 () Bool)

(declare-fun e!296375 () Bool)

(assert (=> b!506362 (= e!296375 true)))

(assert (=> b!506362 false))

(declare-fun b!506363 () Bool)

(declare-fun e!296372 () Bool)

(assert (=> b!506363 (= e!296373 (not e!296372))))

(declare-fun res!307468 () Bool)

(assert (=> b!506363 (=> res!307468 e!296372)))

(declare-fun lt!231121 () SeekEntryResult!4101)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!231120 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32500 (_ BitVec 32)) SeekEntryResult!4101)

(assert (=> b!506363 (= res!307468 (= lt!231121 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231120 (select (store (arr!15627 a!3235) i!1204 k!2280) j!176) (array!32501 (store (arr!15627 a!3235) i!1204 k!2280) (size!15991 a!3235)) mask!3524)))))

(declare-fun lt!231117 () (_ BitVec 32))

(assert (=> b!506363 (= lt!231121 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231117 (select (arr!15627 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506363 (= lt!231120 (toIndex!0 (select (store (arr!15627 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!506363 (= lt!231117 (toIndex!0 (select (arr!15627 a!3235) j!176) mask!3524))))

(declare-fun e!296377 () Bool)

(assert (=> b!506363 e!296377))

(declare-fun res!307475 () Bool)

(assert (=> b!506363 (=> (not res!307475) (not e!296377))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32500 (_ BitVec 32)) Bool)

(assert (=> b!506363 (= res!307475 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15482 0))(
  ( (Unit!15483) )
))
(declare-fun lt!231118 () Unit!15482)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32500 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15482)

(assert (=> b!506363 (= lt!231118 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506365 () Bool)

(declare-fun res!307471 () Bool)

(assert (=> b!506365 (=> (not res!307471) (not e!296374))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506365 (= res!307471 (validKeyInArray!0 (select (arr!15627 a!3235) j!176)))))

(declare-fun b!506366 () Bool)

(declare-fun res!307473 () Bool)

(assert (=> b!506366 (=> (not res!307473) (not e!296373))))

(assert (=> b!506366 (= res!307473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506367 () Bool)

(declare-fun res!307478 () Bool)

(assert (=> b!506367 (=> (not res!307478) (not e!296374))))

(assert (=> b!506367 (= res!307478 (and (= (size!15991 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15991 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15991 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506368 () Bool)

(declare-fun res!307470 () Bool)

(assert (=> b!506368 (=> (not res!307470) (not e!296374))))

(assert (=> b!506368 (= res!307470 (validKeyInArray!0 k!2280))))

(declare-fun b!506369 () Bool)

(assert (=> b!506369 (= e!296372 e!296375)))

(declare-fun res!307474 () Bool)

(assert (=> b!506369 (=> res!307474 e!296375)))

(declare-fun lt!231122 () Bool)

(assert (=> b!506369 (= res!307474 (or (and (not lt!231122) (undefined!4913 lt!231121)) (and (not lt!231122) (not (undefined!4913 lt!231121)))))))

(assert (=> b!506369 (= lt!231122 (not (is-Intermediate!4101 lt!231121)))))

(declare-fun res!307472 () Bool)

(assert (=> start!45784 (=> (not res!307472) (not e!296374))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45784 (= res!307472 (validMask!0 mask!3524))))

(assert (=> start!45784 e!296374))

(assert (=> start!45784 true))

(declare-fun array_inv!11401 (array!32500) Bool)

(assert (=> start!45784 (array_inv!11401 a!3235)))

(declare-fun b!506364 () Bool)

(assert (=> b!506364 (= e!296377 (= (seekEntryOrOpen!0 (select (arr!15627 a!3235) j!176) a!3235 mask!3524) (Found!4101 j!176)))))

(assert (= (and start!45784 res!307472) b!506367))

(assert (= (and b!506367 res!307478) b!506365))

(assert (= (and b!506365 res!307471) b!506368))

(assert (= (and b!506368 res!307470) b!506359))

(assert (= (and b!506359 res!307476) b!506361))

(assert (= (and b!506361 res!307469) b!506366))

(assert (= (and b!506366 res!307473) b!506360))

(assert (= (and b!506360 res!307477) b!506363))

(assert (= (and b!506363 res!307475) b!506364))

(assert (= (and b!506363 (not res!307468)) b!506369))

(assert (= (and b!506369 (not res!307474)) b!506362))

(declare-fun m!487069 () Bool)

(assert (=> start!45784 m!487069))

(declare-fun m!487071 () Bool)

(assert (=> start!45784 m!487071))

(declare-fun m!487073 () Bool)

(assert (=> b!506364 m!487073))

(assert (=> b!506364 m!487073))

(declare-fun m!487075 () Bool)

(assert (=> b!506364 m!487075))

(declare-fun m!487077 () Bool)

(assert (=> b!506360 m!487077))

(declare-fun m!487079 () Bool)

(assert (=> b!506359 m!487079))

(declare-fun m!487081 () Bool)

(assert (=> b!506363 m!487081))

(declare-fun m!487083 () Bool)

(assert (=> b!506363 m!487083))

(declare-fun m!487085 () Bool)

(assert (=> b!506363 m!487085))

(declare-fun m!487087 () Bool)

(assert (=> b!506363 m!487087))

(assert (=> b!506363 m!487083))

(assert (=> b!506363 m!487073))

(declare-fun m!487089 () Bool)

(assert (=> b!506363 m!487089))

(declare-fun m!487091 () Bool)

(assert (=> b!506363 m!487091))

(assert (=> b!506363 m!487083))

(declare-fun m!487093 () Bool)

(assert (=> b!506363 m!487093))

(assert (=> b!506363 m!487073))

(assert (=> b!506363 m!487073))

(declare-fun m!487095 () Bool)

(assert (=> b!506363 m!487095))

(declare-fun m!487097 () Bool)

(assert (=> b!506361 m!487097))

(declare-fun m!487099 () Bool)

(assert (=> b!506366 m!487099))

(declare-fun m!487101 () Bool)

(assert (=> b!506368 m!487101))

(assert (=> b!506365 m!487073))

(assert (=> b!506365 m!487073))

(declare-fun m!487103 () Bool)

(assert (=> b!506365 m!487103))

(push 1)


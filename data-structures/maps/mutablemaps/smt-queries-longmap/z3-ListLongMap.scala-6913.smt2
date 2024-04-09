; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86928 () Bool)

(assert start!86928)

(declare-fun b!1007469 () Bool)

(declare-fun res!676530 () Bool)

(declare-fun e!567025 () Bool)

(assert (=> b!1007469 (=> (not res!676530) (not e!567025))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1007469 (= res!676530 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1007470 () Bool)

(declare-fun res!676522 () Bool)

(declare-fun e!567021 () Bool)

(assert (=> b!1007470 (=> (not res!676522) (not e!567021))))

(declare-datatypes ((array!63528 0))(
  ( (array!63529 (arr!30581 (Array (_ BitVec 32) (_ BitVec 64))) (size!31084 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63528)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007470 (= res!676522 (validKeyInArray!0 (select (arr!30581 a!3219) j!170)))))

(declare-fun b!1007471 () Bool)

(declare-fun e!567026 () Bool)

(assert (=> b!1007471 (= e!567021 e!567026)))

(declare-fun res!676528 () Bool)

(assert (=> b!1007471 (=> (not res!676528) (not e!567026))))

(declare-datatypes ((SeekEntryResult!9513 0))(
  ( (MissingZero!9513 (index!40422 (_ BitVec 32))) (Found!9513 (index!40423 (_ BitVec 32))) (Intermediate!9513 (undefined!10325 Bool) (index!40424 (_ BitVec 32)) (x!87848 (_ BitVec 32))) (Undefined!9513) (MissingVacant!9513 (index!40425 (_ BitVec 32))) )
))
(declare-fun lt!445230 () SeekEntryResult!9513)

(assert (=> b!1007471 (= res!676528 (or (= lt!445230 (MissingVacant!9513 i!1194)) (= lt!445230 (MissingZero!9513 i!1194))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63528 (_ BitVec 32)) SeekEntryResult!9513)

(assert (=> b!1007471 (= lt!445230 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1007472 () Bool)

(declare-fun e!567024 () Bool)

(assert (=> b!1007472 (= e!567026 e!567024)))

(declare-fun res!676520 () Bool)

(assert (=> b!1007472 (=> (not res!676520) (not e!567024))))

(declare-fun lt!445227 () SeekEntryResult!9513)

(declare-fun lt!445225 () SeekEntryResult!9513)

(assert (=> b!1007472 (= res!676520 (= lt!445227 lt!445225))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007472 (= lt!445225 (Intermediate!9513 false resIndex!38 resX!38))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63528 (_ BitVec 32)) SeekEntryResult!9513)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007472 (= lt!445227 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30581 a!3219) j!170) mask!3464) (select (arr!30581 a!3219) j!170) a!3219 mask!3464))))

(declare-fun res!676521 () Bool)

(assert (=> start!86928 (=> (not res!676521) (not e!567021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86928 (= res!676521 (validMask!0 mask!3464))))

(assert (=> start!86928 e!567021))

(declare-fun array_inv!23571 (array!63528) Bool)

(assert (=> start!86928 (array_inv!23571 a!3219)))

(assert (=> start!86928 true))

(declare-fun b!1007473 () Bool)

(assert (=> b!1007473 (= e!567025 false)))

(declare-fun lt!445228 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007473 (= lt!445228 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1007474 () Bool)

(declare-fun res!676531 () Bool)

(assert (=> b!1007474 (=> (not res!676531) (not e!567021))))

(assert (=> b!1007474 (= res!676531 (validKeyInArray!0 k0!2224))))

(declare-fun b!1007475 () Bool)

(declare-fun res!676518 () Bool)

(assert (=> b!1007475 (=> (not res!676518) (not e!567021))))

(declare-fun arrayContainsKey!0 (array!63528 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007475 (= res!676518 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1007476 () Bool)

(declare-fun res!676519 () Bool)

(assert (=> b!1007476 (=> (not res!676519) (not e!567026))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63528 (_ BitVec 32)) Bool)

(assert (=> b!1007476 (= res!676519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1007477 () Bool)

(declare-fun res!676523 () Bool)

(assert (=> b!1007477 (=> (not res!676523) (not e!567021))))

(assert (=> b!1007477 (= res!676523 (and (= (size!31084 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31084 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31084 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1007478 () Bool)

(declare-fun e!567023 () Bool)

(assert (=> b!1007478 (= e!567023 e!567025)))

(declare-fun res!676529 () Bool)

(assert (=> b!1007478 (=> (not res!676529) (not e!567025))))

(declare-fun lt!445224 () (_ BitVec 64))

(declare-fun lt!445226 () array!63528)

(assert (=> b!1007478 (= res!676529 (not (= lt!445227 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445224 mask!3464) lt!445224 lt!445226 mask!3464))))))

(assert (=> b!1007478 (= lt!445224 (select (store (arr!30581 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1007478 (= lt!445226 (array!63529 (store (arr!30581 a!3219) i!1194 k0!2224) (size!31084 a!3219)))))

(declare-fun b!1007479 () Bool)

(declare-fun res!676525 () Bool)

(assert (=> b!1007479 (=> (not res!676525) (not e!567025))))

(declare-fun lt!445229 () SeekEntryResult!9513)

(assert (=> b!1007479 (= res!676525 (not (= lt!445229 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445224 lt!445226 mask!3464))))))

(declare-fun b!1007480 () Bool)

(declare-fun res!676524 () Bool)

(assert (=> b!1007480 (=> (not res!676524) (not e!567026))))

(declare-datatypes ((List!21383 0))(
  ( (Nil!21380) (Cons!21379 (h!22565 (_ BitVec 64)) (t!30392 List!21383)) )
))
(declare-fun arrayNoDuplicates!0 (array!63528 (_ BitVec 32) List!21383) Bool)

(assert (=> b!1007480 (= res!676524 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21380))))

(declare-fun b!1007481 () Bool)

(assert (=> b!1007481 (= e!567024 e!567023)))

(declare-fun res!676527 () Bool)

(assert (=> b!1007481 (=> (not res!676527) (not e!567023))))

(assert (=> b!1007481 (= res!676527 (= lt!445229 lt!445225))))

(assert (=> b!1007481 (= lt!445229 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30581 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007482 () Bool)

(declare-fun res!676526 () Bool)

(assert (=> b!1007482 (=> (not res!676526) (not e!567026))))

(assert (=> b!1007482 (= res!676526 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31084 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31084 a!3219))))))

(assert (= (and start!86928 res!676521) b!1007477))

(assert (= (and b!1007477 res!676523) b!1007470))

(assert (= (and b!1007470 res!676522) b!1007474))

(assert (= (and b!1007474 res!676531) b!1007475))

(assert (= (and b!1007475 res!676518) b!1007471))

(assert (= (and b!1007471 res!676528) b!1007476))

(assert (= (and b!1007476 res!676519) b!1007480))

(assert (= (and b!1007480 res!676524) b!1007482))

(assert (= (and b!1007482 res!676526) b!1007472))

(assert (= (and b!1007472 res!676520) b!1007481))

(assert (= (and b!1007481 res!676527) b!1007478))

(assert (= (and b!1007478 res!676529) b!1007479))

(assert (= (and b!1007479 res!676525) b!1007469))

(assert (= (and b!1007469 res!676530) b!1007473))

(declare-fun m!932451 () Bool)

(assert (=> b!1007473 m!932451))

(declare-fun m!932453 () Bool)

(assert (=> b!1007479 m!932453))

(declare-fun m!932455 () Bool)

(assert (=> b!1007475 m!932455))

(declare-fun m!932457 () Bool)

(assert (=> b!1007471 m!932457))

(declare-fun m!932459 () Bool)

(assert (=> b!1007476 m!932459))

(declare-fun m!932461 () Bool)

(assert (=> b!1007480 m!932461))

(declare-fun m!932463 () Bool)

(assert (=> b!1007470 m!932463))

(assert (=> b!1007470 m!932463))

(declare-fun m!932465 () Bool)

(assert (=> b!1007470 m!932465))

(assert (=> b!1007472 m!932463))

(assert (=> b!1007472 m!932463))

(declare-fun m!932467 () Bool)

(assert (=> b!1007472 m!932467))

(assert (=> b!1007472 m!932467))

(assert (=> b!1007472 m!932463))

(declare-fun m!932469 () Bool)

(assert (=> b!1007472 m!932469))

(declare-fun m!932471 () Bool)

(assert (=> start!86928 m!932471))

(declare-fun m!932473 () Bool)

(assert (=> start!86928 m!932473))

(declare-fun m!932475 () Bool)

(assert (=> b!1007478 m!932475))

(assert (=> b!1007478 m!932475))

(declare-fun m!932477 () Bool)

(assert (=> b!1007478 m!932477))

(declare-fun m!932479 () Bool)

(assert (=> b!1007478 m!932479))

(declare-fun m!932481 () Bool)

(assert (=> b!1007478 m!932481))

(declare-fun m!932483 () Bool)

(assert (=> b!1007474 m!932483))

(assert (=> b!1007481 m!932463))

(assert (=> b!1007481 m!932463))

(declare-fun m!932485 () Bool)

(assert (=> b!1007481 m!932485))

(check-sat (not b!1007478) (not b!1007473) (not start!86928) (not b!1007481) (not b!1007476) (not b!1007470) (not b!1007475) (not b!1007472) (not b!1007480) (not b!1007474) (not b!1007471) (not b!1007479))
(check-sat)

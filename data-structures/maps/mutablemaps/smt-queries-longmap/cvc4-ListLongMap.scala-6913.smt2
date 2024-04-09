; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86930 () Bool)

(assert start!86930)

(declare-fun b!1007511 () Bool)

(declare-fun res!676561 () Bool)

(declare-fun e!567044 () Bool)

(assert (=> b!1007511 (=> (not res!676561) (not e!567044))))

(declare-datatypes ((array!63530 0))(
  ( (array!63531 (arr!30582 (Array (_ BitVec 32) (_ BitVec 64))) (size!31085 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63530)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007511 (= res!676561 (validKeyInArray!0 (select (arr!30582 a!3219) j!170)))))

(declare-fun b!1007512 () Bool)

(declare-fun res!676567 () Bool)

(assert (=> b!1007512 (=> (not res!676567) (not e!567044))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1007512 (= res!676567 (validKeyInArray!0 k!2224))))

(declare-fun b!1007513 () Bool)

(declare-fun res!676564 () Bool)

(declare-fun e!567041 () Bool)

(assert (=> b!1007513 (=> (not res!676564) (not e!567041))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!445249 () (_ BitVec 64))

(declare-fun lt!445247 () array!63530)

(declare-datatypes ((SeekEntryResult!9514 0))(
  ( (MissingZero!9514 (index!40426 (_ BitVec 32))) (Found!9514 (index!40427 (_ BitVec 32))) (Intermediate!9514 (undefined!10326 Bool) (index!40428 (_ BitVec 32)) (x!87849 (_ BitVec 32))) (Undefined!9514) (MissingVacant!9514 (index!40429 (_ BitVec 32))) )
))
(declare-fun lt!445250 () SeekEntryResult!9514)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63530 (_ BitVec 32)) SeekEntryResult!9514)

(assert (=> b!1007513 (= res!676564 (not (= lt!445250 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445249 lt!445247 mask!3464))))))

(declare-fun res!676566 () Bool)

(assert (=> start!86930 (=> (not res!676566) (not e!567044))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86930 (= res!676566 (validMask!0 mask!3464))))

(assert (=> start!86930 e!567044))

(declare-fun array_inv!23572 (array!63530) Bool)

(assert (=> start!86930 (array_inv!23572 a!3219)))

(assert (=> start!86930 true))

(declare-fun b!1007514 () Bool)

(declare-fun res!676563 () Bool)

(assert (=> b!1007514 (=> (not res!676563) (not e!567044))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1007514 (= res!676563 (and (= (size!31085 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31085 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31085 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1007515 () Bool)

(declare-fun e!567043 () Bool)

(assert (=> b!1007515 (= e!567044 e!567043)))

(declare-fun res!676570 () Bool)

(assert (=> b!1007515 (=> (not res!676570) (not e!567043))))

(declare-fun lt!445245 () SeekEntryResult!9514)

(assert (=> b!1007515 (= res!676570 (or (= lt!445245 (MissingVacant!9514 i!1194)) (= lt!445245 (MissingZero!9514 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63530 (_ BitVec 32)) SeekEntryResult!9514)

(assert (=> b!1007515 (= lt!445245 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1007516 () Bool)

(declare-fun e!567040 () Bool)

(assert (=> b!1007516 (= e!567040 e!567041)))

(declare-fun res!676572 () Bool)

(assert (=> b!1007516 (=> (not res!676572) (not e!567041))))

(declare-fun lt!445251 () SeekEntryResult!9514)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007516 (= res!676572 (not (= lt!445251 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445249 mask!3464) lt!445249 lt!445247 mask!3464))))))

(assert (=> b!1007516 (= lt!445249 (select (store (arr!30582 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1007516 (= lt!445247 (array!63531 (store (arr!30582 a!3219) i!1194 k!2224) (size!31085 a!3219)))))

(declare-fun b!1007517 () Bool)

(declare-fun e!567039 () Bool)

(assert (=> b!1007517 (= e!567043 e!567039)))

(declare-fun res!676573 () Bool)

(assert (=> b!1007517 (=> (not res!676573) (not e!567039))))

(declare-fun lt!445246 () SeekEntryResult!9514)

(assert (=> b!1007517 (= res!676573 (= lt!445251 lt!445246))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007517 (= lt!445246 (Intermediate!9514 false resIndex!38 resX!38))))

(assert (=> b!1007517 (= lt!445251 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30582 a!3219) j!170) mask!3464) (select (arr!30582 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007518 () Bool)

(declare-fun res!676571 () Bool)

(assert (=> b!1007518 (=> (not res!676571) (not e!567044))))

(declare-fun arrayContainsKey!0 (array!63530 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007518 (= res!676571 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1007519 () Bool)

(declare-fun res!676562 () Bool)

(assert (=> b!1007519 (=> (not res!676562) (not e!567043))))

(declare-datatypes ((List!21384 0))(
  ( (Nil!21381) (Cons!21380 (h!22566 (_ BitVec 64)) (t!30393 List!21384)) )
))
(declare-fun arrayNoDuplicates!0 (array!63530 (_ BitVec 32) List!21384) Bool)

(assert (=> b!1007519 (= res!676562 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21381))))

(declare-fun b!1007520 () Bool)

(assert (=> b!1007520 (= e!567039 e!567040)))

(declare-fun res!676568 () Bool)

(assert (=> b!1007520 (=> (not res!676568) (not e!567040))))

(assert (=> b!1007520 (= res!676568 (= lt!445250 lt!445246))))

(assert (=> b!1007520 (= lt!445250 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30582 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007521 () Bool)

(declare-fun res!676569 () Bool)

(assert (=> b!1007521 (=> (not res!676569) (not e!567043))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63530 (_ BitVec 32)) Bool)

(assert (=> b!1007521 (= res!676569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1007522 () Bool)

(declare-fun res!676560 () Bool)

(assert (=> b!1007522 (=> (not res!676560) (not e!567041))))

(assert (=> b!1007522 (= res!676560 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1007523 () Bool)

(declare-fun res!676565 () Bool)

(assert (=> b!1007523 (=> (not res!676565) (not e!567043))))

(assert (=> b!1007523 (= res!676565 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31085 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31085 a!3219))))))

(declare-fun b!1007524 () Bool)

(assert (=> b!1007524 (= e!567041 false)))

(declare-fun lt!445248 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007524 (= lt!445248 (nextIndex!0 index!1507 x!1245 mask!3464))))

(assert (= (and start!86930 res!676566) b!1007514))

(assert (= (and b!1007514 res!676563) b!1007511))

(assert (= (and b!1007511 res!676561) b!1007512))

(assert (= (and b!1007512 res!676567) b!1007518))

(assert (= (and b!1007518 res!676571) b!1007515))

(assert (= (and b!1007515 res!676570) b!1007521))

(assert (= (and b!1007521 res!676569) b!1007519))

(assert (= (and b!1007519 res!676562) b!1007523))

(assert (= (and b!1007523 res!676565) b!1007517))

(assert (= (and b!1007517 res!676573) b!1007520))

(assert (= (and b!1007520 res!676568) b!1007516))

(assert (= (and b!1007516 res!676572) b!1007513))

(assert (= (and b!1007513 res!676564) b!1007522))

(assert (= (and b!1007522 res!676560) b!1007524))

(declare-fun m!932487 () Bool)

(assert (=> b!1007512 m!932487))

(declare-fun m!932489 () Bool)

(assert (=> b!1007520 m!932489))

(assert (=> b!1007520 m!932489))

(declare-fun m!932491 () Bool)

(assert (=> b!1007520 m!932491))

(declare-fun m!932493 () Bool)

(assert (=> b!1007519 m!932493))

(declare-fun m!932495 () Bool)

(assert (=> b!1007521 m!932495))

(declare-fun m!932497 () Bool)

(assert (=> b!1007516 m!932497))

(assert (=> b!1007516 m!932497))

(declare-fun m!932499 () Bool)

(assert (=> b!1007516 m!932499))

(declare-fun m!932501 () Bool)

(assert (=> b!1007516 m!932501))

(declare-fun m!932503 () Bool)

(assert (=> b!1007516 m!932503))

(assert (=> b!1007511 m!932489))

(assert (=> b!1007511 m!932489))

(declare-fun m!932505 () Bool)

(assert (=> b!1007511 m!932505))

(declare-fun m!932507 () Bool)

(assert (=> b!1007515 m!932507))

(declare-fun m!932509 () Bool)

(assert (=> b!1007513 m!932509))

(declare-fun m!932511 () Bool)

(assert (=> b!1007524 m!932511))

(declare-fun m!932513 () Bool)

(assert (=> start!86930 m!932513))

(declare-fun m!932515 () Bool)

(assert (=> start!86930 m!932515))

(declare-fun m!932517 () Bool)

(assert (=> b!1007518 m!932517))

(assert (=> b!1007517 m!932489))

(assert (=> b!1007517 m!932489))

(declare-fun m!932519 () Bool)

(assert (=> b!1007517 m!932519))

(assert (=> b!1007517 m!932519))

(assert (=> b!1007517 m!932489))

(declare-fun m!932521 () Bool)

(assert (=> b!1007517 m!932521))

(push 1)


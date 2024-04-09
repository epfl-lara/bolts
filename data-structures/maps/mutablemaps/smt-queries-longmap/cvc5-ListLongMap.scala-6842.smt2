; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86176 () Bool)

(assert start!86176)

(declare-fun b!997519 () Bool)

(declare-fun res!667630 () Bool)

(declare-fun e!562652 () Bool)

(assert (=> b!997519 (=> (not res!667630) (not e!562652))))

(declare-datatypes ((array!63082 0))(
  ( (array!63083 (arr!30367 (Array (_ BitVec 32) (_ BitVec 64))) (size!30870 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63082)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9299 0))(
  ( (MissingZero!9299 (index!39566 (_ BitVec 32))) (Found!9299 (index!39567 (_ BitVec 32))) (Intermediate!9299 (undefined!10111 Bool) (index!39568 (_ BitVec 32)) (x!87030 (_ BitVec 32))) (Undefined!9299) (MissingVacant!9299 (index!39569 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63082 (_ BitVec 32)) SeekEntryResult!9299)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!997519 (= res!667630 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30367 a!3219) j!170) mask!3464) (select (arr!30367 a!3219) j!170) a!3219 mask!3464) (Intermediate!9299 false resIndex!38 resX!38)))))

(declare-fun b!997520 () Bool)

(declare-fun res!667631 () Bool)

(declare-fun e!562651 () Bool)

(assert (=> b!997520 (=> (not res!667631) (not e!562651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!997520 (= res!667631 (validKeyInArray!0 (select (arr!30367 a!3219) j!170)))))

(declare-fun b!997521 () Bool)

(assert (=> b!997521 (= e!562651 e!562652)))

(declare-fun res!667635 () Bool)

(assert (=> b!997521 (=> (not res!667635) (not e!562652))))

(declare-fun lt!441444 () SeekEntryResult!9299)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!997521 (= res!667635 (or (= lt!441444 (MissingVacant!9299 i!1194)) (= lt!441444 (MissingZero!9299 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63082 (_ BitVec 32)) SeekEntryResult!9299)

(assert (=> b!997521 (= lt!441444 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!997522 () Bool)

(declare-fun res!667639 () Bool)

(assert (=> b!997522 (=> (not res!667639) (not e!562652))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!997522 (= res!667639 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30870 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30870 a!3219))))))

(declare-fun b!997523 () Bool)

(declare-fun res!667634 () Bool)

(assert (=> b!997523 (=> (not res!667634) (not e!562651))))

(declare-fun arrayContainsKey!0 (array!63082 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!997523 (= res!667634 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!667633 () Bool)

(assert (=> start!86176 (=> (not res!667633) (not e!562651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86176 (= res!667633 (validMask!0 mask!3464))))

(assert (=> start!86176 e!562651))

(declare-fun array_inv!23357 (array!63082) Bool)

(assert (=> start!86176 (array_inv!23357 a!3219)))

(assert (=> start!86176 true))

(declare-fun b!997524 () Bool)

(declare-fun res!667638 () Bool)

(assert (=> b!997524 (=> (not res!667638) (not e!562652))))

(declare-datatypes ((List!21169 0))(
  ( (Nil!21166) (Cons!21165 (h!22333 (_ BitVec 64)) (t!30178 List!21169)) )
))
(declare-fun arrayNoDuplicates!0 (array!63082 (_ BitVec 32) List!21169) Bool)

(assert (=> b!997524 (= res!667638 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21166))))

(declare-fun b!997525 () Bool)

(declare-fun res!667636 () Bool)

(assert (=> b!997525 (=> (not res!667636) (not e!562651))))

(assert (=> b!997525 (= res!667636 (and (= (size!30870 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30870 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30870 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!997526 () Bool)

(declare-fun res!667632 () Bool)

(assert (=> b!997526 (=> (not res!667632) (not e!562651))))

(assert (=> b!997526 (= res!667632 (validKeyInArray!0 k!2224))))

(declare-fun b!997527 () Bool)

(assert (=> b!997527 (= e!562652 false)))

(declare-fun lt!441443 () SeekEntryResult!9299)

(assert (=> b!997527 (= lt!441443 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30367 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!997528 () Bool)

(declare-fun res!667637 () Bool)

(assert (=> b!997528 (=> (not res!667637) (not e!562652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63082 (_ BitVec 32)) Bool)

(assert (=> b!997528 (= res!667637 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(assert (= (and start!86176 res!667633) b!997525))

(assert (= (and b!997525 res!667636) b!997520))

(assert (= (and b!997520 res!667631) b!997526))

(assert (= (and b!997526 res!667632) b!997523))

(assert (= (and b!997523 res!667634) b!997521))

(assert (= (and b!997521 res!667635) b!997528))

(assert (= (and b!997528 res!667637) b!997524))

(assert (= (and b!997524 res!667638) b!997522))

(assert (= (and b!997522 res!667639) b!997519))

(assert (= (and b!997519 res!667630) b!997527))

(declare-fun m!924405 () Bool)

(assert (=> b!997523 m!924405))

(declare-fun m!924407 () Bool)

(assert (=> b!997521 m!924407))

(declare-fun m!924409 () Bool)

(assert (=> b!997526 m!924409))

(declare-fun m!924411 () Bool)

(assert (=> b!997528 m!924411))

(declare-fun m!924413 () Bool)

(assert (=> start!86176 m!924413))

(declare-fun m!924415 () Bool)

(assert (=> start!86176 m!924415))

(declare-fun m!924417 () Bool)

(assert (=> b!997524 m!924417))

(declare-fun m!924419 () Bool)

(assert (=> b!997520 m!924419))

(assert (=> b!997520 m!924419))

(declare-fun m!924421 () Bool)

(assert (=> b!997520 m!924421))

(assert (=> b!997519 m!924419))

(assert (=> b!997519 m!924419))

(declare-fun m!924423 () Bool)

(assert (=> b!997519 m!924423))

(assert (=> b!997519 m!924423))

(assert (=> b!997519 m!924419))

(declare-fun m!924425 () Bool)

(assert (=> b!997519 m!924425))

(assert (=> b!997527 m!924419))

(assert (=> b!997527 m!924419))

(declare-fun m!924427 () Bool)

(assert (=> b!997527 m!924427))

(push 1)


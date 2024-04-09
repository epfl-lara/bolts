; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86180 () Bool)

(assert start!86180)

(declare-fun b!997579 () Bool)

(declare-fun res!667695 () Bool)

(declare-fun e!562669 () Bool)

(assert (=> b!997579 (=> (not res!667695) (not e!562669))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!997579 (= res!667695 (validKeyInArray!0 k!2224))))

(declare-fun b!997580 () Bool)

(declare-fun res!667692 () Bool)

(assert (=> b!997580 (=> (not res!667692) (not e!562669))))

(declare-datatypes ((array!63086 0))(
  ( (array!63087 (arr!30369 (Array (_ BitVec 32) (_ BitVec 64))) (size!30872 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63086)

(declare-fun arrayContainsKey!0 (array!63086 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!997580 (= res!667692 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!997581 () Bool)

(declare-fun res!667694 () Bool)

(assert (=> b!997581 (=> (not res!667694) (not e!562669))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!997581 (= res!667694 (validKeyInArray!0 (select (arr!30369 a!3219) j!170)))))

(declare-fun res!667690 () Bool)

(assert (=> start!86180 (=> (not res!667690) (not e!562669))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86180 (= res!667690 (validMask!0 mask!3464))))

(assert (=> start!86180 e!562669))

(declare-fun array_inv!23359 (array!63086) Bool)

(assert (=> start!86180 (array_inv!23359 a!3219)))

(assert (=> start!86180 true))

(declare-fun b!997582 () Bool)

(declare-fun e!562670 () Bool)

(assert (=> b!997582 (= e!562669 e!562670)))

(declare-fun res!667693 () Bool)

(assert (=> b!997582 (=> (not res!667693) (not e!562670))))

(declare-datatypes ((SeekEntryResult!9301 0))(
  ( (MissingZero!9301 (index!39574 (_ BitVec 32))) (Found!9301 (index!39575 (_ BitVec 32))) (Intermediate!9301 (undefined!10113 Bool) (index!39576 (_ BitVec 32)) (x!87032 (_ BitVec 32))) (Undefined!9301) (MissingVacant!9301 (index!39577 (_ BitVec 32))) )
))
(declare-fun lt!441455 () SeekEntryResult!9301)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!997582 (= res!667693 (or (= lt!441455 (MissingVacant!9301 i!1194)) (= lt!441455 (MissingZero!9301 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63086 (_ BitVec 32)) SeekEntryResult!9301)

(assert (=> b!997582 (= lt!441455 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!997583 () Bool)

(declare-fun res!667696 () Bool)

(assert (=> b!997583 (=> (not res!667696) (not e!562670))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63086 (_ BitVec 32)) Bool)

(assert (=> b!997583 (= res!667696 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!997584 () Bool)

(assert (=> b!997584 (= e!562670 false)))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!441456 () SeekEntryResult!9301)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63086 (_ BitVec 32)) SeekEntryResult!9301)

(assert (=> b!997584 (= lt!441456 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30369 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!997585 () Bool)

(declare-fun res!667697 () Bool)

(assert (=> b!997585 (=> (not res!667697) (not e!562669))))

(assert (=> b!997585 (= res!667697 (and (= (size!30872 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30872 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30872 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!997586 () Bool)

(declare-fun res!667691 () Bool)

(assert (=> b!997586 (=> (not res!667691) (not e!562670))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!997586 (= res!667691 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30872 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30872 a!3219))))))

(declare-fun b!997587 () Bool)

(declare-fun res!667699 () Bool)

(assert (=> b!997587 (=> (not res!667699) (not e!562670))))

(declare-datatypes ((List!21171 0))(
  ( (Nil!21168) (Cons!21167 (h!22335 (_ BitVec 64)) (t!30180 List!21171)) )
))
(declare-fun arrayNoDuplicates!0 (array!63086 (_ BitVec 32) List!21171) Bool)

(assert (=> b!997587 (= res!667699 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21168))))

(declare-fun b!997588 () Bool)

(declare-fun res!667698 () Bool)

(assert (=> b!997588 (=> (not res!667698) (not e!562670))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!997588 (= res!667698 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30369 a!3219) j!170) mask!3464) (select (arr!30369 a!3219) j!170) a!3219 mask!3464) (Intermediate!9301 false resIndex!38 resX!38)))))

(assert (= (and start!86180 res!667690) b!997585))

(assert (= (and b!997585 res!667697) b!997581))

(assert (= (and b!997581 res!667694) b!997579))

(assert (= (and b!997579 res!667695) b!997580))

(assert (= (and b!997580 res!667692) b!997582))

(assert (= (and b!997582 res!667693) b!997583))

(assert (= (and b!997583 res!667696) b!997587))

(assert (= (and b!997587 res!667699) b!997586))

(assert (= (and b!997586 res!667691) b!997588))

(assert (= (and b!997588 res!667698) b!997584))

(declare-fun m!924453 () Bool)

(assert (=> b!997582 m!924453))

(declare-fun m!924455 () Bool)

(assert (=> b!997583 m!924455))

(declare-fun m!924457 () Bool)

(assert (=> b!997584 m!924457))

(assert (=> b!997584 m!924457))

(declare-fun m!924459 () Bool)

(assert (=> b!997584 m!924459))

(assert (=> b!997588 m!924457))

(assert (=> b!997588 m!924457))

(declare-fun m!924461 () Bool)

(assert (=> b!997588 m!924461))

(assert (=> b!997588 m!924461))

(assert (=> b!997588 m!924457))

(declare-fun m!924463 () Bool)

(assert (=> b!997588 m!924463))

(declare-fun m!924465 () Bool)

(assert (=> b!997580 m!924465))

(declare-fun m!924467 () Bool)

(assert (=> b!997587 m!924467))

(declare-fun m!924469 () Bool)

(assert (=> b!997579 m!924469))

(assert (=> b!997581 m!924457))

(assert (=> b!997581 m!924457))

(declare-fun m!924471 () Bool)

(assert (=> b!997581 m!924471))

(declare-fun m!924473 () Bool)

(assert (=> start!86180 m!924473))

(declare-fun m!924475 () Bool)

(assert (=> start!86180 m!924475))

(push 1)

(assert (not b!997582))

(assert (not b!997584))

(assert (not start!86180))

(assert (not b!997587))

(assert (not b!997580))

(assert (not b!997581))

(assert (not b!997583))

(assert (not b!997579))


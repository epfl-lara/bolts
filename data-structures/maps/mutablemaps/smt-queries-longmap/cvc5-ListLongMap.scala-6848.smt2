; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86320 () Bool)

(assert start!86320)

(declare-fun b!998610 () Bool)

(declare-fun e!563180 () Bool)

(declare-fun e!563177 () Bool)

(assert (=> b!998610 (= e!563180 e!563177)))

(declare-fun res!668409 () Bool)

(assert (=> b!998610 (=> (not res!668409) (not e!563177))))

(declare-datatypes ((SeekEntryResult!9317 0))(
  ( (MissingZero!9317 (index!39638 (_ BitVec 32))) (Found!9317 (index!39639 (_ BitVec 32))) (Intermediate!9317 (undefined!10129 Bool) (index!39640 (_ BitVec 32)) (x!87108 (_ BitVec 32))) (Undefined!9317) (MissingVacant!9317 (index!39641 (_ BitVec 32))) )
))
(declare-fun lt!441754 () SeekEntryResult!9317)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!998610 (= res!668409 (or (= lt!441754 (MissingVacant!9317 i!1194)) (= lt!441754 (MissingZero!9317 i!1194))))))

(declare-datatypes ((array!63124 0))(
  ( (array!63125 (arr!30385 (Array (_ BitVec 32) (_ BitVec 64))) (size!30888 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63124)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63124 (_ BitVec 32)) SeekEntryResult!9317)

(assert (=> b!998610 (= lt!441754 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!998612 () Bool)

(declare-fun res!668410 () Bool)

(assert (=> b!998612 (=> (not res!668410) (not e!563180))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998612 (= res!668410 (validKeyInArray!0 (select (arr!30385 a!3219) j!170)))))

(declare-fun b!998613 () Bool)

(declare-fun res!668405 () Bool)

(assert (=> b!998613 (=> (not res!668405) (not e!563177))))

(declare-datatypes ((List!21187 0))(
  ( (Nil!21184) (Cons!21183 (h!22357 (_ BitVec 64)) (t!30196 List!21187)) )
))
(declare-fun arrayNoDuplicates!0 (array!63124 (_ BitVec 32) List!21187) Bool)

(assert (=> b!998613 (= res!668405 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21184))))

(declare-fun b!998614 () Bool)

(declare-fun e!563178 () Bool)

(assert (=> b!998614 (= e!563178 false)))

(declare-fun lt!441756 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998614 (= lt!441756 (toIndex!0 (select (store (arr!30385 a!3219) i!1194 k!2224) j!170) mask!3464))))

(declare-fun b!998615 () Bool)

(declare-fun res!668413 () Bool)

(assert (=> b!998615 (=> (not res!668413) (not e!563177))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63124 (_ BitVec 32)) Bool)

(assert (=> b!998615 (= res!668413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!998616 () Bool)

(assert (=> b!998616 (= e!563177 e!563178)))

(declare-fun res!668411 () Bool)

(assert (=> b!998616 (=> (not res!668411) (not e!563178))))

(declare-fun lt!441755 () SeekEntryResult!9317)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63124 (_ BitVec 32)) SeekEntryResult!9317)

(assert (=> b!998616 (= res!668411 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30385 a!3219) j!170) mask!3464) (select (arr!30385 a!3219) j!170) a!3219 mask!3464) lt!441755))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!998616 (= lt!441755 (Intermediate!9317 false resIndex!38 resX!38))))

(declare-fun b!998617 () Bool)

(declare-fun res!668407 () Bool)

(assert (=> b!998617 (=> (not res!668407) (not e!563178))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!998617 (= res!668407 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30385 a!3219) j!170) a!3219 mask!3464) lt!441755))))

(declare-fun b!998618 () Bool)

(declare-fun res!668412 () Bool)

(assert (=> b!998618 (=> (not res!668412) (not e!563177))))

(assert (=> b!998618 (= res!668412 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30888 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30888 a!3219))))))

(declare-fun res!668403 () Bool)

(assert (=> start!86320 (=> (not res!668403) (not e!563180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86320 (= res!668403 (validMask!0 mask!3464))))

(assert (=> start!86320 e!563180))

(declare-fun array_inv!23375 (array!63124) Bool)

(assert (=> start!86320 (array_inv!23375 a!3219)))

(assert (=> start!86320 true))

(declare-fun b!998611 () Bool)

(declare-fun res!668406 () Bool)

(assert (=> b!998611 (=> (not res!668406) (not e!563180))))

(assert (=> b!998611 (= res!668406 (validKeyInArray!0 k!2224))))

(declare-fun b!998619 () Bool)

(declare-fun res!668408 () Bool)

(assert (=> b!998619 (=> (not res!668408) (not e!563180))))

(declare-fun arrayContainsKey!0 (array!63124 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998619 (= res!668408 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!998620 () Bool)

(declare-fun res!668404 () Bool)

(assert (=> b!998620 (=> (not res!668404) (not e!563180))))

(assert (=> b!998620 (= res!668404 (and (= (size!30888 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30888 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30888 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86320 res!668403) b!998620))

(assert (= (and b!998620 res!668404) b!998612))

(assert (= (and b!998612 res!668410) b!998611))

(assert (= (and b!998611 res!668406) b!998619))

(assert (= (and b!998619 res!668408) b!998610))

(assert (= (and b!998610 res!668409) b!998615))

(assert (= (and b!998615 res!668413) b!998613))

(assert (= (and b!998613 res!668405) b!998618))

(assert (= (and b!998618 res!668412) b!998616))

(assert (= (and b!998616 res!668411) b!998617))

(assert (= (and b!998617 res!668407) b!998614))

(declare-fun m!925125 () Bool)

(assert (=> b!998610 m!925125))

(declare-fun m!925127 () Bool)

(assert (=> b!998615 m!925127))

(declare-fun m!925129 () Bool)

(assert (=> b!998616 m!925129))

(assert (=> b!998616 m!925129))

(declare-fun m!925131 () Bool)

(assert (=> b!998616 m!925131))

(assert (=> b!998616 m!925131))

(assert (=> b!998616 m!925129))

(declare-fun m!925133 () Bool)

(assert (=> b!998616 m!925133))

(declare-fun m!925135 () Bool)

(assert (=> b!998613 m!925135))

(declare-fun m!925137 () Bool)

(assert (=> b!998611 m!925137))

(assert (=> b!998617 m!925129))

(assert (=> b!998617 m!925129))

(declare-fun m!925139 () Bool)

(assert (=> b!998617 m!925139))

(declare-fun m!925141 () Bool)

(assert (=> b!998619 m!925141))

(assert (=> b!998612 m!925129))

(assert (=> b!998612 m!925129))

(declare-fun m!925143 () Bool)

(assert (=> b!998612 m!925143))

(declare-fun m!925145 () Bool)

(assert (=> start!86320 m!925145))

(declare-fun m!925147 () Bool)

(assert (=> start!86320 m!925147))

(declare-fun m!925149 () Bool)

(assert (=> b!998614 m!925149))

(declare-fun m!925151 () Bool)

(assert (=> b!998614 m!925151))

(assert (=> b!998614 m!925151))

(declare-fun m!925153 () Bool)

(assert (=> b!998614 m!925153))

(push 1)


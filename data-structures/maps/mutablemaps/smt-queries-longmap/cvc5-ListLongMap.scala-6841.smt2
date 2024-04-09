; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86170 () Bool)

(assert start!86170)

(declare-fun b!997422 () Bool)

(declare-fun res!667542 () Bool)

(declare-fun e!562616 () Bool)

(assert (=> b!997422 (=> (not res!667542) (not e!562616))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!997422 (= res!667542 (validKeyInArray!0 k!2224))))

(declare-fun b!997423 () Bool)

(declare-fun res!667540 () Bool)

(declare-fun e!562618 () Bool)

(assert (=> b!997423 (=> (not res!667540) (not e!562618))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9296 0))(
  ( (MissingZero!9296 (index!39554 (_ BitVec 32))) (Found!9296 (index!39555 (_ BitVec 32))) (Intermediate!9296 (undefined!10108 Bool) (index!39556 (_ BitVec 32)) (x!87019 (_ BitVec 32))) (Undefined!9296) (MissingVacant!9296 (index!39557 (_ BitVec 32))) )
))
(declare-fun lt!441426 () SeekEntryResult!9296)

(declare-datatypes ((array!63076 0))(
  ( (array!63077 (arr!30364 (Array (_ BitVec 32) (_ BitVec 64))) (size!30867 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63076)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63076 (_ BitVec 32)) SeekEntryResult!9296)

(assert (=> b!997423 (= res!667540 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30364 a!3219) j!170) a!3219 mask!3464) lt!441426))))

(declare-fun b!997424 () Bool)

(declare-fun res!667536 () Bool)

(declare-fun e!562617 () Bool)

(assert (=> b!997424 (=> (not res!667536) (not e!562617))))

(declare-datatypes ((List!21166 0))(
  ( (Nil!21163) (Cons!21162 (h!22330 (_ BitVec 64)) (t!30175 List!21166)) )
))
(declare-fun arrayNoDuplicates!0 (array!63076 (_ BitVec 32) List!21166) Bool)

(assert (=> b!997424 (= res!667536 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21163))))

(declare-fun b!997425 () Bool)

(declare-fun res!667539 () Bool)

(assert (=> b!997425 (=> (not res!667539) (not e!562616))))

(assert (=> b!997425 (= res!667539 (validKeyInArray!0 (select (arr!30364 a!3219) j!170)))))

(declare-fun b!997426 () Bool)

(assert (=> b!997426 (= e!562616 e!562617)))

(declare-fun res!667541 () Bool)

(assert (=> b!997426 (=> (not res!667541) (not e!562617))))

(declare-fun lt!441425 () SeekEntryResult!9296)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!997426 (= res!667541 (or (= lt!441425 (MissingVacant!9296 i!1194)) (= lt!441425 (MissingZero!9296 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63076 (_ BitVec 32)) SeekEntryResult!9296)

(assert (=> b!997426 (= lt!441425 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!997427 () Bool)

(assert (=> b!997427 (= e!562618 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!997428 () Bool)

(assert (=> b!997428 (= e!562617 e!562618)))

(declare-fun res!667543 () Bool)

(assert (=> b!997428 (=> (not res!667543) (not e!562618))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!997428 (= res!667543 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30364 a!3219) j!170) mask!3464) (select (arr!30364 a!3219) j!170) a!3219 mask!3464) lt!441426))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!997428 (= lt!441426 (Intermediate!9296 false resIndex!38 resX!38))))

(declare-fun b!997429 () Bool)

(declare-fun res!667537 () Bool)

(assert (=> b!997429 (=> (not res!667537) (not e!562617))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63076 (_ BitVec 32)) Bool)

(assert (=> b!997429 (= res!667537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!667535 () Bool)

(assert (=> start!86170 (=> (not res!667535) (not e!562616))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86170 (= res!667535 (validMask!0 mask!3464))))

(assert (=> start!86170 e!562616))

(declare-fun array_inv!23354 (array!63076) Bool)

(assert (=> start!86170 (array_inv!23354 a!3219)))

(assert (=> start!86170 true))

(declare-fun b!997430 () Bool)

(declare-fun res!667533 () Bool)

(assert (=> b!997430 (=> (not res!667533) (not e!562616))))

(declare-fun arrayContainsKey!0 (array!63076 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!997430 (= res!667533 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!997431 () Bool)

(declare-fun res!667538 () Bool)

(assert (=> b!997431 (=> (not res!667538) (not e!562617))))

(assert (=> b!997431 (= res!667538 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30867 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30867 a!3219))))))

(declare-fun b!997432 () Bool)

(declare-fun res!667534 () Bool)

(assert (=> b!997432 (=> (not res!667534) (not e!562616))))

(assert (=> b!997432 (= res!667534 (and (= (size!30867 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30867 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30867 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86170 res!667535) b!997432))

(assert (= (and b!997432 res!667534) b!997425))

(assert (= (and b!997425 res!667539) b!997422))

(assert (= (and b!997422 res!667542) b!997430))

(assert (= (and b!997430 res!667533) b!997426))

(assert (= (and b!997426 res!667541) b!997429))

(assert (= (and b!997429 res!667537) b!997424))

(assert (= (and b!997424 res!667536) b!997431))

(assert (= (and b!997431 res!667538) b!997428))

(assert (= (and b!997428 res!667543) b!997423))

(assert (= (and b!997423 res!667540) b!997427))

(declare-fun m!924333 () Bool)

(assert (=> b!997430 m!924333))

(declare-fun m!924335 () Bool)

(assert (=> b!997425 m!924335))

(assert (=> b!997425 m!924335))

(declare-fun m!924337 () Bool)

(assert (=> b!997425 m!924337))

(assert (=> b!997423 m!924335))

(assert (=> b!997423 m!924335))

(declare-fun m!924339 () Bool)

(assert (=> b!997423 m!924339))

(declare-fun m!924341 () Bool)

(assert (=> b!997429 m!924341))

(declare-fun m!924343 () Bool)

(assert (=> start!86170 m!924343))

(declare-fun m!924345 () Bool)

(assert (=> start!86170 m!924345))

(declare-fun m!924347 () Bool)

(assert (=> b!997422 m!924347))

(declare-fun m!924349 () Bool)

(assert (=> b!997426 m!924349))

(assert (=> b!997428 m!924335))

(assert (=> b!997428 m!924335))

(declare-fun m!924351 () Bool)

(assert (=> b!997428 m!924351))

(assert (=> b!997428 m!924351))

(assert (=> b!997428 m!924335))

(declare-fun m!924353 () Bool)

(assert (=> b!997428 m!924353))

(declare-fun m!924355 () Bool)

(assert (=> b!997424 m!924355))

(push 1)


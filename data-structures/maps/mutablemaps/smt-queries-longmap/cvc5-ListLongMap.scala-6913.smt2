; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86926 () Bool)

(assert start!86926)

(declare-fun res!676482 () Bool)

(declare-fun e!567005 () Bool)

(assert (=> start!86926 (=> (not res!676482) (not e!567005))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86926 (= res!676482 (validMask!0 mask!3464))))

(assert (=> start!86926 e!567005))

(declare-datatypes ((array!63526 0))(
  ( (array!63527 (arr!30580 (Array (_ BitVec 32) (_ BitVec 64))) (size!31083 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63526)

(declare-fun array_inv!23570 (array!63526) Bool)

(assert (=> start!86926 (array_inv!23570 a!3219)))

(assert (=> start!86926 true))

(declare-fun b!1007427 () Bool)

(declare-fun res!676480 () Bool)

(assert (=> b!1007427 (=> (not res!676480) (not e!567005))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007427 (= res!676480 (validKeyInArray!0 k!2224))))

(declare-fun b!1007428 () Bool)

(declare-fun res!676486 () Bool)

(declare-fun e!567004 () Bool)

(assert (=> b!1007428 (=> (not res!676486) (not e!567004))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1007428 (= res!676486 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1007429 () Bool)

(declare-fun res!676484 () Bool)

(assert (=> b!1007429 (=> (not res!676484) (not e!567005))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1007429 (= res!676484 (and (= (size!31083 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31083 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31083 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1007430 () Bool)

(declare-fun e!567003 () Bool)

(declare-fun e!567007 () Bool)

(assert (=> b!1007430 (= e!567003 e!567007)))

(declare-fun res!676481 () Bool)

(assert (=> b!1007430 (=> (not res!676481) (not e!567007))))

(declare-datatypes ((SeekEntryResult!9512 0))(
  ( (MissingZero!9512 (index!40418 (_ BitVec 32))) (Found!9512 (index!40419 (_ BitVec 32))) (Intermediate!9512 (undefined!10324 Bool) (index!40420 (_ BitVec 32)) (x!87847 (_ BitVec 32))) (Undefined!9512) (MissingVacant!9512 (index!40421 (_ BitVec 32))) )
))
(declare-fun lt!445206 () SeekEntryResult!9512)

(declare-fun lt!445203 () SeekEntryResult!9512)

(assert (=> b!1007430 (= res!676481 (= lt!445206 lt!445203))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007430 (= lt!445203 (Intermediate!9512 false resIndex!38 resX!38))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63526 (_ BitVec 32)) SeekEntryResult!9512)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007430 (= lt!445206 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30580 a!3219) j!170) mask!3464) (select (arr!30580 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007431 () Bool)

(declare-fun res!676476 () Bool)

(assert (=> b!1007431 (=> (not res!676476) (not e!567003))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63526 (_ BitVec 32)) Bool)

(assert (=> b!1007431 (= res!676476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1007432 () Bool)

(declare-fun res!676489 () Bool)

(assert (=> b!1007432 (=> (not res!676489) (not e!567003))))

(declare-datatypes ((List!21382 0))(
  ( (Nil!21379) (Cons!21378 (h!22564 (_ BitVec 64)) (t!30391 List!21382)) )
))
(declare-fun arrayNoDuplicates!0 (array!63526 (_ BitVec 32) List!21382) Bool)

(assert (=> b!1007432 (= res!676489 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21379))))

(declare-fun b!1007433 () Bool)

(declare-fun res!676485 () Bool)

(assert (=> b!1007433 (=> (not res!676485) (not e!567004))))

(declare-fun lt!445205 () SeekEntryResult!9512)

(declare-fun lt!445209 () array!63526)

(declare-fun lt!445208 () (_ BitVec 64))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1007433 (= res!676485 (not (= lt!445205 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445208 lt!445209 mask!3464))))))

(declare-fun b!1007434 () Bool)

(assert (=> b!1007434 (= e!567004 false)))

(declare-fun lt!445204 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007434 (= lt!445204 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1007435 () Bool)

(assert (=> b!1007435 (= e!567005 e!567003)))

(declare-fun res!676479 () Bool)

(assert (=> b!1007435 (=> (not res!676479) (not e!567003))))

(declare-fun lt!445207 () SeekEntryResult!9512)

(assert (=> b!1007435 (= res!676479 (or (= lt!445207 (MissingVacant!9512 i!1194)) (= lt!445207 (MissingZero!9512 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63526 (_ BitVec 32)) SeekEntryResult!9512)

(assert (=> b!1007435 (= lt!445207 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1007436 () Bool)

(declare-fun e!567008 () Bool)

(assert (=> b!1007436 (= e!567008 e!567004)))

(declare-fun res!676483 () Bool)

(assert (=> b!1007436 (=> (not res!676483) (not e!567004))))

(assert (=> b!1007436 (= res!676483 (not (= lt!445206 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445208 mask!3464) lt!445208 lt!445209 mask!3464))))))

(assert (=> b!1007436 (= lt!445208 (select (store (arr!30580 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1007436 (= lt!445209 (array!63527 (store (arr!30580 a!3219) i!1194 k!2224) (size!31083 a!3219)))))

(declare-fun b!1007437 () Bool)

(declare-fun res!676487 () Bool)

(assert (=> b!1007437 (=> (not res!676487) (not e!567003))))

(assert (=> b!1007437 (= res!676487 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31083 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31083 a!3219))))))

(declare-fun b!1007438 () Bool)

(assert (=> b!1007438 (= e!567007 e!567008)))

(declare-fun res!676477 () Bool)

(assert (=> b!1007438 (=> (not res!676477) (not e!567008))))

(assert (=> b!1007438 (= res!676477 (= lt!445205 lt!445203))))

(assert (=> b!1007438 (= lt!445205 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30580 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007439 () Bool)

(declare-fun res!676488 () Bool)

(assert (=> b!1007439 (=> (not res!676488) (not e!567005))))

(assert (=> b!1007439 (= res!676488 (validKeyInArray!0 (select (arr!30580 a!3219) j!170)))))

(declare-fun b!1007440 () Bool)

(declare-fun res!676478 () Bool)

(assert (=> b!1007440 (=> (not res!676478) (not e!567005))))

(declare-fun arrayContainsKey!0 (array!63526 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007440 (= res!676478 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86926 res!676482) b!1007429))

(assert (= (and b!1007429 res!676484) b!1007439))

(assert (= (and b!1007439 res!676488) b!1007427))

(assert (= (and b!1007427 res!676480) b!1007440))

(assert (= (and b!1007440 res!676478) b!1007435))

(assert (= (and b!1007435 res!676479) b!1007431))

(assert (= (and b!1007431 res!676476) b!1007432))

(assert (= (and b!1007432 res!676489) b!1007437))

(assert (= (and b!1007437 res!676487) b!1007430))

(assert (= (and b!1007430 res!676481) b!1007438))

(assert (= (and b!1007438 res!676477) b!1007436))

(assert (= (and b!1007436 res!676483) b!1007433))

(assert (= (and b!1007433 res!676485) b!1007428))

(assert (= (and b!1007428 res!676486) b!1007434))

(declare-fun m!932415 () Bool)

(assert (=> b!1007433 m!932415))

(declare-fun m!932417 () Bool)

(assert (=> b!1007431 m!932417))

(declare-fun m!932419 () Bool)

(assert (=> b!1007430 m!932419))

(assert (=> b!1007430 m!932419))

(declare-fun m!932421 () Bool)

(assert (=> b!1007430 m!932421))

(assert (=> b!1007430 m!932421))

(assert (=> b!1007430 m!932419))

(declare-fun m!932423 () Bool)

(assert (=> b!1007430 m!932423))

(declare-fun m!932425 () Bool)

(assert (=> b!1007432 m!932425))

(declare-fun m!932427 () Bool)

(assert (=> b!1007435 m!932427))

(declare-fun m!932429 () Bool)

(assert (=> start!86926 m!932429))

(declare-fun m!932431 () Bool)

(assert (=> start!86926 m!932431))

(assert (=> b!1007439 m!932419))

(assert (=> b!1007439 m!932419))

(declare-fun m!932433 () Bool)

(assert (=> b!1007439 m!932433))

(declare-fun m!932435 () Bool)

(assert (=> b!1007440 m!932435))

(declare-fun m!932437 () Bool)

(assert (=> b!1007434 m!932437))

(assert (=> b!1007438 m!932419))

(assert (=> b!1007438 m!932419))

(declare-fun m!932439 () Bool)

(assert (=> b!1007438 m!932439))

(declare-fun m!932441 () Bool)

(assert (=> b!1007436 m!932441))

(assert (=> b!1007436 m!932441))

(declare-fun m!932443 () Bool)

(assert (=> b!1007436 m!932443))

(declare-fun m!932445 () Bool)

(assert (=> b!1007436 m!932445))

(declare-fun m!932447 () Bool)

(assert (=> b!1007436 m!932447))

(declare-fun m!932449 () Bool)

(assert (=> b!1007427 m!932449))

(push 1)


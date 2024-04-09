; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86514 () Bool)

(assert start!86514)

(declare-fun b!1001395 () Bool)

(declare-fun res!671038 () Bool)

(declare-fun e!564301 () Bool)

(assert (=> b!1001395 (=> (not res!671038) (not e!564301))))

(declare-datatypes ((array!63267 0))(
  ( (array!63268 (arr!30455 (Array (_ BitVec 32) (_ BitVec 64))) (size!30958 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63267)

(declare-datatypes ((List!21257 0))(
  ( (Nil!21254) (Cons!21253 (h!22430 (_ BitVec 64)) (t!30266 List!21257)) )
))
(declare-fun arrayNoDuplicates!0 (array!63267 (_ BitVec 32) List!21257) Bool)

(assert (=> b!1001395 (= res!671038 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21254))))

(declare-fun b!1001396 () Bool)

(declare-fun res!671043 () Bool)

(declare-fun e!564303 () Bool)

(assert (=> b!1001396 (=> (not res!671043) (not e!564303))))

(declare-fun j!170 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9387 0))(
  ( (MissingZero!9387 (index!39918 (_ BitVec 32))) (Found!9387 (index!39919 (_ BitVec 32))) (Intermediate!9387 (undefined!10199 Bool) (index!39920 (_ BitVec 32)) (x!87368 (_ BitVec 32))) (Undefined!9387) (MissingVacant!9387 (index!39921 (_ BitVec 32))) )
))
(declare-fun lt!442671 () SeekEntryResult!9387)

(declare-fun lt!442665 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63267 (_ BitVec 32)) SeekEntryResult!9387)

(assert (=> b!1001396 (= res!671043 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442665 (select (arr!30455 a!3219) j!170) a!3219 mask!3464) lt!442671))))

(declare-fun res!671036 () Bool)

(declare-fun e!564300 () Bool)

(assert (=> start!86514 (=> (not res!671036) (not e!564300))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86514 (= res!671036 (validMask!0 mask!3464))))

(assert (=> start!86514 e!564300))

(declare-fun array_inv!23445 (array!63267) Bool)

(assert (=> start!86514 (array_inv!23445 a!3219)))

(assert (=> start!86514 true))

(declare-fun b!1001397 () Bool)

(declare-fun res!671035 () Bool)

(assert (=> b!1001397 (=> (not res!671035) (not e!564300))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001397 (= res!671035 (validKeyInArray!0 k0!2224))))

(declare-fun b!1001398 () Bool)

(declare-fun res!671032 () Bool)

(declare-fun e!564299 () Bool)

(assert (=> b!1001398 (=> (not res!671032) (not e!564299))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!442670 () array!63267)

(declare-fun lt!442667 () SeekEntryResult!9387)

(declare-fun lt!442664 () (_ BitVec 64))

(assert (=> b!1001398 (= res!671032 (not (= lt!442667 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442664 lt!442670 mask!3464))))))

(declare-fun b!1001399 () Bool)

(declare-fun res!671029 () Bool)

(assert (=> b!1001399 (=> (not res!671029) (not e!564300))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1001399 (= res!671029 (and (= (size!30958 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30958 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30958 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1001400 () Bool)

(declare-fun res!671039 () Bool)

(assert (=> b!1001400 (=> (not res!671039) (not e!564301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63267 (_ BitVec 32)) Bool)

(assert (=> b!1001400 (= res!671039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1001401 () Bool)

(declare-fun res!671037 () Bool)

(assert (=> b!1001401 (=> (not res!671037) (not e!564300))))

(assert (=> b!1001401 (= res!671037 (validKeyInArray!0 (select (arr!30455 a!3219) j!170)))))

(declare-fun b!1001402 () Bool)

(assert (=> b!1001402 (= e!564300 e!564301)))

(declare-fun res!671044 () Bool)

(assert (=> b!1001402 (=> (not res!671044) (not e!564301))))

(declare-fun lt!442666 () SeekEntryResult!9387)

(assert (=> b!1001402 (= res!671044 (or (= lt!442666 (MissingVacant!9387 i!1194)) (= lt!442666 (MissingZero!9387 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63267 (_ BitVec 32)) SeekEntryResult!9387)

(assert (=> b!1001402 (= lt!442666 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1001403 () Bool)

(declare-fun res!671040 () Bool)

(assert (=> b!1001403 (=> (not res!671040) (not e!564301))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1001403 (= res!671040 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30958 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30958 a!3219))))))

(declare-fun b!1001404 () Bool)

(declare-fun e!564305 () Bool)

(assert (=> b!1001404 (= e!564305 e!564299)))

(declare-fun res!671030 () Bool)

(assert (=> b!1001404 (=> (not res!671030) (not e!564299))))

(declare-fun lt!442669 () SeekEntryResult!9387)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001404 (= res!671030 (not (= lt!442669 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442664 mask!3464) lt!442664 lt!442670 mask!3464))))))

(assert (=> b!1001404 (= lt!442664 (select (store (arr!30455 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1001404 (= lt!442670 (array!63268 (store (arr!30455 a!3219) i!1194 k0!2224) (size!30958 a!3219)))))

(declare-fun b!1001405 () Bool)

(declare-fun e!564302 () Bool)

(assert (=> b!1001405 (= e!564301 e!564302)))

(declare-fun res!671033 () Bool)

(assert (=> b!1001405 (=> (not res!671033) (not e!564302))))

(assert (=> b!1001405 (= res!671033 (= lt!442669 lt!442671))))

(assert (=> b!1001405 (= lt!442671 (Intermediate!9387 false resIndex!38 resX!38))))

(assert (=> b!1001405 (= lt!442669 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30455 a!3219) j!170) mask!3464) (select (arr!30455 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001406 () Bool)

(declare-fun res!671041 () Bool)

(assert (=> b!1001406 (=> (not res!671041) (not e!564299))))

(assert (=> b!1001406 (= res!671041 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1001407 () Bool)

(declare-fun res!671042 () Bool)

(assert (=> b!1001407 (=> (not res!671042) (not e!564300))))

(declare-fun arrayContainsKey!0 (array!63267 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001407 (= res!671042 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1001408 () Bool)

(assert (=> b!1001408 (= e!564302 e!564305)))

(declare-fun res!671031 () Bool)

(assert (=> b!1001408 (=> (not res!671031) (not e!564305))))

(assert (=> b!1001408 (= res!671031 (= lt!442667 lt!442671))))

(assert (=> b!1001408 (= lt!442667 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30455 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001409 () Bool)

(assert (=> b!1001409 (= e!564303 false)))

(declare-fun lt!442668 () SeekEntryResult!9387)

(assert (=> b!1001409 (= lt!442668 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442665 lt!442664 lt!442670 mask!3464))))

(declare-fun b!1001410 () Bool)

(assert (=> b!1001410 (= e!564299 e!564303)))

(declare-fun res!671034 () Bool)

(assert (=> b!1001410 (=> (not res!671034) (not e!564303))))

(assert (=> b!1001410 (= res!671034 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!442665 #b00000000000000000000000000000000) (bvslt lt!442665 (size!30958 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001410 (= lt!442665 (nextIndex!0 index!1507 x!1245 mask!3464))))

(assert (= (and start!86514 res!671036) b!1001399))

(assert (= (and b!1001399 res!671029) b!1001401))

(assert (= (and b!1001401 res!671037) b!1001397))

(assert (= (and b!1001397 res!671035) b!1001407))

(assert (= (and b!1001407 res!671042) b!1001402))

(assert (= (and b!1001402 res!671044) b!1001400))

(assert (= (and b!1001400 res!671039) b!1001395))

(assert (= (and b!1001395 res!671038) b!1001403))

(assert (= (and b!1001403 res!671040) b!1001405))

(assert (= (and b!1001405 res!671033) b!1001408))

(assert (= (and b!1001408 res!671031) b!1001404))

(assert (= (and b!1001404 res!671030) b!1001398))

(assert (= (and b!1001398 res!671032) b!1001406))

(assert (= (and b!1001406 res!671041) b!1001410))

(assert (= (and b!1001410 res!671034) b!1001396))

(assert (= (and b!1001396 res!671043) b!1001409))

(declare-fun m!927541 () Bool)

(assert (=> b!1001395 m!927541))

(declare-fun m!927543 () Bool)

(assert (=> b!1001408 m!927543))

(assert (=> b!1001408 m!927543))

(declare-fun m!927545 () Bool)

(assert (=> b!1001408 m!927545))

(declare-fun m!927547 () Bool)

(assert (=> b!1001407 m!927547))

(declare-fun m!927549 () Bool)

(assert (=> b!1001409 m!927549))

(declare-fun m!927551 () Bool)

(assert (=> b!1001397 m!927551))

(declare-fun m!927553 () Bool)

(assert (=> b!1001404 m!927553))

(assert (=> b!1001404 m!927553))

(declare-fun m!927555 () Bool)

(assert (=> b!1001404 m!927555))

(declare-fun m!927557 () Bool)

(assert (=> b!1001404 m!927557))

(declare-fun m!927559 () Bool)

(assert (=> b!1001404 m!927559))

(declare-fun m!927561 () Bool)

(assert (=> b!1001398 m!927561))

(declare-fun m!927563 () Bool)

(assert (=> b!1001410 m!927563))

(declare-fun m!927565 () Bool)

(assert (=> b!1001400 m!927565))

(declare-fun m!927567 () Bool)

(assert (=> b!1001402 m!927567))

(declare-fun m!927569 () Bool)

(assert (=> start!86514 m!927569))

(declare-fun m!927571 () Bool)

(assert (=> start!86514 m!927571))

(assert (=> b!1001405 m!927543))

(assert (=> b!1001405 m!927543))

(declare-fun m!927573 () Bool)

(assert (=> b!1001405 m!927573))

(assert (=> b!1001405 m!927573))

(assert (=> b!1001405 m!927543))

(declare-fun m!927575 () Bool)

(assert (=> b!1001405 m!927575))

(assert (=> b!1001401 m!927543))

(assert (=> b!1001401 m!927543))

(declare-fun m!927577 () Bool)

(assert (=> b!1001401 m!927577))

(assert (=> b!1001396 m!927543))

(assert (=> b!1001396 m!927543))

(declare-fun m!927579 () Bool)

(assert (=> b!1001396 m!927579))

(check-sat (not b!1001410) (not b!1001398) (not b!1001397) (not b!1001404) (not b!1001396) (not start!86514) (not b!1001407) (not b!1001408) (not b!1001402) (not b!1001409) (not b!1001405) (not b!1001401) (not b!1001395) (not b!1001400))
(check-sat)

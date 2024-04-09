; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86976 () Bool)

(assert start!86976)

(declare-fun b!1008477 () Bool)

(declare-fun res!677536 () Bool)

(declare-fun e!567457 () Bool)

(assert (=> b!1008477 (=> (not res!677536) (not e!567457))))

(declare-datatypes ((array!63576 0))(
  ( (array!63577 (arr!30605 (Array (_ BitVec 32) (_ BitVec 64))) (size!31108 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63576)

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1008477 (= res!677536 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31108 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31108 a!3219))))))

(declare-fun b!1008478 () Bool)

(declare-fun res!677526 () Bool)

(assert (=> b!1008478 (=> (not res!677526) (not e!567457))))

(declare-datatypes ((List!21407 0))(
  ( (Nil!21404) (Cons!21403 (h!22589 (_ BitVec 64)) (t!30416 List!21407)) )
))
(declare-fun arrayNoDuplicates!0 (array!63576 (_ BitVec 32) List!21407) Bool)

(assert (=> b!1008478 (= res!677526 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21404))))

(declare-fun b!1008479 () Bool)

(declare-fun e!567454 () Bool)

(assert (=> b!1008479 (= e!567454 false)))

(declare-fun lt!445729 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008479 (= lt!445729 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1008480 () Bool)

(declare-fun e!567456 () Bool)

(assert (=> b!1008480 (= e!567457 e!567456)))

(declare-fun res!677529 () Bool)

(assert (=> b!1008480 (=> (not res!677529) (not e!567456))))

(declare-datatypes ((SeekEntryResult!9537 0))(
  ( (MissingZero!9537 (index!40518 (_ BitVec 32))) (Found!9537 (index!40519 (_ BitVec 32))) (Intermediate!9537 (undefined!10349 Bool) (index!40520 (_ BitVec 32)) (x!87936 (_ BitVec 32))) (Undefined!9537) (MissingVacant!9537 (index!40521 (_ BitVec 32))) )
))
(declare-fun lt!445731 () SeekEntryResult!9537)

(declare-fun lt!445728 () SeekEntryResult!9537)

(assert (=> b!1008480 (= res!677529 (= lt!445731 lt!445728))))

(assert (=> b!1008480 (= lt!445728 (Intermediate!9537 false resIndex!38 resX!38))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63576 (_ BitVec 32)) SeekEntryResult!9537)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008480 (= lt!445731 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30605 a!3219) j!170) mask!3464) (select (arr!30605 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008481 () Bool)

(declare-fun res!677534 () Bool)

(declare-fun e!567458 () Bool)

(assert (=> b!1008481 (=> (not res!677534) (not e!567458))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1008481 (= res!677534 (validKeyInArray!0 (select (arr!30605 a!3219) j!170)))))

(declare-fun b!1008482 () Bool)

(declare-fun res!677535 () Bool)

(assert (=> b!1008482 (=> (not res!677535) (not e!567458))))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!1008482 (= res!677535 (validKeyInArray!0 k0!2224))))

(declare-fun b!1008483 () Bool)

(declare-fun res!677528 () Bool)

(assert (=> b!1008483 (=> (not res!677528) (not e!567458))))

(declare-fun arrayContainsKey!0 (array!63576 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1008483 (= res!677528 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1008484 () Bool)

(assert (=> b!1008484 (= e!567458 e!567457)))

(declare-fun res!677527 () Bool)

(assert (=> b!1008484 (=> (not res!677527) (not e!567457))))

(declare-fun lt!445730 () SeekEntryResult!9537)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1008484 (= res!677527 (or (= lt!445730 (MissingVacant!9537 i!1194)) (= lt!445730 (MissingZero!9537 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63576 (_ BitVec 32)) SeekEntryResult!9537)

(assert (=> b!1008484 (= lt!445730 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1008486 () Bool)

(declare-fun res!677538 () Bool)

(assert (=> b!1008486 (=> (not res!677538) (not e!567454))))

(declare-fun lt!445732 () SeekEntryResult!9537)

(declare-fun lt!445733 () array!63576)

(declare-fun lt!445734 () (_ BitVec 64))

(assert (=> b!1008486 (= res!677538 (not (= lt!445732 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445734 lt!445733 mask!3464))))))

(declare-fun b!1008487 () Bool)

(declare-fun e!567453 () Bool)

(assert (=> b!1008487 (= e!567453 e!567454)))

(declare-fun res!677530 () Bool)

(assert (=> b!1008487 (=> (not res!677530) (not e!567454))))

(assert (=> b!1008487 (= res!677530 (not (= lt!445731 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445734 mask!3464) lt!445734 lt!445733 mask!3464))))))

(assert (=> b!1008487 (= lt!445734 (select (store (arr!30605 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1008487 (= lt!445733 (array!63577 (store (arr!30605 a!3219) i!1194 k0!2224) (size!31108 a!3219)))))

(declare-fun b!1008488 () Bool)

(declare-fun res!677537 () Bool)

(assert (=> b!1008488 (=> (not res!677537) (not e!567454))))

(assert (=> b!1008488 (= res!677537 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1008489 () Bool)

(assert (=> b!1008489 (= e!567456 e!567453)))

(declare-fun res!677533 () Bool)

(assert (=> b!1008489 (=> (not res!677533) (not e!567453))))

(assert (=> b!1008489 (= res!677533 (= lt!445732 lt!445728))))

(assert (=> b!1008489 (= lt!445732 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30605 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008490 () Bool)

(declare-fun res!677539 () Bool)

(assert (=> b!1008490 (=> (not res!677539) (not e!567457))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63576 (_ BitVec 32)) Bool)

(assert (=> b!1008490 (= res!677539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!677532 () Bool)

(assert (=> start!86976 (=> (not res!677532) (not e!567458))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86976 (= res!677532 (validMask!0 mask!3464))))

(assert (=> start!86976 e!567458))

(declare-fun array_inv!23595 (array!63576) Bool)

(assert (=> start!86976 (array_inv!23595 a!3219)))

(assert (=> start!86976 true))

(declare-fun b!1008485 () Bool)

(declare-fun res!677531 () Bool)

(assert (=> b!1008485 (=> (not res!677531) (not e!567458))))

(assert (=> b!1008485 (= res!677531 (and (= (size!31108 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31108 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31108 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86976 res!677532) b!1008485))

(assert (= (and b!1008485 res!677531) b!1008481))

(assert (= (and b!1008481 res!677534) b!1008482))

(assert (= (and b!1008482 res!677535) b!1008483))

(assert (= (and b!1008483 res!677528) b!1008484))

(assert (= (and b!1008484 res!677527) b!1008490))

(assert (= (and b!1008490 res!677539) b!1008478))

(assert (= (and b!1008478 res!677526) b!1008477))

(assert (= (and b!1008477 res!677536) b!1008480))

(assert (= (and b!1008480 res!677529) b!1008489))

(assert (= (and b!1008489 res!677533) b!1008487))

(assert (= (and b!1008487 res!677530) b!1008486))

(assert (= (and b!1008486 res!677538) b!1008488))

(assert (= (and b!1008488 res!677537) b!1008479))

(declare-fun m!933315 () Bool)

(assert (=> b!1008478 m!933315))

(declare-fun m!933317 () Bool)

(assert (=> b!1008479 m!933317))

(declare-fun m!933319 () Bool)

(assert (=> b!1008482 m!933319))

(declare-fun m!933321 () Bool)

(assert (=> b!1008484 m!933321))

(declare-fun m!933323 () Bool)

(assert (=> b!1008487 m!933323))

(assert (=> b!1008487 m!933323))

(declare-fun m!933325 () Bool)

(assert (=> b!1008487 m!933325))

(declare-fun m!933327 () Bool)

(assert (=> b!1008487 m!933327))

(declare-fun m!933329 () Bool)

(assert (=> b!1008487 m!933329))

(declare-fun m!933331 () Bool)

(assert (=> b!1008486 m!933331))

(declare-fun m!933333 () Bool)

(assert (=> b!1008480 m!933333))

(assert (=> b!1008480 m!933333))

(declare-fun m!933335 () Bool)

(assert (=> b!1008480 m!933335))

(assert (=> b!1008480 m!933335))

(assert (=> b!1008480 m!933333))

(declare-fun m!933337 () Bool)

(assert (=> b!1008480 m!933337))

(declare-fun m!933339 () Bool)

(assert (=> b!1008490 m!933339))

(declare-fun m!933341 () Bool)

(assert (=> start!86976 m!933341))

(declare-fun m!933343 () Bool)

(assert (=> start!86976 m!933343))

(declare-fun m!933345 () Bool)

(assert (=> b!1008483 m!933345))

(assert (=> b!1008481 m!933333))

(assert (=> b!1008481 m!933333))

(declare-fun m!933347 () Bool)

(assert (=> b!1008481 m!933347))

(assert (=> b!1008489 m!933333))

(assert (=> b!1008489 m!933333))

(declare-fun m!933349 () Bool)

(assert (=> b!1008489 m!933349))

(check-sat (not b!1008487) (not b!1008486) (not b!1008480) (not start!86976) (not b!1008490) (not b!1008483) (not b!1008489) (not b!1008484) (not b!1008482) (not b!1008481) (not b!1008479) (not b!1008478))
(check-sat)

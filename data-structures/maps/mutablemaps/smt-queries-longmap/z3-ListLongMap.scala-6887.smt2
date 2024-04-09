; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86610 () Bool)

(assert start!86610)

(declare-fun b!1003699 () Bool)

(declare-fun res!673333 () Bool)

(declare-fun e!565309 () Bool)

(assert (=> b!1003699 (=> (not res!673333) (not e!565309))))

(declare-datatypes ((array!63363 0))(
  ( (array!63364 (arr!30503 (Array (_ BitVec 32) (_ BitVec 64))) (size!31006 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63363)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1003699 (= res!673333 (validKeyInArray!0 (select (arr!30503 a!3219) j!170)))))

(declare-fun b!1003700 () Bool)

(declare-fun e!565312 () Bool)

(declare-fun e!565307 () Bool)

(assert (=> b!1003700 (= e!565312 e!565307)))

(declare-fun res!673336 () Bool)

(assert (=> b!1003700 (=> (not res!673336) (not e!565307))))

(declare-datatypes ((SeekEntryResult!9435 0))(
  ( (MissingZero!9435 (index!40110 (_ BitVec 32))) (Found!9435 (index!40111 (_ BitVec 32))) (Intermediate!9435 (undefined!10247 Bool) (index!40112 (_ BitVec 32)) (x!87544 (_ BitVec 32))) (Undefined!9435) (MissingVacant!9435 (index!40113 (_ BitVec 32))) )
))
(declare-fun lt!443821 () SeekEntryResult!9435)

(declare-fun lt!443823 () SeekEntryResult!9435)

(assert (=> b!1003700 (= res!673336 (= lt!443821 lt!443823))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63363 (_ BitVec 32)) SeekEntryResult!9435)

(assert (=> b!1003700 (= lt!443821 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30503 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003701 () Bool)

(declare-fun res!673340 () Bool)

(declare-fun e!565311 () Bool)

(assert (=> b!1003701 (=> (not res!673340) (not e!565311))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63363 (_ BitVec 32)) Bool)

(assert (=> b!1003701 (= res!673340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1003702 () Bool)

(declare-fun res!673342 () Bool)

(assert (=> b!1003702 (=> (not res!673342) (not e!565309))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63363 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1003702 (= res!673342 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1003703 () Bool)

(declare-fun e!565308 () Bool)

(declare-fun e!565310 () Bool)

(assert (=> b!1003703 (= e!565308 e!565310)))

(declare-fun res!673335 () Bool)

(assert (=> b!1003703 (=> (not res!673335) (not e!565310))))

(declare-fun lt!443822 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1003703 (= res!673335 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443822 #b00000000000000000000000000000000) (bvslt lt!443822 (size!31006 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003703 (= lt!443822 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1003704 () Bool)

(declare-fun res!673346 () Bool)

(assert (=> b!1003704 (=> (not res!673346) (not e!565308))))

(declare-fun lt!443820 () array!63363)

(declare-fun lt!443817 () (_ BitVec 64))

(assert (=> b!1003704 (= res!673346 (not (= lt!443821 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443817 lt!443820 mask!3464))))))

(declare-fun b!1003705 () Bool)

(declare-fun res!673343 () Bool)

(assert (=> b!1003705 (=> (not res!673343) (not e!565311))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1003705 (= res!673343 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31006 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31006 a!3219))))))

(declare-fun b!1003706 () Bool)

(declare-fun res!673344 () Bool)

(assert (=> b!1003706 (=> (not res!673344) (not e!565308))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1003706 (= res!673344 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1003707 () Bool)

(declare-fun res!673337 () Bool)

(assert (=> b!1003707 (=> (not res!673337) (not e!565309))))

(assert (=> b!1003707 (= res!673337 (and (= (size!31006 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31006 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31006 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!673339 () Bool)

(assert (=> start!86610 (=> (not res!673339) (not e!565309))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86610 (= res!673339 (validMask!0 mask!3464))))

(assert (=> start!86610 e!565309))

(declare-fun array_inv!23493 (array!63363) Bool)

(assert (=> start!86610 (array_inv!23493 a!3219)))

(assert (=> start!86610 true))

(declare-fun b!1003708 () Bool)

(assert (=> b!1003708 (= e!565307 e!565308)))

(declare-fun res!673334 () Bool)

(assert (=> b!1003708 (=> (not res!673334) (not e!565308))))

(declare-fun lt!443819 () SeekEntryResult!9435)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003708 (= res!673334 (not (= lt!443819 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443817 mask!3464) lt!443817 lt!443820 mask!3464))))))

(assert (=> b!1003708 (= lt!443817 (select (store (arr!30503 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1003708 (= lt!443820 (array!63364 (store (arr!30503 a!3219) i!1194 k0!2224) (size!31006 a!3219)))))

(declare-fun b!1003709 () Bool)

(declare-fun res!673345 () Bool)

(assert (=> b!1003709 (=> (not res!673345) (not e!565310))))

(assert (=> b!1003709 (= res!673345 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443822 (select (arr!30503 a!3219) j!170) a!3219 mask!3464) lt!443823))))

(declare-fun b!1003710 () Bool)

(assert (=> b!1003710 (= e!565310 false)))

(declare-fun lt!443816 () SeekEntryResult!9435)

(assert (=> b!1003710 (= lt!443816 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443822 lt!443817 lt!443820 mask!3464))))

(declare-fun b!1003711 () Bool)

(assert (=> b!1003711 (= e!565311 e!565312)))

(declare-fun res!673341 () Bool)

(assert (=> b!1003711 (=> (not res!673341) (not e!565312))))

(assert (=> b!1003711 (= res!673341 (= lt!443819 lt!443823))))

(assert (=> b!1003711 (= lt!443823 (Intermediate!9435 false resIndex!38 resX!38))))

(assert (=> b!1003711 (= lt!443819 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30503 a!3219) j!170) mask!3464) (select (arr!30503 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003712 () Bool)

(declare-fun res!673338 () Bool)

(assert (=> b!1003712 (=> (not res!673338) (not e!565311))))

(declare-datatypes ((List!21305 0))(
  ( (Nil!21302) (Cons!21301 (h!22478 (_ BitVec 64)) (t!30314 List!21305)) )
))
(declare-fun arrayNoDuplicates!0 (array!63363 (_ BitVec 32) List!21305) Bool)

(assert (=> b!1003712 (= res!673338 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21302))))

(declare-fun b!1003713 () Bool)

(assert (=> b!1003713 (= e!565309 e!565311)))

(declare-fun res!673348 () Bool)

(assert (=> b!1003713 (=> (not res!673348) (not e!565311))))

(declare-fun lt!443818 () SeekEntryResult!9435)

(assert (=> b!1003713 (= res!673348 (or (= lt!443818 (MissingVacant!9435 i!1194)) (= lt!443818 (MissingZero!9435 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63363 (_ BitVec 32)) SeekEntryResult!9435)

(assert (=> b!1003713 (= lt!443818 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1003714 () Bool)

(declare-fun res!673347 () Bool)

(assert (=> b!1003714 (=> (not res!673347) (not e!565309))))

(assert (=> b!1003714 (= res!673347 (validKeyInArray!0 k0!2224))))

(assert (= (and start!86610 res!673339) b!1003707))

(assert (= (and b!1003707 res!673337) b!1003699))

(assert (= (and b!1003699 res!673333) b!1003714))

(assert (= (and b!1003714 res!673347) b!1003702))

(assert (= (and b!1003702 res!673342) b!1003713))

(assert (= (and b!1003713 res!673348) b!1003701))

(assert (= (and b!1003701 res!673340) b!1003712))

(assert (= (and b!1003712 res!673338) b!1003705))

(assert (= (and b!1003705 res!673343) b!1003711))

(assert (= (and b!1003711 res!673341) b!1003700))

(assert (= (and b!1003700 res!673336) b!1003708))

(assert (= (and b!1003708 res!673334) b!1003704))

(assert (= (and b!1003704 res!673346) b!1003706))

(assert (= (and b!1003706 res!673344) b!1003703))

(assert (= (and b!1003703 res!673335) b!1003709))

(assert (= (and b!1003709 res!673345) b!1003710))

(declare-fun m!929461 () Bool)

(assert (=> b!1003704 m!929461))

(declare-fun m!929463 () Bool)

(assert (=> start!86610 m!929463))

(declare-fun m!929465 () Bool)

(assert (=> start!86610 m!929465))

(declare-fun m!929467 () Bool)

(assert (=> b!1003711 m!929467))

(assert (=> b!1003711 m!929467))

(declare-fun m!929469 () Bool)

(assert (=> b!1003711 m!929469))

(assert (=> b!1003711 m!929469))

(assert (=> b!1003711 m!929467))

(declare-fun m!929471 () Bool)

(assert (=> b!1003711 m!929471))

(declare-fun m!929473 () Bool)

(assert (=> b!1003710 m!929473))

(declare-fun m!929475 () Bool)

(assert (=> b!1003712 m!929475))

(declare-fun m!929477 () Bool)

(assert (=> b!1003708 m!929477))

(assert (=> b!1003708 m!929477))

(declare-fun m!929479 () Bool)

(assert (=> b!1003708 m!929479))

(declare-fun m!929481 () Bool)

(assert (=> b!1003708 m!929481))

(declare-fun m!929483 () Bool)

(assert (=> b!1003708 m!929483))

(assert (=> b!1003709 m!929467))

(assert (=> b!1003709 m!929467))

(declare-fun m!929485 () Bool)

(assert (=> b!1003709 m!929485))

(assert (=> b!1003700 m!929467))

(assert (=> b!1003700 m!929467))

(declare-fun m!929487 () Bool)

(assert (=> b!1003700 m!929487))

(declare-fun m!929489 () Bool)

(assert (=> b!1003714 m!929489))

(assert (=> b!1003699 m!929467))

(assert (=> b!1003699 m!929467))

(declare-fun m!929491 () Bool)

(assert (=> b!1003699 m!929491))

(declare-fun m!929493 () Bool)

(assert (=> b!1003713 m!929493))

(declare-fun m!929495 () Bool)

(assert (=> b!1003701 m!929495))

(declare-fun m!929497 () Bool)

(assert (=> b!1003703 m!929497))

(declare-fun m!929499 () Bool)

(assert (=> b!1003702 m!929499))

(check-sat (not b!1003713) (not start!86610) (not b!1003701) (not b!1003712) (not b!1003704) (not b!1003699) (not b!1003700) (not b!1003708) (not b!1003709) (not b!1003703) (not b!1003714) (not b!1003702) (not b!1003710) (not b!1003711))
(check-sat)

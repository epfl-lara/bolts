; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86508 () Bool)

(assert start!86508)

(declare-fun b!1001251 () Bool)

(declare-fun res!670889 () Bool)

(declare-fun e!564239 () Bool)

(assert (=> b!1001251 (=> (not res!670889) (not e!564239))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-datatypes ((array!63261 0))(
  ( (array!63262 (arr!30452 (Array (_ BitVec 32) (_ BitVec 64))) (size!30955 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63261)

(assert (=> b!1001251 (= res!670889 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30955 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30955 a!3219))))))

(declare-fun b!1001252 () Bool)

(declare-fun res!670885 () Bool)

(declare-fun e!564241 () Bool)

(assert (=> b!1001252 (=> (not res!670885) (not e!564241))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!442595 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9384 0))(
  ( (MissingZero!9384 (index!39906 (_ BitVec 32))) (Found!9384 (index!39907 (_ BitVec 32))) (Intermediate!9384 (undefined!10196 Bool) (index!39908 (_ BitVec 32)) (x!87357 (_ BitVec 32))) (Undefined!9384) (MissingVacant!9384 (index!39909 (_ BitVec 32))) )
))
(declare-fun lt!442594 () SeekEntryResult!9384)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63261 (_ BitVec 32)) SeekEntryResult!9384)

(assert (=> b!1001252 (= res!670885 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442595 (select (arr!30452 a!3219) j!170) a!3219 mask!3464) lt!442594))))

(declare-fun b!1001253 () Bool)

(declare-fun e!564242 () Bool)

(declare-fun e!564236 () Bool)

(assert (=> b!1001253 (= e!564242 e!564236)))

(declare-fun res!670887 () Bool)

(assert (=> b!1001253 (=> (not res!670887) (not e!564236))))

(declare-fun lt!442597 () SeekEntryResult!9384)

(declare-fun lt!442599 () array!63261)

(declare-fun lt!442592 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001253 (= res!670887 (not (= lt!442597 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442592 mask!3464) lt!442592 lt!442599 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!1001253 (= lt!442592 (select (store (arr!30452 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1001253 (= lt!442599 (array!63262 (store (arr!30452 a!3219) i!1194 k0!2224) (size!30955 a!3219)))))

(declare-fun b!1001254 () Bool)

(declare-fun res!670898 () Bool)

(declare-fun e!564238 () Bool)

(assert (=> b!1001254 (=> (not res!670898) (not e!564238))))

(declare-fun arrayContainsKey!0 (array!63261 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001254 (= res!670898 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1001255 () Bool)

(declare-fun res!670890 () Bool)

(assert (=> b!1001255 (=> (not res!670890) (not e!564236))))

(declare-fun lt!442596 () SeekEntryResult!9384)

(assert (=> b!1001255 (= res!670890 (not (= lt!442596 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442592 lt!442599 mask!3464))))))

(declare-fun b!1001256 () Bool)

(assert (=> b!1001256 (= e!564236 e!564241)))

(declare-fun res!670893 () Bool)

(assert (=> b!1001256 (=> (not res!670893) (not e!564241))))

(assert (=> b!1001256 (= res!670893 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!442595 #b00000000000000000000000000000000) (bvslt lt!442595 (size!30955 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001256 (= lt!442595 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1001257 () Bool)

(declare-fun e!564240 () Bool)

(assert (=> b!1001257 (= e!564240 e!564242)))

(declare-fun res!670897 () Bool)

(assert (=> b!1001257 (=> (not res!670897) (not e!564242))))

(assert (=> b!1001257 (= res!670897 (= lt!442596 lt!442594))))

(assert (=> b!1001257 (= lt!442596 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30452 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001258 () Bool)

(declare-fun res!670900 () Bool)

(assert (=> b!1001258 (=> (not res!670900) (not e!564239))))

(declare-datatypes ((List!21254 0))(
  ( (Nil!21251) (Cons!21250 (h!22427 (_ BitVec 64)) (t!30263 List!21254)) )
))
(declare-fun arrayNoDuplicates!0 (array!63261 (_ BitVec 32) List!21254) Bool)

(assert (=> b!1001258 (= res!670900 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21251))))

(declare-fun res!670896 () Bool)

(assert (=> start!86508 (=> (not res!670896) (not e!564238))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86508 (= res!670896 (validMask!0 mask!3464))))

(assert (=> start!86508 e!564238))

(declare-fun array_inv!23442 (array!63261) Bool)

(assert (=> start!86508 (array_inv!23442 a!3219)))

(assert (=> start!86508 true))

(declare-fun b!1001259 () Bool)

(declare-fun res!670894 () Bool)

(assert (=> b!1001259 (=> (not res!670894) (not e!564238))))

(assert (=> b!1001259 (= res!670894 (and (= (size!30955 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30955 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30955 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1001260 () Bool)

(assert (=> b!1001260 (= e!564238 e!564239)))

(declare-fun res!670895 () Bool)

(assert (=> b!1001260 (=> (not res!670895) (not e!564239))))

(declare-fun lt!442593 () SeekEntryResult!9384)

(assert (=> b!1001260 (= res!670895 (or (= lt!442593 (MissingVacant!9384 i!1194)) (= lt!442593 (MissingZero!9384 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63261 (_ BitVec 32)) SeekEntryResult!9384)

(assert (=> b!1001260 (= lt!442593 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1001261 () Bool)

(declare-fun res!670891 () Bool)

(assert (=> b!1001261 (=> (not res!670891) (not e!564239))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63261 (_ BitVec 32)) Bool)

(assert (=> b!1001261 (= res!670891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1001262 () Bool)

(assert (=> b!1001262 (= e!564239 e!564240)))

(declare-fun res!670899 () Bool)

(assert (=> b!1001262 (=> (not res!670899) (not e!564240))))

(assert (=> b!1001262 (= res!670899 (= lt!442597 lt!442594))))

(assert (=> b!1001262 (= lt!442594 (Intermediate!9384 false resIndex!38 resX!38))))

(assert (=> b!1001262 (= lt!442597 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30452 a!3219) j!170) mask!3464) (select (arr!30452 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001263 () Bool)

(declare-fun res!670888 () Bool)

(assert (=> b!1001263 (=> (not res!670888) (not e!564238))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001263 (= res!670888 (validKeyInArray!0 (select (arr!30452 a!3219) j!170)))))

(declare-fun b!1001264 () Bool)

(assert (=> b!1001264 (= e!564241 false)))

(declare-fun lt!442598 () SeekEntryResult!9384)

(assert (=> b!1001264 (= lt!442598 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442595 lt!442592 lt!442599 mask!3464))))

(declare-fun b!1001265 () Bool)

(declare-fun res!670886 () Bool)

(assert (=> b!1001265 (=> (not res!670886) (not e!564238))))

(assert (=> b!1001265 (= res!670886 (validKeyInArray!0 k0!2224))))

(declare-fun b!1001266 () Bool)

(declare-fun res!670892 () Bool)

(assert (=> b!1001266 (=> (not res!670892) (not e!564236))))

(assert (=> b!1001266 (= res!670892 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(assert (= (and start!86508 res!670896) b!1001259))

(assert (= (and b!1001259 res!670894) b!1001263))

(assert (= (and b!1001263 res!670888) b!1001265))

(assert (= (and b!1001265 res!670886) b!1001254))

(assert (= (and b!1001254 res!670898) b!1001260))

(assert (= (and b!1001260 res!670895) b!1001261))

(assert (= (and b!1001261 res!670891) b!1001258))

(assert (= (and b!1001258 res!670900) b!1001251))

(assert (= (and b!1001251 res!670889) b!1001262))

(assert (= (and b!1001262 res!670899) b!1001257))

(assert (= (and b!1001257 res!670897) b!1001253))

(assert (= (and b!1001253 res!670887) b!1001255))

(assert (= (and b!1001255 res!670890) b!1001266))

(assert (= (and b!1001266 res!670892) b!1001256))

(assert (= (and b!1001256 res!670893) b!1001252))

(assert (= (and b!1001252 res!670885) b!1001264))

(declare-fun m!927421 () Bool)

(assert (=> b!1001262 m!927421))

(assert (=> b!1001262 m!927421))

(declare-fun m!927423 () Bool)

(assert (=> b!1001262 m!927423))

(assert (=> b!1001262 m!927423))

(assert (=> b!1001262 m!927421))

(declare-fun m!927425 () Bool)

(assert (=> b!1001262 m!927425))

(declare-fun m!927427 () Bool)

(assert (=> start!86508 m!927427))

(declare-fun m!927429 () Bool)

(assert (=> start!86508 m!927429))

(assert (=> b!1001257 m!927421))

(assert (=> b!1001257 m!927421))

(declare-fun m!927431 () Bool)

(assert (=> b!1001257 m!927431))

(declare-fun m!927433 () Bool)

(assert (=> b!1001254 m!927433))

(declare-fun m!927435 () Bool)

(assert (=> b!1001253 m!927435))

(assert (=> b!1001253 m!927435))

(declare-fun m!927437 () Bool)

(assert (=> b!1001253 m!927437))

(declare-fun m!927439 () Bool)

(assert (=> b!1001253 m!927439))

(declare-fun m!927441 () Bool)

(assert (=> b!1001253 m!927441))

(declare-fun m!927443 () Bool)

(assert (=> b!1001255 m!927443))

(declare-fun m!927445 () Bool)

(assert (=> b!1001258 m!927445))

(declare-fun m!927447 () Bool)

(assert (=> b!1001265 m!927447))

(declare-fun m!927449 () Bool)

(assert (=> b!1001260 m!927449))

(assert (=> b!1001252 m!927421))

(assert (=> b!1001252 m!927421))

(declare-fun m!927451 () Bool)

(assert (=> b!1001252 m!927451))

(declare-fun m!927453 () Bool)

(assert (=> b!1001264 m!927453))

(declare-fun m!927455 () Bool)

(assert (=> b!1001256 m!927455))

(declare-fun m!927457 () Bool)

(assert (=> b!1001261 m!927457))

(assert (=> b!1001263 m!927421))

(assert (=> b!1001263 m!927421))

(declare-fun m!927459 () Bool)

(assert (=> b!1001263 m!927459))

(check-sat (not b!1001261) (not start!86508) (not b!1001257) (not b!1001262) (not b!1001255) (not b!1001263) (not b!1001252) (not b!1001253) (not b!1001264) (not b!1001254) (not b!1001260) (not b!1001265) (not b!1001258) (not b!1001256))
(check-sat)

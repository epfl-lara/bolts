; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86442 () Bool)

(assert start!86442)

(declare-fun b!1000029 () Bool)

(declare-fun res!669664 () Bool)

(declare-fun e!563764 () Bool)

(assert (=> b!1000029 (=> (not res!669664) (not e!563764))))

(declare-datatypes ((array!63195 0))(
  ( (array!63196 (arr!30419 (Array (_ BitVec 32) (_ BitVec 64))) (size!30922 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63195)

(declare-datatypes ((List!21221 0))(
  ( (Nil!21218) (Cons!21217 (h!22394 (_ BitVec 64)) (t!30230 List!21221)) )
))
(declare-fun arrayNoDuplicates!0 (array!63195 (_ BitVec 32) List!21221) Bool)

(assert (=> b!1000029 (= res!669664 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21218))))

(declare-fun b!1000030 () Bool)

(declare-fun res!669665 () Bool)

(assert (=> b!1000030 (=> (not res!669665) (not e!563764))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63195 (_ BitVec 32)) Bool)

(assert (=> b!1000030 (= res!669665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000031 () Bool)

(declare-fun res!669672 () Bool)

(assert (=> b!1000031 (=> (not res!669672) (not e!563764))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000031 (= res!669672 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30922 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30922 a!3219))))))

(declare-fun b!1000032 () Bool)

(declare-fun e!563762 () Bool)

(assert (=> b!1000032 (= e!563762 e!563764)))

(declare-fun res!669670 () Bool)

(assert (=> b!1000032 (=> (not res!669670) (not e!563764))))

(declare-datatypes ((SeekEntryResult!9351 0))(
  ( (MissingZero!9351 (index!39774 (_ BitVec 32))) (Found!9351 (index!39775 (_ BitVec 32))) (Intermediate!9351 (undefined!10163 Bool) (index!39776 (_ BitVec 32)) (x!87236 (_ BitVec 32))) (Undefined!9351) (MissingVacant!9351 (index!39777 (_ BitVec 32))) )
))
(declare-fun lt!442162 () SeekEntryResult!9351)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1000032 (= res!669670 (or (= lt!442162 (MissingVacant!9351 i!1194)) (= lt!442162 (MissingZero!9351 i!1194))))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63195 (_ BitVec 32)) SeekEntryResult!9351)

(assert (=> b!1000032 (= lt!442162 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1000033 () Bool)

(declare-fun res!669667 () Bool)

(assert (=> b!1000033 (=> (not res!669667) (not e!563762))))

(declare-fun arrayContainsKey!0 (array!63195 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000033 (= res!669667 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000034 () Bool)

(declare-fun res!669669 () Bool)

(declare-fun e!563765 () Bool)

(assert (=> b!1000034 (=> (not res!669669) (not e!563765))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!442164 () SeekEntryResult!9351)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63195 (_ BitVec 32)) SeekEntryResult!9351)

(assert (=> b!1000034 (= res!669669 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30419 a!3219) j!170) a!3219 mask!3464) lt!442164))))

(declare-fun b!1000035 () Bool)

(assert (=> b!1000035 (= e!563765 false)))

(declare-fun lt!442163 () SeekEntryResult!9351)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000035 (= lt!442163 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30419 a!3219) i!1194 k0!2224) j!170) mask!3464) (select (store (arr!30419 a!3219) i!1194 k0!2224) j!170) (array!63196 (store (arr!30419 a!3219) i!1194 k0!2224) (size!30922 a!3219)) mask!3464))))

(declare-fun b!1000036 () Bool)

(assert (=> b!1000036 (= e!563764 e!563765)))

(declare-fun res!669673 () Bool)

(assert (=> b!1000036 (=> (not res!669673) (not e!563765))))

(assert (=> b!1000036 (= res!669673 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30419 a!3219) j!170) mask!3464) (select (arr!30419 a!3219) j!170) a!3219 mask!3464) lt!442164))))

(assert (=> b!1000036 (= lt!442164 (Intermediate!9351 false resIndex!38 resX!38))))

(declare-fun b!1000037 () Bool)

(declare-fun res!669666 () Bool)

(assert (=> b!1000037 (=> (not res!669666) (not e!563762))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000037 (= res!669666 (validKeyInArray!0 (select (arr!30419 a!3219) j!170)))))

(declare-fun b!1000038 () Bool)

(declare-fun res!669663 () Bool)

(assert (=> b!1000038 (=> (not res!669663) (not e!563762))))

(assert (=> b!1000038 (= res!669663 (validKeyInArray!0 k0!2224))))

(declare-fun res!669671 () Bool)

(assert (=> start!86442 (=> (not res!669671) (not e!563762))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86442 (= res!669671 (validMask!0 mask!3464))))

(assert (=> start!86442 e!563762))

(declare-fun array_inv!23409 (array!63195) Bool)

(assert (=> start!86442 (array_inv!23409 a!3219)))

(assert (=> start!86442 true))

(declare-fun b!1000039 () Bool)

(declare-fun res!669668 () Bool)

(assert (=> b!1000039 (=> (not res!669668) (not e!563762))))

(assert (=> b!1000039 (= res!669668 (and (= (size!30922 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30922 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30922 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86442 res!669671) b!1000039))

(assert (= (and b!1000039 res!669668) b!1000037))

(assert (= (and b!1000037 res!669666) b!1000038))

(assert (= (and b!1000038 res!669663) b!1000033))

(assert (= (and b!1000033 res!669667) b!1000032))

(assert (= (and b!1000032 res!669670) b!1000030))

(assert (= (and b!1000030 res!669665) b!1000029))

(assert (= (and b!1000029 res!669664) b!1000031))

(assert (= (and b!1000031 res!669672) b!1000036))

(assert (= (and b!1000036 res!669673) b!1000034))

(assert (= (and b!1000034 res!669669) b!1000035))

(declare-fun m!926327 () Bool)

(assert (=> b!1000032 m!926327))

(declare-fun m!926329 () Bool)

(assert (=> b!1000035 m!926329))

(declare-fun m!926331 () Bool)

(assert (=> b!1000035 m!926331))

(assert (=> b!1000035 m!926331))

(declare-fun m!926333 () Bool)

(assert (=> b!1000035 m!926333))

(assert (=> b!1000035 m!926333))

(assert (=> b!1000035 m!926331))

(declare-fun m!926335 () Bool)

(assert (=> b!1000035 m!926335))

(declare-fun m!926337 () Bool)

(assert (=> b!1000030 m!926337))

(declare-fun m!926339 () Bool)

(assert (=> b!1000037 m!926339))

(assert (=> b!1000037 m!926339))

(declare-fun m!926341 () Bool)

(assert (=> b!1000037 m!926341))

(declare-fun m!926343 () Bool)

(assert (=> start!86442 m!926343))

(declare-fun m!926345 () Bool)

(assert (=> start!86442 m!926345))

(declare-fun m!926347 () Bool)

(assert (=> b!1000029 m!926347))

(assert (=> b!1000036 m!926339))

(assert (=> b!1000036 m!926339))

(declare-fun m!926349 () Bool)

(assert (=> b!1000036 m!926349))

(assert (=> b!1000036 m!926349))

(assert (=> b!1000036 m!926339))

(declare-fun m!926351 () Bool)

(assert (=> b!1000036 m!926351))

(declare-fun m!926353 () Bool)

(assert (=> b!1000038 m!926353))

(declare-fun m!926355 () Bool)

(assert (=> b!1000033 m!926355))

(assert (=> b!1000034 m!926339))

(assert (=> b!1000034 m!926339))

(declare-fun m!926357 () Bool)

(assert (=> b!1000034 m!926357))

(check-sat (not b!1000030) (not b!1000034) (not b!1000033) (not b!1000038) (not b!1000029) (not b!1000037) (not start!86442) (not b!1000035) (not b!1000036) (not b!1000032))

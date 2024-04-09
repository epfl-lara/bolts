; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86502 () Bool)

(assert start!86502)

(declare-fun b!1001119 () Bool)

(declare-fun res!670761 () Bool)

(declare-fun e!564180 () Bool)

(assert (=> b!1001119 (=> (not res!670761) (not e!564180))))

(declare-datatypes ((array!63255 0))(
  ( (array!63256 (arr!30449 (Array (_ BitVec 32) (_ BitVec 64))) (size!30952 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63255)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1001119 (= res!670761 (and (= (size!30952 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30952 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30952 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!670760 () Bool)

(assert (=> start!86502 (=> (not res!670760) (not e!564180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86502 (= res!670760 (validMask!0 mask!3464))))

(assert (=> start!86502 e!564180))

(declare-fun array_inv!23439 (array!63255) Bool)

(assert (=> start!86502 (array_inv!23439 a!3219)))

(assert (=> start!86502 true))

(declare-fun b!1001120 () Bool)

(declare-fun res!670762 () Bool)

(assert (=> b!1001120 (=> (not res!670762) (not e!564180))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63255 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001120 (= res!670762 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1001121 () Bool)

(declare-fun res!670756 () Bool)

(assert (=> b!1001121 (=> (not res!670756) (not e!564180))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001121 (= res!670756 (validKeyInArray!0 k0!2224))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun b!1001122 () Bool)

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun e!564179 () Bool)

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1001122 (= e!564179 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194)) (bvsge mask!3464 #b00000000000000000000000000000000) (bvslt index!1507 (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsgt x!1245 #b01111111111111111111111111111110)))))

(declare-fun b!1001123 () Bool)

(declare-fun e!564177 () Bool)

(declare-fun e!564178 () Bool)

(assert (=> b!1001123 (= e!564177 e!564178)))

(declare-fun res!670765 () Bool)

(assert (=> b!1001123 (=> (not res!670765) (not e!564178))))

(declare-datatypes ((SeekEntryResult!9381 0))(
  ( (MissingZero!9381 (index!39894 (_ BitVec 32))) (Found!9381 (index!39895 (_ BitVec 32))) (Intermediate!9381 (undefined!10193 Bool) (index!39896 (_ BitVec 32)) (x!87346 (_ BitVec 32))) (Undefined!9381) (MissingVacant!9381 (index!39897 (_ BitVec 32))) )
))
(declare-fun lt!442533 () SeekEntryResult!9381)

(declare-fun lt!442528 () SeekEntryResult!9381)

(assert (=> b!1001123 (= res!670765 (= lt!442533 lt!442528))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63255 (_ BitVec 32)) SeekEntryResult!9381)

(assert (=> b!1001123 (= lt!442533 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30449 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001124 () Bool)

(declare-fun res!670763 () Bool)

(assert (=> b!1001124 (=> (not res!670763) (not e!564180))))

(assert (=> b!1001124 (= res!670763 (validKeyInArray!0 (select (arr!30449 a!3219) j!170)))))

(declare-fun b!1001125 () Bool)

(assert (=> b!1001125 (= e!564178 e!564179)))

(declare-fun res!670759 () Bool)

(assert (=> b!1001125 (=> (not res!670759) (not e!564179))))

(declare-fun lt!442532 () SeekEntryResult!9381)

(declare-fun lt!442531 () (_ BitVec 64))

(declare-fun lt!442530 () array!63255)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001125 (= res!670759 (not (= lt!442532 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442531 mask!3464) lt!442531 lt!442530 mask!3464))))))

(assert (=> b!1001125 (= lt!442531 (select (store (arr!30449 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1001125 (= lt!442530 (array!63256 (store (arr!30449 a!3219) i!1194 k0!2224) (size!30952 a!3219)))))

(declare-fun b!1001126 () Bool)

(declare-fun e!564181 () Bool)

(assert (=> b!1001126 (= e!564180 e!564181)))

(declare-fun res!670758 () Bool)

(assert (=> b!1001126 (=> (not res!670758) (not e!564181))))

(declare-fun lt!442529 () SeekEntryResult!9381)

(assert (=> b!1001126 (= res!670758 (or (= lt!442529 (MissingVacant!9381 i!1194)) (= lt!442529 (MissingZero!9381 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63255 (_ BitVec 32)) SeekEntryResult!9381)

(assert (=> b!1001126 (= lt!442529 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1001127 () Bool)

(declare-fun res!670754 () Bool)

(assert (=> b!1001127 (=> (not res!670754) (not e!564181))))

(declare-datatypes ((List!21251 0))(
  ( (Nil!21248) (Cons!21247 (h!22424 (_ BitVec 64)) (t!30260 List!21251)) )
))
(declare-fun arrayNoDuplicates!0 (array!63255 (_ BitVec 32) List!21251) Bool)

(assert (=> b!1001127 (= res!670754 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21248))))

(declare-fun b!1001128 () Bool)

(declare-fun res!670764 () Bool)

(assert (=> b!1001128 (=> (not res!670764) (not e!564179))))

(assert (=> b!1001128 (= res!670764 (not (= lt!442533 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442531 lt!442530 mask!3464))))))

(declare-fun b!1001129 () Bool)

(declare-fun res!670757 () Bool)

(assert (=> b!1001129 (=> (not res!670757) (not e!564181))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1001129 (= res!670757 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30952 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30952 a!3219))))))

(declare-fun b!1001130 () Bool)

(declare-fun res!670755 () Bool)

(assert (=> b!1001130 (=> (not res!670755) (not e!564181))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63255 (_ BitVec 32)) Bool)

(assert (=> b!1001130 (= res!670755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1001131 () Bool)

(assert (=> b!1001131 (= e!564181 e!564177)))

(declare-fun res!670753 () Bool)

(assert (=> b!1001131 (=> (not res!670753) (not e!564177))))

(assert (=> b!1001131 (= res!670753 (= lt!442532 lt!442528))))

(assert (=> b!1001131 (= lt!442528 (Intermediate!9381 false resIndex!38 resX!38))))

(assert (=> b!1001131 (= lt!442532 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30449 a!3219) j!170) mask!3464) (select (arr!30449 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and start!86502 res!670760) b!1001119))

(assert (= (and b!1001119 res!670761) b!1001124))

(assert (= (and b!1001124 res!670763) b!1001121))

(assert (= (and b!1001121 res!670756) b!1001120))

(assert (= (and b!1001120 res!670762) b!1001126))

(assert (= (and b!1001126 res!670758) b!1001130))

(assert (= (and b!1001130 res!670755) b!1001127))

(assert (= (and b!1001127 res!670754) b!1001129))

(assert (= (and b!1001129 res!670757) b!1001131))

(assert (= (and b!1001131 res!670753) b!1001123))

(assert (= (and b!1001123 res!670765) b!1001125))

(assert (= (and b!1001125 res!670759) b!1001128))

(assert (= (and b!1001128 res!670764) b!1001122))

(declare-fun m!927313 () Bool)

(assert (=> b!1001131 m!927313))

(assert (=> b!1001131 m!927313))

(declare-fun m!927315 () Bool)

(assert (=> b!1001131 m!927315))

(assert (=> b!1001131 m!927315))

(assert (=> b!1001131 m!927313))

(declare-fun m!927317 () Bool)

(assert (=> b!1001131 m!927317))

(declare-fun m!927319 () Bool)

(assert (=> b!1001120 m!927319))

(declare-fun m!927321 () Bool)

(assert (=> b!1001127 m!927321))

(declare-fun m!927323 () Bool)

(assert (=> b!1001126 m!927323))

(declare-fun m!927325 () Bool)

(assert (=> b!1001125 m!927325))

(assert (=> b!1001125 m!927325))

(declare-fun m!927327 () Bool)

(assert (=> b!1001125 m!927327))

(declare-fun m!927329 () Bool)

(assert (=> b!1001125 m!927329))

(declare-fun m!927331 () Bool)

(assert (=> b!1001125 m!927331))

(declare-fun m!927333 () Bool)

(assert (=> start!86502 m!927333))

(declare-fun m!927335 () Bool)

(assert (=> start!86502 m!927335))

(assert (=> b!1001123 m!927313))

(assert (=> b!1001123 m!927313))

(declare-fun m!927337 () Bool)

(assert (=> b!1001123 m!927337))

(declare-fun m!927339 () Bool)

(assert (=> b!1001128 m!927339))

(declare-fun m!927341 () Bool)

(assert (=> b!1001130 m!927341))

(assert (=> b!1001124 m!927313))

(assert (=> b!1001124 m!927313))

(declare-fun m!927343 () Bool)

(assert (=> b!1001124 m!927343))

(declare-fun m!927345 () Bool)

(assert (=> b!1001121 m!927345))

(check-sat (not b!1001120) (not b!1001121) (not b!1001124) (not b!1001130) (not b!1001126) (not b!1001127) (not b!1001128) (not b!1001125) (not b!1001123) (not start!86502) (not b!1001131))
(check-sat)

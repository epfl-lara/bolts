; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86506 () Bool)

(assert start!86506)

(declare-fun b!1001203 () Bool)

(declare-fun res!670838 () Bool)

(declare-fun e!564215 () Bool)

(assert (=> b!1001203 (=> (not res!670838) (not e!564215))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001203 (= res!670838 (validKeyInArray!0 k!2224))))

(declare-fun b!1001204 () Bool)

(declare-fun res!670843 () Bool)

(assert (=> b!1001204 (=> (not res!670843) (not e!564215))))

(declare-datatypes ((array!63259 0))(
  ( (array!63260 (arr!30451 (Array (_ BitVec 32) (_ BitVec 64))) (size!30954 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63259)

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1001204 (= res!670843 (validKeyInArray!0 (select (arr!30451 a!3219) j!170)))))

(declare-fun b!1001205 () Bool)

(declare-fun res!670851 () Bool)

(declare-fun e!564220 () Bool)

(assert (=> b!1001205 (=> (not res!670851) (not e!564220))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!442573 () (_ BitVec 64))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9383 0))(
  ( (MissingZero!9383 (index!39902 (_ BitVec 32))) (Found!9383 (index!39903 (_ BitVec 32))) (Intermediate!9383 (undefined!10195 Bool) (index!39904 (_ BitVec 32)) (x!87356 (_ BitVec 32))) (Undefined!9383) (MissingVacant!9383 (index!39905 (_ BitVec 32))) )
))
(declare-fun lt!442571 () SeekEntryResult!9383)

(declare-fun lt!442569 () array!63259)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63259 (_ BitVec 32)) SeekEntryResult!9383)

(assert (=> b!1001205 (= res!670851 (not (= lt!442571 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442573 lt!442569 mask!3464))))))

(declare-fun b!1001206 () Bool)

(declare-fun e!564221 () Bool)

(declare-fun e!564218 () Bool)

(assert (=> b!1001206 (= e!564221 e!564218)))

(declare-fun res!670842 () Bool)

(assert (=> b!1001206 (=> (not res!670842) (not e!564218))))

(declare-fun lt!442574 () SeekEntryResult!9383)

(declare-fun lt!442572 () SeekEntryResult!9383)

(assert (=> b!1001206 (= res!670842 (= lt!442574 lt!442572))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1001206 (= lt!442572 (Intermediate!9383 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001206 (= lt!442574 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30451 a!3219) j!170) mask!3464) (select (arr!30451 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001207 () Bool)

(declare-fun e!564216 () Bool)

(assert (=> b!1001207 (= e!564216 e!564220)))

(declare-fun res!670847 () Bool)

(assert (=> b!1001207 (=> (not res!670847) (not e!564220))))

(assert (=> b!1001207 (= res!670847 (not (= lt!442574 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442573 mask!3464) lt!442573 lt!442569 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1001207 (= lt!442573 (select (store (arr!30451 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1001207 (= lt!442569 (array!63260 (store (arr!30451 a!3219) i!1194 k!2224) (size!30954 a!3219)))))

(declare-fun b!1001208 () Bool)

(assert (=> b!1001208 (= e!564215 e!564221)))

(declare-fun res!670841 () Bool)

(assert (=> b!1001208 (=> (not res!670841) (not e!564221))))

(declare-fun lt!442575 () SeekEntryResult!9383)

(assert (=> b!1001208 (= res!670841 (or (= lt!442575 (MissingVacant!9383 i!1194)) (= lt!442575 (MissingZero!9383 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63259 (_ BitVec 32)) SeekEntryResult!9383)

(assert (=> b!1001208 (= lt!442575 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1001209 () Bool)

(declare-fun res!670844 () Bool)

(declare-fun e!564217 () Bool)

(assert (=> b!1001209 (=> (not res!670844) (not e!564217))))

(declare-fun lt!442570 () (_ BitVec 32))

(assert (=> b!1001209 (= res!670844 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442570 (select (arr!30451 a!3219) j!170) a!3219 mask!3464) lt!442572))))

(declare-fun res!670846 () Bool)

(assert (=> start!86506 (=> (not res!670846) (not e!564215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86506 (= res!670846 (validMask!0 mask!3464))))

(assert (=> start!86506 e!564215))

(declare-fun array_inv!23441 (array!63259) Bool)

(assert (=> start!86506 (array_inv!23441 a!3219)))

(assert (=> start!86506 true))

(declare-fun b!1001210 () Bool)

(declare-fun res!670848 () Bool)

(assert (=> b!1001210 (=> (not res!670848) (not e!564221))))

(declare-datatypes ((List!21253 0))(
  ( (Nil!21250) (Cons!21249 (h!22426 (_ BitVec 64)) (t!30262 List!21253)) )
))
(declare-fun arrayNoDuplicates!0 (array!63259 (_ BitVec 32) List!21253) Bool)

(assert (=> b!1001210 (= res!670848 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21250))))

(declare-fun b!1001211 () Bool)

(declare-fun res!670845 () Bool)

(assert (=> b!1001211 (=> (not res!670845) (not e!564221))))

(assert (=> b!1001211 (= res!670845 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30954 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30954 a!3219))))))

(declare-fun b!1001212 () Bool)

(declare-fun res!670839 () Bool)

(assert (=> b!1001212 (=> (not res!670839) (not e!564215))))

(assert (=> b!1001212 (= res!670839 (and (= (size!30954 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30954 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30954 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1001213 () Bool)

(declare-fun res!670837 () Bool)

(assert (=> b!1001213 (=> (not res!670837) (not e!564220))))

(assert (=> b!1001213 (= res!670837 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1001214 () Bool)

(declare-fun res!670850 () Bool)

(assert (=> b!1001214 (=> (not res!670850) (not e!564215))))

(declare-fun arrayContainsKey!0 (array!63259 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001214 (= res!670850 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1001215 () Bool)

(assert (=> b!1001215 (= e!564218 e!564216)))

(declare-fun res!670840 () Bool)

(assert (=> b!1001215 (=> (not res!670840) (not e!564216))))

(assert (=> b!1001215 (= res!670840 (= lt!442571 lt!442572))))

(assert (=> b!1001215 (= lt!442571 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30451 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001216 () Bool)

(assert (=> b!1001216 (= e!564217 false)))

(declare-fun lt!442568 () SeekEntryResult!9383)

(assert (=> b!1001216 (= lt!442568 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442570 lt!442573 lt!442569 mask!3464))))

(declare-fun b!1001217 () Bool)

(assert (=> b!1001217 (= e!564220 e!564217)))

(declare-fun res!670852 () Bool)

(assert (=> b!1001217 (=> (not res!670852) (not e!564217))))

(assert (=> b!1001217 (= res!670852 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!442570 #b00000000000000000000000000000000) (bvslt lt!442570 (size!30954 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001217 (= lt!442570 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1001218 () Bool)

(declare-fun res!670849 () Bool)

(assert (=> b!1001218 (=> (not res!670849) (not e!564221))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63259 (_ BitVec 32)) Bool)

(assert (=> b!1001218 (= res!670849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(assert (= (and start!86506 res!670846) b!1001212))

(assert (= (and b!1001212 res!670839) b!1001204))

(assert (= (and b!1001204 res!670843) b!1001203))

(assert (= (and b!1001203 res!670838) b!1001214))

(assert (= (and b!1001214 res!670850) b!1001208))

(assert (= (and b!1001208 res!670841) b!1001218))

(assert (= (and b!1001218 res!670849) b!1001210))

(assert (= (and b!1001210 res!670848) b!1001211))

(assert (= (and b!1001211 res!670845) b!1001206))

(assert (= (and b!1001206 res!670842) b!1001215))

(assert (= (and b!1001215 res!670840) b!1001207))

(assert (= (and b!1001207 res!670847) b!1001205))

(assert (= (and b!1001205 res!670851) b!1001213))

(assert (= (and b!1001213 res!670837) b!1001217))

(assert (= (and b!1001217 res!670852) b!1001209))

(assert (= (and b!1001209 res!670844) b!1001216))

(declare-fun m!927381 () Bool)

(assert (=> b!1001206 m!927381))

(assert (=> b!1001206 m!927381))

(declare-fun m!927383 () Bool)

(assert (=> b!1001206 m!927383))

(assert (=> b!1001206 m!927383))

(assert (=> b!1001206 m!927381))

(declare-fun m!927385 () Bool)

(assert (=> b!1001206 m!927385))

(declare-fun m!927387 () Bool)

(assert (=> b!1001208 m!927387))

(declare-fun m!927389 () Bool)

(assert (=> b!1001205 m!927389))

(declare-fun m!927391 () Bool)

(assert (=> b!1001218 m!927391))

(declare-fun m!927393 () Bool)

(assert (=> b!1001203 m!927393))

(declare-fun m!927395 () Bool)

(assert (=> b!1001216 m!927395))

(declare-fun m!927397 () Bool)

(assert (=> start!86506 m!927397))

(declare-fun m!927399 () Bool)

(assert (=> start!86506 m!927399))

(declare-fun m!927401 () Bool)

(assert (=> b!1001207 m!927401))

(assert (=> b!1001207 m!927401))

(declare-fun m!927403 () Bool)

(assert (=> b!1001207 m!927403))

(declare-fun m!927405 () Bool)

(assert (=> b!1001207 m!927405))

(declare-fun m!927407 () Bool)

(assert (=> b!1001207 m!927407))

(assert (=> b!1001204 m!927381))

(assert (=> b!1001204 m!927381))

(declare-fun m!927409 () Bool)

(assert (=> b!1001204 m!927409))

(declare-fun m!927411 () Bool)

(assert (=> b!1001217 m!927411))

(declare-fun m!927413 () Bool)

(assert (=> b!1001210 m!927413))

(assert (=> b!1001215 m!927381))

(assert (=> b!1001215 m!927381))

(declare-fun m!927415 () Bool)

(assert (=> b!1001215 m!927415))

(declare-fun m!927417 () Bool)

(assert (=> b!1001214 m!927417))

(assert (=> b!1001209 m!927381))

(assert (=> b!1001209 m!927381))

(declare-fun m!927419 () Bool)

(assert (=> b!1001209 m!927419))

(push 1)


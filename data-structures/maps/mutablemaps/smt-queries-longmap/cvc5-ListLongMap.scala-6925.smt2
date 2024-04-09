; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87082 () Bool)

(assert start!87082)

(declare-fun b!1009518 () Bool)

(declare-fun res!678211 () Bool)

(declare-fun e!568016 () Bool)

(assert (=> b!1009518 (=> (not res!678211) (not e!568016))))

(declare-datatypes ((array!63601 0))(
  ( (array!63602 (arr!30616 (Array (_ BitVec 32) (_ BitVec 64))) (size!31119 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63601)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1009518 (= res!678211 (and (= (size!31119 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31119 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31119 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1009519 () Bool)

(declare-fun res!678218 () Bool)

(declare-fun e!568014 () Bool)

(assert (=> b!1009519 (=> (not res!678218) (not e!568014))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1009519 (= res!678218 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1009520 () Bool)

(declare-fun res!678210 () Bool)

(assert (=> b!1009520 (=> (not res!678210) (not e!568016))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63601 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1009520 (= res!678210 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1009521 () Bool)

(assert (=> b!1009521 (= e!568014 false)))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!446178 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1009521 (= lt!446178 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1009522 () Bool)

(declare-fun res!678216 () Bool)

(declare-fun e!568011 () Bool)

(assert (=> b!1009522 (=> (not res!678216) (not e!568011))))

(declare-datatypes ((List!21418 0))(
  ( (Nil!21415) (Cons!21414 (h!22603 (_ BitVec 64)) (t!30427 List!21418)) )
))
(declare-fun arrayNoDuplicates!0 (array!63601 (_ BitVec 32) List!21418) Bool)

(assert (=> b!1009522 (= res!678216 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21415))))

(declare-fun b!1009523 () Bool)

(declare-fun e!568012 () Bool)

(assert (=> b!1009523 (= e!568012 e!568014)))

(declare-fun res!678220 () Bool)

(assert (=> b!1009523 (=> (not res!678220) (not e!568014))))

(declare-fun lt!446184 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9548 0))(
  ( (MissingZero!9548 (index!40562 (_ BitVec 32))) (Found!9548 (index!40563 (_ BitVec 32))) (Intermediate!9548 (undefined!10360 Bool) (index!40564 (_ BitVec 32)) (x!87994 (_ BitVec 32))) (Undefined!9548) (MissingVacant!9548 (index!40565 (_ BitVec 32))) )
))
(declare-fun lt!446180 () SeekEntryResult!9548)

(declare-fun lt!446182 () array!63601)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63601 (_ BitVec 32)) SeekEntryResult!9548)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1009523 (= res!678220 (not (= lt!446180 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446184 mask!3464) lt!446184 lt!446182 mask!3464))))))

(assert (=> b!1009523 (= lt!446184 (select (store (arr!30616 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1009523 (= lt!446182 (array!63602 (store (arr!30616 a!3219) i!1194 k!2224) (size!31119 a!3219)))))

(declare-fun b!1009525 () Bool)

(declare-fun res!678219 () Bool)

(assert (=> b!1009525 (=> (not res!678219) (not e!568011))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1009525 (= res!678219 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31119 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31119 a!3219))))))

(declare-fun b!1009526 () Bool)

(declare-fun res!678208 () Bool)

(assert (=> b!1009526 (=> (not res!678208) (not e!568011))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63601 (_ BitVec 32)) Bool)

(assert (=> b!1009526 (= res!678208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1009527 () Bool)

(declare-fun e!568015 () Bool)

(assert (=> b!1009527 (= e!568011 e!568015)))

(declare-fun res!678207 () Bool)

(assert (=> b!1009527 (=> (not res!678207) (not e!568015))))

(declare-fun lt!446183 () SeekEntryResult!9548)

(assert (=> b!1009527 (= res!678207 (= lt!446180 lt!446183))))

(assert (=> b!1009527 (= lt!446183 (Intermediate!9548 false resIndex!38 resX!38))))

(assert (=> b!1009527 (= lt!446180 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30616 a!3219) j!170) mask!3464) (select (arr!30616 a!3219) j!170) a!3219 mask!3464))))

(declare-fun res!678213 () Bool)

(assert (=> start!87082 (=> (not res!678213) (not e!568016))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87082 (= res!678213 (validMask!0 mask!3464))))

(assert (=> start!87082 e!568016))

(declare-fun array_inv!23606 (array!63601) Bool)

(assert (=> start!87082 (array_inv!23606 a!3219)))

(assert (=> start!87082 true))

(declare-fun b!1009524 () Bool)

(declare-fun res!678209 () Bool)

(assert (=> b!1009524 (=> (not res!678209) (not e!568016))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1009524 (= res!678209 (validKeyInArray!0 (select (arr!30616 a!3219) j!170)))))

(declare-fun b!1009528 () Bool)

(declare-fun res!678214 () Bool)

(assert (=> b!1009528 (=> (not res!678214) (not e!568016))))

(assert (=> b!1009528 (= res!678214 (validKeyInArray!0 k!2224))))

(declare-fun b!1009529 () Bool)

(assert (=> b!1009529 (= e!568015 e!568012)))

(declare-fun res!678212 () Bool)

(assert (=> b!1009529 (=> (not res!678212) (not e!568012))))

(declare-fun lt!446179 () SeekEntryResult!9548)

(assert (=> b!1009529 (= res!678212 (= lt!446179 lt!446183))))

(assert (=> b!1009529 (= lt!446179 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30616 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009530 () Bool)

(declare-fun res!678215 () Bool)

(assert (=> b!1009530 (=> (not res!678215) (not e!568014))))

(assert (=> b!1009530 (= res!678215 (not (= lt!446179 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446184 lt!446182 mask!3464))))))

(declare-fun b!1009531 () Bool)

(assert (=> b!1009531 (= e!568016 e!568011)))

(declare-fun res!678217 () Bool)

(assert (=> b!1009531 (=> (not res!678217) (not e!568011))))

(declare-fun lt!446181 () SeekEntryResult!9548)

(assert (=> b!1009531 (= res!678217 (or (= lt!446181 (MissingVacant!9548 i!1194)) (= lt!446181 (MissingZero!9548 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63601 (_ BitVec 32)) SeekEntryResult!9548)

(assert (=> b!1009531 (= lt!446181 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(assert (= (and start!87082 res!678213) b!1009518))

(assert (= (and b!1009518 res!678211) b!1009524))

(assert (= (and b!1009524 res!678209) b!1009528))

(assert (= (and b!1009528 res!678214) b!1009520))

(assert (= (and b!1009520 res!678210) b!1009531))

(assert (= (and b!1009531 res!678217) b!1009526))

(assert (= (and b!1009526 res!678208) b!1009522))

(assert (= (and b!1009522 res!678216) b!1009525))

(assert (= (and b!1009525 res!678219) b!1009527))

(assert (= (and b!1009527 res!678207) b!1009529))

(assert (= (and b!1009529 res!678212) b!1009523))

(assert (= (and b!1009523 res!678220) b!1009530))

(assert (= (and b!1009530 res!678215) b!1009519))

(assert (= (and b!1009519 res!678218) b!1009521))

(declare-fun m!934173 () Bool)

(assert (=> b!1009522 m!934173))

(declare-fun m!934175 () Bool)

(assert (=> b!1009523 m!934175))

(assert (=> b!1009523 m!934175))

(declare-fun m!934177 () Bool)

(assert (=> b!1009523 m!934177))

(declare-fun m!934179 () Bool)

(assert (=> b!1009523 m!934179))

(declare-fun m!934181 () Bool)

(assert (=> b!1009523 m!934181))

(declare-fun m!934183 () Bool)

(assert (=> b!1009531 m!934183))

(declare-fun m!934185 () Bool)

(assert (=> b!1009530 m!934185))

(declare-fun m!934187 () Bool)

(assert (=> b!1009524 m!934187))

(assert (=> b!1009524 m!934187))

(declare-fun m!934189 () Bool)

(assert (=> b!1009524 m!934189))

(declare-fun m!934191 () Bool)

(assert (=> b!1009528 m!934191))

(declare-fun m!934193 () Bool)

(assert (=> b!1009521 m!934193))

(assert (=> b!1009529 m!934187))

(assert (=> b!1009529 m!934187))

(declare-fun m!934195 () Bool)

(assert (=> b!1009529 m!934195))

(declare-fun m!934197 () Bool)

(assert (=> b!1009520 m!934197))

(assert (=> b!1009527 m!934187))

(assert (=> b!1009527 m!934187))

(declare-fun m!934199 () Bool)

(assert (=> b!1009527 m!934199))

(assert (=> b!1009527 m!934199))

(assert (=> b!1009527 m!934187))

(declare-fun m!934201 () Bool)

(assert (=> b!1009527 m!934201))

(declare-fun m!934203 () Bool)

(assert (=> start!87082 m!934203))

(declare-fun m!934205 () Bool)

(assert (=> start!87082 m!934205))

(declare-fun m!934207 () Bool)

(assert (=> b!1009526 m!934207))

(push 1)


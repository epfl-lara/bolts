; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87084 () Bool)

(assert start!87084)

(declare-fun b!1009560 () Bool)

(declare-fun res!678253 () Bool)

(declare-fun e!568033 () Bool)

(assert (=> b!1009560 (=> (not res!678253) (not e!568033))))

(declare-datatypes ((array!63603 0))(
  ( (array!63604 (arr!30617 (Array (_ BitVec 32) (_ BitVec 64))) (size!31120 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63603)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1009560 (= res!678253 (validKeyInArray!0 (select (arr!30617 a!3219) j!170)))))

(declare-fun b!1009561 () Bool)

(declare-fun res!678249 () Bool)

(declare-fun e!568030 () Bool)

(assert (=> b!1009561 (=> (not res!678249) (not e!568030))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1009561 (= res!678249 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1009562 () Bool)

(declare-fun e!568032 () Bool)

(assert (=> b!1009562 (= e!568033 e!568032)))

(declare-fun res!678252 () Bool)

(assert (=> b!1009562 (=> (not res!678252) (not e!568032))))

(declare-datatypes ((SeekEntryResult!9549 0))(
  ( (MissingZero!9549 (index!40566 (_ BitVec 32))) (Found!9549 (index!40567 (_ BitVec 32))) (Intermediate!9549 (undefined!10361 Bool) (index!40568 (_ BitVec 32)) (x!87995 (_ BitVec 32))) (Undefined!9549) (MissingVacant!9549 (index!40569 (_ BitVec 32))) )
))
(declare-fun lt!446200 () SeekEntryResult!9549)

(assert (=> b!1009562 (= res!678252 (or (= lt!446200 (MissingVacant!9549 i!1194)) (= lt!446200 (MissingZero!9549 i!1194))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63603 (_ BitVec 32)) SeekEntryResult!9549)

(assert (=> b!1009562 (= lt!446200 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1009563 () Bool)

(declare-fun e!568029 () Bool)

(declare-fun e!568034 () Bool)

(assert (=> b!1009563 (= e!568029 e!568034)))

(declare-fun res!678251 () Bool)

(assert (=> b!1009563 (=> (not res!678251) (not e!568034))))

(declare-fun lt!446199 () SeekEntryResult!9549)

(declare-fun lt!446203 () SeekEntryResult!9549)

(assert (=> b!1009563 (= res!678251 (= lt!446199 lt!446203))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63603 (_ BitVec 32)) SeekEntryResult!9549)

(assert (=> b!1009563 (= lt!446199 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30617 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009564 () Bool)

(declare-fun res!678255 () Bool)

(assert (=> b!1009564 (=> (not res!678255) (not e!568032))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1009564 (= res!678255 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31120 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31120 a!3219))))))

(declare-fun b!1009565 () Bool)

(assert (=> b!1009565 (= e!568030 false)))

(declare-fun lt!446204 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1009565 (= lt!446204 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1009566 () Bool)

(declare-fun res!678256 () Bool)

(assert (=> b!1009566 (=> (not res!678256) (not e!568033))))

(assert (=> b!1009566 (= res!678256 (and (= (size!31120 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31120 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31120 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1009567 () Bool)

(declare-fun res!678257 () Bool)

(assert (=> b!1009567 (=> (not res!678257) (not e!568030))))

(declare-fun lt!446201 () (_ BitVec 64))

(declare-fun lt!446202 () array!63603)

(assert (=> b!1009567 (= res!678257 (not (= lt!446199 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446201 lt!446202 mask!3464))))))

(declare-fun b!1009568 () Bool)

(assert (=> b!1009568 (= e!568032 e!568029)))

(declare-fun res!678250 () Bool)

(assert (=> b!1009568 (=> (not res!678250) (not e!568029))))

(declare-fun lt!446205 () SeekEntryResult!9549)

(assert (=> b!1009568 (= res!678250 (= lt!446205 lt!446203))))

(assert (=> b!1009568 (= lt!446203 (Intermediate!9549 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1009568 (= lt!446205 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30617 a!3219) j!170) mask!3464) (select (arr!30617 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009569 () Bool)

(declare-fun res!678261 () Bool)

(assert (=> b!1009569 (=> (not res!678261) (not e!568032))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63603 (_ BitVec 32)) Bool)

(assert (=> b!1009569 (= res!678261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!678262 () Bool)

(assert (=> start!87084 (=> (not res!678262) (not e!568033))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87084 (= res!678262 (validMask!0 mask!3464))))

(assert (=> start!87084 e!568033))

(declare-fun array_inv!23607 (array!63603) Bool)

(assert (=> start!87084 (array_inv!23607 a!3219)))

(assert (=> start!87084 true))

(declare-fun b!1009570 () Bool)

(assert (=> b!1009570 (= e!568034 e!568030)))

(declare-fun res!678258 () Bool)

(assert (=> b!1009570 (=> (not res!678258) (not e!568030))))

(assert (=> b!1009570 (= res!678258 (not (= lt!446205 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446201 mask!3464) lt!446201 lt!446202 mask!3464))))))

(assert (=> b!1009570 (= lt!446201 (select (store (arr!30617 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1009570 (= lt!446202 (array!63604 (store (arr!30617 a!3219) i!1194 k0!2224) (size!31120 a!3219)))))

(declare-fun b!1009571 () Bool)

(declare-fun res!678260 () Bool)

(assert (=> b!1009571 (=> (not res!678260) (not e!568033))))

(assert (=> b!1009571 (= res!678260 (validKeyInArray!0 k0!2224))))

(declare-fun b!1009572 () Bool)

(declare-fun res!678259 () Bool)

(assert (=> b!1009572 (=> (not res!678259) (not e!568032))))

(declare-datatypes ((List!21419 0))(
  ( (Nil!21416) (Cons!21415 (h!22604 (_ BitVec 64)) (t!30428 List!21419)) )
))
(declare-fun arrayNoDuplicates!0 (array!63603 (_ BitVec 32) List!21419) Bool)

(assert (=> b!1009572 (= res!678259 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21416))))

(declare-fun b!1009573 () Bool)

(declare-fun res!678254 () Bool)

(assert (=> b!1009573 (=> (not res!678254) (not e!568033))))

(declare-fun arrayContainsKey!0 (array!63603 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1009573 (= res!678254 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!87084 res!678262) b!1009566))

(assert (= (and b!1009566 res!678256) b!1009560))

(assert (= (and b!1009560 res!678253) b!1009571))

(assert (= (and b!1009571 res!678260) b!1009573))

(assert (= (and b!1009573 res!678254) b!1009562))

(assert (= (and b!1009562 res!678252) b!1009569))

(assert (= (and b!1009569 res!678261) b!1009572))

(assert (= (and b!1009572 res!678259) b!1009564))

(assert (= (and b!1009564 res!678255) b!1009568))

(assert (= (and b!1009568 res!678250) b!1009563))

(assert (= (and b!1009563 res!678251) b!1009570))

(assert (= (and b!1009570 res!678258) b!1009567))

(assert (= (and b!1009567 res!678257) b!1009561))

(assert (= (and b!1009561 res!678249) b!1009565))

(declare-fun m!934209 () Bool)

(assert (=> b!1009565 m!934209))

(declare-fun m!934211 () Bool)

(assert (=> start!87084 m!934211))

(declare-fun m!934213 () Bool)

(assert (=> start!87084 m!934213))

(declare-fun m!934215 () Bool)

(assert (=> b!1009562 m!934215))

(declare-fun m!934217 () Bool)

(assert (=> b!1009563 m!934217))

(assert (=> b!1009563 m!934217))

(declare-fun m!934219 () Bool)

(assert (=> b!1009563 m!934219))

(assert (=> b!1009560 m!934217))

(assert (=> b!1009560 m!934217))

(declare-fun m!934221 () Bool)

(assert (=> b!1009560 m!934221))

(declare-fun m!934223 () Bool)

(assert (=> b!1009571 m!934223))

(declare-fun m!934225 () Bool)

(assert (=> b!1009569 m!934225))

(declare-fun m!934227 () Bool)

(assert (=> b!1009573 m!934227))

(declare-fun m!934229 () Bool)

(assert (=> b!1009572 m!934229))

(declare-fun m!934231 () Bool)

(assert (=> b!1009570 m!934231))

(assert (=> b!1009570 m!934231))

(declare-fun m!934233 () Bool)

(assert (=> b!1009570 m!934233))

(declare-fun m!934235 () Bool)

(assert (=> b!1009570 m!934235))

(declare-fun m!934237 () Bool)

(assert (=> b!1009570 m!934237))

(assert (=> b!1009568 m!934217))

(assert (=> b!1009568 m!934217))

(declare-fun m!934239 () Bool)

(assert (=> b!1009568 m!934239))

(assert (=> b!1009568 m!934239))

(assert (=> b!1009568 m!934217))

(declare-fun m!934241 () Bool)

(assert (=> b!1009568 m!934241))

(declare-fun m!934243 () Bool)

(assert (=> b!1009567 m!934243))

(check-sat (not b!1009565) (not b!1009562) (not b!1009572) (not b!1009567) (not b!1009573) (not b!1009569) (not b!1009571) (not b!1009560) (not start!87084) (not b!1009570) (not b!1009568) (not b!1009563))
(check-sat)

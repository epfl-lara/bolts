; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87078 () Bool)

(assert start!87078)

(declare-fun res!678123 () Bool)

(declare-fun e!567979 () Bool)

(assert (=> start!87078 (=> (not res!678123) (not e!567979))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87078 (= res!678123 (validMask!0 mask!3464))))

(assert (=> start!87078 e!567979))

(declare-datatypes ((array!63597 0))(
  ( (array!63598 (arr!30614 (Array (_ BitVec 32) (_ BitVec 64))) (size!31117 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63597)

(declare-fun array_inv!23604 (array!63597) Bool)

(assert (=> start!87078 (array_inv!23604 a!3219)))

(assert (=> start!87078 true))

(declare-fun b!1009434 () Bool)

(declare-fun res!678126 () Bool)

(assert (=> b!1009434 (=> (not res!678126) (not e!567979))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1009434 (= res!678126 (and (= (size!31117 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31117 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31117 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1009435 () Bool)

(declare-fun res!678133 () Bool)

(declare-fun e!567978 () Bool)

(assert (=> b!1009435 (=> (not res!678133) (not e!567978))))

(declare-datatypes ((List!21416 0))(
  ( (Nil!21413) (Cons!21412 (h!22601 (_ BitVec 64)) (t!30425 List!21416)) )
))
(declare-fun arrayNoDuplicates!0 (array!63597 (_ BitVec 32) List!21416) Bool)

(assert (=> b!1009435 (= res!678133 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21413))))

(declare-fun b!1009436 () Bool)

(declare-fun res!678132 () Bool)

(assert (=> b!1009436 (=> (not res!678132) (not e!567979))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1009436 (= res!678132 (validKeyInArray!0 (select (arr!30614 a!3219) j!170)))))

(declare-fun b!1009437 () Bool)

(declare-fun e!567980 () Bool)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1009437 (= e!567980 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvslt (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000)))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!446137 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1009437 (= lt!446137 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1009438 () Bool)

(declare-fun res!678134 () Bool)

(assert (=> b!1009438 (=> (not res!678134) (not e!567979))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63597 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1009438 (= res!678134 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1009439 () Bool)

(declare-fun res!678127 () Bool)

(assert (=> b!1009439 (=> (not res!678127) (not e!567979))))

(assert (=> b!1009439 (= res!678127 (validKeyInArray!0 k0!2224))))

(declare-fun b!1009440 () Bool)

(declare-fun res!678125 () Bool)

(assert (=> b!1009440 (=> (not res!678125) (not e!567978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63597 (_ BitVec 32)) Bool)

(assert (=> b!1009440 (= res!678125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1009441 () Bool)

(assert (=> b!1009441 (= e!567979 e!567978)))

(declare-fun res!678135 () Bool)

(assert (=> b!1009441 (=> (not res!678135) (not e!567978))))

(declare-datatypes ((SeekEntryResult!9546 0))(
  ( (MissingZero!9546 (index!40554 (_ BitVec 32))) (Found!9546 (index!40555 (_ BitVec 32))) (Intermediate!9546 (undefined!10358 Bool) (index!40556 (_ BitVec 32)) (x!87984 (_ BitVec 32))) (Undefined!9546) (MissingVacant!9546 (index!40557 (_ BitVec 32))) )
))
(declare-fun lt!446136 () SeekEntryResult!9546)

(assert (=> b!1009441 (= res!678135 (or (= lt!446136 (MissingVacant!9546 i!1194)) (= lt!446136 (MissingZero!9546 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63597 (_ BitVec 32)) SeekEntryResult!9546)

(assert (=> b!1009441 (= lt!446136 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1009442 () Bool)

(declare-fun e!567976 () Bool)

(assert (=> b!1009442 (= e!567978 e!567976)))

(declare-fun res!678124 () Bool)

(assert (=> b!1009442 (=> (not res!678124) (not e!567976))))

(declare-fun lt!446140 () SeekEntryResult!9546)

(declare-fun lt!446141 () SeekEntryResult!9546)

(assert (=> b!1009442 (= res!678124 (= lt!446140 lt!446141))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1009442 (= lt!446141 (Intermediate!9546 false resIndex!38 resX!38))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63597 (_ BitVec 32)) SeekEntryResult!9546)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1009442 (= lt!446140 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30614 a!3219) j!170) mask!3464) (select (arr!30614 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009443 () Bool)

(declare-fun e!567977 () Bool)

(assert (=> b!1009443 (= e!567977 e!567980)))

(declare-fun res!678130 () Bool)

(assert (=> b!1009443 (=> (not res!678130) (not e!567980))))

(declare-fun lt!446139 () (_ BitVec 64))

(declare-fun lt!446138 () array!63597)

(assert (=> b!1009443 (= res!678130 (not (= lt!446140 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446139 mask!3464) lt!446139 lt!446138 mask!3464))))))

(assert (=> b!1009443 (= lt!446139 (select (store (arr!30614 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1009443 (= lt!446138 (array!63598 (store (arr!30614 a!3219) i!1194 k0!2224) (size!31117 a!3219)))))

(declare-fun b!1009444 () Bool)

(declare-fun res!678128 () Bool)

(assert (=> b!1009444 (=> (not res!678128) (not e!567980))))

(assert (=> b!1009444 (= res!678128 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1009445 () Bool)

(declare-fun res!678136 () Bool)

(assert (=> b!1009445 (=> (not res!678136) (not e!567978))))

(assert (=> b!1009445 (= res!678136 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31117 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31117 a!3219))))))

(declare-fun b!1009446 () Bool)

(declare-fun res!678129 () Bool)

(assert (=> b!1009446 (=> (not res!678129) (not e!567980))))

(declare-fun lt!446142 () SeekEntryResult!9546)

(assert (=> b!1009446 (= res!678129 (not (= lt!446142 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446139 lt!446138 mask!3464))))))

(declare-fun b!1009447 () Bool)

(assert (=> b!1009447 (= e!567976 e!567977)))

(declare-fun res!678131 () Bool)

(assert (=> b!1009447 (=> (not res!678131) (not e!567977))))

(assert (=> b!1009447 (= res!678131 (= lt!446142 lt!446141))))

(assert (=> b!1009447 (= lt!446142 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30614 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and start!87078 res!678123) b!1009434))

(assert (= (and b!1009434 res!678126) b!1009436))

(assert (= (and b!1009436 res!678132) b!1009439))

(assert (= (and b!1009439 res!678127) b!1009438))

(assert (= (and b!1009438 res!678134) b!1009441))

(assert (= (and b!1009441 res!678135) b!1009440))

(assert (= (and b!1009440 res!678125) b!1009435))

(assert (= (and b!1009435 res!678133) b!1009445))

(assert (= (and b!1009445 res!678136) b!1009442))

(assert (= (and b!1009442 res!678124) b!1009447))

(assert (= (and b!1009447 res!678131) b!1009443))

(assert (= (and b!1009443 res!678130) b!1009446))

(assert (= (and b!1009446 res!678129) b!1009444))

(assert (= (and b!1009444 res!678128) b!1009437))

(declare-fun m!934101 () Bool)

(assert (=> b!1009446 m!934101))

(declare-fun m!934103 () Bool)

(assert (=> b!1009435 m!934103))

(declare-fun m!934105 () Bool)

(assert (=> b!1009437 m!934105))

(declare-fun m!934107 () Bool)

(assert (=> b!1009441 m!934107))

(declare-fun m!934109 () Bool)

(assert (=> b!1009436 m!934109))

(assert (=> b!1009436 m!934109))

(declare-fun m!934111 () Bool)

(assert (=> b!1009436 m!934111))

(declare-fun m!934113 () Bool)

(assert (=> b!1009438 m!934113))

(declare-fun m!934115 () Bool)

(assert (=> b!1009440 m!934115))

(assert (=> b!1009442 m!934109))

(assert (=> b!1009442 m!934109))

(declare-fun m!934117 () Bool)

(assert (=> b!1009442 m!934117))

(assert (=> b!1009442 m!934117))

(assert (=> b!1009442 m!934109))

(declare-fun m!934119 () Bool)

(assert (=> b!1009442 m!934119))

(declare-fun m!934121 () Bool)

(assert (=> b!1009439 m!934121))

(assert (=> b!1009447 m!934109))

(assert (=> b!1009447 m!934109))

(declare-fun m!934123 () Bool)

(assert (=> b!1009447 m!934123))

(declare-fun m!934125 () Bool)

(assert (=> b!1009443 m!934125))

(assert (=> b!1009443 m!934125))

(declare-fun m!934127 () Bool)

(assert (=> b!1009443 m!934127))

(declare-fun m!934129 () Bool)

(assert (=> b!1009443 m!934129))

(declare-fun m!934131 () Bool)

(assert (=> b!1009443 m!934131))

(declare-fun m!934133 () Bool)

(assert (=> start!87078 m!934133))

(declare-fun m!934135 () Bool)

(assert (=> start!87078 m!934135))

(check-sat (not b!1009439) (not b!1009435) (not b!1009436) (not b!1009440) (not b!1009442) (not b!1009441) (not b!1009437) (not b!1009447) (not start!87078) (not b!1009443) (not b!1009446) (not b!1009438))
(check-sat)

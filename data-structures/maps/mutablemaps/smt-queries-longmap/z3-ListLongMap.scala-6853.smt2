; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86406 () Bool)

(assert start!86406)

(declare-fun b!999404 () Bool)

(declare-fun res!669043 () Bool)

(declare-fun e!563543 () Bool)

(assert (=> b!999404 (=> (not res!669043) (not e!563543))))

(declare-datatypes ((array!63159 0))(
  ( (array!63160 (arr!30401 (Array (_ BitVec 32) (_ BitVec 64))) (size!30904 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63159)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9333 0))(
  ( (MissingZero!9333 (index!39702 (_ BitVec 32))) (Found!9333 (index!39703 (_ BitVec 32))) (Intermediate!9333 (undefined!10145 Bool) (index!39704 (_ BitVec 32)) (x!87170 (_ BitVec 32))) (Undefined!9333) (MissingVacant!9333 (index!39705 (_ BitVec 32))) )
))
(declare-fun lt!442002 () SeekEntryResult!9333)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63159 (_ BitVec 32)) SeekEntryResult!9333)

(assert (=> b!999404 (= res!669043 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30401 a!3219) j!170) a!3219 mask!3464) lt!442002))))

(declare-fun b!999405 () Bool)

(declare-fun e!563542 () Bool)

(assert (=> b!999405 (= e!563543 e!563542)))

(declare-fun res!669039 () Bool)

(assert (=> b!999405 (=> (not res!669039) (not e!563542))))

(declare-fun lt!442001 () (_ BitVec 32))

(assert (=> b!999405 (= res!669039 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvsge lt!442001 #b00000000000000000000000000000000) (bvslt lt!442001 (bvadd #b00000000000000000000000000000001 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999405 (= lt!442001 (toIndex!0 (select (store (arr!30401 a!3219) i!1194 k0!2224) j!170) mask!3464))))

(declare-fun b!999406 () Bool)

(declare-fun e!563545 () Bool)

(declare-fun e!563544 () Bool)

(assert (=> b!999406 (= e!563545 e!563544)))

(declare-fun res!669041 () Bool)

(assert (=> b!999406 (=> (not res!669041) (not e!563544))))

(declare-fun lt!442000 () SeekEntryResult!9333)

(assert (=> b!999406 (= res!669041 (or (= lt!442000 (MissingVacant!9333 i!1194)) (= lt!442000 (MissingZero!9333 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63159 (_ BitVec 32)) SeekEntryResult!9333)

(assert (=> b!999406 (= lt!442000 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!999407 () Bool)

(declare-fun res!669042 () Bool)

(assert (=> b!999407 (=> (not res!669042) (not e!563544))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!999407 (= res!669042 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30904 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30904 a!3219))))))

(declare-fun res!669040 () Bool)

(assert (=> start!86406 (=> (not res!669040) (not e!563545))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86406 (= res!669040 (validMask!0 mask!3464))))

(assert (=> start!86406 e!563545))

(declare-fun array_inv!23391 (array!63159) Bool)

(assert (=> start!86406 (array_inv!23391 a!3219)))

(assert (=> start!86406 true))

(declare-fun b!999408 () Bool)

(declare-fun res!669045 () Bool)

(assert (=> b!999408 (=> (not res!669045) (not e!563544))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63159 (_ BitVec 32)) Bool)

(assert (=> b!999408 (= res!669045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!999409 () Bool)

(declare-fun res!669038 () Bool)

(assert (=> b!999409 (=> (not res!669038) (not e!563544))))

(declare-datatypes ((List!21203 0))(
  ( (Nil!21200) (Cons!21199 (h!22376 (_ BitVec 64)) (t!30212 List!21203)) )
))
(declare-fun arrayNoDuplicates!0 (array!63159 (_ BitVec 32) List!21203) Bool)

(assert (=> b!999409 (= res!669038 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21200))))

(declare-fun b!999410 () Bool)

(assert (=> b!999410 (= e!563544 e!563543)))

(declare-fun res!669044 () Bool)

(assert (=> b!999410 (=> (not res!669044) (not e!563543))))

(assert (=> b!999410 (= res!669044 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30401 a!3219) j!170) mask!3464) (select (arr!30401 a!3219) j!170) a!3219 mask!3464) lt!442002))))

(assert (=> b!999410 (= lt!442002 (Intermediate!9333 false resIndex!38 resX!38))))

(declare-fun b!999411 () Bool)

(declare-fun res!669048 () Bool)

(assert (=> b!999411 (=> (not res!669048) (not e!563545))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999411 (= res!669048 (validKeyInArray!0 k0!2224))))

(declare-fun b!999412 () Bool)

(assert (=> b!999412 (= e!563542 (not (validKeyInArray!0 (select (store (arr!30401 a!3219) i!1194 k0!2224) j!170))))))

(declare-fun b!999413 () Bool)

(declare-fun res!669046 () Bool)

(assert (=> b!999413 (=> (not res!669046) (not e!563545))))

(declare-fun arrayContainsKey!0 (array!63159 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!999413 (= res!669046 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!999414 () Bool)

(declare-fun res!669047 () Bool)

(assert (=> b!999414 (=> (not res!669047) (not e!563545))))

(assert (=> b!999414 (= res!669047 (validKeyInArray!0 (select (arr!30401 a!3219) j!170)))))

(declare-fun b!999415 () Bool)

(declare-fun res!669049 () Bool)

(assert (=> b!999415 (=> (not res!669049) (not e!563545))))

(assert (=> b!999415 (= res!669049 (and (= (size!30904 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30904 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30904 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86406 res!669040) b!999415))

(assert (= (and b!999415 res!669049) b!999414))

(assert (= (and b!999414 res!669047) b!999411))

(assert (= (and b!999411 res!669048) b!999413))

(assert (= (and b!999413 res!669046) b!999406))

(assert (= (and b!999406 res!669041) b!999408))

(assert (= (and b!999408 res!669045) b!999409))

(assert (= (and b!999409 res!669038) b!999407))

(assert (= (and b!999407 res!669042) b!999410))

(assert (= (and b!999410 res!669044) b!999404))

(assert (= (and b!999404 res!669043) b!999405))

(assert (= (and b!999405 res!669039) b!999412))

(declare-fun m!925751 () Bool)

(assert (=> b!999412 m!925751))

(declare-fun m!925753 () Bool)

(assert (=> b!999412 m!925753))

(assert (=> b!999412 m!925753))

(declare-fun m!925755 () Bool)

(assert (=> b!999412 m!925755))

(declare-fun m!925757 () Bool)

(assert (=> b!999411 m!925757))

(declare-fun m!925759 () Bool)

(assert (=> b!999413 m!925759))

(declare-fun m!925761 () Bool)

(assert (=> b!999406 m!925761))

(declare-fun m!925763 () Bool)

(assert (=> b!999414 m!925763))

(assert (=> b!999414 m!925763))

(declare-fun m!925765 () Bool)

(assert (=> b!999414 m!925765))

(assert (=> b!999410 m!925763))

(assert (=> b!999410 m!925763))

(declare-fun m!925767 () Bool)

(assert (=> b!999410 m!925767))

(assert (=> b!999410 m!925767))

(assert (=> b!999410 m!925763))

(declare-fun m!925769 () Bool)

(assert (=> b!999410 m!925769))

(declare-fun m!925771 () Bool)

(assert (=> b!999409 m!925771))

(declare-fun m!925773 () Bool)

(assert (=> start!86406 m!925773))

(declare-fun m!925775 () Bool)

(assert (=> start!86406 m!925775))

(assert (=> b!999404 m!925763))

(assert (=> b!999404 m!925763))

(declare-fun m!925777 () Bool)

(assert (=> b!999404 m!925777))

(assert (=> b!999405 m!925751))

(assert (=> b!999405 m!925753))

(assert (=> b!999405 m!925753))

(declare-fun m!925779 () Bool)

(assert (=> b!999405 m!925779))

(declare-fun m!925781 () Bool)

(assert (=> b!999408 m!925781))

(check-sat (not b!999412) (not b!999411) (not b!999406) (not b!999414) (not b!999404) (not b!999408) (not b!999410) (not b!999405) (not start!86406) (not b!999409) (not b!999413))
(check-sat)

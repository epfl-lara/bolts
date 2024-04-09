; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86838 () Bool)

(assert start!86838)

(declare-fun b!1006428 () Bool)

(declare-fun e!566510 () Bool)

(declare-fun e!566509 () Bool)

(assert (=> b!1006428 (= e!566510 e!566509)))

(declare-fun res!675676 () Bool)

(assert (=> b!1006428 (=> (not res!675676) (not e!566509))))

(declare-datatypes ((SeekEntryResult!9495 0))(
  ( (MissingZero!9495 (index!40350 (_ BitVec 32))) (Found!9495 (index!40351 (_ BitVec 32))) (Intermediate!9495 (undefined!10307 Bool) (index!40352 (_ BitVec 32)) (x!87776 (_ BitVec 32))) (Undefined!9495) (MissingVacant!9495 (index!40353 (_ BitVec 32))) )
))
(declare-fun lt!444767 () SeekEntryResult!9495)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1006428 (= res!675676 (or (= lt!444767 (MissingVacant!9495 i!1194)) (= lt!444767 (MissingZero!9495 i!1194))))))

(declare-datatypes ((array!63489 0))(
  ( (array!63490 (arr!30563 (Array (_ BitVec 32) (_ BitVec 64))) (size!31066 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63489)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63489 (_ BitVec 32)) SeekEntryResult!9495)

(assert (=> b!1006428 (= lt!444767 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1006429 () Bool)

(declare-fun res!675680 () Bool)

(assert (=> b!1006429 (=> (not res!675680) (not e!566510))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1006429 (= res!675680 (validKeyInArray!0 (select (arr!30563 a!3219) j!170)))))

(declare-fun b!1006430 () Bool)

(declare-fun e!566507 () Bool)

(assert (=> b!1006430 (= e!566509 e!566507)))

(declare-fun res!675678 () Bool)

(assert (=> b!1006430 (=> (not res!675678) (not e!566507))))

(declare-fun lt!444768 () SeekEntryResult!9495)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63489 (_ BitVec 32)) SeekEntryResult!9495)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006430 (= res!675678 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30563 a!3219) j!170) mask!3464) (select (arr!30563 a!3219) j!170) a!3219 mask!3464) lt!444768))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1006430 (= lt!444768 (Intermediate!9495 false resIndex!38 resX!38))))

(declare-fun res!675682 () Bool)

(assert (=> start!86838 (=> (not res!675682) (not e!566510))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86838 (= res!675682 (validMask!0 mask!3464))))

(assert (=> start!86838 e!566510))

(declare-fun array_inv!23553 (array!63489) Bool)

(assert (=> start!86838 (array_inv!23553 a!3219)))

(assert (=> start!86838 true))

(declare-fun b!1006431 () Bool)

(declare-fun res!675679 () Bool)

(assert (=> b!1006431 (=> (not res!675679) (not e!566510))))

(assert (=> b!1006431 (= res!675679 (validKeyInArray!0 k0!2224))))

(declare-fun b!1006432 () Bool)

(assert (=> b!1006432 (= e!566507 false)))

(declare-fun lt!444766 () SeekEntryResult!9495)

(assert (=> b!1006432 (= lt!444766 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30563 a!3219) i!1194 k0!2224) j!170) mask!3464) (select (store (arr!30563 a!3219) i!1194 k0!2224) j!170) (array!63490 (store (arr!30563 a!3219) i!1194 k0!2224) (size!31066 a!3219)) mask!3464))))

(declare-fun b!1006433 () Bool)

(declare-fun res!675672 () Bool)

(assert (=> b!1006433 (=> (not res!675672) (not e!566509))))

(declare-datatypes ((List!21365 0))(
  ( (Nil!21362) (Cons!21361 (h!22544 (_ BitVec 64)) (t!30374 List!21365)) )
))
(declare-fun arrayNoDuplicates!0 (array!63489 (_ BitVec 32) List!21365) Bool)

(assert (=> b!1006433 (= res!675672 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21362))))

(declare-fun b!1006434 () Bool)

(declare-fun res!675674 () Bool)

(assert (=> b!1006434 (=> (not res!675674) (not e!566509))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63489 (_ BitVec 32)) Bool)

(assert (=> b!1006434 (= res!675674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1006435 () Bool)

(declare-fun res!675675 () Bool)

(assert (=> b!1006435 (=> (not res!675675) (not e!566507))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1006435 (= res!675675 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30563 a!3219) j!170) a!3219 mask!3464) lt!444768))))

(declare-fun b!1006436 () Bool)

(declare-fun res!675673 () Bool)

(assert (=> b!1006436 (=> (not res!675673) (not e!566510))))

(declare-fun arrayContainsKey!0 (array!63489 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1006436 (= res!675673 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1006437 () Bool)

(declare-fun res!675677 () Bool)

(assert (=> b!1006437 (=> (not res!675677) (not e!566509))))

(assert (=> b!1006437 (= res!675677 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31066 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31066 a!3219))))))

(declare-fun b!1006438 () Bool)

(declare-fun res!675681 () Bool)

(assert (=> b!1006438 (=> (not res!675681) (not e!566510))))

(assert (=> b!1006438 (= res!675681 (and (= (size!31066 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31066 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31066 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86838 res!675682) b!1006438))

(assert (= (and b!1006438 res!675681) b!1006429))

(assert (= (and b!1006429 res!675680) b!1006431))

(assert (= (and b!1006431 res!675679) b!1006436))

(assert (= (and b!1006436 res!675673) b!1006428))

(assert (= (and b!1006428 res!675676) b!1006434))

(assert (= (and b!1006434 res!675674) b!1006433))

(assert (= (and b!1006433 res!675672) b!1006437))

(assert (= (and b!1006437 res!675677) b!1006430))

(assert (= (and b!1006430 res!675678) b!1006435))

(assert (= (and b!1006435 res!675675) b!1006432))

(declare-fun m!931637 () Bool)

(assert (=> b!1006429 m!931637))

(assert (=> b!1006429 m!931637))

(declare-fun m!931639 () Bool)

(assert (=> b!1006429 m!931639))

(assert (=> b!1006435 m!931637))

(assert (=> b!1006435 m!931637))

(declare-fun m!931641 () Bool)

(assert (=> b!1006435 m!931641))

(declare-fun m!931643 () Bool)

(assert (=> b!1006432 m!931643))

(declare-fun m!931645 () Bool)

(assert (=> b!1006432 m!931645))

(assert (=> b!1006432 m!931645))

(declare-fun m!931647 () Bool)

(assert (=> b!1006432 m!931647))

(assert (=> b!1006432 m!931647))

(assert (=> b!1006432 m!931645))

(declare-fun m!931649 () Bool)

(assert (=> b!1006432 m!931649))

(declare-fun m!931651 () Bool)

(assert (=> b!1006433 m!931651))

(assert (=> b!1006430 m!931637))

(assert (=> b!1006430 m!931637))

(declare-fun m!931653 () Bool)

(assert (=> b!1006430 m!931653))

(assert (=> b!1006430 m!931653))

(assert (=> b!1006430 m!931637))

(declare-fun m!931655 () Bool)

(assert (=> b!1006430 m!931655))

(declare-fun m!931657 () Bool)

(assert (=> start!86838 m!931657))

(declare-fun m!931659 () Bool)

(assert (=> start!86838 m!931659))

(declare-fun m!931661 () Bool)

(assert (=> b!1006436 m!931661))

(declare-fun m!931663 () Bool)

(assert (=> b!1006428 m!931663))

(declare-fun m!931665 () Bool)

(assert (=> b!1006431 m!931665))

(declare-fun m!931667 () Bool)

(assert (=> b!1006434 m!931667))

(check-sat (not b!1006436) (not b!1006429) (not b!1006432) (not b!1006435) (not b!1006431) (not b!1006430) (not start!86838) (not b!1006433) (not b!1006428) (not b!1006434))
(check-sat)

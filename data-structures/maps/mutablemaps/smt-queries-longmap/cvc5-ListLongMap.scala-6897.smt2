; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86776 () Bool)

(assert start!86776)

(declare-fun res!674699 () Bool)

(declare-fun e!566178 () Bool)

(assert (=> start!86776 (=> (not res!674699) (not e!566178))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86776 (= res!674699 (validMask!0 mask!3464))))

(assert (=> start!86776 e!566178))

(declare-datatypes ((array!63427 0))(
  ( (array!63428 (arr!30532 (Array (_ BitVec 32) (_ BitVec 64))) (size!31035 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63427)

(declare-fun array_inv!23522 (array!63427) Bool)

(assert (=> start!86776 (array_inv!23522 a!3219)))

(assert (=> start!86776 true))

(declare-fun b!1005448 () Bool)

(declare-fun res!674694 () Bool)

(assert (=> b!1005448 (=> (not res!674694) (not e!566178))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005448 (= res!674694 (validKeyInArray!0 (select (arr!30532 a!3219) j!170)))))

(declare-fun b!1005449 () Bool)

(declare-fun res!674701 () Bool)

(declare-fun e!566179 () Bool)

(assert (=> b!1005449 (=> (not res!674701) (not e!566179))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63427 (_ BitVec 32)) Bool)

(assert (=> b!1005449 (= res!674701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1005450 () Bool)

(declare-fun res!674700 () Bool)

(assert (=> b!1005450 (=> (not res!674700) (not e!566179))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9464 0))(
  ( (MissingZero!9464 (index!40226 (_ BitVec 32))) (Found!9464 (index!40227 (_ BitVec 32))) (Intermediate!9464 (undefined!10276 Bool) (index!40228 (_ BitVec 32)) (x!87665 (_ BitVec 32))) (Undefined!9464) (MissingVacant!9464 (index!40229 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63427 (_ BitVec 32)) SeekEntryResult!9464)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005450 (= res!674700 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30532 a!3219) j!170) mask!3464) (select (arr!30532 a!3219) j!170) a!3219 mask!3464) (Intermediate!9464 false resIndex!38 resX!38)))))

(declare-fun b!1005451 () Bool)

(declare-fun res!674696 () Bool)

(assert (=> b!1005451 (=> (not res!674696) (not e!566179))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1005451 (= res!674696 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31035 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31035 a!3219))))))

(declare-fun b!1005452 () Bool)

(declare-fun res!674695 () Bool)

(assert (=> b!1005452 (=> (not res!674695) (not e!566178))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005452 (= res!674695 (and (= (size!31035 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31035 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31035 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1005453 () Bool)

(declare-fun res!674692 () Bool)

(assert (=> b!1005453 (=> (not res!674692) (not e!566179))))

(declare-datatypes ((List!21334 0))(
  ( (Nil!21331) (Cons!21330 (h!22513 (_ BitVec 64)) (t!30343 List!21334)) )
))
(declare-fun arrayNoDuplicates!0 (array!63427 (_ BitVec 32) List!21334) Bool)

(assert (=> b!1005453 (= res!674692 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21331))))

(declare-fun b!1005454 () Bool)

(assert (=> b!1005454 (= e!566179 false)))

(declare-fun lt!444531 () SeekEntryResult!9464)

(assert (=> b!1005454 (= lt!444531 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30532 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1005455 () Bool)

(declare-fun res!674698 () Bool)

(assert (=> b!1005455 (=> (not res!674698) (not e!566178))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1005455 (= res!674698 (validKeyInArray!0 k!2224))))

(declare-fun b!1005456 () Bool)

(declare-fun res!674697 () Bool)

(assert (=> b!1005456 (=> (not res!674697) (not e!566178))))

(declare-fun arrayContainsKey!0 (array!63427 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005456 (= res!674697 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1005457 () Bool)

(assert (=> b!1005457 (= e!566178 e!566179)))

(declare-fun res!674693 () Bool)

(assert (=> b!1005457 (=> (not res!674693) (not e!566179))))

(declare-fun lt!444530 () SeekEntryResult!9464)

(assert (=> b!1005457 (= res!674693 (or (= lt!444530 (MissingVacant!9464 i!1194)) (= lt!444530 (MissingZero!9464 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63427 (_ BitVec 32)) SeekEntryResult!9464)

(assert (=> b!1005457 (= lt!444530 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(assert (= (and start!86776 res!674699) b!1005452))

(assert (= (and b!1005452 res!674695) b!1005448))

(assert (= (and b!1005448 res!674694) b!1005455))

(assert (= (and b!1005455 res!674698) b!1005456))

(assert (= (and b!1005456 res!674697) b!1005457))

(assert (= (and b!1005457 res!674693) b!1005449))

(assert (= (and b!1005449 res!674701) b!1005453))

(assert (= (and b!1005453 res!674692) b!1005451))

(assert (= (and b!1005451 res!674696) b!1005450))

(assert (= (and b!1005450 res!674700) b!1005454))

(declare-fun m!930777 () Bool)

(assert (=> b!1005449 m!930777))

(declare-fun m!930779 () Bool)

(assert (=> b!1005450 m!930779))

(assert (=> b!1005450 m!930779))

(declare-fun m!930781 () Bool)

(assert (=> b!1005450 m!930781))

(assert (=> b!1005450 m!930781))

(assert (=> b!1005450 m!930779))

(declare-fun m!930783 () Bool)

(assert (=> b!1005450 m!930783))

(declare-fun m!930785 () Bool)

(assert (=> b!1005457 m!930785))

(assert (=> b!1005454 m!930779))

(assert (=> b!1005454 m!930779))

(declare-fun m!930787 () Bool)

(assert (=> b!1005454 m!930787))

(declare-fun m!930789 () Bool)

(assert (=> b!1005455 m!930789))

(declare-fun m!930791 () Bool)

(assert (=> b!1005456 m!930791))

(declare-fun m!930793 () Bool)

(assert (=> b!1005453 m!930793))

(assert (=> b!1005448 m!930779))

(assert (=> b!1005448 m!930779))

(declare-fun m!930795 () Bool)

(assert (=> b!1005448 m!930795))

(declare-fun m!930797 () Bool)

(assert (=> start!86776 m!930797))

(declare-fun m!930799 () Bool)

(assert (=> start!86776 m!930799))

(push 1)


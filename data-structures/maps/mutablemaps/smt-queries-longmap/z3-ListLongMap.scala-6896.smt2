; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86772 () Bool)

(assert start!86772)

(declare-fun b!1005392 () Bool)

(declare-fun res!674641 () Bool)

(declare-fun e!566162 () Bool)

(assert (=> b!1005392 (=> (not res!674641) (not e!566162))))

(declare-datatypes ((array!63423 0))(
  ( (array!63424 (arr!30530 (Array (_ BitVec 32) (_ BitVec 64))) (size!31033 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63423)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005392 (= res!674641 (validKeyInArray!0 (select (arr!30530 a!3219) j!170)))))

(declare-fun b!1005393 () Bool)

(declare-fun res!674640 () Bool)

(assert (=> b!1005393 (=> (not res!674640) (not e!566162))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005393 (= res!674640 (and (= (size!31033 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31033 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31033 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1005394 () Bool)

(declare-fun res!674643 () Bool)

(assert (=> b!1005394 (=> (not res!674643) (not e!566162))))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!1005394 (= res!674643 (validKeyInArray!0 k0!2224))))

(declare-fun res!674642 () Bool)

(assert (=> start!86772 (=> (not res!674642) (not e!566162))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86772 (= res!674642 (validMask!0 mask!3464))))

(assert (=> start!86772 e!566162))

(declare-fun array_inv!23520 (array!63423) Bool)

(assert (=> start!86772 (array_inv!23520 a!3219)))

(assert (=> start!86772 true))

(declare-fun b!1005395 () Bool)

(declare-fun res!674636 () Bool)

(declare-fun e!566161 () Bool)

(assert (=> b!1005395 (=> (not res!674636) (not e!566161))))

(declare-datatypes ((List!21332 0))(
  ( (Nil!21329) (Cons!21328 (h!22511 (_ BitVec 64)) (t!30341 List!21332)) )
))
(declare-fun arrayNoDuplicates!0 (array!63423 (_ BitVec 32) List!21332) Bool)

(assert (=> b!1005395 (= res!674636 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21329))))

(declare-fun b!1005396 () Bool)

(declare-fun res!674644 () Bool)

(assert (=> b!1005396 (=> (not res!674644) (not e!566161))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63423 (_ BitVec 32)) Bool)

(assert (=> b!1005396 (= res!674644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1005397 () Bool)

(assert (=> b!1005397 (= e!566161 false)))

(declare-datatypes ((SeekEntryResult!9462 0))(
  ( (MissingZero!9462 (index!40218 (_ BitVec 32))) (Found!9462 (index!40219 (_ BitVec 32))) (Intermediate!9462 (undefined!10274 Bool) (index!40220 (_ BitVec 32)) (x!87655 (_ BitVec 32))) (Undefined!9462) (MissingVacant!9462 (index!40221 (_ BitVec 32))) )
))
(declare-fun lt!444518 () SeekEntryResult!9462)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63423 (_ BitVec 32)) SeekEntryResult!9462)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005397 (= lt!444518 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30530 a!3219) j!170) mask!3464) (select (arr!30530 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1005398 () Bool)

(assert (=> b!1005398 (= e!566162 e!566161)))

(declare-fun res!674638 () Bool)

(assert (=> b!1005398 (=> (not res!674638) (not e!566161))))

(declare-fun lt!444519 () SeekEntryResult!9462)

(assert (=> b!1005398 (= res!674638 (or (= lt!444519 (MissingVacant!9462 i!1194)) (= lt!444519 (MissingZero!9462 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63423 (_ BitVec 32)) SeekEntryResult!9462)

(assert (=> b!1005398 (= lt!444519 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1005399 () Bool)

(declare-fun res!674637 () Bool)

(assert (=> b!1005399 (=> (not res!674637) (not e!566161))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1005399 (= res!674637 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31033 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31033 a!3219))))))

(declare-fun b!1005400 () Bool)

(declare-fun res!674639 () Bool)

(assert (=> b!1005400 (=> (not res!674639) (not e!566162))))

(declare-fun arrayContainsKey!0 (array!63423 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005400 (= res!674639 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86772 res!674642) b!1005393))

(assert (= (and b!1005393 res!674640) b!1005392))

(assert (= (and b!1005392 res!674641) b!1005394))

(assert (= (and b!1005394 res!674643) b!1005400))

(assert (= (and b!1005400 res!674639) b!1005398))

(assert (= (and b!1005398 res!674638) b!1005396))

(assert (= (and b!1005396 res!674644) b!1005395))

(assert (= (and b!1005395 res!674636) b!1005399))

(assert (= (and b!1005399 res!674637) b!1005397))

(declare-fun m!930733 () Bool)

(assert (=> b!1005400 m!930733))

(declare-fun m!930735 () Bool)

(assert (=> b!1005396 m!930735))

(declare-fun m!930737 () Bool)

(assert (=> b!1005394 m!930737))

(declare-fun m!930739 () Bool)

(assert (=> b!1005398 m!930739))

(declare-fun m!930741 () Bool)

(assert (=> start!86772 m!930741))

(declare-fun m!930743 () Bool)

(assert (=> start!86772 m!930743))

(declare-fun m!930745 () Bool)

(assert (=> b!1005395 m!930745))

(declare-fun m!930747 () Bool)

(assert (=> b!1005397 m!930747))

(assert (=> b!1005397 m!930747))

(declare-fun m!930749 () Bool)

(assert (=> b!1005397 m!930749))

(assert (=> b!1005397 m!930749))

(assert (=> b!1005397 m!930747))

(declare-fun m!930751 () Bool)

(assert (=> b!1005397 m!930751))

(assert (=> b!1005392 m!930747))

(assert (=> b!1005392 m!930747))

(declare-fun m!930753 () Bool)

(assert (=> b!1005392 m!930753))

(check-sat (not b!1005395) (not b!1005400) (not b!1005394) (not b!1005396) (not b!1005397) (not start!86772) (not b!1005398) (not b!1005392))
(check-sat)

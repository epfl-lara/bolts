; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86782 () Bool)

(assert start!86782)

(declare-fun b!1005538 () Bool)

(declare-fun res!674786 () Bool)

(declare-fun e!566207 () Bool)

(assert (=> b!1005538 (=> (not res!674786) (not e!566207))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005538 (= res!674786 (validKeyInArray!0 k!2224))))

(declare-fun b!1005539 () Bool)

(declare-fun res!674784 () Bool)

(declare-fun e!566206 () Bool)

(assert (=> b!1005539 (=> (not res!674784) (not e!566206))))

(declare-datatypes ((array!63433 0))(
  ( (array!63434 (arr!30535 (Array (_ BitVec 32) (_ BitVec 64))) (size!31038 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63433)

(declare-datatypes ((List!21337 0))(
  ( (Nil!21334) (Cons!21333 (h!22516 (_ BitVec 64)) (t!30346 List!21337)) )
))
(declare-fun arrayNoDuplicates!0 (array!63433 (_ BitVec 32) List!21337) Bool)

(assert (=> b!1005539 (= res!674784 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21334))))

(declare-fun b!1005540 () Bool)

(declare-fun res!674783 () Bool)

(assert (=> b!1005540 (=> (not res!674783) (not e!566206))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63433 (_ BitVec 32)) Bool)

(assert (=> b!1005540 (= res!674783 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!674785 () Bool)

(assert (=> start!86782 (=> (not res!674785) (not e!566207))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86782 (= res!674785 (validMask!0 mask!3464))))

(assert (=> start!86782 e!566207))

(declare-fun array_inv!23525 (array!63433) Bool)

(assert (=> start!86782 (array_inv!23525 a!3219)))

(assert (=> start!86782 true))

(declare-fun b!1005541 () Bool)

(declare-fun res!674782 () Bool)

(assert (=> b!1005541 (=> (not res!674782) (not e!566206))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9467 0))(
  ( (MissingZero!9467 (index!40238 (_ BitVec 32))) (Found!9467 (index!40239 (_ BitVec 32))) (Intermediate!9467 (undefined!10279 Bool) (index!40240 (_ BitVec 32)) (x!87676 (_ BitVec 32))) (Undefined!9467) (MissingVacant!9467 (index!40241 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63433 (_ BitVec 32)) SeekEntryResult!9467)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005541 (= res!674782 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30535 a!3219) j!170) mask!3464) (select (arr!30535 a!3219) j!170) a!3219 mask!3464) (Intermediate!9467 false resIndex!38 resX!38)))))

(declare-fun b!1005542 () Bool)

(assert (=> b!1005542 (= e!566206 false)))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!444548 () SeekEntryResult!9467)

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1005542 (= lt!444548 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30535 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1005543 () Bool)

(declare-fun res!674791 () Bool)

(assert (=> b!1005543 (=> (not res!674791) (not e!566206))))

(assert (=> b!1005543 (= res!674791 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31038 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31038 a!3219))))))

(declare-fun b!1005544 () Bool)

(declare-fun res!674787 () Bool)

(assert (=> b!1005544 (=> (not res!674787) (not e!566207))))

(assert (=> b!1005544 (= res!674787 (validKeyInArray!0 (select (arr!30535 a!3219) j!170)))))

(declare-fun b!1005545 () Bool)

(assert (=> b!1005545 (= e!566207 e!566206)))

(declare-fun res!674790 () Bool)

(assert (=> b!1005545 (=> (not res!674790) (not e!566206))))

(declare-fun lt!444549 () SeekEntryResult!9467)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005545 (= res!674790 (or (= lt!444549 (MissingVacant!9467 i!1194)) (= lt!444549 (MissingZero!9467 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63433 (_ BitVec 32)) SeekEntryResult!9467)

(assert (=> b!1005545 (= lt!444549 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1005546 () Bool)

(declare-fun res!674789 () Bool)

(assert (=> b!1005546 (=> (not res!674789) (not e!566207))))

(declare-fun arrayContainsKey!0 (array!63433 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005546 (= res!674789 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1005547 () Bool)

(declare-fun res!674788 () Bool)

(assert (=> b!1005547 (=> (not res!674788) (not e!566207))))

(assert (=> b!1005547 (= res!674788 (and (= (size!31038 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31038 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31038 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86782 res!674785) b!1005547))

(assert (= (and b!1005547 res!674788) b!1005544))

(assert (= (and b!1005544 res!674787) b!1005538))

(assert (= (and b!1005538 res!674786) b!1005546))

(assert (= (and b!1005546 res!674789) b!1005545))

(assert (= (and b!1005545 res!674790) b!1005540))

(assert (= (and b!1005540 res!674783) b!1005539))

(assert (= (and b!1005539 res!674784) b!1005543))

(assert (= (and b!1005543 res!674791) b!1005541))

(assert (= (and b!1005541 res!674782) b!1005542))

(declare-fun m!930849 () Bool)

(assert (=> b!1005542 m!930849))

(assert (=> b!1005542 m!930849))

(declare-fun m!930851 () Bool)

(assert (=> b!1005542 m!930851))

(declare-fun m!930853 () Bool)

(assert (=> start!86782 m!930853))

(declare-fun m!930855 () Bool)

(assert (=> start!86782 m!930855))

(declare-fun m!930857 () Bool)

(assert (=> b!1005538 m!930857))

(declare-fun m!930859 () Bool)

(assert (=> b!1005546 m!930859))

(declare-fun m!930861 () Bool)

(assert (=> b!1005545 m!930861))

(declare-fun m!930863 () Bool)

(assert (=> b!1005540 m!930863))

(assert (=> b!1005544 m!930849))

(assert (=> b!1005544 m!930849))

(declare-fun m!930865 () Bool)

(assert (=> b!1005544 m!930865))

(assert (=> b!1005541 m!930849))

(assert (=> b!1005541 m!930849))

(declare-fun m!930867 () Bool)

(assert (=> b!1005541 m!930867))

(assert (=> b!1005541 m!930867))

(assert (=> b!1005541 m!930849))

(declare-fun m!930869 () Bool)

(assert (=> b!1005541 m!930869))

(declare-fun m!930871 () Bool)

(assert (=> b!1005539 m!930871))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86786 () Bool)

(assert start!86786)

(declare-fun res!674851 () Bool)

(declare-fun e!566224 () Bool)

(assert (=> start!86786 (=> (not res!674851) (not e!566224))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86786 (= res!674851 (validMask!0 mask!3464))))

(assert (=> start!86786 e!566224))

(declare-datatypes ((array!63437 0))(
  ( (array!63438 (arr!30537 (Array (_ BitVec 32) (_ BitVec 64))) (size!31040 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63437)

(declare-fun array_inv!23527 (array!63437) Bool)

(assert (=> start!86786 (array_inv!23527 a!3219)))

(assert (=> start!86786 true))

(declare-fun b!1005598 () Bool)

(declare-fun e!566225 () Bool)

(assert (=> b!1005598 (= e!566225 false)))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9469 0))(
  ( (MissingZero!9469 (index!40246 (_ BitVec 32))) (Found!9469 (index!40247 (_ BitVec 32))) (Intermediate!9469 (undefined!10281 Bool) (index!40248 (_ BitVec 32)) (x!87678 (_ BitVec 32))) (Undefined!9469) (MissingVacant!9469 (index!40249 (_ BitVec 32))) )
))
(declare-fun lt!444561 () SeekEntryResult!9469)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63437 (_ BitVec 32)) SeekEntryResult!9469)

(assert (=> b!1005598 (= lt!444561 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30537 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1005599 () Bool)

(declare-fun res!674847 () Bool)

(assert (=> b!1005599 (=> (not res!674847) (not e!566224))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005599 (= res!674847 (validKeyInArray!0 (select (arr!30537 a!3219) j!170)))))

(declare-fun b!1005600 () Bool)

(declare-fun res!674848 () Bool)

(assert (=> b!1005600 (=> (not res!674848) (not e!566224))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63437 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005600 (= res!674848 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1005601 () Bool)

(declare-fun res!674842 () Bool)

(assert (=> b!1005601 (=> (not res!674842) (not e!566224))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005601 (= res!674842 (and (= (size!31040 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31040 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31040 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1005602 () Bool)

(declare-fun res!674850 () Bool)

(assert (=> b!1005602 (=> (not res!674850) (not e!566225))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005602 (= res!674850 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30537 a!3219) j!170) mask!3464) (select (arr!30537 a!3219) j!170) a!3219 mask!3464) (Intermediate!9469 false resIndex!38 resX!38)))))

(declare-fun b!1005603 () Bool)

(declare-fun res!674843 () Bool)

(assert (=> b!1005603 (=> (not res!674843) (not e!566225))))

(assert (=> b!1005603 (= res!674843 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31040 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31040 a!3219))))))

(declare-fun b!1005604 () Bool)

(declare-fun res!674849 () Bool)

(assert (=> b!1005604 (=> (not res!674849) (not e!566225))))

(declare-datatypes ((List!21339 0))(
  ( (Nil!21336) (Cons!21335 (h!22518 (_ BitVec 64)) (t!30348 List!21339)) )
))
(declare-fun arrayNoDuplicates!0 (array!63437 (_ BitVec 32) List!21339) Bool)

(assert (=> b!1005604 (= res!674849 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21336))))

(declare-fun b!1005605 () Bool)

(declare-fun res!674845 () Bool)

(assert (=> b!1005605 (=> (not res!674845) (not e!566225))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63437 (_ BitVec 32)) Bool)

(assert (=> b!1005605 (= res!674845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1005606 () Bool)

(assert (=> b!1005606 (= e!566224 e!566225)))

(declare-fun res!674846 () Bool)

(assert (=> b!1005606 (=> (not res!674846) (not e!566225))))

(declare-fun lt!444560 () SeekEntryResult!9469)

(assert (=> b!1005606 (= res!674846 (or (= lt!444560 (MissingVacant!9469 i!1194)) (= lt!444560 (MissingZero!9469 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63437 (_ BitVec 32)) SeekEntryResult!9469)

(assert (=> b!1005606 (= lt!444560 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1005607 () Bool)

(declare-fun res!674844 () Bool)

(assert (=> b!1005607 (=> (not res!674844) (not e!566224))))

(assert (=> b!1005607 (= res!674844 (validKeyInArray!0 k!2224))))

(assert (= (and start!86786 res!674851) b!1005601))

(assert (= (and b!1005601 res!674842) b!1005599))

(assert (= (and b!1005599 res!674847) b!1005607))

(assert (= (and b!1005607 res!674844) b!1005600))

(assert (= (and b!1005600 res!674848) b!1005606))

(assert (= (and b!1005606 res!674846) b!1005605))

(assert (= (and b!1005605 res!674845) b!1005604))

(assert (= (and b!1005604 res!674849) b!1005603))

(assert (= (and b!1005603 res!674843) b!1005602))

(assert (= (and b!1005602 res!674850) b!1005598))

(declare-fun m!930897 () Bool)

(assert (=> b!1005606 m!930897))

(declare-fun m!930899 () Bool)

(assert (=> b!1005599 m!930899))

(assert (=> b!1005599 m!930899))

(declare-fun m!930901 () Bool)

(assert (=> b!1005599 m!930901))

(declare-fun m!930903 () Bool)

(assert (=> start!86786 m!930903))

(declare-fun m!930905 () Bool)

(assert (=> start!86786 m!930905))

(assert (=> b!1005602 m!930899))

(assert (=> b!1005602 m!930899))

(declare-fun m!930907 () Bool)

(assert (=> b!1005602 m!930907))

(assert (=> b!1005602 m!930907))

(assert (=> b!1005602 m!930899))

(declare-fun m!930909 () Bool)

(assert (=> b!1005602 m!930909))

(declare-fun m!930911 () Bool)

(assert (=> b!1005605 m!930911))

(declare-fun m!930913 () Bool)

(assert (=> b!1005600 m!930913))

(declare-fun m!930915 () Bool)

(assert (=> b!1005604 m!930915))

(assert (=> b!1005598 m!930899))

(assert (=> b!1005598 m!930899))

(declare-fun m!930917 () Bool)

(assert (=> b!1005598 m!930917))

(declare-fun m!930919 () Bool)

(assert (=> b!1005607 m!930919))

(push 1)

(assert (not b!1005598))

(assert (not b!1005602))

(assert (not b!1005607))


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86784 () Bool)

(assert start!86784)

(declare-fun res!674816 () Bool)

(declare-fun e!566214 () Bool)

(assert (=> start!86784 (=> (not res!674816) (not e!566214))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86784 (= res!674816 (validMask!0 mask!3464))))

(assert (=> start!86784 e!566214))

(declare-datatypes ((array!63435 0))(
  ( (array!63436 (arr!30536 (Array (_ BitVec 32) (_ BitVec 64))) (size!31039 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63435)

(declare-fun array_inv!23526 (array!63435) Bool)

(assert (=> start!86784 (array_inv!23526 a!3219)))

(assert (=> start!86784 true))

(declare-fun b!1005568 () Bool)

(declare-fun res!674821 () Bool)

(declare-fun e!566216 () Bool)

(assert (=> b!1005568 (=> (not res!674821) (not e!566216))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1005568 (= res!674821 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31039 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31039 a!3219))))))

(declare-fun b!1005569 () Bool)

(assert (=> b!1005569 (= e!566214 e!566216)))

(declare-fun res!674813 () Bool)

(assert (=> b!1005569 (=> (not res!674813) (not e!566216))))

(declare-datatypes ((SeekEntryResult!9468 0))(
  ( (MissingZero!9468 (index!40242 (_ BitVec 32))) (Found!9468 (index!40243 (_ BitVec 32))) (Intermediate!9468 (undefined!10280 Bool) (index!40244 (_ BitVec 32)) (x!87677 (_ BitVec 32))) (Undefined!9468) (MissingVacant!9468 (index!40245 (_ BitVec 32))) )
))
(declare-fun lt!444555 () SeekEntryResult!9468)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005569 (= res!674813 (or (= lt!444555 (MissingVacant!9468 i!1194)) (= lt!444555 (MissingZero!9468 i!1194))))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63435 (_ BitVec 32)) SeekEntryResult!9468)

(assert (=> b!1005569 (= lt!444555 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1005570 () Bool)

(declare-fun res!674814 () Bool)

(assert (=> b!1005570 (=> (not res!674814) (not e!566214))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1005570 (= res!674814 (and (= (size!31039 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31039 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31039 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1005571 () Bool)

(declare-fun res!674817 () Bool)

(assert (=> b!1005571 (=> (not res!674817) (not e!566214))))

(declare-fun arrayContainsKey!0 (array!63435 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005571 (= res!674817 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1005572 () Bool)

(declare-fun res!674815 () Bool)

(assert (=> b!1005572 (=> (not res!674815) (not e!566216))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63435 (_ BitVec 32)) Bool)

(assert (=> b!1005572 (= res!674815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1005573 () Bool)

(declare-fun res!674812 () Bool)

(assert (=> b!1005573 (=> (not res!674812) (not e!566214))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005573 (= res!674812 (validKeyInArray!0 k0!2224))))

(declare-fun b!1005574 () Bool)

(declare-fun res!674818 () Bool)

(assert (=> b!1005574 (=> (not res!674818) (not e!566214))))

(assert (=> b!1005574 (= res!674818 (validKeyInArray!0 (select (arr!30536 a!3219) j!170)))))

(declare-fun b!1005575 () Bool)

(assert (=> b!1005575 (= e!566216 false)))

(declare-fun lt!444554 () SeekEntryResult!9468)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63435 (_ BitVec 32)) SeekEntryResult!9468)

(assert (=> b!1005575 (= lt!444554 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30536 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1005576 () Bool)

(declare-fun res!674819 () Bool)

(assert (=> b!1005576 (=> (not res!674819) (not e!566216))))

(declare-datatypes ((List!21338 0))(
  ( (Nil!21335) (Cons!21334 (h!22517 (_ BitVec 64)) (t!30347 List!21338)) )
))
(declare-fun arrayNoDuplicates!0 (array!63435 (_ BitVec 32) List!21338) Bool)

(assert (=> b!1005576 (= res!674819 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21335))))

(declare-fun b!1005577 () Bool)

(declare-fun res!674820 () Bool)

(assert (=> b!1005577 (=> (not res!674820) (not e!566216))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005577 (= res!674820 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30536 a!3219) j!170) mask!3464) (select (arr!30536 a!3219) j!170) a!3219 mask!3464) (Intermediate!9468 false resIndex!38 resX!38)))))

(assert (= (and start!86784 res!674816) b!1005570))

(assert (= (and b!1005570 res!674814) b!1005574))

(assert (= (and b!1005574 res!674818) b!1005573))

(assert (= (and b!1005573 res!674812) b!1005571))

(assert (= (and b!1005571 res!674817) b!1005569))

(assert (= (and b!1005569 res!674813) b!1005572))

(assert (= (and b!1005572 res!674815) b!1005576))

(assert (= (and b!1005576 res!674819) b!1005568))

(assert (= (and b!1005568 res!674821) b!1005577))

(assert (= (and b!1005577 res!674820) b!1005575))

(declare-fun m!930873 () Bool)

(assert (=> b!1005577 m!930873))

(assert (=> b!1005577 m!930873))

(declare-fun m!930875 () Bool)

(assert (=> b!1005577 m!930875))

(assert (=> b!1005577 m!930875))

(assert (=> b!1005577 m!930873))

(declare-fun m!930877 () Bool)

(assert (=> b!1005577 m!930877))

(assert (=> b!1005574 m!930873))

(assert (=> b!1005574 m!930873))

(declare-fun m!930879 () Bool)

(assert (=> b!1005574 m!930879))

(declare-fun m!930881 () Bool)

(assert (=> start!86784 m!930881))

(declare-fun m!930883 () Bool)

(assert (=> start!86784 m!930883))

(declare-fun m!930885 () Bool)

(assert (=> b!1005571 m!930885))

(assert (=> b!1005575 m!930873))

(assert (=> b!1005575 m!930873))

(declare-fun m!930887 () Bool)

(assert (=> b!1005575 m!930887))

(declare-fun m!930889 () Bool)

(assert (=> b!1005569 m!930889))

(declare-fun m!930891 () Bool)

(assert (=> b!1005572 m!930891))

(declare-fun m!930893 () Bool)

(assert (=> b!1005576 m!930893))

(declare-fun m!930895 () Bool)

(assert (=> b!1005573 m!930895))

(check-sat (not b!1005574) (not b!1005571) (not b!1005569) (not b!1005576) (not b!1005572) (not b!1005577) (not b!1005575) (not b!1005573) (not start!86784))
(check-sat)

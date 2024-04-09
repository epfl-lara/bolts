; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86790 () Bool)

(assert start!86790)

(declare-fun b!1005658 () Bool)

(declare-fun res!674910 () Bool)

(declare-fun e!566241 () Bool)

(assert (=> b!1005658 (=> (not res!674910) (not e!566241))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005658 (= res!674910 (validKeyInArray!0 k0!2224))))

(declare-fun b!1005659 () Bool)

(declare-fun e!566243 () Bool)

(assert (=> b!1005659 (= e!566241 e!566243)))

(declare-fun res!674903 () Bool)

(assert (=> b!1005659 (=> (not res!674903) (not e!566243))))

(declare-datatypes ((SeekEntryResult!9471 0))(
  ( (MissingZero!9471 (index!40254 (_ BitVec 32))) (Found!9471 (index!40255 (_ BitVec 32))) (Intermediate!9471 (undefined!10283 Bool) (index!40256 (_ BitVec 32)) (x!87688 (_ BitVec 32))) (Undefined!9471) (MissingVacant!9471 (index!40257 (_ BitVec 32))) )
))
(declare-fun lt!444572 () SeekEntryResult!9471)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005659 (= res!674903 (or (= lt!444572 (MissingVacant!9471 i!1194)) (= lt!444572 (MissingZero!9471 i!1194))))))

(declare-datatypes ((array!63441 0))(
  ( (array!63442 (arr!30539 (Array (_ BitVec 32) (_ BitVec 64))) (size!31042 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63441)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63441 (_ BitVec 32)) SeekEntryResult!9471)

(assert (=> b!1005659 (= lt!444572 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1005661 () Bool)

(declare-fun res!674906 () Bool)

(assert (=> b!1005661 (=> (not res!674906) (not e!566243))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63441 (_ BitVec 32)) Bool)

(assert (=> b!1005661 (= res!674906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1005662 () Bool)

(declare-fun res!674911 () Bool)

(assert (=> b!1005662 (=> (not res!674911) (not e!566241))))

(declare-fun arrayContainsKey!0 (array!63441 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005662 (= res!674911 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1005663 () Bool)

(assert (=> b!1005663 (= e!566243 false)))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!444573 () SeekEntryResult!9471)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63441 (_ BitVec 32)) SeekEntryResult!9471)

(assert (=> b!1005663 (= lt!444573 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30539 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1005664 () Bool)

(declare-fun res!674907 () Bool)

(assert (=> b!1005664 (=> (not res!674907) (not e!566241))))

(assert (=> b!1005664 (= res!674907 (validKeyInArray!0 (select (arr!30539 a!3219) j!170)))))

(declare-fun b!1005665 () Bool)

(declare-fun res!674908 () Bool)

(assert (=> b!1005665 (=> (not res!674908) (not e!566243))))

(declare-datatypes ((List!21341 0))(
  ( (Nil!21338) (Cons!21337 (h!22520 (_ BitVec 64)) (t!30350 List!21341)) )
))
(declare-fun arrayNoDuplicates!0 (array!63441 (_ BitVec 32) List!21341) Bool)

(assert (=> b!1005665 (= res!674908 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21338))))

(declare-fun b!1005660 () Bool)

(declare-fun res!674905 () Bool)

(assert (=> b!1005660 (=> (not res!674905) (not e!566243))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005660 (= res!674905 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30539 a!3219) j!170) mask!3464) (select (arr!30539 a!3219) j!170) a!3219 mask!3464) (Intermediate!9471 false resIndex!38 resX!38)))))

(declare-fun res!674909 () Bool)

(assert (=> start!86790 (=> (not res!674909) (not e!566241))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86790 (= res!674909 (validMask!0 mask!3464))))

(assert (=> start!86790 e!566241))

(declare-fun array_inv!23529 (array!63441) Bool)

(assert (=> start!86790 (array_inv!23529 a!3219)))

(assert (=> start!86790 true))

(declare-fun b!1005666 () Bool)

(declare-fun res!674904 () Bool)

(assert (=> b!1005666 (=> (not res!674904) (not e!566243))))

(assert (=> b!1005666 (= res!674904 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31042 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31042 a!3219))))))

(declare-fun b!1005667 () Bool)

(declare-fun res!674902 () Bool)

(assert (=> b!1005667 (=> (not res!674902) (not e!566241))))

(assert (=> b!1005667 (= res!674902 (and (= (size!31042 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31042 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31042 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86790 res!674909) b!1005667))

(assert (= (and b!1005667 res!674902) b!1005664))

(assert (= (and b!1005664 res!674907) b!1005658))

(assert (= (and b!1005658 res!674910) b!1005662))

(assert (= (and b!1005662 res!674911) b!1005659))

(assert (= (and b!1005659 res!674903) b!1005661))

(assert (= (and b!1005661 res!674906) b!1005665))

(assert (= (and b!1005665 res!674908) b!1005666))

(assert (= (and b!1005666 res!674904) b!1005660))

(assert (= (and b!1005660 res!674905) b!1005663))

(declare-fun m!930945 () Bool)

(assert (=> b!1005662 m!930945))

(declare-fun m!930947 () Bool)

(assert (=> b!1005663 m!930947))

(assert (=> b!1005663 m!930947))

(declare-fun m!930949 () Bool)

(assert (=> b!1005663 m!930949))

(assert (=> b!1005664 m!930947))

(assert (=> b!1005664 m!930947))

(declare-fun m!930951 () Bool)

(assert (=> b!1005664 m!930951))

(assert (=> b!1005660 m!930947))

(assert (=> b!1005660 m!930947))

(declare-fun m!930953 () Bool)

(assert (=> b!1005660 m!930953))

(assert (=> b!1005660 m!930953))

(assert (=> b!1005660 m!930947))

(declare-fun m!930955 () Bool)

(assert (=> b!1005660 m!930955))

(declare-fun m!930957 () Bool)

(assert (=> start!86790 m!930957))

(declare-fun m!930959 () Bool)

(assert (=> start!86790 m!930959))

(declare-fun m!930961 () Bool)

(assert (=> b!1005661 m!930961))

(declare-fun m!930963 () Bool)

(assert (=> b!1005658 m!930963))

(declare-fun m!930965 () Bool)

(assert (=> b!1005659 m!930965))

(declare-fun m!930967 () Bool)

(assert (=> b!1005665 m!930967))

(check-sat (not b!1005662) (not b!1005660) (not b!1005664) (not b!1005665) (not b!1005659) (not b!1005663) (not b!1005661) (not start!86790) (not b!1005658))
(check-sat)

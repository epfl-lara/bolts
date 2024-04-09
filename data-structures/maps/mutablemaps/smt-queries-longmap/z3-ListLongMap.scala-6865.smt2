; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86478 () Bool)

(assert start!86478)

(declare-fun b!1000660 () Bool)

(declare-fun e!563978 () Bool)

(declare-fun e!563981 () Bool)

(assert (=> b!1000660 (= e!563978 e!563981)))

(declare-fun res!670297 () Bool)

(assert (=> b!1000660 (=> (not res!670297) (not e!563981))))

(declare-datatypes ((SeekEntryResult!9369 0))(
  ( (MissingZero!9369 (index!39846 (_ BitVec 32))) (Found!9369 (index!39847 (_ BitVec 32))) (Intermediate!9369 (undefined!10181 Bool) (index!39848 (_ BitVec 32)) (x!87302 (_ BitVec 32))) (Undefined!9369) (MissingVacant!9369 (index!39849 (_ BitVec 32))) )
))
(declare-fun lt!442324 () SeekEntryResult!9369)

(declare-fun lt!442325 () SeekEntryResult!9369)

(assert (=> b!1000660 (= res!670297 (= lt!442324 lt!442325))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000660 (= lt!442325 (Intermediate!9369 false resIndex!38 resX!38))))

(declare-datatypes ((array!63231 0))(
  ( (array!63232 (arr!30437 (Array (_ BitVec 32) (_ BitVec 64))) (size!30940 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63231)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63231 (_ BitVec 32)) SeekEntryResult!9369)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000660 (= lt!442324 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30437 a!3219) j!170) mask!3464) (select (arr!30437 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1000661 () Bool)

(declare-fun res!670303 () Bool)

(assert (=> b!1000661 (=> (not res!670303) (not e!563981))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1000661 (= res!670303 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30437 a!3219) j!170) a!3219 mask!3464) lt!442325))))

(declare-fun b!1000662 () Bool)

(declare-fun res!670296 () Bool)

(assert (=> b!1000662 (=> (not res!670296) (not e!563981))))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!1000662 (= res!670296 (not (= lt!442324 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30437 a!3219) i!1194 k0!2224) j!170) mask!3464) (select (store (arr!30437 a!3219) i!1194 k0!2224) j!170) (array!63232 (store (arr!30437 a!3219) i!1194 k0!2224) (size!30940 a!3219)) mask!3464))))))

(declare-fun b!1000663 () Bool)

(declare-fun res!670294 () Bool)

(declare-fun e!563980 () Bool)

(assert (=> b!1000663 (=> (not res!670294) (not e!563980))))

(declare-fun arrayContainsKey!0 (array!63231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000663 (= res!670294 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000664 () Bool)

(declare-fun res!670295 () Bool)

(assert (=> b!1000664 (=> (not res!670295) (not e!563980))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000664 (= res!670295 (validKeyInArray!0 (select (arr!30437 a!3219) j!170)))))

(declare-fun b!1000665 () Bool)

(assert (=> b!1000665 (= e!563981 (not (validKeyInArray!0 (select (store (arr!30437 a!3219) i!1194 k0!2224) j!170))))))

(declare-fun b!1000666 () Bool)

(declare-fun res!670299 () Bool)

(assert (=> b!1000666 (=> (not res!670299) (not e!563978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63231 (_ BitVec 32)) Bool)

(assert (=> b!1000666 (= res!670299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000667 () Bool)

(declare-fun res!670300 () Bool)

(assert (=> b!1000667 (=> (not res!670300) (not e!563978))))

(declare-datatypes ((List!21239 0))(
  ( (Nil!21236) (Cons!21235 (h!22412 (_ BitVec 64)) (t!30248 List!21239)) )
))
(declare-fun arrayNoDuplicates!0 (array!63231 (_ BitVec 32) List!21239) Bool)

(assert (=> b!1000667 (= res!670300 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21236))))

(declare-fun res!670306 () Bool)

(assert (=> start!86478 (=> (not res!670306) (not e!563980))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86478 (= res!670306 (validMask!0 mask!3464))))

(assert (=> start!86478 e!563980))

(declare-fun array_inv!23427 (array!63231) Bool)

(assert (=> start!86478 (array_inv!23427 a!3219)))

(assert (=> start!86478 true))

(declare-fun b!1000668 () Bool)

(declare-fun res!670301 () Bool)

(assert (=> b!1000668 (=> (not res!670301) (not e!563980))))

(assert (=> b!1000668 (= res!670301 (and (= (size!30940 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30940 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30940 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000669 () Bool)

(declare-fun res!670298 () Bool)

(assert (=> b!1000669 (=> (not res!670298) (not e!563981))))

(assert (=> b!1000669 (= res!670298 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvslt index!1507 (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsle x!1245 #b01111111111111111111111111111110)))))

(declare-fun b!1000670 () Bool)

(assert (=> b!1000670 (= e!563980 e!563978)))

(declare-fun res!670302 () Bool)

(assert (=> b!1000670 (=> (not res!670302) (not e!563978))))

(declare-fun lt!442326 () SeekEntryResult!9369)

(assert (=> b!1000670 (= res!670302 (or (= lt!442326 (MissingVacant!9369 i!1194)) (= lt!442326 (MissingZero!9369 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63231 (_ BitVec 32)) SeekEntryResult!9369)

(assert (=> b!1000670 (= lt!442326 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1000671 () Bool)

(declare-fun res!670305 () Bool)

(assert (=> b!1000671 (=> (not res!670305) (not e!563978))))

(assert (=> b!1000671 (= res!670305 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30940 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30940 a!3219))))))

(declare-fun b!1000672 () Bool)

(declare-fun res!670304 () Bool)

(assert (=> b!1000672 (=> (not res!670304) (not e!563980))))

(assert (=> b!1000672 (= res!670304 (validKeyInArray!0 k0!2224))))

(assert (= (and start!86478 res!670306) b!1000668))

(assert (= (and b!1000668 res!670301) b!1000664))

(assert (= (and b!1000664 res!670295) b!1000672))

(assert (= (and b!1000672 res!670304) b!1000663))

(assert (= (and b!1000663 res!670294) b!1000670))

(assert (= (and b!1000670 res!670302) b!1000666))

(assert (= (and b!1000666 res!670299) b!1000667))

(assert (= (and b!1000667 res!670300) b!1000671))

(assert (= (and b!1000671 res!670305) b!1000660))

(assert (= (and b!1000660 res!670297) b!1000661))

(assert (= (and b!1000661 res!670303) b!1000662))

(assert (= (and b!1000662 res!670296) b!1000669))

(assert (= (and b!1000669 res!670298) b!1000665))

(declare-fun m!926905 () Bool)

(assert (=> b!1000661 m!926905))

(assert (=> b!1000661 m!926905))

(declare-fun m!926907 () Bool)

(assert (=> b!1000661 m!926907))

(declare-fun m!926909 () Bool)

(assert (=> b!1000665 m!926909))

(declare-fun m!926911 () Bool)

(assert (=> b!1000665 m!926911))

(assert (=> b!1000665 m!926911))

(declare-fun m!926913 () Bool)

(assert (=> b!1000665 m!926913))

(declare-fun m!926915 () Bool)

(assert (=> b!1000670 m!926915))

(assert (=> b!1000664 m!926905))

(assert (=> b!1000664 m!926905))

(declare-fun m!926917 () Bool)

(assert (=> b!1000664 m!926917))

(declare-fun m!926919 () Bool)

(assert (=> b!1000667 m!926919))

(declare-fun m!926921 () Bool)

(assert (=> start!86478 m!926921))

(declare-fun m!926923 () Bool)

(assert (=> start!86478 m!926923))

(declare-fun m!926925 () Bool)

(assert (=> b!1000666 m!926925))

(assert (=> b!1000660 m!926905))

(assert (=> b!1000660 m!926905))

(declare-fun m!926927 () Bool)

(assert (=> b!1000660 m!926927))

(assert (=> b!1000660 m!926927))

(assert (=> b!1000660 m!926905))

(declare-fun m!926929 () Bool)

(assert (=> b!1000660 m!926929))

(declare-fun m!926931 () Bool)

(assert (=> b!1000663 m!926931))

(assert (=> b!1000662 m!926909))

(assert (=> b!1000662 m!926911))

(assert (=> b!1000662 m!926911))

(declare-fun m!926933 () Bool)

(assert (=> b!1000662 m!926933))

(assert (=> b!1000662 m!926933))

(assert (=> b!1000662 m!926911))

(declare-fun m!926935 () Bool)

(assert (=> b!1000662 m!926935))

(declare-fun m!926937 () Bool)

(assert (=> b!1000672 m!926937))

(check-sat (not b!1000670) (not b!1000667) (not b!1000664) (not b!1000672) (not start!86478) (not b!1000663) (not b!1000661) (not b!1000662) (not b!1000666) (not b!1000665) (not b!1000660))
(check-sat)

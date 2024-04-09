; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86532 () Bool)

(assert start!86532)

(declare-fun b!1001827 () Bool)

(declare-fun res!671476 () Bool)

(declare-fun e!564494 () Bool)

(assert (=> b!1001827 (=> (not res!671476) (not e!564494))))

(declare-datatypes ((array!63285 0))(
  ( (array!63286 (arr!30464 (Array (_ BitVec 32) (_ BitVec 64))) (size!30967 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63285)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!442886 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9396 0))(
  ( (MissingZero!9396 (index!39954 (_ BitVec 32))) (Found!9396 (index!39955 (_ BitVec 32))) (Intermediate!9396 (undefined!10208 Bool) (index!39956 (_ BitVec 32)) (x!87401 (_ BitVec 32))) (Undefined!9396) (MissingVacant!9396 (index!39957 (_ BitVec 32))) )
))
(declare-fun lt!442882 () SeekEntryResult!9396)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63285 (_ BitVec 32)) SeekEntryResult!9396)

(assert (=> b!1001827 (= res!671476 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442886 (select (arr!30464 a!3219) j!170) a!3219 mask!3464) lt!442882))))

(declare-fun b!1001828 () Bool)

(declare-fun e!564490 () Bool)

(declare-fun e!564491 () Bool)

(assert (=> b!1001828 (= e!564490 e!564491)))

(declare-fun res!671464 () Bool)

(assert (=> b!1001828 (=> (not res!671464) (not e!564491))))

(declare-fun lt!442883 () SeekEntryResult!9396)

(declare-fun lt!442884 () (_ BitVec 64))

(declare-fun lt!442881 () array!63285)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001828 (= res!671464 (not (= lt!442883 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442884 mask!3464) lt!442884 lt!442881 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!1001828 (= lt!442884 (select (store (arr!30464 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1001828 (= lt!442881 (array!63286 (store (arr!30464 a!3219) i!1194 k0!2224) (size!30967 a!3219)))))

(declare-fun b!1001829 () Bool)

(declare-fun res!671471 () Bool)

(declare-fun e!564488 () Bool)

(assert (=> b!1001829 (=> (not res!671471) (not e!564488))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63285 (_ BitVec 32)) Bool)

(assert (=> b!1001829 (= res!671471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1001830 () Bool)

(declare-fun e!564493 () Bool)

(assert (=> b!1001830 (= e!564488 e!564493)))

(declare-fun res!671474 () Bool)

(assert (=> b!1001830 (=> (not res!671474) (not e!564493))))

(assert (=> b!1001830 (= res!671474 (= lt!442883 lt!442882))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1001830 (= lt!442882 (Intermediate!9396 false resIndex!38 resX!38))))

(assert (=> b!1001830 (= lt!442883 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30464 a!3219) j!170) mask!3464) (select (arr!30464 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001831 () Bool)

(declare-fun res!671472 () Bool)

(assert (=> b!1001831 (=> (not res!671472) (not e!564491))))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1001831 (= res!671472 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1001832 () Bool)

(declare-fun res!671475 () Bool)

(assert (=> b!1001832 (=> (not res!671475) (not e!564491))))

(declare-fun lt!442880 () SeekEntryResult!9396)

(assert (=> b!1001832 (= res!671475 (not (= lt!442880 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442884 lt!442881 mask!3464))))))

(declare-fun res!671468 () Bool)

(declare-fun e!564489 () Bool)

(assert (=> start!86532 (=> (not res!671468) (not e!564489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86532 (= res!671468 (validMask!0 mask!3464))))

(assert (=> start!86532 e!564489))

(declare-fun array_inv!23454 (array!63285) Bool)

(assert (=> start!86532 (array_inv!23454 a!3219)))

(assert (=> start!86532 true))

(declare-fun b!1001833 () Bool)

(assert (=> b!1001833 (= e!564489 e!564488)))

(declare-fun res!671462 () Bool)

(assert (=> b!1001833 (=> (not res!671462) (not e!564488))))

(declare-fun lt!442887 () SeekEntryResult!9396)

(assert (=> b!1001833 (= res!671462 (or (= lt!442887 (MissingVacant!9396 i!1194)) (= lt!442887 (MissingZero!9396 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63285 (_ BitVec 32)) SeekEntryResult!9396)

(assert (=> b!1001833 (= lt!442887 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1001834 () Bool)

(declare-fun res!671466 () Bool)

(assert (=> b!1001834 (=> (not res!671466) (not e!564489))))

(declare-fun arrayContainsKey!0 (array!63285 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001834 (= res!671466 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1001835 () Bool)

(declare-fun res!671463 () Bool)

(assert (=> b!1001835 (=> (not res!671463) (not e!564489))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001835 (= res!671463 (validKeyInArray!0 (select (arr!30464 a!3219) j!170)))))

(declare-fun b!1001836 () Bool)

(declare-fun res!671467 () Bool)

(assert (=> b!1001836 (=> (not res!671467) (not e!564489))))

(assert (=> b!1001836 (= res!671467 (validKeyInArray!0 k0!2224))))

(declare-fun b!1001837 () Bool)

(assert (=> b!1001837 (= e!564493 e!564490)))

(declare-fun res!671465 () Bool)

(assert (=> b!1001837 (=> (not res!671465) (not e!564490))))

(assert (=> b!1001837 (= res!671465 (= lt!442880 lt!442882))))

(assert (=> b!1001837 (= lt!442880 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30464 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001838 () Bool)

(declare-fun res!671461 () Bool)

(assert (=> b!1001838 (=> (not res!671461) (not e!564488))))

(declare-datatypes ((List!21266 0))(
  ( (Nil!21263) (Cons!21262 (h!22439 (_ BitVec 64)) (t!30275 List!21266)) )
))
(declare-fun arrayNoDuplicates!0 (array!63285 (_ BitVec 32) List!21266) Bool)

(assert (=> b!1001838 (= res!671461 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21263))))

(declare-fun b!1001839 () Bool)

(declare-fun res!671469 () Bool)

(assert (=> b!1001839 (=> (not res!671469) (not e!564488))))

(assert (=> b!1001839 (= res!671469 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30967 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30967 a!3219))))))

(declare-fun b!1001840 () Bool)

(declare-fun res!671470 () Bool)

(assert (=> b!1001840 (=> (not res!671470) (not e!564489))))

(assert (=> b!1001840 (= res!671470 (and (= (size!30967 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30967 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30967 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1001841 () Bool)

(assert (=> b!1001841 (= e!564494 false)))

(declare-fun lt!442885 () SeekEntryResult!9396)

(assert (=> b!1001841 (= lt!442885 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442886 lt!442884 lt!442881 mask!3464))))

(declare-fun b!1001842 () Bool)

(assert (=> b!1001842 (= e!564491 e!564494)))

(declare-fun res!671473 () Bool)

(assert (=> b!1001842 (=> (not res!671473) (not e!564494))))

(assert (=> b!1001842 (= res!671473 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!442886 #b00000000000000000000000000000000) (bvslt lt!442886 (size!30967 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001842 (= lt!442886 (nextIndex!0 index!1507 x!1245 mask!3464))))

(assert (= (and start!86532 res!671468) b!1001840))

(assert (= (and b!1001840 res!671470) b!1001835))

(assert (= (and b!1001835 res!671463) b!1001836))

(assert (= (and b!1001836 res!671467) b!1001834))

(assert (= (and b!1001834 res!671466) b!1001833))

(assert (= (and b!1001833 res!671462) b!1001829))

(assert (= (and b!1001829 res!671471) b!1001838))

(assert (= (and b!1001838 res!671461) b!1001839))

(assert (= (and b!1001839 res!671469) b!1001830))

(assert (= (and b!1001830 res!671474) b!1001837))

(assert (= (and b!1001837 res!671465) b!1001828))

(assert (= (and b!1001828 res!671464) b!1001832))

(assert (= (and b!1001832 res!671475) b!1001831))

(assert (= (and b!1001831 res!671472) b!1001842))

(assert (= (and b!1001842 res!671473) b!1001827))

(assert (= (and b!1001827 res!671476) b!1001841))

(declare-fun m!927901 () Bool)

(assert (=> b!1001842 m!927901))

(declare-fun m!927903 () Bool)

(assert (=> b!1001832 m!927903))

(declare-fun m!927905 () Bool)

(assert (=> b!1001836 m!927905))

(declare-fun m!927907 () Bool)

(assert (=> b!1001841 m!927907))

(declare-fun m!927909 () Bool)

(assert (=> b!1001834 m!927909))

(declare-fun m!927911 () Bool)

(assert (=> b!1001835 m!927911))

(assert (=> b!1001835 m!927911))

(declare-fun m!927913 () Bool)

(assert (=> b!1001835 m!927913))

(assert (=> b!1001827 m!927911))

(assert (=> b!1001827 m!927911))

(declare-fun m!927915 () Bool)

(assert (=> b!1001827 m!927915))

(assert (=> b!1001837 m!927911))

(assert (=> b!1001837 m!927911))

(declare-fun m!927917 () Bool)

(assert (=> b!1001837 m!927917))

(declare-fun m!927919 () Bool)

(assert (=> b!1001828 m!927919))

(assert (=> b!1001828 m!927919))

(declare-fun m!927921 () Bool)

(assert (=> b!1001828 m!927921))

(declare-fun m!927923 () Bool)

(assert (=> b!1001828 m!927923))

(declare-fun m!927925 () Bool)

(assert (=> b!1001828 m!927925))

(declare-fun m!927927 () Bool)

(assert (=> b!1001838 m!927927))

(declare-fun m!927929 () Bool)

(assert (=> start!86532 m!927929))

(declare-fun m!927931 () Bool)

(assert (=> start!86532 m!927931))

(declare-fun m!927933 () Bool)

(assert (=> b!1001829 m!927933))

(declare-fun m!927935 () Bool)

(assert (=> b!1001833 m!927935))

(assert (=> b!1001830 m!927911))

(assert (=> b!1001830 m!927911))

(declare-fun m!927937 () Bool)

(assert (=> b!1001830 m!927937))

(assert (=> b!1001830 m!927937))

(assert (=> b!1001830 m!927911))

(declare-fun m!927939 () Bool)

(assert (=> b!1001830 m!927939))

(check-sat (not b!1001827) (not b!1001834) (not start!86532) (not b!1001842) (not b!1001838) (not b!1001837) (not b!1001828) (not b!1001829) (not b!1001836) (not b!1001841) (not b!1001832) (not b!1001833) (not b!1001835) (not b!1001830))
(check-sat)

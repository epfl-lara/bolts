; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86430 () Bool)

(assert start!86430)

(declare-fun b!999818 () Bool)

(declare-fun e!563691 () Bool)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!999818 (= e!563691 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvsge index!1507 (bvadd #b00000000000000000000000000000001 mask!3464))))))

(declare-fun b!999819 () Bool)

(declare-fun res!669458 () Bool)

(declare-fun e!563692 () Bool)

(assert (=> b!999819 (=> (not res!669458) (not e!563692))))

(declare-datatypes ((array!63183 0))(
  ( (array!63184 (arr!30413 (Array (_ BitVec 32) (_ BitVec 64))) (size!30916 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63183)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!999819 (= res!669458 (and (= (size!30916 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30916 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30916 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!999820 () Bool)

(declare-fun res!669452 () Bool)

(assert (=> b!999820 (=> (not res!669452) (not e!563692))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63183 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!999820 (= res!669452 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!999821 () Bool)

(declare-fun res!669461 () Bool)

(declare-fun e!563693 () Bool)

(assert (=> b!999821 (=> (not res!669461) (not e!563693))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!999821 (= res!669461 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30916 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30916 a!3219))))))

(declare-fun b!999822 () Bool)

(declare-fun res!669456 () Bool)

(assert (=> b!999822 (=> (not res!669456) (not e!563691))))

(declare-datatypes ((SeekEntryResult!9345 0))(
  ( (MissingZero!9345 (index!39750 (_ BitVec 32))) (Found!9345 (index!39751 (_ BitVec 32))) (Intermediate!9345 (undefined!10157 Bool) (index!39752 (_ BitVec 32)) (x!87214 (_ BitVec 32))) (Undefined!9345) (MissingVacant!9345 (index!39753 (_ BitVec 32))) )
))
(declare-fun lt!442109 () SeekEntryResult!9345)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63183 (_ BitVec 32)) SeekEntryResult!9345)

(assert (=> b!999822 (= res!669456 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30413 a!3219) j!170) a!3219 mask!3464) lt!442109))))

(declare-fun b!999823 () Bool)

(assert (=> b!999823 (= e!563693 e!563691)))

(declare-fun res!669455 () Bool)

(assert (=> b!999823 (=> (not res!669455) (not e!563691))))

(declare-fun lt!442110 () SeekEntryResult!9345)

(assert (=> b!999823 (= res!669455 (= lt!442110 lt!442109))))

(assert (=> b!999823 (= lt!442109 (Intermediate!9345 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999823 (= lt!442110 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30413 a!3219) j!170) mask!3464) (select (arr!30413 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!999824 () Bool)

(declare-fun res!669463 () Bool)

(assert (=> b!999824 (=> (not res!669463) (not e!563692))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999824 (= res!669463 (validKeyInArray!0 (select (arr!30413 a!3219) j!170)))))

(declare-fun b!999825 () Bool)

(declare-fun res!669460 () Bool)

(assert (=> b!999825 (=> (not res!669460) (not e!563691))))

(assert (=> b!999825 (= res!669460 (not (= lt!442110 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30413 a!3219) i!1194 k0!2224) j!170) mask!3464) (select (store (arr!30413 a!3219) i!1194 k0!2224) j!170) (array!63184 (store (arr!30413 a!3219) i!1194 k0!2224) (size!30916 a!3219)) mask!3464))))))

(declare-fun b!999826 () Bool)

(assert (=> b!999826 (= e!563692 e!563693)))

(declare-fun res!669454 () Bool)

(assert (=> b!999826 (=> (not res!669454) (not e!563693))))

(declare-fun lt!442108 () SeekEntryResult!9345)

(assert (=> b!999826 (= res!669454 (or (= lt!442108 (MissingVacant!9345 i!1194)) (= lt!442108 (MissingZero!9345 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63183 (_ BitVec 32)) SeekEntryResult!9345)

(assert (=> b!999826 (= lt!442108 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!999828 () Bool)

(declare-fun res!669453 () Bool)

(assert (=> b!999828 (=> (not res!669453) (not e!563692))))

(assert (=> b!999828 (= res!669453 (validKeyInArray!0 k0!2224))))

(declare-fun b!999829 () Bool)

(declare-fun res!669462 () Bool)

(assert (=> b!999829 (=> (not res!669462) (not e!563693))))

(declare-datatypes ((List!21215 0))(
  ( (Nil!21212) (Cons!21211 (h!22388 (_ BitVec 64)) (t!30224 List!21215)) )
))
(declare-fun arrayNoDuplicates!0 (array!63183 (_ BitVec 32) List!21215) Bool)

(assert (=> b!999829 (= res!669462 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21212))))

(declare-fun b!999827 () Bool)

(declare-fun res!669457 () Bool)

(assert (=> b!999827 (=> (not res!669457) (not e!563693))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63183 (_ BitVec 32)) Bool)

(assert (=> b!999827 (= res!669457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!669459 () Bool)

(assert (=> start!86430 (=> (not res!669459) (not e!563692))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86430 (= res!669459 (validMask!0 mask!3464))))

(assert (=> start!86430 e!563692))

(declare-fun array_inv!23403 (array!63183) Bool)

(assert (=> start!86430 (array_inv!23403 a!3219)))

(assert (=> start!86430 true))

(assert (= (and start!86430 res!669459) b!999819))

(assert (= (and b!999819 res!669458) b!999824))

(assert (= (and b!999824 res!669463) b!999828))

(assert (= (and b!999828 res!669453) b!999820))

(assert (= (and b!999820 res!669452) b!999826))

(assert (= (and b!999826 res!669454) b!999827))

(assert (= (and b!999827 res!669457) b!999829))

(assert (= (and b!999829 res!669462) b!999821))

(assert (= (and b!999821 res!669461) b!999823))

(assert (= (and b!999823 res!669455) b!999822))

(assert (= (and b!999822 res!669456) b!999825))

(assert (= (and b!999825 res!669460) b!999818))

(declare-fun m!926135 () Bool)

(assert (=> start!86430 m!926135))

(declare-fun m!926137 () Bool)

(assert (=> start!86430 m!926137))

(declare-fun m!926139 () Bool)

(assert (=> b!999826 m!926139))

(declare-fun m!926141 () Bool)

(assert (=> b!999827 m!926141))

(declare-fun m!926143 () Bool)

(assert (=> b!999824 m!926143))

(assert (=> b!999824 m!926143))

(declare-fun m!926145 () Bool)

(assert (=> b!999824 m!926145))

(declare-fun m!926147 () Bool)

(assert (=> b!999829 m!926147))

(declare-fun m!926149 () Bool)

(assert (=> b!999820 m!926149))

(declare-fun m!926151 () Bool)

(assert (=> b!999828 m!926151))

(assert (=> b!999822 m!926143))

(assert (=> b!999822 m!926143))

(declare-fun m!926153 () Bool)

(assert (=> b!999822 m!926153))

(declare-fun m!926155 () Bool)

(assert (=> b!999825 m!926155))

(declare-fun m!926157 () Bool)

(assert (=> b!999825 m!926157))

(assert (=> b!999825 m!926157))

(declare-fun m!926159 () Bool)

(assert (=> b!999825 m!926159))

(assert (=> b!999825 m!926159))

(assert (=> b!999825 m!926157))

(declare-fun m!926161 () Bool)

(assert (=> b!999825 m!926161))

(assert (=> b!999823 m!926143))

(assert (=> b!999823 m!926143))

(declare-fun m!926163 () Bool)

(assert (=> b!999823 m!926163))

(assert (=> b!999823 m!926163))

(assert (=> b!999823 m!926143))

(declare-fun m!926165 () Bool)

(assert (=> b!999823 m!926165))

(check-sat (not b!999827) (not b!999823) (not start!86430) (not b!999822) (not b!999828) (not b!999824) (not b!999829) (not b!999825) (not b!999820) (not b!999826))
(check-sat)

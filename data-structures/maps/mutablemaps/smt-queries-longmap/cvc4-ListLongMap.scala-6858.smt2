; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86438 () Bool)

(assert start!86438)

(declare-fun b!999962 () Bool)

(declare-fun res!669607 () Bool)

(declare-fun e!563740 () Bool)

(assert (=> b!999962 (=> (not res!669607) (not e!563740))))

(declare-datatypes ((array!63191 0))(
  ( (array!63192 (arr!30417 (Array (_ BitVec 32) (_ BitVec 64))) (size!30920 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63191)

(declare-datatypes ((List!21219 0))(
  ( (Nil!21216) (Cons!21215 (h!22392 (_ BitVec 64)) (t!30228 List!21219)) )
))
(declare-fun arrayNoDuplicates!0 (array!63191 (_ BitVec 32) List!21219) Bool)

(assert (=> b!999962 (= res!669607 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21216))))

(declare-fun b!999963 () Bool)

(declare-fun res!669597 () Bool)

(declare-fun e!563739 () Bool)

(assert (=> b!999963 (=> (not res!669597) (not e!563739))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9349 0))(
  ( (MissingZero!9349 (index!39766 (_ BitVec 32))) (Found!9349 (index!39767 (_ BitVec 32))) (Intermediate!9349 (undefined!10161 Bool) (index!39768 (_ BitVec 32)) (x!87226 (_ BitVec 32))) (Undefined!9349) (MissingVacant!9349 (index!39769 (_ BitVec 32))) )
))
(declare-fun lt!442146 () SeekEntryResult!9349)

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63191 (_ BitVec 32)) SeekEntryResult!9349)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999963 (= res!669597 (not (= lt!442146 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30417 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30417 a!3219) i!1194 k!2224) j!170) (array!63192 (store (arr!30417 a!3219) i!1194 k!2224) (size!30920 a!3219)) mask!3464))))))

(declare-fun b!999964 () Bool)

(declare-fun res!669599 () Bool)

(declare-fun e!563738 () Bool)

(assert (=> b!999964 (=> (not res!669599) (not e!563738))))

(declare-fun arrayContainsKey!0 (array!63191 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!999964 (= res!669599 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!999965 () Bool)

(declare-fun res!669603 () Bool)

(assert (=> b!999965 (=> (not res!669603) (not e!563740))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!999965 (= res!669603 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30920 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30920 a!3219))))))

(declare-fun b!999966 () Bool)

(declare-fun res!669596 () Bool)

(assert (=> b!999966 (=> (not res!669596) (not e!563738))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999966 (= res!669596 (validKeyInArray!0 (select (arr!30417 a!3219) j!170)))))

(declare-fun b!999967 () Bool)

(declare-fun res!669602 () Bool)

(assert (=> b!999967 (=> (not res!669602) (not e!563738))))

(assert (=> b!999967 (= res!669602 (validKeyInArray!0 k!2224))))

(declare-fun b!999968 () Bool)

(assert (=> b!999968 (= e!563739 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvslt index!1507 (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsgt x!1245 #b01111111111111111111111111111110)))))

(declare-fun b!999969 () Bool)

(declare-fun res!669598 () Bool)

(assert (=> b!999969 (=> (not res!669598) (not e!563739))))

(declare-fun lt!442144 () SeekEntryResult!9349)

(assert (=> b!999969 (= res!669598 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30417 a!3219) j!170) a!3219 mask!3464) lt!442144))))

(declare-fun res!669604 () Bool)

(assert (=> start!86438 (=> (not res!669604) (not e!563738))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86438 (= res!669604 (validMask!0 mask!3464))))

(assert (=> start!86438 e!563738))

(declare-fun array_inv!23407 (array!63191) Bool)

(assert (=> start!86438 (array_inv!23407 a!3219)))

(assert (=> start!86438 true))

(declare-fun b!999970 () Bool)

(assert (=> b!999970 (= e!563738 e!563740)))

(declare-fun res!669605 () Bool)

(assert (=> b!999970 (=> (not res!669605) (not e!563740))))

(declare-fun lt!442145 () SeekEntryResult!9349)

(assert (=> b!999970 (= res!669605 (or (= lt!442145 (MissingVacant!9349 i!1194)) (= lt!442145 (MissingZero!9349 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63191 (_ BitVec 32)) SeekEntryResult!9349)

(assert (=> b!999970 (= lt!442145 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!999971 () Bool)

(declare-fun res!669601 () Bool)

(assert (=> b!999971 (=> (not res!669601) (not e!563738))))

(assert (=> b!999971 (= res!669601 (and (= (size!30920 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30920 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30920 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!999972 () Bool)

(declare-fun res!669606 () Bool)

(assert (=> b!999972 (=> (not res!669606) (not e!563740))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63191 (_ BitVec 32)) Bool)

(assert (=> b!999972 (= res!669606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!999973 () Bool)

(assert (=> b!999973 (= e!563740 e!563739)))

(declare-fun res!669600 () Bool)

(assert (=> b!999973 (=> (not res!669600) (not e!563739))))

(assert (=> b!999973 (= res!669600 (= lt!442146 lt!442144))))

(assert (=> b!999973 (= lt!442144 (Intermediate!9349 false resIndex!38 resX!38))))

(assert (=> b!999973 (= lt!442146 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30417 a!3219) j!170) mask!3464) (select (arr!30417 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and start!86438 res!669604) b!999971))

(assert (= (and b!999971 res!669601) b!999966))

(assert (= (and b!999966 res!669596) b!999967))

(assert (= (and b!999967 res!669602) b!999964))

(assert (= (and b!999964 res!669599) b!999970))

(assert (= (and b!999970 res!669605) b!999972))

(assert (= (and b!999972 res!669606) b!999962))

(assert (= (and b!999962 res!669607) b!999965))

(assert (= (and b!999965 res!669603) b!999973))

(assert (= (and b!999973 res!669600) b!999969))

(assert (= (and b!999969 res!669598) b!999963))

(assert (= (and b!999963 res!669597) b!999968))

(declare-fun m!926263 () Bool)

(assert (=> b!999963 m!926263))

(declare-fun m!926265 () Bool)

(assert (=> b!999963 m!926265))

(assert (=> b!999963 m!926265))

(declare-fun m!926267 () Bool)

(assert (=> b!999963 m!926267))

(assert (=> b!999963 m!926267))

(assert (=> b!999963 m!926265))

(declare-fun m!926269 () Bool)

(assert (=> b!999963 m!926269))

(declare-fun m!926271 () Bool)

(assert (=> b!999970 m!926271))

(declare-fun m!926273 () Bool)

(assert (=> b!999967 m!926273))

(declare-fun m!926275 () Bool)

(assert (=> b!999966 m!926275))

(assert (=> b!999966 m!926275))

(declare-fun m!926277 () Bool)

(assert (=> b!999966 m!926277))

(declare-fun m!926279 () Bool)

(assert (=> b!999962 m!926279))

(declare-fun m!926281 () Bool)

(assert (=> start!86438 m!926281))

(declare-fun m!926283 () Bool)

(assert (=> start!86438 m!926283))

(assert (=> b!999973 m!926275))

(assert (=> b!999973 m!926275))

(declare-fun m!926285 () Bool)

(assert (=> b!999973 m!926285))

(assert (=> b!999973 m!926285))

(assert (=> b!999973 m!926275))

(declare-fun m!926287 () Bool)

(assert (=> b!999973 m!926287))

(declare-fun m!926289 () Bool)

(assert (=> b!999964 m!926289))

(declare-fun m!926291 () Bool)

(assert (=> b!999972 m!926291))

(assert (=> b!999969 m!926275))

(assert (=> b!999969 m!926275))

(declare-fun m!926293 () Bool)

(assert (=> b!999969 m!926293))

(push 1)

(assert (not b!999962))

(assert (not b!999970))

(assert (not b!999964))

(assert (not b!999963))

(assert (not b!999969))


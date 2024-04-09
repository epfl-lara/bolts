; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86460 () Bool)

(assert start!86460)

(declare-fun b!1000335 () Bool)

(declare-fun res!669979 () Bool)

(declare-fun e!563873 () Bool)

(assert (=> b!1000335 (=> (not res!669979) (not e!563873))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000335 (= res!669979 (validKeyInArray!0 k0!2224))))

(declare-fun b!1000336 () Bool)

(declare-fun res!669970 () Bool)

(declare-fun e!563872 () Bool)

(assert (=> b!1000336 (=> (not res!669970) (not e!563872))))

(declare-datatypes ((array!63213 0))(
  ( (array!63214 (arr!30428 (Array (_ BitVec 32) (_ BitVec 64))) (size!30931 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63213)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9360 0))(
  ( (MissingZero!9360 (index!39810 (_ BitVec 32))) (Found!9360 (index!39811 (_ BitVec 32))) (Intermediate!9360 (undefined!10172 Bool) (index!39812 (_ BitVec 32)) (x!87269 (_ BitVec 32))) (Undefined!9360) (MissingVacant!9360 (index!39813 (_ BitVec 32))) )
))
(declare-fun lt!442244 () SeekEntryResult!9360)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63213 (_ BitVec 32)) SeekEntryResult!9360)

(assert (=> b!1000336 (= res!669970 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30428 a!3219) j!170) a!3219 mask!3464) lt!442244))))

(declare-fun b!1000337 () Bool)

(declare-fun res!669977 () Bool)

(declare-fun e!563870 () Bool)

(assert (=> b!1000337 (=> (not res!669977) (not e!563870))))

(declare-datatypes ((List!21230 0))(
  ( (Nil!21227) (Cons!21226 (h!22403 (_ BitVec 64)) (t!30239 List!21230)) )
))
(declare-fun arrayNoDuplicates!0 (array!63213 (_ BitVec 32) List!21230) Bool)

(assert (=> b!1000337 (= res!669977 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21227))))

(declare-fun b!1000338 () Bool)

(assert (=> b!1000338 (= e!563872 false)))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun lt!442245 () SeekEntryResult!9360)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000338 (= lt!442245 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30428 a!3219) i!1194 k0!2224) j!170) mask!3464) (select (store (arr!30428 a!3219) i!1194 k0!2224) j!170) (array!63214 (store (arr!30428 a!3219) i!1194 k0!2224) (size!30931 a!3219)) mask!3464))))

(declare-fun b!1000339 () Bool)

(declare-fun res!669976 () Bool)

(assert (=> b!1000339 (=> (not res!669976) (not e!563870))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63213 (_ BitVec 32)) Bool)

(assert (=> b!1000339 (= res!669976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!669971 () Bool)

(assert (=> start!86460 (=> (not res!669971) (not e!563873))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86460 (= res!669971 (validMask!0 mask!3464))))

(assert (=> start!86460 e!563873))

(declare-fun array_inv!23418 (array!63213) Bool)

(assert (=> start!86460 (array_inv!23418 a!3219)))

(assert (=> start!86460 true))

(declare-fun b!1000340 () Bool)

(assert (=> b!1000340 (= e!563870 e!563872)))

(declare-fun res!669972 () Bool)

(assert (=> b!1000340 (=> (not res!669972) (not e!563872))))

(assert (=> b!1000340 (= res!669972 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30428 a!3219) j!170) mask!3464) (select (arr!30428 a!3219) j!170) a!3219 mask!3464) lt!442244))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000340 (= lt!442244 (Intermediate!9360 false resIndex!38 resX!38))))

(declare-fun b!1000341 () Bool)

(declare-fun res!669978 () Bool)

(assert (=> b!1000341 (=> (not res!669978) (not e!563873))))

(assert (=> b!1000341 (= res!669978 (and (= (size!30931 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30931 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30931 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000342 () Bool)

(declare-fun res!669973 () Bool)

(assert (=> b!1000342 (=> (not res!669973) (not e!563873))))

(declare-fun arrayContainsKey!0 (array!63213 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000342 (= res!669973 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000343 () Bool)

(assert (=> b!1000343 (= e!563873 e!563870)))

(declare-fun res!669975 () Bool)

(assert (=> b!1000343 (=> (not res!669975) (not e!563870))))

(declare-fun lt!442243 () SeekEntryResult!9360)

(assert (=> b!1000343 (= res!669975 (or (= lt!442243 (MissingVacant!9360 i!1194)) (= lt!442243 (MissingZero!9360 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63213 (_ BitVec 32)) SeekEntryResult!9360)

(assert (=> b!1000343 (= lt!442243 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1000344 () Bool)

(declare-fun res!669969 () Bool)

(assert (=> b!1000344 (=> (not res!669969) (not e!563870))))

(assert (=> b!1000344 (= res!669969 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30931 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30931 a!3219))))))

(declare-fun b!1000345 () Bool)

(declare-fun res!669974 () Bool)

(assert (=> b!1000345 (=> (not res!669974) (not e!563873))))

(assert (=> b!1000345 (= res!669974 (validKeyInArray!0 (select (arr!30428 a!3219) j!170)))))

(assert (= (and start!86460 res!669971) b!1000341))

(assert (= (and b!1000341 res!669978) b!1000345))

(assert (= (and b!1000345 res!669974) b!1000335))

(assert (= (and b!1000335 res!669979) b!1000342))

(assert (= (and b!1000342 res!669973) b!1000343))

(assert (= (and b!1000343 res!669975) b!1000339))

(assert (= (and b!1000339 res!669976) b!1000337))

(assert (= (and b!1000337 res!669977) b!1000344))

(assert (= (and b!1000344 res!669969) b!1000340))

(assert (= (and b!1000340 res!669972) b!1000336))

(assert (= (and b!1000336 res!669970) b!1000338))

(declare-fun m!926615 () Bool)

(assert (=> b!1000342 m!926615))

(declare-fun m!926617 () Bool)

(assert (=> b!1000338 m!926617))

(declare-fun m!926619 () Bool)

(assert (=> b!1000338 m!926619))

(assert (=> b!1000338 m!926619))

(declare-fun m!926621 () Bool)

(assert (=> b!1000338 m!926621))

(assert (=> b!1000338 m!926621))

(assert (=> b!1000338 m!926619))

(declare-fun m!926623 () Bool)

(assert (=> b!1000338 m!926623))

(declare-fun m!926625 () Bool)

(assert (=> b!1000336 m!926625))

(assert (=> b!1000336 m!926625))

(declare-fun m!926627 () Bool)

(assert (=> b!1000336 m!926627))

(assert (=> b!1000340 m!926625))

(assert (=> b!1000340 m!926625))

(declare-fun m!926629 () Bool)

(assert (=> b!1000340 m!926629))

(assert (=> b!1000340 m!926629))

(assert (=> b!1000340 m!926625))

(declare-fun m!926631 () Bool)

(assert (=> b!1000340 m!926631))

(declare-fun m!926633 () Bool)

(assert (=> b!1000339 m!926633))

(declare-fun m!926635 () Bool)

(assert (=> start!86460 m!926635))

(declare-fun m!926637 () Bool)

(assert (=> start!86460 m!926637))

(declare-fun m!926639 () Bool)

(assert (=> b!1000335 m!926639))

(declare-fun m!926641 () Bool)

(assert (=> b!1000343 m!926641))

(declare-fun m!926643 () Bool)

(assert (=> b!1000337 m!926643))

(assert (=> b!1000345 m!926625))

(assert (=> b!1000345 m!926625))

(declare-fun m!926645 () Bool)

(assert (=> b!1000345 m!926645))

(check-sat (not b!1000336) (not b!1000342) (not b!1000338) (not b!1000345) (not b!1000335) (not start!86460) (not b!1000339) (not b!1000343) (not b!1000337) (not b!1000340))
(check-sat)

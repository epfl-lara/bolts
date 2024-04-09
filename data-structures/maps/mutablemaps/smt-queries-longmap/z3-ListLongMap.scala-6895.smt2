; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86766 () Bool)

(assert start!86766)

(declare-fun b!1005311 () Bool)

(declare-fun res!674557 () Bool)

(declare-fun e!566133 () Bool)

(assert (=> b!1005311 (=> (not res!674557) (not e!566133))))

(declare-datatypes ((array!63417 0))(
  ( (array!63418 (arr!30527 (Array (_ BitVec 32) (_ BitVec 64))) (size!31030 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63417)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005311 (= res!674557 (validKeyInArray!0 (select (arr!30527 a!3219) j!170)))))

(declare-fun b!1005312 () Bool)

(declare-fun res!674558 () Bool)

(declare-fun e!566134 () Bool)

(assert (=> b!1005312 (=> (not res!674558) (not e!566134))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63417 (_ BitVec 32)) Bool)

(assert (=> b!1005312 (= res!674558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1005313 () Bool)

(declare-fun res!674561 () Bool)

(assert (=> b!1005313 (=> (not res!674561) (not e!566134))))

(declare-datatypes ((List!21329 0))(
  ( (Nil!21326) (Cons!21325 (h!22508 (_ BitVec 64)) (t!30338 List!21329)) )
))
(declare-fun arrayNoDuplicates!0 (array!63417 (_ BitVec 32) List!21329) Bool)

(assert (=> b!1005313 (= res!674561 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21326))))

(declare-fun b!1005314 () Bool)

(assert (=> b!1005314 (= e!566133 e!566134)))

(declare-fun res!674555 () Bool)

(assert (=> b!1005314 (=> (not res!674555) (not e!566134))))

(declare-datatypes ((SeekEntryResult!9459 0))(
  ( (MissingZero!9459 (index!40206 (_ BitVec 32))) (Found!9459 (index!40207 (_ BitVec 32))) (Intermediate!9459 (undefined!10271 Bool) (index!40208 (_ BitVec 32)) (x!87644 (_ BitVec 32))) (Undefined!9459) (MissingVacant!9459 (index!40209 (_ BitVec 32))) )
))
(declare-fun lt!444501 () SeekEntryResult!9459)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005314 (= res!674555 (or (= lt!444501 (MissingVacant!9459 i!1194)) (= lt!444501 (MissingZero!9459 i!1194))))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63417 (_ BitVec 32)) SeekEntryResult!9459)

(assert (=> b!1005314 (= lt!444501 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1005315 () Bool)

(declare-fun res!674562 () Bool)

(assert (=> b!1005315 (=> (not res!674562) (not e!566133))))

(declare-fun arrayContainsKey!0 (array!63417 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005315 (= res!674562 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1005316 () Bool)

(declare-fun res!674563 () Bool)

(assert (=> b!1005316 (=> (not res!674563) (not e!566134))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1005316 (= res!674563 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31030 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31030 a!3219))))))

(declare-fun b!1005317 () Bool)

(declare-fun res!674560 () Bool)

(assert (=> b!1005317 (=> (not res!674560) (not e!566133))))

(assert (=> b!1005317 (= res!674560 (validKeyInArray!0 k0!2224))))

(declare-fun res!674559 () Bool)

(assert (=> start!86766 (=> (not res!674559) (not e!566133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86766 (= res!674559 (validMask!0 mask!3464))))

(assert (=> start!86766 e!566133))

(declare-fun array_inv!23517 (array!63417) Bool)

(assert (=> start!86766 (array_inv!23517 a!3219)))

(assert (=> start!86766 true))

(declare-fun b!1005318 () Bool)

(assert (=> b!1005318 (= e!566134 false)))

(declare-fun lt!444500 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005318 (= lt!444500 (toIndex!0 (select (arr!30527 a!3219) j!170) mask!3464))))

(declare-fun b!1005319 () Bool)

(declare-fun res!674556 () Bool)

(assert (=> b!1005319 (=> (not res!674556) (not e!566133))))

(assert (=> b!1005319 (= res!674556 (and (= (size!31030 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31030 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31030 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86766 res!674559) b!1005319))

(assert (= (and b!1005319 res!674556) b!1005311))

(assert (= (and b!1005311 res!674557) b!1005317))

(assert (= (and b!1005317 res!674560) b!1005315))

(assert (= (and b!1005315 res!674562) b!1005314))

(assert (= (and b!1005314 res!674555) b!1005312))

(assert (= (and b!1005312 res!674558) b!1005313))

(assert (= (and b!1005313 res!674561) b!1005316))

(assert (= (and b!1005316 res!674563) b!1005318))

(declare-fun m!930671 () Bool)

(assert (=> b!1005317 m!930671))

(declare-fun m!930673 () Bool)

(assert (=> b!1005314 m!930673))

(declare-fun m!930675 () Bool)

(assert (=> b!1005311 m!930675))

(assert (=> b!1005311 m!930675))

(declare-fun m!930677 () Bool)

(assert (=> b!1005311 m!930677))

(declare-fun m!930679 () Bool)

(assert (=> start!86766 m!930679))

(declare-fun m!930681 () Bool)

(assert (=> start!86766 m!930681))

(assert (=> b!1005318 m!930675))

(assert (=> b!1005318 m!930675))

(declare-fun m!930683 () Bool)

(assert (=> b!1005318 m!930683))

(declare-fun m!930685 () Bool)

(assert (=> b!1005312 m!930685))

(declare-fun m!930687 () Bool)

(assert (=> b!1005313 m!930687))

(declare-fun m!930689 () Bool)

(assert (=> b!1005315 m!930689))

(check-sat (not b!1005311) (not b!1005312) (not b!1005313) (not b!1005315) (not b!1005318) (not b!1005314) (not b!1005317) (not start!86766))
(check-sat)

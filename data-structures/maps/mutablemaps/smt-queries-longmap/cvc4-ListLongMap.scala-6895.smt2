; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86768 () Bool)

(assert start!86768)

(declare-fun res!674584 () Bool)

(declare-fun e!566142 () Bool)

(assert (=> start!86768 (=> (not res!674584) (not e!566142))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86768 (= res!674584 (validMask!0 mask!3464))))

(assert (=> start!86768 e!566142))

(declare-datatypes ((array!63419 0))(
  ( (array!63420 (arr!30528 (Array (_ BitVec 32) (_ BitVec 64))) (size!31031 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63419)

(declare-fun array_inv!23518 (array!63419) Bool)

(assert (=> start!86768 (array_inv!23518 a!3219)))

(assert (=> start!86768 true))

(declare-fun b!1005338 () Bool)

(declare-fun res!674589 () Bool)

(declare-fun e!566144 () Bool)

(assert (=> b!1005338 (=> (not res!674589) (not e!566144))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63419 (_ BitVec 32)) Bool)

(assert (=> b!1005338 (= res!674589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1005339 () Bool)

(assert (=> b!1005339 (= e!566144 false)))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!444507 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005339 (= lt!444507 (toIndex!0 (select (arr!30528 a!3219) j!170) mask!3464))))

(declare-fun b!1005340 () Bool)

(declare-fun res!674583 () Bool)

(assert (=> b!1005340 (=> (not res!674583) (not e!566142))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005340 (= res!674583 (validKeyInArray!0 k!2224))))

(declare-fun b!1005341 () Bool)

(declare-fun res!674582 () Bool)

(assert (=> b!1005341 (=> (not res!674582) (not e!566142))))

(declare-fun arrayContainsKey!0 (array!63419 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005341 (= res!674582 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1005342 () Bool)

(declare-fun res!674588 () Bool)

(assert (=> b!1005342 (=> (not res!674588) (not e!566144))))

(declare-datatypes ((List!21330 0))(
  ( (Nil!21327) (Cons!21326 (h!22509 (_ BitVec 64)) (t!30339 List!21330)) )
))
(declare-fun arrayNoDuplicates!0 (array!63419 (_ BitVec 32) List!21330) Bool)

(assert (=> b!1005342 (= res!674588 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21327))))

(declare-fun b!1005343 () Bool)

(declare-fun res!674585 () Bool)

(assert (=> b!1005343 (=> (not res!674585) (not e!566142))))

(assert (=> b!1005343 (= res!674585 (validKeyInArray!0 (select (arr!30528 a!3219) j!170)))))

(declare-fun b!1005344 () Bool)

(assert (=> b!1005344 (= e!566142 e!566144)))

(declare-fun res!674590 () Bool)

(assert (=> b!1005344 (=> (not res!674590) (not e!566144))))

(declare-datatypes ((SeekEntryResult!9460 0))(
  ( (MissingZero!9460 (index!40210 (_ BitVec 32))) (Found!9460 (index!40211 (_ BitVec 32))) (Intermediate!9460 (undefined!10272 Bool) (index!40212 (_ BitVec 32)) (x!87645 (_ BitVec 32))) (Undefined!9460) (MissingVacant!9460 (index!40213 (_ BitVec 32))) )
))
(declare-fun lt!444506 () SeekEntryResult!9460)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005344 (= res!674590 (or (= lt!444506 (MissingVacant!9460 i!1194)) (= lt!444506 (MissingZero!9460 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63419 (_ BitVec 32)) SeekEntryResult!9460)

(assert (=> b!1005344 (= lt!444506 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1005345 () Bool)

(declare-fun res!674587 () Bool)

(assert (=> b!1005345 (=> (not res!674587) (not e!566142))))

(assert (=> b!1005345 (= res!674587 (and (= (size!31031 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31031 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31031 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1005346 () Bool)

(declare-fun res!674586 () Bool)

(assert (=> b!1005346 (=> (not res!674586) (not e!566144))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1005346 (= res!674586 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31031 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31031 a!3219))))))

(assert (= (and start!86768 res!674584) b!1005345))

(assert (= (and b!1005345 res!674587) b!1005343))

(assert (= (and b!1005343 res!674585) b!1005340))

(assert (= (and b!1005340 res!674583) b!1005341))

(assert (= (and b!1005341 res!674582) b!1005344))

(assert (= (and b!1005344 res!674590) b!1005338))

(assert (= (and b!1005338 res!674589) b!1005342))

(assert (= (and b!1005342 res!674588) b!1005346))

(assert (= (and b!1005346 res!674586) b!1005339))

(declare-fun m!930691 () Bool)

(assert (=> b!1005340 m!930691))

(declare-fun m!930693 () Bool)

(assert (=> b!1005341 m!930693))

(declare-fun m!930695 () Bool)

(assert (=> start!86768 m!930695))

(declare-fun m!930697 () Bool)

(assert (=> start!86768 m!930697))

(declare-fun m!930699 () Bool)

(assert (=> b!1005344 m!930699))

(declare-fun m!930701 () Bool)

(assert (=> b!1005338 m!930701))

(declare-fun m!930703 () Bool)

(assert (=> b!1005343 m!930703))

(assert (=> b!1005343 m!930703))

(declare-fun m!930705 () Bool)

(assert (=> b!1005343 m!930705))

(declare-fun m!930707 () Bool)

(assert (=> b!1005342 m!930707))

(assert (=> b!1005339 m!930703))

(assert (=> b!1005339 m!930703))

(declare-fun m!930709 () Bool)

(assert (=> b!1005339 m!930709))

(push 1)

(assert (not b!1005344))

(assert (not b!1005342))

(assert (not b!1005338))

(assert (not b!1005341))

(assert (not b!1005343))

(assert (not start!86768))

(assert (not b!1005340))

(assert (not b!1005339))

(check-sat)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86760 () Bool)

(assert start!86760)

(declare-fun b!1005238 () Bool)

(declare-fun res!674485 () Bool)

(declare-fun e!566106 () Bool)

(assert (=> b!1005238 (=> (not res!674485) (not e!566106))))

(declare-datatypes ((array!63411 0))(
  ( (array!63412 (arr!30524 (Array (_ BitVec 32) (_ BitVec 64))) (size!31027 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63411)

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63411 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005238 (= res!674485 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun res!674486 () Bool)

(assert (=> start!86760 (=> (not res!674486) (not e!566106))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86760 (= res!674486 (validMask!0 mask!3464))))

(assert (=> start!86760 e!566106))

(declare-fun array_inv!23514 (array!63411) Bool)

(assert (=> start!86760 (array_inv!23514 a!3219)))

(assert (=> start!86760 true))

(declare-fun b!1005239 () Bool)

(declare-fun e!566108 () Bool)

(assert (=> b!1005239 (= e!566108 false)))

(declare-fun lt!444482 () Bool)

(declare-datatypes ((List!21326 0))(
  ( (Nil!21323) (Cons!21322 (h!22505 (_ BitVec 64)) (t!30335 List!21326)) )
))
(declare-fun arrayNoDuplicates!0 (array!63411 (_ BitVec 32) List!21326) Bool)

(assert (=> b!1005239 (= lt!444482 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21323))))

(declare-fun b!1005240 () Bool)

(declare-fun res!674483 () Bool)

(assert (=> b!1005240 (=> (not res!674483) (not e!566108))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63411 (_ BitVec 32)) Bool)

(assert (=> b!1005240 (= res!674483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1005241 () Bool)

(declare-fun res!674484 () Bool)

(assert (=> b!1005241 (=> (not res!674484) (not e!566106))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005241 (= res!674484 (and (= (size!31027 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31027 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31027 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1005242 () Bool)

(declare-fun res!674487 () Bool)

(assert (=> b!1005242 (=> (not res!674487) (not e!566106))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005242 (= res!674487 (validKeyInArray!0 (select (arr!30524 a!3219) j!170)))))

(declare-fun b!1005243 () Bool)

(declare-fun res!674482 () Bool)

(assert (=> b!1005243 (=> (not res!674482) (not e!566106))))

(assert (=> b!1005243 (= res!674482 (validKeyInArray!0 k0!2224))))

(declare-fun b!1005244 () Bool)

(assert (=> b!1005244 (= e!566106 e!566108)))

(declare-fun res!674488 () Bool)

(assert (=> b!1005244 (=> (not res!674488) (not e!566108))))

(declare-datatypes ((SeekEntryResult!9456 0))(
  ( (MissingZero!9456 (index!40194 (_ BitVec 32))) (Found!9456 (index!40195 (_ BitVec 32))) (Intermediate!9456 (undefined!10268 Bool) (index!40196 (_ BitVec 32)) (x!87633 (_ BitVec 32))) (Undefined!9456) (MissingVacant!9456 (index!40197 (_ BitVec 32))) )
))
(declare-fun lt!444483 () SeekEntryResult!9456)

(assert (=> b!1005244 (= res!674488 (or (= lt!444483 (MissingVacant!9456 i!1194)) (= lt!444483 (MissingZero!9456 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63411 (_ BitVec 32)) SeekEntryResult!9456)

(assert (=> b!1005244 (= lt!444483 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(assert (= (and start!86760 res!674486) b!1005241))

(assert (= (and b!1005241 res!674484) b!1005242))

(assert (= (and b!1005242 res!674487) b!1005243))

(assert (= (and b!1005243 res!674482) b!1005238))

(assert (= (and b!1005238 res!674485) b!1005244))

(assert (= (and b!1005244 res!674488) b!1005240))

(assert (= (and b!1005240 res!674483) b!1005239))

(declare-fun m!930615 () Bool)

(assert (=> b!1005242 m!930615))

(assert (=> b!1005242 m!930615))

(declare-fun m!930617 () Bool)

(assert (=> b!1005242 m!930617))

(declare-fun m!930619 () Bool)

(assert (=> b!1005243 m!930619))

(declare-fun m!930621 () Bool)

(assert (=> start!86760 m!930621))

(declare-fun m!930623 () Bool)

(assert (=> start!86760 m!930623))

(declare-fun m!930625 () Bool)

(assert (=> b!1005238 m!930625))

(declare-fun m!930627 () Bool)

(assert (=> b!1005239 m!930627))

(declare-fun m!930629 () Bool)

(assert (=> b!1005240 m!930629))

(declare-fun m!930631 () Bool)

(assert (=> b!1005244 m!930631))

(check-sat (not b!1005239) (not b!1005242) (not b!1005238) (not b!1005244) (not b!1005240) (not b!1005243) (not start!86760))
(check-sat)

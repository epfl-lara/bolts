; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45066 () Bool)

(assert start!45066)

(declare-fun b!494291 () Bool)

(declare-fun res!297016 () Bool)

(declare-fun e!290097 () Bool)

(assert (=> b!494291 (=> (not res!297016) (not e!290097))))

(declare-datatypes ((array!31971 0))(
  ( (array!31972 (arr!15367 (Array (_ BitVec 32) (_ BitVec 64))) (size!15731 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31971)

(declare-datatypes ((List!9578 0))(
  ( (Nil!9575) (Cons!9574 (h!10442 (_ BitVec 64)) (t!15814 List!9578)) )
))
(declare-fun arrayNoDuplicates!0 (array!31971 (_ BitVec 32) List!9578) Bool)

(assert (=> b!494291 (= res!297016 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9575))))

(declare-fun b!494292 () Bool)

(declare-fun e!290096 () Bool)

(assert (=> b!494292 (= e!290096 e!290097)))

(declare-fun res!297019 () Bool)

(assert (=> b!494292 (=> (not res!297019) (not e!290097))))

(declare-datatypes ((SeekEntryResult!3841 0))(
  ( (MissingZero!3841 (index!17543 (_ BitVec 32))) (Found!3841 (index!17544 (_ BitVec 32))) (Intermediate!3841 (undefined!4653 Bool) (index!17545 (_ BitVec 32)) (x!46642 (_ BitVec 32))) (Undefined!3841) (MissingVacant!3841 (index!17546 (_ BitVec 32))) )
))
(declare-fun lt!223764 () SeekEntryResult!3841)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!494292 (= res!297019 (or (= lt!223764 (MissingZero!3841 i!1204)) (= lt!223764 (MissingVacant!3841 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31971 (_ BitVec 32)) SeekEntryResult!3841)

(assert (=> b!494292 (= lt!223764 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!494293 () Bool)

(declare-fun res!297014 () Bool)

(declare-fun e!290095 () Bool)

(assert (=> b!494293 (=> res!297014 e!290095)))

(declare-fun lt!223763 () SeekEntryResult!3841)

(get-info :version)

(assert (=> b!494293 (= res!297014 (or (not ((_ is Intermediate!3841) lt!223763)) (not (undefined!4653 lt!223763))))))

(declare-fun b!494294 () Bool)

(declare-fun res!297017 () Bool)

(assert (=> b!494294 (=> (not res!297017) (not e!290097))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31971 (_ BitVec 32)) Bool)

(assert (=> b!494294 (= res!297017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494296 () Bool)

(declare-fun res!297015 () Bool)

(assert (=> b!494296 (=> (not res!297015) (not e!290096))))

(declare-fun arrayContainsKey!0 (array!31971 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494296 (= res!297015 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494297 () Bool)

(declare-fun res!297013 () Bool)

(assert (=> b!494297 (=> (not res!297013) (not e!290096))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494297 (= res!297013 (validKeyInArray!0 (select (arr!15367 a!3235) j!176)))))

(declare-fun b!494298 () Bool)

(declare-fun res!297012 () Bool)

(assert (=> b!494298 (=> (not res!297012) (not e!290096))))

(assert (=> b!494298 (= res!297012 (and (= (size!15731 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15731 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15731 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494299 () Bool)

(assert (=> b!494299 (= e!290095 true)))

(declare-fun lt!223762 () SeekEntryResult!3841)

(assert (=> b!494299 (= lt!223762 Undefined!3841)))

(declare-fun b!494300 () Bool)

(declare-fun res!297020 () Bool)

(assert (=> b!494300 (=> (not res!297020) (not e!290096))))

(assert (=> b!494300 (= res!297020 (validKeyInArray!0 k0!2280))))

(declare-fun b!494295 () Bool)

(assert (=> b!494295 (= e!290097 (not e!290095))))

(declare-fun res!297011 () Bool)

(assert (=> b!494295 (=> res!297011 e!290095)))

(declare-fun lt!223761 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31971 (_ BitVec 32)) SeekEntryResult!3841)

(assert (=> b!494295 (= res!297011 (= lt!223763 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223761 (select (store (arr!15367 a!3235) i!1204 k0!2280) j!176) (array!31972 (store (arr!15367 a!3235) i!1204 k0!2280) (size!15731 a!3235)) mask!3524)))))

(declare-fun lt!223765 () (_ BitVec 32))

(assert (=> b!494295 (= lt!223763 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223765 (select (arr!15367 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494295 (= lt!223761 (toIndex!0 (select (store (arr!15367 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!494295 (= lt!223765 (toIndex!0 (select (arr!15367 a!3235) j!176) mask!3524))))

(assert (=> b!494295 (= lt!223762 (Found!3841 j!176))))

(assert (=> b!494295 (= lt!223762 (seekEntryOrOpen!0 (select (arr!15367 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!494295 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14620 0))(
  ( (Unit!14621) )
))
(declare-fun lt!223766 () Unit!14620)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31971 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14620)

(assert (=> b!494295 (= lt!223766 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!297018 () Bool)

(assert (=> start!45066 (=> (not res!297018) (not e!290096))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45066 (= res!297018 (validMask!0 mask!3524))))

(assert (=> start!45066 e!290096))

(assert (=> start!45066 true))

(declare-fun array_inv!11141 (array!31971) Bool)

(assert (=> start!45066 (array_inv!11141 a!3235)))

(assert (= (and start!45066 res!297018) b!494298))

(assert (= (and b!494298 res!297012) b!494297))

(assert (= (and b!494297 res!297013) b!494300))

(assert (= (and b!494300 res!297020) b!494296))

(assert (= (and b!494296 res!297015) b!494292))

(assert (= (and b!494292 res!297019) b!494294))

(assert (= (and b!494294 res!297017) b!494291))

(assert (= (and b!494291 res!297016) b!494295))

(assert (= (and b!494295 (not res!297011)) b!494293))

(assert (= (and b!494293 (not res!297014)) b!494299))

(declare-fun m!475381 () Bool)

(assert (=> start!45066 m!475381))

(declare-fun m!475383 () Bool)

(assert (=> start!45066 m!475383))

(declare-fun m!475385 () Bool)

(assert (=> b!494294 m!475385))

(declare-fun m!475387 () Bool)

(assert (=> b!494296 m!475387))

(declare-fun m!475389 () Bool)

(assert (=> b!494300 m!475389))

(declare-fun m!475391 () Bool)

(assert (=> b!494295 m!475391))

(declare-fun m!475393 () Bool)

(assert (=> b!494295 m!475393))

(declare-fun m!475395 () Bool)

(assert (=> b!494295 m!475395))

(declare-fun m!475397 () Bool)

(assert (=> b!494295 m!475397))

(declare-fun m!475399 () Bool)

(assert (=> b!494295 m!475399))

(assert (=> b!494295 m!475397))

(declare-fun m!475401 () Bool)

(assert (=> b!494295 m!475401))

(assert (=> b!494295 m!475397))

(declare-fun m!475403 () Bool)

(assert (=> b!494295 m!475403))

(assert (=> b!494295 m!475397))

(declare-fun m!475405 () Bool)

(assert (=> b!494295 m!475405))

(assert (=> b!494295 m!475395))

(declare-fun m!475407 () Bool)

(assert (=> b!494295 m!475407))

(assert (=> b!494295 m!475395))

(declare-fun m!475409 () Bool)

(assert (=> b!494295 m!475409))

(declare-fun m!475411 () Bool)

(assert (=> b!494292 m!475411))

(assert (=> b!494297 m!475397))

(assert (=> b!494297 m!475397))

(declare-fun m!475413 () Bool)

(assert (=> b!494297 m!475413))

(declare-fun m!475415 () Bool)

(assert (=> b!494291 m!475415))

(check-sat (not b!494295) (not b!494291) (not b!494292) (not start!45066) (not b!494294) (not b!494297) (not b!494296) (not b!494300))
(check-sat)

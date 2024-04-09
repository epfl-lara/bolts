; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30014 () Bool)

(assert start!30014)

(declare-fun b!300975 () Bool)

(declare-fun e!190011 () Bool)

(assert (=> b!300975 (= e!190011 false)))

(declare-datatypes ((array!15235 0))(
  ( (array!15236 (arr!7208 (Array (_ BitVec 32) (_ BitVec 64))) (size!7560 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15235)

(declare-datatypes ((SeekEntryResult!2359 0))(
  ( (MissingZero!2359 (index!11612 (_ BitVec 32))) (Found!2359 (index!11613 (_ BitVec 32))) (Intermediate!2359 (undefined!3171 Bool) (index!11614 (_ BitVec 32)) (x!29858 (_ BitVec 32))) (Undefined!2359) (MissingVacant!2359 (index!11615 (_ BitVec 32))) )
))
(declare-fun lt!149747 () SeekEntryResult!2359)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15235 (_ BitVec 32)) SeekEntryResult!2359)

(assert (=> b!300975 (= lt!149747 (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709))))

(declare-fun b!300972 () Bool)

(declare-fun res!158882 () Bool)

(assert (=> b!300972 (=> (not res!158882) (not e!190011))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!300972 (= res!158882 (and (= (size!7560 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7560 a!3293))))))

(declare-fun b!300974 () Bool)

(declare-fun res!158881 () Bool)

(assert (=> b!300974 (=> (not res!158881) (not e!190011))))

(declare-fun arrayContainsKey!0 (array!15235 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300974 (= res!158881 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!300973 () Bool)

(declare-fun res!158880 () Bool)

(assert (=> b!300973 (=> (not res!158880) (not e!190011))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300973 (= res!158880 (validKeyInArray!0 k0!2441))))

(declare-fun res!158883 () Bool)

(assert (=> start!30014 (=> (not res!158883) (not e!190011))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30014 (= res!158883 (validMask!0 mask!3709))))

(assert (=> start!30014 e!190011))

(assert (=> start!30014 true))

(declare-fun array_inv!5162 (array!15235) Bool)

(assert (=> start!30014 (array_inv!5162 a!3293)))

(assert (= (and start!30014 res!158883) b!300972))

(assert (= (and b!300972 res!158882) b!300973))

(assert (= (and b!300973 res!158880) b!300974))

(assert (= (and b!300974 res!158881) b!300975))

(declare-fun m!312869 () Bool)

(assert (=> b!300975 m!312869))

(declare-fun m!312871 () Bool)

(assert (=> b!300974 m!312871))

(declare-fun m!312873 () Bool)

(assert (=> b!300973 m!312873))

(declare-fun m!312875 () Bool)

(assert (=> start!30014 m!312875))

(declare-fun m!312877 () Bool)

(assert (=> start!30014 m!312877))

(check-sat (not b!300974) (not start!30014) (not b!300975) (not b!300973))

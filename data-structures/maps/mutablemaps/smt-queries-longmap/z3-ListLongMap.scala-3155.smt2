; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44466 () Bool)

(assert start!44466)

(declare-fun res!291371 () Bool)

(declare-fun e!287134 () Bool)

(assert (=> start!44466 (=> (not res!291371) (not e!287134))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44466 (= res!291371 (validMask!0 mask!3524))))

(assert (=> start!44466 e!287134))

(assert (=> start!44466 true))

(declare-datatypes ((array!31581 0))(
  ( (array!31582 (arr!15178 (Array (_ BitVec 32) (_ BitVec 64))) (size!15542 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31581)

(declare-fun array_inv!10952 (array!31581) Bool)

(assert (=> start!44466 (array_inv!10952 a!3235)))

(declare-fun b!488055 () Bool)

(declare-fun e!287132 () Bool)

(assert (=> b!488055 (= e!287134 e!287132)))

(declare-fun res!291373 () Bool)

(assert (=> b!488055 (=> (not res!291373) (not e!287132))))

(declare-datatypes ((SeekEntryResult!3652 0))(
  ( (MissingZero!3652 (index!16787 (_ BitVec 32))) (Found!3652 (index!16788 (_ BitVec 32))) (Intermediate!3652 (undefined!4464 Bool) (index!16789 (_ BitVec 32)) (x!45934 (_ BitVec 32))) (Undefined!3652) (MissingVacant!3652 (index!16790 (_ BitVec 32))) )
))
(declare-fun lt!220313 () SeekEntryResult!3652)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!488055 (= res!291373 (or (= lt!220313 (MissingZero!3652 i!1204)) (= lt!220313 (MissingVacant!3652 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31581 (_ BitVec 32)) SeekEntryResult!3652)

(assert (=> b!488055 (= lt!220313 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!488056 () Bool)

(declare-fun res!291366 () Bool)

(assert (=> b!488056 (=> (not res!291366) (not e!287134))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!488056 (= res!291366 (and (= (size!15542 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15542 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15542 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488057 () Bool)

(declare-fun res!291370 () Bool)

(assert (=> b!488057 (=> (not res!291370) (not e!287134))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488057 (= res!291370 (validKeyInArray!0 k0!2280))))

(declare-fun b!488058 () Bool)

(assert (=> b!488058 (= e!287132 (not true))))

(declare-fun lt!220311 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!488058 (= lt!220311 (toIndex!0 (select (arr!15178 a!3235) j!176) mask!3524))))

(declare-fun e!287133 () Bool)

(assert (=> b!488058 e!287133))

(declare-fun res!291372 () Bool)

(assert (=> b!488058 (=> (not res!291372) (not e!287133))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31581 (_ BitVec 32)) Bool)

(assert (=> b!488058 (= res!291372 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14242 0))(
  ( (Unit!14243) )
))
(declare-fun lt!220312 () Unit!14242)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31581 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14242)

(assert (=> b!488058 (= lt!220312 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!488059 () Bool)

(declare-fun res!291368 () Bool)

(assert (=> b!488059 (=> (not res!291368) (not e!287132))))

(declare-datatypes ((List!9389 0))(
  ( (Nil!9386) (Cons!9385 (h!10244 (_ BitVec 64)) (t!15625 List!9389)) )
))
(declare-fun arrayNoDuplicates!0 (array!31581 (_ BitVec 32) List!9389) Bool)

(assert (=> b!488059 (= res!291368 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9386))))

(declare-fun b!488060 () Bool)

(declare-fun res!291374 () Bool)

(assert (=> b!488060 (=> (not res!291374) (not e!287132))))

(assert (=> b!488060 (= res!291374 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!488061 () Bool)

(declare-fun res!291367 () Bool)

(assert (=> b!488061 (=> (not res!291367) (not e!287134))))

(assert (=> b!488061 (= res!291367 (validKeyInArray!0 (select (arr!15178 a!3235) j!176)))))

(declare-fun b!488062 () Bool)

(declare-fun res!291369 () Bool)

(assert (=> b!488062 (=> (not res!291369) (not e!287134))))

(declare-fun arrayContainsKey!0 (array!31581 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488062 (= res!291369 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!488063 () Bool)

(assert (=> b!488063 (= e!287133 (= (seekEntryOrOpen!0 (select (arr!15178 a!3235) j!176) a!3235 mask!3524) (Found!3652 j!176)))))

(assert (= (and start!44466 res!291371) b!488056))

(assert (= (and b!488056 res!291366) b!488061))

(assert (= (and b!488061 res!291367) b!488057))

(assert (= (and b!488057 res!291370) b!488062))

(assert (= (and b!488062 res!291369) b!488055))

(assert (= (and b!488055 res!291373) b!488060))

(assert (= (and b!488060 res!291374) b!488059))

(assert (= (and b!488059 res!291368) b!488058))

(assert (= (and b!488058 res!291372) b!488063))

(declare-fun m!467841 () Bool)

(assert (=> b!488058 m!467841))

(assert (=> b!488058 m!467841))

(declare-fun m!467843 () Bool)

(assert (=> b!488058 m!467843))

(declare-fun m!467845 () Bool)

(assert (=> b!488058 m!467845))

(declare-fun m!467847 () Bool)

(assert (=> b!488058 m!467847))

(declare-fun m!467849 () Bool)

(assert (=> b!488057 m!467849))

(declare-fun m!467851 () Bool)

(assert (=> b!488055 m!467851))

(declare-fun m!467853 () Bool)

(assert (=> b!488059 m!467853))

(declare-fun m!467855 () Bool)

(assert (=> start!44466 m!467855))

(declare-fun m!467857 () Bool)

(assert (=> start!44466 m!467857))

(assert (=> b!488061 m!467841))

(assert (=> b!488061 m!467841))

(declare-fun m!467859 () Bool)

(assert (=> b!488061 m!467859))

(assert (=> b!488063 m!467841))

(assert (=> b!488063 m!467841))

(declare-fun m!467861 () Bool)

(assert (=> b!488063 m!467861))

(declare-fun m!467863 () Bool)

(assert (=> b!488062 m!467863))

(declare-fun m!467865 () Bool)

(assert (=> b!488060 m!467865))

(check-sat (not b!488058) (not b!488059) (not b!488057) (not b!488060) (not b!488055) (not b!488062) (not start!44466) (not b!488061) (not b!488063))
(check-sat)

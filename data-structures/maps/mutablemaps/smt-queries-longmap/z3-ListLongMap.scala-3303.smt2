; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45774 () Bool)

(assert start!45774)

(declare-fun b!506194 () Bool)

(declare-fun e!296283 () Bool)

(declare-fun e!296287 () Bool)

(assert (=> b!506194 (= e!296283 (not e!296287))))

(declare-fun res!307305 () Bool)

(assert (=> b!506194 (=> res!307305 e!296287)))

(declare-fun lt!231030 () (_ BitVec 32))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32490 0))(
  ( (array!32491 (arr!15622 (Array (_ BitVec 32) (_ BitVec 64))) (size!15986 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32490)

(declare-datatypes ((SeekEntryResult!4096 0))(
  ( (MissingZero!4096 (index!18572 (_ BitVec 32))) (Found!4096 (index!18573 (_ BitVec 32))) (Intermediate!4096 (undefined!4908 Bool) (index!18574 (_ BitVec 32)) (x!47604 (_ BitVec 32))) (Undefined!4096) (MissingVacant!4096 (index!18575 (_ BitVec 32))) )
))
(declare-fun lt!231028 () SeekEntryResult!4096)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32490 (_ BitVec 32)) SeekEntryResult!4096)

(assert (=> b!506194 (= res!307305 (= lt!231028 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231030 (select (store (arr!15622 a!3235) i!1204 k0!2280) j!176) (array!32491 (store (arr!15622 a!3235) i!1204 k0!2280) (size!15986 a!3235)) mask!3524)))))

(declare-fun lt!231032 () (_ BitVec 32))

(assert (=> b!506194 (= lt!231028 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231032 (select (arr!15622 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506194 (= lt!231030 (toIndex!0 (select (store (arr!15622 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!506194 (= lt!231032 (toIndex!0 (select (arr!15622 a!3235) j!176) mask!3524))))

(declare-fun e!296286 () Bool)

(assert (=> b!506194 e!296286))

(declare-fun res!307307 () Bool)

(assert (=> b!506194 (=> (not res!307307) (not e!296286))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32490 (_ BitVec 32)) Bool)

(assert (=> b!506194 (= res!307307 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15472 0))(
  ( (Unit!15473) )
))
(declare-fun lt!231027 () Unit!15472)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32490 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15472)

(assert (=> b!506194 (= lt!231027 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506195 () Bool)

(declare-fun res!307308 () Bool)

(declare-fun e!296285 () Bool)

(assert (=> b!506195 (=> (not res!307308) (not e!296285))))

(declare-fun arrayContainsKey!0 (array!32490 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506195 (= res!307308 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506196 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32490 (_ BitVec 32)) SeekEntryResult!4096)

(assert (=> b!506196 (= e!296286 (= (seekEntryOrOpen!0 (select (arr!15622 a!3235) j!176) a!3235 mask!3524) (Found!4096 j!176)))))

(declare-fun b!506197 () Bool)

(declare-fun res!307304 () Bool)

(assert (=> b!506197 (=> (not res!307304) (not e!296285))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506197 (= res!307304 (validKeyInArray!0 (select (arr!15622 a!3235) j!176)))))

(declare-fun b!506198 () Bool)

(declare-fun res!307312 () Bool)

(assert (=> b!506198 (=> (not res!307312) (not e!296283))))

(declare-datatypes ((List!9833 0))(
  ( (Nil!9830) (Cons!9829 (h!10706 (_ BitVec 64)) (t!16069 List!9833)) )
))
(declare-fun arrayNoDuplicates!0 (array!32490 (_ BitVec 32) List!9833) Bool)

(assert (=> b!506198 (= res!307312 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9830))))

(declare-fun b!506199 () Bool)

(declare-fun e!296284 () Bool)

(assert (=> b!506199 (= e!296287 e!296284)))

(declare-fun res!307309 () Bool)

(assert (=> b!506199 (=> res!307309 e!296284)))

(declare-fun lt!231029 () Bool)

(assert (=> b!506199 (= res!307309 (or (and (not lt!231029) (undefined!4908 lt!231028)) (and (not lt!231029) (not (undefined!4908 lt!231028)))))))

(get-info :version)

(assert (=> b!506199 (= lt!231029 (not ((_ is Intermediate!4096) lt!231028)))))

(declare-fun b!506200 () Bool)

(assert (=> b!506200 (= e!296285 e!296283)))

(declare-fun res!307310 () Bool)

(assert (=> b!506200 (=> (not res!307310) (not e!296283))))

(declare-fun lt!231031 () SeekEntryResult!4096)

(assert (=> b!506200 (= res!307310 (or (= lt!231031 (MissingZero!4096 i!1204)) (= lt!231031 (MissingVacant!4096 i!1204))))))

(assert (=> b!506200 (= lt!231031 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!506201 () Bool)

(declare-fun res!307306 () Bool)

(assert (=> b!506201 (=> (not res!307306) (not e!296285))))

(assert (=> b!506201 (= res!307306 (validKeyInArray!0 k0!2280))))

(declare-fun res!307303 () Bool)

(assert (=> start!45774 (=> (not res!307303) (not e!296285))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45774 (= res!307303 (validMask!0 mask!3524))))

(assert (=> start!45774 e!296285))

(assert (=> start!45774 true))

(declare-fun array_inv!11396 (array!32490) Bool)

(assert (=> start!45774 (array_inv!11396 a!3235)))

(declare-fun b!506202 () Bool)

(declare-fun res!307311 () Bool)

(assert (=> b!506202 (=> (not res!307311) (not e!296285))))

(assert (=> b!506202 (= res!307311 (and (= (size!15986 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15986 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15986 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506203 () Bool)

(declare-fun res!307313 () Bool)

(assert (=> b!506203 (=> (not res!307313) (not e!296283))))

(assert (=> b!506203 (= res!307313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506204 () Bool)

(assert (=> b!506204 (= e!296284 true)))

(assert (=> b!506204 false))

(assert (= (and start!45774 res!307303) b!506202))

(assert (= (and b!506202 res!307311) b!506197))

(assert (= (and b!506197 res!307304) b!506201))

(assert (= (and b!506201 res!307306) b!506195))

(assert (= (and b!506195 res!307308) b!506200))

(assert (= (and b!506200 res!307310) b!506203))

(assert (= (and b!506203 res!307313) b!506198))

(assert (= (and b!506198 res!307312) b!506194))

(assert (= (and b!506194 res!307307) b!506196))

(assert (= (and b!506194 (not res!307305)) b!506199))

(assert (= (and b!506199 (not res!307309)) b!506204))

(declare-fun m!486889 () Bool)

(assert (=> b!506201 m!486889))

(declare-fun m!486891 () Bool)

(assert (=> b!506195 m!486891))

(declare-fun m!486893 () Bool)

(assert (=> b!506200 m!486893))

(declare-fun m!486895 () Bool)

(assert (=> start!45774 m!486895))

(declare-fun m!486897 () Bool)

(assert (=> start!45774 m!486897))

(declare-fun m!486899 () Bool)

(assert (=> b!506194 m!486899))

(declare-fun m!486901 () Bool)

(assert (=> b!506194 m!486901))

(declare-fun m!486903 () Bool)

(assert (=> b!506194 m!486903))

(assert (=> b!506194 m!486903))

(declare-fun m!486905 () Bool)

(assert (=> b!506194 m!486905))

(declare-fun m!486907 () Bool)

(assert (=> b!506194 m!486907))

(declare-fun m!486909 () Bool)

(assert (=> b!506194 m!486909))

(assert (=> b!506194 m!486907))

(assert (=> b!506194 m!486903))

(declare-fun m!486911 () Bool)

(assert (=> b!506194 m!486911))

(declare-fun m!486913 () Bool)

(assert (=> b!506194 m!486913))

(assert (=> b!506194 m!486907))

(declare-fun m!486915 () Bool)

(assert (=> b!506194 m!486915))

(declare-fun m!486917 () Bool)

(assert (=> b!506198 m!486917))

(assert (=> b!506196 m!486907))

(assert (=> b!506196 m!486907))

(declare-fun m!486919 () Bool)

(assert (=> b!506196 m!486919))

(declare-fun m!486921 () Bool)

(assert (=> b!506203 m!486921))

(assert (=> b!506197 m!486907))

(assert (=> b!506197 m!486907))

(declare-fun m!486923 () Bool)

(assert (=> b!506197 m!486923))

(check-sat (not start!45774) (not b!506196) (not b!506197) (not b!506198) (not b!506195) (not b!506203) (not b!506194) (not b!506201) (not b!506200))
(check-sat)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47002 () Bool)

(assert start!47002)

(declare-fun b!517939 () Bool)

(declare-fun res!317104 () Bool)

(declare-fun e!302228 () Bool)

(assert (=> b!517939 (=> res!317104 e!302228)))

(declare-datatypes ((SeekEntryResult!4386 0))(
  ( (MissingZero!4386 (index!19732 (_ BitVec 32))) (Found!4386 (index!19733 (_ BitVec 32))) (Intermediate!4386 (undefined!5198 Bool) (index!19734 (_ BitVec 32)) (x!48730 (_ BitVec 32))) (Undefined!4386) (MissingVacant!4386 (index!19735 (_ BitVec 32))) )
))
(declare-fun lt!237143 () SeekEntryResult!4386)

(assert (=> b!517939 (= res!317104 (or (undefined!5198 lt!237143) (not (is-Intermediate!4386 lt!237143))))))

(declare-fun b!517940 () Bool)

(declare-fun res!317111 () Bool)

(declare-fun e!302227 () Bool)

(assert (=> b!517940 (=> (not res!317111) (not e!302227))))

(declare-datatypes ((array!33103 0))(
  ( (array!33104 (arr!15912 (Array (_ BitVec 32) (_ BitVec 64))) (size!16276 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33103)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33103 (_ BitVec 32)) Bool)

(assert (=> b!517940 (= res!317111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!517942 () Bool)

(declare-fun res!317108 () Bool)

(declare-fun e!302229 () Bool)

(assert (=> b!517942 (=> (not res!317108) (not e!302229))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!517942 (= res!317108 (validKeyInArray!0 k!2280))))

(declare-fun b!517943 () Bool)

(declare-fun res!317114 () Bool)

(assert (=> b!517943 (=> (not res!317114) (not e!302229))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!517943 (= res!317114 (and (= (size!16276 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16276 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16276 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!517944 () Bool)

(assert (=> b!517944 (= e!302228 true)))

(assert (=> b!517944 (and (bvslt (x!48730 lt!237143) #b01111111111111111111111111111110) (or (= (select (arr!15912 a!3235) (index!19734 lt!237143)) (select (arr!15912 a!3235) j!176)) (= (select (arr!15912 a!3235) (index!19734 lt!237143)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15912 a!3235) (index!19734 lt!237143)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!517945 () Bool)

(declare-fun res!317106 () Bool)

(assert (=> b!517945 (=> (not res!317106) (not e!302229))))

(assert (=> b!517945 (= res!317106 (validKeyInArray!0 (select (arr!15912 a!3235) j!176)))))

(declare-fun b!517946 () Bool)

(assert (=> b!517946 (= e!302229 e!302227)))

(declare-fun res!317112 () Bool)

(assert (=> b!517946 (=> (not res!317112) (not e!302227))))

(declare-fun lt!237142 () SeekEntryResult!4386)

(assert (=> b!517946 (= res!317112 (or (= lt!237142 (MissingZero!4386 i!1204)) (= lt!237142 (MissingVacant!4386 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33103 (_ BitVec 32)) SeekEntryResult!4386)

(assert (=> b!517946 (= lt!237142 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!517947 () Bool)

(declare-fun res!317113 () Bool)

(assert (=> b!517947 (=> (not res!317113) (not e!302229))))

(declare-fun arrayContainsKey!0 (array!33103 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!517947 (= res!317113 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!317109 () Bool)

(assert (=> start!47002 (=> (not res!317109) (not e!302229))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47002 (= res!317109 (validMask!0 mask!3524))))

(assert (=> start!47002 e!302229))

(assert (=> start!47002 true))

(declare-fun array_inv!11686 (array!33103) Bool)

(assert (=> start!47002 (array_inv!11686 a!3235)))

(declare-fun e!302226 () Bool)

(declare-fun b!517941 () Bool)

(assert (=> b!517941 (= e!302226 (= (seekEntryOrOpen!0 (select (arr!15912 a!3235) j!176) a!3235 mask!3524) (Found!4386 j!176)))))

(declare-fun b!517948 () Bool)

(declare-fun res!317110 () Bool)

(assert (=> b!517948 (=> (not res!317110) (not e!302227))))

(declare-datatypes ((List!10123 0))(
  ( (Nil!10120) (Cons!10119 (h!11026 (_ BitVec 64)) (t!16359 List!10123)) )
))
(declare-fun arrayNoDuplicates!0 (array!33103 (_ BitVec 32) List!10123) Bool)

(assert (=> b!517948 (= res!317110 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10120))))

(declare-fun b!517949 () Bool)

(assert (=> b!517949 (= e!302227 (not e!302228))))

(declare-fun res!317107 () Bool)

(assert (=> b!517949 (=> res!317107 e!302228)))

(declare-fun lt!237139 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33103 (_ BitVec 32)) SeekEntryResult!4386)

(assert (=> b!517949 (= res!317107 (= lt!237143 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237139 (select (store (arr!15912 a!3235) i!1204 k!2280) j!176) (array!33104 (store (arr!15912 a!3235) i!1204 k!2280) (size!16276 a!3235)) mask!3524)))))

(declare-fun lt!237141 () (_ BitVec 32))

(assert (=> b!517949 (= lt!237143 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237141 (select (arr!15912 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!517949 (= lt!237139 (toIndex!0 (select (store (arr!15912 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!517949 (= lt!237141 (toIndex!0 (select (arr!15912 a!3235) j!176) mask!3524))))

(assert (=> b!517949 e!302226))

(declare-fun res!317105 () Bool)

(assert (=> b!517949 (=> (not res!317105) (not e!302226))))

(assert (=> b!517949 (= res!317105 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16022 0))(
  ( (Unit!16023) )
))
(declare-fun lt!237140 () Unit!16022)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33103 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16022)

(assert (=> b!517949 (= lt!237140 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!47002 res!317109) b!517943))

(assert (= (and b!517943 res!317114) b!517945))

(assert (= (and b!517945 res!317106) b!517942))

(assert (= (and b!517942 res!317108) b!517947))

(assert (= (and b!517947 res!317113) b!517946))

(assert (= (and b!517946 res!317112) b!517940))

(assert (= (and b!517940 res!317111) b!517948))

(assert (= (and b!517948 res!317110) b!517949))

(assert (= (and b!517949 res!317105) b!517941))

(assert (= (and b!517949 (not res!317107)) b!517939))

(assert (= (and b!517939 (not res!317104)) b!517944))

(declare-fun m!499327 () Bool)

(assert (=> b!517944 m!499327))

(declare-fun m!499329 () Bool)

(assert (=> b!517944 m!499329))

(declare-fun m!499331 () Bool)

(assert (=> b!517947 m!499331))

(assert (=> b!517949 m!499329))

(declare-fun m!499333 () Bool)

(assert (=> b!517949 m!499333))

(declare-fun m!499335 () Bool)

(assert (=> b!517949 m!499335))

(declare-fun m!499337 () Bool)

(assert (=> b!517949 m!499337))

(declare-fun m!499339 () Bool)

(assert (=> b!517949 m!499339))

(assert (=> b!517949 m!499339))

(declare-fun m!499341 () Bool)

(assert (=> b!517949 m!499341))

(assert (=> b!517949 m!499329))

(declare-fun m!499343 () Bool)

(assert (=> b!517949 m!499343))

(assert (=> b!517949 m!499329))

(declare-fun m!499345 () Bool)

(assert (=> b!517949 m!499345))

(assert (=> b!517949 m!499339))

(declare-fun m!499347 () Bool)

(assert (=> b!517949 m!499347))

(assert (=> b!517945 m!499329))

(assert (=> b!517945 m!499329))

(declare-fun m!499349 () Bool)

(assert (=> b!517945 m!499349))

(declare-fun m!499351 () Bool)

(assert (=> b!517942 m!499351))

(declare-fun m!499353 () Bool)

(assert (=> start!47002 m!499353))

(declare-fun m!499355 () Bool)

(assert (=> start!47002 m!499355))

(declare-fun m!499357 () Bool)

(assert (=> b!517940 m!499357))

(declare-fun m!499359 () Bool)

(assert (=> b!517948 m!499359))

(declare-fun m!499361 () Bool)

(assert (=> b!517946 m!499361))

(assert (=> b!517941 m!499329))

(assert (=> b!517941 m!499329))

(declare-fun m!499363 () Bool)

(assert (=> b!517941 m!499363))

(push 1)


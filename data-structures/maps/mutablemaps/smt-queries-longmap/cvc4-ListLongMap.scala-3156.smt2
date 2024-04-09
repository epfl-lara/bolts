; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44474 () Bool)

(assert start!44474)

(declare-fun b!488163 () Bool)

(declare-fun e!287180 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31589 0))(
  ( (array!31590 (arr!15182 (Array (_ BitVec 32) (_ BitVec 64))) (size!15546 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31589)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3656 0))(
  ( (MissingZero!3656 (index!16803 (_ BitVec 32))) (Found!3656 (index!16804 (_ BitVec 32))) (Intermediate!3656 (undefined!4468 Bool) (index!16805 (_ BitVec 32)) (x!45946 (_ BitVec 32))) (Undefined!3656) (MissingVacant!3656 (index!16806 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31589 (_ BitVec 32)) SeekEntryResult!3656)

(assert (=> b!488163 (= e!287180 (= (seekEntryOrOpen!0 (select (arr!15182 a!3235) j!176) a!3235 mask!3524) (Found!3656 j!176)))))

(declare-fun b!488164 () Bool)

(declare-fun res!291482 () Bool)

(declare-fun e!287179 () Bool)

(assert (=> b!488164 (=> (not res!291482) (not e!287179))))

(declare-datatypes ((List!9393 0))(
  ( (Nil!9390) (Cons!9389 (h!10248 (_ BitVec 64)) (t!15629 List!9393)) )
))
(declare-fun arrayNoDuplicates!0 (array!31589 (_ BitVec 32) List!9393) Bool)

(assert (=> b!488164 (= res!291482 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9390))))

(declare-fun b!488165 () Bool)

(declare-fun res!291480 () Bool)

(declare-fun e!287181 () Bool)

(assert (=> b!488165 (=> (not res!291480) (not e!287181))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!488165 (= res!291480 (and (= (size!15546 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15546 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15546 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488166 () Bool)

(declare-fun res!291474 () Bool)

(assert (=> b!488166 (=> (not res!291474) (not e!287181))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488166 (= res!291474 (validKeyInArray!0 (select (arr!15182 a!3235) j!176)))))

(declare-fun b!488167 () Bool)

(assert (=> b!488167 (= e!287179 (not (bvsge mask!3524 #b00000000000000000000000000000000)))))

(assert (=> b!488167 e!287180))

(declare-fun res!291477 () Bool)

(assert (=> b!488167 (=> (not res!291477) (not e!287180))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31589 (_ BitVec 32)) Bool)

(assert (=> b!488167 (= res!291477 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14250 0))(
  ( (Unit!14251) )
))
(declare-fun lt!220339 () Unit!14250)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31589 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14250)

(assert (=> b!488167 (= lt!220339 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!488168 () Bool)

(declare-fun res!291476 () Bool)

(assert (=> b!488168 (=> (not res!291476) (not e!287181))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31589 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488168 (= res!291476 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!488170 () Bool)

(declare-fun res!291475 () Bool)

(assert (=> b!488170 (=> (not res!291475) (not e!287181))))

(assert (=> b!488170 (= res!291475 (validKeyInArray!0 k!2280))))

(declare-fun b!488171 () Bool)

(declare-fun res!291478 () Bool)

(assert (=> b!488171 (=> (not res!291478) (not e!287179))))

(assert (=> b!488171 (= res!291478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!488169 () Bool)

(assert (=> b!488169 (= e!287181 e!287179)))

(declare-fun res!291481 () Bool)

(assert (=> b!488169 (=> (not res!291481) (not e!287179))))

(declare-fun lt!220340 () SeekEntryResult!3656)

(assert (=> b!488169 (= res!291481 (or (= lt!220340 (MissingZero!3656 i!1204)) (= lt!220340 (MissingVacant!3656 i!1204))))))

(assert (=> b!488169 (= lt!220340 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!291479 () Bool)

(assert (=> start!44474 (=> (not res!291479) (not e!287181))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44474 (= res!291479 (validMask!0 mask!3524))))

(assert (=> start!44474 e!287181))

(assert (=> start!44474 true))

(declare-fun array_inv!10956 (array!31589) Bool)

(assert (=> start!44474 (array_inv!10956 a!3235)))

(assert (= (and start!44474 res!291479) b!488165))

(assert (= (and b!488165 res!291480) b!488166))

(assert (= (and b!488166 res!291474) b!488170))

(assert (= (and b!488170 res!291475) b!488168))

(assert (= (and b!488168 res!291476) b!488169))

(assert (= (and b!488169 res!291481) b!488171))

(assert (= (and b!488171 res!291478) b!488164))

(assert (= (and b!488164 res!291482) b!488167))

(assert (= (and b!488167 res!291477) b!488163))

(declare-fun m!467941 () Bool)

(assert (=> b!488163 m!467941))

(assert (=> b!488163 m!467941))

(declare-fun m!467943 () Bool)

(assert (=> b!488163 m!467943))

(assert (=> b!488166 m!467941))

(assert (=> b!488166 m!467941))

(declare-fun m!467945 () Bool)

(assert (=> b!488166 m!467945))

(declare-fun m!467947 () Bool)

(assert (=> b!488167 m!467947))

(declare-fun m!467949 () Bool)

(assert (=> b!488167 m!467949))

(declare-fun m!467951 () Bool)

(assert (=> b!488164 m!467951))

(declare-fun m!467953 () Bool)

(assert (=> b!488171 m!467953))

(declare-fun m!467955 () Bool)

(assert (=> b!488168 m!467955))

(declare-fun m!467957 () Bool)

(assert (=> b!488169 m!467957))

(declare-fun m!467959 () Bool)

(assert (=> start!44474 m!467959))

(declare-fun m!467961 () Bool)

(assert (=> start!44474 m!467961))

(declare-fun m!467963 () Bool)

(assert (=> b!488170 m!467963))

(push 1)

(assert (not b!488168))

(assert (not start!44474))

(assert (not b!488166))

(assert (not b!488167))

(assert (not b!488163))


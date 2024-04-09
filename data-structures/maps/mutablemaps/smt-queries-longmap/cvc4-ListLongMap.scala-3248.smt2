; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45374 () Bool)

(assert start!45374)

(declare-fun res!300254 () Bool)

(declare-fun e!291883 () Bool)

(assert (=> start!45374 (=> (not res!300254) (not e!291883))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45374 (= res!300254 (validMask!0 mask!3524))))

(assert (=> start!45374 e!291883))

(assert (=> start!45374 true))

(declare-datatypes ((array!32159 0))(
  ( (array!32160 (arr!15458 (Array (_ BitVec 32) (_ BitVec 64))) (size!15822 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32159)

(declare-fun array_inv!11232 (array!32159) Bool)

(assert (=> start!45374 (array_inv!11232 a!3235)))

(declare-fun b!497958 () Bool)

(declare-fun e!291878 () Bool)

(declare-fun e!291877 () Bool)

(assert (=> b!497958 (= e!291878 (not e!291877))))

(declare-fun res!300242 () Bool)

(assert (=> b!497958 (=> res!300242 e!291877)))

(declare-datatypes ((SeekEntryResult!3932 0))(
  ( (MissingZero!3932 (index!17910 (_ BitVec 32))) (Found!3932 (index!17911 (_ BitVec 32))) (Intermediate!3932 (undefined!4744 Bool) (index!17912 (_ BitVec 32)) (x!46988 (_ BitVec 32))) (Undefined!3932) (MissingVacant!3932 (index!17913 (_ BitVec 32))) )
))
(declare-fun lt!225551 () SeekEntryResult!3932)

(declare-fun lt!225555 () array!32159)

(declare-fun lt!225554 () (_ BitVec 64))

(declare-fun lt!225559 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32159 (_ BitVec 32)) SeekEntryResult!3932)

(assert (=> b!497958 (= res!300242 (= lt!225551 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225559 lt!225554 lt!225555 mask!3524)))))

(declare-fun lt!225560 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!497958 (= lt!225551 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225560 (select (arr!15458 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!497958 (= lt!225559 (toIndex!0 lt!225554 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!497958 (= lt!225554 (select (store (arr!15458 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!497958 (= lt!225560 (toIndex!0 (select (arr!15458 a!3235) j!176) mask!3524))))

(assert (=> b!497958 (= lt!225555 (array!32160 (store (arr!15458 a!3235) i!1204 k!2280) (size!15822 a!3235)))))

(declare-fun e!291882 () Bool)

(assert (=> b!497958 e!291882))

(declare-fun res!300246 () Bool)

(assert (=> b!497958 (=> (not res!300246) (not e!291882))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32159 (_ BitVec 32)) Bool)

(assert (=> b!497958 (= res!300246 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14818 0))(
  ( (Unit!14819) )
))
(declare-fun lt!225557 () Unit!14818)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32159 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14818)

(assert (=> b!497958 (= lt!225557 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!497959 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32159 (_ BitVec 32)) SeekEntryResult!3932)

(assert (=> b!497959 (= e!291882 (= (seekEntryOrOpen!0 (select (arr!15458 a!3235) j!176) a!3235 mask!3524) (Found!3932 j!176)))))

(declare-fun b!497960 () Bool)

(declare-fun res!300243 () Bool)

(assert (=> b!497960 (=> (not res!300243) (not e!291878))))

(assert (=> b!497960 (= res!300243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!497961 () Bool)

(declare-fun e!291879 () Bool)

(assert (=> b!497961 (= e!291879 true)))

(declare-fun lt!225556 () SeekEntryResult!3932)

(assert (=> b!497961 (= lt!225556 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225560 lt!225554 lt!225555 mask!3524))))

(declare-fun b!497962 () Bool)

(assert (=> b!497962 (= e!291883 e!291878)))

(declare-fun res!300248 () Bool)

(assert (=> b!497962 (=> (not res!300248) (not e!291878))))

(declare-fun lt!225552 () SeekEntryResult!3932)

(assert (=> b!497962 (= res!300248 (or (= lt!225552 (MissingZero!3932 i!1204)) (= lt!225552 (MissingVacant!3932 i!1204))))))

(assert (=> b!497962 (= lt!225552 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!497963 () Bool)

(declare-fun res!300244 () Bool)

(assert (=> b!497963 (=> (not res!300244) (not e!291883))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!497963 (= res!300244 (validKeyInArray!0 k!2280))))

(declare-fun b!497964 () Bool)

(assert (=> b!497964 (= e!291877 e!291879)))

(declare-fun res!300253 () Bool)

(assert (=> b!497964 (=> res!300253 e!291879)))

(assert (=> b!497964 (= res!300253 (or (bvsgt #b00000000000000000000000000000000 (x!46988 lt!225551)) (bvsgt (x!46988 lt!225551) #b01111111111111111111111111111110) (bvslt lt!225560 #b00000000000000000000000000000000) (bvsge lt!225560 (size!15822 a!3235)) (bvslt (index!17912 lt!225551) #b00000000000000000000000000000000) (bvsge (index!17912 lt!225551) (size!15822 a!3235)) (not (= lt!225551 (Intermediate!3932 false (index!17912 lt!225551) (x!46988 lt!225551))))))))

(assert (=> b!497964 (and (or (= (select (arr!15458 a!3235) (index!17912 lt!225551)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15458 a!3235) (index!17912 lt!225551)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15458 a!3235) (index!17912 lt!225551)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15458 a!3235) (index!17912 lt!225551)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!225558 () Unit!14818)

(declare-fun e!291881 () Unit!14818)

(assert (=> b!497964 (= lt!225558 e!291881)))

(declare-fun c!59135 () Bool)

(assert (=> b!497964 (= c!59135 (= (select (arr!15458 a!3235) (index!17912 lt!225551)) (select (arr!15458 a!3235) j!176)))))

(assert (=> b!497964 (and (bvslt (x!46988 lt!225551) #b01111111111111111111111111111110) (or (= (select (arr!15458 a!3235) (index!17912 lt!225551)) (select (arr!15458 a!3235) j!176)) (= (select (arr!15458 a!3235) (index!17912 lt!225551)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15458 a!3235) (index!17912 lt!225551)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!497965 () Bool)

(declare-fun Unit!14820 () Unit!14818)

(assert (=> b!497965 (= e!291881 Unit!14820)))

(declare-fun lt!225553 () Unit!14818)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32159 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14818)

(assert (=> b!497965 (= lt!225553 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!225560 #b00000000000000000000000000000000 (index!17912 lt!225551) (x!46988 lt!225551) mask!3524))))

(declare-fun res!300250 () Bool)

(assert (=> b!497965 (= res!300250 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225560 lt!225554 lt!225555 mask!3524) (Intermediate!3932 false (index!17912 lt!225551) (x!46988 lt!225551))))))

(declare-fun e!291880 () Bool)

(assert (=> b!497965 (=> (not res!300250) (not e!291880))))

(assert (=> b!497965 e!291880))

(declare-fun b!497966 () Bool)

(declare-fun res!300249 () Bool)

(assert (=> b!497966 (=> (not res!300249) (not e!291883))))

(declare-fun arrayContainsKey!0 (array!32159 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!497966 (= res!300249 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!497967 () Bool)

(declare-fun res!300252 () Bool)

(assert (=> b!497967 (=> (not res!300252) (not e!291883))))

(assert (=> b!497967 (= res!300252 (validKeyInArray!0 (select (arr!15458 a!3235) j!176)))))

(declare-fun b!497968 () Bool)

(declare-fun res!300247 () Bool)

(assert (=> b!497968 (=> res!300247 e!291877)))

(assert (=> b!497968 (= res!300247 (or (undefined!4744 lt!225551) (not (is-Intermediate!3932 lt!225551))))))

(declare-fun b!497969 () Bool)

(declare-fun res!300245 () Bool)

(assert (=> b!497969 (=> (not res!300245) (not e!291878))))

(declare-datatypes ((List!9669 0))(
  ( (Nil!9666) (Cons!9665 (h!10539 (_ BitVec 64)) (t!15905 List!9669)) )
))
(declare-fun arrayNoDuplicates!0 (array!32159 (_ BitVec 32) List!9669) Bool)

(assert (=> b!497969 (= res!300245 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9666))))

(declare-fun b!497970 () Bool)

(declare-fun Unit!14821 () Unit!14818)

(assert (=> b!497970 (= e!291881 Unit!14821)))

(declare-fun b!497971 () Bool)

(declare-fun res!300251 () Bool)

(assert (=> b!497971 (=> (not res!300251) (not e!291883))))

(assert (=> b!497971 (= res!300251 (and (= (size!15822 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15822 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15822 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!497972 () Bool)

(assert (=> b!497972 (= e!291880 false)))

(assert (= (and start!45374 res!300254) b!497971))

(assert (= (and b!497971 res!300251) b!497967))

(assert (= (and b!497967 res!300252) b!497963))

(assert (= (and b!497963 res!300244) b!497966))

(assert (= (and b!497966 res!300249) b!497962))

(assert (= (and b!497962 res!300248) b!497960))

(assert (= (and b!497960 res!300243) b!497969))

(assert (= (and b!497969 res!300245) b!497958))

(assert (= (and b!497958 res!300246) b!497959))

(assert (= (and b!497958 (not res!300242)) b!497968))

(assert (= (and b!497968 (not res!300247)) b!497964))

(assert (= (and b!497964 c!59135) b!497965))

(assert (= (and b!497964 (not c!59135)) b!497970))

(assert (= (and b!497965 res!300250) b!497972))

(assert (= (and b!497964 (not res!300253)) b!497961))

(declare-fun m!479281 () Bool)

(assert (=> b!497962 m!479281))

(declare-fun m!479283 () Bool)

(assert (=> b!497966 m!479283))

(declare-fun m!479285 () Bool)

(assert (=> b!497963 m!479285))

(declare-fun m!479287 () Bool)

(assert (=> start!45374 m!479287))

(declare-fun m!479289 () Bool)

(assert (=> start!45374 m!479289))

(declare-fun m!479291 () Bool)

(assert (=> b!497967 m!479291))

(assert (=> b!497967 m!479291))

(declare-fun m!479293 () Bool)

(assert (=> b!497967 m!479293))

(declare-fun m!479295 () Bool)

(assert (=> b!497961 m!479295))

(declare-fun m!479297 () Bool)

(assert (=> b!497964 m!479297))

(assert (=> b!497964 m!479291))

(declare-fun m!479299 () Bool)

(assert (=> b!497960 m!479299))

(declare-fun m!479301 () Bool)

(assert (=> b!497965 m!479301))

(assert (=> b!497965 m!479295))

(assert (=> b!497959 m!479291))

(assert (=> b!497959 m!479291))

(declare-fun m!479303 () Bool)

(assert (=> b!497959 m!479303))

(declare-fun m!479305 () Bool)

(assert (=> b!497958 m!479305))

(declare-fun m!479307 () Bool)

(assert (=> b!497958 m!479307))

(declare-fun m!479309 () Bool)

(assert (=> b!497958 m!479309))

(declare-fun m!479311 () Bool)

(assert (=> b!497958 m!479311))

(assert (=> b!497958 m!479291))

(declare-fun m!479313 () Bool)

(assert (=> b!497958 m!479313))

(assert (=> b!497958 m!479291))

(assert (=> b!497958 m!479291))

(declare-fun m!479315 () Bool)

(assert (=> b!497958 m!479315))

(declare-fun m!479317 () Bool)

(assert (=> b!497958 m!479317))

(declare-fun m!479319 () Bool)

(assert (=> b!497958 m!479319))

(declare-fun m!479321 () Bool)

(assert (=> b!497969 m!479321))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45844 () Bool)

(assert start!45844)

(declare-fun b!507349 () Bool)

(declare-fun e!296913 () Bool)

(assert (=> b!507349 (= e!296913 true)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!231772 () (_ BitVec 64))

(declare-datatypes ((array!32560 0))(
  ( (array!32561 (arr!15657 (Array (_ BitVec 32) (_ BitVec 64))) (size!16021 (_ BitVec 32))) )
))
(declare-fun lt!231778 () array!32560)

(declare-datatypes ((SeekEntryResult!4131 0))(
  ( (MissingZero!4131 (index!18712 (_ BitVec 32))) (Found!4131 (index!18713 (_ BitVec 32))) (Intermediate!4131 (undefined!4943 Bool) (index!18714 (_ BitVec 32)) (x!47735 (_ BitVec 32))) (Undefined!4131) (MissingVacant!4131 (index!18715 (_ BitVec 32))) )
))
(declare-fun lt!231776 () SeekEntryResult!4131)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32560 (_ BitVec 32)) SeekEntryResult!4131)

(assert (=> b!507349 (= lt!231776 (seekEntryOrOpen!0 lt!231772 lt!231778 mask!3524))))

(assert (=> b!507349 false))

(declare-fun b!507350 () Bool)

(declare-fun e!296912 () Bool)

(declare-fun e!296914 () Bool)

(assert (=> b!507350 (= e!296912 e!296914)))

(declare-fun res!308462 () Bool)

(assert (=> b!507350 (=> (not res!308462) (not e!296914))))

(declare-fun lt!231775 () SeekEntryResult!4131)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507350 (= res!308462 (or (= lt!231775 (MissingZero!4131 i!1204)) (= lt!231775 (MissingVacant!4131 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun a!3235 () array!32560)

(assert (=> b!507350 (= lt!231775 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!507352 () Bool)

(declare-fun res!308468 () Bool)

(assert (=> b!507352 (=> (not res!308468) (not e!296912))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507352 (= res!308468 (validKeyInArray!0 (select (arr!15657 a!3235) j!176)))))

(declare-fun b!507353 () Bool)

(declare-fun res!308466 () Bool)

(assert (=> b!507353 (=> (not res!308466) (not e!296914))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32560 (_ BitVec 32)) Bool)

(assert (=> b!507353 (= res!308466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507354 () Bool)

(declare-fun res!308459 () Bool)

(assert (=> b!507354 (=> (not res!308459) (not e!296912))))

(assert (=> b!507354 (= res!308459 (and (= (size!16021 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16021 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16021 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507355 () Bool)

(declare-fun res!308461 () Bool)

(assert (=> b!507355 (=> (not res!308461) (not e!296912))))

(declare-fun arrayContainsKey!0 (array!32560 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507355 (= res!308461 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun e!296916 () Bool)

(declare-fun b!507356 () Bool)

(assert (=> b!507356 (= e!296916 (= (seekEntryOrOpen!0 (select (arr!15657 a!3235) j!176) a!3235 mask!3524) (Found!4131 j!176)))))

(declare-fun b!507357 () Bool)

(declare-fun res!308463 () Bool)

(assert (=> b!507357 (=> (not res!308463) (not e!296912))))

(assert (=> b!507357 (= res!308463 (validKeyInArray!0 k!2280))))

(declare-fun b!507351 () Bool)

(declare-fun res!308465 () Bool)

(assert (=> b!507351 (=> (not res!308465) (not e!296914))))

(declare-datatypes ((List!9868 0))(
  ( (Nil!9865) (Cons!9864 (h!10741 (_ BitVec 64)) (t!16104 List!9868)) )
))
(declare-fun arrayNoDuplicates!0 (array!32560 (_ BitVec 32) List!9868) Bool)

(assert (=> b!507351 (= res!308465 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9865))))

(declare-fun res!308464 () Bool)

(assert (=> start!45844 (=> (not res!308464) (not e!296912))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45844 (= res!308464 (validMask!0 mask!3524))))

(assert (=> start!45844 e!296912))

(assert (=> start!45844 true))

(declare-fun array_inv!11431 (array!32560) Bool)

(assert (=> start!45844 (array_inv!11431 a!3235)))

(declare-fun b!507358 () Bool)

(declare-fun e!296915 () Bool)

(assert (=> b!507358 (= e!296914 (not e!296915))))

(declare-fun res!308467 () Bool)

(assert (=> b!507358 (=> res!308467 e!296915)))

(declare-fun lt!231774 () SeekEntryResult!4131)

(declare-fun lt!231771 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32560 (_ BitVec 32)) SeekEntryResult!4131)

(assert (=> b!507358 (= res!308467 (= lt!231774 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231771 lt!231772 lt!231778 mask!3524)))))

(declare-fun lt!231773 () (_ BitVec 32))

(assert (=> b!507358 (= lt!231774 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231773 (select (arr!15657 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507358 (= lt!231771 (toIndex!0 lt!231772 mask!3524))))

(assert (=> b!507358 (= lt!231772 (select (store (arr!15657 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!507358 (= lt!231773 (toIndex!0 (select (arr!15657 a!3235) j!176) mask!3524))))

(assert (=> b!507358 (= lt!231778 (array!32561 (store (arr!15657 a!3235) i!1204 k!2280) (size!16021 a!3235)))))

(assert (=> b!507358 e!296916))

(declare-fun res!308460 () Bool)

(assert (=> b!507358 (=> (not res!308460) (not e!296916))))

(assert (=> b!507358 (= res!308460 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15542 0))(
  ( (Unit!15543) )
))
(declare-fun lt!231779 () Unit!15542)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32560 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15542)

(assert (=> b!507358 (= lt!231779 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!507359 () Bool)

(assert (=> b!507359 (= e!296915 e!296913)))

(declare-fun res!308458 () Bool)

(assert (=> b!507359 (=> res!308458 e!296913)))

(declare-fun lt!231777 () Bool)

(assert (=> b!507359 (= res!308458 (or (and (not lt!231777) (undefined!4943 lt!231774)) (and (not lt!231777) (not (undefined!4943 lt!231774)))))))

(assert (=> b!507359 (= lt!231777 (not (is-Intermediate!4131 lt!231774)))))

(assert (= (and start!45844 res!308464) b!507354))

(assert (= (and b!507354 res!308459) b!507352))

(assert (= (and b!507352 res!308468) b!507357))

(assert (= (and b!507357 res!308463) b!507355))

(assert (= (and b!507355 res!308461) b!507350))

(assert (= (and b!507350 res!308462) b!507353))

(assert (= (and b!507353 res!308466) b!507351))

(assert (= (and b!507351 res!308465) b!507358))

(assert (= (and b!507358 res!308460) b!507356))

(assert (= (and b!507358 (not res!308467)) b!507359))

(assert (= (and b!507359 (not res!308458)) b!507349))

(declare-fun m!488173 () Bool)

(assert (=> b!507357 m!488173))

(declare-fun m!488175 () Bool)

(assert (=> b!507356 m!488175))

(assert (=> b!507356 m!488175))

(declare-fun m!488177 () Bool)

(assert (=> b!507356 m!488177))

(declare-fun m!488179 () Bool)

(assert (=> b!507351 m!488179))

(declare-fun m!488181 () Bool)

(assert (=> start!45844 m!488181))

(declare-fun m!488183 () Bool)

(assert (=> start!45844 m!488183))

(declare-fun m!488185 () Bool)

(assert (=> b!507353 m!488185))

(declare-fun m!488187 () Bool)

(assert (=> b!507350 m!488187))

(declare-fun m!488189 () Bool)

(assert (=> b!507349 m!488189))

(declare-fun m!488191 () Bool)

(assert (=> b!507355 m!488191))

(assert (=> b!507352 m!488175))

(assert (=> b!507352 m!488175))

(declare-fun m!488193 () Bool)

(assert (=> b!507352 m!488193))

(declare-fun m!488195 () Bool)

(assert (=> b!507358 m!488195))

(declare-fun m!488197 () Bool)

(assert (=> b!507358 m!488197))

(declare-fun m!488199 () Bool)

(assert (=> b!507358 m!488199))

(declare-fun m!488201 () Bool)

(assert (=> b!507358 m!488201))

(assert (=> b!507358 m!488175))

(declare-fun m!488203 () Bool)

(assert (=> b!507358 m!488203))

(assert (=> b!507358 m!488175))

(declare-fun m!488205 () Bool)

(assert (=> b!507358 m!488205))

(declare-fun m!488207 () Bool)

(assert (=> b!507358 m!488207))

(declare-fun m!488209 () Bool)

(assert (=> b!507358 m!488209))

(assert (=> b!507358 m!488175))

(push 1)


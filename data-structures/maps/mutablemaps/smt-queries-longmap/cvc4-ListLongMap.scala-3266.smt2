; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45482 () Bool)

(assert start!45482)

(declare-fun b!500388 () Bool)

(declare-fun res!302356 () Bool)

(declare-fun e!293176 () Bool)

(assert (=> b!500388 (=> (not res!302356) (not e!293176))))

(declare-datatypes ((array!32267 0))(
  ( (array!32268 (arr!15512 (Array (_ BitVec 32) (_ BitVec 64))) (size!15876 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32267)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32267 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500388 (= res!302356 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500389 () Bool)

(declare-fun e!293179 () Bool)

(declare-fun e!293173 () Bool)

(assert (=> b!500389 (= e!293179 e!293173)))

(declare-fun res!302360 () Bool)

(assert (=> b!500389 (=> res!302360 e!293173)))

(declare-fun lt!227179 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3986 0))(
  ( (MissingZero!3986 (index!18126 (_ BitVec 32))) (Found!3986 (index!18127 (_ BitVec 32))) (Intermediate!3986 (undefined!4798 Bool) (index!18128 (_ BitVec 32)) (x!47186 (_ BitVec 32))) (Undefined!3986) (MissingVacant!3986 (index!18129 (_ BitVec 32))) )
))
(declare-fun lt!227174 () SeekEntryResult!3986)

(assert (=> b!500389 (= res!302360 (or (bvsgt #b00000000000000000000000000000000 (x!47186 lt!227174)) (bvsgt (x!47186 lt!227174) #b01111111111111111111111111111110) (bvslt lt!227179 #b00000000000000000000000000000000) (bvsge lt!227179 (size!15876 a!3235)) (bvslt (index!18128 lt!227174) #b00000000000000000000000000000000) (bvsge (index!18128 lt!227174) (size!15876 a!3235)) (not (= lt!227174 (Intermediate!3986 false (index!18128 lt!227174) (x!47186 lt!227174))))))))

(assert (=> b!500389 (and (or (= (select (arr!15512 a!3235) (index!18128 lt!227174)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15512 a!3235) (index!18128 lt!227174)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15512 a!3235) (index!18128 lt!227174)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15512 a!3235) (index!18128 lt!227174)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!15034 0))(
  ( (Unit!15035) )
))
(declare-fun lt!227180 () Unit!15034)

(declare-fun e!293177 () Unit!15034)

(assert (=> b!500389 (= lt!227180 e!293177)))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun c!59297 () Bool)

(assert (=> b!500389 (= c!59297 (= (select (arr!15512 a!3235) (index!18128 lt!227174)) (select (arr!15512 a!3235) j!176)))))

(assert (=> b!500389 (and (bvslt (x!47186 lt!227174) #b01111111111111111111111111111110) (or (= (select (arr!15512 a!3235) (index!18128 lt!227174)) (select (arr!15512 a!3235) j!176)) (= (select (arr!15512 a!3235) (index!18128 lt!227174)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15512 a!3235) (index!18128 lt!227174)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!500390 () Bool)

(declare-fun Unit!15036 () Unit!15034)

(assert (=> b!500390 (= e!293177 Unit!15036)))

(declare-fun b!500391 () Bool)

(declare-fun res!302352 () Bool)

(assert (=> b!500391 (=> (not res!302352) (not e!293176))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!500391 (= res!302352 (and (= (size!15876 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15876 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15876 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!500392 () Bool)

(declare-fun res!302348 () Bool)

(assert (=> b!500392 (=> (not res!302348) (not e!293176))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500392 (= res!302348 (validKeyInArray!0 (select (arr!15512 a!3235) j!176)))))

(declare-fun b!500393 () Bool)

(declare-fun e!293178 () Bool)

(assert (=> b!500393 (= e!293176 e!293178)))

(declare-fun res!302353 () Bool)

(assert (=> b!500393 (=> (not res!302353) (not e!293178))))

(declare-fun lt!227171 () SeekEntryResult!3986)

(assert (=> b!500393 (= res!302353 (or (= lt!227171 (MissingZero!3986 i!1204)) (= lt!227171 (MissingVacant!3986 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32267 (_ BitVec 32)) SeekEntryResult!3986)

(assert (=> b!500393 (= lt!227171 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!500394 () Bool)

(declare-fun res!302358 () Bool)

(assert (=> b!500394 (=> (not res!302358) (not e!293176))))

(assert (=> b!500394 (= res!302358 (validKeyInArray!0 k!2280))))

(declare-fun e!293174 () Bool)

(declare-fun b!500395 () Bool)

(assert (=> b!500395 (= e!293174 (= (seekEntryOrOpen!0 (select (arr!15512 a!3235) j!176) a!3235 mask!3524) (Found!3986 j!176)))))

(declare-fun b!500396 () Bool)

(declare-fun e!293175 () Bool)

(assert (=> b!500396 (= e!293175 false)))

(declare-fun b!500398 () Bool)

(declare-fun res!302351 () Bool)

(assert (=> b!500398 (=> res!302351 e!293179)))

(assert (=> b!500398 (= res!302351 (or (undefined!4798 lt!227174) (not (is-Intermediate!3986 lt!227174))))))

(declare-fun b!500399 () Bool)

(declare-fun res!302349 () Bool)

(assert (=> b!500399 (=> (not res!302349) (not e!293178))))

(declare-datatypes ((List!9723 0))(
  ( (Nil!9720) (Cons!9719 (h!10593 (_ BitVec 64)) (t!15959 List!9723)) )
))
(declare-fun arrayNoDuplicates!0 (array!32267 (_ BitVec 32) List!9723) Bool)

(assert (=> b!500399 (= res!302349 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9720))))

(declare-fun b!500400 () Bool)

(assert (=> b!500400 (= e!293173 true)))

(declare-fun lt!227175 () (_ BitVec 64))

(declare-fun lt!227178 () array!32267)

(declare-fun lt!227172 () SeekEntryResult!3986)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32267 (_ BitVec 32)) SeekEntryResult!3986)

(assert (=> b!500400 (= lt!227172 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227179 lt!227175 lt!227178 mask!3524))))

(declare-fun b!500401 () Bool)

(assert (=> b!500401 (= e!293178 (not e!293179))))

(declare-fun res!302354 () Bool)

(assert (=> b!500401 (=> res!302354 e!293179)))

(declare-fun lt!227177 () (_ BitVec 32))

(assert (=> b!500401 (= res!302354 (= lt!227174 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227177 lt!227175 lt!227178 mask!3524)))))

(assert (=> b!500401 (= lt!227174 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227179 (select (arr!15512 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500401 (= lt!227177 (toIndex!0 lt!227175 mask!3524))))

(assert (=> b!500401 (= lt!227175 (select (store (arr!15512 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!500401 (= lt!227179 (toIndex!0 (select (arr!15512 a!3235) j!176) mask!3524))))

(assert (=> b!500401 (= lt!227178 (array!32268 (store (arr!15512 a!3235) i!1204 k!2280) (size!15876 a!3235)))))

(assert (=> b!500401 e!293174))

(declare-fun res!302350 () Bool)

(assert (=> b!500401 (=> (not res!302350) (not e!293174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32267 (_ BitVec 32)) Bool)

(assert (=> b!500401 (= res!302350 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!227176 () Unit!15034)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32267 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15034)

(assert (=> b!500401 (= lt!227176 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!500402 () Bool)

(declare-fun Unit!15037 () Unit!15034)

(assert (=> b!500402 (= e!293177 Unit!15037)))

(declare-fun lt!227173 () Unit!15034)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32267 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15034)

(assert (=> b!500402 (= lt!227173 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!227179 #b00000000000000000000000000000000 (index!18128 lt!227174) (x!47186 lt!227174) mask!3524))))

(declare-fun res!302357 () Bool)

(assert (=> b!500402 (= res!302357 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227179 lt!227175 lt!227178 mask!3524) (Intermediate!3986 false (index!18128 lt!227174) (x!47186 lt!227174))))))

(assert (=> b!500402 (=> (not res!302357) (not e!293175))))

(assert (=> b!500402 e!293175))

(declare-fun res!302355 () Bool)

(assert (=> start!45482 (=> (not res!302355) (not e!293176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45482 (= res!302355 (validMask!0 mask!3524))))

(assert (=> start!45482 e!293176))

(assert (=> start!45482 true))

(declare-fun array_inv!11286 (array!32267) Bool)

(assert (=> start!45482 (array_inv!11286 a!3235)))

(declare-fun b!500397 () Bool)

(declare-fun res!302359 () Bool)

(assert (=> b!500397 (=> (not res!302359) (not e!293178))))

(assert (=> b!500397 (= res!302359 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45482 res!302355) b!500391))

(assert (= (and b!500391 res!302352) b!500392))

(assert (= (and b!500392 res!302348) b!500394))

(assert (= (and b!500394 res!302358) b!500388))

(assert (= (and b!500388 res!302356) b!500393))

(assert (= (and b!500393 res!302353) b!500397))

(assert (= (and b!500397 res!302359) b!500399))

(assert (= (and b!500399 res!302349) b!500401))

(assert (= (and b!500401 res!302350) b!500395))

(assert (= (and b!500401 (not res!302354)) b!500398))

(assert (= (and b!500398 (not res!302351)) b!500389))

(assert (= (and b!500389 c!59297) b!500402))

(assert (= (and b!500389 (not c!59297)) b!500390))

(assert (= (and b!500402 res!302357) b!500396))

(assert (= (and b!500389 (not res!302360)) b!500400))

(declare-fun m!481549 () Bool)

(assert (=> b!500400 m!481549))

(declare-fun m!481551 () Bool)

(assert (=> b!500395 m!481551))

(assert (=> b!500395 m!481551))

(declare-fun m!481553 () Bool)

(assert (=> b!500395 m!481553))

(declare-fun m!481555 () Bool)

(assert (=> b!500394 m!481555))

(declare-fun m!481557 () Bool)

(assert (=> b!500399 m!481557))

(declare-fun m!481559 () Bool)

(assert (=> b!500402 m!481559))

(assert (=> b!500402 m!481549))

(declare-fun m!481561 () Bool)

(assert (=> b!500401 m!481561))

(declare-fun m!481563 () Bool)

(assert (=> b!500401 m!481563))

(declare-fun m!481565 () Bool)

(assert (=> b!500401 m!481565))

(assert (=> b!500401 m!481551))

(declare-fun m!481567 () Bool)

(assert (=> b!500401 m!481567))

(assert (=> b!500401 m!481551))

(assert (=> b!500401 m!481551))

(declare-fun m!481569 () Bool)

(assert (=> b!500401 m!481569))

(declare-fun m!481571 () Bool)

(assert (=> b!500401 m!481571))

(declare-fun m!481573 () Bool)

(assert (=> b!500401 m!481573))

(declare-fun m!481575 () Bool)

(assert (=> b!500401 m!481575))

(assert (=> b!500392 m!481551))

(assert (=> b!500392 m!481551))

(declare-fun m!481577 () Bool)

(assert (=> b!500392 m!481577))

(declare-fun m!481579 () Bool)

(assert (=> start!45482 m!481579))

(declare-fun m!481581 () Bool)

(assert (=> start!45482 m!481581))

(declare-fun m!481583 () Bool)

(assert (=> b!500388 m!481583))

(declare-fun m!481585 () Bool)

(assert (=> b!500393 m!481585))

(declare-fun m!481587 () Bool)

(assert (=> b!500389 m!481587))

(assert (=> b!500389 m!481551))

(declare-fun m!481589 () Bool)

(assert (=> b!500397 m!481589))

(push 1)


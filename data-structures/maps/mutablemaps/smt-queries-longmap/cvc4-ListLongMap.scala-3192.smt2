; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44792 () Bool)

(assert start!44792)

(declare-fun res!294551 () Bool)

(declare-fun e!288746 () Bool)

(assert (=> start!44792 (=> (not res!294551) (not e!288746))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44792 (= res!294551 (validMask!0 mask!3524))))

(assert (=> start!44792 e!288746))

(assert (=> start!44792 true))

(declare-datatypes ((array!31811 0))(
  ( (array!31812 (arr!15290 (Array (_ BitVec 32) (_ BitVec 64))) (size!15654 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31811)

(declare-fun array_inv!11064 (array!31811) Bool)

(assert (=> start!44792 (array_inv!11064 a!3235)))

(declare-fun b!491463 () Bool)

(declare-fun res!294550 () Bool)

(assert (=> b!491463 (=> (not res!294550) (not e!288746))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491463 (= res!294550 (validKeyInArray!0 k!2280))))

(declare-fun b!491464 () Bool)

(declare-fun res!294555 () Bool)

(assert (=> b!491464 (=> (not res!294555) (not e!288746))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!491464 (= res!294555 (and (= (size!15654 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15654 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15654 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!491465 () Bool)

(declare-fun res!294552 () Bool)

(declare-fun e!288747 () Bool)

(assert (=> b!491465 (=> (not res!294552) (not e!288747))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31811 (_ BitVec 32)) Bool)

(assert (=> b!491465 (= res!294552 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491466 () Bool)

(assert (=> b!491466 (= e!288746 e!288747)))

(declare-fun res!294557 () Bool)

(assert (=> b!491466 (=> (not res!294557) (not e!288747))))

(declare-datatypes ((SeekEntryResult!3764 0))(
  ( (MissingZero!3764 (index!17235 (_ BitVec 32))) (Found!3764 (index!17236 (_ BitVec 32))) (Intermediate!3764 (undefined!4576 Bool) (index!17237 (_ BitVec 32)) (x!46345 (_ BitVec 32))) (Undefined!3764) (MissingVacant!3764 (index!17238 (_ BitVec 32))) )
))
(declare-fun lt!222261 () SeekEntryResult!3764)

(assert (=> b!491466 (= res!294557 (or (= lt!222261 (MissingZero!3764 i!1204)) (= lt!222261 (MissingVacant!3764 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31811 (_ BitVec 32)) SeekEntryResult!3764)

(assert (=> b!491466 (= lt!222261 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!491467 () Bool)

(declare-fun res!294553 () Bool)

(assert (=> b!491467 (=> (not res!294553) (not e!288746))))

(assert (=> b!491467 (= res!294553 (validKeyInArray!0 (select (arr!15290 a!3235) j!176)))))

(declare-fun b!491468 () Bool)

(declare-fun e!288748 () Bool)

(assert (=> b!491468 (= e!288748 true)))

(declare-fun lt!222265 () SeekEntryResult!3764)

(declare-fun lt!222266 () (_ BitVec 64))

(declare-fun lt!222262 () array!31811)

(assert (=> b!491468 (= lt!222265 (seekEntryOrOpen!0 lt!222266 lt!222262 mask!3524))))

(declare-datatypes ((Unit!14466 0))(
  ( (Unit!14467) )
))
(declare-fun lt!222263 () Unit!14466)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31811 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14466)

(assert (=> b!491468 (= lt!222263 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!491469 () Bool)

(declare-fun res!294549 () Bool)

(assert (=> b!491469 (=> (not res!294549) (not e!288746))))

(declare-fun arrayContainsKey!0 (array!31811 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491469 (= res!294549 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!491470 () Bool)

(assert (=> b!491470 (= e!288747 (not e!288748))))

(declare-fun res!294554 () Bool)

(assert (=> b!491470 (=> res!294554 e!288748)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31811 (_ BitVec 32)) SeekEntryResult!3764)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491470 (= res!294554 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15290 a!3235) j!176) mask!3524) (select (arr!15290 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!222266 mask!3524) lt!222266 lt!222262 mask!3524))))))

(assert (=> b!491470 (= lt!222266 (select (store (arr!15290 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!491470 (= lt!222262 (array!31812 (store (arr!15290 a!3235) i!1204 k!2280) (size!15654 a!3235)))))

(assert (=> b!491470 (= lt!222265 (Found!3764 j!176))))

(assert (=> b!491470 (= lt!222265 (seekEntryOrOpen!0 (select (arr!15290 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!491470 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!222264 () Unit!14466)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31811 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14466)

(assert (=> b!491470 (= lt!222264 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491471 () Bool)

(declare-fun res!294556 () Bool)

(assert (=> b!491471 (=> (not res!294556) (not e!288747))))

(declare-datatypes ((List!9501 0))(
  ( (Nil!9498) (Cons!9497 (h!10359 (_ BitVec 64)) (t!15737 List!9501)) )
))
(declare-fun arrayNoDuplicates!0 (array!31811 (_ BitVec 32) List!9501) Bool)

(assert (=> b!491471 (= res!294556 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9498))))

(assert (= (and start!44792 res!294551) b!491464))

(assert (= (and b!491464 res!294555) b!491467))

(assert (= (and b!491467 res!294553) b!491463))

(assert (= (and b!491463 res!294550) b!491469))

(assert (= (and b!491469 res!294549) b!491466))

(assert (= (and b!491466 res!294557) b!491465))

(assert (= (and b!491465 res!294552) b!491471))

(assert (= (and b!491471 res!294556) b!491470))

(assert (= (and b!491470 (not res!294554)) b!491468))

(declare-fun m!472185 () Bool)

(assert (=> start!44792 m!472185))

(declare-fun m!472187 () Bool)

(assert (=> start!44792 m!472187))

(declare-fun m!472189 () Bool)

(assert (=> b!491466 m!472189))

(declare-fun m!472191 () Bool)

(assert (=> b!491469 m!472191))

(declare-fun m!472193 () Bool)

(assert (=> b!491463 m!472193))

(declare-fun m!472195 () Bool)

(assert (=> b!491471 m!472195))

(declare-fun m!472197 () Bool)

(assert (=> b!491470 m!472197))

(declare-fun m!472199 () Bool)

(assert (=> b!491470 m!472199))

(declare-fun m!472201 () Bool)

(assert (=> b!491470 m!472201))

(declare-fun m!472203 () Bool)

(assert (=> b!491470 m!472203))

(declare-fun m!472205 () Bool)

(assert (=> b!491470 m!472205))

(declare-fun m!472207 () Bool)

(assert (=> b!491470 m!472207))

(declare-fun m!472209 () Bool)

(assert (=> b!491470 m!472209))

(assert (=> b!491470 m!472207))

(assert (=> b!491470 m!472205))

(assert (=> b!491470 m!472207))

(declare-fun m!472211 () Bool)

(assert (=> b!491470 m!472211))

(assert (=> b!491470 m!472207))

(declare-fun m!472213 () Bool)

(assert (=> b!491470 m!472213))

(assert (=> b!491470 m!472201))

(declare-fun m!472215 () Bool)

(assert (=> b!491470 m!472215))

(declare-fun m!472217 () Bool)

(assert (=> b!491468 m!472217))

(declare-fun m!472219 () Bool)

(assert (=> b!491468 m!472219))

(assert (=> b!491467 m!472207))

(assert (=> b!491467 m!472207))

(declare-fun m!472221 () Bool)

(assert (=> b!491467 m!472221))

(declare-fun m!472223 () Bool)

(assert (=> b!491465 m!472223))

(push 1)


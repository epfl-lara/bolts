; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44752 () Bool)

(assert start!44752)

(declare-fun b!490923 () Bool)

(declare-fun e!288505 () Bool)

(declare-fun e!288506 () Bool)

(assert (=> b!490923 (= e!288505 e!288506)))

(declare-fun res!294011 () Bool)

(assert (=> b!490923 (=> (not res!294011) (not e!288506))))

(declare-datatypes ((SeekEntryResult!3744 0))(
  ( (MissingZero!3744 (index!17155 (_ BitVec 32))) (Found!3744 (index!17156 (_ BitVec 32))) (Intermediate!3744 (undefined!4556 Bool) (index!17157 (_ BitVec 32)) (x!46277 (_ BitVec 32))) (Undefined!3744) (MissingVacant!3744 (index!17158 (_ BitVec 32))) )
))
(declare-fun lt!221904 () SeekEntryResult!3744)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!490923 (= res!294011 (or (= lt!221904 (MissingZero!3744 i!1204)) (= lt!221904 (MissingVacant!3744 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31771 0))(
  ( (array!31772 (arr!15270 (Array (_ BitVec 32) (_ BitVec 64))) (size!15634 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31771)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31771 (_ BitVec 32)) SeekEntryResult!3744)

(assert (=> b!490923 (= lt!221904 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!490924 () Bool)

(declare-fun res!294017 () Bool)

(assert (=> b!490924 (=> (not res!294017) (not e!288505))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!490924 (= res!294017 (and (= (size!15634 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15634 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15634 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490925 () Bool)

(declare-fun e!288507 () Bool)

(assert (=> b!490925 (= e!288506 (not e!288507))))

(declare-fun res!294014 () Bool)

(assert (=> b!490925 (=> res!294014 e!288507)))

(declare-fun lt!221903 () array!31771)

(declare-fun lt!221906 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31771 (_ BitVec 32)) SeekEntryResult!3744)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490925 (= res!294014 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15270 a!3235) j!176) mask!3524) (select (arr!15270 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221906 mask!3524) lt!221906 lt!221903 mask!3524))))))

(assert (=> b!490925 (= lt!221906 (select (store (arr!15270 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!490925 (= lt!221903 (array!31772 (store (arr!15270 a!3235) i!1204 k!2280) (size!15634 a!3235)))))

(declare-fun lt!221901 () SeekEntryResult!3744)

(assert (=> b!490925 (= lt!221901 (Found!3744 j!176))))

(assert (=> b!490925 (= lt!221901 (seekEntryOrOpen!0 (select (arr!15270 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31771 (_ BitVec 32)) Bool)

(assert (=> b!490925 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14426 0))(
  ( (Unit!14427) )
))
(declare-fun lt!221905 () Unit!14426)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31771 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14426)

(assert (=> b!490925 (= lt!221905 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490926 () Bool)

(declare-fun res!294016 () Bool)

(assert (=> b!490926 (=> (not res!294016) (not e!288506))))

(assert (=> b!490926 (= res!294016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490928 () Bool)

(assert (=> b!490928 (= e!288507 true)))

(assert (=> b!490928 (= lt!221901 (seekEntryOrOpen!0 lt!221906 lt!221903 mask!3524))))

(declare-fun lt!221902 () Unit!14426)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31771 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14426)

(assert (=> b!490928 (= lt!221902 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!490929 () Bool)

(declare-fun res!294012 () Bool)

(assert (=> b!490929 (=> (not res!294012) (not e!288505))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490929 (= res!294012 (validKeyInArray!0 (select (arr!15270 a!3235) j!176)))))

(declare-fun res!294015 () Bool)

(assert (=> start!44752 (=> (not res!294015) (not e!288505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44752 (= res!294015 (validMask!0 mask!3524))))

(assert (=> start!44752 e!288505))

(assert (=> start!44752 true))

(declare-fun array_inv!11044 (array!31771) Bool)

(assert (=> start!44752 (array_inv!11044 a!3235)))

(declare-fun b!490927 () Bool)

(declare-fun res!294013 () Bool)

(assert (=> b!490927 (=> (not res!294013) (not e!288506))))

(declare-datatypes ((List!9481 0))(
  ( (Nil!9478) (Cons!9477 (h!10339 (_ BitVec 64)) (t!15717 List!9481)) )
))
(declare-fun arrayNoDuplicates!0 (array!31771 (_ BitVec 32) List!9481) Bool)

(assert (=> b!490927 (= res!294013 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9478))))

(declare-fun b!490930 () Bool)

(declare-fun res!294010 () Bool)

(assert (=> b!490930 (=> (not res!294010) (not e!288505))))

(assert (=> b!490930 (= res!294010 (validKeyInArray!0 k!2280))))

(declare-fun b!490931 () Bool)

(declare-fun res!294009 () Bool)

(assert (=> b!490931 (=> (not res!294009) (not e!288505))))

(declare-fun arrayContainsKey!0 (array!31771 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490931 (= res!294009 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44752 res!294015) b!490924))

(assert (= (and b!490924 res!294017) b!490929))

(assert (= (and b!490929 res!294012) b!490930))

(assert (= (and b!490930 res!294010) b!490931))

(assert (= (and b!490931 res!294009) b!490923))

(assert (= (and b!490923 res!294011) b!490926))

(assert (= (and b!490926 res!294016) b!490927))

(assert (= (and b!490927 res!294013) b!490925))

(assert (= (and b!490925 (not res!294014)) b!490928))

(declare-fun m!471385 () Bool)

(assert (=> start!44752 m!471385))

(declare-fun m!471387 () Bool)

(assert (=> start!44752 m!471387))

(declare-fun m!471389 () Bool)

(assert (=> b!490927 m!471389))

(declare-fun m!471391 () Bool)

(assert (=> b!490923 m!471391))

(declare-fun m!471393 () Bool)

(assert (=> b!490930 m!471393))

(declare-fun m!471395 () Bool)

(assert (=> b!490928 m!471395))

(declare-fun m!471397 () Bool)

(assert (=> b!490928 m!471397))

(declare-fun m!471399 () Bool)

(assert (=> b!490931 m!471399))

(declare-fun m!471401 () Bool)

(assert (=> b!490926 m!471401))

(declare-fun m!471403 () Bool)

(assert (=> b!490925 m!471403))

(declare-fun m!471405 () Bool)

(assert (=> b!490925 m!471405))

(declare-fun m!471407 () Bool)

(assert (=> b!490925 m!471407))

(declare-fun m!471409 () Bool)

(assert (=> b!490925 m!471409))

(declare-fun m!471411 () Bool)

(assert (=> b!490925 m!471411))

(declare-fun m!471413 () Bool)

(assert (=> b!490925 m!471413))

(declare-fun m!471415 () Bool)

(assert (=> b!490925 m!471415))

(assert (=> b!490925 m!471411))

(assert (=> b!490925 m!471409))

(assert (=> b!490925 m!471411))

(declare-fun m!471417 () Bool)

(assert (=> b!490925 m!471417))

(assert (=> b!490925 m!471415))

(declare-fun m!471419 () Bool)

(assert (=> b!490925 m!471419))

(assert (=> b!490925 m!471411))

(declare-fun m!471421 () Bool)

(assert (=> b!490925 m!471421))

(assert (=> b!490929 m!471411))

(assert (=> b!490929 m!471411))

(declare-fun m!471423 () Bool)

(assert (=> b!490929 m!471423))

(push 1)


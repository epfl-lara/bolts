; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44754 () Bool)

(assert start!44754)

(declare-fun b!490950 () Bool)

(declare-fun e!288519 () Bool)

(declare-fun e!288518 () Bool)

(assert (=> b!490950 (= e!288519 e!288518)))

(declare-fun res!294041 () Bool)

(assert (=> b!490950 (=> (not res!294041) (not e!288518))))

(declare-datatypes ((SeekEntryResult!3745 0))(
  ( (MissingZero!3745 (index!17159 (_ BitVec 32))) (Found!3745 (index!17160 (_ BitVec 32))) (Intermediate!3745 (undefined!4557 Bool) (index!17161 (_ BitVec 32)) (x!46278 (_ BitVec 32))) (Undefined!3745) (MissingVacant!3745 (index!17162 (_ BitVec 32))) )
))
(declare-fun lt!221921 () SeekEntryResult!3745)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!490950 (= res!294041 (or (= lt!221921 (MissingZero!3745 i!1204)) (= lt!221921 (MissingVacant!3745 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31773 0))(
  ( (array!31774 (arr!15271 (Array (_ BitVec 32) (_ BitVec 64))) (size!15635 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31773)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31773 (_ BitVec 32)) SeekEntryResult!3745)

(assert (=> b!490950 (= lt!221921 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!490951 () Bool)

(declare-fun res!294038 () Bool)

(assert (=> b!490951 (=> (not res!294038) (not e!288519))))

(declare-fun arrayContainsKey!0 (array!31773 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490951 (= res!294038 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490952 () Bool)

(declare-fun res!294044 () Bool)

(assert (=> b!490952 (=> (not res!294044) (not e!288519))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!490952 (= res!294044 (and (= (size!15635 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15635 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15635 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!294043 () Bool)

(assert (=> start!44754 (=> (not res!294043) (not e!288519))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44754 (= res!294043 (validMask!0 mask!3524))))

(assert (=> start!44754 e!288519))

(assert (=> start!44754 true))

(declare-fun array_inv!11045 (array!31773) Bool)

(assert (=> start!44754 (array_inv!11045 a!3235)))

(declare-fun b!490953 () Bool)

(declare-fun res!294036 () Bool)

(assert (=> b!490953 (=> (not res!294036) (not e!288518))))

(declare-datatypes ((List!9482 0))(
  ( (Nil!9479) (Cons!9478 (h!10340 (_ BitVec 64)) (t!15718 List!9482)) )
))
(declare-fun arrayNoDuplicates!0 (array!31773 (_ BitVec 32) List!9482) Bool)

(assert (=> b!490953 (= res!294036 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9479))))

(declare-fun b!490954 () Bool)

(declare-fun res!294037 () Bool)

(assert (=> b!490954 (=> (not res!294037) (not e!288519))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490954 (= res!294037 (validKeyInArray!0 (select (arr!15271 a!3235) j!176)))))

(declare-fun b!490955 () Bool)

(declare-fun e!288520 () Bool)

(assert (=> b!490955 (= e!288518 (not e!288520))))

(declare-fun res!294042 () Bool)

(assert (=> b!490955 (=> res!294042 e!288520)))

(declare-fun lt!221923 () (_ BitVec 64))

(declare-fun lt!221920 () array!31773)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31773 (_ BitVec 32)) SeekEntryResult!3745)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490955 (= res!294042 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15271 a!3235) j!176) mask!3524) (select (arr!15271 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221923 mask!3524) lt!221923 lt!221920 mask!3524))))))

(assert (=> b!490955 (= lt!221923 (select (store (arr!15271 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!490955 (= lt!221920 (array!31774 (store (arr!15271 a!3235) i!1204 k0!2280) (size!15635 a!3235)))))

(declare-fun lt!221919 () SeekEntryResult!3745)

(assert (=> b!490955 (= lt!221919 (Found!3745 j!176))))

(assert (=> b!490955 (= lt!221919 (seekEntryOrOpen!0 (select (arr!15271 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31773 (_ BitVec 32)) Bool)

(assert (=> b!490955 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14428 0))(
  ( (Unit!14429) )
))
(declare-fun lt!221922 () Unit!14428)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31773 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14428)

(assert (=> b!490955 (= lt!221922 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490956 () Bool)

(declare-fun res!294039 () Bool)

(assert (=> b!490956 (=> (not res!294039) (not e!288518))))

(assert (=> b!490956 (= res!294039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490957 () Bool)

(declare-fun res!294040 () Bool)

(assert (=> b!490957 (=> (not res!294040) (not e!288519))))

(assert (=> b!490957 (= res!294040 (validKeyInArray!0 k0!2280))))

(declare-fun b!490958 () Bool)

(assert (=> b!490958 (= e!288520 true)))

(assert (=> b!490958 (= lt!221919 (seekEntryOrOpen!0 lt!221923 lt!221920 mask!3524))))

(declare-fun lt!221924 () Unit!14428)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31773 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14428)

(assert (=> b!490958 (= lt!221924 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(assert (= (and start!44754 res!294043) b!490952))

(assert (= (and b!490952 res!294044) b!490954))

(assert (= (and b!490954 res!294037) b!490957))

(assert (= (and b!490957 res!294040) b!490951))

(assert (= (and b!490951 res!294038) b!490950))

(assert (= (and b!490950 res!294041) b!490956))

(assert (= (and b!490956 res!294039) b!490953))

(assert (= (and b!490953 res!294036) b!490955))

(assert (= (and b!490955 (not res!294042)) b!490958))

(declare-fun m!471425 () Bool)

(assert (=> b!490958 m!471425))

(declare-fun m!471427 () Bool)

(assert (=> b!490958 m!471427))

(declare-fun m!471429 () Bool)

(assert (=> b!490951 m!471429))

(declare-fun m!471431 () Bool)

(assert (=> b!490955 m!471431))

(declare-fun m!471433 () Bool)

(assert (=> b!490955 m!471433))

(declare-fun m!471435 () Bool)

(assert (=> b!490955 m!471435))

(declare-fun m!471437 () Bool)

(assert (=> b!490955 m!471437))

(declare-fun m!471439 () Bool)

(assert (=> b!490955 m!471439))

(declare-fun m!471441 () Bool)

(assert (=> b!490955 m!471441))

(assert (=> b!490955 m!471439))

(assert (=> b!490955 m!471437))

(assert (=> b!490955 m!471439))

(declare-fun m!471443 () Bool)

(assert (=> b!490955 m!471443))

(assert (=> b!490955 m!471439))

(declare-fun m!471445 () Bool)

(assert (=> b!490955 m!471445))

(declare-fun m!471447 () Bool)

(assert (=> b!490955 m!471447))

(assert (=> b!490955 m!471433))

(declare-fun m!471449 () Bool)

(assert (=> b!490955 m!471449))

(declare-fun m!471451 () Bool)

(assert (=> b!490957 m!471451))

(declare-fun m!471453 () Bool)

(assert (=> b!490953 m!471453))

(declare-fun m!471455 () Bool)

(assert (=> start!44754 m!471455))

(declare-fun m!471457 () Bool)

(assert (=> start!44754 m!471457))

(declare-fun m!471459 () Bool)

(assert (=> b!490950 m!471459))

(assert (=> b!490954 m!471439))

(assert (=> b!490954 m!471439))

(declare-fun m!471461 () Bool)

(assert (=> b!490954 m!471461))

(declare-fun m!471463 () Bool)

(assert (=> b!490956 m!471463))

(check-sat (not b!490955) (not b!490957) (not b!490951) (not b!490950) (not start!44754) (not b!490958) (not b!490956) (not b!490953) (not b!490954))
(check-sat)

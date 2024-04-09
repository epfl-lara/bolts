; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45026 () Bool)

(assert start!45026)

(declare-fun b!493691 () Bool)

(declare-fun res!296412 () Bool)

(declare-fun e!289857 () Bool)

(assert (=> b!493691 (=> (not res!296412) (not e!289857))))

(declare-datatypes ((array!31931 0))(
  ( (array!31932 (arr!15347 (Array (_ BitVec 32) (_ BitVec 64))) (size!15711 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31931)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493691 (= res!296412 (validKeyInArray!0 (select (arr!15347 a!3235) j!176)))))

(declare-fun b!493692 () Bool)

(declare-fun e!289855 () Bool)

(declare-fun e!289858 () Bool)

(assert (=> b!493692 (= e!289855 (not e!289858))))

(declare-fun res!296411 () Bool)

(assert (=> b!493692 (=> res!296411 e!289858)))

(declare-datatypes ((SeekEntryResult!3821 0))(
  ( (MissingZero!3821 (index!17463 (_ BitVec 32))) (Found!3821 (index!17464 (_ BitVec 32))) (Intermediate!3821 (undefined!4633 Bool) (index!17465 (_ BitVec 32)) (x!46566 (_ BitVec 32))) (Undefined!3821) (MissingVacant!3821 (index!17466 (_ BitVec 32))) )
))
(declare-fun lt!223404 () SeekEntryResult!3821)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!223403 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31931 (_ BitVec 32)) SeekEntryResult!3821)

(assert (=> b!493692 (= res!296411 (= lt!223404 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223403 (select (store (arr!15347 a!3235) i!1204 k!2280) j!176) (array!31932 (store (arr!15347 a!3235) i!1204 k!2280) (size!15711 a!3235)) mask!3524)))))

(declare-fun lt!223405 () (_ BitVec 32))

(assert (=> b!493692 (= lt!223404 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223405 (select (arr!15347 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493692 (= lt!223403 (toIndex!0 (select (store (arr!15347 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493692 (= lt!223405 (toIndex!0 (select (arr!15347 a!3235) j!176) mask!3524))))

(declare-fun lt!223406 () SeekEntryResult!3821)

(assert (=> b!493692 (= lt!223406 (Found!3821 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31931 (_ BitVec 32)) SeekEntryResult!3821)

(assert (=> b!493692 (= lt!223406 (seekEntryOrOpen!0 (select (arr!15347 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31931 (_ BitVec 32)) Bool)

(assert (=> b!493692 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14580 0))(
  ( (Unit!14581) )
))
(declare-fun lt!223401 () Unit!14580)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31931 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14580)

(assert (=> b!493692 (= lt!223401 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493693 () Bool)

(declare-fun res!296416 () Bool)

(assert (=> b!493693 (=> (not res!296416) (not e!289857))))

(assert (=> b!493693 (= res!296416 (and (= (size!15711 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15711 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15711 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493695 () Bool)

(assert (=> b!493695 (= e!289857 e!289855)))

(declare-fun res!296418 () Bool)

(assert (=> b!493695 (=> (not res!296418) (not e!289855))))

(declare-fun lt!223402 () SeekEntryResult!3821)

(assert (=> b!493695 (= res!296418 (or (= lt!223402 (MissingZero!3821 i!1204)) (= lt!223402 (MissingVacant!3821 i!1204))))))

(assert (=> b!493695 (= lt!223402 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!493696 () Bool)

(declare-fun res!296417 () Bool)

(assert (=> b!493696 (=> (not res!296417) (not e!289857))))

(declare-fun arrayContainsKey!0 (array!31931 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493696 (= res!296417 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493697 () Bool)

(declare-fun res!296420 () Bool)

(assert (=> b!493697 (=> res!296420 e!289858)))

(assert (=> b!493697 (= res!296420 (or (not (is-Intermediate!3821 lt!223404)) (not (undefined!4633 lt!223404))))))

(declare-fun b!493698 () Bool)

(declare-fun res!296414 () Bool)

(assert (=> b!493698 (=> (not res!296414) (not e!289857))))

(assert (=> b!493698 (= res!296414 (validKeyInArray!0 k!2280))))

(declare-fun b!493699 () Bool)

(assert (=> b!493699 (= e!289858 true)))

(assert (=> b!493699 (= lt!223406 Undefined!3821)))

(declare-fun b!493700 () Bool)

(declare-fun res!296413 () Bool)

(assert (=> b!493700 (=> (not res!296413) (not e!289855))))

(declare-datatypes ((List!9558 0))(
  ( (Nil!9555) (Cons!9554 (h!10422 (_ BitVec 64)) (t!15794 List!9558)) )
))
(declare-fun arrayNoDuplicates!0 (array!31931 (_ BitVec 32) List!9558) Bool)

(assert (=> b!493700 (= res!296413 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9555))))

(declare-fun b!493694 () Bool)

(declare-fun res!296415 () Bool)

(assert (=> b!493694 (=> (not res!296415) (not e!289855))))

(assert (=> b!493694 (= res!296415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!296419 () Bool)

(assert (=> start!45026 (=> (not res!296419) (not e!289857))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45026 (= res!296419 (validMask!0 mask!3524))))

(assert (=> start!45026 e!289857))

(assert (=> start!45026 true))

(declare-fun array_inv!11121 (array!31931) Bool)

(assert (=> start!45026 (array_inv!11121 a!3235)))

(assert (= (and start!45026 res!296419) b!493693))

(assert (= (and b!493693 res!296416) b!493691))

(assert (= (and b!493691 res!296412) b!493698))

(assert (= (and b!493698 res!296414) b!493696))

(assert (= (and b!493696 res!296417) b!493695))

(assert (= (and b!493695 res!296418) b!493694))

(assert (= (and b!493694 res!296415) b!493700))

(assert (= (and b!493700 res!296413) b!493692))

(assert (= (and b!493692 (not res!296411)) b!493697))

(assert (= (and b!493697 (not res!296420)) b!493699))

(declare-fun m!474661 () Bool)

(assert (=> b!493695 m!474661))

(declare-fun m!474663 () Bool)

(assert (=> b!493700 m!474663))

(declare-fun m!474665 () Bool)

(assert (=> b!493696 m!474665))

(declare-fun m!474667 () Bool)

(assert (=> b!493694 m!474667))

(declare-fun m!474669 () Bool)

(assert (=> b!493691 m!474669))

(assert (=> b!493691 m!474669))

(declare-fun m!474671 () Bool)

(assert (=> b!493691 m!474671))

(declare-fun m!474673 () Bool)

(assert (=> b!493698 m!474673))

(declare-fun m!474675 () Bool)

(assert (=> b!493692 m!474675))

(declare-fun m!474677 () Bool)

(assert (=> b!493692 m!474677))

(assert (=> b!493692 m!474669))

(declare-fun m!474679 () Bool)

(assert (=> b!493692 m!474679))

(assert (=> b!493692 m!474669))

(declare-fun m!474681 () Bool)

(assert (=> b!493692 m!474681))

(assert (=> b!493692 m!474669))

(declare-fun m!474683 () Bool)

(assert (=> b!493692 m!474683))

(assert (=> b!493692 m!474669))

(declare-fun m!474685 () Bool)

(assert (=> b!493692 m!474685))

(declare-fun m!474687 () Bool)

(assert (=> b!493692 m!474687))

(declare-fun m!474689 () Bool)

(assert (=> b!493692 m!474689))

(assert (=> b!493692 m!474687))

(assert (=> b!493692 m!474687))

(declare-fun m!474691 () Bool)

(assert (=> b!493692 m!474691))

(declare-fun m!474693 () Bool)

(assert (=> start!45026 m!474693))

(declare-fun m!474695 () Bool)

(assert (=> start!45026 m!474695))

(push 1)


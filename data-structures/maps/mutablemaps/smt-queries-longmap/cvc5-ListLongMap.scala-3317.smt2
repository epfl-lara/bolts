; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45856 () Bool)

(assert start!45856)

(declare-fun b!507547 () Bool)

(declare-fun res!308662 () Bool)

(declare-fun e!297024 () Bool)

(assert (=> b!507547 (=> (not res!308662) (not e!297024))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32572 0))(
  ( (array!32573 (arr!15663 (Array (_ BitVec 32) (_ BitVec 64))) (size!16027 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32572)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!507547 (= res!308662 (and (= (size!16027 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16027 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16027 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507548 () Bool)

(declare-fun e!297021 () Bool)

(declare-fun e!297023 () Bool)

(assert (=> b!507548 (= e!297021 (not e!297023))))

(declare-fun res!308664 () Bool)

(assert (=> b!507548 (=> res!308664 e!297023)))

(declare-fun lt!231933 () array!32572)

(declare-datatypes ((SeekEntryResult!4137 0))(
  ( (MissingZero!4137 (index!18736 (_ BitVec 32))) (Found!4137 (index!18737 (_ BitVec 32))) (Intermediate!4137 (undefined!4949 Bool) (index!18738 (_ BitVec 32)) (x!47757 (_ BitVec 32))) (Undefined!4137) (MissingVacant!4137 (index!18739 (_ BitVec 32))) )
))
(declare-fun lt!231936 () SeekEntryResult!4137)

(declare-fun lt!231940 () (_ BitVec 64))

(declare-fun lt!231937 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32572 (_ BitVec 32)) SeekEntryResult!4137)

(assert (=> b!507548 (= res!308664 (= lt!231936 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231937 lt!231940 lt!231933 mask!3524)))))

(declare-fun lt!231939 () (_ BitVec 32))

(assert (=> b!507548 (= lt!231936 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231939 (select (arr!15663 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507548 (= lt!231937 (toIndex!0 lt!231940 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!507548 (= lt!231940 (select (store (arr!15663 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!507548 (= lt!231939 (toIndex!0 (select (arr!15663 a!3235) j!176) mask!3524))))

(assert (=> b!507548 (= lt!231933 (array!32573 (store (arr!15663 a!3235) i!1204 k!2280) (size!16027 a!3235)))))

(declare-fun e!297025 () Bool)

(assert (=> b!507548 e!297025))

(declare-fun res!308659 () Bool)

(assert (=> b!507548 (=> (not res!308659) (not e!297025))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32572 (_ BitVec 32)) Bool)

(assert (=> b!507548 (= res!308659 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15554 0))(
  ( (Unit!15555) )
))
(declare-fun lt!231934 () Unit!15554)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32572 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15554)

(assert (=> b!507548 (= lt!231934 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!507549 () Bool)

(declare-fun res!308665 () Bool)

(assert (=> b!507549 (=> (not res!308665) (not e!297021))))

(declare-datatypes ((List!9874 0))(
  ( (Nil!9871) (Cons!9870 (h!10747 (_ BitVec 64)) (t!16110 List!9874)) )
))
(declare-fun arrayNoDuplicates!0 (array!32572 (_ BitVec 32) List!9874) Bool)

(assert (=> b!507549 (= res!308665 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9871))))

(declare-fun b!507550 () Bool)

(declare-fun e!297020 () Bool)

(assert (=> b!507550 (= e!297020 true)))

(declare-fun lt!231938 () SeekEntryResult!4137)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32572 (_ BitVec 32)) SeekEntryResult!4137)

(assert (=> b!507550 (= lt!231938 (seekEntryOrOpen!0 lt!231940 lt!231933 mask!3524))))

(assert (=> b!507550 false))

(declare-fun b!507551 () Bool)

(assert (=> b!507551 (= e!297024 e!297021)))

(declare-fun res!308666 () Bool)

(assert (=> b!507551 (=> (not res!308666) (not e!297021))))

(declare-fun lt!231941 () SeekEntryResult!4137)

(assert (=> b!507551 (= res!308666 (or (= lt!231941 (MissingZero!4137 i!1204)) (= lt!231941 (MissingVacant!4137 i!1204))))))

(assert (=> b!507551 (= lt!231941 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!507552 () Bool)

(declare-fun res!308656 () Bool)

(assert (=> b!507552 (=> (not res!308656) (not e!297024))))

(declare-fun arrayContainsKey!0 (array!32572 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507552 (= res!308656 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507553 () Bool)

(declare-fun res!308661 () Bool)

(assert (=> b!507553 (=> (not res!308661) (not e!297021))))

(assert (=> b!507553 (= res!308661 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507554 () Bool)

(assert (=> b!507554 (= e!297025 (= (seekEntryOrOpen!0 (select (arr!15663 a!3235) j!176) a!3235 mask!3524) (Found!4137 j!176)))))

(declare-fun b!507555 () Bool)

(declare-fun res!308657 () Bool)

(assert (=> b!507555 (=> (not res!308657) (not e!297024))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507555 (= res!308657 (validKeyInArray!0 k!2280))))

(declare-fun b!507556 () Bool)

(assert (=> b!507556 (= e!297023 e!297020)))

(declare-fun res!308658 () Bool)

(assert (=> b!507556 (=> res!308658 e!297020)))

(declare-fun lt!231935 () Bool)

(assert (=> b!507556 (= res!308658 (or (and (not lt!231935) (undefined!4949 lt!231936)) (and (not lt!231935) (not (undefined!4949 lt!231936)))))))

(assert (=> b!507556 (= lt!231935 (not (is-Intermediate!4137 lt!231936)))))

(declare-fun b!507557 () Bool)

(declare-fun res!308660 () Bool)

(assert (=> b!507557 (=> (not res!308660) (not e!297024))))

(assert (=> b!507557 (= res!308660 (validKeyInArray!0 (select (arr!15663 a!3235) j!176)))))

(declare-fun res!308663 () Bool)

(assert (=> start!45856 (=> (not res!308663) (not e!297024))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45856 (= res!308663 (validMask!0 mask!3524))))

(assert (=> start!45856 e!297024))

(assert (=> start!45856 true))

(declare-fun array_inv!11437 (array!32572) Bool)

(assert (=> start!45856 (array_inv!11437 a!3235)))

(assert (= (and start!45856 res!308663) b!507547))

(assert (= (and b!507547 res!308662) b!507557))

(assert (= (and b!507557 res!308660) b!507555))

(assert (= (and b!507555 res!308657) b!507552))

(assert (= (and b!507552 res!308656) b!507551))

(assert (= (and b!507551 res!308666) b!507553))

(assert (= (and b!507553 res!308661) b!507549))

(assert (= (and b!507549 res!308665) b!507548))

(assert (= (and b!507548 res!308659) b!507554))

(assert (= (and b!507548 (not res!308664)) b!507556))

(assert (= (and b!507556 (not res!308658)) b!507550))

(declare-fun m!488401 () Bool)

(assert (=> b!507548 m!488401))

(declare-fun m!488403 () Bool)

(assert (=> b!507548 m!488403))

(declare-fun m!488405 () Bool)

(assert (=> b!507548 m!488405))

(declare-fun m!488407 () Bool)

(assert (=> b!507548 m!488407))

(declare-fun m!488409 () Bool)

(assert (=> b!507548 m!488409))

(declare-fun m!488411 () Bool)

(assert (=> b!507548 m!488411))

(declare-fun m!488413 () Bool)

(assert (=> b!507548 m!488413))

(assert (=> b!507548 m!488411))

(declare-fun m!488415 () Bool)

(assert (=> b!507548 m!488415))

(assert (=> b!507548 m!488411))

(declare-fun m!488417 () Bool)

(assert (=> b!507548 m!488417))

(assert (=> b!507554 m!488411))

(assert (=> b!507554 m!488411))

(declare-fun m!488419 () Bool)

(assert (=> b!507554 m!488419))

(declare-fun m!488421 () Bool)

(assert (=> b!507555 m!488421))

(declare-fun m!488423 () Bool)

(assert (=> b!507551 m!488423))

(declare-fun m!488425 () Bool)

(assert (=> b!507549 m!488425))

(declare-fun m!488427 () Bool)

(assert (=> start!45856 m!488427))

(declare-fun m!488429 () Bool)

(assert (=> start!45856 m!488429))

(declare-fun m!488431 () Bool)

(assert (=> b!507550 m!488431))

(assert (=> b!507557 m!488411))

(assert (=> b!507557 m!488411))

(declare-fun m!488433 () Bool)

(assert (=> b!507557 m!488433))

(declare-fun m!488435 () Bool)

(assert (=> b!507553 m!488435))

(declare-fun m!488437 () Bool)

(assert (=> b!507552 m!488437))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44728 () Bool)

(assert start!44728)

(declare-fun b!490590 () Bool)

(declare-fun e!288353 () Bool)

(declare-fun e!288355 () Bool)

(assert (=> b!490590 (= e!288353 (not e!288355))))

(declare-fun res!293683 () Bool)

(assert (=> b!490590 (=> res!293683 e!288355)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31747 0))(
  ( (array!31748 (arr!15258 (Array (_ BitVec 32) (_ BitVec 64))) (size!15622 (_ BitVec 32))) )
))
(declare-fun lt!221686 () array!31747)

(declare-fun lt!221687 () (_ BitVec 64))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun a!3235 () array!31747)

(declare-datatypes ((SeekEntryResult!3732 0))(
  ( (MissingZero!3732 (index!17107 (_ BitVec 32))) (Found!3732 (index!17108 (_ BitVec 32))) (Intermediate!3732 (undefined!4544 Bool) (index!17109 (_ BitVec 32)) (x!46233 (_ BitVec 32))) (Undefined!3732) (MissingVacant!3732 (index!17110 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31747 (_ BitVec 32)) SeekEntryResult!3732)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490590 (= res!293683 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15258 a!3235) j!176) mask!3524) (select (arr!15258 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221687 mask!3524) lt!221687 lt!221686 mask!3524))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!490590 (= lt!221687 (select (store (arr!15258 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!490590 (= lt!221686 (array!31748 (store (arr!15258 a!3235) i!1204 k!2280) (size!15622 a!3235)))))

(declare-fun lt!221690 () SeekEntryResult!3732)

(assert (=> b!490590 (= lt!221690 (Found!3732 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31747 (_ BitVec 32)) SeekEntryResult!3732)

(assert (=> b!490590 (= lt!221690 (seekEntryOrOpen!0 (select (arr!15258 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31747 (_ BitVec 32)) Bool)

(assert (=> b!490590 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14402 0))(
  ( (Unit!14403) )
))
(declare-fun lt!221688 () Unit!14402)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31747 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14402)

(assert (=> b!490590 (= lt!221688 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490591 () Bool)

(declare-fun res!293682 () Bool)

(declare-fun e!288352 () Bool)

(assert (=> b!490591 (=> (not res!293682) (not e!288352))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490591 (= res!293682 (validKeyInArray!0 k!2280))))

(declare-fun b!490592 () Bool)

(declare-fun res!293677 () Bool)

(assert (=> b!490592 (=> (not res!293677) (not e!288352))))

(assert (=> b!490592 (= res!293677 (validKeyInArray!0 (select (arr!15258 a!3235) j!176)))))

(declare-fun b!490593 () Bool)

(declare-fun res!293681 () Bool)

(assert (=> b!490593 (=> (not res!293681) (not e!288353))))

(declare-datatypes ((List!9469 0))(
  ( (Nil!9466) (Cons!9465 (h!10327 (_ BitVec 64)) (t!15705 List!9469)) )
))
(declare-fun arrayNoDuplicates!0 (array!31747 (_ BitVec 32) List!9469) Bool)

(assert (=> b!490593 (= res!293681 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9466))))

(declare-fun b!490594 () Bool)

(assert (=> b!490594 (= e!288355 true)))

(assert (=> b!490594 (= lt!221690 (seekEntryOrOpen!0 lt!221687 lt!221686 mask!3524))))

(declare-fun lt!221685 () Unit!14402)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31747 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14402)

(assert (=> b!490594 (= lt!221685 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun res!293680 () Bool)

(assert (=> start!44728 (=> (not res!293680) (not e!288352))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44728 (= res!293680 (validMask!0 mask!3524))))

(assert (=> start!44728 e!288352))

(assert (=> start!44728 true))

(declare-fun array_inv!11032 (array!31747) Bool)

(assert (=> start!44728 (array_inv!11032 a!3235)))

(declare-fun b!490595 () Bool)

(declare-fun res!293679 () Bool)

(assert (=> b!490595 (=> (not res!293679) (not e!288353))))

(assert (=> b!490595 (= res!293679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490596 () Bool)

(assert (=> b!490596 (= e!288352 e!288353)))

(declare-fun res!293676 () Bool)

(assert (=> b!490596 (=> (not res!293676) (not e!288353))))

(declare-fun lt!221689 () SeekEntryResult!3732)

(assert (=> b!490596 (= res!293676 (or (= lt!221689 (MissingZero!3732 i!1204)) (= lt!221689 (MissingVacant!3732 i!1204))))))

(assert (=> b!490596 (= lt!221689 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!490597 () Bool)

(declare-fun res!293684 () Bool)

(assert (=> b!490597 (=> (not res!293684) (not e!288352))))

(assert (=> b!490597 (= res!293684 (and (= (size!15622 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15622 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15622 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490598 () Bool)

(declare-fun res!293678 () Bool)

(assert (=> b!490598 (=> (not res!293678) (not e!288352))))

(declare-fun arrayContainsKey!0 (array!31747 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490598 (= res!293678 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44728 res!293680) b!490597))

(assert (= (and b!490597 res!293684) b!490592))

(assert (= (and b!490592 res!293677) b!490591))

(assert (= (and b!490591 res!293682) b!490598))

(assert (= (and b!490598 res!293678) b!490596))

(assert (= (and b!490596 res!293676) b!490595))

(assert (= (and b!490595 res!293679) b!490593))

(assert (= (and b!490593 res!293681) b!490590))

(assert (= (and b!490590 (not res!293683)) b!490594))

(declare-fun m!470899 () Bool)

(assert (=> b!490592 m!470899))

(assert (=> b!490592 m!470899))

(declare-fun m!470901 () Bool)

(assert (=> b!490592 m!470901))

(declare-fun m!470903 () Bool)

(assert (=> start!44728 m!470903))

(declare-fun m!470905 () Bool)

(assert (=> start!44728 m!470905))

(declare-fun m!470907 () Bool)

(assert (=> b!490594 m!470907))

(declare-fun m!470909 () Bool)

(assert (=> b!490594 m!470909))

(declare-fun m!470911 () Bool)

(assert (=> b!490598 m!470911))

(declare-fun m!470913 () Bool)

(assert (=> b!490596 m!470913))

(declare-fun m!470915 () Bool)

(assert (=> b!490590 m!470915))

(declare-fun m!470917 () Bool)

(assert (=> b!490590 m!470917))

(declare-fun m!470919 () Bool)

(assert (=> b!490590 m!470919))

(assert (=> b!490590 m!470899))

(declare-fun m!470921 () Bool)

(assert (=> b!490590 m!470921))

(declare-fun m!470923 () Bool)

(assert (=> b!490590 m!470923))

(assert (=> b!490590 m!470899))

(assert (=> b!490590 m!470919))

(assert (=> b!490590 m!470899))

(declare-fun m!470925 () Bool)

(assert (=> b!490590 m!470925))

(assert (=> b!490590 m!470899))

(declare-fun m!470927 () Bool)

(assert (=> b!490590 m!470927))

(assert (=> b!490590 m!470923))

(declare-fun m!470929 () Bool)

(assert (=> b!490590 m!470929))

(declare-fun m!470931 () Bool)

(assert (=> b!490590 m!470931))

(declare-fun m!470933 () Bool)

(assert (=> b!490591 m!470933))

(declare-fun m!470935 () Bool)

(assert (=> b!490595 m!470935))

(declare-fun m!470937 () Bool)

(assert (=> b!490593 m!470937))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45040 () Bool)

(assert start!45040)

(declare-fun b!493901 () Bool)

(declare-fun res!296621 () Bool)

(declare-fun e!289941 () Bool)

(assert (=> b!493901 (=> (not res!296621) (not e!289941))))

(declare-datatypes ((array!31945 0))(
  ( (array!31946 (arr!15354 (Array (_ BitVec 32) (_ BitVec 64))) (size!15718 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31945)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31945 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493901 (= res!296621 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493902 () Bool)

(declare-fun res!296629 () Bool)

(declare-fun e!289940 () Bool)

(assert (=> b!493902 (=> (not res!296629) (not e!289940))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31945 (_ BitVec 32)) Bool)

(assert (=> b!493902 (= res!296629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493903 () Bool)

(declare-fun e!289939 () Bool)

(assert (=> b!493903 (= e!289940 (not e!289939))))

(declare-fun res!296626 () Bool)

(assert (=> b!493903 (=> res!296626 e!289939)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!223532 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3828 0))(
  ( (MissingZero!3828 (index!17491 (_ BitVec 32))) (Found!3828 (index!17492 (_ BitVec 32))) (Intermediate!3828 (undefined!4640 Bool) (index!17493 (_ BitVec 32)) (x!46597 (_ BitVec 32))) (Undefined!3828) (MissingVacant!3828 (index!17494 (_ BitVec 32))) )
))
(declare-fun lt!223528 () SeekEntryResult!3828)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31945 (_ BitVec 32)) SeekEntryResult!3828)

(assert (=> b!493903 (= res!296626 (= lt!223528 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223532 (select (store (arr!15354 a!3235) i!1204 k!2280) j!176) (array!31946 (store (arr!15354 a!3235) i!1204 k!2280) (size!15718 a!3235)) mask!3524)))))

(declare-fun lt!223527 () (_ BitVec 32))

(assert (=> b!493903 (= lt!223528 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223527 (select (arr!15354 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493903 (= lt!223532 (toIndex!0 (select (store (arr!15354 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493903 (= lt!223527 (toIndex!0 (select (arr!15354 a!3235) j!176) mask!3524))))

(declare-fun lt!223530 () SeekEntryResult!3828)

(assert (=> b!493903 (= lt!223530 (Found!3828 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31945 (_ BitVec 32)) SeekEntryResult!3828)

(assert (=> b!493903 (= lt!223530 (seekEntryOrOpen!0 (select (arr!15354 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!493903 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14594 0))(
  ( (Unit!14595) )
))
(declare-fun lt!223529 () Unit!14594)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31945 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14594)

(assert (=> b!493903 (= lt!223529 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493904 () Bool)

(declare-fun res!296624 () Bool)

(assert (=> b!493904 (=> (not res!296624) (not e!289941))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493904 (= res!296624 (validKeyInArray!0 (select (arr!15354 a!3235) j!176)))))

(declare-fun b!493905 () Bool)

(declare-fun res!296625 () Bool)

(assert (=> b!493905 (=> (not res!296625) (not e!289941))))

(assert (=> b!493905 (= res!296625 (validKeyInArray!0 k!2280))))

(declare-fun b!493906 () Bool)

(declare-fun res!296622 () Bool)

(assert (=> b!493906 (=> (not res!296622) (not e!289941))))

(assert (=> b!493906 (= res!296622 (and (= (size!15718 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15718 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15718 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493907 () Bool)

(declare-fun res!296628 () Bool)

(assert (=> b!493907 (=> res!296628 e!289939)))

(assert (=> b!493907 (= res!296628 (or (not (is-Intermediate!3828 lt!223528)) (not (undefined!4640 lt!223528))))))

(declare-fun b!493908 () Bool)

(assert (=> b!493908 (= e!289939 true)))

(assert (=> b!493908 (= lt!223530 Undefined!3828)))

(declare-fun b!493909 () Bool)

(declare-fun res!296627 () Bool)

(assert (=> b!493909 (=> (not res!296627) (not e!289940))))

(declare-datatypes ((List!9565 0))(
  ( (Nil!9562) (Cons!9561 (h!10429 (_ BitVec 64)) (t!15801 List!9565)) )
))
(declare-fun arrayNoDuplicates!0 (array!31945 (_ BitVec 32) List!9565) Bool)

(assert (=> b!493909 (= res!296627 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9562))))

(declare-fun res!296623 () Bool)

(assert (=> start!45040 (=> (not res!296623) (not e!289941))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45040 (= res!296623 (validMask!0 mask!3524))))

(assert (=> start!45040 e!289941))

(assert (=> start!45040 true))

(declare-fun array_inv!11128 (array!31945) Bool)

(assert (=> start!45040 (array_inv!11128 a!3235)))

(declare-fun b!493910 () Bool)

(assert (=> b!493910 (= e!289941 e!289940)))

(declare-fun res!296630 () Bool)

(assert (=> b!493910 (=> (not res!296630) (not e!289940))))

(declare-fun lt!223531 () SeekEntryResult!3828)

(assert (=> b!493910 (= res!296630 (or (= lt!223531 (MissingZero!3828 i!1204)) (= lt!223531 (MissingVacant!3828 i!1204))))))

(assert (=> b!493910 (= lt!223531 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!45040 res!296623) b!493906))

(assert (= (and b!493906 res!296622) b!493904))

(assert (= (and b!493904 res!296624) b!493905))

(assert (= (and b!493905 res!296625) b!493901))

(assert (= (and b!493901 res!296621) b!493910))

(assert (= (and b!493910 res!296630) b!493902))

(assert (= (and b!493902 res!296629) b!493909))

(assert (= (and b!493909 res!296627) b!493903))

(assert (= (and b!493903 (not res!296626)) b!493907))

(assert (= (and b!493907 (not res!296628)) b!493908))

(declare-fun m!474913 () Bool)

(assert (=> b!493910 m!474913))

(declare-fun m!474915 () Bool)

(assert (=> b!493902 m!474915))

(declare-fun m!474917 () Bool)

(assert (=> b!493903 m!474917))

(declare-fun m!474919 () Bool)

(assert (=> b!493903 m!474919))

(declare-fun m!474921 () Bool)

(assert (=> b!493903 m!474921))

(declare-fun m!474923 () Bool)

(assert (=> b!493903 m!474923))

(assert (=> b!493903 m!474919))

(declare-fun m!474925 () Bool)

(assert (=> b!493903 m!474925))

(declare-fun m!474927 () Bool)

(assert (=> b!493903 m!474927))

(assert (=> b!493903 m!474925))

(declare-fun m!474929 () Bool)

(assert (=> b!493903 m!474929))

(assert (=> b!493903 m!474925))

(declare-fun m!474931 () Bool)

(assert (=> b!493903 m!474931))

(assert (=> b!493903 m!474919))

(declare-fun m!474933 () Bool)

(assert (=> b!493903 m!474933))

(assert (=> b!493903 m!474925))

(declare-fun m!474935 () Bool)

(assert (=> b!493903 m!474935))

(declare-fun m!474937 () Bool)

(assert (=> b!493909 m!474937))

(declare-fun m!474939 () Bool)

(assert (=> b!493901 m!474939))

(declare-fun m!474941 () Bool)

(assert (=> b!493905 m!474941))

(assert (=> b!493904 m!474925))

(assert (=> b!493904 m!474925))

(declare-fun m!474943 () Bool)

(assert (=> b!493904 m!474943))

(declare-fun m!474945 () Bool)

(assert (=> start!45040 m!474945))

(declare-fun m!474947 () Bool)

(assert (=> start!45040 m!474947))

(push 1)


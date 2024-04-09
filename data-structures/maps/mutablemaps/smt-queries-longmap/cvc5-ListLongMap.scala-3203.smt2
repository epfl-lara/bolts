; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44974 () Bool)

(assert start!44974)

(declare-fun b!492929 () Bool)

(declare-fun res!295652 () Bool)

(declare-fun e!289540 () Bool)

(assert (=> b!492929 (=> (not res!295652) (not e!289540))))

(declare-datatypes ((array!31879 0))(
  ( (array!31880 (arr!15321 (Array (_ BitVec 32) (_ BitVec 64))) (size!15685 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31879)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492929 (= res!295652 (validKeyInArray!0 (select (arr!15321 a!3235) j!176)))))

(declare-fun b!492930 () Bool)

(declare-fun e!289537 () Bool)

(assert (=> b!492930 (= e!289540 e!289537)))

(declare-fun res!295656 () Bool)

(assert (=> b!492930 (=> (not res!295656) (not e!289537))))

(declare-datatypes ((SeekEntryResult!3795 0))(
  ( (MissingZero!3795 (index!17359 (_ BitVec 32))) (Found!3795 (index!17360 (_ BitVec 32))) (Intermediate!3795 (undefined!4607 Bool) (index!17361 (_ BitVec 32)) (x!46476 (_ BitVec 32))) (Undefined!3795) (MissingVacant!3795 (index!17362 (_ BitVec 32))) )
))
(declare-fun lt!222940 () SeekEntryResult!3795)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!492930 (= res!295656 (or (= lt!222940 (MissingZero!3795 i!1204)) (= lt!222940 (MissingVacant!3795 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31879 (_ BitVec 32)) SeekEntryResult!3795)

(assert (=> b!492930 (= lt!222940 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!492931 () Bool)

(declare-fun res!295657 () Bool)

(assert (=> b!492931 (=> (not res!295657) (not e!289537))))

(declare-datatypes ((List!9532 0))(
  ( (Nil!9529) (Cons!9528 (h!10396 (_ BitVec 64)) (t!15768 List!9532)) )
))
(declare-fun arrayNoDuplicates!0 (array!31879 (_ BitVec 32) List!9532) Bool)

(assert (=> b!492931 (= res!295657 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9529))))

(declare-fun b!492932 () Bool)

(declare-fun res!295653 () Bool)

(assert (=> b!492932 (=> (not res!295653) (not e!289540))))

(assert (=> b!492932 (= res!295653 (validKeyInArray!0 k!2280))))

(declare-fun b!492933 () Bool)

(declare-fun e!289538 () Bool)

(declare-fun lt!222941 () SeekEntryResult!3795)

(assert (=> b!492933 (= e!289538 (or (not (is-Intermediate!3795 lt!222941)) (not (undefined!4607 lt!222941)) (bvsge mask!3524 #b00000000000000000000000000000000)))))

(declare-fun b!492934 () Bool)

(declare-fun res!295654 () Bool)

(assert (=> b!492934 (=> (not res!295654) (not e!289540))))

(declare-fun arrayContainsKey!0 (array!31879 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492934 (= res!295654 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!492935 () Bool)

(declare-fun res!295649 () Bool)

(assert (=> b!492935 (=> (not res!295649) (not e!289540))))

(assert (=> b!492935 (= res!295649 (and (= (size!15685 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15685 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15685 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!295650 () Bool)

(assert (=> start!44974 (=> (not res!295650) (not e!289540))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44974 (= res!295650 (validMask!0 mask!3524))))

(assert (=> start!44974 e!289540))

(assert (=> start!44974 true))

(declare-fun array_inv!11095 (array!31879) Bool)

(assert (=> start!44974 (array_inv!11095 a!3235)))

(declare-fun b!492936 () Bool)

(declare-fun e!289539 () Bool)

(assert (=> b!492936 (= e!289539 (= (seekEntryOrOpen!0 (select (arr!15321 a!3235) j!176) a!3235 mask!3524) (Found!3795 j!176)))))

(declare-fun b!492937 () Bool)

(assert (=> b!492937 (= e!289537 (not e!289538))))

(declare-fun res!295651 () Bool)

(assert (=> b!492937 (=> res!295651 e!289538)))

(declare-fun lt!222943 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31879 (_ BitVec 32)) SeekEntryResult!3795)

(assert (=> b!492937 (= res!295651 (= lt!222941 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222943 (select (store (arr!15321 a!3235) i!1204 k!2280) j!176) (array!31880 (store (arr!15321 a!3235) i!1204 k!2280) (size!15685 a!3235)) mask!3524)))))

(declare-fun lt!222942 () (_ BitVec 32))

(assert (=> b!492937 (= lt!222941 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222942 (select (arr!15321 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492937 (= lt!222943 (toIndex!0 (select (store (arr!15321 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!492937 (= lt!222942 (toIndex!0 (select (arr!15321 a!3235) j!176) mask!3524))))

(assert (=> b!492937 e!289539))

(declare-fun res!295658 () Bool)

(assert (=> b!492937 (=> (not res!295658) (not e!289539))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31879 (_ BitVec 32)) Bool)

(assert (=> b!492937 (= res!295658 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14528 0))(
  ( (Unit!14529) )
))
(declare-fun lt!222944 () Unit!14528)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31879 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14528)

(assert (=> b!492937 (= lt!222944 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!492938 () Bool)

(declare-fun res!295655 () Bool)

(assert (=> b!492938 (=> (not res!295655) (not e!289537))))

(assert (=> b!492938 (= res!295655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!44974 res!295650) b!492935))

(assert (= (and b!492935 res!295649) b!492929))

(assert (= (and b!492929 res!295652) b!492932))

(assert (= (and b!492932 res!295653) b!492934))

(assert (= (and b!492934 res!295654) b!492930))

(assert (= (and b!492930 res!295656) b!492938))

(assert (= (and b!492938 res!295655) b!492931))

(assert (= (and b!492931 res!295657) b!492937))

(assert (= (and b!492937 res!295658) b!492936))

(assert (= (and b!492937 (not res!295651)) b!492933))

(declare-fun m!473725 () Bool)

(assert (=> b!492936 m!473725))

(assert (=> b!492936 m!473725))

(declare-fun m!473727 () Bool)

(assert (=> b!492936 m!473727))

(declare-fun m!473729 () Bool)

(assert (=> b!492932 m!473729))

(declare-fun m!473731 () Bool)

(assert (=> b!492938 m!473731))

(assert (=> b!492929 m!473725))

(assert (=> b!492929 m!473725))

(declare-fun m!473733 () Bool)

(assert (=> b!492929 m!473733))

(declare-fun m!473735 () Bool)

(assert (=> b!492934 m!473735))

(declare-fun m!473737 () Bool)

(assert (=> b!492931 m!473737))

(declare-fun m!473739 () Bool)

(assert (=> b!492930 m!473739))

(declare-fun m!473741 () Bool)

(assert (=> start!44974 m!473741))

(declare-fun m!473743 () Bool)

(assert (=> start!44974 m!473743))

(assert (=> b!492937 m!473725))

(declare-fun m!473745 () Bool)

(assert (=> b!492937 m!473745))

(declare-fun m!473747 () Bool)

(assert (=> b!492937 m!473747))

(declare-fun m!473749 () Bool)

(assert (=> b!492937 m!473749))

(declare-fun m!473751 () Bool)

(assert (=> b!492937 m!473751))

(assert (=> b!492937 m!473725))

(declare-fun m!473753 () Bool)

(assert (=> b!492937 m!473753))

(assert (=> b!492937 m!473725))

(assert (=> b!492937 m!473751))

(declare-fun m!473755 () Bool)

(assert (=> b!492937 m!473755))

(declare-fun m!473757 () Bool)

(assert (=> b!492937 m!473757))

(assert (=> b!492937 m!473751))

(declare-fun m!473759 () Bool)

(assert (=> b!492937 m!473759))

(push 1)


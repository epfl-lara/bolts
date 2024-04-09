; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120046 () Bool)

(assert start!120046)

(declare-fun b!1396955 () Bool)

(declare-fun res!935979 () Bool)

(declare-fun e!790895 () Bool)

(assert (=> b!1396955 (=> (not res!935979) (not e!790895))))

(declare-datatypes ((array!95493 0))(
  ( (array!95494 (arr!46096 (Array (_ BitVec 32) (_ BitVec 64))) (size!46647 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95493)

(declare-datatypes ((List!32795 0))(
  ( (Nil!32792) (Cons!32791 (h!34033 (_ BitVec 64)) (t!47496 List!32795)) )
))
(declare-fun arrayNoDuplicates!0 (array!95493 (_ BitVec 32) List!32795) Bool)

(assert (=> b!1396955 (= res!935979 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32792))))

(declare-fun b!1396956 () Bool)

(declare-fun res!935982 () Bool)

(assert (=> b!1396956 (=> (not res!935982) (not e!790895))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95493 (_ BitVec 32)) Bool)

(assert (=> b!1396956 (= res!935982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396957 () Bool)

(declare-fun res!935980 () Bool)

(assert (=> b!1396957 (=> (not res!935980) (not e!790895))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396957 (= res!935980 (validKeyInArray!0 (select (arr!46096 a!2901) j!112)))))

(declare-fun b!1396958 () Bool)

(declare-fun e!790891 () Bool)

(assert (=> b!1396958 (= e!790895 (not e!790891))))

(declare-fun res!935978 () Bool)

(assert (=> b!1396958 (=> res!935978 e!790891)))

(declare-datatypes ((SeekEntryResult!10435 0))(
  ( (MissingZero!10435 (index!44110 (_ BitVec 32))) (Found!10435 (index!44111 (_ BitVec 32))) (Intermediate!10435 (undefined!11247 Bool) (index!44112 (_ BitVec 32)) (x!125780 (_ BitVec 32))) (Undefined!10435) (MissingVacant!10435 (index!44113 (_ BitVec 32))) )
))
(declare-fun lt!613831 () SeekEntryResult!10435)

(assert (=> b!1396958 (= res!935978 (or (not (is-Intermediate!10435 lt!613831)) (undefined!11247 lt!613831)))))

(declare-fun e!790892 () Bool)

(assert (=> b!1396958 e!790892))

(declare-fun res!935977 () Bool)

(assert (=> b!1396958 (=> (not res!935977) (not e!790892))))

(assert (=> b!1396958 (= res!935977 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46824 0))(
  ( (Unit!46825) )
))
(declare-fun lt!613836 () Unit!46824)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95493 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46824)

(assert (=> b!1396958 (= lt!613836 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!613834 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95493 (_ BitVec 32)) SeekEntryResult!10435)

(assert (=> b!1396958 (= lt!613831 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613834 (select (arr!46096 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396958 (= lt!613834 (toIndex!0 (select (arr!46096 a!2901) j!112) mask!2840))))

(declare-fun b!1396960 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95493 (_ BitVec 32)) SeekEntryResult!10435)

(assert (=> b!1396960 (= e!790892 (= (seekEntryOrOpen!0 (select (arr!46096 a!2901) j!112) a!2901 mask!2840) (Found!10435 j!112)))))

(declare-fun b!1396961 () Bool)

(declare-fun res!935985 () Bool)

(assert (=> b!1396961 (=> (not res!935985) (not e!790895))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1396961 (= res!935985 (validKeyInArray!0 (select (arr!46096 a!2901) i!1037)))))

(declare-fun b!1396959 () Bool)

(declare-fun e!790894 () Bool)

(assert (=> b!1396959 (= e!790891 e!790894)))

(declare-fun res!935984 () Bool)

(assert (=> b!1396959 (=> res!935984 e!790894)))

(declare-fun lt!613832 () SeekEntryResult!10435)

(assert (=> b!1396959 (= res!935984 (or (= lt!613831 lt!613832) (not (is-Intermediate!10435 lt!613832)) (bvslt (x!125780 lt!613831) #b00000000000000000000000000000000) (bvsgt (x!125780 lt!613831) #b01111111111111111111111111111110) (bvslt lt!613834 #b00000000000000000000000000000000) (bvsge lt!613834 (size!46647 a!2901)) (bvslt (index!44112 lt!613831) #b00000000000000000000000000000000) (bvsge (index!44112 lt!613831) (size!46647 a!2901)) (not (= lt!613831 (Intermediate!10435 false (index!44112 lt!613831) (x!125780 lt!613831)))) (not (= lt!613832 (Intermediate!10435 (undefined!11247 lt!613832) (index!44112 lt!613832) (x!125780 lt!613832))))))))

(declare-fun lt!613835 () (_ BitVec 64))

(declare-fun lt!613837 () array!95493)

(assert (=> b!1396959 (= lt!613832 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613835 mask!2840) lt!613835 lt!613837 mask!2840))))

(assert (=> b!1396959 (= lt!613835 (select (store (arr!46096 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396959 (= lt!613837 (array!95494 (store (arr!46096 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46647 a!2901)))))

(declare-fun res!935981 () Bool)

(assert (=> start!120046 (=> (not res!935981) (not e!790895))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120046 (= res!935981 (validMask!0 mask!2840))))

(assert (=> start!120046 e!790895))

(assert (=> start!120046 true))

(declare-fun array_inv!35041 (array!95493) Bool)

(assert (=> start!120046 (array_inv!35041 a!2901)))

(declare-fun b!1396962 () Bool)

(declare-fun res!935983 () Bool)

(assert (=> b!1396962 (=> (not res!935983) (not e!790895))))

(assert (=> b!1396962 (= res!935983 (and (= (size!46647 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46647 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46647 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396963 () Bool)

(assert (=> b!1396963 (= e!790894 true)))

(declare-fun lt!613833 () SeekEntryResult!10435)

(assert (=> b!1396963 (= lt!613833 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613834 lt!613835 lt!613837 mask!2840))))

(assert (= (and start!120046 res!935981) b!1396962))

(assert (= (and b!1396962 res!935983) b!1396961))

(assert (= (and b!1396961 res!935985) b!1396957))

(assert (= (and b!1396957 res!935980) b!1396956))

(assert (= (and b!1396956 res!935982) b!1396955))

(assert (= (and b!1396955 res!935979) b!1396958))

(assert (= (and b!1396958 res!935977) b!1396960))

(assert (= (and b!1396958 (not res!935978)) b!1396959))

(assert (= (and b!1396959 (not res!935984)) b!1396963))

(declare-fun m!1283651 () Bool)

(assert (=> b!1396959 m!1283651))

(assert (=> b!1396959 m!1283651))

(declare-fun m!1283653 () Bool)

(assert (=> b!1396959 m!1283653))

(declare-fun m!1283655 () Bool)

(assert (=> b!1396959 m!1283655))

(declare-fun m!1283657 () Bool)

(assert (=> b!1396959 m!1283657))

(declare-fun m!1283659 () Bool)

(assert (=> start!120046 m!1283659))

(declare-fun m!1283661 () Bool)

(assert (=> start!120046 m!1283661))

(declare-fun m!1283663 () Bool)

(assert (=> b!1396955 m!1283663))

(declare-fun m!1283665 () Bool)

(assert (=> b!1396961 m!1283665))

(assert (=> b!1396961 m!1283665))

(declare-fun m!1283667 () Bool)

(assert (=> b!1396961 m!1283667))

(declare-fun m!1283669 () Bool)

(assert (=> b!1396960 m!1283669))

(assert (=> b!1396960 m!1283669))

(declare-fun m!1283671 () Bool)

(assert (=> b!1396960 m!1283671))

(assert (=> b!1396957 m!1283669))

(assert (=> b!1396957 m!1283669))

(declare-fun m!1283673 () Bool)

(assert (=> b!1396957 m!1283673))

(declare-fun m!1283675 () Bool)

(assert (=> b!1396963 m!1283675))

(assert (=> b!1396958 m!1283669))

(declare-fun m!1283677 () Bool)

(assert (=> b!1396958 m!1283677))

(assert (=> b!1396958 m!1283669))

(declare-fun m!1283679 () Bool)

(assert (=> b!1396958 m!1283679))

(assert (=> b!1396958 m!1283669))

(declare-fun m!1283681 () Bool)

(assert (=> b!1396958 m!1283681))

(declare-fun m!1283683 () Bool)

(assert (=> b!1396958 m!1283683))

(declare-fun m!1283685 () Bool)

(assert (=> b!1396956 m!1283685))

(push 1)


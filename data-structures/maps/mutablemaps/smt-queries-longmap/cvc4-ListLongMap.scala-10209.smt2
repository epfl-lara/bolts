; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120350 () Bool)

(assert start!120350)

(declare-fun b!1400037 () Bool)

(declare-fun e!792679 () Bool)

(declare-fun e!792682 () Bool)

(assert (=> b!1400037 (= e!792679 e!792682)))

(declare-fun res!938667 () Bool)

(assert (=> b!1400037 (=> res!938667 e!792682)))

(declare-datatypes ((SeekEntryResult!10524 0))(
  ( (MissingZero!10524 (index!44472 (_ BitVec 32))) (Found!10524 (index!44473 (_ BitVec 32))) (Intermediate!10524 (undefined!11336 Bool) (index!44474 (_ BitVec 32)) (x!126122 (_ BitVec 32))) (Undefined!10524) (MissingVacant!10524 (index!44475 (_ BitVec 32))) )
))
(declare-fun lt!615917 () SeekEntryResult!10524)

(declare-fun lt!615918 () SeekEntryResult!10524)

(assert (=> b!1400037 (= res!938667 (or (= lt!615917 lt!615918) (not (is-Intermediate!10524 lt!615918))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!615914 () (_ BitVec 64))

(declare-datatypes ((array!95677 0))(
  ( (array!95678 (arr!46185 (Array (_ BitVec 32) (_ BitVec 64))) (size!46736 (_ BitVec 32))) )
))
(declare-fun lt!615912 () array!95677)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95677 (_ BitVec 32)) SeekEntryResult!10524)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400037 (= lt!615918 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615914 mask!2840) lt!615914 lt!615912 mask!2840))))

(declare-fun a!2901 () array!95677)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1400037 (= lt!615914 (select (store (arr!46185 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400037 (= lt!615912 (array!95678 (store (arr!46185 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46736 a!2901)))))

(declare-fun b!1400038 () Bool)

(declare-fun res!938665 () Bool)

(declare-fun e!792678 () Bool)

(assert (=> b!1400038 (=> (not res!938665) (not e!792678))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400038 (= res!938665 (validKeyInArray!0 (select (arr!46185 a!2901) i!1037)))))

(declare-fun e!792680 () Bool)

(declare-fun b!1400039 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95677 (_ BitVec 32)) SeekEntryResult!10524)

(assert (=> b!1400039 (= e!792680 (= (seekEntryOrOpen!0 (select (arr!46185 a!2901) j!112) a!2901 mask!2840) (Found!10524 j!112)))))

(declare-fun b!1400040 () Bool)

(declare-fun res!938662 () Bool)

(assert (=> b!1400040 (=> (not res!938662) (not e!792678))))

(assert (=> b!1400040 (= res!938662 (and (= (size!46736 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46736 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46736 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1400042 () Bool)

(declare-fun res!938666 () Bool)

(assert (=> b!1400042 (=> (not res!938666) (not e!792678))))

(declare-datatypes ((List!32884 0))(
  ( (Nil!32881) (Cons!32880 (h!34128 (_ BitVec 64)) (t!47585 List!32884)) )
))
(declare-fun arrayNoDuplicates!0 (array!95677 (_ BitVec 32) List!32884) Bool)

(assert (=> b!1400042 (= res!938666 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32881))))

(declare-fun b!1400043 () Bool)

(declare-fun e!792681 () Bool)

(assert (=> b!1400043 (= e!792682 e!792681)))

(declare-fun res!938664 () Bool)

(assert (=> b!1400043 (=> res!938664 e!792681)))

(declare-fun lt!615915 () (_ BitVec 32))

(assert (=> b!1400043 (= res!938664 (or (bvslt (x!126122 lt!615917) #b00000000000000000000000000000000) (bvsgt (x!126122 lt!615917) #b01111111111111111111111111111110) (bvslt (x!126122 lt!615918) #b00000000000000000000000000000000) (bvsgt (x!126122 lt!615918) #b01111111111111111111111111111110) (bvslt lt!615915 #b00000000000000000000000000000000) (bvsge lt!615915 (size!46736 a!2901)) (bvslt (index!44474 lt!615917) #b00000000000000000000000000000000) (bvsge (index!44474 lt!615917) (size!46736 a!2901)) (bvslt (index!44474 lt!615918) #b00000000000000000000000000000000) (bvsge (index!44474 lt!615918) (size!46736 a!2901)) (not (= lt!615917 (Intermediate!10524 false (index!44474 lt!615917) (x!126122 lt!615917)))) (not (= lt!615918 (Intermediate!10524 false (index!44474 lt!615918) (x!126122 lt!615918))))))))

(declare-fun e!792683 () Bool)

(assert (=> b!1400043 e!792683))

(declare-fun res!938663 () Bool)

(assert (=> b!1400043 (=> (not res!938663) (not e!792683))))

(assert (=> b!1400043 (= res!938663 (and (not (undefined!11336 lt!615918)) (= (index!44474 lt!615918) i!1037) (bvslt (x!126122 lt!615918) (x!126122 lt!615917)) (= (select (store (arr!46185 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44474 lt!615918)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47002 0))(
  ( (Unit!47003) )
))
(declare-fun lt!615916 () Unit!47002)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95677 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47002)

(assert (=> b!1400043 (= lt!615916 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615915 (x!126122 lt!615917) (index!44474 lt!615917) (x!126122 lt!615918) (index!44474 lt!615918) (undefined!11336 lt!615918) mask!2840))))

(declare-fun b!1400044 () Bool)

(assert (=> b!1400044 (= e!792681 true)))

(declare-fun lt!615919 () SeekEntryResult!10524)

(assert (=> b!1400044 (= lt!615919 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615915 lt!615914 lt!615912 mask!2840))))

(declare-fun b!1400045 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95677 (_ BitVec 32)) SeekEntryResult!10524)

(assert (=> b!1400045 (= e!792683 (= (seekEntryOrOpen!0 lt!615914 lt!615912 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126122 lt!615918) (index!44474 lt!615918) (index!44474 lt!615918) (select (arr!46185 a!2901) j!112) lt!615912 mask!2840)))))

(declare-fun b!1400046 () Bool)

(declare-fun res!938657 () Bool)

(assert (=> b!1400046 (=> (not res!938657) (not e!792678))))

(assert (=> b!1400046 (= res!938657 (validKeyInArray!0 (select (arr!46185 a!2901) j!112)))))

(declare-fun b!1400047 () Bool)

(assert (=> b!1400047 (= e!792678 (not e!792679))))

(declare-fun res!938658 () Bool)

(assert (=> b!1400047 (=> res!938658 e!792679)))

(assert (=> b!1400047 (= res!938658 (or (not (is-Intermediate!10524 lt!615917)) (undefined!11336 lt!615917)))))

(assert (=> b!1400047 e!792680))

(declare-fun res!938659 () Bool)

(assert (=> b!1400047 (=> (not res!938659) (not e!792680))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95677 (_ BitVec 32)) Bool)

(assert (=> b!1400047 (= res!938659 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!615913 () Unit!47002)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95677 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47002)

(assert (=> b!1400047 (= lt!615913 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1400047 (= lt!615917 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615915 (select (arr!46185 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1400047 (= lt!615915 (toIndex!0 (select (arr!46185 a!2901) j!112) mask!2840))))

(declare-fun res!938661 () Bool)

(assert (=> start!120350 (=> (not res!938661) (not e!792678))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120350 (= res!938661 (validMask!0 mask!2840))))

(assert (=> start!120350 e!792678))

(assert (=> start!120350 true))

(declare-fun array_inv!35130 (array!95677) Bool)

(assert (=> start!120350 (array_inv!35130 a!2901)))

(declare-fun b!1400041 () Bool)

(declare-fun res!938660 () Bool)

(assert (=> b!1400041 (=> (not res!938660) (not e!792678))))

(assert (=> b!1400041 (= res!938660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120350 res!938661) b!1400040))

(assert (= (and b!1400040 res!938662) b!1400038))

(assert (= (and b!1400038 res!938665) b!1400046))

(assert (= (and b!1400046 res!938657) b!1400041))

(assert (= (and b!1400041 res!938660) b!1400042))

(assert (= (and b!1400042 res!938666) b!1400047))

(assert (= (and b!1400047 res!938659) b!1400039))

(assert (= (and b!1400047 (not res!938658)) b!1400037))

(assert (= (and b!1400037 (not res!938667)) b!1400043))

(assert (= (and b!1400043 res!938663) b!1400045))

(assert (= (and b!1400043 (not res!938664)) b!1400044))

(declare-fun m!1287441 () Bool)

(assert (=> b!1400038 m!1287441))

(assert (=> b!1400038 m!1287441))

(declare-fun m!1287443 () Bool)

(assert (=> b!1400038 m!1287443))

(declare-fun m!1287445 () Bool)

(assert (=> b!1400045 m!1287445))

(declare-fun m!1287447 () Bool)

(assert (=> b!1400045 m!1287447))

(assert (=> b!1400045 m!1287447))

(declare-fun m!1287449 () Bool)

(assert (=> b!1400045 m!1287449))

(assert (=> b!1400039 m!1287447))

(assert (=> b!1400039 m!1287447))

(declare-fun m!1287451 () Bool)

(assert (=> b!1400039 m!1287451))

(declare-fun m!1287453 () Bool)

(assert (=> b!1400041 m!1287453))

(assert (=> b!1400047 m!1287447))

(declare-fun m!1287455 () Bool)

(assert (=> b!1400047 m!1287455))

(assert (=> b!1400047 m!1287447))

(declare-fun m!1287457 () Bool)

(assert (=> b!1400047 m!1287457))

(declare-fun m!1287459 () Bool)

(assert (=> b!1400047 m!1287459))

(assert (=> b!1400047 m!1287447))

(declare-fun m!1287461 () Bool)

(assert (=> b!1400047 m!1287461))

(declare-fun m!1287463 () Bool)

(assert (=> b!1400037 m!1287463))

(assert (=> b!1400037 m!1287463))

(declare-fun m!1287465 () Bool)

(assert (=> b!1400037 m!1287465))

(declare-fun m!1287467 () Bool)

(assert (=> b!1400037 m!1287467))

(declare-fun m!1287469 () Bool)

(assert (=> b!1400037 m!1287469))

(declare-fun m!1287471 () Bool)

(assert (=> b!1400042 m!1287471))

(declare-fun m!1287473 () Bool)

(assert (=> start!120350 m!1287473))

(declare-fun m!1287475 () Bool)

(assert (=> start!120350 m!1287475))

(assert (=> b!1400043 m!1287467))

(declare-fun m!1287477 () Bool)

(assert (=> b!1400043 m!1287477))

(declare-fun m!1287479 () Bool)

(assert (=> b!1400043 m!1287479))

(assert (=> b!1400046 m!1287447))

(assert (=> b!1400046 m!1287447))

(declare-fun m!1287481 () Bool)

(assert (=> b!1400046 m!1287481))

(declare-fun m!1287483 () Bool)

(assert (=> b!1400044 m!1287483))

(push 1)


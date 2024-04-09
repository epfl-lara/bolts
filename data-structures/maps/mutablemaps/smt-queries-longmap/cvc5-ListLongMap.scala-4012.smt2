; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54552 () Bool)

(assert start!54552)

(declare-fun b!595903 () Bool)

(declare-fun e!340467 () Bool)

(declare-fun e!340473 () Bool)

(assert (=> b!595903 (= e!340467 e!340473)))

(declare-fun res!381910 () Bool)

(assert (=> b!595903 (=> (not res!381910) (not e!340473))))

(declare-datatypes ((SeekEntryResult!6195 0))(
  ( (MissingZero!6195 (index!27027 (_ BitVec 32))) (Found!6195 (index!27028 (_ BitVec 32))) (Intermediate!6195 (undefined!7007 Bool) (index!27029 (_ BitVec 32)) (x!55856 (_ BitVec 32))) (Undefined!6195) (MissingVacant!6195 (index!27030 (_ BitVec 32))) )
))
(declare-fun lt!270675 () SeekEntryResult!6195)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!595903 (= res!381910 (or (= lt!270675 (MissingZero!6195 i!1108)) (= lt!270675 (MissingVacant!6195 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36975 0))(
  ( (array!36976 (arr!17748 (Array (_ BitVec 32) (_ BitVec 64))) (size!18112 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36975)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36975 (_ BitVec 32)) SeekEntryResult!6195)

(assert (=> b!595903 (= lt!270675 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!595904 () Bool)

(declare-fun e!340466 () Bool)

(assert (=> b!595904 (= e!340473 e!340466)))

(declare-fun res!381916 () Bool)

(assert (=> b!595904 (=> (not res!381916) (not e!340466))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!595904 (= res!381916 (= (select (store (arr!17748 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!270680 () array!36975)

(assert (=> b!595904 (= lt!270680 (array!36976 (store (arr!17748 a!2986) i!1108 k!1786) (size!18112 a!2986)))))

(declare-fun b!595905 () Bool)

(declare-fun e!340465 () Bool)

(declare-fun e!340472 () Bool)

(assert (=> b!595905 (= e!340465 e!340472)))

(declare-fun res!381909 () Bool)

(assert (=> b!595905 (=> res!381909 e!340472)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!270674 () (_ BitVec 64))

(declare-fun lt!270679 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!595905 (= res!381909 (or (not (= (select (arr!17748 a!2986) j!136) lt!270679)) (not (= (select (arr!17748 a!2986) j!136) lt!270674)) (bvsge j!136 index!984)))))

(declare-fun b!595906 () Bool)

(declare-fun res!381914 () Bool)

(assert (=> b!595906 (=> (not res!381914) (not e!340473))))

(declare-datatypes ((List!11842 0))(
  ( (Nil!11839) (Cons!11838 (h!12883 (_ BitVec 64)) (t!18078 List!11842)) )
))
(declare-fun arrayNoDuplicates!0 (array!36975 (_ BitVec 32) List!11842) Bool)

(assert (=> b!595906 (= res!381914 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11839))))

(declare-fun b!595907 () Bool)

(declare-datatypes ((Unit!18724 0))(
  ( (Unit!18725) )
))
(declare-fun e!340470 () Unit!18724)

(declare-fun Unit!18726 () Unit!18724)

(assert (=> b!595907 (= e!340470 Unit!18726)))

(assert (=> b!595907 false))

(declare-fun b!595908 () Bool)

(declare-fun res!381905 () Bool)

(assert (=> b!595908 (=> (not res!381905) (not e!340473))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!595908 (= res!381905 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17748 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!595909 () Bool)

(declare-fun e!340474 () Bool)

(assert (=> b!595909 (= e!340472 e!340474)))

(declare-fun res!381908 () Bool)

(assert (=> b!595909 (=> (not res!381908) (not e!340474))))

(declare-fun arrayContainsKey!0 (array!36975 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!595909 (= res!381908 (arrayContainsKey!0 lt!270680 (select (arr!17748 a!2986) j!136) j!136))))

(declare-fun b!595910 () Bool)

(declare-fun e!340477 () Bool)

(assert (=> b!595910 (= e!340466 e!340477)))

(declare-fun res!381903 () Bool)

(assert (=> b!595910 (=> (not res!381903) (not e!340477))))

(declare-fun lt!270681 () SeekEntryResult!6195)

(assert (=> b!595910 (= res!381903 (and (= lt!270681 (Found!6195 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17748 a!2986) index!984) (select (arr!17748 a!2986) j!136))) (not (= (select (arr!17748 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36975 (_ BitVec 32)) SeekEntryResult!6195)

(assert (=> b!595910 (= lt!270681 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17748 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!595911 () Bool)

(declare-fun e!340475 () Bool)

(declare-fun e!340471 () Bool)

(assert (=> b!595911 (= e!340475 e!340471)))

(declare-fun res!381906 () Bool)

(assert (=> b!595911 (=> res!381906 e!340471)))

(assert (=> b!595911 (= res!381906 (or (bvsge (size!18112 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18112 a!2986))))))

(assert (=> b!595911 (arrayContainsKey!0 lt!270680 (select (arr!17748 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270678 () Unit!18724)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36975 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18724)

(assert (=> b!595911 (= lt!270678 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270680 (select (arr!17748 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!595912 () Bool)

(declare-fun res!381899 () Bool)

(assert (=> b!595912 (=> (not res!381899) (not e!340467))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!595912 (= res!381899 (validKeyInArray!0 (select (arr!17748 a!2986) j!136)))))

(declare-fun b!595913 () Bool)

(assert (=> b!595913 (= e!340474 (arrayContainsKey!0 lt!270680 (select (arr!17748 a!2986) j!136) index!984))))

(declare-fun b!595914 () Bool)

(declare-fun res!381904 () Bool)

(assert (=> b!595914 (=> (not res!381904) (not e!340467))))

(assert (=> b!595914 (= res!381904 (validKeyInArray!0 k!1786))))

(declare-fun b!595915 () Bool)

(declare-fun res!381902 () Bool)

(assert (=> b!595915 (=> res!381902 e!340471)))

(declare-fun noDuplicate!262 (List!11842) Bool)

(assert (=> b!595915 (= res!381902 (not (noDuplicate!262 Nil!11839)))))

(declare-fun b!595916 () Bool)

(declare-fun e!340469 () Bool)

(assert (=> b!595916 (= e!340469 e!340475)))

(declare-fun res!381913 () Bool)

(assert (=> b!595916 (=> res!381913 e!340475)))

(assert (=> b!595916 (= res!381913 (or (not (= (select (arr!17748 a!2986) j!136) lt!270679)) (not (= (select (arr!17748 a!2986) j!136) lt!270674)) (bvsge j!136 index!984)))))

(assert (=> b!595916 e!340465))

(declare-fun res!381917 () Bool)

(assert (=> b!595916 (=> (not res!381917) (not e!340465))))

(assert (=> b!595916 (= res!381917 (= lt!270674 (select (arr!17748 a!2986) j!136)))))

(assert (=> b!595916 (= lt!270674 (select (store (arr!17748 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!595917 () Bool)

(declare-fun Unit!18727 () Unit!18724)

(assert (=> b!595917 (= e!340470 Unit!18727)))

(declare-fun b!595918 () Bool)

(declare-fun res!381907 () Bool)

(assert (=> b!595918 (=> (not res!381907) (not e!340473))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36975 (_ BitVec 32)) Bool)

(assert (=> b!595918 (= res!381907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!595919 () Bool)

(declare-fun res!381901 () Bool)

(assert (=> b!595919 (=> (not res!381901) (not e!340467))))

(assert (=> b!595919 (= res!381901 (and (= (size!18112 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18112 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18112 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!595920 () Bool)

(assert (=> b!595920 (= e!340477 (not e!340469))))

(declare-fun res!381911 () Bool)

(assert (=> b!595920 (=> res!381911 e!340469)))

(declare-fun lt!270676 () SeekEntryResult!6195)

(assert (=> b!595920 (= res!381911 (not (= lt!270676 (Found!6195 index!984))))))

(declare-fun lt!270684 () Unit!18724)

(assert (=> b!595920 (= lt!270684 e!340470)))

(declare-fun c!67370 () Bool)

(assert (=> b!595920 (= c!67370 (= lt!270676 Undefined!6195))))

(assert (=> b!595920 (= lt!270676 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270679 lt!270680 mask!3053))))

(declare-fun e!340476 () Bool)

(assert (=> b!595920 e!340476))

(declare-fun res!381898 () Bool)

(assert (=> b!595920 (=> (not res!381898) (not e!340476))))

(declare-fun lt!270677 () (_ BitVec 32))

(declare-fun lt!270673 () SeekEntryResult!6195)

(assert (=> b!595920 (= res!381898 (= lt!270673 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270677 vacantSpotIndex!68 lt!270679 lt!270680 mask!3053)))))

(assert (=> b!595920 (= lt!270673 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270677 vacantSpotIndex!68 (select (arr!17748 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!595920 (= lt!270679 (select (store (arr!17748 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!270682 () Unit!18724)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36975 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18724)

(assert (=> b!595920 (= lt!270682 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270677 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!595920 (= lt!270677 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!595921 () Bool)

(assert (=> b!595921 (= e!340476 (= lt!270681 lt!270673))))

(declare-fun b!595922 () Bool)

(declare-fun res!381915 () Bool)

(assert (=> b!595922 (=> res!381915 e!340471)))

(declare-fun contains!2946 (List!11842 (_ BitVec 64)) Bool)

(assert (=> b!595922 (= res!381915 (contains!2946 Nil!11839 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595923 () Bool)

(declare-fun res!381912 () Bool)

(assert (=> b!595923 (=> (not res!381912) (not e!340467))))

(assert (=> b!595923 (= res!381912 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!381897 () Bool)

(assert (=> start!54552 (=> (not res!381897) (not e!340467))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54552 (= res!381897 (validMask!0 mask!3053))))

(assert (=> start!54552 e!340467))

(assert (=> start!54552 true))

(declare-fun array_inv!13522 (array!36975) Bool)

(assert (=> start!54552 (array_inv!13522 a!2986)))

(declare-fun b!595924 () Bool)

(assert (=> b!595924 (= e!340471 true)))

(declare-fun lt!270683 () Bool)

(assert (=> b!595924 (= lt!270683 (contains!2946 Nil!11839 k!1786))))

(declare-fun b!595925 () Bool)

(declare-fun res!381900 () Bool)

(assert (=> b!595925 (=> res!381900 e!340471)))

(assert (=> b!595925 (= res!381900 (contains!2946 Nil!11839 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!54552 res!381897) b!595919))

(assert (= (and b!595919 res!381901) b!595912))

(assert (= (and b!595912 res!381899) b!595914))

(assert (= (and b!595914 res!381904) b!595923))

(assert (= (and b!595923 res!381912) b!595903))

(assert (= (and b!595903 res!381910) b!595918))

(assert (= (and b!595918 res!381907) b!595906))

(assert (= (and b!595906 res!381914) b!595908))

(assert (= (and b!595908 res!381905) b!595904))

(assert (= (and b!595904 res!381916) b!595910))

(assert (= (and b!595910 res!381903) b!595920))

(assert (= (and b!595920 res!381898) b!595921))

(assert (= (and b!595920 c!67370) b!595907))

(assert (= (and b!595920 (not c!67370)) b!595917))

(assert (= (and b!595920 (not res!381911)) b!595916))

(assert (= (and b!595916 res!381917) b!595905))

(assert (= (and b!595905 (not res!381909)) b!595909))

(assert (= (and b!595909 res!381908) b!595913))

(assert (= (and b!595916 (not res!381913)) b!595911))

(assert (= (and b!595911 (not res!381906)) b!595915))

(assert (= (and b!595915 (not res!381902)) b!595925))

(assert (= (and b!595925 (not res!381900)) b!595922))

(assert (= (and b!595922 (not res!381915)) b!595924))

(declare-fun m!573495 () Bool)

(assert (=> b!595911 m!573495))

(assert (=> b!595911 m!573495))

(declare-fun m!573497 () Bool)

(assert (=> b!595911 m!573497))

(assert (=> b!595911 m!573495))

(declare-fun m!573499 () Bool)

(assert (=> b!595911 m!573499))

(declare-fun m!573501 () Bool)

(assert (=> b!595903 m!573501))

(assert (=> b!595920 m!573495))

(declare-fun m!573503 () Bool)

(assert (=> b!595920 m!573503))

(declare-fun m!573505 () Bool)

(assert (=> b!595920 m!573505))

(declare-fun m!573507 () Bool)

(assert (=> b!595920 m!573507))

(assert (=> b!595920 m!573495))

(declare-fun m!573509 () Bool)

(assert (=> b!595920 m!573509))

(declare-fun m!573511 () Bool)

(assert (=> b!595920 m!573511))

(declare-fun m!573513 () Bool)

(assert (=> b!595920 m!573513))

(declare-fun m!573515 () Bool)

(assert (=> b!595920 m!573515))

(declare-fun m!573517 () Bool)

(assert (=> start!54552 m!573517))

(declare-fun m!573519 () Bool)

(assert (=> start!54552 m!573519))

(assert (=> b!595916 m!573495))

(assert (=> b!595916 m!573509))

(declare-fun m!573521 () Bool)

(assert (=> b!595916 m!573521))

(assert (=> b!595905 m!573495))

(declare-fun m!573523 () Bool)

(assert (=> b!595922 m!573523))

(declare-fun m!573525 () Bool)

(assert (=> b!595910 m!573525))

(assert (=> b!595910 m!573495))

(assert (=> b!595910 m!573495))

(declare-fun m!573527 () Bool)

(assert (=> b!595910 m!573527))

(declare-fun m!573529 () Bool)

(assert (=> b!595925 m!573529))

(assert (=> b!595909 m!573495))

(assert (=> b!595909 m!573495))

(declare-fun m!573531 () Bool)

(assert (=> b!595909 m!573531))

(assert (=> b!595913 m!573495))

(assert (=> b!595913 m!573495))

(declare-fun m!573533 () Bool)

(assert (=> b!595913 m!573533))

(declare-fun m!573535 () Bool)

(assert (=> b!595908 m!573535))

(declare-fun m!573537 () Bool)

(assert (=> b!595924 m!573537))

(assert (=> b!595912 m!573495))

(assert (=> b!595912 m!573495))

(declare-fun m!573539 () Bool)

(assert (=> b!595912 m!573539))

(declare-fun m!573541 () Bool)

(assert (=> b!595918 m!573541))

(assert (=> b!595904 m!573509))

(declare-fun m!573543 () Bool)

(assert (=> b!595904 m!573543))

(declare-fun m!573545 () Bool)

(assert (=> b!595914 m!573545))

(declare-fun m!573547 () Bool)

(assert (=> b!595923 m!573547))

(declare-fun m!573549 () Bool)

(assert (=> b!595915 m!573549))

(declare-fun m!573551 () Bool)

(assert (=> b!595906 m!573551))

(push 1)


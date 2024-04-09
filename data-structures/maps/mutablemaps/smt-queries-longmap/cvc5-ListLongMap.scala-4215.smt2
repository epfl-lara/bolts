; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57822 () Bool)

(assert start!57822)

(declare-fun b!639029 () Bool)

(declare-fun e!365727 () Bool)

(declare-fun e!365721 () Bool)

(assert (=> b!639029 (= e!365727 e!365721)))

(declare-fun res!413773 () Bool)

(assert (=> b!639029 (=> (not res!413773) (not e!365721))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!38280 0))(
  ( (array!38281 (arr!18357 (Array (_ BitVec 32) (_ BitVec 64))) (size!18721 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38280)

(assert (=> b!639029 (= res!413773 (= (select (store (arr!18357 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!295631 () array!38280)

(assert (=> b!639029 (= lt!295631 (array!38281 (store (arr!18357 a!2986) i!1108 k!1786) (size!18721 a!2986)))))

(declare-fun b!639030 () Bool)

(declare-fun e!365731 () Bool)

(assert (=> b!639030 (= e!365721 e!365731)))

(declare-fun res!413776 () Bool)

(assert (=> b!639030 (=> (not res!413776) (not e!365731))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6804 0))(
  ( (MissingZero!6804 (index!29532 (_ BitVec 32))) (Found!6804 (index!29533 (_ BitVec 32))) (Intermediate!6804 (undefined!7616 Bool) (index!29534 (_ BitVec 32)) (x!58320 (_ BitVec 32))) (Undefined!6804) (MissingVacant!6804 (index!29535 (_ BitVec 32))) )
))
(declare-fun lt!295640 () SeekEntryResult!6804)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!639030 (= res!413776 (and (= lt!295640 (Found!6804 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18357 a!2986) index!984) (select (arr!18357 a!2986) j!136))) (not (= (select (arr!18357 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38280 (_ BitVec 32)) SeekEntryResult!6804)

(assert (=> b!639030 (= lt!295640 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18357 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!639031 () Bool)

(declare-fun res!413767 () Bool)

(declare-fun e!365725 () Bool)

(assert (=> b!639031 (=> (not res!413767) (not e!365725))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!639031 (= res!413767 (validKeyInArray!0 k!1786))))

(declare-fun b!639032 () Bool)

(declare-fun res!413769 () Bool)

(assert (=> b!639032 (=> (not res!413769) (not e!365727))))

(assert (=> b!639032 (= res!413769 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18357 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!639033 () Bool)

(declare-fun e!365724 () Bool)

(assert (=> b!639033 (= e!365724 (or (bvsge (size!18721 a!2986) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (size!18721 a!2986))))))

(declare-datatypes ((List!12451 0))(
  ( (Nil!12448) (Cons!12447 (h!13492 (_ BitVec 64)) (t!18687 List!12451)) )
))
(declare-fun arrayNoDuplicates!0 (array!38280 (_ BitVec 32) List!12451) Bool)

(assert (=> b!639033 (arrayNoDuplicates!0 lt!295631 #b00000000000000000000000000000000 Nil!12448)))

(declare-datatypes ((Unit!21574 0))(
  ( (Unit!21575) )
))
(declare-fun lt!295635 () Unit!21574)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38280 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12451) Unit!21574)

(assert (=> b!639033 (= lt!295635 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12448))))

(declare-fun arrayContainsKey!0 (array!38280 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!639033 (arrayContainsKey!0 lt!295631 (select (arr!18357 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295639 () Unit!21574)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38280 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21574)

(assert (=> b!639033 (= lt!295639 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295631 (select (arr!18357 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!639034 () Bool)

(declare-fun res!413771 () Bool)

(assert (=> b!639034 (=> (not res!413771) (not e!365725))))

(assert (=> b!639034 (= res!413771 (validKeyInArray!0 (select (arr!18357 a!2986) j!136)))))

(declare-fun res!413777 () Bool)

(assert (=> start!57822 (=> (not res!413777) (not e!365725))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57822 (= res!413777 (validMask!0 mask!3053))))

(assert (=> start!57822 e!365725))

(assert (=> start!57822 true))

(declare-fun array_inv!14131 (array!38280) Bool)

(assert (=> start!57822 (array_inv!14131 a!2986)))

(declare-fun b!639035 () Bool)

(declare-fun e!365728 () Bool)

(declare-fun e!365730 () Bool)

(assert (=> b!639035 (= e!365728 e!365730)))

(declare-fun res!413780 () Bool)

(assert (=> b!639035 (=> (not res!413780) (not e!365730))))

(assert (=> b!639035 (= res!413780 (arrayContainsKey!0 lt!295631 (select (arr!18357 a!2986) j!136) j!136))))

(declare-fun b!639036 () Bool)

(declare-fun e!365722 () Unit!21574)

(declare-fun Unit!21576 () Unit!21574)

(assert (=> b!639036 (= e!365722 Unit!21576)))

(assert (=> b!639036 false))

(declare-fun b!639037 () Bool)

(declare-fun e!365729 () Bool)

(assert (=> b!639037 (= e!365729 e!365728)))

(declare-fun res!413772 () Bool)

(assert (=> b!639037 (=> res!413772 e!365728)))

(declare-fun lt!295633 () (_ BitVec 64))

(declare-fun lt!295630 () (_ BitVec 64))

(assert (=> b!639037 (= res!413772 (or (not (= (select (arr!18357 a!2986) j!136) lt!295633)) (not (= (select (arr!18357 a!2986) j!136) lt!295630)) (bvsge j!136 index!984)))))

(declare-fun b!639038 () Bool)

(declare-fun e!365723 () Bool)

(assert (=> b!639038 (= e!365731 (not e!365723))))

(declare-fun res!413783 () Bool)

(assert (=> b!639038 (=> res!413783 e!365723)))

(declare-fun lt!295632 () SeekEntryResult!6804)

(assert (=> b!639038 (= res!413783 (not (= lt!295632 (Found!6804 index!984))))))

(declare-fun lt!295636 () Unit!21574)

(assert (=> b!639038 (= lt!295636 e!365722)))

(declare-fun c!72998 () Bool)

(assert (=> b!639038 (= c!72998 (= lt!295632 Undefined!6804))))

(assert (=> b!639038 (= lt!295632 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295633 lt!295631 mask!3053))))

(declare-fun e!365726 () Bool)

(assert (=> b!639038 e!365726))

(declare-fun res!413778 () Bool)

(assert (=> b!639038 (=> (not res!413778) (not e!365726))))

(declare-fun lt!295641 () SeekEntryResult!6804)

(declare-fun lt!295637 () (_ BitVec 32))

(assert (=> b!639038 (= res!413778 (= lt!295641 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295637 vacantSpotIndex!68 lt!295633 lt!295631 mask!3053)))))

(assert (=> b!639038 (= lt!295641 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295637 vacantSpotIndex!68 (select (arr!18357 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!639038 (= lt!295633 (select (store (arr!18357 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!295638 () Unit!21574)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38280 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21574)

(assert (=> b!639038 (= lt!295638 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295637 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!639038 (= lt!295637 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!639039 () Bool)

(assert (=> b!639039 (= e!365723 e!365724)))

(declare-fun res!413774 () Bool)

(assert (=> b!639039 (=> res!413774 e!365724)))

(assert (=> b!639039 (= res!413774 (or (not (= (select (arr!18357 a!2986) j!136) lt!295633)) (not (= (select (arr!18357 a!2986) j!136) lt!295630)) (bvsge j!136 index!984)))))

(assert (=> b!639039 e!365729))

(declare-fun res!413770 () Bool)

(assert (=> b!639039 (=> (not res!413770) (not e!365729))))

(assert (=> b!639039 (= res!413770 (= lt!295630 (select (arr!18357 a!2986) j!136)))))

(assert (=> b!639039 (= lt!295630 (select (store (arr!18357 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!639040 () Bool)

(declare-fun res!413768 () Bool)

(assert (=> b!639040 (=> (not res!413768) (not e!365727))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38280 (_ BitVec 32)) Bool)

(assert (=> b!639040 (= res!413768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!639041 () Bool)

(declare-fun Unit!21577 () Unit!21574)

(assert (=> b!639041 (= e!365722 Unit!21577)))

(declare-fun b!639042 () Bool)

(assert (=> b!639042 (= e!365730 (arrayContainsKey!0 lt!295631 (select (arr!18357 a!2986) j!136) index!984))))

(declare-fun b!639043 () Bool)

(declare-fun res!413779 () Bool)

(assert (=> b!639043 (=> (not res!413779) (not e!365727))))

(assert (=> b!639043 (= res!413779 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12448))))

(declare-fun b!639044 () Bool)

(assert (=> b!639044 (= e!365725 e!365727)))

(declare-fun res!413781 () Bool)

(assert (=> b!639044 (=> (not res!413781) (not e!365727))))

(declare-fun lt!295634 () SeekEntryResult!6804)

(assert (=> b!639044 (= res!413781 (or (= lt!295634 (MissingZero!6804 i!1108)) (= lt!295634 (MissingVacant!6804 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38280 (_ BitVec 32)) SeekEntryResult!6804)

(assert (=> b!639044 (= lt!295634 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!639045 () Bool)

(assert (=> b!639045 (= e!365726 (= lt!295640 lt!295641))))

(declare-fun b!639046 () Bool)

(declare-fun res!413775 () Bool)

(assert (=> b!639046 (=> (not res!413775) (not e!365725))))

(assert (=> b!639046 (= res!413775 (and (= (size!18721 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18721 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18721 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!639047 () Bool)

(declare-fun res!413782 () Bool)

(assert (=> b!639047 (=> (not res!413782) (not e!365725))))

(assert (=> b!639047 (= res!413782 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!57822 res!413777) b!639046))

(assert (= (and b!639046 res!413775) b!639034))

(assert (= (and b!639034 res!413771) b!639031))

(assert (= (and b!639031 res!413767) b!639047))

(assert (= (and b!639047 res!413782) b!639044))

(assert (= (and b!639044 res!413781) b!639040))

(assert (= (and b!639040 res!413768) b!639043))

(assert (= (and b!639043 res!413779) b!639032))

(assert (= (and b!639032 res!413769) b!639029))

(assert (= (and b!639029 res!413773) b!639030))

(assert (= (and b!639030 res!413776) b!639038))

(assert (= (and b!639038 res!413778) b!639045))

(assert (= (and b!639038 c!72998) b!639036))

(assert (= (and b!639038 (not c!72998)) b!639041))

(assert (= (and b!639038 (not res!413783)) b!639039))

(assert (= (and b!639039 res!413770) b!639037))

(assert (= (and b!639037 (not res!413772)) b!639035))

(assert (= (and b!639035 res!413780) b!639042))

(assert (= (and b!639039 (not res!413774)) b!639033))

(declare-fun m!612975 () Bool)

(assert (=> b!639042 m!612975))

(assert (=> b!639042 m!612975))

(declare-fun m!612977 () Bool)

(assert (=> b!639042 m!612977))

(declare-fun m!612979 () Bool)

(assert (=> b!639038 m!612979))

(declare-fun m!612981 () Bool)

(assert (=> b!639038 m!612981))

(declare-fun m!612983 () Bool)

(assert (=> b!639038 m!612983))

(declare-fun m!612985 () Bool)

(assert (=> b!639038 m!612985))

(declare-fun m!612987 () Bool)

(assert (=> b!639038 m!612987))

(assert (=> b!639038 m!612975))

(declare-fun m!612989 () Bool)

(assert (=> b!639038 m!612989))

(declare-fun m!612991 () Bool)

(assert (=> b!639038 m!612991))

(assert (=> b!639038 m!612975))

(declare-fun m!612993 () Bool)

(assert (=> b!639040 m!612993))

(assert (=> b!639029 m!612983))

(declare-fun m!612995 () Bool)

(assert (=> b!639029 m!612995))

(declare-fun m!612997 () Bool)

(assert (=> b!639032 m!612997))

(assert (=> b!639039 m!612975))

(assert (=> b!639039 m!612983))

(declare-fun m!612999 () Bool)

(assert (=> b!639039 m!612999))

(assert (=> b!639035 m!612975))

(assert (=> b!639035 m!612975))

(declare-fun m!613001 () Bool)

(assert (=> b!639035 m!613001))

(declare-fun m!613003 () Bool)

(assert (=> b!639047 m!613003))

(declare-fun m!613005 () Bool)

(assert (=> b!639030 m!613005))

(assert (=> b!639030 m!612975))

(assert (=> b!639030 m!612975))

(declare-fun m!613007 () Bool)

(assert (=> b!639030 m!613007))

(declare-fun m!613009 () Bool)

(assert (=> b!639043 m!613009))

(declare-fun m!613011 () Bool)

(assert (=> b!639033 m!613011))

(assert (=> b!639033 m!612975))

(assert (=> b!639033 m!612975))

(declare-fun m!613013 () Bool)

(assert (=> b!639033 m!613013))

(assert (=> b!639033 m!612975))

(declare-fun m!613015 () Bool)

(assert (=> b!639033 m!613015))

(declare-fun m!613017 () Bool)

(assert (=> b!639033 m!613017))

(declare-fun m!613019 () Bool)

(assert (=> start!57822 m!613019))

(declare-fun m!613021 () Bool)

(assert (=> start!57822 m!613021))

(declare-fun m!613023 () Bool)

(assert (=> b!639044 m!613023))

(declare-fun m!613025 () Bool)

(assert (=> b!639031 m!613025))

(assert (=> b!639034 m!612975))

(assert (=> b!639034 m!612975))

(declare-fun m!613027 () Bool)

(assert (=> b!639034 m!613027))

(assert (=> b!639037 m!612975))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57816 () Bool)

(assert start!57816)

(declare-fun b!638858 () Bool)

(declare-fun e!365619 () Bool)

(declare-fun e!365620 () Bool)

(assert (=> b!638858 (= e!365619 e!365620)))

(declare-fun res!413627 () Bool)

(assert (=> b!638858 (=> res!413627 e!365620)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!295528 () (_ BitVec 64))

(declare-fun lt!295531 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38274 0))(
  ( (array!38275 (arr!18354 (Array (_ BitVec 32) (_ BitVec 64))) (size!18718 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38274)

(assert (=> b!638858 (= res!413627 (or (not (= (select (arr!18354 a!2986) j!136) lt!295528)) (not (= (select (arr!18354 a!2986) j!136) lt!295531)) (bvsge j!136 index!984)))))

(declare-fun b!638859 () Bool)

(declare-fun e!365612 () Bool)

(declare-fun e!365615 () Bool)

(assert (=> b!638859 (= e!365612 e!365615)))

(declare-fun res!413625 () Bool)

(assert (=> b!638859 (=> (not res!413625) (not e!365615))))

(declare-datatypes ((SeekEntryResult!6801 0))(
  ( (MissingZero!6801 (index!29520 (_ BitVec 32))) (Found!6801 (index!29521 (_ BitVec 32))) (Intermediate!6801 (undefined!7613 Bool) (index!29522 (_ BitVec 32)) (x!58309 (_ BitVec 32))) (Undefined!6801) (MissingVacant!6801 (index!29523 (_ BitVec 32))) )
))
(declare-fun lt!295532 () SeekEntryResult!6801)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!638859 (= res!413625 (or (= lt!295532 (MissingZero!6801 i!1108)) (= lt!295532 (MissingVacant!6801 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38274 (_ BitVec 32)) SeekEntryResult!6801)

(assert (=> b!638859 (= lt!295532 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!638860 () Bool)

(declare-fun e!365613 () Bool)

(declare-fun e!365616 () Bool)

(assert (=> b!638860 (= e!365613 e!365616)))

(declare-fun res!413626 () Bool)

(assert (=> b!638860 (=> res!413626 e!365616)))

(assert (=> b!638860 (= res!413626 (or (not (= (select (arr!18354 a!2986) j!136) lt!295528)) (not (= (select (arr!18354 a!2986) j!136) lt!295531)) (bvsge j!136 index!984)))))

(assert (=> b!638860 e!365619))

(declare-fun res!413616 () Bool)

(assert (=> b!638860 (=> (not res!413616) (not e!365619))))

(assert (=> b!638860 (= res!413616 (= lt!295531 (select (arr!18354 a!2986) j!136)))))

(assert (=> b!638860 (= lt!295531 (select (store (arr!18354 a!2986) i!1108 k!1786) index!984))))

(declare-fun res!413630 () Bool)

(assert (=> start!57816 (=> (not res!413630) (not e!365612))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57816 (= res!413630 (validMask!0 mask!3053))))

(assert (=> start!57816 e!365612))

(assert (=> start!57816 true))

(declare-fun array_inv!14128 (array!38274) Bool)

(assert (=> start!57816 (array_inv!14128 a!2986)))

(declare-fun b!638861 () Bool)

(declare-fun e!365621 () Bool)

(declare-fun lt!295523 () array!38274)

(declare-fun arrayContainsKey!0 (array!38274 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!638861 (= e!365621 (arrayContainsKey!0 lt!295523 (select (arr!18354 a!2986) j!136) index!984))))

(declare-fun b!638862 () Bool)

(assert (=> b!638862 (= e!365620 e!365621)))

(declare-fun res!413629 () Bool)

(assert (=> b!638862 (=> (not res!413629) (not e!365621))))

(assert (=> b!638862 (= res!413629 (arrayContainsKey!0 lt!295523 (select (arr!18354 a!2986) j!136) j!136))))

(declare-fun b!638863 () Bool)

(declare-fun e!365622 () Bool)

(assert (=> b!638863 (= e!365615 e!365622)))

(declare-fun res!413623 () Bool)

(assert (=> b!638863 (=> (not res!413623) (not e!365622))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!638863 (= res!413623 (= (select (store (arr!18354 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!638863 (= lt!295523 (array!38275 (store (arr!18354 a!2986) i!1108 k!1786) (size!18718 a!2986)))))

(declare-fun b!638864 () Bool)

(assert (=> b!638864 (= e!365616 true)))

(declare-datatypes ((List!12448 0))(
  ( (Nil!12445) (Cons!12444 (h!13489 (_ BitVec 64)) (t!18684 List!12448)) )
))
(declare-fun arrayNoDuplicates!0 (array!38274 (_ BitVec 32) List!12448) Bool)

(assert (=> b!638864 (arrayNoDuplicates!0 lt!295523 #b00000000000000000000000000000000 Nil!12445)))

(declare-datatypes ((Unit!21562 0))(
  ( (Unit!21563) )
))
(declare-fun lt!295530 () Unit!21562)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38274 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12448) Unit!21562)

(assert (=> b!638864 (= lt!295530 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12445))))

(assert (=> b!638864 (arrayContainsKey!0 lt!295523 (select (arr!18354 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295533 () Unit!21562)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38274 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21562)

(assert (=> b!638864 (= lt!295533 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295523 (select (arr!18354 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!638865 () Bool)

(declare-fun res!413619 () Bool)

(assert (=> b!638865 (=> (not res!413619) (not e!365615))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38274 (_ BitVec 32)) Bool)

(assert (=> b!638865 (= res!413619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!638866 () Bool)

(declare-fun res!413628 () Bool)

(assert (=> b!638866 (=> (not res!413628) (not e!365615))))

(assert (=> b!638866 (= res!413628 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12445))))

(declare-fun b!638867 () Bool)

(declare-fun e!365618 () Unit!21562)

(declare-fun Unit!21564 () Unit!21562)

(assert (=> b!638867 (= e!365618 Unit!21564)))

(declare-fun b!638868 () Bool)

(declare-fun e!365614 () Bool)

(assert (=> b!638868 (= e!365614 (not e!365613))))

(declare-fun res!413624 () Bool)

(assert (=> b!638868 (=> res!413624 e!365613)))

(declare-fun lt!295526 () SeekEntryResult!6801)

(assert (=> b!638868 (= res!413624 (not (= lt!295526 (Found!6801 index!984))))))

(declare-fun lt!295527 () Unit!21562)

(assert (=> b!638868 (= lt!295527 e!365618)))

(declare-fun c!72989 () Bool)

(assert (=> b!638868 (= c!72989 (= lt!295526 Undefined!6801))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38274 (_ BitVec 32)) SeekEntryResult!6801)

(assert (=> b!638868 (= lt!295526 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295528 lt!295523 mask!3053))))

(declare-fun e!365617 () Bool)

(assert (=> b!638868 e!365617))

(declare-fun res!413618 () Bool)

(assert (=> b!638868 (=> (not res!413618) (not e!365617))))

(declare-fun lt!295524 () SeekEntryResult!6801)

(declare-fun lt!295529 () (_ BitVec 32))

(assert (=> b!638868 (= res!413618 (= lt!295524 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295529 vacantSpotIndex!68 lt!295528 lt!295523 mask!3053)))))

(assert (=> b!638868 (= lt!295524 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295529 vacantSpotIndex!68 (select (arr!18354 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!638868 (= lt!295528 (select (store (arr!18354 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!295522 () Unit!21562)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38274 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21562)

(assert (=> b!638868 (= lt!295522 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295529 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!638868 (= lt!295529 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!638869 () Bool)

(assert (=> b!638869 (= e!365622 e!365614)))

(declare-fun res!413620 () Bool)

(assert (=> b!638869 (=> (not res!413620) (not e!365614))))

(declare-fun lt!295525 () SeekEntryResult!6801)

(assert (=> b!638869 (= res!413620 (and (= lt!295525 (Found!6801 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18354 a!2986) index!984) (select (arr!18354 a!2986) j!136))) (not (= (select (arr!18354 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!638869 (= lt!295525 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18354 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!638870 () Bool)

(assert (=> b!638870 (= e!365617 (= lt!295525 lt!295524))))

(declare-fun b!638871 () Bool)

(declare-fun res!413621 () Bool)

(assert (=> b!638871 (=> (not res!413621) (not e!365612))))

(assert (=> b!638871 (= res!413621 (and (= (size!18718 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18718 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18718 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!638872 () Bool)

(declare-fun Unit!21565 () Unit!21562)

(assert (=> b!638872 (= e!365618 Unit!21565)))

(assert (=> b!638872 false))

(declare-fun b!638873 () Bool)

(declare-fun res!413615 () Bool)

(assert (=> b!638873 (=> (not res!413615) (not e!365612))))

(assert (=> b!638873 (= res!413615 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!638874 () Bool)

(declare-fun res!413617 () Bool)

(assert (=> b!638874 (=> (not res!413617) (not e!365615))))

(assert (=> b!638874 (= res!413617 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18354 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!638875 () Bool)

(declare-fun res!413622 () Bool)

(assert (=> b!638875 (=> (not res!413622) (not e!365612))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!638875 (= res!413622 (validKeyInArray!0 (select (arr!18354 a!2986) j!136)))))

(declare-fun b!638876 () Bool)

(declare-fun res!413614 () Bool)

(assert (=> b!638876 (=> (not res!413614) (not e!365612))))

(assert (=> b!638876 (= res!413614 (validKeyInArray!0 k!1786))))

(assert (= (and start!57816 res!413630) b!638871))

(assert (= (and b!638871 res!413621) b!638875))

(assert (= (and b!638875 res!413622) b!638876))

(assert (= (and b!638876 res!413614) b!638873))

(assert (= (and b!638873 res!413615) b!638859))

(assert (= (and b!638859 res!413625) b!638865))

(assert (= (and b!638865 res!413619) b!638866))

(assert (= (and b!638866 res!413628) b!638874))

(assert (= (and b!638874 res!413617) b!638863))

(assert (= (and b!638863 res!413623) b!638869))

(assert (= (and b!638869 res!413620) b!638868))

(assert (= (and b!638868 res!413618) b!638870))

(assert (= (and b!638868 c!72989) b!638872))

(assert (= (and b!638868 (not c!72989)) b!638867))

(assert (= (and b!638868 (not res!413624)) b!638860))

(assert (= (and b!638860 res!413616) b!638858))

(assert (= (and b!638858 (not res!413627)) b!638862))

(assert (= (and b!638862 res!413629) b!638861))

(assert (= (and b!638860 (not res!413626)) b!638864))

(declare-fun m!612813 () Bool)

(assert (=> b!638861 m!612813))

(assert (=> b!638861 m!612813))

(declare-fun m!612815 () Bool)

(assert (=> b!638861 m!612815))

(declare-fun m!612817 () Bool)

(assert (=> b!638868 m!612817))

(declare-fun m!612819 () Bool)

(assert (=> b!638868 m!612819))

(assert (=> b!638868 m!612813))

(declare-fun m!612821 () Bool)

(assert (=> b!638868 m!612821))

(declare-fun m!612823 () Bool)

(assert (=> b!638868 m!612823))

(declare-fun m!612825 () Bool)

(assert (=> b!638868 m!612825))

(assert (=> b!638868 m!612813))

(declare-fun m!612827 () Bool)

(assert (=> b!638868 m!612827))

(declare-fun m!612829 () Bool)

(assert (=> b!638868 m!612829))

(assert (=> b!638875 m!612813))

(assert (=> b!638875 m!612813))

(declare-fun m!612831 () Bool)

(assert (=> b!638875 m!612831))

(assert (=> b!638860 m!612813))

(assert (=> b!638860 m!612823))

(declare-fun m!612833 () Bool)

(assert (=> b!638860 m!612833))

(assert (=> b!638864 m!612813))

(declare-fun m!612835 () Bool)

(assert (=> b!638864 m!612835))

(assert (=> b!638864 m!612813))

(declare-fun m!612837 () Bool)

(assert (=> b!638864 m!612837))

(assert (=> b!638864 m!612813))

(declare-fun m!612839 () Bool)

(assert (=> b!638864 m!612839))

(declare-fun m!612841 () Bool)

(assert (=> b!638864 m!612841))

(assert (=> b!638858 m!612813))

(declare-fun m!612843 () Bool)

(assert (=> b!638869 m!612843))

(assert (=> b!638869 m!612813))

(assert (=> b!638869 m!612813))

(declare-fun m!612845 () Bool)

(assert (=> b!638869 m!612845))

(declare-fun m!612847 () Bool)

(assert (=> b!638866 m!612847))

(declare-fun m!612849 () Bool)

(assert (=> b!638876 m!612849))

(declare-fun m!612851 () Bool)

(assert (=> b!638859 m!612851))

(declare-fun m!612853 () Bool)

(assert (=> b!638865 m!612853))

(declare-fun m!612855 () Bool)

(assert (=> start!57816 m!612855))

(declare-fun m!612857 () Bool)

(assert (=> start!57816 m!612857))

(declare-fun m!612859 () Bool)

(assert (=> b!638873 m!612859))

(assert (=> b!638862 m!612813))

(assert (=> b!638862 m!612813))

(declare-fun m!612861 () Bool)

(assert (=> b!638862 m!612861))

(declare-fun m!612863 () Bool)

(assert (=> b!638874 m!612863))

(assert (=> b!638863 m!612823))

(declare-fun m!612865 () Bool)

(assert (=> b!638863 m!612865))

(push 1)


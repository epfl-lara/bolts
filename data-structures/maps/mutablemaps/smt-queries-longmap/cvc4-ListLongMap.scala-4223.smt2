; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57952 () Bool)

(assert start!57952)

(declare-fun b!640846 () Bool)

(declare-fun e!366887 () Bool)

(declare-datatypes ((SeekEntryResult!6830 0))(
  ( (MissingZero!6830 (index!29639 (_ BitVec 32))) (Found!6830 (index!29640 (_ BitVec 32))) (Intermediate!6830 (undefined!7642 Bool) (index!29641 (_ BitVec 32)) (x!58419 (_ BitVec 32))) (Undefined!6830) (MissingVacant!6830 (index!29642 (_ BitVec 32))) )
))
(declare-fun lt!296755 () SeekEntryResult!6830)

(declare-fun lt!296762 () SeekEntryResult!6830)

(assert (=> b!640846 (= e!366887 (= lt!296755 lt!296762))))

(declare-fun b!640847 () Bool)

(declare-fun e!366895 () Bool)

(declare-fun e!366892 () Bool)

(assert (=> b!640847 (= e!366895 (not e!366892))))

(declare-fun res!415222 () Bool)

(assert (=> b!640847 (=> res!415222 e!366892)))

(declare-fun lt!296766 () SeekEntryResult!6830)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!640847 (= res!415222 (not (= lt!296766 (Found!6830 index!984))))))

(declare-datatypes ((Unit!21678 0))(
  ( (Unit!21679) )
))
(declare-fun lt!296757 () Unit!21678)

(declare-fun e!366898 () Unit!21678)

(assert (=> b!640847 (= lt!296757 e!366898)))

(declare-fun c!73181 () Bool)

(assert (=> b!640847 (= c!73181 (= lt!296766 Undefined!6830))))

(declare-datatypes ((array!38335 0))(
  ( (array!38336 (arr!18383 (Array (_ BitVec 32) (_ BitVec 64))) (size!18747 (_ BitVec 32))) )
))
(declare-fun lt!296761 () array!38335)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!296756 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38335 (_ BitVec 32)) SeekEntryResult!6830)

(assert (=> b!640847 (= lt!296766 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296756 lt!296761 mask!3053))))

(assert (=> b!640847 e!366887))

(declare-fun res!415219 () Bool)

(assert (=> b!640847 (=> (not res!415219) (not e!366887))))

(declare-fun lt!296759 () (_ BitVec 32))

(assert (=> b!640847 (= res!415219 (= lt!296762 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296759 vacantSpotIndex!68 lt!296756 lt!296761 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38335)

(assert (=> b!640847 (= lt!296762 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296759 vacantSpotIndex!68 (select (arr!18383 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!640847 (= lt!296756 (select (store (arr!18383 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!296758 () Unit!21678)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38335 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21678)

(assert (=> b!640847 (= lt!296758 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296759 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!640847 (= lt!296759 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!640848 () Bool)

(declare-fun e!366889 () Bool)

(declare-fun e!366893 () Bool)

(assert (=> b!640848 (= e!366889 e!366893)))

(declare-fun res!415224 () Bool)

(assert (=> b!640848 (=> (not res!415224) (not e!366893))))

(declare-fun arrayContainsKey!0 (array!38335 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!640848 (= res!415224 (arrayContainsKey!0 lt!296761 (select (arr!18383 a!2986) j!136) j!136))))

(declare-fun b!640849 () Bool)

(declare-fun e!366897 () Bool)

(assert (=> b!640849 (= e!366897 e!366895)))

(declare-fun res!415218 () Bool)

(assert (=> b!640849 (=> (not res!415218) (not e!366895))))

(assert (=> b!640849 (= res!415218 (and (= lt!296755 (Found!6830 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18383 a!2986) index!984) (select (arr!18383 a!2986) j!136))) (not (= (select (arr!18383 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!640849 (= lt!296755 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18383 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!640850 () Bool)

(declare-fun Unit!21680 () Unit!21678)

(assert (=> b!640850 (= e!366898 Unit!21680)))

(assert (=> b!640850 false))

(declare-fun b!640851 () Bool)

(declare-fun e!366886 () Bool)

(assert (=> b!640851 (= e!366886 e!366897)))

(declare-fun res!415235 () Bool)

(assert (=> b!640851 (=> (not res!415235) (not e!366897))))

(assert (=> b!640851 (= res!415235 (= (select (store (arr!18383 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!640851 (= lt!296761 (array!38336 (store (arr!18383 a!2986) i!1108 k!1786) (size!18747 a!2986)))))

(declare-fun b!640852 () Bool)

(declare-fun res!415229 () Bool)

(assert (=> b!640852 (=> (not res!415229) (not e!366886))))

(assert (=> b!640852 (= res!415229 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18383 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!640853 () Bool)

(declare-fun Unit!21681 () Unit!21678)

(assert (=> b!640853 (= e!366898 Unit!21681)))

(declare-fun b!640854 () Bool)

(declare-fun res!415226 () Bool)

(assert (=> b!640854 (=> (not res!415226) (not e!366886))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38335 (_ BitVec 32)) Bool)

(assert (=> b!640854 (= res!415226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!640855 () Bool)

(declare-fun res!415233 () Bool)

(declare-fun e!366891 () Bool)

(assert (=> b!640855 (=> (not res!415233) (not e!366891))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!640855 (= res!415233 (validKeyInArray!0 k!1786))))

(declare-fun b!640857 () Bool)

(declare-fun res!415225 () Bool)

(assert (=> b!640857 (=> (not res!415225) (not e!366886))))

(declare-datatypes ((List!12477 0))(
  ( (Nil!12474) (Cons!12473 (h!13518 (_ BitVec 64)) (t!18713 List!12477)) )
))
(declare-fun arrayNoDuplicates!0 (array!38335 (_ BitVec 32) List!12477) Bool)

(assert (=> b!640857 (= res!415225 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12474))))

(declare-fun b!640858 () Bool)

(declare-fun e!366888 () Bool)

(assert (=> b!640858 (= e!366892 e!366888)))

(declare-fun res!415228 () Bool)

(assert (=> b!640858 (=> res!415228 e!366888)))

(declare-fun lt!296754 () (_ BitVec 64))

(assert (=> b!640858 (= res!415228 (or (not (= (select (arr!18383 a!2986) j!136) lt!296756)) (not (= (select (arr!18383 a!2986) j!136) lt!296754)) (bvsge j!136 index!984)))))

(declare-fun e!366890 () Bool)

(assert (=> b!640858 e!366890))

(declare-fun res!415220 () Bool)

(assert (=> b!640858 (=> (not res!415220) (not e!366890))))

(assert (=> b!640858 (= res!415220 (= lt!296754 (select (arr!18383 a!2986) j!136)))))

(assert (=> b!640858 (= lt!296754 (select (store (arr!18383 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!640859 () Bool)

(declare-fun res!415230 () Bool)

(assert (=> b!640859 (=> (not res!415230) (not e!366891))))

(assert (=> b!640859 (= res!415230 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!415234 () Bool)

(assert (=> start!57952 (=> (not res!415234) (not e!366891))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57952 (= res!415234 (validMask!0 mask!3053))))

(assert (=> start!57952 e!366891))

(assert (=> start!57952 true))

(declare-fun array_inv!14157 (array!38335) Bool)

(assert (=> start!57952 (array_inv!14157 a!2986)))

(declare-fun b!640856 () Bool)

(declare-fun e!366894 () Bool)

(declare-fun noDuplicate!402 (List!12477) Bool)

(assert (=> b!640856 (= e!366894 (noDuplicate!402 Nil!12474))))

(declare-fun b!640860 () Bool)

(assert (=> b!640860 (= e!366890 e!366889)))

(declare-fun res!415227 () Bool)

(assert (=> b!640860 (=> res!415227 e!366889)))

(assert (=> b!640860 (= res!415227 (or (not (= (select (arr!18383 a!2986) j!136) lt!296756)) (not (= (select (arr!18383 a!2986) j!136) lt!296754)) (bvsge j!136 index!984)))))

(declare-fun b!640861 () Bool)

(assert (=> b!640861 (= e!366891 e!366886)))

(declare-fun res!415221 () Bool)

(assert (=> b!640861 (=> (not res!415221) (not e!366886))))

(declare-fun lt!296764 () SeekEntryResult!6830)

(assert (=> b!640861 (= res!415221 (or (= lt!296764 (MissingZero!6830 i!1108)) (= lt!296764 (MissingVacant!6830 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38335 (_ BitVec 32)) SeekEntryResult!6830)

(assert (=> b!640861 (= lt!296764 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!640862 () Bool)

(assert (=> b!640862 (= e!366888 e!366894)))

(declare-fun res!415232 () Bool)

(assert (=> b!640862 (=> res!415232 e!366894)))

(assert (=> b!640862 (= res!415232 (or (bvsge (size!18747 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18747 a!2986))))))

(assert (=> b!640862 (arrayNoDuplicates!0 lt!296761 j!136 Nil!12474)))

(declare-fun lt!296760 () Unit!21678)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38335 (_ BitVec 32) (_ BitVec 32)) Unit!21678)

(assert (=> b!640862 (= lt!296760 (lemmaNoDuplicateFromThenFromBigger!0 lt!296761 #b00000000000000000000000000000000 j!136))))

(assert (=> b!640862 (arrayNoDuplicates!0 lt!296761 #b00000000000000000000000000000000 Nil!12474)))

(declare-fun lt!296765 () Unit!21678)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38335 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12477) Unit!21678)

(assert (=> b!640862 (= lt!296765 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12474))))

(assert (=> b!640862 (arrayContainsKey!0 lt!296761 (select (arr!18383 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296763 () Unit!21678)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38335 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21678)

(assert (=> b!640862 (= lt!296763 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296761 (select (arr!18383 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!640863 () Bool)

(declare-fun res!415231 () Bool)

(assert (=> b!640863 (=> (not res!415231) (not e!366891))))

(assert (=> b!640863 (= res!415231 (validKeyInArray!0 (select (arr!18383 a!2986) j!136)))))

(declare-fun b!640864 () Bool)

(assert (=> b!640864 (= e!366893 (arrayContainsKey!0 lt!296761 (select (arr!18383 a!2986) j!136) index!984))))

(declare-fun b!640865 () Bool)

(declare-fun res!415223 () Bool)

(assert (=> b!640865 (=> (not res!415223) (not e!366891))))

(assert (=> b!640865 (= res!415223 (and (= (size!18747 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18747 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18747 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!57952 res!415234) b!640865))

(assert (= (and b!640865 res!415223) b!640863))

(assert (= (and b!640863 res!415231) b!640855))

(assert (= (and b!640855 res!415233) b!640859))

(assert (= (and b!640859 res!415230) b!640861))

(assert (= (and b!640861 res!415221) b!640854))

(assert (= (and b!640854 res!415226) b!640857))

(assert (= (and b!640857 res!415225) b!640852))

(assert (= (and b!640852 res!415229) b!640851))

(assert (= (and b!640851 res!415235) b!640849))

(assert (= (and b!640849 res!415218) b!640847))

(assert (= (and b!640847 res!415219) b!640846))

(assert (= (and b!640847 c!73181) b!640850))

(assert (= (and b!640847 (not c!73181)) b!640853))

(assert (= (and b!640847 (not res!415222)) b!640858))

(assert (= (and b!640858 res!415220) b!640860))

(assert (= (and b!640860 (not res!415227)) b!640848))

(assert (= (and b!640848 res!415224) b!640864))

(assert (= (and b!640858 (not res!415228)) b!640862))

(assert (= (and b!640862 (not res!415232)) b!640856))

(declare-fun m!614757 () Bool)

(assert (=> b!640859 m!614757))

(declare-fun m!614759 () Bool)

(assert (=> b!640863 m!614759))

(assert (=> b!640863 m!614759))

(declare-fun m!614761 () Bool)

(assert (=> b!640863 m!614761))

(declare-fun m!614763 () Bool)

(assert (=> b!640849 m!614763))

(assert (=> b!640849 m!614759))

(assert (=> b!640849 m!614759))

(declare-fun m!614765 () Bool)

(assert (=> b!640849 m!614765))

(declare-fun m!614767 () Bool)

(assert (=> b!640851 m!614767))

(declare-fun m!614769 () Bool)

(assert (=> b!640851 m!614769))

(declare-fun m!614771 () Bool)

(assert (=> b!640861 m!614771))

(assert (=> b!640860 m!614759))

(assert (=> b!640848 m!614759))

(assert (=> b!640848 m!614759))

(declare-fun m!614773 () Bool)

(assert (=> b!640848 m!614773))

(declare-fun m!614775 () Bool)

(assert (=> start!57952 m!614775))

(declare-fun m!614777 () Bool)

(assert (=> start!57952 m!614777))

(declare-fun m!614779 () Bool)

(assert (=> b!640862 m!614779))

(assert (=> b!640862 m!614759))

(assert (=> b!640862 m!614759))

(declare-fun m!614781 () Bool)

(assert (=> b!640862 m!614781))

(declare-fun m!614783 () Bool)

(assert (=> b!640862 m!614783))

(declare-fun m!614785 () Bool)

(assert (=> b!640862 m!614785))

(assert (=> b!640862 m!614759))

(declare-fun m!614787 () Bool)

(assert (=> b!640862 m!614787))

(declare-fun m!614789 () Bool)

(assert (=> b!640862 m!614789))

(declare-fun m!614791 () Bool)

(assert (=> b!640857 m!614791))

(declare-fun m!614793 () Bool)

(assert (=> b!640855 m!614793))

(declare-fun m!614795 () Bool)

(assert (=> b!640856 m!614795))

(declare-fun m!614797 () Bool)

(assert (=> b!640854 m!614797))

(declare-fun m!614799 () Bool)

(assert (=> b!640852 m!614799))

(declare-fun m!614801 () Bool)

(assert (=> b!640847 m!614801))

(declare-fun m!614803 () Bool)

(assert (=> b!640847 m!614803))

(assert (=> b!640847 m!614759))

(assert (=> b!640847 m!614767))

(declare-fun m!614805 () Bool)

(assert (=> b!640847 m!614805))

(assert (=> b!640847 m!614759))

(declare-fun m!614807 () Bool)

(assert (=> b!640847 m!614807))

(declare-fun m!614809 () Bool)

(assert (=> b!640847 m!614809))

(declare-fun m!614811 () Bool)

(assert (=> b!640847 m!614811))

(assert (=> b!640858 m!614759))

(assert (=> b!640858 m!614767))

(declare-fun m!614813 () Bool)

(assert (=> b!640858 m!614813))

(assert (=> b!640864 m!614759))

(assert (=> b!640864 m!614759))

(declare-fun m!614815 () Bool)

(assert (=> b!640864 m!614815))

(push 1)

(assert (not b!640849))

(assert (not b!640847))

(assert (not b!640856))

(assert (not b!640854))

(assert (not b!640857))

(assert (not b!640855))

(assert (not start!57952))

(assert (not b!640861))

(assert (not b!640863))

(assert (not b!640862))

(assert (not b!640848))

(assert (not b!640864))

(assert (not b!640859))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!90383 () Bool)

(declare-fun res!415267 () Bool)

(declare-fun e!366946 () Bool)

(assert (=> d!90383 (=> res!415267 e!366946)))

(assert (=> d!90383 (= res!415267 (= (select (arr!18383 lt!296761) index!984) (select (arr!18383 a!2986) j!136)))))

(assert (=> d!90383 (= (arrayContainsKey!0 lt!296761 (select (arr!18383 a!2986) j!136) index!984) e!366946)))

(declare-fun b!640929 () Bool)

(declare-fun e!366947 () Bool)

(assert (=> b!640929 (= e!366946 e!366947)))

(declare-fun res!415268 () Bool)

(assert (=> b!640929 (=> (not res!415268) (not e!366947))))

(assert (=> b!640929 (= res!415268 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18747 lt!296761)))))

(declare-fun b!640930 () Bool)

(assert (=> b!640930 (= e!366947 (arrayContainsKey!0 lt!296761 (select (arr!18383 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!90383 (not res!415267)) b!640929))

(assert (= (and b!640929 res!415268) b!640930))

(declare-fun m!614871 () Bool)

(assert (=> d!90383 m!614871))

(assert (=> b!640930 m!614759))

(declare-fun m!614873 () Bool)

(assert (=> b!640930 m!614873))

(assert (=> b!640864 d!90383))

(declare-fun d!90385 () Bool)

(assert (=> d!90385 (= (validKeyInArray!0 (select (arr!18383 a!2986) j!136)) (and (not (= (select (arr!18383 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18383 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!640863 d!90385))

(declare-fun d!90387 () Bool)

(assert (=> d!90387 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!57952 d!90387))

(declare-fun d!90395 () Bool)

(assert (=> d!90395 (= (array_inv!14157 a!2986) (bvsge (size!18747 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!57952 d!90395))

(declare-fun bm!33516 () Bool)

(declare-fun call!33519 () Bool)

(declare-fun c!73221 () Bool)

(assert (=> bm!33516 (= call!33519 (arrayNoDuplicates!0 lt!296761 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73221 (Cons!12473 (select (arr!18383 lt!296761) #b00000000000000000000000000000000) Nil!12474) Nil!12474)))))

(declare-fun b!640983 () Bool)

(declare-fun e!366978 () Bool)

(declare-fun e!366980 () Bool)

(assert (=> b!640983 (= e!366978 e!366980)))

(assert (=> b!640983 (= c!73221 (validKeyInArray!0 (select (arr!18383 lt!296761) #b00000000000000000000000000000000)))))

(declare-fun b!640984 () Bool)

(declare-fun e!366979 () Bool)

(declare-fun contains!3130 (List!12477 (_ BitVec 64)) Bool)

(assert (=> b!640984 (= e!366979 (contains!3130 Nil!12474 (select (arr!18383 lt!296761) #b00000000000000000000000000000000)))))

(declare-fun b!640985 () Bool)

(declare-fun e!366977 () Bool)

(assert (=> b!640985 (= e!366977 e!366978)))

(declare-fun res!415277 () Bool)

(assert (=> b!640985 (=> (not res!415277) (not e!366978))))

(assert (=> b!640985 (= res!415277 (not e!366979))))

(declare-fun res!415275 () Bool)

(assert (=> b!640985 (=> (not res!415275) (not e!366979))))

(assert (=> b!640985 (= res!415275 (validKeyInArray!0 (select (arr!18383 lt!296761) #b00000000000000000000000000000000)))))

(declare-fun b!640986 () Bool)

(assert (=> b!640986 (= e!366980 call!33519)))

(declare-fun b!640987 () Bool)

(assert (=> b!640987 (= e!366980 call!33519)))

(declare-fun d!90397 () Bool)

(declare-fun res!415276 () Bool)

(assert (=> d!90397 (=> res!415276 e!366977)))

(assert (=> d!90397 (= res!415276 (bvsge #b00000000000000000000000000000000 (size!18747 lt!296761)))))

(assert (=> d!90397 (= (arrayNoDuplicates!0 lt!296761 #b00000000000000000000000000000000 Nil!12474) e!366977)))

(assert (= (and d!90397 (not res!415276)) b!640985))

(assert (= (and b!640985 res!415275) b!640984))

(assert (= (and b!640985 res!415277) b!640983))

(assert (= (and b!640983 c!73221) b!640987))

(assert (= (and b!640983 (not c!73221)) b!640986))

(assert (= (or b!640987 b!640986) bm!33516))

(declare-fun m!614901 () Bool)

(assert (=> bm!33516 m!614901))

(declare-fun m!614903 () Bool)

(assert (=> bm!33516 m!614903))

(assert (=> b!640983 m!614901))

(assert (=> b!640983 m!614901))

(declare-fun m!614905 () Bool)

(assert (=> b!640983 m!614905))

(assert (=> b!640984 m!614901))

(assert (=> b!640984 m!614901))

(declare-fun m!614907 () Bool)

(assert (=> b!640984 m!614907))

(assert (=> b!640985 m!614901))

(assert (=> b!640985 m!614901))

(assert (=> b!640985 m!614905))

(assert (=> b!640862 d!90397))

(declare-fun d!90401 () Bool)

(declare-fun res!415278 () Bool)

(declare-fun e!366981 () Bool)

(assert (=> d!90401 (=> res!415278 e!366981)))

(assert (=> d!90401 (= res!415278 (= (select (arr!18383 lt!296761) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18383 a!2986) j!136)))))

(assert (=> d!90401 (= (arrayContainsKey!0 lt!296761 (select (arr!18383 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!366981)))

(declare-fun b!640988 () Bool)

(declare-fun e!366982 () Bool)

(assert (=> b!640988 (= e!366981 e!366982)))

(declare-fun res!415279 () Bool)

(assert (=> b!640988 (=> (not res!415279) (not e!366982))))

(assert (=> b!640988 (= res!415279 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18747 lt!296761)))))

(declare-fun b!640989 () Bool)

(assert (=> b!640989 (= e!366982 (arrayContainsKey!0 lt!296761 (select (arr!18383 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90401 (not res!415278)) b!640988))

(assert (= (and b!640988 res!415279) b!640989))

(declare-fun m!614909 () Bool)

(assert (=> d!90401 m!614909))

(assert (=> b!640989 m!614759))

(declare-fun m!614911 () Bool)

(assert (=> b!640989 m!614911))

(assert (=> b!640862 d!90401))

(declare-fun bm!33517 () Bool)

(declare-fun c!73222 () Bool)

(declare-fun call!33520 () Bool)

(assert (=> bm!33517 (= call!33520 (arrayNoDuplicates!0 lt!296761 (bvadd j!136 #b00000000000000000000000000000001) (ite c!73222 (Cons!12473 (select (arr!18383 lt!296761) j!136) Nil!12474) Nil!12474)))))

(declare-fun b!640990 () Bool)

(declare-fun e!366984 () Bool)

(declare-fun e!366986 () Bool)

(assert (=> b!640990 (= e!366984 e!366986)))

(assert (=> b!640990 (= c!73222 (validKeyInArray!0 (select (arr!18383 lt!296761) j!136)))))

(declare-fun b!640991 () Bool)

(declare-fun e!366985 () Bool)

(assert (=> b!640991 (= e!366985 (contains!3130 Nil!12474 (select (arr!18383 lt!296761) j!136)))))

(declare-fun b!640992 () Bool)

(declare-fun e!366983 () Bool)

(assert (=> b!640992 (= e!366983 e!366984)))

(declare-fun res!415282 () Bool)

(assert (=> b!640992 (=> (not res!415282) (not e!366984))))

(assert (=> b!640992 (= res!415282 (not e!366985))))

(declare-fun res!415280 () Bool)

(assert (=> b!640992 (=> (not res!415280) (not e!366985))))

(assert (=> b!640992 (= res!415280 (validKeyInArray!0 (select (arr!18383 lt!296761) j!136)))))

(declare-fun b!640993 () Bool)

(assert (=> b!640993 (= e!366986 call!33520)))

(declare-fun b!640994 () Bool)

(assert (=> b!640994 (= e!366986 call!33520)))

(declare-fun d!90403 () Bool)

(declare-fun res!415281 () Bool)

(assert (=> d!90403 (=> res!415281 e!366983)))

(assert (=> d!90403 (= res!415281 (bvsge j!136 (size!18747 lt!296761)))))

(assert (=> d!90403 (= (arrayNoDuplicates!0 lt!296761 j!136 Nil!12474) e!366983)))

(assert (= (and d!90403 (not res!415281)) b!640992))

(assert (= (and b!640992 res!415280) b!640991))

(assert (= (and b!640992 res!415282) b!640990))

(assert (= (and b!640990 c!73222) b!640994))

(assert (= (and b!640990 (not c!73222)) b!640993))

(assert (= (or b!640994 b!640993) bm!33517))

(declare-fun m!614913 () Bool)

(assert (=> bm!33517 m!614913))

(declare-fun m!614915 () Bool)

(assert (=> bm!33517 m!614915))

(assert (=> b!640990 m!614913))

(assert (=> b!640990 m!614913))

(declare-fun m!614917 () Bool)

(assert (=> b!640990 m!614917))

(assert (=> b!640991 m!614913))

(assert (=> b!640991 m!614913))

(declare-fun m!614919 () Bool)

(assert (=> b!640991 m!614919))

(assert (=> b!640992 m!614913))

(assert (=> b!640992 m!614913))

(assert (=> b!640992 m!614917))

(assert (=> b!640862 d!90403))

(declare-fun d!90405 () Bool)

(assert (=> d!90405 (arrayContainsKey!0 lt!296761 (select (arr!18383 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296813 () Unit!21678)

(declare-fun choose!114 (array!38335 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21678)

(assert (=> d!90405 (= lt!296813 (choose!114 lt!296761 (select (arr!18383 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!90405 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!90405 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296761 (select (arr!18383 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!296813)))

(declare-fun bs!19193 () Bool)

(assert (= bs!19193 d!90405))

(assert (=> bs!19193 m!614759))

(assert (=> bs!19193 m!614787))

(assert (=> bs!19193 m!614759))

(declare-fun m!614921 () Bool)

(assert (=> bs!19193 m!614921))

(assert (=> b!640862 d!90405))

(declare-fun d!90413 () Bool)

(declare-fun e!367008 () Bool)

(assert (=> d!90413 e!367008))

(declare-fun res!415303 () Bool)

(assert (=> d!90413 (=> (not res!415303) (not e!367008))))

(assert (=> d!90413 (= res!415303 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18747 a!2986))))))

(declare-fun lt!296819 () Unit!21678)

(declare-fun choose!41 (array!38335 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12477) Unit!21678)

(assert (=> d!90413 (= lt!296819 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12474))))

(assert (=> d!90413 (bvslt (size!18747 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!90413 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12474) lt!296819)))

(declare-fun b!641017 () Bool)

(assert (=> b!641017 (= e!367008 (arrayNoDuplicates!0 (array!38336 (store (arr!18383 a!2986) i!1108 k!1786) (size!18747 a!2986)) #b00000000000000000000000000000000 Nil!12474))))

(assert (= (and d!90413 res!415303) b!641017))

(declare-fun m!614943 () Bool)

(assert (=> d!90413 m!614943))

(assert (=> b!641017 m!614767))

(declare-fun m!614945 () Bool)

(assert (=> b!641017 m!614945))

(assert (=> b!640862 d!90413))

(declare-fun d!90429 () Bool)

(assert (=> d!90429 (arrayNoDuplicates!0 lt!296761 j!136 Nil!12474)))

(declare-fun lt!296828 () Unit!21678)

(declare-fun choose!39 (array!38335 (_ BitVec 32) (_ BitVec 32)) Unit!21678)

(assert (=> d!90429 (= lt!296828 (choose!39 lt!296761 #b00000000000000000000000000000000 j!136))))

(assert (=> d!90429 (bvslt (size!18747 lt!296761) #b01111111111111111111111111111111)))

(assert (=> d!90429 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!296761 #b00000000000000000000000000000000 j!136) lt!296828)))


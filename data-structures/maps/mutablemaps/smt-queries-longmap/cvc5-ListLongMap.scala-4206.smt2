; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57618 () Bool)

(assert start!57618)

(declare-fun b!636634 () Bool)

(declare-fun res!411949 () Bool)

(declare-fun e!364254 () Bool)

(assert (=> b!636634 (=> (not res!411949) (not e!364254))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38220 0))(
  ( (array!38221 (arr!18330 (Array (_ BitVec 32) (_ BitVec 64))) (size!18694 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38220)

(assert (=> b!636634 (= res!411949 (and (= (size!18694 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18694 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18694 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!636635 () Bool)

(declare-fun res!411941 () Bool)

(declare-fun e!364250 () Bool)

(assert (=> b!636635 (=> (not res!411941) (not e!364250))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38220 (_ BitVec 32)) Bool)

(assert (=> b!636635 (= res!411941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!636636 () Bool)

(declare-fun e!364255 () Bool)

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((List!12424 0))(
  ( (Nil!12421) (Cons!12420 (h!13465 (_ BitVec 64)) (t!18660 List!12424)) )
))
(declare-fun contains!3107 (List!12424 (_ BitVec 64)) Bool)

(assert (=> b!636636 (= e!364255 (not (contains!3107 Nil!12421 k!1786)))))

(declare-fun b!636637 () Bool)

(declare-fun e!364252 () Bool)

(assert (=> b!636637 (= e!364252 e!364255)))

(declare-fun res!411953 () Bool)

(assert (=> b!636637 (=> res!411953 e!364255)))

(assert (=> b!636637 (= res!411953 (or (bvsge (size!18694 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18694 a!2986))))))

(declare-fun lt!294412 () array!38220)

(declare-fun arrayContainsKey!0 (array!38220 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!636637 (arrayContainsKey!0 lt!294412 (select (arr!18330 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((Unit!21466 0))(
  ( (Unit!21467) )
))
(declare-fun lt!294409 () Unit!21466)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38220 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21466)

(assert (=> b!636637 (= lt!294409 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294412 (select (arr!18330 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!636638 () Bool)

(declare-fun e!364251 () Bool)

(declare-fun e!364259 () Bool)

(assert (=> b!636638 (= e!364251 (not e!364259))))

(declare-fun res!411939 () Bool)

(assert (=> b!636638 (=> res!411939 e!364259)))

(declare-datatypes ((SeekEntryResult!6777 0))(
  ( (MissingZero!6777 (index!29418 (_ BitVec 32))) (Found!6777 (index!29419 (_ BitVec 32))) (Intermediate!6777 (undefined!7589 Bool) (index!29420 (_ BitVec 32)) (x!58203 (_ BitVec 32))) (Undefined!6777) (MissingVacant!6777 (index!29421 (_ BitVec 32))) )
))
(declare-fun lt!294414 () SeekEntryResult!6777)

(assert (=> b!636638 (= res!411939 (not (= lt!294414 (Found!6777 index!984))))))

(declare-fun lt!294408 () Unit!21466)

(declare-fun e!364249 () Unit!21466)

(assert (=> b!636638 (= lt!294408 e!364249)))

(declare-fun c!72716 () Bool)

(assert (=> b!636638 (= c!72716 (= lt!294414 Undefined!6777))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!294415 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38220 (_ BitVec 32)) SeekEntryResult!6777)

(assert (=> b!636638 (= lt!294414 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294415 lt!294412 mask!3053))))

(declare-fun e!364258 () Bool)

(assert (=> b!636638 e!364258))

(declare-fun res!411947 () Bool)

(assert (=> b!636638 (=> (not res!411947) (not e!364258))))

(declare-fun lt!294410 () SeekEntryResult!6777)

(declare-fun lt!294411 () (_ BitVec 32))

(assert (=> b!636638 (= res!411947 (= lt!294410 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294411 vacantSpotIndex!68 lt!294415 lt!294412 mask!3053)))))

(assert (=> b!636638 (= lt!294410 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294411 vacantSpotIndex!68 (select (arr!18330 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!636638 (= lt!294415 (select (store (arr!18330 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!294417 () Unit!21466)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38220 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21466)

(assert (=> b!636638 (= lt!294417 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294411 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!636638 (= lt!294411 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!636639 () Bool)

(declare-fun res!411952 () Bool)

(assert (=> b!636639 (=> res!411952 e!364255)))

(assert (=> b!636639 (= res!411952 (contains!3107 Nil!12421 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!636640 () Bool)

(assert (=> b!636640 (= e!364254 e!364250)))

(declare-fun res!411954 () Bool)

(assert (=> b!636640 (=> (not res!411954) (not e!364250))))

(declare-fun lt!294407 () SeekEntryResult!6777)

(assert (=> b!636640 (= res!411954 (or (= lt!294407 (MissingZero!6777 i!1108)) (= lt!294407 (MissingVacant!6777 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38220 (_ BitVec 32)) SeekEntryResult!6777)

(assert (=> b!636640 (= lt!294407 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!636641 () Bool)

(declare-fun res!411940 () Bool)

(assert (=> b!636641 (=> res!411940 e!364255)))

(declare-fun noDuplicate!382 (List!12424) Bool)

(assert (=> b!636641 (= res!411940 (not (noDuplicate!382 Nil!12421)))))

(declare-fun b!636642 () Bool)

(declare-fun Unit!21468 () Unit!21466)

(assert (=> b!636642 (= e!364249 Unit!21468)))

(declare-fun b!636643 () Bool)

(declare-fun e!364261 () Bool)

(declare-fun e!364260 () Bool)

(assert (=> b!636643 (= e!364261 e!364260)))

(declare-fun res!411938 () Bool)

(assert (=> b!636643 (=> res!411938 e!364260)))

(declare-fun lt!294416 () (_ BitVec 64))

(assert (=> b!636643 (= res!411938 (or (not (= (select (arr!18330 a!2986) j!136) lt!294415)) (not (= (select (arr!18330 a!2986) j!136) lt!294416)) (bvsge j!136 index!984)))))

(declare-fun b!636644 () Bool)

(declare-fun res!411955 () Bool)

(assert (=> b!636644 (=> (not res!411955) (not e!364250))))

(assert (=> b!636644 (= res!411955 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18330 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!636646 () Bool)

(declare-fun res!411936 () Bool)

(assert (=> b!636646 (=> (not res!411936) (not e!364254))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!636646 (= res!411936 (validKeyInArray!0 (select (arr!18330 a!2986) j!136)))))

(declare-fun b!636647 () Bool)

(declare-fun Unit!21469 () Unit!21466)

(assert (=> b!636647 (= e!364249 Unit!21469)))

(assert (=> b!636647 false))

(declare-fun b!636648 () Bool)

(declare-fun res!411943 () Bool)

(assert (=> b!636648 (=> res!411943 e!364255)))

(assert (=> b!636648 (= res!411943 (contains!3107 Nil!12421 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!636649 () Bool)

(declare-fun e!364253 () Bool)

(assert (=> b!636649 (= e!364253 e!364251)))

(declare-fun res!411945 () Bool)

(assert (=> b!636649 (=> (not res!411945) (not e!364251))))

(declare-fun lt!294413 () SeekEntryResult!6777)

(assert (=> b!636649 (= res!411945 (and (= lt!294413 (Found!6777 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18330 a!2986) index!984) (select (arr!18330 a!2986) j!136))) (not (= (select (arr!18330 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!636649 (= lt!294413 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18330 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!636650 () Bool)

(assert (=> b!636650 (= e!364258 (= lt!294413 lt!294410))))

(declare-fun b!636651 () Bool)

(declare-fun res!411937 () Bool)

(assert (=> b!636651 (=> (not res!411937) (not e!364254))))

(assert (=> b!636651 (= res!411937 (validKeyInArray!0 k!1786))))

(declare-fun b!636652 () Bool)

(declare-fun e!364257 () Bool)

(assert (=> b!636652 (= e!364260 e!364257)))

(declare-fun res!411942 () Bool)

(assert (=> b!636652 (=> (not res!411942) (not e!364257))))

(assert (=> b!636652 (= res!411942 (arrayContainsKey!0 lt!294412 (select (arr!18330 a!2986) j!136) j!136))))

(declare-fun b!636653 () Bool)

(declare-fun res!411956 () Bool)

(assert (=> b!636653 (=> (not res!411956) (not e!364250))))

(declare-fun arrayNoDuplicates!0 (array!38220 (_ BitVec 32) List!12424) Bool)

(assert (=> b!636653 (= res!411956 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12421))))

(declare-fun b!636654 () Bool)

(assert (=> b!636654 (= e!364259 e!364252)))

(declare-fun res!411948 () Bool)

(assert (=> b!636654 (=> res!411948 e!364252)))

(assert (=> b!636654 (= res!411948 (or (not (= (select (arr!18330 a!2986) j!136) lt!294415)) (not (= (select (arr!18330 a!2986) j!136) lt!294416)) (bvsge j!136 index!984)))))

(assert (=> b!636654 e!364261))

(declare-fun res!411950 () Bool)

(assert (=> b!636654 (=> (not res!411950) (not e!364261))))

(assert (=> b!636654 (= res!411950 (= lt!294416 (select (arr!18330 a!2986) j!136)))))

(assert (=> b!636654 (= lt!294416 (select (store (arr!18330 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!636655 () Bool)

(assert (=> b!636655 (= e!364257 (arrayContainsKey!0 lt!294412 (select (arr!18330 a!2986) j!136) index!984))))

(declare-fun b!636656 () Bool)

(assert (=> b!636656 (= e!364250 e!364253)))

(declare-fun res!411946 () Bool)

(assert (=> b!636656 (=> (not res!411946) (not e!364253))))

(assert (=> b!636656 (= res!411946 (= (select (store (arr!18330 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!636656 (= lt!294412 (array!38221 (store (arr!18330 a!2986) i!1108 k!1786) (size!18694 a!2986)))))

(declare-fun b!636645 () Bool)

(declare-fun res!411944 () Bool)

(assert (=> b!636645 (=> (not res!411944) (not e!364254))))

(assert (=> b!636645 (= res!411944 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!411951 () Bool)

(assert (=> start!57618 (=> (not res!411951) (not e!364254))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57618 (= res!411951 (validMask!0 mask!3053))))

(assert (=> start!57618 e!364254))

(assert (=> start!57618 true))

(declare-fun array_inv!14104 (array!38220) Bool)

(assert (=> start!57618 (array_inv!14104 a!2986)))

(assert (= (and start!57618 res!411951) b!636634))

(assert (= (and b!636634 res!411949) b!636646))

(assert (= (and b!636646 res!411936) b!636651))

(assert (= (and b!636651 res!411937) b!636645))

(assert (= (and b!636645 res!411944) b!636640))

(assert (= (and b!636640 res!411954) b!636635))

(assert (= (and b!636635 res!411941) b!636653))

(assert (= (and b!636653 res!411956) b!636644))

(assert (= (and b!636644 res!411955) b!636656))

(assert (= (and b!636656 res!411946) b!636649))

(assert (= (and b!636649 res!411945) b!636638))

(assert (= (and b!636638 res!411947) b!636650))

(assert (= (and b!636638 c!72716) b!636647))

(assert (= (and b!636638 (not c!72716)) b!636642))

(assert (= (and b!636638 (not res!411939)) b!636654))

(assert (= (and b!636654 res!411950) b!636643))

(assert (= (and b!636643 (not res!411938)) b!636652))

(assert (= (and b!636652 res!411942) b!636655))

(assert (= (and b!636654 (not res!411948)) b!636637))

(assert (= (and b!636637 (not res!411953)) b!636641))

(assert (= (and b!636641 (not res!411940)) b!636639))

(assert (= (and b!636639 (not res!411952)) b!636648))

(assert (= (and b!636648 (not res!411943)) b!636636))

(declare-fun m!610863 () Bool)

(assert (=> b!636637 m!610863))

(assert (=> b!636637 m!610863))

(declare-fun m!610865 () Bool)

(assert (=> b!636637 m!610865))

(assert (=> b!636637 m!610863))

(declare-fun m!610867 () Bool)

(assert (=> b!636637 m!610867))

(declare-fun m!610869 () Bool)

(assert (=> b!636645 m!610869))

(declare-fun m!610871 () Bool)

(assert (=> b!636635 m!610871))

(declare-fun m!610873 () Bool)

(assert (=> b!636648 m!610873))

(declare-fun m!610875 () Bool)

(assert (=> b!636653 m!610875))

(declare-fun m!610877 () Bool)

(assert (=> b!636639 m!610877))

(assert (=> b!636655 m!610863))

(assert (=> b!636655 m!610863))

(declare-fun m!610879 () Bool)

(assert (=> b!636655 m!610879))

(assert (=> b!636654 m!610863))

(declare-fun m!610881 () Bool)

(assert (=> b!636654 m!610881))

(declare-fun m!610883 () Bool)

(assert (=> b!636654 m!610883))

(assert (=> b!636656 m!610881))

(declare-fun m!610885 () Bool)

(assert (=> b!636656 m!610885))

(declare-fun m!610887 () Bool)

(assert (=> b!636640 m!610887))

(declare-fun m!610889 () Bool)

(assert (=> b!636641 m!610889))

(declare-fun m!610891 () Bool)

(assert (=> start!57618 m!610891))

(declare-fun m!610893 () Bool)

(assert (=> start!57618 m!610893))

(declare-fun m!610895 () Bool)

(assert (=> b!636636 m!610895))

(declare-fun m!610897 () Bool)

(assert (=> b!636649 m!610897))

(assert (=> b!636649 m!610863))

(assert (=> b!636649 m!610863))

(declare-fun m!610899 () Bool)

(assert (=> b!636649 m!610899))

(declare-fun m!610901 () Bool)

(assert (=> b!636651 m!610901))

(assert (=> b!636646 m!610863))

(assert (=> b!636646 m!610863))

(declare-fun m!610903 () Bool)

(assert (=> b!636646 m!610903))

(declare-fun m!610905 () Bool)

(assert (=> b!636638 m!610905))

(declare-fun m!610907 () Bool)

(assert (=> b!636638 m!610907))

(assert (=> b!636638 m!610863))

(declare-fun m!610909 () Bool)

(assert (=> b!636638 m!610909))

(assert (=> b!636638 m!610881))

(assert (=> b!636638 m!610863))

(declare-fun m!610911 () Bool)

(assert (=> b!636638 m!610911))

(declare-fun m!610913 () Bool)

(assert (=> b!636638 m!610913))

(declare-fun m!610915 () Bool)

(assert (=> b!636638 m!610915))

(assert (=> b!636652 m!610863))

(assert (=> b!636652 m!610863))

(declare-fun m!610917 () Bool)

(assert (=> b!636652 m!610917))

(assert (=> b!636643 m!610863))

(declare-fun m!610919 () Bool)

(assert (=> b!636644 m!610919))

(push 1)

(assert (not b!636646))

(assert (not b!636640))

(assert (not b!636645))

(assert (not start!57618))

(assert (not b!636635))

(assert (not b!636653))

(assert (not b!636637))

(assert (not b!636636))

(assert (not b!636652))

(assert (not b!636641))

(assert (not b!636655))

(assert (not b!636639))

(assert (not b!636649))

(assert (not b!636651))

(assert (not b!636648))

(assert (not b!636638))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!89971 () Bool)

(declare-fun lt!294520 () SeekEntryResult!6777)

(assert (=> d!89971 (and (or (is-Undefined!6777 lt!294520) (not (is-Found!6777 lt!294520)) (and (bvsge (index!29419 lt!294520) #b00000000000000000000000000000000) (bvslt (index!29419 lt!294520) (size!18694 a!2986)))) (or (is-Undefined!6777 lt!294520) (is-Found!6777 lt!294520) (not (is-MissingVacant!6777 lt!294520)) (not (= (index!29421 lt!294520) vacantSpotIndex!68)) (and (bvsge (index!29421 lt!294520) #b00000000000000000000000000000000) (bvslt (index!29421 lt!294520) (size!18694 a!2986)))) (or (is-Undefined!6777 lt!294520) (ite (is-Found!6777 lt!294520) (= (select (arr!18330 a!2986) (index!29419 lt!294520)) (select (arr!18330 a!2986) j!136)) (and (is-MissingVacant!6777 lt!294520) (= (index!29421 lt!294520) vacantSpotIndex!68) (= (select (arr!18330 a!2986) (index!29421 lt!294520)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364424 () SeekEntryResult!6777)

(assert (=> d!89971 (= lt!294520 e!364424)))

(declare-fun c!72747 () Bool)

(assert (=> d!89971 (= c!72747 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!294521 () (_ BitVec 64))

(assert (=> d!89971 (= lt!294521 (select (arr!18330 a!2986) index!984))))

(assert (=> d!89971 (validMask!0 mask!3053)))

(assert (=> d!89971 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18330 a!2986) j!136) a!2986 mask!3053) lt!294520)))

(declare-fun b!636900 () Bool)

(declare-fun e!364422 () SeekEntryResult!6777)

(assert (=> b!636900 (= e!364422 (Found!6777 index!984))))

(declare-fun b!636901 () Bool)

(declare-fun c!72746 () Bool)

(assert (=> b!636901 (= c!72746 (= lt!294521 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!364423 () SeekEntryResult!6777)

(assert (=> b!636901 (= e!364422 e!364423)))

(declare-fun b!636902 () Bool)

(assert (=> b!636902 (= e!364423 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18330 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!636903 () Bool)

(assert (=> b!636903 (= e!364423 (MissingVacant!6777 vacantSpotIndex!68))))

(declare-fun b!636904 () Bool)

(assert (=> b!636904 (= e!364424 Undefined!6777)))

(declare-fun b!636905 () Bool)

(assert (=> b!636905 (= e!364424 e!364422)))

(declare-fun c!72748 () Bool)

(assert (=> b!636905 (= c!72748 (= lt!294521 (select (arr!18330 a!2986) j!136)))))

(assert (= (and d!89971 c!72747) b!636904))

(assert (= (and d!89971 (not c!72747)) b!636905))

(assert (= (and b!636905 c!72748) b!636900))

(assert (= (and b!636905 (not c!72748)) b!636901))

(assert (= (and b!636901 c!72746) b!636903))

(assert (= (and b!636901 (not c!72746)) b!636902))

(declare-fun m!611107 () Bool)

(assert (=> d!89971 m!611107))

(declare-fun m!611113 () Bool)

(assert (=> d!89971 m!611113))

(assert (=> d!89971 m!610897))

(assert (=> d!89971 m!610891))

(assert (=> b!636902 m!610905))

(assert (=> b!636902 m!610905))

(assert (=> b!636902 m!610863))

(declare-fun m!611117 () Bool)

(assert (=> b!636902 m!611117))

(assert (=> b!636649 d!89971))

(declare-fun d!89985 () Bool)

(declare-fun lt!294527 () SeekEntryResult!6777)

(assert (=> d!89985 (and (or (is-Undefined!6777 lt!294527) (not (is-Found!6777 lt!294527)) (and (bvsge (index!29419 lt!294527) #b00000000000000000000000000000000) (bvslt (index!29419 lt!294527) (size!18694 lt!294412)))) (or (is-Undefined!6777 lt!294527) (is-Found!6777 lt!294527) (not (is-MissingVacant!6777 lt!294527)) (not (= (index!29421 lt!294527) vacantSpotIndex!68)) (and (bvsge (index!29421 lt!294527) #b00000000000000000000000000000000) (bvslt (index!29421 lt!294527) (size!18694 lt!294412)))) (or (is-Undefined!6777 lt!294527) (ite (is-Found!6777 lt!294527) (= (select (arr!18330 lt!294412) (index!29419 lt!294527)) lt!294415) (and (is-MissingVacant!6777 lt!294527) (= (index!29421 lt!294527) vacantSpotIndex!68) (= (select (arr!18330 lt!294412) (index!29421 lt!294527)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364430 () SeekEntryResult!6777)

(assert (=> d!89985 (= lt!294527 e!364430)))

(declare-fun c!72751 () Bool)

(assert (=> d!89985 (= c!72751 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!294528 () (_ BitVec 64))

(assert (=> d!89985 (= lt!294528 (select (arr!18330 lt!294412) lt!294411))))

(assert (=> d!89985 (validMask!0 mask!3053)))

(assert (=> d!89985 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294411 vacantSpotIndex!68 lt!294415 lt!294412 mask!3053) lt!294527)))

(declare-fun b!636910 () Bool)

(declare-fun e!364428 () SeekEntryResult!6777)

(assert (=> b!636910 (= e!364428 (Found!6777 lt!294411))))

(declare-fun b!636911 () Bool)

(declare-fun c!72750 () Bool)

(assert (=> b!636911 (= c!72750 (= lt!294528 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!364429 () SeekEntryResult!6777)

(assert (=> b!636911 (= e!364428 e!364429)))

(declare-fun b!636912 () Bool)

(assert (=> b!636912 (= e!364429 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!294411 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!294415 lt!294412 mask!3053))))

(declare-fun b!636913 () Bool)

(assert (=> b!636913 (= e!364429 (MissingVacant!6777 vacantSpotIndex!68))))

(declare-fun b!636914 () Bool)

(assert (=> b!636914 (= e!364430 Undefined!6777)))

(declare-fun b!636915 () Bool)

(assert (=> b!636915 (= e!364430 e!364428)))

(declare-fun c!72752 () Bool)

(assert (=> b!636915 (= c!72752 (= lt!294528 lt!294415))))

(assert (= (and d!89985 c!72751) b!636914))

(assert (= (and d!89985 (not c!72751)) b!636915))

(assert (= (and b!636915 c!72752) b!636910))

(assert (= (and b!636915 (not c!72752)) b!636911))

(assert (= (and b!636911 c!72750) b!636913))

(assert (= (and b!636911 (not c!72750)) b!636912))

(declare-fun m!611119 () Bool)

(assert (=> d!89985 m!611119))

(declare-fun m!611121 () Bool)

(assert (=> d!89985 m!611121))

(declare-fun m!611124 () Bool)

(assert (=> d!89985 m!611124))

(assert (=> d!89985 m!610891))

(declare-fun m!611127 () Bool)

(assert (=> b!636912 m!611127))

(assert (=> b!636912 m!611127))

(declare-fun m!611129 () Bool)

(assert (=> b!636912 m!611129))

(assert (=> b!636638 d!89985))

(declare-fun d!89989 () Bool)

(declare-fun lt!294532 () SeekEntryResult!6777)

(assert (=> d!89989 (and (or (is-Undefined!6777 lt!294532) (not (is-Found!6777 lt!294532)) (and (bvsge (index!29419 lt!294532) #b00000000000000000000000000000000) (bvslt (index!29419 lt!294532) (size!18694 lt!294412)))) (or (is-Undefined!6777 lt!294532) (is-Found!6777 lt!294532) (not (is-MissingVacant!6777 lt!294532)) (not (= (index!29421 lt!294532) vacantSpotIndex!68)) (and (bvsge (index!29421 lt!294532) #b00000000000000000000000000000000) (bvslt (index!29421 lt!294532) (size!18694 lt!294412)))) (or (is-Undefined!6777 lt!294532) (ite (is-Found!6777 lt!294532) (= (select (arr!18330 lt!294412) (index!29419 lt!294532)) lt!294415) (and (is-MissingVacant!6777 lt!294532) (= (index!29421 lt!294532) vacantSpotIndex!68) (= (select (arr!18330 lt!294412) (index!29421 lt!294532)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364436 () SeekEntryResult!6777)

(assert (=> d!89989 (= lt!294532 e!364436)))

(declare-fun c!72757 () Bool)

(assert (=> d!89989 (= c!72757 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!294533 () (_ BitVec 64))

(assert (=> d!89989 (= lt!294533 (select (arr!18330 lt!294412) index!984))))

(assert (=> d!89989 (validMask!0 mask!3053)))

(assert (=> d!89989 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294415 lt!294412 mask!3053) lt!294532)))

(declare-fun b!636922 () Bool)

(declare-fun e!364434 () SeekEntryResult!6777)

(assert (=> b!636922 (= e!364434 (Found!6777 index!984))))

(declare-fun b!636923 () Bool)

(declare-fun c!72756 () Bool)

(assert (=> b!636923 (= c!72756 (= lt!294533 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!364435 () SeekEntryResult!6777)

(assert (=> b!636923 (= e!364434 e!364435)))

(declare-fun b!636924 () Bool)

(assert (=> b!636924 (= e!364435 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!294415 lt!294412 mask!3053))))

(declare-fun b!636925 () Bool)

(assert (=> b!636925 (= e!364435 (MissingVacant!6777 vacantSpotIndex!68))))

(declare-fun b!636926 () Bool)

(assert (=> b!636926 (= e!364436 Undefined!6777)))

(declare-fun b!636927 () Bool)

(assert (=> b!636927 (= e!364436 e!364434)))

(declare-fun c!72758 () Bool)

(assert (=> b!636927 (= c!72758 (= lt!294533 lt!294415))))

(assert (= (and d!89989 c!72757) b!636926))

(assert (= (and d!89989 (not c!72757)) b!636927))

(assert (= (and b!636927 c!72758) b!636922))

(assert (= (and b!636927 (not c!72758)) b!636923))

(assert (= (and b!636923 c!72756) b!636925))

(assert (= (and b!636923 (not c!72756)) b!636924))

(declare-fun m!611135 () Bool)

(assert (=> d!89989 m!611135))

(declare-fun m!611137 () Bool)

(assert (=> d!89989 m!611137))

(declare-fun m!611139 () Bool)

(assert (=> d!89989 m!611139))

(assert (=> d!89989 m!610891))

(assert (=> b!636924 m!610905))

(assert (=> b!636924 m!610905))

(declare-fun m!611143 () Bool)

(assert (=> b!636924 m!611143))

(assert (=> b!636638 d!89989))

(declare-fun d!89993 () Bool)

(declare-fun lt!294540 () (_ BitVec 32))

(assert (=> d!89993 (and (bvsge lt!294540 #b00000000000000000000000000000000) (bvslt lt!294540 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89993 (= lt!294540 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!89993 (validMask!0 mask!3053)))

(assert (=> d!89993 (= (nextIndex!0 index!984 x!910 mask!3053) lt!294540)))

(declare-fun bs!19120 () Bool)

(assert (= bs!19120 d!89993))

(declare-fun m!611163 () Bool)

(assert (=> bs!19120 m!611163))

(assert (=> bs!19120 m!610891))

(assert (=> b!636638 d!89993))

(declare-fun d!89999 () Bool)

(declare-fun lt!294541 () SeekEntryResult!6777)

(assert (=> d!89999 (and (or (is-Undefined!6777 lt!294541) (not (is-Found!6777 lt!294541)) (and (bvsge (index!29419 lt!294541) #b00000000000000000000000000000000) (bvslt (index!29419 lt!294541) (size!18694 a!2986)))) (or (is-Undefined!6777 lt!294541) (is-Found!6777 lt!294541) (not (is-MissingVacant!6777 lt!294541)) (not (= (index!29421 lt!294541) vacantSpotIndex!68)) (and (bvsge (index!29421 lt!294541) #b00000000000000000000000000000000) (bvslt (index!29421 lt!294541) (size!18694 a!2986)))) (or (is-Undefined!6777 lt!294541) (ite (is-Found!6777 lt!294541) (= (select (arr!18330 a!2986) (index!29419 lt!294541)) (select (arr!18330 a!2986) j!136)) (and (is-MissingVacant!6777 lt!294541) (= (index!29421 lt!294541) vacantSpotIndex!68) (= (select (arr!18330 a!2986) (index!29421 lt!294541)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364445 () SeekEntryResult!6777)

(assert (=> d!89999 (= lt!294541 e!364445)))

(declare-fun c!72766 () Bool)

(assert (=> d!89999 (= c!72766 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!294542 () (_ BitVec 64))

(assert (=> d!89999 (= lt!294542 (select (arr!18330 a!2986) lt!294411))))

(assert (=> d!89999 (validMask!0 mask!3053)))

(assert (=> d!89999 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294411 vacantSpotIndex!68 (select (arr!18330 a!2986) j!136) a!2986 mask!3053) lt!294541)))

(declare-fun b!636940 () Bool)

(declare-fun e!364443 () SeekEntryResult!6777)

(assert (=> b!636940 (= e!364443 (Found!6777 lt!294411))))

(declare-fun b!636941 () Bool)

(declare-fun c!72765 () Bool)

(assert (=> b!636941 (= c!72765 (= lt!294542 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!364444 () SeekEntryResult!6777)

(assert (=> b!636941 (= e!364443 e!364444)))

(declare-fun b!636942 () Bool)

(assert (=> b!636942 (= e!364444 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!294411 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18330 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!636943 () Bool)

(assert (=> b!636943 (= e!364444 (MissingVacant!6777 vacantSpotIndex!68))))

(declare-fun b!636944 () Bool)

(assert (=> b!636944 (= e!364445 Undefined!6777)))

(declare-fun b!636945 () Bool)

(assert (=> b!636945 (= e!364445 e!364443)))

(declare-fun c!72767 () Bool)

(assert (=> b!636945 (= c!72767 (= lt!294542 (select (arr!18330 a!2986) j!136)))))

(assert (= (and d!89999 c!72766) b!636944))

(assert (= (and d!89999 (not c!72766)) b!636945))

(assert (= (and b!636945 c!72767) b!636940))

(assert (= (and b!636945 (not c!72767)) b!636941))

(assert (= (and b!636941 c!72765) b!636943))

(assert (= (and b!636941 (not c!72765)) b!636942))

(declare-fun m!611165 () Bool)

(assert (=> d!89999 m!611165))

(declare-fun m!611167 () Bool)

(assert (=> d!89999 m!611167))

(declare-fun m!611169 () Bool)

(assert (=> d!89999 m!611169))

(assert (=> d!89999 m!610891))

(assert (=> b!636942 m!611127))

(assert (=> b!636942 m!611127))

(assert (=> b!636942 m!610863))

(declare-fun m!611171 () Bool)

(assert (=> b!636942 m!611171))

(assert (=> b!636638 d!89999))

(declare-fun d!90001 () Bool)

(declare-fun e!364464 () Bool)

(assert (=> d!90001 e!364464))

(declare-fun res!412153 () Bool)

(assert (=> d!90001 (=> (not res!412153) (not e!364464))))

(assert (=> d!90001 (= res!412153 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18694 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18694 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18694 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18694 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18694 a!2986))))))

(declare-fun lt!294559 () Unit!21466)

(declare-fun choose!9 (array!38220 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21466)

(assert (=> d!90001 (= lt!294559 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294411 vacantSpotIndex!68 mask!3053))))

(assert (=> d!90001 (validMask!0 mask!3053)))

(assert (=> d!90001 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294411 vacantSpotIndex!68 mask!3053) lt!294559)))

(declare-fun b!636973 () Bool)

(assert (=> b!636973 (= e!364464 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294411 vacantSpotIndex!68 (select (arr!18330 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294411 vacantSpotIndex!68 (select (store (arr!18330 a!2986) i!1108 k!1786) j!136) (array!38221 (store (arr!18330 a!2986) i!1108 k!1786) (size!18694 a!2986)) mask!3053)))))

(assert (= (and d!90001 res!412153) b!636973))

(declare-fun m!611199 () Bool)

(assert (=> d!90001 m!611199))

(assert (=> d!90001 m!610891))

(assert (=> b!636973 m!610863))

(assert (=> b!636973 m!610881))

(assert (=> b!636973 m!610907))

(declare-fun m!611201 () Bool)

(assert (=> b!636973 m!611201))

(assert (=> b!636973 m!610863))

(assert (=> b!636973 m!610909))

(assert (=> b!636973 m!610907))

(assert (=> b!636638 d!90001))

(declare-fun lt!294594 () SeekEntryResult!6777)

(declare-fun b!637049 () Bool)

(declare-fun e!364507 () SeekEntryResult!6777)

(assert (=> b!637049 (= e!364507 (seekKeyOrZeroReturnVacant!0 (x!58203 lt!294594) (index!29420 lt!294594) (index!29420 lt!294594) k!1786 a!2986 mask!3053))))

(declare-fun b!637050 () Bool)

(assert (=> b!637050 (= e!364507 (MissingZero!6777 (index!29420 lt!294594)))))

(declare-fun b!637051 () Bool)

(declare-fun c!72810 () Bool)

(declare-fun lt!294595 () (_ BitVec 64))

(assert (=> b!637051 (= c!72810 (= lt!294595 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!364508 () SeekEntryResult!6777)

(assert (=> b!637051 (= e!364508 e!364507)))

(declare-fun b!637052 () Bool)

(declare-fun e!364509 () SeekEntryResult!6777)

(assert (=> b!637052 (= e!364509 e!364508)))

(assert (=> b!637052 (= lt!294595 (select (arr!18330 a!2986) (index!29420 lt!294594)))))

(declare-fun c!72812 () Bool)

(assert (=> b!637052 (= c!72812 (= lt!294595 k!1786))))

(declare-fun b!637053 () Bool)

(assert (=> b!637053 (= e!364508 (Found!6777 (index!29420 lt!294594)))))

(declare-fun b!637054 () Bool)

(assert (=> b!637054 (= e!364509 Undefined!6777)))

(declare-fun d!90011 () Bool)

(declare-fun lt!294593 () SeekEntryResult!6777)

(assert (=> d!90011 (and (or (is-Undefined!6777 lt!294593) (not (is-Found!6777 lt!294593)) (and (bvsge (index!29419 lt!294593) #b00000000000000000000000000000000) (bvslt (index!29419 lt!294593) (size!18694 a!2986)))) (or (is-Undefined!6777 lt!294593) (is-Found!6777 lt!294593) (not (is-MissingZero!6777 lt!294593)) (and (bvsge (index!29418 lt!294593) #b00000000000000000000000000000000) (bvslt (index!29418 lt!294593) (size!18694 a!2986)))) (or (is-Undefined!6777 lt!294593) (is-Found!6777 lt!294593) (is-MissingZero!6777 lt!294593) (not (is-MissingVacant!6777 lt!294593)) (and (bvsge (index!29421 lt!294593) #b00000000000000000000000000000000) (bvslt (index!29421 lt!294593) (size!18694 a!2986)))) (or (is-Undefined!6777 lt!294593) (ite (is-Found!6777 lt!294593) (= (select (arr!18330 a!2986) (index!29419 lt!294593)) k!1786) (ite (is-MissingZero!6777 lt!294593) (= (select (arr!18330 a!2986) (index!29418 lt!294593)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6777 lt!294593) (= (select (arr!18330 a!2986) (index!29421 lt!294593)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!90011 (= lt!294593 e!364509)))

(declare-fun c!72811 () Bool)

(assert (=> d!90011 (= c!72811 (and (is-Intermediate!6777 lt!294594) (undefined!7589 lt!294594)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38220 (_ BitVec 32)) SeekEntryResult!6777)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90011 (= lt!294594 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!90011 (validMask!0 mask!3053)))

(assert (=> d!90011 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!294593)))

(assert (= (and d!90011 c!72811) b!637054))

(assert (= (and d!90011 (not c!72811)) b!637052))

(assert (= (and b!637052 c!72812) b!637053))

(assert (= (and b!637052 (not c!72812)) b!637051))

(assert (= (and b!637051 c!72810) b!637050))

(assert (= (and b!637051 (not c!72810)) b!637049))

(declare-fun m!611259 () Bool)

(assert (=> b!637049 m!611259))

(declare-fun m!611261 () Bool)

(assert (=> b!637052 m!611261))

(assert (=> d!90011 m!610891))

(declare-fun m!611263 () Bool)

(assert (=> d!90011 m!611263))

(declare-fun m!611265 () Bool)

(assert (=> d!90011 m!611265))

(declare-fun m!611267 () Bool)

(assert (=> d!90011 m!611267))

(declare-fun m!611269 () Bool)

(assert (=> d!90011 m!611269))

(declare-fun m!611271 () Bool)

(assert (=> d!90011 m!611271))

(assert (=> d!90011 m!611267))

(assert (=> b!636640 d!90011))

(declare-fun d!90029 () Bool)

(declare-fun lt!294598 () Bool)

(declare-fun content!247 (List!12424) (Set (_ BitVec 64)))

(assert (=> d!90029 (= lt!294598 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!247 Nil!12421)))))

(declare-fun e!364523 () Bool)

(assert (=> d!90029 (= lt!294598 e!364523)))

(declare-fun res!412173 () Bool)

(assert (=> d!90029 (=> (not res!412173) (not e!364523))))

(assert (=> d!90029 (= res!412173 (is-Cons!12420 Nil!12421))))

(assert (=> d!90029 (= (contains!3107 Nil!12421 #b0000000000000000000000000000000000000000000000000000000000000000) lt!294598)))

(declare-fun b!637069 () Bool)

(declare-fun e!364522 () Bool)

(assert (=> b!637069 (= e!364523 e!364522)))

(declare-fun res!412174 () Bool)

(assert (=> b!637069 (=> res!412174 e!364522)))

(assert (=> b!637069 (= res!412174 (= (h!13465 Nil!12421) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!637070 () Bool)

(assert (=> b!637070 (= e!364522 (contains!3107 (t!18660 Nil!12421) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!90029 res!412173) b!637069))

(assert (= (and b!637069 (not res!412174)) b!637070))

(declare-fun m!611273 () Bool)

(assert (=> d!90029 m!611273))

(declare-fun m!611275 () Bool)

(assert (=> d!90029 m!611275))

(declare-fun m!611277 () Bool)

(assert (=> b!637070 m!611277))

(assert (=> b!636639 d!90029))

(declare-fun d!90033 () Bool)

(declare-fun lt!294599 () Bool)

(assert (=> d!90033 (= lt!294599 (set.member k!1786 (content!247 Nil!12421)))))

(declare-fun e!364525 () Bool)

(assert (=> d!90033 (= lt!294599 e!364525)))

(declare-fun res!412175 () Bool)

(assert (=> d!90033 (=> (not res!412175) (not e!364525))))

(assert (=> d!90033 (= res!412175 (is-Cons!12420 Nil!12421))))

(assert (=> d!90033 (= (contains!3107 Nil!12421 k!1786) lt!294599)))

(declare-fun b!637071 () Bool)

(declare-fun e!364524 () Bool)

(assert (=> b!637071 (= e!364525 e!364524)))

(declare-fun res!412176 () Bool)

(assert (=> b!637071 (=> res!412176 e!364524)))

(assert (=> b!637071 (= res!412176 (= (h!13465 Nil!12421) k!1786))))

(declare-fun b!637072 () Bool)

(assert (=> b!637072 (= e!364524 (contains!3107 (t!18660 Nil!12421) k!1786))))

(assert (= (and d!90033 res!412175) b!637071))

(assert (= (and b!637071 (not res!412176)) b!637072))

(assert (=> d!90033 m!611273))

(declare-fun m!611279 () Bool)

(assert (=> d!90033 m!611279))

(declare-fun m!611281 () Bool)

(assert (=> b!637072 m!611281))

(assert (=> b!636636 d!90033))

(declare-fun d!90037 () Bool)

(assert (=> d!90037 (= (validKeyInArray!0 (select (arr!18330 a!2986) j!136)) (and (not (= (select (arr!18330 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18330 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!636646 d!90037))

(declare-fun b!637092 () Bool)

(declare-fun e!364543 () Bool)

(declare-fun call!33461 () Bool)

(assert (=> b!637092 (= e!364543 call!33461)))

(declare-fun b!637093 () Bool)

(declare-fun e!364542 () Bool)

(assert (=> b!637093 (= e!364543 e!364542)))

(declare-fun lt!294611 () (_ BitVec 64))

(assert (=> b!637093 (= lt!294611 (select (arr!18330 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!294609 () Unit!21466)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38220 (_ BitVec 64) (_ BitVec 32)) Unit!21466)

(assert (=> b!637093 (= lt!294609 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!294611 #b00000000000000000000000000000000))))

(assert (=> b!637093 (arrayContainsKey!0 a!2986 lt!294611 #b00000000000000000000000000000000)))

(declare-fun lt!294610 () Unit!21466)

(assert (=> b!637093 (= lt!294610 lt!294609)))

(declare-fun res!412191 () Bool)

(assert (=> b!637093 (= res!412191 (= (seekEntryOrOpen!0 (select (arr!18330 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6777 #b00000000000000000000000000000000)))))

(assert (=> b!637093 (=> (not res!412191) (not e!364542))))

(declare-fun d!90043 () Bool)

(declare-fun res!412190 () Bool)

(declare-fun e!364544 () Bool)

(assert (=> d!90043 (=> res!412190 e!364544)))

(assert (=> d!90043 (= res!412190 (bvsge #b00000000000000000000000000000000 (size!18694 a!2986)))))

(assert (=> d!90043 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!364544)))

(declare-fun b!637094 () Bool)

(assert (=> b!637094 (= e!364542 call!33461)))

(declare-fun bm!33458 () Bool)

(assert (=> bm!33458 (= call!33461 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!637095 () Bool)

(assert (=> b!637095 (= e!364544 e!364543)))

(declare-fun c!72818 () Bool)

(assert (=> b!637095 (= c!72818 (validKeyInArray!0 (select (arr!18330 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!90043 (not res!412190)) b!637095))

(assert (= (and b!637095 c!72818) b!637093))

(assert (= (and b!637095 (not c!72818)) b!637092))

(assert (= (and b!637093 res!412191) b!637094))

(assert (= (or b!637094 b!637092) bm!33458))

(declare-fun m!611299 () Bool)

(assert (=> b!637093 m!611299))

(declare-fun m!611301 () Bool)

(assert (=> b!637093 m!611301))

(declare-fun m!611303 () Bool)

(assert (=> b!637093 m!611303))

(assert (=> b!637093 m!611299))

(declare-fun m!611305 () Bool)

(assert (=> b!637093 m!611305))

(declare-fun m!611307 () Bool)

(assert (=> bm!33458 m!611307))

(assert (=> b!637095 m!611299))

(assert (=> b!637095 m!611299))

(declare-fun m!611309 () Bool)

(assert (=> b!637095 m!611309))

(assert (=> b!636635 d!90043))

(declare-fun d!90053 () Bool)

(declare-fun lt!294612 () Bool)

(assert (=> d!90053 (= lt!294612 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!247 Nil!12421)))))

(declare-fun e!364546 () Bool)

(assert (=> d!90053 (= lt!294612 e!364546)))

(declare-fun res!412192 () Bool)

(assert (=> d!90053 (=> (not res!412192) (not e!364546))))

(assert (=> d!90053 (= res!412192 (is-Cons!12420 Nil!12421))))

(assert (=> d!90053 (= (contains!3107 Nil!12421 #b1000000000000000000000000000000000000000000000000000000000000000) lt!294612)))

(declare-fun b!637096 () Bool)

(declare-fun e!364545 () Bool)

(assert (=> b!637096 (= e!364546 e!364545)))

(declare-fun res!412193 () Bool)

(assert (=> b!637096 (=> res!412193 e!364545)))

(assert (=> b!637096 (= res!412193 (= (h!13465 Nil!12421) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!637097 () Bool)

(assert (=> b!637097 (= e!364545 (contains!3107 (t!18660 Nil!12421) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!90053 res!412192) b!637096))

(assert (= (and b!637096 (not res!412193)) b!637097))

(assert (=> d!90053 m!611273))

(declare-fun m!611311 () Bool)

(assert (=> d!90053 m!611311))

(declare-fun m!611313 () Bool)

(assert (=> b!637097 m!611313))

(assert (=> b!636648 d!90053))

(declare-fun d!90055 () Bool)

(declare-fun res!412198 () Bool)

(declare-fun e!364551 () Bool)

(assert (=> d!90055 (=> res!412198 e!364551)))

(assert (=> d!90055 (= res!412198 (= (select (arr!18330 lt!294412) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18330 a!2986) j!136)))))

(assert (=> d!90055 (= (arrayContainsKey!0 lt!294412 (select (arr!18330 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!364551)))

(declare-fun b!637102 () Bool)

(declare-fun e!364552 () Bool)

(assert (=> b!637102 (= e!364551 e!364552)))


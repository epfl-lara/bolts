; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54076 () Bool)

(assert start!54076)

(declare-fun res!377724 () Bool)

(declare-fun e!337040 () Bool)

(assert (=> start!54076 (=> (not res!377724) (not e!337040))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54076 (= res!377724 (validMask!0 mask!3053))))

(assert (=> start!54076 e!337040))

(assert (=> start!54076 true))

(declare-datatypes ((array!36826 0))(
  ( (array!36827 (arr!17681 (Array (_ BitVec 32) (_ BitVec 64))) (size!18045 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36826)

(declare-fun array_inv!13455 (array!36826) Bool)

(assert (=> start!54076 (array_inv!13455 a!2986)))

(declare-fun b!590338 () Bool)

(declare-fun res!377737 () Bool)

(assert (=> b!590338 (=> (not res!377737) (not e!337040))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!590338 (= res!377737 (and (= (size!18045 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18045 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18045 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!590339 () Bool)

(declare-fun res!377734 () Bool)

(assert (=> b!590339 (=> (not res!377734) (not e!337040))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!590339 (= res!377734 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun e!337042 () Bool)

(declare-fun b!590340 () Bool)

(declare-fun lt!267879 () array!36826)

(assert (=> b!590340 (= e!337042 (arrayContainsKey!0 lt!267879 (select (arr!17681 a!2986) j!136) j!136))))

(declare-fun b!590341 () Bool)

(declare-fun e!337039 () Bool)

(assert (=> b!590341 (= e!337040 e!337039)))

(declare-fun res!377733 () Bool)

(assert (=> b!590341 (=> (not res!377733) (not e!337039))))

(declare-datatypes ((SeekEntryResult!6128 0))(
  ( (MissingZero!6128 (index!26744 (_ BitVec 32))) (Found!6128 (index!26745 (_ BitVec 32))) (Intermediate!6128 (undefined!6940 Bool) (index!26746 (_ BitVec 32)) (x!55560 (_ BitVec 32))) (Undefined!6128) (MissingVacant!6128 (index!26747 (_ BitVec 32))) )
))
(declare-fun lt!267876 () SeekEntryResult!6128)

(assert (=> b!590341 (= res!377733 (or (= lt!267876 (MissingZero!6128 i!1108)) (= lt!267876 (MissingVacant!6128 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36826 (_ BitVec 32)) SeekEntryResult!6128)

(assert (=> b!590341 (= lt!267876 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!590342 () Bool)

(declare-fun res!377730 () Bool)

(assert (=> b!590342 (=> (not res!377730) (not e!337040))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!590342 (= res!377730 (validKeyInArray!0 (select (arr!17681 a!2986) j!136)))))

(declare-fun b!590343 () Bool)

(declare-datatypes ((Unit!18456 0))(
  ( (Unit!18457) )
))
(declare-fun e!337037 () Unit!18456)

(declare-fun Unit!18458 () Unit!18456)

(assert (=> b!590343 (= e!337037 Unit!18458)))

(assert (=> b!590343 false))

(declare-fun b!590344 () Bool)

(declare-fun e!337038 () Bool)

(assert (=> b!590344 (= e!337038 e!337042)))

(declare-fun res!377735 () Bool)

(assert (=> b!590344 (=> res!377735 e!337042)))

(declare-fun lt!267882 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!590344 (= res!377735 (or (not (= (select (arr!17681 a!2986) j!136) lt!267882)) (not (= (select (arr!17681 a!2986) j!136) (select (store (arr!17681 a!2986) i!1108 k!1786) index!984))) (bvsge j!136 index!984)))))

(declare-fun b!590345 () Bool)

(declare-fun res!377727 () Bool)

(assert (=> b!590345 (=> (not res!377727) (not e!337039))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!590345 (= res!377727 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17681 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!590346 () Bool)

(declare-fun e!337041 () Bool)

(declare-fun e!337034 () Bool)

(assert (=> b!590346 (= e!337041 e!337034)))

(declare-fun res!377726 () Bool)

(assert (=> b!590346 (=> (not res!377726) (not e!337034))))

(declare-fun lt!267880 () SeekEntryResult!6128)

(assert (=> b!590346 (= res!377726 (and (= lt!267880 (Found!6128 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17681 a!2986) index!984) (select (arr!17681 a!2986) j!136))) (not (= (select (arr!17681 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36826 (_ BitVec 32)) SeekEntryResult!6128)

(assert (=> b!590346 (= lt!267880 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17681 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!590347 () Bool)

(declare-fun e!337035 () Bool)

(declare-fun lt!267875 () SeekEntryResult!6128)

(assert (=> b!590347 (= e!337035 (= lt!267880 lt!267875))))

(declare-fun b!590348 () Bool)

(assert (=> b!590348 (= e!337039 e!337041)))

(declare-fun res!377729 () Bool)

(assert (=> b!590348 (=> (not res!377729) (not e!337041))))

(assert (=> b!590348 (= res!377729 (= (select (store (arr!17681 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!590348 (= lt!267879 (array!36827 (store (arr!17681 a!2986) i!1108 k!1786) (size!18045 a!2986)))))

(declare-fun b!590349 () Bool)

(declare-fun res!377725 () Bool)

(assert (=> b!590349 (=> (not res!377725) (not e!337039))))

(declare-datatypes ((List!11775 0))(
  ( (Nil!11772) (Cons!11771 (h!12816 (_ BitVec 64)) (t!18011 List!11775)) )
))
(declare-fun arrayNoDuplicates!0 (array!36826 (_ BitVec 32) List!11775) Bool)

(assert (=> b!590349 (= res!377725 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11772))))

(declare-fun b!590350 () Bool)

(declare-fun res!377731 () Bool)

(assert (=> b!590350 (=> (not res!377731) (not e!337039))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36826 (_ BitVec 32)) Bool)

(assert (=> b!590350 (= res!377731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!590351 () Bool)

(declare-fun res!377738 () Bool)

(assert (=> b!590351 (=> (not res!377738) (not e!337040))))

(assert (=> b!590351 (= res!377738 (validKeyInArray!0 k!1786))))

(declare-fun e!337033 () Bool)

(declare-fun b!590352 () Bool)

(assert (=> b!590352 (= e!337033 (or (not (= (select (arr!17681 a!2986) j!136) lt!267882)) (not (= (select (arr!17681 a!2986) j!136) (select (store (arr!17681 a!2986) i!1108 k!1786) index!984))) (bvsge j!136 index!984) (bvslt index!984 (size!18045 a!2986))))))

(assert (=> b!590352 e!337038))

(declare-fun res!377728 () Bool)

(assert (=> b!590352 (=> (not res!377728) (not e!337038))))

(assert (=> b!590352 (= res!377728 (= (select (store (arr!17681 a!2986) i!1108 k!1786) index!984) (select (arr!17681 a!2986) j!136)))))

(declare-fun b!590353 () Bool)

(declare-fun Unit!18459 () Unit!18456)

(assert (=> b!590353 (= e!337037 Unit!18459)))

(declare-fun b!590354 () Bool)

(assert (=> b!590354 (= e!337034 (not e!337033))))

(declare-fun res!377736 () Bool)

(assert (=> b!590354 (=> res!377736 e!337033)))

(declare-fun lt!267877 () SeekEntryResult!6128)

(assert (=> b!590354 (= res!377736 (not (= lt!267877 (Found!6128 index!984))))))

(declare-fun lt!267874 () Unit!18456)

(assert (=> b!590354 (= lt!267874 e!337037)))

(declare-fun c!66674 () Bool)

(assert (=> b!590354 (= c!66674 (= lt!267877 Undefined!6128))))

(assert (=> b!590354 (= lt!267877 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267882 lt!267879 mask!3053))))

(assert (=> b!590354 e!337035))

(declare-fun res!377732 () Bool)

(assert (=> b!590354 (=> (not res!377732) (not e!337035))))

(declare-fun lt!267881 () (_ BitVec 32))

(assert (=> b!590354 (= res!377732 (= lt!267875 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267881 vacantSpotIndex!68 lt!267882 lt!267879 mask!3053)))))

(assert (=> b!590354 (= lt!267875 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267881 vacantSpotIndex!68 (select (arr!17681 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!590354 (= lt!267882 (select (store (arr!17681 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267878 () Unit!18456)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36826 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18456)

(assert (=> b!590354 (= lt!267878 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267881 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!590354 (= lt!267881 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!54076 res!377724) b!590338))

(assert (= (and b!590338 res!377737) b!590342))

(assert (= (and b!590342 res!377730) b!590351))

(assert (= (and b!590351 res!377738) b!590339))

(assert (= (and b!590339 res!377734) b!590341))

(assert (= (and b!590341 res!377733) b!590350))

(assert (= (and b!590350 res!377731) b!590349))

(assert (= (and b!590349 res!377725) b!590345))

(assert (= (and b!590345 res!377727) b!590348))

(assert (= (and b!590348 res!377729) b!590346))

(assert (= (and b!590346 res!377726) b!590354))

(assert (= (and b!590354 res!377732) b!590347))

(assert (= (and b!590354 c!66674) b!590343))

(assert (= (and b!590354 (not c!66674)) b!590353))

(assert (= (and b!590354 (not res!377736)) b!590352))

(assert (= (and b!590352 res!377728) b!590344))

(assert (= (and b!590344 (not res!377735)) b!590340))

(declare-fun m!568765 () Bool)

(assert (=> b!590354 m!568765))

(declare-fun m!568767 () Bool)

(assert (=> b!590354 m!568767))

(declare-fun m!568769 () Bool)

(assert (=> b!590354 m!568769))

(declare-fun m!568771 () Bool)

(assert (=> b!590354 m!568771))

(declare-fun m!568773 () Bool)

(assert (=> b!590354 m!568773))

(assert (=> b!590354 m!568767))

(declare-fun m!568775 () Bool)

(assert (=> b!590354 m!568775))

(declare-fun m!568777 () Bool)

(assert (=> b!590354 m!568777))

(declare-fun m!568779 () Bool)

(assert (=> b!590354 m!568779))

(assert (=> b!590344 m!568767))

(assert (=> b!590344 m!568769))

(declare-fun m!568781 () Bool)

(assert (=> b!590344 m!568781))

(assert (=> b!590348 m!568769))

(declare-fun m!568783 () Bool)

(assert (=> b!590348 m!568783))

(assert (=> b!590352 m!568767))

(assert (=> b!590352 m!568769))

(assert (=> b!590352 m!568781))

(declare-fun m!568785 () Bool)

(assert (=> b!590345 m!568785))

(declare-fun m!568787 () Bool)

(assert (=> b!590350 m!568787))

(declare-fun m!568789 () Bool)

(assert (=> start!54076 m!568789))

(declare-fun m!568791 () Bool)

(assert (=> start!54076 m!568791))

(declare-fun m!568793 () Bool)

(assert (=> b!590346 m!568793))

(assert (=> b!590346 m!568767))

(assert (=> b!590346 m!568767))

(declare-fun m!568795 () Bool)

(assert (=> b!590346 m!568795))

(declare-fun m!568797 () Bool)

(assert (=> b!590339 m!568797))

(assert (=> b!590340 m!568767))

(assert (=> b!590340 m!568767))

(declare-fun m!568799 () Bool)

(assert (=> b!590340 m!568799))

(declare-fun m!568801 () Bool)

(assert (=> b!590341 m!568801))

(declare-fun m!568803 () Bool)

(assert (=> b!590351 m!568803))

(declare-fun m!568805 () Bool)

(assert (=> b!590349 m!568805))

(assert (=> b!590342 m!568767))

(assert (=> b!590342 m!568767))

(declare-fun m!568807 () Bool)

(assert (=> b!590342 m!568807))

(push 1)

(assert (not b!590339))

(assert (not b!590351))

(assert (not b!590349))

(assert (not b!590342))

(assert (not b!590341))

(assert (not b!590354))

(assert (not b!590350))

(assert (not start!54076))

(assert (not b!590346))

(assert (not b!590340))

(check-sat)

(pop 1)

(push 1)

(check-sat)


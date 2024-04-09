; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58900 () Bool)

(assert start!58900)

(declare-fun b!649531 () Bool)

(declare-fun e!372588 () Bool)

(declare-fun e!372576 () Bool)

(assert (=> b!649531 (= e!372588 e!372576)))

(declare-fun res!421161 () Bool)

(assert (=> b!649531 (=> res!421161 e!372576)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!301739 () (_ BitVec 64))

(declare-fun lt!301734 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38518 0))(
  ( (array!38519 (arr!18461 (Array (_ BitVec 32) (_ BitVec 64))) (size!18825 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38518)

(assert (=> b!649531 (= res!421161 (or (not (= (select (arr!18461 a!2986) j!136) lt!301739)) (not (= (select (arr!18461 a!2986) j!136) lt!301734)) (bvsge j!136 index!984)))))

(declare-fun b!649532 () Bool)

(declare-datatypes ((Unit!22120 0))(
  ( (Unit!22121) )
))
(declare-fun e!372575 () Unit!22120)

(declare-fun Unit!22122 () Unit!22120)

(assert (=> b!649532 (= e!372575 Unit!22122)))

(assert (=> b!649532 false))

(declare-fun b!649533 () Bool)

(declare-fun res!421168 () Bool)

(declare-fun e!372585 () Bool)

(assert (=> b!649533 (=> (not res!421168) (not e!372585))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!649533 (= res!421168 (validKeyInArray!0 k!1786))))

(declare-fun res!421163 () Bool)

(assert (=> start!58900 (=> (not res!421163) (not e!372585))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58900 (= res!421163 (validMask!0 mask!3053))))

(assert (=> start!58900 e!372585))

(assert (=> start!58900 true))

(declare-fun array_inv!14235 (array!38518) Bool)

(assert (=> start!58900 (array_inv!14235 a!2986)))

(declare-fun b!649534 () Bool)

(declare-fun res!421158 () Bool)

(declare-fun e!372584 () Bool)

(assert (=> b!649534 (=> (not res!421158) (not e!372584))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!649534 (= res!421158 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18461 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!649535 () Bool)

(declare-fun e!372583 () Bool)

(assert (=> b!649535 (= e!372584 e!372583)))

(declare-fun res!421164 () Bool)

(assert (=> b!649535 (=> (not res!421164) (not e!372583))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!649535 (= res!421164 (= (select (store (arr!18461 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!301736 () array!38518)

(assert (=> b!649535 (= lt!301736 (array!38519 (store (arr!18461 a!2986) i!1108 k!1786) (size!18825 a!2986)))))

(declare-fun b!649536 () Bool)

(declare-fun res!421154 () Bool)

(assert (=> b!649536 (=> (not res!421154) (not e!372584))))

(declare-datatypes ((List!12555 0))(
  ( (Nil!12552) (Cons!12551 (h!13596 (_ BitVec 64)) (t!18791 List!12555)) )
))
(declare-fun arrayNoDuplicates!0 (array!38518 (_ BitVec 32) List!12555) Bool)

(assert (=> b!649536 (= res!421154 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12552))))

(declare-fun b!649537 () Bool)

(assert (=> b!649537 (= e!372585 e!372584)))

(declare-fun res!421159 () Bool)

(assert (=> b!649537 (=> (not res!421159) (not e!372584))))

(declare-datatypes ((SeekEntryResult!6908 0))(
  ( (MissingZero!6908 (index!29978 (_ BitVec 32))) (Found!6908 (index!29979 (_ BitVec 32))) (Intermediate!6908 (undefined!7720 Bool) (index!29980 (_ BitVec 32)) (x!58786 (_ BitVec 32))) (Undefined!6908) (MissingVacant!6908 (index!29981 (_ BitVec 32))) )
))
(declare-fun lt!301727 () SeekEntryResult!6908)

(assert (=> b!649537 (= res!421159 (or (= lt!301727 (MissingZero!6908 i!1108)) (= lt!301727 (MissingVacant!6908 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38518 (_ BitVec 32)) SeekEntryResult!6908)

(assert (=> b!649537 (= lt!301727 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!649538 () Bool)

(declare-fun e!372578 () Bool)

(declare-fun e!372589 () Bool)

(assert (=> b!649538 (= e!372578 (not e!372589))))

(declare-fun res!421165 () Bool)

(assert (=> b!649538 (=> res!421165 e!372589)))

(declare-fun lt!301725 () SeekEntryResult!6908)

(assert (=> b!649538 (= res!421165 (not (= lt!301725 (Found!6908 index!984))))))

(declare-fun lt!301738 () Unit!22120)

(assert (=> b!649538 (= lt!301738 e!372575)))

(declare-fun c!74558 () Bool)

(assert (=> b!649538 (= c!74558 (= lt!301725 Undefined!6908))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38518 (_ BitVec 32)) SeekEntryResult!6908)

(assert (=> b!649538 (= lt!301725 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!301739 lt!301736 mask!3053))))

(declare-fun e!372579 () Bool)

(assert (=> b!649538 e!372579))

(declare-fun res!421167 () Bool)

(assert (=> b!649538 (=> (not res!421167) (not e!372579))))

(declare-fun lt!301728 () (_ BitVec 32))

(declare-fun lt!301735 () SeekEntryResult!6908)

(assert (=> b!649538 (= res!421167 (= lt!301735 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301728 vacantSpotIndex!68 lt!301739 lt!301736 mask!3053)))))

(assert (=> b!649538 (= lt!301735 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301728 vacantSpotIndex!68 (select (arr!18461 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!649538 (= lt!301739 (select (store (arr!18461 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!301740 () Unit!22120)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38518 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22120)

(assert (=> b!649538 (= lt!301740 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301728 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!649538 (= lt!301728 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!649539 () Bool)

(declare-fun lt!301729 () SeekEntryResult!6908)

(assert (=> b!649539 (= e!372579 (= lt!301729 lt!301735))))

(declare-fun b!649540 () Bool)

(declare-fun e!372587 () Unit!22120)

(declare-fun Unit!22123 () Unit!22120)

(assert (=> b!649540 (= e!372587 Unit!22123)))

(declare-fun lt!301733 () Unit!22120)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38518 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22120)

(assert (=> b!649540 (= lt!301733 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301736 (select (arr!18461 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38518 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!649540 (arrayContainsKey!0 lt!301736 (select (arr!18461 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!301731 () Unit!22120)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38518 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12555) Unit!22120)

(assert (=> b!649540 (= lt!301731 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12552))))

(assert (=> b!649540 (arrayNoDuplicates!0 lt!301736 #b00000000000000000000000000000000 Nil!12552)))

(declare-fun lt!301737 () Unit!22120)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38518 (_ BitVec 32) (_ BitVec 32)) Unit!22120)

(assert (=> b!649540 (= lt!301737 (lemmaNoDuplicateFromThenFromBigger!0 lt!301736 #b00000000000000000000000000000000 j!136))))

(assert (=> b!649540 (arrayNoDuplicates!0 lt!301736 j!136 Nil!12552)))

(declare-fun lt!301726 () Unit!22120)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38518 (_ BitVec 64) (_ BitVec 32) List!12555) Unit!22120)

(assert (=> b!649540 (= lt!301726 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!301736 (select (arr!18461 a!2986) j!136) j!136 Nil!12552))))

(assert (=> b!649540 false))

(declare-fun b!649541 () Bool)

(assert (=> b!649541 (= e!372583 e!372578)))

(declare-fun res!421156 () Bool)

(assert (=> b!649541 (=> (not res!421156) (not e!372578))))

(assert (=> b!649541 (= res!421156 (and (= lt!301729 (Found!6908 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18461 a!2986) index!984) (select (arr!18461 a!2986) j!136))) (not (= (select (arr!18461 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!649541 (= lt!301729 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18461 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!649542 () Bool)

(declare-fun res!421153 () Bool)

(assert (=> b!649542 (=> (not res!421153) (not e!372585))))

(assert (=> b!649542 (= res!421153 (and (= (size!18825 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18825 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18825 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!649543 () Bool)

(declare-fun res!421169 () Bool)

(assert (=> b!649543 (=> (not res!421169) (not e!372584))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38518 (_ BitVec 32)) Bool)

(assert (=> b!649543 (= res!421169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!649544 () Bool)

(declare-fun res!421162 () Bool)

(assert (=> b!649544 (=> (not res!421162) (not e!372585))))

(assert (=> b!649544 (= res!421162 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!649545 () Bool)

(declare-fun e!372577 () Bool)

(assert (=> b!649545 (= e!372576 e!372577)))

(declare-fun res!421152 () Bool)

(assert (=> b!649545 (=> (not res!421152) (not e!372577))))

(assert (=> b!649545 (= res!421152 (arrayContainsKey!0 lt!301736 (select (arr!18461 a!2986) j!136) j!136))))

(declare-fun b!649546 () Bool)

(assert (=> b!649546 (= e!372577 (arrayContainsKey!0 lt!301736 (select (arr!18461 a!2986) j!136) index!984))))

(declare-fun b!649547 () Bool)

(declare-fun e!372586 () Bool)

(assert (=> b!649547 (= e!372586 true)))

(assert (=> b!649547 (arrayNoDuplicates!0 lt!301736 #b00000000000000000000000000000000 Nil!12552)))

(declare-fun lt!301732 () Unit!22120)

(assert (=> b!649547 (= lt!301732 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12552))))

(assert (=> b!649547 (arrayContainsKey!0 lt!301736 (select (arr!18461 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!301730 () Unit!22120)

(assert (=> b!649547 (= lt!301730 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301736 (select (arr!18461 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!372581 () Bool)

(assert (=> b!649547 e!372581))

(declare-fun res!421157 () Bool)

(assert (=> b!649547 (=> (not res!421157) (not e!372581))))

(assert (=> b!649547 (= res!421157 (arrayContainsKey!0 lt!301736 (select (arr!18461 a!2986) j!136) j!136))))

(declare-fun b!649548 () Bool)

(assert (=> b!649548 (= e!372581 (arrayContainsKey!0 lt!301736 (select (arr!18461 a!2986) j!136) index!984))))

(declare-fun b!649549 () Bool)

(declare-fun res!421155 () Bool)

(assert (=> b!649549 (=> (not res!421155) (not e!372585))))

(assert (=> b!649549 (= res!421155 (validKeyInArray!0 (select (arr!18461 a!2986) j!136)))))

(declare-fun b!649550 () Bool)

(declare-fun Unit!22124 () Unit!22120)

(assert (=> b!649550 (= e!372587 Unit!22124)))

(declare-fun b!649551 () Bool)

(declare-fun Unit!22125 () Unit!22120)

(assert (=> b!649551 (= e!372575 Unit!22125)))

(declare-fun b!649552 () Bool)

(declare-fun e!372582 () Bool)

(assert (=> b!649552 (= e!372589 e!372582)))

(declare-fun res!421151 () Bool)

(assert (=> b!649552 (=> res!421151 e!372582)))

(assert (=> b!649552 (= res!421151 (or (not (= (select (arr!18461 a!2986) j!136) lt!301739)) (not (= (select (arr!18461 a!2986) j!136) lt!301734))))))

(assert (=> b!649552 e!372588))

(declare-fun res!421166 () Bool)

(assert (=> b!649552 (=> (not res!421166) (not e!372588))))

(assert (=> b!649552 (= res!421166 (= lt!301734 (select (arr!18461 a!2986) j!136)))))

(assert (=> b!649552 (= lt!301734 (select (store (arr!18461 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!649553 () Bool)

(assert (=> b!649553 (= e!372582 e!372586)))

(declare-fun res!421160 () Bool)

(assert (=> b!649553 (=> res!421160 e!372586)))

(assert (=> b!649553 (= res!421160 (bvsge index!984 j!136))))

(declare-fun lt!301724 () Unit!22120)

(assert (=> b!649553 (= lt!301724 e!372587)))

(declare-fun c!74557 () Bool)

(assert (=> b!649553 (= c!74557 (bvslt j!136 index!984))))

(assert (= (and start!58900 res!421163) b!649542))

(assert (= (and b!649542 res!421153) b!649549))

(assert (= (and b!649549 res!421155) b!649533))

(assert (= (and b!649533 res!421168) b!649544))

(assert (= (and b!649544 res!421162) b!649537))

(assert (= (and b!649537 res!421159) b!649543))

(assert (= (and b!649543 res!421169) b!649536))

(assert (= (and b!649536 res!421154) b!649534))

(assert (= (and b!649534 res!421158) b!649535))

(assert (= (and b!649535 res!421164) b!649541))

(assert (= (and b!649541 res!421156) b!649538))

(assert (= (and b!649538 res!421167) b!649539))

(assert (= (and b!649538 c!74558) b!649532))

(assert (= (and b!649538 (not c!74558)) b!649551))

(assert (= (and b!649538 (not res!421165)) b!649552))

(assert (= (and b!649552 res!421166) b!649531))

(assert (= (and b!649531 (not res!421161)) b!649545))

(assert (= (and b!649545 res!421152) b!649546))

(assert (= (and b!649552 (not res!421151)) b!649553))

(assert (= (and b!649553 c!74557) b!649540))

(assert (= (and b!649553 (not c!74557)) b!649550))

(assert (= (and b!649553 (not res!421160)) b!649547))

(assert (= (and b!649547 res!421157) b!649548))

(declare-fun m!622835 () Bool)

(assert (=> b!649552 m!622835))

(declare-fun m!622837 () Bool)

(assert (=> b!649552 m!622837))

(declare-fun m!622839 () Bool)

(assert (=> b!649552 m!622839))

(assert (=> b!649548 m!622835))

(assert (=> b!649548 m!622835))

(declare-fun m!622841 () Bool)

(assert (=> b!649548 m!622841))

(assert (=> b!649549 m!622835))

(assert (=> b!649549 m!622835))

(declare-fun m!622843 () Bool)

(assert (=> b!649549 m!622843))

(assert (=> b!649547 m!622835))

(declare-fun m!622845 () Bool)

(assert (=> b!649547 m!622845))

(assert (=> b!649547 m!622835))

(assert (=> b!649547 m!622835))

(declare-fun m!622847 () Bool)

(assert (=> b!649547 m!622847))

(declare-fun m!622849 () Bool)

(assert (=> b!649547 m!622849))

(assert (=> b!649547 m!622835))

(declare-fun m!622851 () Bool)

(assert (=> b!649547 m!622851))

(declare-fun m!622853 () Bool)

(assert (=> b!649547 m!622853))

(declare-fun m!622855 () Bool)

(assert (=> b!649533 m!622855))

(declare-fun m!622857 () Bool)

(assert (=> b!649544 m!622857))

(declare-fun m!622859 () Bool)

(assert (=> b!649537 m!622859))

(assert (=> b!649546 m!622835))

(assert (=> b!649546 m!622835))

(assert (=> b!649546 m!622841))

(declare-fun m!622861 () Bool)

(assert (=> b!649543 m!622861))

(declare-fun m!622863 () Bool)

(assert (=> b!649534 m!622863))

(assert (=> b!649545 m!622835))

(assert (=> b!649545 m!622835))

(assert (=> b!649545 m!622845))

(assert (=> b!649531 m!622835))

(declare-fun m!622865 () Bool)

(assert (=> b!649541 m!622865))

(assert (=> b!649541 m!622835))

(assert (=> b!649541 m!622835))

(declare-fun m!622867 () Bool)

(assert (=> b!649541 m!622867))

(declare-fun m!622869 () Bool)

(assert (=> start!58900 m!622869))

(declare-fun m!622871 () Bool)

(assert (=> start!58900 m!622871))

(declare-fun m!622873 () Bool)

(assert (=> b!649538 m!622873))

(declare-fun m!622875 () Bool)

(assert (=> b!649538 m!622875))

(assert (=> b!649538 m!622835))

(declare-fun m!622877 () Bool)

(assert (=> b!649538 m!622877))

(assert (=> b!649538 m!622837))

(declare-fun m!622879 () Bool)

(assert (=> b!649538 m!622879))

(declare-fun m!622881 () Bool)

(assert (=> b!649538 m!622881))

(assert (=> b!649538 m!622835))

(declare-fun m!622883 () Bool)

(assert (=> b!649538 m!622883))

(assert (=> b!649535 m!622837))

(declare-fun m!622885 () Bool)

(assert (=> b!649535 m!622885))

(assert (=> b!649540 m!622835))

(declare-fun m!622887 () Bool)

(assert (=> b!649540 m!622887))

(declare-fun m!622889 () Bool)

(assert (=> b!649540 m!622889))

(assert (=> b!649540 m!622835))

(declare-fun m!622891 () Bool)

(assert (=> b!649540 m!622891))

(assert (=> b!649540 m!622835))

(declare-fun m!622893 () Bool)

(assert (=> b!649540 m!622893))

(assert (=> b!649540 m!622835))

(declare-fun m!622895 () Bool)

(assert (=> b!649540 m!622895))

(assert (=> b!649540 m!622853))

(assert (=> b!649540 m!622849))

(declare-fun m!622897 () Bool)

(assert (=> b!649536 m!622897))

(push 1)


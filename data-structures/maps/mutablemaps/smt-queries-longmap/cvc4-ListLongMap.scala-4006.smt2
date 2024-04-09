; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54520 () Bool)

(assert start!54520)

(declare-fun b!594799 () Bool)

(declare-fun res!380899 () Bool)

(declare-fun e!339849 () Bool)

(assert (=> b!594799 (=> (not res!380899) (not e!339849))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!594799 (= res!380899 (validKeyInArray!0 k!1786))))

(declare-fun b!594800 () Bool)

(declare-fun e!339853 () Bool)

(declare-fun e!339845 () Bool)

(assert (=> b!594800 (= e!339853 e!339845)))

(declare-fun res!380900 () Bool)

(assert (=> b!594800 (=> (not res!380900) (not e!339845))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!36943 0))(
  ( (array!36944 (arr!17732 (Array (_ BitVec 32) (_ BitVec 64))) (size!18096 (_ BitVec 32))) )
))
(declare-fun lt!270103 () array!36943)

(declare-fun a!2986 () array!36943)

(declare-fun arrayContainsKey!0 (array!36943 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!594800 (= res!380900 (arrayContainsKey!0 lt!270103 (select (arr!17732 a!2986) j!136) j!136))))

(declare-fun b!594802 () Bool)

(declare-fun e!339850 () Bool)

(declare-fun e!339841 () Bool)

(assert (=> b!594802 (= e!339850 e!339841)))

(declare-fun res!380903 () Bool)

(assert (=> b!594802 (=> res!380903 e!339841)))

(assert (=> b!594802 (= res!380903 (or (bvsge (size!18096 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18096 a!2986))))))

(assert (=> b!594802 (arrayContainsKey!0 lt!270103 (select (arr!17732 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-datatypes ((Unit!18660 0))(
  ( (Unit!18661) )
))
(declare-fun lt!270097 () Unit!18660)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36943 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18660)

(assert (=> b!594802 (= lt!270097 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270103 (select (arr!17732 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!594803 () Bool)

(declare-fun res!380898 () Bool)

(assert (=> b!594803 (=> res!380898 e!339841)))

(declare-datatypes ((List!11826 0))(
  ( (Nil!11823) (Cons!11822 (h!12867 (_ BitVec 64)) (t!18062 List!11826)) )
))
(declare-fun contains!2930 (List!11826 (_ BitVec 64)) Bool)

(assert (=> b!594803 (= res!380898 (contains!2930 Nil!11823 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594804 () Bool)

(declare-fun e!339844 () Unit!18660)

(declare-fun Unit!18662 () Unit!18660)

(assert (=> b!594804 (= e!339844 Unit!18662)))

(declare-fun b!594805 () Bool)

(declare-fun Unit!18663 () Unit!18660)

(assert (=> b!594805 (= e!339844 Unit!18663)))

(assert (=> b!594805 false))

(declare-fun b!594806 () Bool)

(assert (=> b!594806 (= e!339845 (arrayContainsKey!0 lt!270103 (select (arr!17732 a!2986) j!136) index!984))))

(declare-fun b!594807 () Bool)

(declare-fun res!380890 () Bool)

(assert (=> b!594807 (=> res!380890 e!339841)))

(assert (=> b!594807 (= res!380890 (contains!2930 Nil!11823 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594808 () Bool)

(declare-fun res!380891 () Bool)

(declare-fun e!339847 () Bool)

(assert (=> b!594808 (=> (not res!380891) (not e!339847))))

(declare-fun arrayNoDuplicates!0 (array!36943 (_ BitVec 32) List!11826) Bool)

(assert (=> b!594808 (= res!380891 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11823))))

(declare-fun b!594809 () Bool)

(assert (=> b!594809 (= e!339841 true)))

(declare-fun lt!270099 () Bool)

(assert (=> b!594809 (= lt!270099 (contains!2930 Nil!11823 k!1786))))

(declare-fun b!594801 () Bool)

(declare-fun res!380889 () Bool)

(assert (=> b!594801 (=> (not res!380889) (not e!339849))))

(assert (=> b!594801 (= res!380889 (validKeyInArray!0 (select (arr!17732 a!2986) j!136)))))

(declare-fun res!380908 () Bool)

(assert (=> start!54520 (=> (not res!380908) (not e!339849))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54520 (= res!380908 (validMask!0 mask!3053))))

(assert (=> start!54520 e!339849))

(assert (=> start!54520 true))

(declare-fun array_inv!13506 (array!36943) Bool)

(assert (=> start!54520 (array_inv!13506 a!2986)))

(declare-fun b!594810 () Bool)

(declare-fun res!380907 () Bool)

(assert (=> b!594810 (=> (not res!380907) (not e!339849))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!594810 (= res!380907 (and (= (size!18096 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18096 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18096 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!594811 () Bool)

(declare-fun e!339852 () Bool)

(assert (=> b!594811 (= e!339847 e!339852)))

(declare-fun res!380905 () Bool)

(assert (=> b!594811 (=> (not res!380905) (not e!339852))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!594811 (= res!380905 (= (select (store (arr!17732 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!594811 (= lt!270103 (array!36944 (store (arr!17732 a!2986) i!1108 k!1786) (size!18096 a!2986)))))

(declare-fun b!594812 () Bool)

(declare-fun e!339848 () Bool)

(assert (=> b!594812 (= e!339848 e!339853)))

(declare-fun res!380895 () Bool)

(assert (=> b!594812 (=> res!380895 e!339853)))

(declare-fun lt!270106 () (_ BitVec 64))

(declare-fun lt!270100 () (_ BitVec 64))

(assert (=> b!594812 (= res!380895 (or (not (= (select (arr!17732 a!2986) j!136) lt!270106)) (not (= (select (arr!17732 a!2986) j!136) lt!270100)) (bvsge j!136 index!984)))))

(declare-fun b!594813 () Bool)

(declare-fun res!380893 () Bool)

(assert (=> b!594813 (=> (not res!380893) (not e!339849))))

(assert (=> b!594813 (= res!380893 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!594814 () Bool)

(declare-fun res!380906 () Bool)

(assert (=> b!594814 (=> (not res!380906) (not e!339847))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!594814 (= res!380906 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17732 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!594815 () Bool)

(declare-fun res!380892 () Bool)

(assert (=> b!594815 (=> (not res!380892) (not e!339847))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36943 (_ BitVec 32)) Bool)

(assert (=> b!594815 (= res!380892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!594816 () Bool)

(declare-fun e!339842 () Bool)

(assert (=> b!594816 (= e!339842 e!339850)))

(declare-fun res!380902 () Bool)

(assert (=> b!594816 (=> res!380902 e!339850)))

(assert (=> b!594816 (= res!380902 (or (not (= (select (arr!17732 a!2986) j!136) lt!270106)) (not (= (select (arr!17732 a!2986) j!136) lt!270100)) (bvsge j!136 index!984)))))

(assert (=> b!594816 e!339848))

(declare-fun res!380904 () Bool)

(assert (=> b!594816 (=> (not res!380904) (not e!339848))))

(assert (=> b!594816 (= res!380904 (= lt!270100 (select (arr!17732 a!2986) j!136)))))

(assert (=> b!594816 (= lt!270100 (select (store (arr!17732 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!594817 () Bool)

(declare-fun e!339851 () Bool)

(assert (=> b!594817 (= e!339851 (not e!339842))))

(declare-fun res!380896 () Bool)

(assert (=> b!594817 (=> res!380896 e!339842)))

(declare-datatypes ((SeekEntryResult!6179 0))(
  ( (MissingZero!6179 (index!26963 (_ BitVec 32))) (Found!6179 (index!26964 (_ BitVec 32))) (Intermediate!6179 (undefined!6991 Bool) (index!26965 (_ BitVec 32)) (x!55792 (_ BitVec 32))) (Undefined!6179) (MissingVacant!6179 (index!26966 (_ BitVec 32))) )
))
(declare-fun lt!270105 () SeekEntryResult!6179)

(assert (=> b!594817 (= res!380896 (not (= lt!270105 (Found!6179 index!984))))))

(declare-fun lt!270102 () Unit!18660)

(assert (=> b!594817 (= lt!270102 e!339844)))

(declare-fun c!67322 () Bool)

(assert (=> b!594817 (= c!67322 (= lt!270105 Undefined!6179))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36943 (_ BitVec 32)) SeekEntryResult!6179)

(assert (=> b!594817 (= lt!270105 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270106 lt!270103 mask!3053))))

(declare-fun e!339843 () Bool)

(assert (=> b!594817 e!339843))

(declare-fun res!380909 () Bool)

(assert (=> b!594817 (=> (not res!380909) (not e!339843))))

(declare-fun lt!270104 () (_ BitVec 32))

(declare-fun lt!270101 () SeekEntryResult!6179)

(assert (=> b!594817 (= res!380909 (= lt!270101 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270104 vacantSpotIndex!68 lt!270106 lt!270103 mask!3053)))))

(assert (=> b!594817 (= lt!270101 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270104 vacantSpotIndex!68 (select (arr!17732 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!594817 (= lt!270106 (select (store (arr!17732 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!270107 () Unit!18660)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36943 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18660)

(assert (=> b!594817 (= lt!270107 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270104 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!594817 (= lt!270104 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!594818 () Bool)

(assert (=> b!594818 (= e!339849 e!339847)))

(declare-fun res!380897 () Bool)

(assert (=> b!594818 (=> (not res!380897) (not e!339847))))

(declare-fun lt!270098 () SeekEntryResult!6179)

(assert (=> b!594818 (= res!380897 (or (= lt!270098 (MissingZero!6179 i!1108)) (= lt!270098 (MissingVacant!6179 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36943 (_ BitVec 32)) SeekEntryResult!6179)

(assert (=> b!594818 (= lt!270098 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!594819 () Bool)

(declare-fun res!380894 () Bool)

(assert (=> b!594819 (=> res!380894 e!339841)))

(declare-fun noDuplicate!246 (List!11826) Bool)

(assert (=> b!594819 (= res!380894 (not (noDuplicate!246 Nil!11823)))))

(declare-fun b!594820 () Bool)

(assert (=> b!594820 (= e!339852 e!339851)))

(declare-fun res!380901 () Bool)

(assert (=> b!594820 (=> (not res!380901) (not e!339851))))

(declare-fun lt!270108 () SeekEntryResult!6179)

(assert (=> b!594820 (= res!380901 (and (= lt!270108 (Found!6179 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17732 a!2986) index!984) (select (arr!17732 a!2986) j!136))) (not (= (select (arr!17732 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!594820 (= lt!270108 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17732 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!594821 () Bool)

(assert (=> b!594821 (= e!339843 (= lt!270108 lt!270101))))

(assert (= (and start!54520 res!380908) b!594810))

(assert (= (and b!594810 res!380907) b!594801))

(assert (= (and b!594801 res!380889) b!594799))

(assert (= (and b!594799 res!380899) b!594813))

(assert (= (and b!594813 res!380893) b!594818))

(assert (= (and b!594818 res!380897) b!594815))

(assert (= (and b!594815 res!380892) b!594808))

(assert (= (and b!594808 res!380891) b!594814))

(assert (= (and b!594814 res!380906) b!594811))

(assert (= (and b!594811 res!380905) b!594820))

(assert (= (and b!594820 res!380901) b!594817))

(assert (= (and b!594817 res!380909) b!594821))

(assert (= (and b!594817 c!67322) b!594805))

(assert (= (and b!594817 (not c!67322)) b!594804))

(assert (= (and b!594817 (not res!380896)) b!594816))

(assert (= (and b!594816 res!380904) b!594812))

(assert (= (and b!594812 (not res!380895)) b!594800))

(assert (= (and b!594800 res!380900) b!594806))

(assert (= (and b!594816 (not res!380902)) b!594802))

(assert (= (and b!594802 (not res!380903)) b!594819))

(assert (= (and b!594819 (not res!380894)) b!594807))

(assert (= (and b!594807 (not res!380890)) b!594803))

(assert (= (and b!594803 (not res!380898)) b!594809))

(declare-fun m!572567 () Bool)

(assert (=> b!594816 m!572567))

(declare-fun m!572569 () Bool)

(assert (=> b!594816 m!572569))

(declare-fun m!572571 () Bool)

(assert (=> b!594816 m!572571))

(declare-fun m!572573 () Bool)

(assert (=> b!594817 m!572573))

(declare-fun m!572575 () Bool)

(assert (=> b!594817 m!572575))

(assert (=> b!594817 m!572567))

(assert (=> b!594817 m!572569))

(assert (=> b!594817 m!572567))

(declare-fun m!572577 () Bool)

(assert (=> b!594817 m!572577))

(declare-fun m!572579 () Bool)

(assert (=> b!594817 m!572579))

(declare-fun m!572581 () Bool)

(assert (=> b!594817 m!572581))

(declare-fun m!572583 () Bool)

(assert (=> b!594817 m!572583))

(assert (=> b!594800 m!572567))

(assert (=> b!594800 m!572567))

(declare-fun m!572585 () Bool)

(assert (=> b!594800 m!572585))

(declare-fun m!572587 () Bool)

(assert (=> b!594818 m!572587))

(declare-fun m!572589 () Bool)

(assert (=> b!594807 m!572589))

(declare-fun m!572591 () Bool)

(assert (=> b!594815 m!572591))

(assert (=> b!594801 m!572567))

(assert (=> b!594801 m!572567))

(declare-fun m!572593 () Bool)

(assert (=> b!594801 m!572593))

(assert (=> b!594812 m!572567))

(declare-fun m!572595 () Bool)

(assert (=> b!594819 m!572595))

(declare-fun m!572597 () Bool)

(assert (=> b!594803 m!572597))

(declare-fun m!572599 () Bool)

(assert (=> b!594799 m!572599))

(assert (=> b!594802 m!572567))

(assert (=> b!594802 m!572567))

(declare-fun m!572601 () Bool)

(assert (=> b!594802 m!572601))

(assert (=> b!594802 m!572567))

(declare-fun m!572603 () Bool)

(assert (=> b!594802 m!572603))

(assert (=> b!594811 m!572569))

(declare-fun m!572605 () Bool)

(assert (=> b!594811 m!572605))

(declare-fun m!572607 () Bool)

(assert (=> b!594808 m!572607))

(assert (=> b!594806 m!572567))

(assert (=> b!594806 m!572567))

(declare-fun m!572609 () Bool)

(assert (=> b!594806 m!572609))

(declare-fun m!572611 () Bool)

(assert (=> b!594814 m!572611))

(declare-fun m!572613 () Bool)

(assert (=> b!594813 m!572613))

(declare-fun m!572615 () Bool)

(assert (=> b!594809 m!572615))

(declare-fun m!572617 () Bool)

(assert (=> start!54520 m!572617))

(declare-fun m!572619 () Bool)

(assert (=> start!54520 m!572619))

(declare-fun m!572621 () Bool)

(assert (=> b!594820 m!572621))

(assert (=> b!594820 m!572567))

(assert (=> b!594820 m!572567))

(declare-fun m!572623 () Bool)

(assert (=> b!594820 m!572623))

(push 1)


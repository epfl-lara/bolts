; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57012 () Bool)

(assert start!57012)

(declare-fun b!630757 () Bool)

(declare-fun res!407904 () Bool)

(declare-fun e!360655 () Bool)

(assert (=> b!630757 (=> (not res!407904) (not e!360655))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38049 0))(
  ( (array!38050 (arr!18255 (Array (_ BitVec 32) (_ BitVec 64))) (size!18619 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38049)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!630757 (= res!407904 (and (= (size!18619 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18619 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18619 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!630758 () Bool)

(declare-datatypes ((Unit!21166 0))(
  ( (Unit!21167) )
))
(declare-fun e!360659 () Unit!21166)

(declare-fun Unit!21168 () Unit!21166)

(assert (=> b!630758 (= e!360659 Unit!21168)))

(assert (=> b!630758 false))

(declare-fun b!630759 () Bool)

(declare-fun res!407905 () Bool)

(declare-fun e!360660 () Bool)

(assert (=> b!630759 (=> (not res!407905) (not e!360660))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!630759 (= res!407905 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18255 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!630760 () Bool)

(declare-fun Unit!21169 () Unit!21166)

(assert (=> b!630760 (= e!360659 Unit!21169)))

(declare-fun b!630761 () Bool)

(declare-fun res!407897 () Bool)

(assert (=> b!630761 (=> (not res!407897) (not e!360660))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38049 (_ BitVec 32)) Bool)

(assert (=> b!630761 (= res!407897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!630762 () Bool)

(declare-fun res!407902 () Bool)

(assert (=> b!630762 (=> (not res!407902) (not e!360655))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!630762 (= res!407902 (validKeyInArray!0 (select (arr!18255 a!2986) j!136)))))

(declare-fun b!630763 () Bool)

(declare-fun e!360657 () Bool)

(declare-datatypes ((SeekEntryResult!6702 0))(
  ( (MissingZero!6702 (index!29097 (_ BitVec 32))) (Found!6702 (index!29098 (_ BitVec 32))) (Intermediate!6702 (undefined!7514 Bool) (index!29099 (_ BitVec 32)) (x!57865 (_ BitVec 32))) (Undefined!6702) (MissingVacant!6702 (index!29100 (_ BitVec 32))) )
))
(declare-fun lt!291415 () SeekEntryResult!6702)

(declare-fun lt!291417 () SeekEntryResult!6702)

(assert (=> b!630763 (= e!360657 (= lt!291415 lt!291417))))

(declare-fun b!630764 () Bool)

(declare-fun e!360658 () Bool)

(assert (=> b!630764 (= e!360660 e!360658)))

(declare-fun res!407899 () Bool)

(assert (=> b!630764 (=> (not res!407899) (not e!360658))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!630764 (= res!407899 (= (select (store (arr!18255 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!291414 () array!38049)

(assert (=> b!630764 (= lt!291414 (array!38050 (store (arr!18255 a!2986) i!1108 k!1786) (size!18619 a!2986)))))

(declare-fun b!630765 () Bool)

(declare-fun res!407906 () Bool)

(assert (=> b!630765 (=> (not res!407906) (not e!360660))))

(declare-datatypes ((List!12349 0))(
  ( (Nil!12346) (Cons!12345 (h!13390 (_ BitVec 64)) (t!18585 List!12349)) )
))
(declare-fun arrayNoDuplicates!0 (array!38049 (_ BitVec 32) List!12349) Bool)

(assert (=> b!630765 (= res!407906 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12346))))

(declare-fun b!630766 () Bool)

(declare-fun e!360656 () Bool)

(assert (=> b!630766 (= e!360656 (not true))))

(declare-fun lt!291413 () Unit!21166)

(assert (=> b!630766 (= lt!291413 e!360659)))

(declare-fun lt!291416 () (_ BitVec 64))

(declare-fun c!71798 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38049 (_ BitVec 32)) SeekEntryResult!6702)

(assert (=> b!630766 (= c!71798 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291416 lt!291414 mask!3053) Undefined!6702))))

(assert (=> b!630766 e!360657))

(declare-fun res!407900 () Bool)

(assert (=> b!630766 (=> (not res!407900) (not e!360657))))

(declare-fun lt!291412 () (_ BitVec 32))

(assert (=> b!630766 (= res!407900 (= lt!291417 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291412 vacantSpotIndex!68 lt!291416 lt!291414 mask!3053)))))

(assert (=> b!630766 (= lt!291417 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291412 vacantSpotIndex!68 (select (arr!18255 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!630766 (= lt!291416 (select (store (arr!18255 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!291411 () Unit!21166)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38049 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21166)

(assert (=> b!630766 (= lt!291411 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291412 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!630766 (= lt!291412 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!630767 () Bool)

(assert (=> b!630767 (= e!360658 e!360656)))

(declare-fun res!407898 () Bool)

(assert (=> b!630767 (=> (not res!407898) (not e!360656))))

(assert (=> b!630767 (= res!407898 (and (= lt!291415 (Found!6702 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18255 a!2986) index!984) (select (arr!18255 a!2986) j!136))) (not (= (select (arr!18255 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!630767 (= lt!291415 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18255 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!630768 () Bool)

(assert (=> b!630768 (= e!360655 e!360660)))

(declare-fun res!407901 () Bool)

(assert (=> b!630768 (=> (not res!407901) (not e!360660))))

(declare-fun lt!291410 () SeekEntryResult!6702)

(assert (=> b!630768 (= res!407901 (or (= lt!291410 (MissingZero!6702 i!1108)) (= lt!291410 (MissingVacant!6702 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38049 (_ BitVec 32)) SeekEntryResult!6702)

(assert (=> b!630768 (= lt!291410 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!630769 () Bool)

(declare-fun res!407903 () Bool)

(assert (=> b!630769 (=> (not res!407903) (not e!360655))))

(declare-fun arrayContainsKey!0 (array!38049 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!630769 (= res!407903 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!630770 () Bool)

(declare-fun res!407896 () Bool)

(assert (=> b!630770 (=> (not res!407896) (not e!360655))))

(assert (=> b!630770 (= res!407896 (validKeyInArray!0 k!1786))))

(declare-fun res!407895 () Bool)

(assert (=> start!57012 (=> (not res!407895) (not e!360655))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57012 (= res!407895 (validMask!0 mask!3053))))

(assert (=> start!57012 e!360655))

(assert (=> start!57012 true))

(declare-fun array_inv!14029 (array!38049) Bool)

(assert (=> start!57012 (array_inv!14029 a!2986)))

(assert (= (and start!57012 res!407895) b!630757))

(assert (= (and b!630757 res!407904) b!630762))

(assert (= (and b!630762 res!407902) b!630770))

(assert (= (and b!630770 res!407896) b!630769))

(assert (= (and b!630769 res!407903) b!630768))

(assert (= (and b!630768 res!407901) b!630761))

(assert (= (and b!630761 res!407897) b!630765))

(assert (= (and b!630765 res!407906) b!630759))

(assert (= (and b!630759 res!407905) b!630764))

(assert (= (and b!630764 res!407899) b!630767))

(assert (= (and b!630767 res!407898) b!630766))

(assert (= (and b!630766 res!407900) b!630763))

(assert (= (and b!630766 c!71798) b!630758))

(assert (= (and b!630766 (not c!71798)) b!630760))

(declare-fun m!605769 () Bool)

(assert (=> b!630764 m!605769))

(declare-fun m!605771 () Bool)

(assert (=> b!630764 m!605771))

(declare-fun m!605773 () Bool)

(assert (=> b!630762 m!605773))

(assert (=> b!630762 m!605773))

(declare-fun m!605775 () Bool)

(assert (=> b!630762 m!605775))

(declare-fun m!605777 () Bool)

(assert (=> b!630759 m!605777))

(declare-fun m!605779 () Bool)

(assert (=> b!630769 m!605779))

(declare-fun m!605781 () Bool)

(assert (=> b!630761 m!605781))

(declare-fun m!605783 () Bool)

(assert (=> start!57012 m!605783))

(declare-fun m!605785 () Bool)

(assert (=> start!57012 m!605785))

(declare-fun m!605787 () Bool)

(assert (=> b!630770 m!605787))

(declare-fun m!605789 () Bool)

(assert (=> b!630768 m!605789))

(declare-fun m!605791 () Bool)

(assert (=> b!630765 m!605791))

(declare-fun m!605793 () Bool)

(assert (=> b!630766 m!605793))

(declare-fun m!605795 () Bool)

(assert (=> b!630766 m!605795))

(assert (=> b!630766 m!605773))

(declare-fun m!605797 () Bool)

(assert (=> b!630766 m!605797))

(assert (=> b!630766 m!605773))

(declare-fun m!605799 () Bool)

(assert (=> b!630766 m!605799))

(declare-fun m!605801 () Bool)

(assert (=> b!630766 m!605801))

(declare-fun m!605803 () Bool)

(assert (=> b!630766 m!605803))

(assert (=> b!630766 m!605769))

(declare-fun m!605805 () Bool)

(assert (=> b!630767 m!605805))

(assert (=> b!630767 m!605773))

(assert (=> b!630767 m!605773))

(declare-fun m!605807 () Bool)

(assert (=> b!630767 m!605807))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53966 () Bool)

(assert start!53966)

(declare-fun b!588760 () Bool)

(declare-fun res!376499 () Bool)

(declare-fun e!336173 () Bool)

(assert (=> b!588760 (=> (not res!376499) (not e!336173))))

(declare-datatypes ((array!36764 0))(
  ( (array!36765 (arr!17651 (Array (_ BitVec 32) (_ BitVec 64))) (size!18015 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36764)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588760 (= res!376499 (validKeyInArray!0 (select (arr!17651 a!2986) j!136)))))

(declare-fun b!588761 () Bool)

(declare-fun res!376494 () Bool)

(assert (=> b!588761 (=> (not res!376494) (not e!336173))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36764 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588761 (= res!376494 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588762 () Bool)

(declare-fun res!376502 () Bool)

(declare-fun e!336169 () Bool)

(assert (=> b!588762 (=> (not res!376502) (not e!336169))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!588762 (= res!376502 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17651 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588763 () Bool)

(declare-fun e!336174 () Bool)

(assert (=> b!588763 (= e!336169 e!336174)))

(declare-fun res!376495 () Bool)

(assert (=> b!588763 (=> (not res!376495) (not e!336174))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!588763 (= res!376495 (= (select (store (arr!17651 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!267031 () array!36764)

(assert (=> b!588763 (= lt!267031 (array!36765 (store (arr!17651 a!2986) i!1108 k!1786) (size!18015 a!2986)))))

(declare-fun b!588764 () Bool)

(declare-fun res!376497 () Bool)

(assert (=> b!588764 (=> (not res!376497) (not e!336169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36764 (_ BitVec 32)) Bool)

(assert (=> b!588764 (= res!376497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!588765 () Bool)

(declare-datatypes ((Unit!18336 0))(
  ( (Unit!18337) )
))
(declare-fun e!336171 () Unit!18336)

(declare-fun Unit!18338 () Unit!18336)

(assert (=> b!588765 (= e!336171 Unit!18338)))

(declare-fun b!588766 () Bool)

(assert (=> b!588766 (= e!336173 e!336169)))

(declare-fun res!376498 () Bool)

(assert (=> b!588766 (=> (not res!376498) (not e!336169))))

(declare-datatypes ((SeekEntryResult!6098 0))(
  ( (MissingZero!6098 (index!26622 (_ BitVec 32))) (Found!6098 (index!26623 (_ BitVec 32))) (Intermediate!6098 (undefined!6910 Bool) (index!26624 (_ BitVec 32)) (x!55443 (_ BitVec 32))) (Undefined!6098) (MissingVacant!6098 (index!26625 (_ BitVec 32))) )
))
(declare-fun lt!267028 () SeekEntryResult!6098)

(assert (=> b!588766 (= res!376498 (or (= lt!267028 (MissingZero!6098 i!1108)) (= lt!267028 (MissingVacant!6098 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36764 (_ BitVec 32)) SeekEntryResult!6098)

(assert (=> b!588766 (= lt!267028 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!588767 () Bool)

(declare-fun res!376496 () Bool)

(assert (=> b!588767 (=> (not res!376496) (not e!336169))))

(declare-datatypes ((List!11745 0))(
  ( (Nil!11742) (Cons!11741 (h!12786 (_ BitVec 64)) (t!17981 List!11745)) )
))
(declare-fun arrayNoDuplicates!0 (array!36764 (_ BitVec 32) List!11745) Bool)

(assert (=> b!588767 (= res!376496 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11742))))

(declare-fun b!588768 () Bool)

(declare-fun Unit!18339 () Unit!18336)

(assert (=> b!588768 (= e!336171 Unit!18339)))

(assert (=> b!588768 false))

(declare-fun res!376505 () Bool)

(assert (=> start!53966 (=> (not res!376505) (not e!336173))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53966 (= res!376505 (validMask!0 mask!3053))))

(assert (=> start!53966 e!336173))

(assert (=> start!53966 true))

(declare-fun array_inv!13425 (array!36764) Bool)

(assert (=> start!53966 (array_inv!13425 a!2986)))

(declare-fun b!588769 () Bool)

(declare-fun res!376501 () Bool)

(assert (=> b!588769 (=> (not res!376501) (not e!336173))))

(assert (=> b!588769 (= res!376501 (and (= (size!18015 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18015 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18015 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!588770 () Bool)

(declare-fun res!376504 () Bool)

(assert (=> b!588770 (=> (not res!376504) (not e!336173))))

(assert (=> b!588770 (= res!376504 (validKeyInArray!0 k!1786))))

(declare-fun b!588771 () Bool)

(declare-fun e!336170 () Bool)

(assert (=> b!588771 (= e!336170 (not true))))

(declare-fun lt!267032 () Unit!18336)

(assert (=> b!588771 (= lt!267032 e!336171)))

(declare-fun lt!267027 () (_ BitVec 64))

(declare-fun c!66500 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36764 (_ BitVec 32)) SeekEntryResult!6098)

(assert (=> b!588771 (= c!66500 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267027 lt!267031 mask!3053) Undefined!6098))))

(declare-fun e!336175 () Bool)

(assert (=> b!588771 e!336175))

(declare-fun res!376500 () Bool)

(assert (=> b!588771 (=> (not res!376500) (not e!336175))))

(declare-fun lt!267029 () (_ BitVec 32))

(declare-fun lt!267025 () SeekEntryResult!6098)

(assert (=> b!588771 (= res!376500 (= lt!267025 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267029 vacantSpotIndex!68 lt!267027 lt!267031 mask!3053)))))

(assert (=> b!588771 (= lt!267025 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267029 vacantSpotIndex!68 (select (arr!17651 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!588771 (= lt!267027 (select (store (arr!17651 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267030 () Unit!18336)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36764 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18336)

(assert (=> b!588771 (= lt!267030 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267029 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588771 (= lt!267029 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588772 () Bool)

(declare-fun lt!267026 () SeekEntryResult!6098)

(assert (=> b!588772 (= e!336175 (= lt!267026 lt!267025))))

(declare-fun b!588773 () Bool)

(assert (=> b!588773 (= e!336174 e!336170)))

(declare-fun res!376503 () Bool)

(assert (=> b!588773 (=> (not res!376503) (not e!336170))))

(assert (=> b!588773 (= res!376503 (and (= lt!267026 (Found!6098 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17651 a!2986) index!984) (select (arr!17651 a!2986) j!136))) (not (= (select (arr!17651 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!588773 (= lt!267026 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17651 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53966 res!376505) b!588769))

(assert (= (and b!588769 res!376501) b!588760))

(assert (= (and b!588760 res!376499) b!588770))

(assert (= (and b!588770 res!376504) b!588761))

(assert (= (and b!588761 res!376494) b!588766))

(assert (= (and b!588766 res!376498) b!588764))

(assert (= (and b!588764 res!376497) b!588767))

(assert (= (and b!588767 res!376496) b!588762))

(assert (= (and b!588762 res!376502) b!588763))

(assert (= (and b!588763 res!376495) b!588773))

(assert (= (and b!588773 res!376503) b!588771))

(assert (= (and b!588771 res!376500) b!588772))

(assert (= (and b!588771 c!66500) b!588768))

(assert (= (and b!588771 (not c!66500)) b!588765))

(declare-fun m!567363 () Bool)

(assert (=> b!588764 m!567363))

(declare-fun m!567365 () Bool)

(assert (=> b!588762 m!567365))

(declare-fun m!567367 () Bool)

(assert (=> b!588761 m!567367))

(declare-fun m!567369 () Bool)

(assert (=> b!588766 m!567369))

(declare-fun m!567371 () Bool)

(assert (=> start!53966 m!567371))

(declare-fun m!567373 () Bool)

(assert (=> start!53966 m!567373))

(declare-fun m!567375 () Bool)

(assert (=> b!588771 m!567375))

(declare-fun m!567377 () Bool)

(assert (=> b!588771 m!567377))

(declare-fun m!567379 () Bool)

(assert (=> b!588771 m!567379))

(declare-fun m!567381 () Bool)

(assert (=> b!588771 m!567381))

(declare-fun m!567383 () Bool)

(assert (=> b!588771 m!567383))

(assert (=> b!588771 m!567379))

(declare-fun m!567385 () Bool)

(assert (=> b!588771 m!567385))

(declare-fun m!567387 () Bool)

(assert (=> b!588771 m!567387))

(declare-fun m!567389 () Bool)

(assert (=> b!588771 m!567389))

(declare-fun m!567391 () Bool)

(assert (=> b!588770 m!567391))

(declare-fun m!567393 () Bool)

(assert (=> b!588773 m!567393))

(assert (=> b!588773 m!567379))

(assert (=> b!588773 m!567379))

(declare-fun m!567395 () Bool)

(assert (=> b!588773 m!567395))

(assert (=> b!588763 m!567381))

(declare-fun m!567397 () Bool)

(assert (=> b!588763 m!567397))

(declare-fun m!567399 () Bool)

(assert (=> b!588767 m!567399))

(assert (=> b!588760 m!567379))

(assert (=> b!588760 m!567379))

(declare-fun m!567401 () Bool)

(assert (=> b!588760 m!567401))

(push 1)


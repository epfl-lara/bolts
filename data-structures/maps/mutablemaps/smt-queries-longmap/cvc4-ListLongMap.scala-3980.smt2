; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53972 () Bool)

(assert start!53972)

(declare-fun b!588886 () Bool)

(declare-fun res!376610 () Bool)

(declare-fun e!336236 () Bool)

(assert (=> b!588886 (=> (not res!376610) (not e!336236))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36770 0))(
  ( (array!36771 (arr!17654 (Array (_ BitVec 32) (_ BitVec 64))) (size!18018 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36770)

(assert (=> b!588886 (= res!376610 (and (= (size!18018 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18018 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18018 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!588887 () Bool)

(declare-fun e!336238 () Bool)

(declare-datatypes ((SeekEntryResult!6101 0))(
  ( (MissingZero!6101 (index!26634 (_ BitVec 32))) (Found!6101 (index!26635 (_ BitVec 32))) (Intermediate!6101 (undefined!6913 Bool) (index!26636 (_ BitVec 32)) (x!55454 (_ BitVec 32))) (Undefined!6101) (MissingVacant!6101 (index!26637 (_ BitVec 32))) )
))
(declare-fun lt!267098 () SeekEntryResult!6101)

(declare-fun lt!267099 () SeekEntryResult!6101)

(assert (=> b!588887 (= e!336238 (= lt!267098 lt!267099))))

(declare-fun b!588888 () Bool)

(declare-fun res!376608 () Bool)

(declare-fun e!336232 () Bool)

(assert (=> b!588888 (=> (not res!376608) (not e!336232))))

(declare-datatypes ((List!11748 0))(
  ( (Nil!11745) (Cons!11744 (h!12789 (_ BitVec 64)) (t!17984 List!11748)) )
))
(declare-fun arrayNoDuplicates!0 (array!36770 (_ BitVec 32) List!11748) Bool)

(assert (=> b!588888 (= res!376608 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11745))))

(declare-fun b!588889 () Bool)

(declare-fun res!376604 () Bool)

(assert (=> b!588889 (=> (not res!376604) (not e!336232))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!588889 (= res!376604 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17654 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588890 () Bool)

(declare-fun res!376606 () Bool)

(assert (=> b!588890 (=> (not res!376606) (not e!336236))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588890 (= res!376606 (validKeyInArray!0 k!1786))))

(declare-fun b!588891 () Bool)

(declare-datatypes ((Unit!18348 0))(
  ( (Unit!18349) )
))
(declare-fun e!336233 () Unit!18348)

(declare-fun Unit!18350 () Unit!18348)

(assert (=> b!588891 (= e!336233 Unit!18350)))

(assert (=> b!588891 false))

(declare-fun b!588892 () Bool)

(declare-fun e!336234 () Bool)

(assert (=> b!588892 (= e!336234 (not true))))

(declare-fun lt!267104 () Unit!18348)

(assert (=> b!588892 (= lt!267104 e!336233)))

(declare-fun lt!267101 () (_ BitVec 64))

(declare-fun c!66509 () Bool)

(declare-fun lt!267102 () array!36770)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36770 (_ BitVec 32)) SeekEntryResult!6101)

(assert (=> b!588892 (= c!66509 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267101 lt!267102 mask!3053) Undefined!6101))))

(assert (=> b!588892 e!336238))

(declare-fun res!376613 () Bool)

(assert (=> b!588892 (=> (not res!376613) (not e!336238))))

(declare-fun lt!267103 () (_ BitVec 32))

(assert (=> b!588892 (= res!376613 (= lt!267099 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267103 vacantSpotIndex!68 lt!267101 lt!267102 mask!3053)))))

(assert (=> b!588892 (= lt!267099 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267103 vacantSpotIndex!68 (select (arr!17654 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!588892 (= lt!267101 (select (store (arr!17654 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267100 () Unit!18348)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36770 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18348)

(assert (=> b!588892 (= lt!267100 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267103 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588892 (= lt!267103 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588893 () Bool)

(declare-fun res!376607 () Bool)

(assert (=> b!588893 (=> (not res!376607) (not e!336236))))

(declare-fun arrayContainsKey!0 (array!36770 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588893 (= res!376607 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588895 () Bool)

(declare-fun Unit!18351 () Unit!18348)

(assert (=> b!588895 (= e!336233 Unit!18351)))

(declare-fun b!588896 () Bool)

(declare-fun e!336235 () Bool)

(assert (=> b!588896 (= e!336235 e!336234)))

(declare-fun res!376611 () Bool)

(assert (=> b!588896 (=> (not res!376611) (not e!336234))))

(assert (=> b!588896 (= res!376611 (and (= lt!267098 (Found!6101 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17654 a!2986) index!984) (select (arr!17654 a!2986) j!136))) (not (= (select (arr!17654 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!588896 (= lt!267098 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17654 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!588897 () Bool)

(declare-fun res!376605 () Bool)

(assert (=> b!588897 (=> (not res!376605) (not e!336236))))

(assert (=> b!588897 (= res!376605 (validKeyInArray!0 (select (arr!17654 a!2986) j!136)))))

(declare-fun b!588898 () Bool)

(declare-fun res!376603 () Bool)

(assert (=> b!588898 (=> (not res!376603) (not e!336232))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36770 (_ BitVec 32)) Bool)

(assert (=> b!588898 (= res!376603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!588899 () Bool)

(assert (=> b!588899 (= e!336236 e!336232)))

(declare-fun res!376612 () Bool)

(assert (=> b!588899 (=> (not res!376612) (not e!336232))))

(declare-fun lt!267097 () SeekEntryResult!6101)

(assert (=> b!588899 (= res!376612 (or (= lt!267097 (MissingZero!6101 i!1108)) (= lt!267097 (MissingVacant!6101 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36770 (_ BitVec 32)) SeekEntryResult!6101)

(assert (=> b!588899 (= lt!267097 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!376602 () Bool)

(assert (=> start!53972 (=> (not res!376602) (not e!336236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53972 (= res!376602 (validMask!0 mask!3053))))

(assert (=> start!53972 e!336236))

(assert (=> start!53972 true))

(declare-fun array_inv!13428 (array!36770) Bool)

(assert (=> start!53972 (array_inv!13428 a!2986)))

(declare-fun b!588894 () Bool)

(assert (=> b!588894 (= e!336232 e!336235)))

(declare-fun res!376609 () Bool)

(assert (=> b!588894 (=> (not res!376609) (not e!336235))))

(assert (=> b!588894 (= res!376609 (= (select (store (arr!17654 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!588894 (= lt!267102 (array!36771 (store (arr!17654 a!2986) i!1108 k!1786) (size!18018 a!2986)))))

(assert (= (and start!53972 res!376602) b!588886))

(assert (= (and b!588886 res!376610) b!588897))

(assert (= (and b!588897 res!376605) b!588890))

(assert (= (and b!588890 res!376606) b!588893))

(assert (= (and b!588893 res!376607) b!588899))

(assert (= (and b!588899 res!376612) b!588898))

(assert (= (and b!588898 res!376603) b!588888))

(assert (= (and b!588888 res!376608) b!588889))

(assert (= (and b!588889 res!376604) b!588894))

(assert (= (and b!588894 res!376609) b!588896))

(assert (= (and b!588896 res!376611) b!588892))

(assert (= (and b!588892 res!376613) b!588887))

(assert (= (and b!588892 c!66509) b!588891))

(assert (= (and b!588892 (not c!66509)) b!588895))

(declare-fun m!567483 () Bool)

(assert (=> start!53972 m!567483))

(declare-fun m!567485 () Bool)

(assert (=> start!53972 m!567485))

(declare-fun m!567487 () Bool)

(assert (=> b!588889 m!567487))

(declare-fun m!567489 () Bool)

(assert (=> b!588894 m!567489))

(declare-fun m!567491 () Bool)

(assert (=> b!588894 m!567491))

(declare-fun m!567493 () Bool)

(assert (=> b!588897 m!567493))

(assert (=> b!588897 m!567493))

(declare-fun m!567495 () Bool)

(assert (=> b!588897 m!567495))

(declare-fun m!567497 () Bool)

(assert (=> b!588888 m!567497))

(declare-fun m!567499 () Bool)

(assert (=> b!588893 m!567499))

(assert (=> b!588892 m!567493))

(assert (=> b!588892 m!567489))

(declare-fun m!567501 () Bool)

(assert (=> b!588892 m!567501))

(assert (=> b!588892 m!567493))

(declare-fun m!567503 () Bool)

(assert (=> b!588892 m!567503))

(declare-fun m!567505 () Bool)

(assert (=> b!588892 m!567505))

(declare-fun m!567507 () Bool)

(assert (=> b!588892 m!567507))

(declare-fun m!567509 () Bool)

(assert (=> b!588892 m!567509))

(declare-fun m!567511 () Bool)

(assert (=> b!588892 m!567511))

(declare-fun m!567513 () Bool)

(assert (=> b!588898 m!567513))

(declare-fun m!567515 () Bool)

(assert (=> b!588896 m!567515))

(assert (=> b!588896 m!567493))

(assert (=> b!588896 m!567493))

(declare-fun m!567517 () Bool)

(assert (=> b!588896 m!567517))

(declare-fun m!567519 () Bool)

(assert (=> b!588899 m!567519))

(declare-fun m!567521 () Bool)

(assert (=> b!588890 m!567521))

(push 1)


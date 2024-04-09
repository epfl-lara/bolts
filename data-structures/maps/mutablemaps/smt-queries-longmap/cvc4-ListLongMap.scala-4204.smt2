; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57460 () Bool)

(assert start!57460)

(declare-fun b!635734 () Bool)

(declare-fun e!363649 () Bool)

(declare-datatypes ((List!12420 0))(
  ( (Nil!12417) (Cons!12416 (h!13461 (_ BitVec 64)) (t!18656 List!12420)) )
))
(declare-fun noDuplicate!378 (List!12420) Bool)

(assert (=> b!635734 (= e!363649 (noDuplicate!378 Nil!12417))))

(declare-fun b!635735 () Bool)

(declare-fun e!363654 () Bool)

(assert (=> b!635735 (= e!363654 e!363649)))

(declare-fun res!411465 () Bool)

(assert (=> b!635735 (=> res!411465 e!363649)))

(declare-datatypes ((array!38206 0))(
  ( (array!38207 (arr!18326 (Array (_ BitVec 32) (_ BitVec 64))) (size!18690 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38206)

(assert (=> b!635735 (= res!411465 (or (bvsge (size!18690 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18690 a!2986))))))

(declare-fun lt!294036 () array!38206)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38206 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!635735 (arrayContainsKey!0 lt!294036 (select (arr!18326 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-datatypes ((Unit!21450 0))(
  ( (Unit!21451) )
))
(declare-fun lt!294033 () Unit!21450)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38206 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21450)

(assert (=> b!635735 (= lt!294033 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294036 (select (arr!18326 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!635736 () Bool)

(declare-fun e!363653 () Bool)

(assert (=> b!635736 (= e!363653 (arrayContainsKey!0 lt!294036 (select (arr!18326 a!2986) j!136) index!984))))

(declare-fun b!635737 () Bool)

(declare-fun res!411464 () Bool)

(declare-fun e!363648 () Bool)

(assert (=> b!635737 (=> (not res!411464) (not e!363648))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!635737 (= res!411464 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!635738 () Bool)

(declare-fun e!363652 () Unit!21450)

(declare-fun Unit!21452 () Unit!21450)

(assert (=> b!635738 (= e!363652 Unit!21452)))

(assert (=> b!635738 false))

(declare-fun b!635739 () Bool)

(declare-fun e!363651 () Bool)

(declare-fun e!363650 () Bool)

(assert (=> b!635739 (= e!363651 (not e!363650))))

(declare-fun res!411458 () Bool)

(assert (=> b!635739 (=> res!411458 e!363650)))

(declare-datatypes ((SeekEntryResult!6773 0))(
  ( (MissingZero!6773 (index!29396 (_ BitVec 32))) (Found!6773 (index!29397 (_ BitVec 32))) (Intermediate!6773 (undefined!7585 Bool) (index!29398 (_ BitVec 32)) (x!58165 (_ BitVec 32))) (Undefined!6773) (MissingVacant!6773 (index!29399 (_ BitVec 32))) )
))
(declare-fun lt!294030 () SeekEntryResult!6773)

(assert (=> b!635739 (= res!411458 (not (= lt!294030 (Found!6773 index!984))))))

(declare-fun lt!294031 () Unit!21450)

(assert (=> b!635739 (= lt!294031 e!363652)))

(declare-fun c!72506 () Bool)

(assert (=> b!635739 (= c!72506 (= lt!294030 Undefined!6773))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!294034 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38206 (_ BitVec 32)) SeekEntryResult!6773)

(assert (=> b!635739 (= lt!294030 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294034 lt!294036 mask!3053))))

(declare-fun e!363646 () Bool)

(assert (=> b!635739 e!363646))

(declare-fun res!411470 () Bool)

(assert (=> b!635739 (=> (not res!411470) (not e!363646))))

(declare-fun lt!294039 () (_ BitVec 32))

(declare-fun lt!294029 () SeekEntryResult!6773)

(assert (=> b!635739 (= res!411470 (= lt!294029 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294039 vacantSpotIndex!68 lt!294034 lt!294036 mask!3053)))))

(assert (=> b!635739 (= lt!294029 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294039 vacantSpotIndex!68 (select (arr!18326 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!635739 (= lt!294034 (select (store (arr!18326 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!294037 () Unit!21450)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38206 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21450)

(assert (=> b!635739 (= lt!294037 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294039 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!635739 (= lt!294039 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!635740 () Bool)

(declare-fun e!363656 () Bool)

(declare-fun e!363657 () Bool)

(assert (=> b!635740 (= e!363656 e!363657)))

(declare-fun res!411468 () Bool)

(assert (=> b!635740 (=> res!411468 e!363657)))

(declare-fun lt!294032 () (_ BitVec 64))

(assert (=> b!635740 (= res!411468 (or (not (= (select (arr!18326 a!2986) j!136) lt!294034)) (not (= (select (arr!18326 a!2986) j!136) lt!294032)) (bvsge j!136 index!984)))))

(declare-fun res!411460 () Bool)

(assert (=> start!57460 (=> (not res!411460) (not e!363648))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57460 (= res!411460 (validMask!0 mask!3053))))

(assert (=> start!57460 e!363648))

(assert (=> start!57460 true))

(declare-fun array_inv!14100 (array!38206) Bool)

(assert (=> start!57460 (array_inv!14100 a!2986)))

(declare-fun b!635741 () Bool)

(declare-fun Unit!21453 () Unit!21450)

(assert (=> b!635741 (= e!363652 Unit!21453)))

(declare-fun b!635742 () Bool)

(declare-fun res!411459 () Bool)

(declare-fun e!363658 () Bool)

(assert (=> b!635742 (=> (not res!411459) (not e!363658))))

(declare-fun arrayNoDuplicates!0 (array!38206 (_ BitVec 32) List!12420) Bool)

(assert (=> b!635742 (= res!411459 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12417))))

(declare-fun b!635743 () Bool)

(declare-fun res!411463 () Bool)

(assert (=> b!635743 (=> (not res!411463) (not e!363648))))

(assert (=> b!635743 (= res!411463 (and (= (size!18690 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18690 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18690 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!635744 () Bool)

(declare-fun res!411471 () Bool)

(assert (=> b!635744 (=> (not res!411471) (not e!363658))))

(assert (=> b!635744 (= res!411471 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18326 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!635745 () Bool)

(declare-fun res!411462 () Bool)

(assert (=> b!635745 (=> (not res!411462) (not e!363648))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!635745 (= res!411462 (validKeyInArray!0 (select (arr!18326 a!2986) j!136)))))

(declare-fun b!635746 () Bool)

(declare-fun res!411457 () Bool)

(assert (=> b!635746 (=> (not res!411457) (not e!363648))))

(assert (=> b!635746 (= res!411457 (validKeyInArray!0 k!1786))))

(declare-fun b!635747 () Bool)

(declare-fun e!363647 () Bool)

(assert (=> b!635747 (= e!363658 e!363647)))

(declare-fun res!411456 () Bool)

(assert (=> b!635747 (=> (not res!411456) (not e!363647))))

(assert (=> b!635747 (= res!411456 (= (select (store (arr!18326 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635747 (= lt!294036 (array!38207 (store (arr!18326 a!2986) i!1108 k!1786) (size!18690 a!2986)))))

(declare-fun b!635748 () Bool)

(assert (=> b!635748 (= e!363648 e!363658)))

(declare-fun res!411466 () Bool)

(assert (=> b!635748 (=> (not res!411466) (not e!363658))))

(declare-fun lt!294035 () SeekEntryResult!6773)

(assert (=> b!635748 (= res!411466 (or (= lt!294035 (MissingZero!6773 i!1108)) (= lt!294035 (MissingVacant!6773 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38206 (_ BitVec 32)) SeekEntryResult!6773)

(assert (=> b!635748 (= lt!294035 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!635749 () Bool)

(assert (=> b!635749 (= e!363650 e!363654)))

(declare-fun res!411473 () Bool)

(assert (=> b!635749 (=> res!411473 e!363654)))

(assert (=> b!635749 (= res!411473 (or (not (= (select (arr!18326 a!2986) j!136) lt!294034)) (not (= (select (arr!18326 a!2986) j!136) lt!294032)) (bvsge j!136 index!984)))))

(assert (=> b!635749 e!363656))

(declare-fun res!411467 () Bool)

(assert (=> b!635749 (=> (not res!411467) (not e!363656))))

(assert (=> b!635749 (= res!411467 (= lt!294032 (select (arr!18326 a!2986) j!136)))))

(assert (=> b!635749 (= lt!294032 (select (store (arr!18326 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!635750 () Bool)

(declare-fun res!411461 () Bool)

(assert (=> b!635750 (=> (not res!411461) (not e!363658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38206 (_ BitVec 32)) Bool)

(assert (=> b!635750 (= res!411461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!635751 () Bool)

(assert (=> b!635751 (= e!363657 e!363653)))

(declare-fun res!411472 () Bool)

(assert (=> b!635751 (=> (not res!411472) (not e!363653))))

(assert (=> b!635751 (= res!411472 (arrayContainsKey!0 lt!294036 (select (arr!18326 a!2986) j!136) j!136))))

(declare-fun b!635752 () Bool)

(declare-fun lt!294038 () SeekEntryResult!6773)

(assert (=> b!635752 (= e!363646 (= lt!294038 lt!294029))))

(declare-fun b!635753 () Bool)

(assert (=> b!635753 (= e!363647 e!363651)))

(declare-fun res!411469 () Bool)

(assert (=> b!635753 (=> (not res!411469) (not e!363651))))

(assert (=> b!635753 (= res!411469 (and (= lt!294038 (Found!6773 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18326 a!2986) index!984) (select (arr!18326 a!2986) j!136))) (not (= (select (arr!18326 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!635753 (= lt!294038 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18326 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!57460 res!411460) b!635743))

(assert (= (and b!635743 res!411463) b!635745))

(assert (= (and b!635745 res!411462) b!635746))

(assert (= (and b!635746 res!411457) b!635737))

(assert (= (and b!635737 res!411464) b!635748))

(assert (= (and b!635748 res!411466) b!635750))

(assert (= (and b!635750 res!411461) b!635742))

(assert (= (and b!635742 res!411459) b!635744))

(assert (= (and b!635744 res!411471) b!635747))

(assert (= (and b!635747 res!411456) b!635753))

(assert (= (and b!635753 res!411469) b!635739))

(assert (= (and b!635739 res!411470) b!635752))

(assert (= (and b!635739 c!72506) b!635738))

(assert (= (and b!635739 (not c!72506)) b!635741))

(assert (= (and b!635739 (not res!411458)) b!635749))

(assert (= (and b!635749 res!411467) b!635740))

(assert (= (and b!635740 (not res!411468)) b!635751))

(assert (= (and b!635751 res!411472) b!635736))

(assert (= (and b!635749 (not res!411473)) b!635735))

(assert (= (and b!635735 (not res!411465)) b!635734))

(declare-fun m!610097 () Bool)

(assert (=> b!635736 m!610097))

(assert (=> b!635736 m!610097))

(declare-fun m!610099 () Bool)

(assert (=> b!635736 m!610099))

(declare-fun m!610101 () Bool)

(assert (=> b!635734 m!610101))

(assert (=> b!635745 m!610097))

(assert (=> b!635745 m!610097))

(declare-fun m!610103 () Bool)

(assert (=> b!635745 m!610103))

(declare-fun m!610105 () Bool)

(assert (=> b!635748 m!610105))

(declare-fun m!610107 () Bool)

(assert (=> start!57460 m!610107))

(declare-fun m!610109 () Bool)

(assert (=> start!57460 m!610109))

(assert (=> b!635749 m!610097))

(declare-fun m!610111 () Bool)

(assert (=> b!635749 m!610111))

(declare-fun m!610113 () Bool)

(assert (=> b!635749 m!610113))

(assert (=> b!635747 m!610111))

(declare-fun m!610115 () Bool)

(assert (=> b!635747 m!610115))

(declare-fun m!610117 () Bool)

(assert (=> b!635746 m!610117))

(assert (=> b!635751 m!610097))

(assert (=> b!635751 m!610097))

(declare-fun m!610119 () Bool)

(assert (=> b!635751 m!610119))

(declare-fun m!610121 () Bool)

(assert (=> b!635739 m!610121))

(declare-fun m!610123 () Bool)

(assert (=> b!635739 m!610123))

(assert (=> b!635739 m!610097))

(declare-fun m!610125 () Bool)

(assert (=> b!635739 m!610125))

(declare-fun m!610127 () Bool)

(assert (=> b!635739 m!610127))

(assert (=> b!635739 m!610097))

(declare-fun m!610129 () Bool)

(assert (=> b!635739 m!610129))

(declare-fun m!610131 () Bool)

(assert (=> b!635739 m!610131))

(assert (=> b!635739 m!610111))

(assert (=> b!635735 m!610097))

(assert (=> b!635735 m!610097))

(declare-fun m!610133 () Bool)

(assert (=> b!635735 m!610133))

(assert (=> b!635735 m!610097))

(declare-fun m!610135 () Bool)

(assert (=> b!635735 m!610135))

(declare-fun m!610137 () Bool)

(assert (=> b!635750 m!610137))

(declare-fun m!610139 () Bool)

(assert (=> b!635742 m!610139))

(declare-fun m!610141 () Bool)

(assert (=> b!635744 m!610141))

(assert (=> b!635740 m!610097))

(declare-fun m!610143 () Bool)

(assert (=> b!635737 m!610143))

(declare-fun m!610145 () Bool)

(assert (=> b!635753 m!610145))

(assert (=> b!635753 m!610097))

(assert (=> b!635753 m!610097))

(declare-fun m!610147 () Bool)

(assert (=> b!635753 m!610147))

(push 1)

(assert (not b!635736))

(assert (not b!635748))

(assert (not b!635751))

(assert (not b!635746))

(assert (not b!635745))

(assert (not start!57460))

(assert (not b!635739))

(assert (not b!635753))

(assert (not b!635742))

(assert (not b!635735))

(assert (not b!635737))

(assert (not b!635734))

(assert (not b!635750))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!89705 () Bool)

(declare-fun e!363710 () Bool)

(assert (=> d!89705 e!363710))

(declare-fun res!411501 () Bool)

(assert (=> d!89705 (=> (not res!411501) (not e!363710))))

(assert (=> d!89705 (= res!411501 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18690 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18690 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18690 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18690 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18690 a!2986))))))

(declare-fun lt!294066 () Unit!21450)

(declare-fun choose!9 (array!38206 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21450)

(assert (=> d!89705 (= lt!294066 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294039 vacantSpotIndex!68 mask!3053))))

(assert (=> d!89705 (validMask!0 mask!3053)))

(assert (=> d!89705 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294039 vacantSpotIndex!68 mask!3053) lt!294066)))

(declare-fun b!635829 () Bool)

(assert (=> b!635829 (= e!363710 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294039 vacantSpotIndex!68 (select (arr!18326 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294039 vacantSpotIndex!68 (select (store (arr!18326 a!2986) i!1108 k!1786) j!136) (array!38207 (store (arr!18326 a!2986) i!1108 k!1786) (size!18690 a!2986)) mask!3053)))))

(assert (= (and d!89705 res!411501) b!635829))

(declare-fun m!610195 () Bool)

(assert (=> d!89705 m!610195))

(assert (=> d!89705 m!610107))

(assert (=> b!635829 m!610123))

(declare-fun m!610199 () Bool)

(assert (=> b!635829 m!610199))

(assert (=> b!635829 m!610097))

(assert (=> b!635829 m!610111))

(assert (=> b!635829 m!610123))

(assert (=> b!635829 m!610097))

(assert (=> b!635829 m!610129))

(assert (=> b!635739 d!89705))

(declare-fun e!363747 () SeekEntryResult!6773)

(declare-fun b!635875 () Bool)

(assert (=> b!635875 (= e!363747 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!294039 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!294034 lt!294036 mask!3053))))

(declare-fun b!635876 () Bool)

(declare-fun e!363748 () SeekEntryResult!6773)

(assert (=> b!635876 (= e!363748 Undefined!6773)))

(declare-fun b!635877 () Bool)

(assert (=> b!635877 (= e!363747 (MissingVacant!6773 vacantSpotIndex!68))))

(declare-fun b!635878 () Bool)

(declare-fun e!363749 () SeekEntryResult!6773)

(assert (=> b!635878 (= e!363748 e!363749)))

(declare-fun c!72541 () Bool)

(declare-fun lt!294075 () (_ BitVec 64))

(assert (=> b!635878 (= c!72541 (= lt!294075 lt!294034))))

(declare-fun d!89717 () Bool)

(declare-fun lt!294074 () SeekEntryResult!6773)

(assert (=> d!89717 (and (or (is-Undefined!6773 lt!294074) (not (is-Found!6773 lt!294074)) (and (bvsge (index!29397 lt!294074) #b00000000000000000000000000000000) (bvslt (index!29397 lt!294074) (size!18690 lt!294036)))) (or (is-Undefined!6773 lt!294074) (is-Found!6773 lt!294074) (not (is-MissingVacant!6773 lt!294074)) (not (= (index!29399 lt!294074) vacantSpotIndex!68)) (and (bvsge (index!29399 lt!294074) #b00000000000000000000000000000000) (bvslt (index!29399 lt!294074) (size!18690 lt!294036)))) (or (is-Undefined!6773 lt!294074) (ite (is-Found!6773 lt!294074) (= (select (arr!18326 lt!294036) (index!29397 lt!294074)) lt!294034) (and (is-MissingVacant!6773 lt!294074) (= (index!29399 lt!294074) vacantSpotIndex!68) (= (select (arr!18326 lt!294036) (index!29399 lt!294074)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89717 (= lt!294074 e!363748)))

(declare-fun c!72540 () Bool)

(assert (=> d!89717 (= c!72540 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89717 (= lt!294075 (select (arr!18326 lt!294036) lt!294039))))

(assert (=> d!89717 (validMask!0 mask!3053)))

(assert (=> d!89717 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294039 vacantSpotIndex!68 lt!294034 lt!294036 mask!3053) lt!294074)))

(declare-fun b!635879 () Bool)

(declare-fun c!72542 () Bool)

(assert (=> b!635879 (= c!72542 (= lt!294075 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635879 (= e!363749 e!363747)))

(declare-fun b!635880 () Bool)

(assert (=> b!635880 (= e!363749 (Found!6773 lt!294039))))

(assert (= (and d!89717 c!72540) b!635876))

(assert (= (and d!89717 (not c!72540)) b!635878))

(assert (= (and b!635878 c!72541) b!635880))

(assert (= (and b!635878 (not c!72541)) b!635879))

(assert (= (and b!635879 c!72542) b!635877))

(assert (= (and b!635879 (not c!72542)) b!635875))

(declare-fun m!610225 () Bool)

(assert (=> b!635875 m!610225))

(assert (=> b!635875 m!610225))

(declare-fun m!610227 () Bool)

(assert (=> b!635875 m!610227))

(declare-fun m!610229 () Bool)

(assert (=> d!89717 m!610229))

(declare-fun m!610231 () Bool)

(assert (=> d!89717 m!610231))

(declare-fun m!610233 () Bool)

(assert (=> d!89717 m!610233))

(assert (=> d!89717 m!610107))

(assert (=> b!635739 d!89717))

(declare-fun d!89739 () Bool)

(declare-fun lt!294087 () (_ BitVec 32))

(assert (=> d!89739 (and (bvsge lt!294087 #b00000000000000000000000000000000) (bvslt lt!294087 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89739 (= lt!294087 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!89739 (validMask!0 mask!3053)))

(assert (=> d!89739 (= (nextIndex!0 index!984 x!910 mask!3053) lt!294087)))

(declare-fun bs!19102 () Bool)

(assert (= bs!19102 d!89739))

(declare-fun m!610241 () Bool)

(assert (=> bs!19102 m!610241))

(assert (=> bs!19102 m!610107))

(assert (=> b!635739 d!89739))

(declare-fun b!635897 () Bool)

(declare-fun e!363760 () SeekEntryResult!6773)

(assert (=> b!635897 (= e!363760 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!294039 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18326 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!635898 () Bool)

(declare-fun e!363761 () SeekEntryResult!6773)

(assert (=> b!635898 (= e!363761 Undefined!6773)))

(declare-fun b!635899 () Bool)

(assert (=> b!635899 (= e!363760 (MissingVacant!6773 vacantSpotIndex!68))))

(declare-fun b!635900 () Bool)

(declare-fun e!363762 () SeekEntryResult!6773)

(assert (=> b!635900 (= e!363761 e!363762)))

(declare-fun c!72550 () Bool)

(declare-fun lt!294089 () (_ BitVec 64))

(assert (=> b!635900 (= c!72550 (= lt!294089 (select (arr!18326 a!2986) j!136)))))

(declare-fun d!89747 () Bool)

(declare-fun lt!294088 () SeekEntryResult!6773)

(assert (=> d!89747 (and (or (is-Undefined!6773 lt!294088) (not (is-Found!6773 lt!294088)) (and (bvsge (index!29397 lt!294088) #b00000000000000000000000000000000) (bvslt (index!29397 lt!294088) (size!18690 a!2986)))) (or (is-Undefined!6773 lt!294088) (is-Found!6773 lt!294088) (not (is-MissingVacant!6773 lt!294088)) (not (= (index!29399 lt!294088) vacantSpotIndex!68)) (and (bvsge (index!29399 lt!294088) #b00000000000000000000000000000000) (bvslt (index!29399 lt!294088) (size!18690 a!2986)))) (or (is-Undefined!6773 lt!294088) (ite (is-Found!6773 lt!294088) (= (select (arr!18326 a!2986) (index!29397 lt!294088)) (select (arr!18326 a!2986) j!136)) (and (is-MissingVacant!6773 lt!294088) (= (index!29399 lt!294088) vacantSpotIndex!68) (= (select (arr!18326 a!2986) (index!29399 lt!294088)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89747 (= lt!294088 e!363761)))

(declare-fun c!72549 () Bool)

(assert (=> d!89747 (= c!72549 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89747 (= lt!294089 (select (arr!18326 a!2986) lt!294039))))

(assert (=> d!89747 (validMask!0 mask!3053)))

(assert (=> d!89747 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294039 vacantSpotIndex!68 (select (arr!18326 a!2986) j!136) a!2986 mask!3053) lt!294088)))

(declare-fun b!635901 () Bool)

(declare-fun c!72551 () Bool)

(assert (=> b!635901 (= c!72551 (= lt!294089 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635901 (= e!363762 e!363760)))

(declare-fun b!635902 () Bool)

(assert (=> b!635902 (= e!363762 (Found!6773 lt!294039))))

(assert (= (and d!89747 c!72549) b!635898))

(assert (= (and d!89747 (not c!72549)) b!635900))

(assert (= (and b!635900 c!72550) b!635902))

(assert (= (and b!635900 (not c!72550)) b!635901))

(assert (= (and b!635901 c!72551) b!635899))

(assert (= (and b!635901 (not c!72551)) b!635897))

(assert (=> b!635897 m!610225))

(assert (=> b!635897 m!610225))

(assert (=> b!635897 m!610097))

(declare-fun m!610243 () Bool)

(assert (=> b!635897 m!610243))

(declare-fun m!610245 () Bool)

(assert (=> d!89747 m!610245))

(declare-fun m!610247 () Bool)

(assert (=> d!89747 m!610247))

(declare-fun m!610249 () Bool)

(assert (=> d!89747 m!610249))

(assert (=> d!89747 m!610107))

(assert (=> b!635739 d!89747))

(declare-fun b!635903 () Bool)

(declare-fun e!363763 () SeekEntryResult!6773)

(assert (=> b!635903 (= e!363763 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!294034 lt!294036 mask!3053))))

(declare-fun b!635904 () Bool)

(declare-fun e!363764 () SeekEntryResult!6773)

(assert (=> b!635904 (= e!363764 Undefined!6773)))

(declare-fun b!635905 () Bool)

(assert (=> b!635905 (= e!363763 (MissingVacant!6773 vacantSpotIndex!68))))

(declare-fun b!635906 () Bool)

(declare-fun e!363765 () SeekEntryResult!6773)

(assert (=> b!635906 (= e!363764 e!363765)))

(declare-fun c!72553 () Bool)

(declare-fun lt!294091 () (_ BitVec 64))

(assert (=> b!635906 (= c!72553 (= lt!294091 lt!294034))))

(declare-fun lt!294090 () SeekEntryResult!6773)

(declare-fun d!89749 () Bool)

(assert (=> d!89749 (and (or (is-Undefined!6773 lt!294090) (not (is-Found!6773 lt!294090)) (and (bvsge (index!29397 lt!294090) #b00000000000000000000000000000000) (bvslt (index!29397 lt!294090) (size!18690 lt!294036)))) (or (is-Undefined!6773 lt!294090) (is-Found!6773 lt!294090) (not (is-MissingVacant!6773 lt!294090)) (not (= (index!29399 lt!294090) vacantSpotIndex!68)) (and (bvsge (index!29399 lt!294090) #b00000000000000000000000000000000) (bvslt (index!29399 lt!294090) (size!18690 lt!294036)))) (or (is-Undefined!6773 lt!294090) (ite (is-Found!6773 lt!294090) (= (select (arr!18326 lt!294036) (index!29397 lt!294090)) lt!294034) (and (is-MissingVacant!6773 lt!294090) (= (index!29399 lt!294090) vacantSpotIndex!68) (= (select (arr!18326 lt!294036) (index!29399 lt!294090)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89749 (= lt!294090 e!363764)))

(declare-fun c!72552 () Bool)

(assert (=> d!89749 (= c!72552 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!89749 (= lt!294091 (select (arr!18326 lt!294036) index!984))))

(assert (=> d!89749 (validMask!0 mask!3053)))

(assert (=> d!89749 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294034 lt!294036 mask!3053) lt!294090)))

(declare-fun b!635907 () Bool)

(declare-fun c!72554 () Bool)

(assert (=> b!635907 (= c!72554 (= lt!294091 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635907 (= e!363765 e!363763)))

(declare-fun b!635908 () Bool)

(assert (=> b!635908 (= e!363765 (Found!6773 index!984))))

(assert (= (and d!89749 c!72552) b!635904))

(assert (= (and d!89749 (not c!72552)) b!635906))

(assert (= (and b!635906 c!72553) b!635908))

(assert (= (and b!635906 (not c!72553)) b!635907))

(assert (= (and b!635907 c!72554) b!635905))

(assert (= (and b!635907 (not c!72554)) b!635903))

(assert (=> b!635903 m!610121))

(assert (=> b!635903 m!610121))

(declare-fun m!610251 () Bool)

(assert (=> b!635903 m!610251))

(declare-fun m!610253 () Bool)

(assert (=> d!89749 m!610253))

(declare-fun m!610255 () Bool)

(assert (=> d!89749 m!610255))

(declare-fun m!610257 () Bool)


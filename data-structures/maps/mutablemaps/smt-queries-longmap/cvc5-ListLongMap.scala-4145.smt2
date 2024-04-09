; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56520 () Bool)

(assert start!56520)

(declare-fun b!626015 () Bool)

(declare-fun res!404041 () Bool)

(declare-fun e!358696 () Bool)

(assert (=> b!626015 (=> (not res!404041) (not e!358696))))

(declare-datatypes ((array!37818 0))(
  ( (array!37819 (arr!18147 (Array (_ BitVec 32) (_ BitVec 64))) (size!18511 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37818)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626015 (= res!404041 (validKeyInArray!0 (select (arr!18147 a!2986) j!136)))))

(declare-fun b!626016 () Bool)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun e!358695 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!626016 (= e!358695 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18147 a!2986) index!984) (select (arr!18147 a!2986) j!136))) (= (select (arr!18147 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626017 () Bool)

(declare-fun res!404048 () Bool)

(assert (=> b!626017 (=> (not res!404048) (not e!358696))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!626017 (= res!404048 (validKeyInArray!0 k!1786))))

(declare-fun b!626018 () Bool)

(declare-fun res!404039 () Bool)

(assert (=> b!626018 (=> (not res!404039) (not e!358695))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!626018 (= res!404039 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18147 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18147 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626019 () Bool)

(declare-fun res!404047 () Bool)

(assert (=> b!626019 (=> (not res!404047) (not e!358695))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37818 (_ BitVec 32)) Bool)

(assert (=> b!626019 (= res!404047 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626020 () Bool)

(assert (=> b!626020 (= e!358696 e!358695)))

(declare-fun res!404040 () Bool)

(assert (=> b!626020 (=> (not res!404040) (not e!358695))))

(declare-datatypes ((SeekEntryResult!6594 0))(
  ( (MissingZero!6594 (index!28659 (_ BitVec 32))) (Found!6594 (index!28660 (_ BitVec 32))) (Intermediate!6594 (undefined!7406 Bool) (index!28661 (_ BitVec 32)) (x!57436 (_ BitVec 32))) (Undefined!6594) (MissingVacant!6594 (index!28662 (_ BitVec 32))) )
))
(declare-fun lt!289956 () SeekEntryResult!6594)

(assert (=> b!626020 (= res!404040 (or (= lt!289956 (MissingZero!6594 i!1108)) (= lt!289956 (MissingVacant!6594 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37818 (_ BitVec 32)) SeekEntryResult!6594)

(assert (=> b!626020 (= lt!289956 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!626021 () Bool)

(declare-fun res!404045 () Bool)

(assert (=> b!626021 (=> (not res!404045) (not e!358696))))

(declare-fun arrayContainsKey!0 (array!37818 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626021 (= res!404045 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!404043 () Bool)

(assert (=> start!56520 (=> (not res!404043) (not e!358696))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56520 (= res!404043 (validMask!0 mask!3053))))

(assert (=> start!56520 e!358696))

(assert (=> start!56520 true))

(declare-fun array_inv!13921 (array!37818) Bool)

(assert (=> start!56520 (array_inv!13921 a!2986)))

(declare-fun b!626022 () Bool)

(declare-fun res!404042 () Bool)

(assert (=> b!626022 (=> (not res!404042) (not e!358695))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37818 (_ BitVec 32)) SeekEntryResult!6594)

(assert (=> b!626022 (= res!404042 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18147 a!2986) j!136) a!2986 mask!3053) (Found!6594 j!136)))))

(declare-fun b!626023 () Bool)

(declare-fun res!404044 () Bool)

(assert (=> b!626023 (=> (not res!404044) (not e!358695))))

(declare-datatypes ((List!12241 0))(
  ( (Nil!12238) (Cons!12237 (h!13282 (_ BitVec 64)) (t!18477 List!12241)) )
))
(declare-fun arrayNoDuplicates!0 (array!37818 (_ BitVec 32) List!12241) Bool)

(assert (=> b!626023 (= res!404044 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12238))))

(declare-fun b!626024 () Bool)

(declare-fun res!404046 () Bool)

(assert (=> b!626024 (=> (not res!404046) (not e!358696))))

(assert (=> b!626024 (= res!404046 (and (= (size!18511 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18511 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18511 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!56520 res!404043) b!626024))

(assert (= (and b!626024 res!404046) b!626015))

(assert (= (and b!626015 res!404041) b!626017))

(assert (= (and b!626017 res!404048) b!626021))

(assert (= (and b!626021 res!404045) b!626020))

(assert (= (and b!626020 res!404040) b!626019))

(assert (= (and b!626019 res!404047) b!626023))

(assert (= (and b!626023 res!404044) b!626018))

(assert (= (and b!626018 res!404039) b!626022))

(assert (= (and b!626022 res!404042) b!626016))

(declare-fun m!601539 () Bool)

(assert (=> start!56520 m!601539))

(declare-fun m!601541 () Bool)

(assert (=> start!56520 m!601541))

(declare-fun m!601543 () Bool)

(assert (=> b!626020 m!601543))

(declare-fun m!601545 () Bool)

(assert (=> b!626021 m!601545))

(declare-fun m!601547 () Bool)

(assert (=> b!626016 m!601547))

(declare-fun m!601549 () Bool)

(assert (=> b!626016 m!601549))

(assert (=> b!626022 m!601549))

(assert (=> b!626022 m!601549))

(declare-fun m!601551 () Bool)

(assert (=> b!626022 m!601551))

(declare-fun m!601553 () Bool)

(assert (=> b!626017 m!601553))

(assert (=> b!626015 m!601549))

(assert (=> b!626015 m!601549))

(declare-fun m!601555 () Bool)

(assert (=> b!626015 m!601555))

(declare-fun m!601557 () Bool)

(assert (=> b!626019 m!601557))

(declare-fun m!601559 () Bool)

(assert (=> b!626018 m!601559))

(declare-fun m!601561 () Bool)

(assert (=> b!626018 m!601561))

(declare-fun m!601563 () Bool)

(assert (=> b!626018 m!601563))

(declare-fun m!601565 () Bool)

(assert (=> b!626023 m!601565))

(push 1)

(assert (not b!626022))

(assert (not b!626023))

(assert (not b!626019))

(assert (not b!626015))

(assert (not b!626021))

(assert (not b!626017))

(assert (not b!626020))

(assert (not start!56520))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!626113 () Bool)

(declare-fun e!358732 () Bool)

(declare-fun e!358734 () Bool)

(assert (=> b!626113 (= e!358732 e!358734)))

(declare-fun c!71366 () Bool)

(assert (=> b!626113 (= c!71366 (validKeyInArray!0 (select (arr!18147 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33230 () Bool)

(declare-fun call!33233 () Bool)

(assert (=> bm!33230 (= call!33233 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!71366 (Cons!12237 (select (arr!18147 a!2986) #b00000000000000000000000000000000) Nil!12238) Nil!12238)))))

(declare-fun b!626114 () Bool)

(assert (=> b!626114 (= e!358734 call!33233)))

(declare-fun d!88771 () Bool)

(declare-fun res!404115 () Bool)

(declare-fun e!358735 () Bool)

(assert (=> d!88771 (=> res!404115 e!358735)))

(assert (=> d!88771 (= res!404115 (bvsge #b00000000000000000000000000000000 (size!18511 a!2986)))))

(assert (=> d!88771 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12238) e!358735)))

(declare-fun b!626115 () Bool)

(assert (=> b!626115 (= e!358735 e!358732)))

(declare-fun res!404116 () Bool)

(assert (=> b!626115 (=> (not res!404116) (not e!358732))))

(declare-fun e!358733 () Bool)

(assert (=> b!626115 (= res!404116 (not e!358733))))

(declare-fun res!404117 () Bool)

(assert (=> b!626115 (=> (not res!404117) (not e!358733))))

(assert (=> b!626115 (= res!404117 (validKeyInArray!0 (select (arr!18147 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!626116 () Bool)

(declare-fun contains!3082 (List!12241 (_ BitVec 64)) Bool)

(assert (=> b!626116 (= e!358733 (contains!3082 Nil!12238 (select (arr!18147 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!626117 () Bool)

(assert (=> b!626117 (= e!358734 call!33233)))

(assert (= (and d!88771 (not res!404115)) b!626115))

(assert (= (and b!626115 res!404117) b!626116))

(assert (= (and b!626115 res!404116) b!626113))

(assert (= (and b!626113 c!71366) b!626114))

(assert (= (and b!626113 (not c!71366)) b!626117))

(assert (= (or b!626114 b!626117) bm!33230))

(declare-fun m!601631 () Bool)

(assert (=> b!626113 m!601631))

(assert (=> b!626113 m!601631))

(declare-fun m!601633 () Bool)

(assert (=> b!626113 m!601633))

(assert (=> bm!33230 m!601631))

(declare-fun m!601635 () Bool)

(assert (=> bm!33230 m!601635))

(assert (=> b!626115 m!601631))

(assert (=> b!626115 m!601631))

(assert (=> b!626115 m!601633))

(assert (=> b!626116 m!601631))

(assert (=> b!626116 m!601631))

(declare-fun m!601637 () Bool)

(assert (=> b!626116 m!601637))

(assert (=> b!626023 d!88771))

(declare-fun b!626141 () Bool)

(declare-fun e!358755 () Bool)

(declare-fun e!358756 () Bool)

(assert (=> b!626141 (= e!358755 e!358756)))

(declare-fun c!71372 () Bool)

(assert (=> b!626141 (= c!71372 (validKeyInArray!0 (select (arr!18147 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!88781 () Bool)

(declare-fun res!404131 () Bool)

(assert (=> d!88781 (=> res!404131 e!358755)))

(assert (=> d!88781 (= res!404131 (bvsge #b00000000000000000000000000000000 (size!18511 a!2986)))))

(assert (=> d!88781 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!358755)))

(declare-fun bm!33236 () Bool)

(declare-fun call!33239 () Bool)

(assert (=> bm!33236 (= call!33239 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!626142 () Bool)

(assert (=> b!626142 (= e!358756 call!33239)))

(declare-fun b!626143 () Bool)

(declare-fun e!358754 () Bool)

(assert (=> b!626143 (= e!358756 e!358754)))

(declare-fun lt!289975 () (_ BitVec 64))

(assert (=> b!626143 (= lt!289975 (select (arr!18147 a!2986) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!21076 0))(
  ( (Unit!21077) )
))
(declare-fun lt!289976 () Unit!21076)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37818 (_ BitVec 64) (_ BitVec 32)) Unit!21076)

(assert (=> b!626143 (= lt!289976 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!289975 #b00000000000000000000000000000000))))

(assert (=> b!626143 (arrayContainsKey!0 a!2986 lt!289975 #b00000000000000000000000000000000)))

(declare-fun lt!289977 () Unit!21076)

(assert (=> b!626143 (= lt!289977 lt!289976)))

(declare-fun res!404132 () Bool)

(assert (=> b!626143 (= res!404132 (= (seekEntryOrOpen!0 (select (arr!18147 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6594 #b00000000000000000000000000000000)))))

(assert (=> b!626143 (=> (not res!404132) (not e!358754))))

(declare-fun b!626144 () Bool)

(assert (=> b!626144 (= e!358754 call!33239)))

(assert (= (and d!88781 (not res!404131)) b!626141))

(assert (= (and b!626141 c!71372) b!626143))

(assert (= (and b!626141 (not c!71372)) b!626142))

(assert (= (and b!626143 res!404132) b!626144))

(assert (= (or b!626144 b!626142) bm!33236))

(assert (=> b!626141 m!601631))

(assert (=> b!626141 m!601631))

(assert (=> b!626141 m!601633))

(declare-fun m!601647 () Bool)

(assert (=> bm!33236 m!601647))

(assert (=> b!626143 m!601631))

(declare-fun m!601649 () Bool)

(assert (=> b!626143 m!601649))

(declare-fun m!601651 () Bool)

(assert (=> b!626143 m!601651))

(assert (=> b!626143 m!601631))

(declare-fun m!601653 () Bool)

(assert (=> b!626143 m!601653))

(assert (=> b!626019 d!88781))

(declare-fun b!626208 () Bool)

(declare-fun e!358794 () SeekEntryResult!6594)

(assert (=> b!626208 (= e!358794 Undefined!6594)))

(declare-fun d!88785 () Bool)

(declare-fun lt!290002 () SeekEntryResult!6594)

(assert (=> d!88785 (and (or (is-Undefined!6594 lt!290002) (not (is-Found!6594 lt!290002)) (and (bvsge (index!28660 lt!290002) #b00000000000000000000000000000000) (bvslt (index!28660 lt!290002) (size!18511 a!2986)))) (or (is-Undefined!6594 lt!290002) (is-Found!6594 lt!290002) (not (is-MissingZero!6594 lt!290002)) (and (bvsge (index!28659 lt!290002) #b00000000000000000000000000000000) (bvslt (index!28659 lt!290002) (size!18511 a!2986)))) (or (is-Undefined!6594 lt!290002) (is-Found!6594 lt!290002) (is-MissingZero!6594 lt!290002) (not (is-MissingVacant!6594 lt!290002)) (and (bvsge (index!28662 lt!290002) #b00000000000000000000000000000000) (bvslt (index!28662 lt!290002) (size!18511 a!2986)))) (or (is-Undefined!6594 lt!290002) (ite (is-Found!6594 lt!290002) (= (select (arr!18147 a!2986) (index!28660 lt!290002)) k!1786) (ite (is-MissingZero!6594 lt!290002) (= (select (arr!18147 a!2986) (index!28659 lt!290002)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6594 lt!290002) (= (select (arr!18147 a!2986) (index!28662 lt!290002)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!88785 (= lt!290002 e!358794)))

(declare-fun c!71400 () Bool)

(declare-fun lt!290004 () SeekEntryResult!6594)

(assert (=> d!88785 (= c!71400 (and (is-Intermediate!6594 lt!290004) (undefined!7406 lt!290004)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37818 (_ BitVec 32)) SeekEntryResult!6594)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88785 (= lt!290004 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!88785 (validMask!0 mask!3053)))

(assert (=> d!88785 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!290002)))

(declare-fun b!626209 () Bool)

(declare-fun e!358793 () SeekEntryResult!6594)

(assert (=> b!626209 (= e!358793 (Found!6594 (index!28661 lt!290004)))))

(declare-fun b!626210 () Bool)

(assert (=> b!626210 (= e!358794 e!358793)))

(declare-fun lt!290003 () (_ BitVec 64))

(assert (=> b!626210 (= lt!290003 (select (arr!18147 a!2986) (index!28661 lt!290004)))))

(declare-fun c!71401 () Bool)

(assert (=> b!626210 (= c!71401 (= lt!290003 k!1786))))

(declare-fun e!358795 () SeekEntryResult!6594)

(declare-fun b!626211 () Bool)

(assert (=> b!626211 (= e!358795 (seekKeyOrZeroReturnVacant!0 (x!57436 lt!290004) (index!28661 lt!290004) (index!28661 lt!290004) k!1786 a!2986 mask!3053))))

(declare-fun b!626212 () Bool)

(assert (=> b!626212 (= e!358795 (MissingZero!6594 (index!28661 lt!290004)))))

(declare-fun b!626213 () Bool)

(declare-fun c!71402 () Bool)

(assert (=> b!626213 (= c!71402 (= lt!290003 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!626213 (= e!358793 e!358795)))

(assert (= (and d!88785 c!71400) b!626208))

(assert (= (and d!88785 (not c!71400)) b!626210))

(assert (= (and b!626210 c!71401) b!626209))

(assert (= (and b!626210 (not c!71401)) b!626213))

(assert (= (and b!626213 c!71402) b!626212))

(assert (= (and b!626213 (not c!71402)) b!626211))

(declare-fun m!601691 () Bool)

(assert (=> d!88785 m!601691))

(assert (=> d!88785 m!601539))

(declare-fun m!601693 () Bool)

(assert (=> d!88785 m!601693))

(declare-fun m!601695 () Bool)

(assert (=> d!88785 m!601695))

(declare-fun m!601697 () Bool)

(assert (=> d!88785 m!601697))

(assert (=> d!88785 m!601691))


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54420 () Bool)

(assert start!54420)

(declare-fun b!593717 () Bool)

(declare-fun res!380078 () Bool)

(declare-fun e!339174 () Bool)

(assert (=> b!593717 (=> (not res!380078) (not e!339174))))

(declare-datatypes ((array!36918 0))(
  ( (array!36919 (arr!17721 (Array (_ BitVec 32) (_ BitVec 64))) (size!18085 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36918)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!593717 (= res!380078 (validKeyInArray!0 (select (arr!17721 a!2986) j!136)))))

(declare-fun b!593718 () Bool)

(declare-fun e!339178 () Bool)

(declare-fun e!339180 () Bool)

(assert (=> b!593718 (= e!339178 e!339180)))

(declare-fun res!380073 () Bool)

(assert (=> b!593718 (=> res!380073 e!339180)))

(declare-fun lt!269579 () (_ BitVec 64))

(declare-fun lt!269586 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!593718 (= res!380073 (or (not (= (select (arr!17721 a!2986) j!136) lt!269586)) (not (= (select (arr!17721 a!2986) j!136) lt!269579)) (bvsge j!136 index!984)))))

(declare-fun b!593719 () Bool)

(declare-fun e!339177 () Bool)

(declare-fun e!339181 () Bool)

(assert (=> b!593719 (= e!339177 e!339181)))

(declare-fun res!380090 () Bool)

(assert (=> b!593719 (=> (not res!380090) (not e!339181))))

(declare-datatypes ((List!11815 0))(
  ( (Nil!11812) (Cons!11811 (h!12856 (_ BitVec 64)) (t!18051 List!11815)) )
))
(declare-fun contains!2919 (List!11815 (_ BitVec 64)) Bool)

(assert (=> b!593719 (= res!380090 (not (contains!2919 Nil!11812 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!593720 () Bool)

(declare-fun e!339184 () Bool)

(assert (=> b!593720 (= e!339184 e!339177)))

(declare-fun res!380082 () Bool)

(assert (=> b!593720 (=> res!380082 e!339177)))

(assert (=> b!593720 (= res!380082 (or (bvsgt #b00000000000000000000000000000000 (size!18085 a!2986)) (bvsge (size!18085 a!2986) #b01111111111111111111111111111111)))))

(declare-fun lt!269588 () array!36918)

(declare-fun arrayContainsKey!0 (array!36918 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!593720 (arrayContainsKey!0 lt!269588 (select (arr!17721 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-datatypes ((Unit!18616 0))(
  ( (Unit!18617) )
))
(declare-fun lt!269589 () Unit!18616)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36918 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18616)

(assert (=> b!593720 (= lt!269589 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269588 (select (arr!17721 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!593721 () Bool)

(declare-fun res!380077 () Bool)

(declare-fun e!339176 () Bool)

(assert (=> b!593721 (=> (not res!380077) (not e!339176))))

(declare-fun arrayNoDuplicates!0 (array!36918 (_ BitVec 32) List!11815) Bool)

(assert (=> b!593721 (= res!380077 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11812))))

(declare-fun b!593722 () Bool)

(declare-fun res!380087 () Bool)

(assert (=> b!593722 (=> (not res!380087) (not e!339174))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!593722 (= res!380087 (validKeyInArray!0 k!1786))))

(declare-fun b!593723 () Bool)

(declare-fun res!380075 () Bool)

(assert (=> b!593723 (=> (not res!380075) (not e!339174))))

(assert (=> b!593723 (= res!380075 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!593724 () Bool)

(declare-fun e!339182 () Unit!18616)

(declare-fun Unit!18618 () Unit!18616)

(assert (=> b!593724 (= e!339182 Unit!18618)))

(declare-fun b!593725 () Bool)

(declare-fun e!339187 () Bool)

(declare-datatypes ((SeekEntryResult!6168 0))(
  ( (MissingZero!6168 (index!26916 (_ BitVec 32))) (Found!6168 (index!26917 (_ BitVec 32))) (Intermediate!6168 (undefined!6980 Bool) (index!26918 (_ BitVec 32)) (x!55748 (_ BitVec 32))) (Undefined!6168) (MissingVacant!6168 (index!26919 (_ BitVec 32))) )
))
(declare-fun lt!269585 () SeekEntryResult!6168)

(declare-fun lt!269583 () SeekEntryResult!6168)

(assert (=> b!593725 (= e!339187 (= lt!269585 lt!269583))))

(declare-fun b!593726 () Bool)

(declare-fun e!339186 () Bool)

(assert (=> b!593726 (= e!339186 (arrayContainsKey!0 lt!269588 (select (arr!17721 a!2986) j!136) index!984))))

(declare-fun b!593727 () Bool)

(assert (=> b!593727 (= e!339180 e!339186)))

(declare-fun res!380071 () Bool)

(assert (=> b!593727 (=> (not res!380071) (not e!339186))))

(assert (=> b!593727 (= res!380071 (arrayContainsKey!0 lt!269588 (select (arr!17721 a!2986) j!136) j!136))))

(declare-fun b!593728 () Bool)

(declare-fun res!380086 () Bool)

(assert (=> b!593728 (=> (not res!380086) (not e!339176))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36918 (_ BitVec 32)) Bool)

(assert (=> b!593728 (= res!380086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!593729 () Bool)

(declare-fun res!380072 () Bool)

(assert (=> b!593729 (=> res!380072 e!339177)))

(declare-fun noDuplicate!235 (List!11815) Bool)

(assert (=> b!593729 (= res!380072 (not (noDuplicate!235 Nil!11812)))))

(declare-fun b!593730 () Bool)

(declare-fun res!380084 () Bool)

(assert (=> b!593730 (=> (not res!380084) (not e!339176))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!593730 (= res!380084 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17721 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!380079 () Bool)

(assert (=> start!54420 (=> (not res!380079) (not e!339174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54420 (= res!380079 (validMask!0 mask!3053))))

(assert (=> start!54420 e!339174))

(assert (=> start!54420 true))

(declare-fun array_inv!13495 (array!36918) Bool)

(assert (=> start!54420 (array_inv!13495 a!2986)))

(declare-fun b!593731 () Bool)

(assert (=> b!593731 (= e!339174 e!339176)))

(declare-fun res!380083 () Bool)

(assert (=> b!593731 (=> (not res!380083) (not e!339176))))

(declare-fun lt!269581 () SeekEntryResult!6168)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!593731 (= res!380083 (or (= lt!269581 (MissingZero!6168 i!1108)) (= lt!269581 (MissingVacant!6168 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36918 (_ BitVec 32)) SeekEntryResult!6168)

(assert (=> b!593731 (= lt!269581 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!593732 () Bool)

(declare-fun e!339175 () Bool)

(declare-fun e!339183 () Bool)

(assert (=> b!593732 (= e!339175 (not e!339183))))

(declare-fun res!380074 () Bool)

(assert (=> b!593732 (=> res!380074 e!339183)))

(declare-fun lt!269580 () SeekEntryResult!6168)

(assert (=> b!593732 (= res!380074 (not (= lt!269580 (Found!6168 index!984))))))

(declare-fun lt!269587 () Unit!18616)

(assert (=> b!593732 (= lt!269587 e!339182)))

(declare-fun c!67190 () Bool)

(assert (=> b!593732 (= c!67190 (= lt!269580 Undefined!6168))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36918 (_ BitVec 32)) SeekEntryResult!6168)

(assert (=> b!593732 (= lt!269580 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269586 lt!269588 mask!3053))))

(assert (=> b!593732 e!339187))

(declare-fun res!380088 () Bool)

(assert (=> b!593732 (=> (not res!380088) (not e!339187))))

(declare-fun lt!269584 () (_ BitVec 32))

(assert (=> b!593732 (= res!380088 (= lt!269583 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269584 vacantSpotIndex!68 lt!269586 lt!269588 mask!3053)))))

(assert (=> b!593732 (= lt!269583 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269584 vacantSpotIndex!68 (select (arr!17721 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!593732 (= lt!269586 (select (store (arr!17721 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!269582 () Unit!18616)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36918 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18616)

(assert (=> b!593732 (= lt!269582 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269584 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!593732 (= lt!269584 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!593733 () Bool)

(declare-fun e!339185 () Bool)

(assert (=> b!593733 (= e!339176 e!339185)))

(declare-fun res!380081 () Bool)

(assert (=> b!593733 (=> (not res!380081) (not e!339185))))

(assert (=> b!593733 (= res!380081 (= (select (store (arr!17721 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!593733 (= lt!269588 (array!36919 (store (arr!17721 a!2986) i!1108 k!1786) (size!18085 a!2986)))))

(declare-fun b!593734 () Bool)

(declare-fun res!380085 () Bool)

(assert (=> b!593734 (=> (not res!380085) (not e!339174))))

(assert (=> b!593734 (= res!380085 (and (= (size!18085 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18085 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18085 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!593735 () Bool)

(assert (=> b!593735 (= e!339181 (not (contains!2919 Nil!11812 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!593736 () Bool)

(declare-fun Unit!18619 () Unit!18616)

(assert (=> b!593736 (= e!339182 Unit!18619)))

(assert (=> b!593736 false))

(declare-fun b!593737 () Bool)

(assert (=> b!593737 (= e!339185 e!339175)))

(declare-fun res!380076 () Bool)

(assert (=> b!593737 (=> (not res!380076) (not e!339175))))

(assert (=> b!593737 (= res!380076 (and (= lt!269585 (Found!6168 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17721 a!2986) index!984) (select (arr!17721 a!2986) j!136))) (not (= (select (arr!17721 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!593737 (= lt!269585 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17721 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!593738 () Bool)

(assert (=> b!593738 (= e!339183 e!339184)))

(declare-fun res!380080 () Bool)

(assert (=> b!593738 (=> res!380080 e!339184)))

(assert (=> b!593738 (= res!380080 (or (not (= (select (arr!17721 a!2986) j!136) lt!269586)) (not (= (select (arr!17721 a!2986) j!136) lt!269579)) (bvsge j!136 index!984)))))

(assert (=> b!593738 e!339178))

(declare-fun res!380089 () Bool)

(assert (=> b!593738 (=> (not res!380089) (not e!339178))))

(assert (=> b!593738 (= res!380089 (= lt!269579 (select (arr!17721 a!2986) j!136)))))

(assert (=> b!593738 (= lt!269579 (select (store (arr!17721 a!2986) i!1108 k!1786) index!984))))

(assert (= (and start!54420 res!380079) b!593734))

(assert (= (and b!593734 res!380085) b!593717))

(assert (= (and b!593717 res!380078) b!593722))

(assert (= (and b!593722 res!380087) b!593723))

(assert (= (and b!593723 res!380075) b!593731))

(assert (= (and b!593731 res!380083) b!593728))

(assert (= (and b!593728 res!380086) b!593721))

(assert (= (and b!593721 res!380077) b!593730))

(assert (= (and b!593730 res!380084) b!593733))

(assert (= (and b!593733 res!380081) b!593737))

(assert (= (and b!593737 res!380076) b!593732))

(assert (= (and b!593732 res!380088) b!593725))

(assert (= (and b!593732 c!67190) b!593736))

(assert (= (and b!593732 (not c!67190)) b!593724))

(assert (= (and b!593732 (not res!380074)) b!593738))

(assert (= (and b!593738 res!380089) b!593718))

(assert (= (and b!593718 (not res!380073)) b!593727))

(assert (= (and b!593727 res!380071) b!593726))

(assert (= (and b!593738 (not res!380080)) b!593720))

(assert (= (and b!593720 (not res!380082)) b!593729))

(assert (= (and b!593729 (not res!380072)) b!593719))

(assert (= (and b!593719 res!380090) b!593735))

(declare-fun m!571647 () Bool)

(assert (=> b!593719 m!571647))

(declare-fun m!571649 () Bool)

(assert (=> b!593717 m!571649))

(assert (=> b!593717 m!571649))

(declare-fun m!571651 () Bool)

(assert (=> b!593717 m!571651))

(declare-fun m!571653 () Bool)

(assert (=> b!593733 m!571653))

(declare-fun m!571655 () Bool)

(assert (=> b!593733 m!571655))

(declare-fun m!571657 () Bool)

(assert (=> b!593732 m!571657))

(declare-fun m!571659 () Bool)

(assert (=> b!593732 m!571659))

(assert (=> b!593732 m!571649))

(declare-fun m!571661 () Bool)

(assert (=> b!593732 m!571661))

(assert (=> b!593732 m!571649))

(assert (=> b!593732 m!571653))

(declare-fun m!571663 () Bool)

(assert (=> b!593732 m!571663))

(declare-fun m!571665 () Bool)

(assert (=> b!593732 m!571665))

(declare-fun m!571667 () Bool)

(assert (=> b!593732 m!571667))

(declare-fun m!571669 () Bool)

(assert (=> b!593722 m!571669))

(assert (=> b!593727 m!571649))

(assert (=> b!593727 m!571649))

(declare-fun m!571671 () Bool)

(assert (=> b!593727 m!571671))

(assert (=> b!593738 m!571649))

(assert (=> b!593738 m!571653))

(declare-fun m!571673 () Bool)

(assert (=> b!593738 m!571673))

(assert (=> b!593720 m!571649))

(assert (=> b!593720 m!571649))

(declare-fun m!571675 () Bool)

(assert (=> b!593720 m!571675))

(assert (=> b!593720 m!571649))

(declare-fun m!571677 () Bool)

(assert (=> b!593720 m!571677))

(assert (=> b!593726 m!571649))

(assert (=> b!593726 m!571649))

(declare-fun m!571679 () Bool)

(assert (=> b!593726 m!571679))

(declare-fun m!571681 () Bool)

(assert (=> b!593737 m!571681))

(assert (=> b!593737 m!571649))

(assert (=> b!593737 m!571649))

(declare-fun m!571683 () Bool)

(assert (=> b!593737 m!571683))

(declare-fun m!571685 () Bool)

(assert (=> start!54420 m!571685))

(declare-fun m!571687 () Bool)

(assert (=> start!54420 m!571687))

(declare-fun m!571689 () Bool)

(assert (=> b!593729 m!571689))

(declare-fun m!571691 () Bool)

(assert (=> b!593730 m!571691))

(declare-fun m!571693 () Bool)

(assert (=> b!593735 m!571693))

(assert (=> b!593718 m!571649))

(declare-fun m!571695 () Bool)

(assert (=> b!593721 m!571695))

(declare-fun m!571697 () Bool)

(assert (=> b!593723 m!571697))

(declare-fun m!571699 () Bool)

(assert (=> b!593731 m!571699))

(declare-fun m!571701 () Bool)

(assert (=> b!593728 m!571701))

(push 1)

(assert (not b!593737))

(assert (not start!54420))

(assert (not b!593727))

(assert (not b!593717))

(assert (not b!593732))

(assert (not b!593723))

(assert (not b!593729))

(assert (not b!593722))

(assert (not b!593735))

(assert (not b!593726))

(assert (not b!593731))

(assert (not b!593721))

(assert (not b!593720))

(assert (not b!593728))

(assert (not b!593719))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!86437 () Bool)

(declare-fun lt!269673 () Bool)

(declare-fun content!234 (List!11815) (Set (_ BitVec 64)))

(assert (=> d!86437 (= lt!269673 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!234 Nil!11812)))))

(declare-fun e!339297 () Bool)

(assert (=> d!86437 (= lt!269673 e!339297)))

(declare-fun res!380233 () Bool)

(assert (=> d!86437 (=> (not res!380233) (not e!339297))))

(assert (=> d!86437 (= res!380233 (is-Cons!11811 Nil!11812))))

(assert (=> d!86437 (= (contains!2919 Nil!11812 #b0000000000000000000000000000000000000000000000000000000000000000) lt!269673)))

(declare-fun b!593899 () Bool)

(declare-fun e!339298 () Bool)

(assert (=> b!593899 (= e!339297 e!339298)))

(declare-fun res!380234 () Bool)

(assert (=> b!593899 (=> res!380234 e!339298)))

(assert (=> b!593899 (= res!380234 (= (h!12856 Nil!11812) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!593900 () Bool)

(assert (=> b!593900 (= e!339298 (contains!2919 (t!18051 Nil!11812) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!86437 res!380233) b!593899))

(assert (= (and b!593899 (not res!380234)) b!593900))

(declare-fun m!571839 () Bool)

(assert (=> d!86437 m!571839))

(declare-fun m!571841 () Bool)

(assert (=> d!86437 m!571841))

(declare-fun m!571843 () Bool)

(assert (=> b!593900 m!571843))

(assert (=> b!593719 d!86437))

(declare-fun d!86443 () Bool)

(declare-fun res!380241 () Bool)

(declare-fun e!339305 () Bool)

(assert (=> d!86443 (=> res!380241 e!339305)))

(assert (=> d!86443 (= res!380241 (is-Nil!11812 Nil!11812))))

(assert (=> d!86443 (= (noDuplicate!235 Nil!11812) e!339305)))

(declare-fun b!593907 () Bool)

(declare-fun e!339306 () Bool)

(assert (=> b!593907 (= e!339305 e!339306)))

(declare-fun res!380242 () Bool)

(assert (=> b!593907 (=> (not res!380242) (not e!339306))))

(assert (=> b!593907 (= res!380242 (not (contains!2919 (t!18051 Nil!11812) (h!12856 Nil!11812))))))

(declare-fun b!593908 () Bool)

(assert (=> b!593908 (= e!339306 (noDuplicate!235 (t!18051 Nil!11812)))))

(assert (= (and d!86443 (not res!380241)) b!593907))

(assert (= (and b!593907 res!380242) b!593908))

(declare-fun m!571849 () Bool)

(assert (=> b!593907 m!571849))

(declare-fun m!571851 () Bool)

(assert (=> b!593908 m!571851))

(assert (=> b!593729 d!86443))

(declare-fun bm!32882 () Bool)

(declare-fun call!32885 () Bool)

(assert (=> bm!32882 (= call!32885 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!593923 () Bool)

(declare-fun e!339320 () Bool)

(declare-fun e!339319 () Bool)

(assert (=> b!593923 (= e!339320 e!339319)))

(declare-fun c!67202 () Bool)

(assert (=> b!593923 (= c!67202 (validKeyInArray!0 (select (arr!17721 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!593925 () Bool)

(declare-fun e!339321 () Bool)

(assert (=> b!593925 (= e!339321 call!32885)))

(declare-fun b!593926 () Bool)

(assert (=> b!593926 (= e!339319 e!339321)))

(declare-fun lt!269682 () (_ BitVec 64))

(assert (=> b!593926 (= lt!269682 (select (arr!17721 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!269684 () Unit!18616)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!36918 (_ BitVec 64) (_ BitVec 32)) Unit!18616)

(assert (=> b!593926 (= lt!269684 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!269682 #b00000000000000000000000000000000))))

(assert (=> b!593926 (arrayContainsKey!0 a!2986 lt!269682 #b00000000000000000000000000000000)))

(declare-fun lt!269685 () Unit!18616)

(assert (=> b!593926 (= lt!269685 lt!269684)))

(declare-fun res!380254 () Bool)

(assert (=> b!593926 (= res!380254 (= (seekEntryOrOpen!0 (select (arr!17721 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6168 #b00000000000000000000000000000000)))))

(assert (=> b!593926 (=> (not res!380254) (not e!339321))))

(declare-fun b!593924 () Bool)

(assert (=> b!593924 (= e!339319 call!32885)))

(declare-fun d!86449 () Bool)

(declare-fun res!380253 () Bool)

(assert (=> d!86449 (=> res!380253 e!339320)))

(assert (=> d!86449 (= res!380253 (bvsge #b00000000000000000000000000000000 (size!18085 a!2986)))))

(assert (=> d!86449 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!339320)))

(assert (= (and d!86449 (not res!380253)) b!593923))

(assert (= (and b!593923 c!67202) b!593926))

(assert (= (and b!593923 (not c!67202)) b!593924))

(assert (= (and b!593926 res!380254) b!593925))

(assert (= (or b!593925 b!593924) bm!32882))

(declare-fun m!571859 () Bool)

(assert (=> bm!32882 m!571859))

(declare-fun m!571861 () Bool)

(assert (=> b!593923 m!571861))

(assert (=> b!593923 m!571861))

(declare-fun m!571863 () Bool)

(assert (=> b!593923 m!571863))

(assert (=> b!593926 m!571861))

(declare-fun m!571865 () Bool)

(assert (=> b!593926 m!571865))

(declare-fun m!571867 () Bool)

(assert (=> b!593926 m!571867))

(assert (=> b!593926 m!571861))

(declare-fun m!571869 () Bool)

(assert (=> b!593926 m!571869))

(assert (=> b!593728 d!86449))

(declare-fun d!86459 () Bool)

(assert (=> d!86459 (= (validKeyInArray!0 (select (arr!17721 a!2986) j!136)) (and (not (= (select (arr!17721 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17721 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!593717 d!86459))

(declare-fun d!86463 () Bool)

(declare-fun res!380265 () Bool)

(declare-fun e!339332 () Bool)

(assert (=> d!86463 (=> res!380265 e!339332)))

(assert (=> d!86463 (= res!380265 (= (select (arr!17721 lt!269588) j!136) (select (arr!17721 a!2986) j!136)))))

(assert (=> d!86463 (= (arrayContainsKey!0 lt!269588 (select (arr!17721 a!2986) j!136) j!136) e!339332)))

(declare-fun b!593937 () Bool)

(declare-fun e!339333 () Bool)

(assert (=> b!593937 (= e!339332 e!339333)))

(declare-fun res!380266 () Bool)

(assert (=> b!593937 (=> (not res!380266) (not e!339333))))

(assert (=> b!593937 (= res!380266 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18085 lt!269588)))))

(declare-fun b!593938 () Bool)

(assert (=> b!593938 (= e!339333 (arrayContainsKey!0 lt!269588 (select (arr!17721 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86463 (not res!380265)) b!593937))

(assert (= (and b!593937 res!380266) b!593938))

(declare-fun m!571875 () Bool)

(assert (=> d!86463 m!571875))

(assert (=> b!593938 m!571649))

(declare-fun m!571877 () Bool)

(assert (=> b!593938 m!571877))

(assert (=> b!593727 d!86463))

(declare-fun b!593986 () Bool)

(declare-fun e!339365 () SeekEntryResult!6168)

(declare-fun e!339364 () SeekEntryResult!6168)

(assert (=> b!593986 (= e!339365 e!339364)))

(declare-fun c!67221 () Bool)

(declare-fun lt!269697 () (_ BitVec 64))

(assert (=> b!593986 (= c!67221 (= lt!269697 (select (arr!17721 a!2986) j!136)))))

(declare-fun e!339363 () SeekEntryResult!6168)

(declare-fun b!593987 () Bool)

(assert (=> b!593987 (= e!339363 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17721 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!593988 () Bool)

(assert (=> b!593988 (= e!339365 Undefined!6168)))

(declare-fun d!86469 () Bool)

(declare-fun lt!269696 () SeekEntryResult!6168)

(assert (=> d!86469 (and (or (is-Undefined!6168 lt!269696) (not (is-Found!6168 lt!269696)) (and (bvsge (index!26917 lt!269696) #b00000000000000000000000000000000) (bvslt (index!26917 lt!269696) (size!18085 a!2986)))) (or (is-Undefined!6168 lt!269696) (is-Found!6168 lt!269696) (not (is-MissingVacant!6168 lt!269696)) (not (= (index!26919 lt!269696) vacantSpotIndex!68)) (and (bvsge (index!26919 lt!269696) #b00000000000000000000000000000000) (bvslt (index!26919 lt!269696) (size!18085 a!2986)))) (or (is-Undefined!6168 lt!269696) (ite (is-Found!6168 lt!269696) (= (select (arr!17721 a!2986) (index!26917 lt!269696)) (select (arr!17721 a!2986) j!136)) (and (is-MissingVacant!6168 lt!269696) (= (index!26919 lt!269696) vacantSpotIndex!68) (= (select (arr!17721 a!2986) (index!26919 lt!269696)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86469 (= lt!269696 e!339365)))

(declare-fun c!67223 () Bool)

(assert (=> d!86469 (= c!67223 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86469 (= lt!269697 (select (arr!17721 a!2986) index!984))))

(assert (=> d!86469 (validMask!0 mask!3053)))

(assert (=> d!86469 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17721 a!2986) j!136) a!2986 mask!3053) lt!269696)))

(declare-fun b!593989 () Bool)

(assert (=> b!593989 (= e!339364 (Found!6168 index!984))))

(declare-fun b!593990 () Bool)

(declare-fun c!67222 () Bool)

(assert (=> b!593990 (= c!67222 (= lt!269697 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!593990 (= e!339364 e!339363)))

(declare-fun b!593991 () Bool)

(assert (=> b!593991 (= e!339363 (MissingVacant!6168 vacantSpotIndex!68))))

(assert (= (and d!86469 c!67223) b!593988))

(assert (= (and d!86469 (not c!67223)) b!593986))

(assert (= (and b!593986 c!67221) b!593989))

(assert (= (and b!593986 (not c!67221)) b!593990))

(assert (= (and b!593990 c!67222) b!593991))

(assert (= (and b!593990 (not c!67222)) b!593987))

(assert (=> b!593987 m!571657))

(assert (=> b!593987 m!571657))

(assert (=> b!593987 m!571649))

(declare-fun m!571888 () Bool)

(assert (=> b!593987 m!571888))

(declare-fun m!571891 () Bool)

(assert (=> d!86469 m!571891))

(declare-fun m!571897 () Bool)

(assert (=> d!86469 m!571897))

(assert (=> d!86469 m!571681))

(assert (=> d!86469 m!571685))

(assert (=> b!593737 d!86469))

(declare-fun d!86481 () Bool)

(declare-fun res!380280 () Bool)

(declare-fun e!339368 () Bool)

(assert (=> d!86481 (=> res!380280 e!339368)))

(assert (=> d!86481 (= res!380280 (= (select (arr!17721 lt!269588) index!984) (select (arr!17721 a!2986) j!136)))))

(assert (=> d!86481 (= (arrayContainsKey!0 lt!269588 (select (arr!17721 a!2986) j!136) index!984) e!339368)))

(declare-fun b!593994 () Bool)

(declare-fun e!339369 () Bool)

(assert (=> b!593994 (= e!339368 e!339369)))

(declare-fun res!380281 () Bool)

(assert (=> b!593994 (=> (not res!380281) (not e!339369))))

(assert (=> b!593994 (= res!380281 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18085 lt!269588)))))

(declare-fun b!593995 () Bool)

(assert (=> b!593995 (= e!339369 (arrayContainsKey!0 lt!269588 (select (arr!17721 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!86481 (not res!380280)) b!593994))

(assert (= (and b!593994 res!380281) b!593995))

(declare-fun m!571901 () Bool)

(assert (=> d!86481 m!571901))

(assert (=> b!593995 m!571649))

(declare-fun m!571905 () Bool)

(assert (=> b!593995 m!571905))

(assert (=> b!593726 d!86481))

(declare-fun d!86485 () Bool)

(assert (=> d!86485 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!54420 d!86485))

(declare-fun d!86487 () Bool)

(assert (=> d!86487 (= (array_inv!13495 a!2986) (bvsge (size!18085 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!54420 d!86487))

(declare-fun d!86491 () Bool)

(declare-fun lt!269709 () Bool)

(assert (=> d!86491 (= lt!269709 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!234 Nil!11812)))))

(declare-fun e!339382 () Bool)

(assert (=> d!86491 (= lt!269709 e!339382)))

(declare-fun res!380288 () Bool)

(assert (=> d!86491 (=> (not res!380288) (not e!339382))))

(assert (=> d!86491 (= res!380288 (is-Cons!11811 Nil!11812))))

(assert (=> d!86491 (= (contains!2919 Nil!11812 #b1000000000000000000000000000000000000000000000000000000000000000) lt!269709)))

(declare-fun b!594014 () Bool)

(declare-fun e!339383 () Bool)

(assert (=> b!594014 (= e!339382 e!339383)))

(declare-fun res!380289 () Bool)

(assert (=> b!594014 (=> res!380289 e!339383)))

(assert (=> b!594014 (= res!380289 (= (h!12856 Nil!11812) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594015 () Bool)

(assert (=> b!594015 (= e!339383 (contains!2919 (t!18051 Nil!11812) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!86491 res!380288) b!594014))

(assert (= (and b!594014 (not res!380289)) b!594015))

(assert (=> d!86491 m!571839))

(declare-fun m!571917 () Bool)

(assert (=> d!86491 m!571917))

(declare-fun m!571919 () Bool)

(assert (=> b!594015 m!571919))

(assert (=> b!593735 d!86491))

(declare-fun d!86493 () Bool)

(declare-fun res!380290 () Bool)

(declare-fun e!339384 () Bool)

(assert (=> d!86493 (=> res!380290 e!339384)))

(assert (=> d!86493 (= res!380290 (= (select (arr!17721 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!86493 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!339384)))

(declare-fun b!594016 () Bool)

(declare-fun e!339385 () Bool)

(assert (=> b!594016 (= e!339384 e!339385)))

(declare-fun res!380291 () Bool)

(assert (=> b!594016 (=> (not res!380291) (not e!339385))))

(assert (=> b!594016 (= res!380291 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18085 a!2986)))))

(declare-fun b!594017 () Bool)

(assert (=> b!594017 (= e!339385 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!86493 (not res!380290)) b!594016))

(assert (= (and b!594016 res!380291) b!594017))

(assert (=> d!86493 m!571861))

(declare-fun m!571931 () Bool)

(assert (=> b!594017 m!571931))

(assert (=> b!593723 d!86493))

(declare-fun d!86497 () Bool)

(assert (=> d!86497 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!593722 d!86497))

(declare-fun b!594024 () Bool)

(declare-fun e!339391 () SeekEntryResult!6168)

(declare-fun e!339390 () SeekEntryResult!6168)

(assert (=> b!594024 (= e!339391 e!339390)))

(declare-fun c!67233 () Bool)

(declare-fun lt!269713 () (_ BitVec 64))

(assert (=> b!594024 (= c!67233 (= lt!269713 lt!269586))))

(declare-fun e!339389 () SeekEntryResult!6168)

(declare-fun b!594025 () Bool)

(assert (=> b!594025 (= e!339389 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!269586 lt!269588 mask!3053))))

(declare-fun b!594026 () Bool)

(assert (=> b!594026 (= e!339391 Undefined!6168)))

(declare-fun d!86499 () Bool)

(declare-fun lt!269712 () SeekEntryResult!6168)

(assert (=> d!86499 (and (or (is-Undefined!6168 lt!269712) (not (is-Found!6168 lt!269712)) (and (bvsge (index!26917 lt!269712) #b00000000000000000000000000000000) (bvslt (index!26917 lt!269712) (size!18085 lt!269588)))) (or (is-Undefined!6168 lt!269712) (is-Found!6168 lt!269712) (not (is-MissingVacant!6168 lt!269712)) (not (= (index!26919 lt!269712) vacantSpotIndex!68)) (and (bvsge (index!26919 lt!269712) #b00000000000000000000000000000000) (bvslt (index!26919 lt!269712) (size!18085 lt!269588)))) (or (is-Undefined!6168 lt!269712) (ite (is-Found!6168 lt!269712) (= (select (arr!17721 lt!269588) (index!26917 lt!269712)) lt!269586) (and (is-MissingVacant!6168 lt!269712) (= (index!26919 lt!269712) vacantSpotIndex!68) (= (select (arr!17721 lt!269588) (index!26919 lt!269712)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86499 (= lt!269712 e!339391)))

(declare-fun c!67235 () Bool)

(assert (=> d!86499 (= c!67235 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86499 (= lt!269713 (select (arr!17721 lt!269588) index!984))))

(assert (=> d!86499 (validMask!0 mask!3053)))

(assert (=> d!86499 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269586 lt!269588 mask!3053) lt!269712)))

(declare-fun b!594027 () Bool)

(assert (=> b!594027 (= e!339390 (Found!6168 index!984))))

(declare-fun b!594028 () Bool)

(declare-fun c!67234 () Bool)

(assert (=> b!594028 (= c!67234 (= lt!269713 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!594028 (= e!339390 e!339389)))

(declare-fun b!594029 () Bool)

(assert (=> b!594029 (= e!339389 (MissingVacant!6168 vacantSpotIndex!68))))

(assert (= (and d!86499 c!67235) b!594026))

(assert (= (and d!86499 (not c!67235)) b!594024))

(assert (= (and b!594024 c!67233) b!594027))

(assert (= (and b!594024 (not c!67233)) b!594028))

(assert (= (and b!594028 c!67234) b!594029))

(assert (= (and b!594028 (not c!67234)) b!594025))

(assert (=> b!594025 m!571657))

(assert (=> b!594025 m!571657))

(declare-fun m!571941 () Bool)

(assert (=> b!594025 m!571941))

(declare-fun m!571943 () Bool)

(assert (=> d!86499 m!571943))

(declare-fun m!571945 () Bool)

(assert (=> d!86499 m!571945))

(assert (=> d!86499 m!571901))

(assert (=> d!86499 m!571685))

(assert (=> b!593732 d!86499))

(declare-fun d!86503 () Bool)

(declare-fun e!339397 () Bool)

(assert (=> d!86503 e!339397))

(declare-fun res!380294 () Bool)

(assert (=> d!86503 (=> (not res!380294) (not e!339397))))

(assert (=> d!86503 (= res!380294 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18085 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18085 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18085 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18085 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18085 a!2986))))))

(declare-fun lt!269721 () Unit!18616)

(declare-fun choose!9 (array!36918 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18616)

(assert (=> d!86503 (= lt!269721 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269584 vacantSpotIndex!68 mask!3053))))

(assert (=> d!86503 (validMask!0 mask!3053)))

(assert (=> d!86503 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269584 vacantSpotIndex!68 mask!3053) lt!269721)))

(declare-fun b!594038 () Bool)

(assert (=> b!594038 (= e!339397 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269584 vacantSpotIndex!68 (select (arr!17721 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269584 vacantSpotIndex!68 (select (store (arr!17721 a!2986) i!1108 k!1786) j!136) (array!36919 (store (arr!17721 a!2986) i!1108 k!1786) (size!18085 a!2986)) mask!3053)))))

(assert (= (and d!86503 res!380294) b!594038))

(declare-fun m!571957 () Bool)

(assert (=> d!86503 m!571957))

(assert (=> d!86503 m!571685))

(assert (=> b!594038 m!571659))

(assert (=> b!594038 m!571653))

(assert (=> b!594038 m!571659))

(declare-fun m!571959 () Bool)

(assert (=> b!594038 m!571959))

(assert (=> b!594038 m!571649))

(assert (=> b!594038 m!571649))

(assert (=> b!594038 m!571661))

(assert (=> b!593732 d!86503))

(declare-fun d!86509 () Bool)

(declare-fun lt!269732 () (_ BitVec 32))

(assert (=> d!86509 (and (bvsge lt!269732 #b00000000000000000000000000000000) (bvslt lt!269732 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86509 (= lt!269732 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!86509 (validMask!0 mask!3053)))

(assert (=> d!86509 (= (nextIndex!0 index!984 x!910 mask!3053) lt!269732)))

(declare-fun bs!18317 () Bool)

(assert (= bs!18317 d!86509))

(declare-fun m!571961 () Bool)

(assert (=> bs!18317 m!571961))

(assert (=> bs!18317 m!571685))

(assert (=> b!593732 d!86509))

(declare-fun b!594054 () Bool)

(declare-fun e!339409 () SeekEntryResult!6168)

(declare-fun e!339408 () SeekEntryResult!6168)

(assert (=> b!594054 (= e!339409 e!339408)))

(declare-fun c!67245 () Bool)

(declare-fun lt!269735 () (_ BitVec 64))

(assert (=> b!594054 (= c!67245 (= lt!269735 (select (arr!17721 a!2986) j!136)))))

(declare-fun b!594055 () Bool)

(declare-fun e!339407 () SeekEntryResult!6168)

(assert (=> b!594055 (= e!339407 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!269584 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17721 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!594056 () Bool)

(assert (=> b!594056 (= e!339409 Undefined!6168)))

(declare-fun lt!269734 () SeekEntryResult!6168)

(declare-fun d!86511 () Bool)

(assert (=> d!86511 (and (or (is-Undefined!6168 lt!269734) (not (is-Found!6168 lt!269734)) (and (bvsge (index!26917 lt!269734) #b00000000000000000000000000000000) (bvslt (index!26917 lt!269734) (size!18085 a!2986)))) (or (is-Undefined!6168 lt!269734) (is-Found!6168 lt!269734) (not (is-MissingVacant!6168 lt!269734)) (not (= (index!26919 lt!269734) vacantSpotIndex!68)) (and (bvsge (index!26919 lt!269734) #b00000000000000000000000000000000) (bvslt (index!26919 lt!269734) (size!18085 a!2986)))) (or (is-Undefined!6168 lt!269734) (ite (is-Found!6168 lt!269734) (= (select (arr!17721 a!2986) (index!26917 lt!269734)) (select (arr!17721 a!2986) j!136)) (and (is-MissingVacant!6168 lt!269734) (= (index!26919 lt!269734) vacantSpotIndex!68) (= (select (arr!17721 a!2986) (index!26919 lt!269734)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86511 (= lt!269734 e!339409)))

(declare-fun c!67247 () Bool)

(assert (=> d!86511 (= c!67247 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86511 (= lt!269735 (select (arr!17721 a!2986) lt!269584))))

(assert (=> d!86511 (validMask!0 mask!3053)))

(assert (=> d!86511 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269584 vacantSpotIndex!68 (select (arr!17721 a!2986) j!136) a!2986 mask!3053) lt!269734)))

(declare-fun b!594057 () Bool)

(assert (=> b!594057 (= e!339408 (Found!6168 lt!269584))))

(declare-fun b!594058 () Bool)

(declare-fun c!67246 () Bool)

(assert (=> b!594058 (= c!67246 (= lt!269735 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!594058 (= e!339408 e!339407)))

(declare-fun b!594059 () Bool)

(assert (=> b!594059 (= e!339407 (MissingVacant!6168 vacantSpotIndex!68))))

(assert (= (and d!86511 c!67247) b!594056))

(assert (= (and d!86511 (not c!67247)) b!594054))

(assert (= (and b!594054 c!67245) b!594057))

(assert (= (and b!594054 (not c!67245)) b!594058))

(assert (= (and b!594058 c!67246) b!594059))

(assert (= (and b!594058 (not c!67246)) b!594055))

(declare-fun m!571967 () Bool)

(assert (=> b!594055 m!571967))

(assert (=> b!594055 m!571967))

(assert (=> b!594055 m!571649))

(declare-fun m!571969 () Bool)

(assert (=> b!594055 m!571969))

(declare-fun m!571971 () Bool)

(assert (=> d!86511 m!571971))

(declare-fun m!571973 () Bool)

(assert (=> d!86511 m!571973))

(declare-fun m!571975 () Bool)

(assert (=> d!86511 m!571975))

(assert (=> d!86511 m!571685))

(assert (=> b!593732 d!86511))

(declare-fun b!594060 () Bool)

(declare-fun e!339412 () SeekEntryResult!6168)

(declare-fun e!339411 () SeekEntryResult!6168)

(assert (=> b!594060 (= e!339412 e!339411)))

(declare-fun c!67248 () Bool)

(declare-fun lt!269737 () (_ BitVec 64))

(assert (=> b!594060 (= c!67248 (= lt!269737 lt!269586))))

(declare-fun b!594061 () Bool)

(declare-fun e!339410 () SeekEntryResult!6168)

(assert (=> b!594061 (= e!339410 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!269584 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!269586 lt!269588 mask!3053))))

(declare-fun b!594062 () Bool)

(assert (=> b!594062 (= e!339412 Undefined!6168)))

(declare-fun lt!269736 () SeekEntryResult!6168)

(declare-fun d!86515 () Bool)

(assert (=> d!86515 (and (or (is-Undefined!6168 lt!269736) (not (is-Found!6168 lt!269736)) (and (bvsge (index!26917 lt!269736) #b00000000000000000000000000000000) (bvslt (index!26917 lt!269736) (size!18085 lt!269588)))) (or (is-Undefined!6168 lt!269736) (is-Found!6168 lt!269736) (not (is-MissingVacant!6168 lt!269736)) (not (= (index!26919 lt!269736) vacantSpotIndex!68)) (and (bvsge (index!26919 lt!269736) #b00000000000000000000000000000000) (bvslt (index!26919 lt!269736) (size!18085 lt!269588)))) (or (is-Undefined!6168 lt!269736) (ite (is-Found!6168 lt!269736) (= (select (arr!17721 lt!269588) (index!26917 lt!269736)) lt!269586) (and (is-MissingVacant!6168 lt!269736) (= (index!26919 lt!269736) vacantSpotIndex!68) (= (select (arr!17721 lt!269588) (index!26919 lt!269736)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86515 (= lt!269736 e!339412)))

(declare-fun c!67250 () Bool)

(assert (=> d!86515 (= c!67250 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86515 (= lt!269737 (select (arr!17721 lt!269588) lt!269584))))

(assert (=> d!86515 (validMask!0 mask!3053)))

(assert (=> d!86515 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269584 vacantSpotIndex!68 lt!269586 lt!269588 mask!3053) lt!269736)))

(declare-fun b!594063 () Bool)

(assert (=> b!594063 (= e!339411 (Found!6168 lt!269584))))

(declare-fun b!594064 () Bool)

(declare-fun c!67249 () Bool)

(assert (=> b!594064 (= c!67249 (= lt!269737 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!594064 (= e!339411 e!339410)))

(declare-fun b!594065 () Bool)

(assert (=> b!594065 (= e!339410 (MissingVacant!6168 vacantSpotIndex!68))))

(assert (= (and d!86515 c!67250) b!594062))

(assert (= (and d!86515 (not c!67250)) b!594060))

(assert (= (and b!594060 c!67248) b!594063))

(assert (= (and b!594060 (not c!67248)) b!594064))

(assert (= (and b!594064 c!67249) b!594065))

(assert (= (and b!594064 (not c!67249)) b!594061))

(assert (=> b!594061 m!571967))

(assert (=> b!594061 m!571967))

(declare-fun m!571977 () Bool)

(assert (=> b!594061 m!571977))

(declare-fun m!571979 () Bool)

(assert (=> d!86515 m!571979))

(declare-fun m!571981 () Bool)

(assert (=> d!86515 m!571981))

(declare-fun m!571983 () Bool)

(assert (=> d!86515 m!571983))

(assert (=> d!86515 m!571685))

(assert (=> b!593732 d!86515))

(declare-fun bm!32891 () Bool)

(declare-fun call!32894 () Bool)

(declare-fun c!67256 () Bool)

(assert (=> bm!32891 (= call!32894 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!67256 (Cons!11811 (select (arr!17721 a!2986) #b00000000000000000000000000000000) Nil!11812) Nil!11812)))))

(declare-fun b!594082 () Bool)

(declare-fun e!339424 () Bool)

(assert (=> b!594082 (= e!339424 (contains!2919 Nil!11812 (select (arr!17721 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!594083 () Bool)

(declare-fun e!339425 () Bool)

(assert (=> b!594083 (= e!339425 call!32894)))

(declare-fun b!594084 () Bool)

(declare-fun e!339426 () Bool)

(declare-fun e!339427 () Bool)

(assert (=> b!594084 (= e!339426 e!339427)))

(declare-fun res!380306 () Bool)

(assert (=> b!594084 (=> (not res!380306) (not e!339427))))

(assert (=> b!594084 (= res!380306 (not e!339424))))

(declare-fun res!380304 () Bool)

(assert (=> b!594084 (=> (not res!380304) (not e!339424))))

(assert (=> b!594084 (= res!380304 (validKeyInArray!0 (select (arr!17721 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!86517 () Bool)

(declare-fun res!380305 () Bool)

(assert (=> d!86517 (=> res!380305 e!339426)))

(assert (=> d!86517 (= res!380305 (bvsge #b00000000000000000000000000000000 (size!18085 a!2986)))))

(assert (=> d!86517 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11812) e!339426)))

(declare-fun b!594085 () Bool)

(assert (=> b!594085 (= e!339425 call!32894)))

(declare-fun b!594086 () Bool)

(assert (=> b!594086 (= e!339427 e!339425)))

(assert (=> b!594086 (= c!67256 (validKeyInArray!0 (select (arr!17721 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!86517 (not res!380305)) b!594084))

(assert (= (and b!594084 res!380304) b!594082))

(assert (= (and b!594084 res!380306) b!594086))

(assert (= (and b!594086 c!67256) b!594085))

(assert (= (and b!594086 (not c!67256)) b!594083))

(assert (= (or b!594085 b!594083) bm!32891))

(assert (=> bm!32891 m!571861))

(declare-fun m!571999 () Bool)

(assert (=> bm!32891 m!571999))

(assert (=> b!594082 m!571861))

(assert (=> b!594082 m!571861))

(declare-fun m!572001 () Bool)

(assert (=> b!594082 m!572001))

(assert (=> b!594084 m!571861))

(assert (=> b!594084 m!571861))

(assert (=> b!594084 m!571863))

(assert (=> b!594086 m!571861))

(assert (=> b!594086 m!571861))

(assert (=> b!594086 m!571863))

(assert (=> b!593721 d!86517))

(declare-fun b!594145 () Bool)

(declare-fun c!67278 () Bool)

(declare-fun lt!269765 () (_ BitVec 64))

(assert (=> b!594145 (= c!67278 (= lt!269765 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!339465 () SeekEntryResult!6168)

(declare-fun e!339467 () SeekEntryResult!6168)

(assert (=> b!594145 (= e!339465 e!339467)))

(declare-fun b!594146 () Bool)

(declare-fun e!339466 () SeekEntryResult!6168)

(assert (=> b!594146 (= e!339466 Undefined!6168)))

(declare-fun d!86521 () Bool)

(declare-fun lt!269767 () SeekEntryResult!6168)

(assert (=> d!86521 (and (or (is-Undefined!6168 lt!269767) (not (is-Found!6168 lt!269767)) (and (bvsge (index!26917 lt!269767) #b00000000000000000000000000000000) (bvslt (index!26917 lt!269767) (size!18085 a!2986)))) (or (is-Undefined!6168 lt!269767) (is-Found!6168 lt!269767) (not (is-MissingZero!6168 lt!269767)) (and (bvsge (index!26916 lt!269767) #b00000000000000000000000000000000) (bvslt (index!26916 lt!269767) (size!18085 a!2986)))) (or (is-Undefined!6168 lt!269767) (is-Found!6168 lt!269767) (is-MissingZero!6168 lt!269767) (not (is-MissingVacant!6168 lt!269767)) (and (bvsge (index!26919 lt!269767) #b00000000000000000000000000000000) (bvslt (index!26919 lt!269767) (size!18085 a!2986)))) (or (is-Undefined!6168 lt!269767) (ite (is-Found!6168 lt!269767) (= (select (arr!17721 a!2986) (index!26917 lt!269767)) k!1786) (ite (is-MissingZero!6168 lt!269767) (= (select (arr!17721 a!2986) (index!26916 lt!269767)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6168 lt!269767) (= (select (arr!17721 a!2986) (index!26919 lt!269767)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!86521 (= lt!269767 e!339466)))

(declare-fun c!67279 () Bool)

(declare-fun lt!269766 () SeekEntryResult!6168)

(assert (=> d!86521 (= c!67279 (and (is-Intermediate!6168 lt!269766) (undefined!6980 lt!269766)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36918 (_ BitVec 32)) SeekEntryResult!6168)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86521 (= lt!269766 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!86521 (validMask!0 mask!3053)))

(assert (=> d!86521 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!269767)))

(declare-fun b!594147 () Bool)

(assert (=> b!594147 (= e!339467 (MissingZero!6168 (index!26918 lt!269766)))))

(declare-fun b!594148 () Bool)

(assert (=> b!594148 (= e!339465 (Found!6168 (index!26918 lt!269766)))))

(declare-fun b!594149 () Bool)

(assert (=> b!594149 (= e!339466 e!339465)))

(assert (=> b!594149 (= lt!269765 (select (arr!17721 a!2986) (index!26918 lt!269766)))))

(declare-fun c!67280 () Bool)

(assert (=> b!594149 (= c!67280 (= lt!269765 k!1786))))

(declare-fun b!594150 () Bool)

(assert (=> b!594150 (= e!339467 (seekKeyOrZeroReturnVacant!0 (x!55748 lt!269766) (index!26918 lt!269766) (index!26918 lt!269766) k!1786 a!2986 mask!3053))))

(assert (= (and d!86521 c!67279) b!594146))

(assert (= (and d!86521 (not c!67279)) b!594149))

(assert (= (and b!594149 c!67280) b!594148))

(assert (= (and b!594149 (not c!67280)) b!594145))

(assert (= (and b!594145 c!67278) b!594147))

(assert (= (and b!594145 (not c!67278)) b!594150))

(declare-fun m!572039 () Bool)

(assert (=> d!86521 m!572039))

(assert (=> d!86521 m!572039))

(declare-fun m!572041 () Bool)

(assert (=> d!86521 m!572041))

(declare-fun m!572043 () Bool)

(assert (=> d!86521 m!572043))

(assert (=> d!86521 m!571685))

(declare-fun m!572045 () Bool)

(assert (=> d!86521 m!572045))

(declare-fun m!572047 () Bool)

(assert (=> d!86521 m!572047))

(declare-fun m!572049 () Bool)

(assert (=> b!594149 m!572049))

(declare-fun m!572051 () Bool)

(assert (=> b!594150 m!572051))

(assert (=> b!593731 d!86521))

(declare-fun d!86537 () Bool)

(declare-fun res!380325 () Bool)

(declare-fun e!339470 () Bool)

(assert (=> d!86537 (=> res!380325 e!339470)))

(assert (=> d!86537 (= res!380325 (= (select (arr!17721 lt!269588) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17721 a!2986) j!136)))))

(assert (=> d!86537 (= (arrayContainsKey!0 lt!269588 (select (arr!17721 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!339470)))

(declare-fun b!594153 () Bool)

(declare-fun e!339471 () Bool)

(assert (=> b!594153 (= e!339470 e!339471)))

(declare-fun res!380326 () Bool)

(assert (=> b!594153 (=> (not res!380326) (not e!339471))))

(assert (=> b!594153 (= res!380326 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18085 lt!269588)))))

(declare-fun b!594154 () Bool)

(assert (=> b!594154 (= e!339471 (arrayContainsKey!0 lt!269588 (select (arr!17721 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86537 (not res!380325)) b!594153))

(assert (= (and b!594153 res!380326) b!594154))

(declare-fun m!572053 () Bool)

(assert (=> d!86537 m!572053))

(assert (=> b!594154 m!571649))

(declare-fun m!572055 () Bool)

(assert (=> b!594154 m!572055))

(assert (=> b!593720 d!86537))

(declare-fun d!86539 () Bool)

(assert (=> d!86539 (arrayContainsKey!0 lt!269588 (select (arr!17721 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!269770 () Unit!18616)

(declare-fun choose!114 (array!36918 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18616)

(assert (=> d!86539 (= lt!269770 (choose!114 lt!269588 (select (arr!17721 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!86539 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!86539 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269588 (select (arr!17721 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!269770)))

(declare-fun bs!18318 () Bool)

(assert (= bs!18318 d!86539))

(assert (=> bs!18318 m!571649))

(assert (=> bs!18318 m!571675))

(assert (=> bs!18318 m!571649))

(declare-fun m!572057 () Bool)

(assert (=> bs!18318 m!572057))

(assert (=> b!593720 d!86539))

(push 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64776 () Bool)

(assert start!64776)

(declare-fun b!731140 () Bool)

(declare-fun res!491490 () Bool)

(declare-fun e!409142 () Bool)

(assert (=> b!731140 (=> (not res!491490) (not e!409142))))

(declare-datatypes ((array!41178 0))(
  ( (array!41179 (arr!19705 (Array (_ BitVec 32) (_ BitVec 64))) (size!20126 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41178)

(declare-datatypes ((List!13760 0))(
  ( (Nil!13757) (Cons!13756 (h!14816 (_ BitVec 64)) (t!20083 List!13760)) )
))
(declare-fun arrayNoDuplicates!0 (array!41178 (_ BitVec 32) List!13760) Bool)

(assert (=> b!731140 (= res!491490 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13757))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!731141 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!409140 () Bool)

(declare-datatypes ((SeekEntryResult!7312 0))(
  ( (MissingZero!7312 (index!31615 (_ BitVec 32))) (Found!7312 (index!31616 (_ BitVec 32))) (Intermediate!7312 (undefined!8124 Bool) (index!31617 (_ BitVec 32)) (x!62615 (_ BitVec 32))) (Undefined!7312) (MissingVacant!7312 (index!31618 (_ BitVec 32))) )
))
(declare-fun lt!324037 () SeekEntryResult!7312)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41178 (_ BitVec 32)) SeekEntryResult!7312)

(assert (=> b!731141 (= e!409140 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19705 a!3186) j!159) a!3186 mask!3328) lt!324037))))

(declare-fun b!731142 () Bool)

(declare-fun e!409141 () Bool)

(declare-fun e!409146 () Bool)

(assert (=> b!731142 (= e!409141 e!409146)))

(declare-fun res!491495 () Bool)

(assert (=> b!731142 (=> res!491495 e!409146)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!731142 (= res!491495 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!324039 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!731142 (= lt!324039 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!731144 () Bool)

(declare-fun e!409144 () Bool)

(assert (=> b!731144 (= e!409142 e!409144)))

(declare-fun res!491502 () Bool)

(assert (=> b!731144 (=> (not res!491502) (not e!409144))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!731144 (= res!491502 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19705 a!3186) j!159) mask!3328) (select (arr!19705 a!3186) j!159) a!3186 mask!3328) lt!324037))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!731144 (= lt!324037 (Intermediate!7312 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!731145 () Bool)

(declare-fun res!491501 () Bool)

(assert (=> b!731145 (=> res!491501 e!409146)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41178 (_ BitVec 32)) SeekEntryResult!7312)

(assert (=> b!731145 (= res!491501 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19705 a!3186) j!159) a!3186 mask!3328) (Found!7312 j!159))))))

(declare-fun b!731146 () Bool)

(declare-fun e!409147 () Bool)

(declare-fun e!409148 () Bool)

(assert (=> b!731146 (= e!409147 e!409148)))

(declare-fun res!491485 () Bool)

(assert (=> b!731146 (=> (not res!491485) (not e!409148))))

(declare-fun lt!324036 () SeekEntryResult!7312)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41178 (_ BitVec 32)) SeekEntryResult!7312)

(assert (=> b!731146 (= res!491485 (= (seekEntryOrOpen!0 (select (arr!19705 a!3186) j!159) a!3186 mask!3328) lt!324036))))

(assert (=> b!731146 (= lt!324036 (Found!7312 j!159))))

(declare-fun b!731147 () Bool)

(declare-fun e!409145 () Bool)

(assert (=> b!731147 (= e!409145 (not e!409141))))

(declare-fun res!491488 () Bool)

(assert (=> b!731147 (=> res!491488 e!409141)))

(declare-fun lt!324035 () SeekEntryResult!7312)

(get-info :version)

(assert (=> b!731147 (= res!491488 (or (not ((_ is Intermediate!7312) lt!324035)) (bvsge x!1131 (x!62615 lt!324035))))))

(assert (=> b!731147 e!409147))

(declare-fun res!491487 () Bool)

(assert (=> b!731147 (=> (not res!491487) (not e!409147))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41178 (_ BitVec 32)) Bool)

(assert (=> b!731147 (= res!491487 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24942 0))(
  ( (Unit!24943) )
))
(declare-fun lt!324034 () Unit!24942)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41178 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24942)

(assert (=> b!731147 (= lt!324034 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!731148 () Bool)

(declare-fun res!491486 () Bool)

(declare-fun e!409149 () Bool)

(assert (=> b!731148 (=> (not res!491486) (not e!409149))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!731148 (= res!491486 (validKeyInArray!0 (select (arr!19705 a!3186) j!159)))))

(declare-fun b!731149 () Bool)

(declare-fun res!491493 () Bool)

(assert (=> b!731149 (=> (not res!491493) (not e!409144))))

(assert (=> b!731149 (= res!491493 e!409140)))

(declare-fun c!80202 () Bool)

(assert (=> b!731149 (= c!80202 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!731150 () Bool)

(declare-fun res!491500 () Bool)

(assert (=> b!731150 (=> (not res!491500) (not e!409149))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!731150 (= res!491500 (and (= (size!20126 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20126 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20126 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!731151 () Bool)

(declare-fun res!491492 () Bool)

(assert (=> b!731151 (=> (not res!491492) (not e!409142))))

(assert (=> b!731151 (= res!491492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!731152 () Bool)

(declare-fun res!491498 () Bool)

(assert (=> b!731152 (=> (not res!491498) (not e!409142))))

(assert (=> b!731152 (= res!491498 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20126 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20126 a!3186))))))

(declare-fun res!491491 () Bool)

(assert (=> start!64776 (=> (not res!491491) (not e!409149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64776 (= res!491491 (validMask!0 mask!3328))))

(assert (=> start!64776 e!409149))

(assert (=> start!64776 true))

(declare-fun array_inv!15479 (array!41178) Bool)

(assert (=> start!64776 (array_inv!15479 a!3186)))

(declare-fun b!731143 () Bool)

(declare-fun res!491497 () Bool)

(assert (=> b!731143 (=> (not res!491497) (not e!409149))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!731143 (= res!491497 (validKeyInArray!0 k0!2102))))

(declare-fun b!731153 () Bool)

(assert (=> b!731153 (= e!409140 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19705 a!3186) j!159) a!3186 mask!3328) (Found!7312 j!159)))))

(declare-fun b!731154 () Bool)

(declare-fun res!491489 () Bool)

(assert (=> b!731154 (=> (not res!491489) (not e!409149))))

(declare-fun arrayContainsKey!0 (array!41178 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!731154 (= res!491489 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!731155 () Bool)

(assert (=> b!731155 (= e!409149 e!409142)))

(declare-fun res!491499 () Bool)

(assert (=> b!731155 (=> (not res!491499) (not e!409142))))

(declare-fun lt!324033 () SeekEntryResult!7312)

(assert (=> b!731155 (= res!491499 (or (= lt!324033 (MissingZero!7312 i!1173)) (= lt!324033 (MissingVacant!7312 i!1173))))))

(assert (=> b!731155 (= lt!324033 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!731156 () Bool)

(declare-fun res!491496 () Bool)

(assert (=> b!731156 (=> (not res!491496) (not e!409144))))

(assert (=> b!731156 (= res!491496 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19705 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!731157 () Bool)

(assert (=> b!731157 (= e!409148 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19705 a!3186) j!159) a!3186 mask!3328) lt!324036))))

(declare-fun b!731158 () Bool)

(assert (=> b!731158 (= e!409146 (or (bvslt mask!3328 #b00000000000000000000000000000000) (and (bvsge lt!324039 #b00000000000000000000000000000000) (bvslt lt!324039 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(declare-fun b!731159 () Bool)

(assert (=> b!731159 (= e!409144 e!409145)))

(declare-fun res!491494 () Bool)

(assert (=> b!731159 (=> (not res!491494) (not e!409145))))

(declare-fun lt!324041 () SeekEntryResult!7312)

(assert (=> b!731159 (= res!491494 (= lt!324041 lt!324035))))

(declare-fun lt!324040 () array!41178)

(declare-fun lt!324038 () (_ BitVec 64))

(assert (=> b!731159 (= lt!324035 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324038 lt!324040 mask!3328))))

(assert (=> b!731159 (= lt!324041 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324038 mask!3328) lt!324038 lt!324040 mask!3328))))

(assert (=> b!731159 (= lt!324038 (select (store (arr!19705 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!731159 (= lt!324040 (array!41179 (store (arr!19705 a!3186) i!1173 k0!2102) (size!20126 a!3186)))))

(assert (= (and start!64776 res!491491) b!731150))

(assert (= (and b!731150 res!491500) b!731148))

(assert (= (and b!731148 res!491486) b!731143))

(assert (= (and b!731143 res!491497) b!731154))

(assert (= (and b!731154 res!491489) b!731155))

(assert (= (and b!731155 res!491499) b!731151))

(assert (= (and b!731151 res!491492) b!731140))

(assert (= (and b!731140 res!491490) b!731152))

(assert (= (and b!731152 res!491498) b!731144))

(assert (= (and b!731144 res!491502) b!731156))

(assert (= (and b!731156 res!491496) b!731149))

(assert (= (and b!731149 c!80202) b!731141))

(assert (= (and b!731149 (not c!80202)) b!731153))

(assert (= (and b!731149 res!491493) b!731159))

(assert (= (and b!731159 res!491494) b!731147))

(assert (= (and b!731147 res!491487) b!731146))

(assert (= (and b!731146 res!491485) b!731157))

(assert (= (and b!731147 (not res!491488)) b!731142))

(assert (= (and b!731142 (not res!491495)) b!731145))

(assert (= (and b!731145 (not res!491501)) b!731158))

(declare-fun m!684637 () Bool)

(assert (=> b!731148 m!684637))

(assert (=> b!731148 m!684637))

(declare-fun m!684639 () Bool)

(assert (=> b!731148 m!684639))

(assert (=> b!731146 m!684637))

(assert (=> b!731146 m!684637))

(declare-fun m!684641 () Bool)

(assert (=> b!731146 m!684641))

(assert (=> b!731145 m!684637))

(assert (=> b!731145 m!684637))

(declare-fun m!684643 () Bool)

(assert (=> b!731145 m!684643))

(declare-fun m!684645 () Bool)

(assert (=> b!731159 m!684645))

(declare-fun m!684647 () Bool)

(assert (=> b!731159 m!684647))

(declare-fun m!684649 () Bool)

(assert (=> b!731159 m!684649))

(declare-fun m!684651 () Bool)

(assert (=> b!731159 m!684651))

(assert (=> b!731159 m!684647))

(declare-fun m!684653 () Bool)

(assert (=> b!731159 m!684653))

(declare-fun m!684655 () Bool)

(assert (=> b!731143 m!684655))

(declare-fun m!684657 () Bool)

(assert (=> b!731154 m!684657))

(assert (=> b!731144 m!684637))

(assert (=> b!731144 m!684637))

(declare-fun m!684659 () Bool)

(assert (=> b!731144 m!684659))

(assert (=> b!731144 m!684659))

(assert (=> b!731144 m!684637))

(declare-fun m!684661 () Bool)

(assert (=> b!731144 m!684661))

(declare-fun m!684663 () Bool)

(assert (=> b!731147 m!684663))

(declare-fun m!684665 () Bool)

(assert (=> b!731147 m!684665))

(declare-fun m!684667 () Bool)

(assert (=> b!731142 m!684667))

(declare-fun m!684669 () Bool)

(assert (=> b!731140 m!684669))

(declare-fun m!684671 () Bool)

(assert (=> b!731156 m!684671))

(declare-fun m!684673 () Bool)

(assert (=> b!731151 m!684673))

(declare-fun m!684675 () Bool)

(assert (=> start!64776 m!684675))

(declare-fun m!684677 () Bool)

(assert (=> start!64776 m!684677))

(declare-fun m!684679 () Bool)

(assert (=> b!731155 m!684679))

(assert (=> b!731153 m!684637))

(assert (=> b!731153 m!684637))

(assert (=> b!731153 m!684643))

(assert (=> b!731141 m!684637))

(assert (=> b!731141 m!684637))

(declare-fun m!684681 () Bool)

(assert (=> b!731141 m!684681))

(assert (=> b!731157 m!684637))

(assert (=> b!731157 m!684637))

(declare-fun m!684683 () Bool)

(assert (=> b!731157 m!684683))

(check-sat (not b!731147) (not b!731145) (not b!731143) (not b!731140) (not b!731148) (not b!731159) (not b!731142) (not start!64776) (not b!731157) (not b!731146) (not b!731155) (not b!731154) (not b!731141) (not b!731151) (not b!731153) (not b!731144))
(check-sat)
(get-model)

(declare-fun b!731228 () Bool)

(declare-fun e!409186 () Bool)

(declare-fun e!409187 () Bool)

(assert (=> b!731228 (= e!409186 e!409187)))

(declare-fun c!80208 () Bool)

(assert (=> b!731228 (= c!80208 (validKeyInArray!0 (select (arr!19705 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34827 () Bool)

(declare-fun call!34830 () Bool)

(assert (=> bm!34827 (= call!34830 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!99547 () Bool)

(declare-fun res!491562 () Bool)

(assert (=> d!99547 (=> res!491562 e!409186)))

(assert (=> d!99547 (= res!491562 (bvsge #b00000000000000000000000000000000 (size!20126 a!3186)))))

(assert (=> d!99547 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!409186)))

(declare-fun b!731229 () Bool)

(declare-fun e!409188 () Bool)

(assert (=> b!731229 (= e!409187 e!409188)))

(declare-fun lt!324075 () (_ BitVec 64))

(assert (=> b!731229 (= lt!324075 (select (arr!19705 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!324076 () Unit!24942)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!41178 (_ BitVec 64) (_ BitVec 32)) Unit!24942)

(assert (=> b!731229 (= lt!324076 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!324075 #b00000000000000000000000000000000))))

(assert (=> b!731229 (arrayContainsKey!0 a!3186 lt!324075 #b00000000000000000000000000000000)))

(declare-fun lt!324077 () Unit!24942)

(assert (=> b!731229 (= lt!324077 lt!324076)))

(declare-fun res!491561 () Bool)

(assert (=> b!731229 (= res!491561 (= (seekEntryOrOpen!0 (select (arr!19705 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7312 #b00000000000000000000000000000000)))))

(assert (=> b!731229 (=> (not res!491561) (not e!409188))))

(declare-fun b!731230 () Bool)

(assert (=> b!731230 (= e!409187 call!34830)))

(declare-fun b!731231 () Bool)

(assert (=> b!731231 (= e!409188 call!34830)))

(assert (= (and d!99547 (not res!491562)) b!731228))

(assert (= (and b!731228 c!80208) b!731229))

(assert (= (and b!731228 (not c!80208)) b!731230))

(assert (= (and b!731229 res!491561) b!731231))

(assert (= (or b!731231 b!731230) bm!34827))

(declare-fun m!684733 () Bool)

(assert (=> b!731228 m!684733))

(assert (=> b!731228 m!684733))

(declare-fun m!684735 () Bool)

(assert (=> b!731228 m!684735))

(declare-fun m!684737 () Bool)

(assert (=> bm!34827 m!684737))

(assert (=> b!731229 m!684733))

(declare-fun m!684739 () Bool)

(assert (=> b!731229 m!684739))

(declare-fun m!684741 () Bool)

(assert (=> b!731229 m!684741))

(assert (=> b!731229 m!684733))

(declare-fun m!684743 () Bool)

(assert (=> b!731229 m!684743))

(assert (=> b!731151 d!99547))

(declare-fun b!731242 () Bool)

(declare-fun e!409197 () Bool)

(declare-fun e!409198 () Bool)

(assert (=> b!731242 (= e!409197 e!409198)))

(declare-fun res!491569 () Bool)

(assert (=> b!731242 (=> (not res!491569) (not e!409198))))

(declare-fun e!409200 () Bool)

(assert (=> b!731242 (= res!491569 (not e!409200))))

(declare-fun res!491571 () Bool)

(assert (=> b!731242 (=> (not res!491571) (not e!409200))))

(assert (=> b!731242 (= res!491571 (validKeyInArray!0 (select (arr!19705 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!731243 () Bool)

(declare-fun e!409199 () Bool)

(assert (=> b!731243 (= e!409198 e!409199)))

(declare-fun c!80211 () Bool)

(assert (=> b!731243 (= c!80211 (validKeyInArray!0 (select (arr!19705 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34830 () Bool)

(declare-fun call!34833 () Bool)

(assert (=> bm!34830 (= call!34833 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!80211 (Cons!13756 (select (arr!19705 a!3186) #b00000000000000000000000000000000) Nil!13757) Nil!13757)))))

(declare-fun d!99549 () Bool)

(declare-fun res!491570 () Bool)

(assert (=> d!99549 (=> res!491570 e!409197)))

(assert (=> d!99549 (= res!491570 (bvsge #b00000000000000000000000000000000 (size!20126 a!3186)))))

(assert (=> d!99549 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13757) e!409197)))

(declare-fun b!731244 () Bool)

(assert (=> b!731244 (= e!409199 call!34833)))

(declare-fun b!731245 () Bool)

(declare-fun contains!4054 (List!13760 (_ BitVec 64)) Bool)

(assert (=> b!731245 (= e!409200 (contains!4054 Nil!13757 (select (arr!19705 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!731246 () Bool)

(assert (=> b!731246 (= e!409199 call!34833)))

(assert (= (and d!99549 (not res!491570)) b!731242))

(assert (= (and b!731242 res!491571) b!731245))

(assert (= (and b!731242 res!491569) b!731243))

(assert (= (and b!731243 c!80211) b!731246))

(assert (= (and b!731243 (not c!80211)) b!731244))

(assert (= (or b!731246 b!731244) bm!34830))

(assert (=> b!731242 m!684733))

(assert (=> b!731242 m!684733))

(assert (=> b!731242 m!684735))

(assert (=> b!731243 m!684733))

(assert (=> b!731243 m!684733))

(assert (=> b!731243 m!684735))

(assert (=> bm!34830 m!684733))

(declare-fun m!684745 () Bool)

(assert (=> bm!34830 m!684745))

(assert (=> b!731245 m!684733))

(assert (=> b!731245 m!684733))

(declare-fun m!684747 () Bool)

(assert (=> b!731245 m!684747))

(assert (=> b!731140 d!99549))

(declare-fun d!99551 () Bool)

(declare-fun lt!324080 () (_ BitVec 32))

(assert (=> d!99551 (and (bvsge lt!324080 #b00000000000000000000000000000000) (bvslt lt!324080 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!99551 (= lt!324080 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!99551 (validMask!0 mask!3328)))

(assert (=> d!99551 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!324080)))

(declare-fun bs!20930 () Bool)

(assert (= bs!20930 d!99551))

(declare-fun m!684749 () Bool)

(assert (=> bs!20930 m!684749))

(assert (=> bs!20930 m!684675))

(assert (=> b!731142 d!99551))

(declare-fun b!731279 () Bool)

(declare-fun e!409222 () SeekEntryResult!7312)

(declare-fun e!409225 () SeekEntryResult!7312)

(assert (=> b!731279 (= e!409222 e!409225)))

(declare-fun lt!324089 () (_ BitVec 64))

(declare-fun c!80225 () Bool)

(assert (=> b!731279 (= c!80225 (or (= lt!324089 (select (arr!19705 a!3186) j!159)) (= (bvadd lt!324089 lt!324089) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!731280 () Bool)

(assert (=> b!731280 (= e!409225 (Intermediate!7312 false index!1321 x!1131))))

(declare-fun b!731281 () Bool)

(declare-fun lt!324090 () SeekEntryResult!7312)

(assert (=> b!731281 (and (bvsge (index!31617 lt!324090) #b00000000000000000000000000000000) (bvslt (index!31617 lt!324090) (size!20126 a!3186)))))

(declare-fun res!491584 () Bool)

(assert (=> b!731281 (= res!491584 (= (select (arr!19705 a!3186) (index!31617 lt!324090)) (select (arr!19705 a!3186) j!159)))))

(declare-fun e!409221 () Bool)

(assert (=> b!731281 (=> res!491584 e!409221)))

(declare-fun e!409224 () Bool)

(assert (=> b!731281 (= e!409224 e!409221)))

(declare-fun b!731282 () Bool)

(assert (=> b!731282 (and (bvsge (index!31617 lt!324090) #b00000000000000000000000000000000) (bvslt (index!31617 lt!324090) (size!20126 a!3186)))))

(declare-fun res!491582 () Bool)

(assert (=> b!731282 (= res!491582 (= (select (arr!19705 a!3186) (index!31617 lt!324090)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!731282 (=> res!491582 e!409221)))

(declare-fun b!731283 () Bool)

(assert (=> b!731283 (and (bvsge (index!31617 lt!324090) #b00000000000000000000000000000000) (bvslt (index!31617 lt!324090) (size!20126 a!3186)))))

(assert (=> b!731283 (= e!409221 (= (select (arr!19705 a!3186) (index!31617 lt!324090)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!731284 () Bool)

(declare-fun e!409223 () Bool)

(assert (=> b!731284 (= e!409223 (bvsge (x!62615 lt!324090) #b01111111111111111111111111111110))))

(declare-fun b!731285 () Bool)

(assert (=> b!731285 (= e!409223 e!409224)))

(declare-fun res!491583 () Bool)

(assert (=> b!731285 (= res!491583 (and ((_ is Intermediate!7312) lt!324090) (not (undefined!8124 lt!324090)) (bvslt (x!62615 lt!324090) #b01111111111111111111111111111110) (bvsge (x!62615 lt!324090) #b00000000000000000000000000000000) (bvsge (x!62615 lt!324090) x!1131)))))

(assert (=> b!731285 (=> (not res!491583) (not e!409224))))

(declare-fun b!731286 () Bool)

(assert (=> b!731286 (= e!409225 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!19705 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!731287 () Bool)

(assert (=> b!731287 (= e!409222 (Intermediate!7312 true index!1321 x!1131))))

(declare-fun d!99553 () Bool)

(assert (=> d!99553 e!409223))

(declare-fun c!80226 () Bool)

(assert (=> d!99553 (= c!80226 (and ((_ is Intermediate!7312) lt!324090) (undefined!8124 lt!324090)))))

(assert (=> d!99553 (= lt!324090 e!409222)))

(declare-fun c!80224 () Bool)

(assert (=> d!99553 (= c!80224 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99553 (= lt!324089 (select (arr!19705 a!3186) index!1321))))

(assert (=> d!99553 (validMask!0 mask!3328)))

(assert (=> d!99553 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19705 a!3186) j!159) a!3186 mask!3328) lt!324090)))

(assert (= (and d!99553 c!80224) b!731287))

(assert (= (and d!99553 (not c!80224)) b!731279))

(assert (= (and b!731279 c!80225) b!731280))

(assert (= (and b!731279 (not c!80225)) b!731286))

(assert (= (and d!99553 c!80226) b!731284))

(assert (= (and d!99553 (not c!80226)) b!731285))

(assert (= (and b!731285 res!491583) b!731281))

(assert (= (and b!731281 (not res!491584)) b!731282))

(assert (= (and b!731282 (not res!491582)) b!731283))

(declare-fun m!684751 () Bool)

(assert (=> b!731283 m!684751))

(declare-fun m!684753 () Bool)

(assert (=> d!99553 m!684753))

(assert (=> d!99553 m!684675))

(assert (=> b!731282 m!684751))

(assert (=> b!731281 m!684751))

(assert (=> b!731286 m!684667))

(assert (=> b!731286 m!684667))

(assert (=> b!731286 m!684637))

(declare-fun m!684755 () Bool)

(assert (=> b!731286 m!684755))

(assert (=> b!731141 d!99553))

(declare-fun b!731300 () Bool)

(declare-fun e!409233 () SeekEntryResult!7312)

(declare-fun e!409236 () SeekEntryResult!7312)

(assert (=> b!731300 (= e!409233 e!409236)))

(declare-fun c!80230 () Bool)

(declare-fun lt!324097 () (_ BitVec 64))

(assert (=> b!731300 (= c!80230 (or (= lt!324097 lt!324038) (= (bvadd lt!324097 lt!324097) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!731301 () Bool)

(assert (=> b!731301 (= e!409236 (Intermediate!7312 false index!1321 x!1131))))

(declare-fun b!731302 () Bool)

(declare-fun lt!324098 () SeekEntryResult!7312)

(assert (=> b!731302 (and (bvsge (index!31617 lt!324098) #b00000000000000000000000000000000) (bvslt (index!31617 lt!324098) (size!20126 lt!324040)))))

(declare-fun res!491593 () Bool)

(assert (=> b!731302 (= res!491593 (= (select (arr!19705 lt!324040) (index!31617 lt!324098)) lt!324038))))

(declare-fun e!409232 () Bool)

(assert (=> b!731302 (=> res!491593 e!409232)))

(declare-fun e!409235 () Bool)

(assert (=> b!731302 (= e!409235 e!409232)))

(declare-fun b!731303 () Bool)

(assert (=> b!731303 (and (bvsge (index!31617 lt!324098) #b00000000000000000000000000000000) (bvslt (index!31617 lt!324098) (size!20126 lt!324040)))))

(declare-fun res!491591 () Bool)

(assert (=> b!731303 (= res!491591 (= (select (arr!19705 lt!324040) (index!31617 lt!324098)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!731303 (=> res!491591 e!409232)))

(declare-fun b!731304 () Bool)

(assert (=> b!731304 (and (bvsge (index!31617 lt!324098) #b00000000000000000000000000000000) (bvslt (index!31617 lt!324098) (size!20126 lt!324040)))))

(assert (=> b!731304 (= e!409232 (= (select (arr!19705 lt!324040) (index!31617 lt!324098)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!731305 () Bool)

(declare-fun e!409234 () Bool)

(assert (=> b!731305 (= e!409234 (bvsge (x!62615 lt!324098) #b01111111111111111111111111111110))))

(declare-fun b!731306 () Bool)

(assert (=> b!731306 (= e!409234 e!409235)))

(declare-fun res!491592 () Bool)

(assert (=> b!731306 (= res!491592 (and ((_ is Intermediate!7312) lt!324098) (not (undefined!8124 lt!324098)) (bvslt (x!62615 lt!324098) #b01111111111111111111111111111110) (bvsge (x!62615 lt!324098) #b00000000000000000000000000000000) (bvsge (x!62615 lt!324098) x!1131)))))

(assert (=> b!731306 (=> (not res!491592) (not e!409235))))

(declare-fun b!731307 () Bool)

(assert (=> b!731307 (= e!409236 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!324038 lt!324040 mask!3328))))

(declare-fun b!731308 () Bool)

(assert (=> b!731308 (= e!409233 (Intermediate!7312 true index!1321 x!1131))))

(declare-fun d!99559 () Bool)

(assert (=> d!99559 e!409234))

(declare-fun c!80231 () Bool)

(assert (=> d!99559 (= c!80231 (and ((_ is Intermediate!7312) lt!324098) (undefined!8124 lt!324098)))))

(assert (=> d!99559 (= lt!324098 e!409233)))

(declare-fun c!80229 () Bool)

(assert (=> d!99559 (= c!80229 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99559 (= lt!324097 (select (arr!19705 lt!324040) index!1321))))

(assert (=> d!99559 (validMask!0 mask!3328)))

(assert (=> d!99559 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324038 lt!324040 mask!3328) lt!324098)))

(assert (= (and d!99559 c!80229) b!731308))

(assert (= (and d!99559 (not c!80229)) b!731300))

(assert (= (and b!731300 c!80230) b!731301))

(assert (= (and b!731300 (not c!80230)) b!731307))

(assert (= (and d!99559 c!80231) b!731305))

(assert (= (and d!99559 (not c!80231)) b!731306))

(assert (= (and b!731306 res!491592) b!731302))

(assert (= (and b!731302 (not res!491593)) b!731303))

(assert (= (and b!731303 (not res!491591)) b!731304))

(declare-fun m!684757 () Bool)

(assert (=> b!731304 m!684757))

(declare-fun m!684759 () Bool)

(assert (=> d!99559 m!684759))

(assert (=> d!99559 m!684675))

(assert (=> b!731303 m!684757))

(assert (=> b!731302 m!684757))

(assert (=> b!731307 m!684667))

(assert (=> b!731307 m!684667))

(declare-fun m!684761 () Bool)

(assert (=> b!731307 m!684761))

(assert (=> b!731159 d!99559))

(declare-fun b!731309 () Bool)

(declare-fun e!409238 () SeekEntryResult!7312)

(declare-fun e!409241 () SeekEntryResult!7312)

(assert (=> b!731309 (= e!409238 e!409241)))

(declare-fun c!80233 () Bool)

(declare-fun lt!324099 () (_ BitVec 64))

(assert (=> b!731309 (= c!80233 (or (= lt!324099 lt!324038) (= (bvadd lt!324099 lt!324099) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!731310 () Bool)

(assert (=> b!731310 (= e!409241 (Intermediate!7312 false (toIndex!0 lt!324038 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!731311 () Bool)

(declare-fun lt!324100 () SeekEntryResult!7312)

(assert (=> b!731311 (and (bvsge (index!31617 lt!324100) #b00000000000000000000000000000000) (bvslt (index!31617 lt!324100) (size!20126 lt!324040)))))

(declare-fun res!491596 () Bool)

(assert (=> b!731311 (= res!491596 (= (select (arr!19705 lt!324040) (index!31617 lt!324100)) lt!324038))))

(declare-fun e!409237 () Bool)

(assert (=> b!731311 (=> res!491596 e!409237)))

(declare-fun e!409240 () Bool)

(assert (=> b!731311 (= e!409240 e!409237)))

(declare-fun b!731312 () Bool)

(assert (=> b!731312 (and (bvsge (index!31617 lt!324100) #b00000000000000000000000000000000) (bvslt (index!31617 lt!324100) (size!20126 lt!324040)))))

(declare-fun res!491594 () Bool)

(assert (=> b!731312 (= res!491594 (= (select (arr!19705 lt!324040) (index!31617 lt!324100)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!731312 (=> res!491594 e!409237)))

(declare-fun b!731313 () Bool)

(assert (=> b!731313 (and (bvsge (index!31617 lt!324100) #b00000000000000000000000000000000) (bvslt (index!31617 lt!324100) (size!20126 lt!324040)))))

(assert (=> b!731313 (= e!409237 (= (select (arr!19705 lt!324040) (index!31617 lt!324100)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!731314 () Bool)

(declare-fun e!409239 () Bool)

(assert (=> b!731314 (= e!409239 (bvsge (x!62615 lt!324100) #b01111111111111111111111111111110))))

(declare-fun b!731315 () Bool)

(assert (=> b!731315 (= e!409239 e!409240)))

(declare-fun res!491595 () Bool)

(assert (=> b!731315 (= res!491595 (and ((_ is Intermediate!7312) lt!324100) (not (undefined!8124 lt!324100)) (bvslt (x!62615 lt!324100) #b01111111111111111111111111111110) (bvsge (x!62615 lt!324100) #b00000000000000000000000000000000) (bvsge (x!62615 lt!324100) #b00000000000000000000000000000000)))))

(assert (=> b!731315 (=> (not res!491595) (not e!409240))))

(declare-fun b!731316 () Bool)

(assert (=> b!731316 (= e!409241 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!324038 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!324038 lt!324040 mask!3328))))

(declare-fun b!731317 () Bool)

(assert (=> b!731317 (= e!409238 (Intermediate!7312 true (toIndex!0 lt!324038 mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!99561 () Bool)

(assert (=> d!99561 e!409239))

(declare-fun c!80234 () Bool)

(assert (=> d!99561 (= c!80234 (and ((_ is Intermediate!7312) lt!324100) (undefined!8124 lt!324100)))))

(assert (=> d!99561 (= lt!324100 e!409238)))

(declare-fun c!80232 () Bool)

(assert (=> d!99561 (= c!80232 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!99561 (= lt!324099 (select (arr!19705 lt!324040) (toIndex!0 lt!324038 mask!3328)))))

(assert (=> d!99561 (validMask!0 mask!3328)))

(assert (=> d!99561 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324038 mask!3328) lt!324038 lt!324040 mask!3328) lt!324100)))

(assert (= (and d!99561 c!80232) b!731317))

(assert (= (and d!99561 (not c!80232)) b!731309))

(assert (= (and b!731309 c!80233) b!731310))

(assert (= (and b!731309 (not c!80233)) b!731316))

(assert (= (and d!99561 c!80234) b!731314))

(assert (= (and d!99561 (not c!80234)) b!731315))

(assert (= (and b!731315 res!491595) b!731311))

(assert (= (and b!731311 (not res!491596)) b!731312))

(assert (= (and b!731312 (not res!491594)) b!731313))

(declare-fun m!684763 () Bool)

(assert (=> b!731313 m!684763))

(assert (=> d!99561 m!684647))

(declare-fun m!684765 () Bool)

(assert (=> d!99561 m!684765))

(assert (=> d!99561 m!684675))

(assert (=> b!731312 m!684763))

(assert (=> b!731311 m!684763))

(assert (=> b!731316 m!684647))

(declare-fun m!684767 () Bool)

(assert (=> b!731316 m!684767))

(assert (=> b!731316 m!684767))

(declare-fun m!684769 () Bool)

(assert (=> b!731316 m!684769))

(assert (=> b!731159 d!99561))

(declare-fun d!99563 () Bool)

(declare-fun lt!324111 () (_ BitVec 32))

(declare-fun lt!324110 () (_ BitVec 32))

(assert (=> d!99563 (= lt!324111 (bvmul (bvxor lt!324110 (bvlshr lt!324110 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99563 (= lt!324110 ((_ extract 31 0) (bvand (bvxor lt!324038 (bvlshr lt!324038 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99563 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!491600 (let ((h!14818 ((_ extract 31 0) (bvand (bvxor lt!324038 (bvlshr lt!324038 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62620 (bvmul (bvxor h!14818 (bvlshr h!14818 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62620 (bvlshr x!62620 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!491600 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!491600 #b00000000000000000000000000000000))))))

(assert (=> d!99563 (= (toIndex!0 lt!324038 mask!3328) (bvand (bvxor lt!324111 (bvlshr lt!324111 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!731159 d!99563))

(declare-fun d!99569 () Bool)

(assert (=> d!99569 (= (validKeyInArray!0 (select (arr!19705 a!3186) j!159)) (and (not (= (select (arr!19705 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19705 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!731148 d!99569))

(declare-fun d!99571 () Bool)

(declare-fun lt!324138 () SeekEntryResult!7312)

(assert (=> d!99571 (and (or ((_ is Undefined!7312) lt!324138) (not ((_ is Found!7312) lt!324138)) (and (bvsge (index!31616 lt!324138) #b00000000000000000000000000000000) (bvslt (index!31616 lt!324138) (size!20126 a!3186)))) (or ((_ is Undefined!7312) lt!324138) ((_ is Found!7312) lt!324138) (not ((_ is MissingZero!7312) lt!324138)) (and (bvsge (index!31615 lt!324138) #b00000000000000000000000000000000) (bvslt (index!31615 lt!324138) (size!20126 a!3186)))) (or ((_ is Undefined!7312) lt!324138) ((_ is Found!7312) lt!324138) ((_ is MissingZero!7312) lt!324138) (not ((_ is MissingVacant!7312) lt!324138)) (and (bvsge (index!31618 lt!324138) #b00000000000000000000000000000000) (bvslt (index!31618 lt!324138) (size!20126 a!3186)))) (or ((_ is Undefined!7312) lt!324138) (ite ((_ is Found!7312) lt!324138) (= (select (arr!19705 a!3186) (index!31616 lt!324138)) (select (arr!19705 a!3186) j!159)) (ite ((_ is MissingZero!7312) lt!324138) (= (select (arr!19705 a!3186) (index!31615 lt!324138)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7312) lt!324138) (= (select (arr!19705 a!3186) (index!31618 lt!324138)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!409278 () SeekEntryResult!7312)

(assert (=> d!99571 (= lt!324138 e!409278)))

(declare-fun c!80260 () Bool)

(declare-fun lt!324137 () SeekEntryResult!7312)

(assert (=> d!99571 (= c!80260 (and ((_ is Intermediate!7312) lt!324137) (undefined!8124 lt!324137)))))

(assert (=> d!99571 (= lt!324137 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19705 a!3186) j!159) mask!3328) (select (arr!19705 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!99571 (validMask!0 mask!3328)))

(assert (=> d!99571 (= (seekEntryOrOpen!0 (select (arr!19705 a!3186) j!159) a!3186 mask!3328) lt!324138)))

(declare-fun b!731377 () Bool)

(declare-fun e!409277 () SeekEntryResult!7312)

(assert (=> b!731377 (= e!409278 e!409277)))

(declare-fun lt!324136 () (_ BitVec 64))

(assert (=> b!731377 (= lt!324136 (select (arr!19705 a!3186) (index!31617 lt!324137)))))

(declare-fun c!80261 () Bool)

(assert (=> b!731377 (= c!80261 (= lt!324136 (select (arr!19705 a!3186) j!159)))))

(declare-fun b!731378 () Bool)

(declare-fun c!80259 () Bool)

(assert (=> b!731378 (= c!80259 (= lt!324136 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!409276 () SeekEntryResult!7312)

(assert (=> b!731378 (= e!409277 e!409276)))

(declare-fun b!731379 () Bool)

(assert (=> b!731379 (= e!409277 (Found!7312 (index!31617 lt!324137)))))

(declare-fun b!731380 () Bool)

(assert (=> b!731380 (= e!409276 (seekKeyOrZeroReturnVacant!0 (x!62615 lt!324137) (index!31617 lt!324137) (index!31617 lt!324137) (select (arr!19705 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!731381 () Bool)

(assert (=> b!731381 (= e!409276 (MissingZero!7312 (index!31617 lt!324137)))))

(declare-fun b!731382 () Bool)

(assert (=> b!731382 (= e!409278 Undefined!7312)))

(assert (= (and d!99571 c!80260) b!731382))

(assert (= (and d!99571 (not c!80260)) b!731377))

(assert (= (and b!731377 c!80261) b!731379))

(assert (= (and b!731377 (not c!80261)) b!731378))

(assert (= (and b!731378 c!80259) b!731381))

(assert (= (and b!731378 (not c!80259)) b!731380))

(assert (=> d!99571 m!684659))

(assert (=> d!99571 m!684637))

(assert (=> d!99571 m!684661))

(declare-fun m!684815 () Bool)

(assert (=> d!99571 m!684815))

(assert (=> d!99571 m!684675))

(declare-fun m!684817 () Bool)

(assert (=> d!99571 m!684817))

(declare-fun m!684819 () Bool)

(assert (=> d!99571 m!684819))

(assert (=> d!99571 m!684637))

(assert (=> d!99571 m!684659))

(declare-fun m!684823 () Bool)

(assert (=> b!731377 m!684823))

(assert (=> b!731380 m!684637))

(declare-fun m!684827 () Bool)

(assert (=> b!731380 m!684827))

(assert (=> b!731146 d!99571))

(declare-fun b!731408 () Bool)

(declare-fun e!409297 () SeekEntryResult!7312)

(assert (=> b!731408 (= e!409297 (Found!7312 index!1321))))

(declare-fun d!99585 () Bool)

(declare-fun lt!324150 () SeekEntryResult!7312)

(assert (=> d!99585 (and (or ((_ is Undefined!7312) lt!324150) (not ((_ is Found!7312) lt!324150)) (and (bvsge (index!31616 lt!324150) #b00000000000000000000000000000000) (bvslt (index!31616 lt!324150) (size!20126 a!3186)))) (or ((_ is Undefined!7312) lt!324150) ((_ is Found!7312) lt!324150) (not ((_ is MissingVacant!7312) lt!324150)) (not (= (index!31618 lt!324150) resIntermediateIndex!5)) (and (bvsge (index!31618 lt!324150) #b00000000000000000000000000000000) (bvslt (index!31618 lt!324150) (size!20126 a!3186)))) (or ((_ is Undefined!7312) lt!324150) (ite ((_ is Found!7312) lt!324150) (= (select (arr!19705 a!3186) (index!31616 lt!324150)) (select (arr!19705 a!3186) j!159)) (and ((_ is MissingVacant!7312) lt!324150) (= (index!31618 lt!324150) resIntermediateIndex!5) (= (select (arr!19705 a!3186) (index!31618 lt!324150)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!409295 () SeekEntryResult!7312)

(assert (=> d!99585 (= lt!324150 e!409295)))

(declare-fun c!80271 () Bool)

(assert (=> d!99585 (= c!80271 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!324149 () (_ BitVec 64))

(assert (=> d!99585 (= lt!324149 (select (arr!19705 a!3186) index!1321))))

(assert (=> d!99585 (validMask!0 mask!3328)))

(assert (=> d!99585 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19705 a!3186) j!159) a!3186 mask!3328) lt!324150)))

(declare-fun b!731409 () Bool)

(assert (=> b!731409 (= e!409295 e!409297)))

(declare-fun c!80273 () Bool)

(assert (=> b!731409 (= c!80273 (= lt!324149 (select (arr!19705 a!3186) j!159)))))

(declare-fun b!731410 () Bool)

(declare-fun e!409296 () SeekEntryResult!7312)

(assert (=> b!731410 (= e!409296 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!19705 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!731411 () Bool)

(assert (=> b!731411 (= e!409295 Undefined!7312)))

(declare-fun b!731412 () Bool)

(assert (=> b!731412 (= e!409296 (MissingVacant!7312 resIntermediateIndex!5))))

(declare-fun b!731413 () Bool)

(declare-fun c!80272 () Bool)

(assert (=> b!731413 (= c!80272 (= lt!324149 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!731413 (= e!409297 e!409296)))

(assert (= (and d!99585 c!80271) b!731411))

(assert (= (and d!99585 (not c!80271)) b!731409))

(assert (= (and b!731409 c!80273) b!731408))

(assert (= (and b!731409 (not c!80273)) b!731413))

(assert (= (and b!731413 c!80272) b!731412))

(assert (= (and b!731413 (not c!80272)) b!731410))

(declare-fun m!684829 () Bool)

(assert (=> d!99585 m!684829))

(declare-fun m!684831 () Bool)

(assert (=> d!99585 m!684831))

(assert (=> d!99585 m!684753))

(assert (=> d!99585 m!684675))

(assert (=> b!731410 m!684667))

(assert (=> b!731410 m!684667))

(assert (=> b!731410 m!684637))

(declare-fun m!684833 () Bool)

(assert (=> b!731410 m!684833))

(assert (=> b!731145 d!99585))

(declare-fun b!731414 () Bool)

(declare-fun e!409298 () Bool)

(declare-fun e!409299 () Bool)

(assert (=> b!731414 (= e!409298 e!409299)))

(declare-fun c!80274 () Bool)

(assert (=> b!731414 (= c!80274 (validKeyInArray!0 (select (arr!19705 a!3186) j!159)))))

(declare-fun call!34842 () Bool)

(declare-fun bm!34839 () Bool)

(assert (=> bm!34839 (= call!34842 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!99593 () Bool)

(declare-fun res!491617 () Bool)

(assert (=> d!99593 (=> res!491617 e!409298)))

(assert (=> d!99593 (= res!491617 (bvsge j!159 (size!20126 a!3186)))))

(assert (=> d!99593 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!409298)))

(declare-fun b!731415 () Bool)

(declare-fun e!409300 () Bool)

(assert (=> b!731415 (= e!409299 e!409300)))

(declare-fun lt!324151 () (_ BitVec 64))

(assert (=> b!731415 (= lt!324151 (select (arr!19705 a!3186) j!159))))

(declare-fun lt!324152 () Unit!24942)

(assert (=> b!731415 (= lt!324152 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!324151 j!159))))

(assert (=> b!731415 (arrayContainsKey!0 a!3186 lt!324151 #b00000000000000000000000000000000)))

(declare-fun lt!324153 () Unit!24942)

(assert (=> b!731415 (= lt!324153 lt!324152)))

(declare-fun res!491616 () Bool)

(assert (=> b!731415 (= res!491616 (= (seekEntryOrOpen!0 (select (arr!19705 a!3186) j!159) a!3186 mask!3328) (Found!7312 j!159)))))

(assert (=> b!731415 (=> (not res!491616) (not e!409300))))

(declare-fun b!731416 () Bool)

(assert (=> b!731416 (= e!409299 call!34842)))

(declare-fun b!731417 () Bool)

(assert (=> b!731417 (= e!409300 call!34842)))

(assert (= (and d!99593 (not res!491617)) b!731414))

(assert (= (and b!731414 c!80274) b!731415))

(assert (= (and b!731414 (not c!80274)) b!731416))

(assert (= (and b!731415 res!491616) b!731417))

(assert (= (or b!731417 b!731416) bm!34839))

(assert (=> b!731414 m!684637))

(assert (=> b!731414 m!684637))

(assert (=> b!731414 m!684639))

(declare-fun m!684835 () Bool)

(assert (=> bm!34839 m!684835))

(assert (=> b!731415 m!684637))

(declare-fun m!684837 () Bool)

(assert (=> b!731415 m!684837))

(declare-fun m!684839 () Bool)

(assert (=> b!731415 m!684839))

(assert (=> b!731415 m!684637))

(assert (=> b!731415 m!684641))

(assert (=> b!731147 d!99593))

(declare-fun d!99595 () Bool)

(assert (=> d!99595 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!324165 () Unit!24942)

(declare-fun choose!38 (array!41178 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24942)

(assert (=> d!99595 (= lt!324165 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!99595 (validMask!0 mask!3328)))

(assert (=> d!99595 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!324165)))

(declare-fun bs!20933 () Bool)

(assert (= bs!20933 d!99595))

(assert (=> bs!20933 m!684663))

(declare-fun m!684853 () Bool)

(assert (=> bs!20933 m!684853))

(assert (=> bs!20933 m!684675))

(assert (=> b!731147 d!99595))

(declare-fun b!731434 () Bool)

(declare-fun e!409312 () SeekEntryResult!7312)

(assert (=> b!731434 (= e!409312 (Found!7312 resIntermediateIndex!5))))

(declare-fun d!99601 () Bool)

(declare-fun lt!324167 () SeekEntryResult!7312)

(assert (=> d!99601 (and (or ((_ is Undefined!7312) lt!324167) (not ((_ is Found!7312) lt!324167)) (and (bvsge (index!31616 lt!324167) #b00000000000000000000000000000000) (bvslt (index!31616 lt!324167) (size!20126 a!3186)))) (or ((_ is Undefined!7312) lt!324167) ((_ is Found!7312) lt!324167) (not ((_ is MissingVacant!7312) lt!324167)) (not (= (index!31618 lt!324167) resIntermediateIndex!5)) (and (bvsge (index!31618 lt!324167) #b00000000000000000000000000000000) (bvslt (index!31618 lt!324167) (size!20126 a!3186)))) (or ((_ is Undefined!7312) lt!324167) (ite ((_ is Found!7312) lt!324167) (= (select (arr!19705 a!3186) (index!31616 lt!324167)) (select (arr!19705 a!3186) j!159)) (and ((_ is MissingVacant!7312) lt!324167) (= (index!31618 lt!324167) resIntermediateIndex!5) (= (select (arr!19705 a!3186) (index!31618 lt!324167)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!409310 () SeekEntryResult!7312)

(assert (=> d!99601 (= lt!324167 e!409310)))

(declare-fun c!80282 () Bool)

(assert (=> d!99601 (= c!80282 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(declare-fun lt!324166 () (_ BitVec 64))

(assert (=> d!99601 (= lt!324166 (select (arr!19705 a!3186) resIntermediateIndex!5))))

(assert (=> d!99601 (validMask!0 mask!3328)))

(assert (=> d!99601 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19705 a!3186) j!159) a!3186 mask!3328) lt!324167)))

(declare-fun b!731435 () Bool)

(assert (=> b!731435 (= e!409310 e!409312)))

(declare-fun c!80284 () Bool)

(assert (=> b!731435 (= c!80284 (= lt!324166 (select (arr!19705 a!3186) j!159)))))

(declare-fun b!731436 () Bool)

(declare-fun e!409311 () SeekEntryResult!7312)

(assert (=> b!731436 (= e!409311 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!19705 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!731437 () Bool)

(assert (=> b!731437 (= e!409310 Undefined!7312)))

(declare-fun b!731438 () Bool)

(assert (=> b!731438 (= e!409311 (MissingVacant!7312 resIntermediateIndex!5))))

(declare-fun b!731439 () Bool)

(declare-fun c!80283 () Bool)

(assert (=> b!731439 (= c!80283 (= lt!324166 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!731439 (= e!409312 e!409311)))

(assert (= (and d!99601 c!80282) b!731437))

(assert (= (and d!99601 (not c!80282)) b!731435))

(assert (= (and b!731435 c!80284) b!731434))

(assert (= (and b!731435 (not c!80284)) b!731439))

(assert (= (and b!731439 c!80283) b!731438))

(assert (= (and b!731439 (not c!80283)) b!731436))

(declare-fun m!684855 () Bool)

(assert (=> d!99601 m!684855))

(declare-fun m!684857 () Bool)

(assert (=> d!99601 m!684857))

(assert (=> d!99601 m!684671))

(assert (=> d!99601 m!684675))

(declare-fun m!684859 () Bool)

(assert (=> b!731436 m!684859))

(assert (=> b!731436 m!684859))

(assert (=> b!731436 m!684637))

(declare-fun m!684861 () Bool)

(assert (=> b!731436 m!684861))

(assert (=> b!731157 d!99601))

(declare-fun d!99603 () Bool)

(assert (=> d!99603 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!731143 d!99603))

(declare-fun d!99605 () Bool)

(declare-fun res!491624 () Bool)

(declare-fun e!409323 () Bool)

(assert (=> d!99605 (=> res!491624 e!409323)))

(assert (=> d!99605 (= res!491624 (= (select (arr!19705 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!99605 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!409323)))

(declare-fun b!731456 () Bool)

(declare-fun e!409324 () Bool)

(assert (=> b!731456 (= e!409323 e!409324)))

(declare-fun res!491625 () Bool)

(assert (=> b!731456 (=> (not res!491625) (not e!409324))))

(assert (=> b!731456 (= res!491625 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20126 a!3186)))))

(declare-fun b!731457 () Bool)

(assert (=> b!731457 (= e!409324 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!99605 (not res!491624)) b!731456))

(assert (= (and b!731456 res!491625) b!731457))

(assert (=> d!99605 m!684733))

(declare-fun m!684887 () Bool)

(assert (=> b!731457 m!684887))

(assert (=> b!731154 d!99605))

(assert (=> b!731153 d!99585))

(declare-fun d!99611 () Bool)

(declare-fun lt!324176 () SeekEntryResult!7312)

(assert (=> d!99611 (and (or ((_ is Undefined!7312) lt!324176) (not ((_ is Found!7312) lt!324176)) (and (bvsge (index!31616 lt!324176) #b00000000000000000000000000000000) (bvslt (index!31616 lt!324176) (size!20126 a!3186)))) (or ((_ is Undefined!7312) lt!324176) ((_ is Found!7312) lt!324176) (not ((_ is MissingZero!7312) lt!324176)) (and (bvsge (index!31615 lt!324176) #b00000000000000000000000000000000) (bvslt (index!31615 lt!324176) (size!20126 a!3186)))) (or ((_ is Undefined!7312) lt!324176) ((_ is Found!7312) lt!324176) ((_ is MissingZero!7312) lt!324176) (not ((_ is MissingVacant!7312) lt!324176)) (and (bvsge (index!31618 lt!324176) #b00000000000000000000000000000000) (bvslt (index!31618 lt!324176) (size!20126 a!3186)))) (or ((_ is Undefined!7312) lt!324176) (ite ((_ is Found!7312) lt!324176) (= (select (arr!19705 a!3186) (index!31616 lt!324176)) k0!2102) (ite ((_ is MissingZero!7312) lt!324176) (= (select (arr!19705 a!3186) (index!31615 lt!324176)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7312) lt!324176) (= (select (arr!19705 a!3186) (index!31618 lt!324176)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!409327 () SeekEntryResult!7312)

(assert (=> d!99611 (= lt!324176 e!409327)))

(declare-fun c!80292 () Bool)

(declare-fun lt!324175 () SeekEntryResult!7312)

(assert (=> d!99611 (= c!80292 (and ((_ is Intermediate!7312) lt!324175) (undefined!8124 lt!324175)))))

(assert (=> d!99611 (= lt!324175 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!99611 (validMask!0 mask!3328)))

(assert (=> d!99611 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!324176)))

(declare-fun b!731458 () Bool)

(declare-fun e!409326 () SeekEntryResult!7312)

(assert (=> b!731458 (= e!409327 e!409326)))

(declare-fun lt!324174 () (_ BitVec 64))

(assert (=> b!731458 (= lt!324174 (select (arr!19705 a!3186) (index!31617 lt!324175)))))

(declare-fun c!80293 () Bool)

(assert (=> b!731458 (= c!80293 (= lt!324174 k0!2102))))

(declare-fun b!731459 () Bool)

(declare-fun c!80291 () Bool)

(assert (=> b!731459 (= c!80291 (= lt!324174 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!409325 () SeekEntryResult!7312)

(assert (=> b!731459 (= e!409326 e!409325)))

(declare-fun b!731460 () Bool)

(assert (=> b!731460 (= e!409326 (Found!7312 (index!31617 lt!324175)))))

(declare-fun b!731461 () Bool)

(assert (=> b!731461 (= e!409325 (seekKeyOrZeroReturnVacant!0 (x!62615 lt!324175) (index!31617 lt!324175) (index!31617 lt!324175) k0!2102 a!3186 mask!3328))))

(declare-fun b!731462 () Bool)

(assert (=> b!731462 (= e!409325 (MissingZero!7312 (index!31617 lt!324175)))))

(declare-fun b!731463 () Bool)

(assert (=> b!731463 (= e!409327 Undefined!7312)))

(assert (= (and d!99611 c!80292) b!731463))

(assert (= (and d!99611 (not c!80292)) b!731458))

(assert (= (and b!731458 c!80293) b!731460))

(assert (= (and b!731458 (not c!80293)) b!731459))

(assert (= (and b!731459 c!80291) b!731462))

(assert (= (and b!731459 (not c!80291)) b!731461))

(declare-fun m!684889 () Bool)

(assert (=> d!99611 m!684889))

(declare-fun m!684891 () Bool)

(assert (=> d!99611 m!684891))

(declare-fun m!684893 () Bool)

(assert (=> d!99611 m!684893))

(assert (=> d!99611 m!684675))

(declare-fun m!684895 () Bool)

(assert (=> d!99611 m!684895))

(declare-fun m!684897 () Bool)

(assert (=> d!99611 m!684897))

(assert (=> d!99611 m!684889))

(declare-fun m!684899 () Bool)

(assert (=> b!731458 m!684899))

(declare-fun m!684901 () Bool)

(assert (=> b!731461 m!684901))

(assert (=> b!731155 d!99611))

(declare-fun b!731464 () Bool)

(declare-fun e!409329 () SeekEntryResult!7312)

(declare-fun e!409332 () SeekEntryResult!7312)

(assert (=> b!731464 (= e!409329 e!409332)))

(declare-fun c!80295 () Bool)

(declare-fun lt!324177 () (_ BitVec 64))

(assert (=> b!731464 (= c!80295 (or (= lt!324177 (select (arr!19705 a!3186) j!159)) (= (bvadd lt!324177 lt!324177) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!731465 () Bool)

(assert (=> b!731465 (= e!409332 (Intermediate!7312 false (toIndex!0 (select (arr!19705 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!731466 () Bool)

(declare-fun lt!324178 () SeekEntryResult!7312)

(assert (=> b!731466 (and (bvsge (index!31617 lt!324178) #b00000000000000000000000000000000) (bvslt (index!31617 lt!324178) (size!20126 a!3186)))))

(declare-fun res!491628 () Bool)

(assert (=> b!731466 (= res!491628 (= (select (arr!19705 a!3186) (index!31617 lt!324178)) (select (arr!19705 a!3186) j!159)))))

(declare-fun e!409328 () Bool)

(assert (=> b!731466 (=> res!491628 e!409328)))

(declare-fun e!409331 () Bool)

(assert (=> b!731466 (= e!409331 e!409328)))

(declare-fun b!731467 () Bool)

(assert (=> b!731467 (and (bvsge (index!31617 lt!324178) #b00000000000000000000000000000000) (bvslt (index!31617 lt!324178) (size!20126 a!3186)))))

(declare-fun res!491626 () Bool)

(assert (=> b!731467 (= res!491626 (= (select (arr!19705 a!3186) (index!31617 lt!324178)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!731467 (=> res!491626 e!409328)))

(declare-fun b!731468 () Bool)

(assert (=> b!731468 (and (bvsge (index!31617 lt!324178) #b00000000000000000000000000000000) (bvslt (index!31617 lt!324178) (size!20126 a!3186)))))

(assert (=> b!731468 (= e!409328 (= (select (arr!19705 a!3186) (index!31617 lt!324178)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!731469 () Bool)

(declare-fun e!409330 () Bool)

(assert (=> b!731469 (= e!409330 (bvsge (x!62615 lt!324178) #b01111111111111111111111111111110))))

(declare-fun b!731470 () Bool)

(assert (=> b!731470 (= e!409330 e!409331)))

(declare-fun res!491627 () Bool)

(assert (=> b!731470 (= res!491627 (and ((_ is Intermediate!7312) lt!324178) (not (undefined!8124 lt!324178)) (bvslt (x!62615 lt!324178) #b01111111111111111111111111111110) (bvsge (x!62615 lt!324178) #b00000000000000000000000000000000) (bvsge (x!62615 lt!324178) #b00000000000000000000000000000000)))))

(assert (=> b!731470 (=> (not res!491627) (not e!409331))))

(declare-fun b!731471 () Bool)

(assert (=> b!731471 (= e!409332 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!19705 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!19705 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!731472 () Bool)

(assert (=> b!731472 (= e!409329 (Intermediate!7312 true (toIndex!0 (select (arr!19705 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!99613 () Bool)

(assert (=> d!99613 e!409330))

(declare-fun c!80296 () Bool)

(assert (=> d!99613 (= c!80296 (and ((_ is Intermediate!7312) lt!324178) (undefined!8124 lt!324178)))))

(assert (=> d!99613 (= lt!324178 e!409329)))

(declare-fun c!80294 () Bool)

(assert (=> d!99613 (= c!80294 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!99613 (= lt!324177 (select (arr!19705 a!3186) (toIndex!0 (select (arr!19705 a!3186) j!159) mask!3328)))))

(assert (=> d!99613 (validMask!0 mask!3328)))

(assert (=> d!99613 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19705 a!3186) j!159) mask!3328) (select (arr!19705 a!3186) j!159) a!3186 mask!3328) lt!324178)))

(assert (= (and d!99613 c!80294) b!731472))

(assert (= (and d!99613 (not c!80294)) b!731464))

(assert (= (and b!731464 c!80295) b!731465))

(assert (= (and b!731464 (not c!80295)) b!731471))

(assert (= (and d!99613 c!80296) b!731469))

(assert (= (and d!99613 (not c!80296)) b!731470))

(assert (= (and b!731470 res!491627) b!731466))

(assert (= (and b!731466 (not res!491628)) b!731467))

(assert (= (and b!731467 (not res!491626)) b!731468))

(declare-fun m!684903 () Bool)

(assert (=> b!731468 m!684903))

(assert (=> d!99613 m!684659))

(declare-fun m!684905 () Bool)

(assert (=> d!99613 m!684905))

(assert (=> d!99613 m!684675))

(assert (=> b!731467 m!684903))

(assert (=> b!731466 m!684903))

(assert (=> b!731471 m!684659))

(declare-fun m!684907 () Bool)

(assert (=> b!731471 m!684907))

(assert (=> b!731471 m!684907))

(assert (=> b!731471 m!684637))

(declare-fun m!684909 () Bool)

(assert (=> b!731471 m!684909))

(assert (=> b!731144 d!99613))

(declare-fun d!99615 () Bool)

(declare-fun lt!324182 () (_ BitVec 32))

(declare-fun lt!324181 () (_ BitVec 32))

(assert (=> d!99615 (= lt!324182 (bvmul (bvxor lt!324181 (bvlshr lt!324181 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99615 (= lt!324181 ((_ extract 31 0) (bvand (bvxor (select (arr!19705 a!3186) j!159) (bvlshr (select (arr!19705 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99615 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!491600 (let ((h!14818 ((_ extract 31 0) (bvand (bvxor (select (arr!19705 a!3186) j!159) (bvlshr (select (arr!19705 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62620 (bvmul (bvxor h!14818 (bvlshr h!14818 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62620 (bvlshr x!62620 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!491600 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!491600 #b00000000000000000000000000000000))))))

(assert (=> d!99615 (= (toIndex!0 (select (arr!19705 a!3186) j!159) mask!3328) (bvand (bvxor lt!324182 (bvlshr lt!324182 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!731144 d!99615))

(declare-fun d!99617 () Bool)

(assert (=> d!99617 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!64776 d!99617))

(declare-fun d!99625 () Bool)

(assert (=> d!99625 (= (array_inv!15479 a!3186) (bvsge (size!20126 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!64776 d!99625))

(check-sat (not d!99553) (not d!99585) (not b!731229) (not d!99595) (not b!731414) (not b!731286) (not b!731316) (not d!99611) (not bm!34839) (not b!731242) (not bm!34830) (not d!99601) (not b!731457) (not b!731245) (not b!731436) (not d!99551) (not d!99559) (not b!731243) (not b!731415) (not bm!34827) (not d!99613) (not b!731461) (not b!731410) (not d!99571) (not b!731307) (not b!731471) (not b!731228) (not b!731380) (not d!99561))
(check-sat)

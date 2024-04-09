; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64404 () Bool)

(assert start!64404)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!405602 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!724103 () Bool)

(assert (=> b!724103 (= e!405602 (not (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge resIntermediateX!5 #b00000000000000000000000000000000))))))

(declare-fun e!405599 () Bool)

(assert (=> b!724103 e!405599))

(declare-fun res!485727 () Bool)

(assert (=> b!724103 (=> (not res!485727) (not e!405599))))

(declare-datatypes ((array!40938 0))(
  ( (array!40939 (arr!19588 (Array (_ BitVec 32) (_ BitVec 64))) (size!20009 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40938)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40938 (_ BitVec 32)) Bool)

(assert (=> b!724103 (= res!485727 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24708 0))(
  ( (Unit!24709) )
))
(declare-fun lt!320885 () Unit!24708)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40938 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24708)

(assert (=> b!724103 (= lt!320885 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!724104 () Bool)

(declare-fun res!485726 () Bool)

(declare-fun e!405597 () Bool)

(assert (=> b!724104 (=> (not res!485726) (not e!405597))))

(assert (=> b!724104 (= res!485726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!724105 () Bool)

(declare-fun res!485718 () Bool)

(assert (=> b!724105 (=> (not res!485718) (not e!405597))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!724105 (= res!485718 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20009 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20009 a!3186))))))

(declare-fun b!724106 () Bool)

(declare-fun res!485722 () Bool)

(declare-fun e!405598 () Bool)

(assert (=> b!724106 (=> (not res!485722) (not e!405598))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!724106 (= res!485722 (validKeyInArray!0 k0!2102))))

(declare-fun res!485725 () Bool)

(assert (=> start!64404 (=> (not res!485725) (not e!405598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64404 (= res!485725 (validMask!0 mask!3328))))

(assert (=> start!64404 e!405598))

(assert (=> start!64404 true))

(declare-fun array_inv!15362 (array!40938) Bool)

(assert (=> start!64404 (array_inv!15362 a!3186)))

(declare-fun b!724107 () Bool)

(declare-fun res!485719 () Bool)

(assert (=> b!724107 (=> (not res!485719) (not e!405597))))

(declare-datatypes ((List!13643 0))(
  ( (Nil!13640) (Cons!13639 (h!14693 (_ BitVec 64)) (t!19966 List!13643)) )
))
(declare-fun arrayNoDuplicates!0 (array!40938 (_ BitVec 32) List!13643) Bool)

(assert (=> b!724107 (= res!485719 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13640))))

(declare-fun b!724108 () Bool)

(declare-fun e!405600 () Bool)

(assert (=> b!724108 (= e!405600 e!405602)))

(declare-fun res!485716 () Bool)

(assert (=> b!724108 (=> (not res!485716) (not e!405602))))

(declare-fun lt!320881 () array!40938)

(declare-fun lt!320884 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!7195 0))(
  ( (MissingZero!7195 (index!31147 (_ BitVec 32))) (Found!7195 (index!31148 (_ BitVec 32))) (Intermediate!7195 (undefined!8007 Bool) (index!31149 (_ BitVec 32)) (x!62165 (_ BitVec 32))) (Undefined!7195) (MissingVacant!7195 (index!31150 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40938 (_ BitVec 32)) SeekEntryResult!7195)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!724108 (= res!485716 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320884 mask!3328) lt!320884 lt!320881 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320884 lt!320881 mask!3328)))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!724108 (= lt!320884 (select (store (arr!19588 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!724108 (= lt!320881 (array!40939 (store (arr!19588 a!3186) i!1173 k0!2102) (size!20009 a!3186)))))

(declare-fun b!724109 () Bool)

(declare-fun res!485717 () Bool)

(assert (=> b!724109 (=> (not res!485717) (not e!405598))))

(assert (=> b!724109 (= res!485717 (validKeyInArray!0 (select (arr!19588 a!3186) j!159)))))

(declare-fun b!724110 () Bool)

(declare-fun res!485724 () Bool)

(assert (=> b!724110 (=> (not res!485724) (not e!405600))))

(assert (=> b!724110 (= res!485724 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19588 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!724111 () Bool)

(declare-fun res!485715 () Bool)

(assert (=> b!724111 (=> (not res!485715) (not e!405600))))

(declare-fun e!405603 () Bool)

(assert (=> b!724111 (= res!485715 e!405603)))

(declare-fun c!79566 () Bool)

(assert (=> b!724111 (= c!79566 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!724112 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40938 (_ BitVec 32)) SeekEntryResult!7195)

(assert (=> b!724112 (= e!405599 (= (seekEntryOrOpen!0 (select (arr!19588 a!3186) j!159) a!3186 mask!3328) (Found!7195 j!159)))))

(declare-fun b!724113 () Bool)

(declare-fun res!485714 () Bool)

(assert (=> b!724113 (=> (not res!485714) (not e!405598))))

(assert (=> b!724113 (= res!485714 (and (= (size!20009 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20009 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20009 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!724114 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40938 (_ BitVec 32)) SeekEntryResult!7195)

(assert (=> b!724114 (= e!405603 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19588 a!3186) j!159) a!3186 mask!3328) (Found!7195 j!159)))))

(declare-fun b!724115 () Bool)

(declare-fun res!485720 () Bool)

(assert (=> b!724115 (=> (not res!485720) (not e!405598))))

(declare-fun arrayContainsKey!0 (array!40938 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!724115 (= res!485720 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!724116 () Bool)

(assert (=> b!724116 (= e!405597 e!405600)))

(declare-fun res!485721 () Bool)

(assert (=> b!724116 (=> (not res!485721) (not e!405600))))

(declare-fun lt!320882 () SeekEntryResult!7195)

(assert (=> b!724116 (= res!485721 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19588 a!3186) j!159) mask!3328) (select (arr!19588 a!3186) j!159) a!3186 mask!3328) lt!320882))))

(assert (=> b!724116 (= lt!320882 (Intermediate!7195 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!724117 () Bool)

(assert (=> b!724117 (= e!405598 e!405597)))

(declare-fun res!485723 () Bool)

(assert (=> b!724117 (=> (not res!485723) (not e!405597))))

(declare-fun lt!320883 () SeekEntryResult!7195)

(assert (=> b!724117 (= res!485723 (or (= lt!320883 (MissingZero!7195 i!1173)) (= lt!320883 (MissingVacant!7195 i!1173))))))

(assert (=> b!724117 (= lt!320883 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!724118 () Bool)

(assert (=> b!724118 (= e!405603 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19588 a!3186) j!159) a!3186 mask!3328) lt!320882))))

(assert (= (and start!64404 res!485725) b!724113))

(assert (= (and b!724113 res!485714) b!724109))

(assert (= (and b!724109 res!485717) b!724106))

(assert (= (and b!724106 res!485722) b!724115))

(assert (= (and b!724115 res!485720) b!724117))

(assert (= (and b!724117 res!485723) b!724104))

(assert (= (and b!724104 res!485726) b!724107))

(assert (= (and b!724107 res!485719) b!724105))

(assert (= (and b!724105 res!485718) b!724116))

(assert (= (and b!724116 res!485721) b!724110))

(assert (= (and b!724110 res!485724) b!724111))

(assert (= (and b!724111 c!79566) b!724118))

(assert (= (and b!724111 (not c!79566)) b!724114))

(assert (= (and b!724111 res!485715) b!724108))

(assert (= (and b!724108 res!485716) b!724103))

(assert (= (and b!724103 res!485727) b!724112))

(declare-fun m!678579 () Bool)

(assert (=> b!724117 m!678579))

(declare-fun m!678581 () Bool)

(assert (=> b!724103 m!678581))

(declare-fun m!678583 () Bool)

(assert (=> b!724103 m!678583))

(declare-fun m!678585 () Bool)

(assert (=> b!724114 m!678585))

(assert (=> b!724114 m!678585))

(declare-fun m!678587 () Bool)

(assert (=> b!724114 m!678587))

(declare-fun m!678589 () Bool)

(assert (=> b!724107 m!678589))

(assert (=> b!724109 m!678585))

(assert (=> b!724109 m!678585))

(declare-fun m!678591 () Bool)

(assert (=> b!724109 m!678591))

(assert (=> b!724118 m!678585))

(assert (=> b!724118 m!678585))

(declare-fun m!678593 () Bool)

(assert (=> b!724118 m!678593))

(assert (=> b!724112 m!678585))

(assert (=> b!724112 m!678585))

(declare-fun m!678595 () Bool)

(assert (=> b!724112 m!678595))

(declare-fun m!678597 () Bool)

(assert (=> b!724110 m!678597))

(assert (=> b!724116 m!678585))

(assert (=> b!724116 m!678585))

(declare-fun m!678599 () Bool)

(assert (=> b!724116 m!678599))

(assert (=> b!724116 m!678599))

(assert (=> b!724116 m!678585))

(declare-fun m!678601 () Bool)

(assert (=> b!724116 m!678601))

(declare-fun m!678603 () Bool)

(assert (=> start!64404 m!678603))

(declare-fun m!678605 () Bool)

(assert (=> start!64404 m!678605))

(declare-fun m!678607 () Bool)

(assert (=> b!724106 m!678607))

(declare-fun m!678609 () Bool)

(assert (=> b!724104 m!678609))

(declare-fun m!678611 () Bool)

(assert (=> b!724108 m!678611))

(declare-fun m!678613 () Bool)

(assert (=> b!724108 m!678613))

(declare-fun m!678615 () Bool)

(assert (=> b!724108 m!678615))

(declare-fun m!678617 () Bool)

(assert (=> b!724108 m!678617))

(assert (=> b!724108 m!678617))

(declare-fun m!678619 () Bool)

(assert (=> b!724108 m!678619))

(declare-fun m!678621 () Bool)

(assert (=> b!724115 m!678621))

(check-sat (not b!724114) (not b!724107) (not b!724112) (not b!724118) (not b!724103) (not b!724104) (not start!64404) (not b!724106) (not b!724117) (not b!724115) (not b!724108) (not b!724109) (not b!724116))
(check-sat)
(get-model)

(declare-fun d!99241 () Bool)

(declare-fun lt!320907 () SeekEntryResult!7195)

(get-info :version)

(assert (=> d!99241 (and (or ((_ is Undefined!7195) lt!320907) (not ((_ is Found!7195) lt!320907)) (and (bvsge (index!31148 lt!320907) #b00000000000000000000000000000000) (bvslt (index!31148 lt!320907) (size!20009 a!3186)))) (or ((_ is Undefined!7195) lt!320907) ((_ is Found!7195) lt!320907) (not ((_ is MissingZero!7195) lt!320907)) (and (bvsge (index!31147 lt!320907) #b00000000000000000000000000000000) (bvslt (index!31147 lt!320907) (size!20009 a!3186)))) (or ((_ is Undefined!7195) lt!320907) ((_ is Found!7195) lt!320907) ((_ is MissingZero!7195) lt!320907) (not ((_ is MissingVacant!7195) lt!320907)) (and (bvsge (index!31150 lt!320907) #b00000000000000000000000000000000) (bvslt (index!31150 lt!320907) (size!20009 a!3186)))) (or ((_ is Undefined!7195) lt!320907) (ite ((_ is Found!7195) lt!320907) (= (select (arr!19588 a!3186) (index!31148 lt!320907)) (select (arr!19588 a!3186) j!159)) (ite ((_ is MissingZero!7195) lt!320907) (= (select (arr!19588 a!3186) (index!31147 lt!320907)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7195) lt!320907) (= (select (arr!19588 a!3186) (index!31150 lt!320907)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!405631 () SeekEntryResult!7195)

(assert (=> d!99241 (= lt!320907 e!405631)))

(declare-fun c!79578 () Bool)

(declare-fun lt!320908 () SeekEntryResult!7195)

(assert (=> d!99241 (= c!79578 (and ((_ is Intermediate!7195) lt!320908) (undefined!8007 lt!320908)))))

(assert (=> d!99241 (= lt!320908 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19588 a!3186) j!159) mask!3328) (select (arr!19588 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!99241 (validMask!0 mask!3328)))

(assert (=> d!99241 (= (seekEntryOrOpen!0 (select (arr!19588 a!3186) j!159) a!3186 mask!3328) lt!320907)))

(declare-fun b!724179 () Bool)

(declare-fun c!79577 () Bool)

(declare-fun lt!320909 () (_ BitVec 64))

(assert (=> b!724179 (= c!79577 (= lt!320909 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!405632 () SeekEntryResult!7195)

(declare-fun e!405633 () SeekEntryResult!7195)

(assert (=> b!724179 (= e!405632 e!405633)))

(declare-fun b!724180 () Bool)

(assert (=> b!724180 (= e!405631 e!405632)))

(assert (=> b!724180 (= lt!320909 (select (arr!19588 a!3186) (index!31149 lt!320908)))))

(declare-fun c!79576 () Bool)

(assert (=> b!724180 (= c!79576 (= lt!320909 (select (arr!19588 a!3186) j!159)))))

(declare-fun b!724181 () Bool)

(assert (=> b!724181 (= e!405631 Undefined!7195)))

(declare-fun b!724182 () Bool)

(assert (=> b!724182 (= e!405633 (seekKeyOrZeroReturnVacant!0 (x!62165 lt!320908) (index!31149 lt!320908) (index!31149 lt!320908) (select (arr!19588 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!724183 () Bool)

(assert (=> b!724183 (= e!405633 (MissingZero!7195 (index!31149 lt!320908)))))

(declare-fun b!724184 () Bool)

(assert (=> b!724184 (= e!405632 (Found!7195 (index!31149 lt!320908)))))

(assert (= (and d!99241 c!79578) b!724181))

(assert (= (and d!99241 (not c!79578)) b!724180))

(assert (= (and b!724180 c!79576) b!724184))

(assert (= (and b!724180 (not c!79576)) b!724179))

(assert (= (and b!724179 c!79577) b!724183))

(assert (= (and b!724179 (not c!79577)) b!724182))

(declare-fun m!678667 () Bool)

(assert (=> d!99241 m!678667))

(assert (=> d!99241 m!678603))

(assert (=> d!99241 m!678599))

(assert (=> d!99241 m!678585))

(assert (=> d!99241 m!678601))

(assert (=> d!99241 m!678585))

(assert (=> d!99241 m!678599))

(declare-fun m!678669 () Bool)

(assert (=> d!99241 m!678669))

(declare-fun m!678671 () Bool)

(assert (=> d!99241 m!678671))

(declare-fun m!678673 () Bool)

(assert (=> b!724180 m!678673))

(assert (=> b!724182 m!678585))

(declare-fun m!678675 () Bool)

(assert (=> b!724182 m!678675))

(assert (=> b!724112 d!99241))

(declare-fun b!724203 () Bool)

(declare-fun lt!320915 () SeekEntryResult!7195)

(assert (=> b!724203 (and (bvsge (index!31149 lt!320915) #b00000000000000000000000000000000) (bvslt (index!31149 lt!320915) (size!20009 lt!320881)))))

(declare-fun res!485776 () Bool)

(assert (=> b!724203 (= res!485776 (= (select (arr!19588 lt!320881) (index!31149 lt!320915)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!405645 () Bool)

(assert (=> b!724203 (=> res!485776 e!405645)))

(declare-fun d!99243 () Bool)

(declare-fun e!405647 () Bool)

(assert (=> d!99243 e!405647))

(declare-fun c!79587 () Bool)

(assert (=> d!99243 (= c!79587 (and ((_ is Intermediate!7195) lt!320915) (undefined!8007 lt!320915)))))

(declare-fun e!405648 () SeekEntryResult!7195)

(assert (=> d!99243 (= lt!320915 e!405648)))

(declare-fun c!79585 () Bool)

(assert (=> d!99243 (= c!79585 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!320914 () (_ BitVec 64))

(assert (=> d!99243 (= lt!320914 (select (arr!19588 lt!320881) (toIndex!0 lt!320884 mask!3328)))))

(assert (=> d!99243 (validMask!0 mask!3328)))

(assert (=> d!99243 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320884 mask!3328) lt!320884 lt!320881 mask!3328) lt!320915)))

(declare-fun b!724204 () Bool)

(assert (=> b!724204 (and (bvsge (index!31149 lt!320915) #b00000000000000000000000000000000) (bvslt (index!31149 lt!320915) (size!20009 lt!320881)))))

(declare-fun res!485778 () Bool)

(assert (=> b!724204 (= res!485778 (= (select (arr!19588 lt!320881) (index!31149 lt!320915)) lt!320884))))

(assert (=> b!724204 (=> res!485778 e!405645)))

(declare-fun e!405646 () Bool)

(assert (=> b!724204 (= e!405646 e!405645)))

(declare-fun b!724205 () Bool)

(assert (=> b!724205 (and (bvsge (index!31149 lt!320915) #b00000000000000000000000000000000) (bvslt (index!31149 lt!320915) (size!20009 lt!320881)))))

(assert (=> b!724205 (= e!405645 (= (select (arr!19588 lt!320881) (index!31149 lt!320915)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!724206 () Bool)

(assert (=> b!724206 (= e!405648 (Intermediate!7195 true (toIndex!0 lt!320884 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!724207 () Bool)

(declare-fun e!405644 () SeekEntryResult!7195)

(assert (=> b!724207 (= e!405644 (Intermediate!7195 false (toIndex!0 lt!320884 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!724208 () Bool)

(assert (=> b!724208 (= e!405647 e!405646)))

(declare-fun res!485777 () Bool)

(assert (=> b!724208 (= res!485777 (and ((_ is Intermediate!7195) lt!320915) (not (undefined!8007 lt!320915)) (bvslt (x!62165 lt!320915) #b01111111111111111111111111111110) (bvsge (x!62165 lt!320915) #b00000000000000000000000000000000) (bvsge (x!62165 lt!320915) #b00000000000000000000000000000000)))))

(assert (=> b!724208 (=> (not res!485777) (not e!405646))))

(declare-fun b!724209 () Bool)

(assert (=> b!724209 (= e!405647 (bvsge (x!62165 lt!320915) #b01111111111111111111111111111110))))

(declare-fun b!724210 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!724210 (= e!405644 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!320884 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!320884 lt!320881 mask!3328))))

(declare-fun b!724211 () Bool)

(assert (=> b!724211 (= e!405648 e!405644)))

(declare-fun c!79586 () Bool)

(assert (=> b!724211 (= c!79586 (or (= lt!320914 lt!320884) (= (bvadd lt!320914 lt!320914) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!99243 c!79585) b!724206))

(assert (= (and d!99243 (not c!79585)) b!724211))

(assert (= (and b!724211 c!79586) b!724207))

(assert (= (and b!724211 (not c!79586)) b!724210))

(assert (= (and d!99243 c!79587) b!724209))

(assert (= (and d!99243 (not c!79587)) b!724208))

(assert (= (and b!724208 res!485777) b!724204))

(assert (= (and b!724204 (not res!485778)) b!724203))

(assert (= (and b!724203 (not res!485776)) b!724205))

(assert (=> d!99243 m!678617))

(declare-fun m!678677 () Bool)

(assert (=> d!99243 m!678677))

(assert (=> d!99243 m!678603))

(declare-fun m!678679 () Bool)

(assert (=> b!724205 m!678679))

(assert (=> b!724210 m!678617))

(declare-fun m!678681 () Bool)

(assert (=> b!724210 m!678681))

(assert (=> b!724210 m!678681))

(declare-fun m!678683 () Bool)

(assert (=> b!724210 m!678683))

(assert (=> b!724204 m!678679))

(assert (=> b!724203 m!678679))

(assert (=> b!724108 d!99243))

(declare-fun d!99249 () Bool)

(declare-fun lt!320927 () (_ BitVec 32))

(declare-fun lt!320926 () (_ BitVec 32))

(assert (=> d!99249 (= lt!320927 (bvmul (bvxor lt!320926 (bvlshr lt!320926 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99249 (= lt!320926 ((_ extract 31 0) (bvand (bvxor lt!320884 (bvlshr lt!320884 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99249 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!485779 (let ((h!14695 ((_ extract 31 0) (bvand (bvxor lt!320884 (bvlshr lt!320884 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62168 (bvmul (bvxor h!14695 (bvlshr h!14695 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62168 (bvlshr x!62168 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!485779 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!485779 #b00000000000000000000000000000000))))))

(assert (=> d!99249 (= (toIndex!0 lt!320884 mask!3328) (bvand (bvxor lt!320927 (bvlshr lt!320927 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!724108 d!99249))

(declare-fun b!724220 () Bool)

(declare-fun lt!320929 () SeekEntryResult!7195)

(assert (=> b!724220 (and (bvsge (index!31149 lt!320929) #b00000000000000000000000000000000) (bvslt (index!31149 lt!320929) (size!20009 lt!320881)))))

(declare-fun res!485784 () Bool)

(assert (=> b!724220 (= res!485784 (= (select (arr!19588 lt!320881) (index!31149 lt!320929)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!405656 () Bool)

(assert (=> b!724220 (=> res!485784 e!405656)))

(declare-fun d!99251 () Bool)

(declare-fun e!405658 () Bool)

(assert (=> d!99251 e!405658))

(declare-fun c!79592 () Bool)

(assert (=> d!99251 (= c!79592 (and ((_ is Intermediate!7195) lt!320929) (undefined!8007 lt!320929)))))

(declare-fun e!405659 () SeekEntryResult!7195)

(assert (=> d!99251 (= lt!320929 e!405659)))

(declare-fun c!79590 () Bool)

(assert (=> d!99251 (= c!79590 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!320928 () (_ BitVec 64))

(assert (=> d!99251 (= lt!320928 (select (arr!19588 lt!320881) index!1321))))

(assert (=> d!99251 (validMask!0 mask!3328)))

(assert (=> d!99251 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320884 lt!320881 mask!3328) lt!320929)))

(declare-fun b!724221 () Bool)

(assert (=> b!724221 (and (bvsge (index!31149 lt!320929) #b00000000000000000000000000000000) (bvslt (index!31149 lt!320929) (size!20009 lt!320881)))))

(declare-fun res!485786 () Bool)

(assert (=> b!724221 (= res!485786 (= (select (arr!19588 lt!320881) (index!31149 lt!320929)) lt!320884))))

(assert (=> b!724221 (=> res!485786 e!405656)))

(declare-fun e!405657 () Bool)

(assert (=> b!724221 (= e!405657 e!405656)))

(declare-fun b!724222 () Bool)

(assert (=> b!724222 (and (bvsge (index!31149 lt!320929) #b00000000000000000000000000000000) (bvslt (index!31149 lt!320929) (size!20009 lt!320881)))))

(assert (=> b!724222 (= e!405656 (= (select (arr!19588 lt!320881) (index!31149 lt!320929)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!724223 () Bool)

(assert (=> b!724223 (= e!405659 (Intermediate!7195 true index!1321 x!1131))))

(declare-fun b!724224 () Bool)

(declare-fun e!405655 () SeekEntryResult!7195)

(assert (=> b!724224 (= e!405655 (Intermediate!7195 false index!1321 x!1131))))

(declare-fun b!724225 () Bool)

(assert (=> b!724225 (= e!405658 e!405657)))

(declare-fun res!485785 () Bool)

(assert (=> b!724225 (= res!485785 (and ((_ is Intermediate!7195) lt!320929) (not (undefined!8007 lt!320929)) (bvslt (x!62165 lt!320929) #b01111111111111111111111111111110) (bvsge (x!62165 lt!320929) #b00000000000000000000000000000000) (bvsge (x!62165 lt!320929) x!1131)))))

(assert (=> b!724225 (=> (not res!485785) (not e!405657))))

(declare-fun b!724226 () Bool)

(assert (=> b!724226 (= e!405658 (bvsge (x!62165 lt!320929) #b01111111111111111111111111111110))))

(declare-fun b!724227 () Bool)

(assert (=> b!724227 (= e!405655 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!320884 lt!320881 mask!3328))))

(declare-fun b!724228 () Bool)

(assert (=> b!724228 (= e!405659 e!405655)))

(declare-fun c!79591 () Bool)

(assert (=> b!724228 (= c!79591 (or (= lt!320928 lt!320884) (= (bvadd lt!320928 lt!320928) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!99251 c!79590) b!724223))

(assert (= (and d!99251 (not c!79590)) b!724228))

(assert (= (and b!724228 c!79591) b!724224))

(assert (= (and b!724228 (not c!79591)) b!724227))

(assert (= (and d!99251 c!79592) b!724226))

(assert (= (and d!99251 (not c!79592)) b!724225))

(assert (= (and b!724225 res!485785) b!724221))

(assert (= (and b!724221 (not res!485786)) b!724220))

(assert (= (and b!724220 (not res!485784)) b!724222))

(declare-fun m!678689 () Bool)

(assert (=> d!99251 m!678689))

(assert (=> d!99251 m!678603))

(declare-fun m!678693 () Bool)

(assert (=> b!724222 m!678693))

(declare-fun m!678697 () Bool)

(assert (=> b!724227 m!678697))

(assert (=> b!724227 m!678697))

(declare-fun m!678701 () Bool)

(assert (=> b!724227 m!678701))

(assert (=> b!724221 m!678693))

(assert (=> b!724220 m!678693))

(assert (=> b!724108 d!99251))

(declare-fun b!724233 () Bool)

(declare-fun lt!320934 () SeekEntryResult!7195)

(assert (=> b!724233 (and (bvsge (index!31149 lt!320934) #b00000000000000000000000000000000) (bvslt (index!31149 lt!320934) (size!20009 a!3186)))))

(declare-fun res!485789 () Bool)

(assert (=> b!724233 (= res!485789 (= (select (arr!19588 a!3186) (index!31149 lt!320934)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!405664 () Bool)

(assert (=> b!724233 (=> res!485789 e!405664)))

(declare-fun d!99255 () Bool)

(declare-fun e!405666 () Bool)

(assert (=> d!99255 e!405666))

(declare-fun c!79596 () Bool)

(assert (=> d!99255 (= c!79596 (and ((_ is Intermediate!7195) lt!320934) (undefined!8007 lt!320934)))))

(declare-fun e!405667 () SeekEntryResult!7195)

(assert (=> d!99255 (= lt!320934 e!405667)))

(declare-fun c!79594 () Bool)

(assert (=> d!99255 (= c!79594 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!320933 () (_ BitVec 64))

(assert (=> d!99255 (= lt!320933 (select (arr!19588 a!3186) index!1321))))

(assert (=> d!99255 (validMask!0 mask!3328)))

(assert (=> d!99255 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19588 a!3186) j!159) a!3186 mask!3328) lt!320934)))

(declare-fun b!724234 () Bool)

(assert (=> b!724234 (and (bvsge (index!31149 lt!320934) #b00000000000000000000000000000000) (bvslt (index!31149 lt!320934) (size!20009 a!3186)))))

(declare-fun res!485791 () Bool)

(assert (=> b!724234 (= res!485791 (= (select (arr!19588 a!3186) (index!31149 lt!320934)) (select (arr!19588 a!3186) j!159)))))

(assert (=> b!724234 (=> res!485791 e!405664)))

(declare-fun e!405665 () Bool)

(assert (=> b!724234 (= e!405665 e!405664)))

(declare-fun b!724235 () Bool)

(assert (=> b!724235 (and (bvsge (index!31149 lt!320934) #b00000000000000000000000000000000) (bvslt (index!31149 lt!320934) (size!20009 a!3186)))))

(assert (=> b!724235 (= e!405664 (= (select (arr!19588 a!3186) (index!31149 lt!320934)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!724236 () Bool)

(assert (=> b!724236 (= e!405667 (Intermediate!7195 true index!1321 x!1131))))

(declare-fun b!724237 () Bool)

(declare-fun e!405663 () SeekEntryResult!7195)

(assert (=> b!724237 (= e!405663 (Intermediate!7195 false index!1321 x!1131))))

(declare-fun b!724238 () Bool)

(assert (=> b!724238 (= e!405666 e!405665)))

(declare-fun res!485790 () Bool)

(assert (=> b!724238 (= res!485790 (and ((_ is Intermediate!7195) lt!320934) (not (undefined!8007 lt!320934)) (bvslt (x!62165 lt!320934) #b01111111111111111111111111111110) (bvsge (x!62165 lt!320934) #b00000000000000000000000000000000) (bvsge (x!62165 lt!320934) x!1131)))))

(assert (=> b!724238 (=> (not res!485790) (not e!405665))))

(declare-fun b!724239 () Bool)

(assert (=> b!724239 (= e!405666 (bvsge (x!62165 lt!320934) #b01111111111111111111111111111110))))

(declare-fun b!724240 () Bool)

(assert (=> b!724240 (= e!405663 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!19588 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!724241 () Bool)

(assert (=> b!724241 (= e!405667 e!405663)))

(declare-fun c!79595 () Bool)

(assert (=> b!724241 (= c!79595 (or (= lt!320933 (select (arr!19588 a!3186) j!159)) (= (bvadd lt!320933 lt!320933) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!99255 c!79594) b!724236))

(assert (= (and d!99255 (not c!79594)) b!724241))

(assert (= (and b!724241 c!79595) b!724237))

(assert (= (and b!724241 (not c!79595)) b!724240))

(assert (= (and d!99255 c!79596) b!724239))

(assert (= (and d!99255 (not c!79596)) b!724238))

(assert (= (and b!724238 res!485790) b!724234))

(assert (= (and b!724234 (not res!485791)) b!724233))

(assert (= (and b!724233 (not res!485789)) b!724235))

(declare-fun m!678705 () Bool)

(assert (=> d!99255 m!678705))

(assert (=> d!99255 m!678603))

(declare-fun m!678707 () Bool)

(assert (=> b!724235 m!678707))

(assert (=> b!724240 m!678697))

(assert (=> b!724240 m!678697))

(assert (=> b!724240 m!678585))

(declare-fun m!678709 () Bool)

(assert (=> b!724240 m!678709))

(assert (=> b!724234 m!678707))

(assert (=> b!724233 m!678707))

(assert (=> b!724118 d!99255))

(declare-fun d!99257 () Bool)

(assert (=> d!99257 (= (validKeyInArray!0 (select (arr!19588 a!3186) j!159)) (and (not (= (select (arr!19588 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19588 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!724109 d!99257))

(declare-fun d!99259 () Bool)

(assert (=> d!99259 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!64404 d!99259))

(declare-fun d!99261 () Bool)

(assert (=> d!99261 (= (array_inv!15362 a!3186) (bvsge (size!20009 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!64404 d!99261))

(declare-fun b!724281 () Bool)

(declare-fun lt!320946 () SeekEntryResult!7195)

(assert (=> b!724281 (and (bvsge (index!31149 lt!320946) #b00000000000000000000000000000000) (bvslt (index!31149 lt!320946) (size!20009 a!3186)))))

(declare-fun res!485801 () Bool)

(assert (=> b!724281 (= res!485801 (= (select (arr!19588 a!3186) (index!31149 lt!320946)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!405690 () Bool)

(assert (=> b!724281 (=> res!485801 e!405690)))

(declare-fun d!99265 () Bool)

(declare-fun e!405692 () Bool)

(assert (=> d!99265 e!405692))

(declare-fun c!79614 () Bool)

(assert (=> d!99265 (= c!79614 (and ((_ is Intermediate!7195) lt!320946) (undefined!8007 lt!320946)))))

(declare-fun e!405693 () SeekEntryResult!7195)

(assert (=> d!99265 (= lt!320946 e!405693)))

(declare-fun c!79612 () Bool)

(assert (=> d!99265 (= c!79612 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!320945 () (_ BitVec 64))

(assert (=> d!99265 (= lt!320945 (select (arr!19588 a!3186) (toIndex!0 (select (arr!19588 a!3186) j!159) mask!3328)))))

(assert (=> d!99265 (validMask!0 mask!3328)))

(assert (=> d!99265 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19588 a!3186) j!159) mask!3328) (select (arr!19588 a!3186) j!159) a!3186 mask!3328) lt!320946)))

(declare-fun b!724282 () Bool)

(assert (=> b!724282 (and (bvsge (index!31149 lt!320946) #b00000000000000000000000000000000) (bvslt (index!31149 lt!320946) (size!20009 a!3186)))))

(declare-fun res!485803 () Bool)

(assert (=> b!724282 (= res!485803 (= (select (arr!19588 a!3186) (index!31149 lt!320946)) (select (arr!19588 a!3186) j!159)))))

(assert (=> b!724282 (=> res!485803 e!405690)))

(declare-fun e!405691 () Bool)

(assert (=> b!724282 (= e!405691 e!405690)))

(declare-fun b!724283 () Bool)

(assert (=> b!724283 (and (bvsge (index!31149 lt!320946) #b00000000000000000000000000000000) (bvslt (index!31149 lt!320946) (size!20009 a!3186)))))

(assert (=> b!724283 (= e!405690 (= (select (arr!19588 a!3186) (index!31149 lt!320946)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!724284 () Bool)

(assert (=> b!724284 (= e!405693 (Intermediate!7195 true (toIndex!0 (select (arr!19588 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!724285 () Bool)

(declare-fun e!405689 () SeekEntryResult!7195)

(assert (=> b!724285 (= e!405689 (Intermediate!7195 false (toIndex!0 (select (arr!19588 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!724286 () Bool)

(assert (=> b!724286 (= e!405692 e!405691)))

(declare-fun res!485802 () Bool)

(assert (=> b!724286 (= res!485802 (and ((_ is Intermediate!7195) lt!320946) (not (undefined!8007 lt!320946)) (bvslt (x!62165 lt!320946) #b01111111111111111111111111111110) (bvsge (x!62165 lt!320946) #b00000000000000000000000000000000) (bvsge (x!62165 lt!320946) #b00000000000000000000000000000000)))))

(assert (=> b!724286 (=> (not res!485802) (not e!405691))))

(declare-fun b!724287 () Bool)

(assert (=> b!724287 (= e!405692 (bvsge (x!62165 lt!320946) #b01111111111111111111111111111110))))

(declare-fun b!724288 () Bool)

(assert (=> b!724288 (= e!405689 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!19588 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!19588 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!724289 () Bool)

(assert (=> b!724289 (= e!405693 e!405689)))

(declare-fun c!79613 () Bool)

(assert (=> b!724289 (= c!79613 (or (= lt!320945 (select (arr!19588 a!3186) j!159)) (= (bvadd lt!320945 lt!320945) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!99265 c!79612) b!724284))

(assert (= (and d!99265 (not c!79612)) b!724289))

(assert (= (and b!724289 c!79613) b!724285))

(assert (= (and b!724289 (not c!79613)) b!724288))

(assert (= (and d!99265 c!79614) b!724287))

(assert (= (and d!99265 (not c!79614)) b!724286))

(assert (= (and b!724286 res!485802) b!724282))

(assert (= (and b!724282 (not res!485803)) b!724281))

(assert (= (and b!724281 (not res!485801)) b!724283))

(assert (=> d!99265 m!678599))

(declare-fun m!678719 () Bool)

(assert (=> d!99265 m!678719))

(assert (=> d!99265 m!678603))

(declare-fun m!678721 () Bool)

(assert (=> b!724283 m!678721))

(assert (=> b!724288 m!678599))

(declare-fun m!678723 () Bool)

(assert (=> b!724288 m!678723))

(assert (=> b!724288 m!678723))

(assert (=> b!724288 m!678585))

(declare-fun m!678725 () Bool)

(assert (=> b!724288 m!678725))

(assert (=> b!724282 m!678721))

(assert (=> b!724281 m!678721))

(assert (=> b!724116 d!99265))

(declare-fun d!99267 () Bool)

(declare-fun lt!320948 () (_ BitVec 32))

(declare-fun lt!320947 () (_ BitVec 32))

(assert (=> d!99267 (= lt!320948 (bvmul (bvxor lt!320947 (bvlshr lt!320947 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99267 (= lt!320947 ((_ extract 31 0) (bvand (bvxor (select (arr!19588 a!3186) j!159) (bvlshr (select (arr!19588 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99267 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!485779 (let ((h!14695 ((_ extract 31 0) (bvand (bvxor (select (arr!19588 a!3186) j!159) (bvlshr (select (arr!19588 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62168 (bvmul (bvxor h!14695 (bvlshr h!14695 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62168 (bvlshr x!62168 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!485779 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!485779 #b00000000000000000000000000000000))))))

(assert (=> d!99267 (= (toIndex!0 (select (arr!19588 a!3186) j!159) mask!3328) (bvand (bvxor lt!320948 (bvlshr lt!320948 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!724116 d!99267))

(declare-fun d!99269 () Bool)

(declare-fun res!485813 () Bool)

(declare-fun e!405709 () Bool)

(assert (=> d!99269 (=> res!485813 e!405709)))

(assert (=> d!99269 (= res!485813 (bvsge #b00000000000000000000000000000000 (size!20009 a!3186)))))

(assert (=> d!99269 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13640) e!405709)))

(declare-fun bm!34789 () Bool)

(declare-fun call!34792 () Bool)

(declare-fun c!79621 () Bool)

(assert (=> bm!34789 (= call!34792 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!79621 (Cons!13639 (select (arr!19588 a!3186) #b00000000000000000000000000000000) Nil!13640) Nil!13640)))))

(declare-fun b!724310 () Bool)

(declare-fun e!405708 () Bool)

(assert (=> b!724310 (= e!405708 call!34792)))

(declare-fun b!724311 () Bool)

(declare-fun e!405711 () Bool)

(assert (=> b!724311 (= e!405709 e!405711)))

(declare-fun res!485814 () Bool)

(assert (=> b!724311 (=> (not res!485814) (not e!405711))))

(declare-fun e!405710 () Bool)

(assert (=> b!724311 (= res!485814 (not e!405710))))

(declare-fun res!485812 () Bool)

(assert (=> b!724311 (=> (not res!485812) (not e!405710))))

(assert (=> b!724311 (= res!485812 (validKeyInArray!0 (select (arr!19588 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!724312 () Bool)

(declare-fun contains!4048 (List!13643 (_ BitVec 64)) Bool)

(assert (=> b!724312 (= e!405710 (contains!4048 Nil!13640 (select (arr!19588 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!724313 () Bool)

(assert (=> b!724313 (= e!405708 call!34792)))

(declare-fun b!724314 () Bool)

(assert (=> b!724314 (= e!405711 e!405708)))

(assert (=> b!724314 (= c!79621 (validKeyInArray!0 (select (arr!19588 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!99269 (not res!485813)) b!724311))

(assert (= (and b!724311 res!485812) b!724312))

(assert (= (and b!724311 res!485814) b!724314))

(assert (= (and b!724314 c!79621) b!724310))

(assert (= (and b!724314 (not c!79621)) b!724313))

(assert (= (or b!724310 b!724313) bm!34789))

(declare-fun m!678743 () Bool)

(assert (=> bm!34789 m!678743))

(declare-fun m!678745 () Bool)

(assert (=> bm!34789 m!678745))

(assert (=> b!724311 m!678743))

(assert (=> b!724311 m!678743))

(declare-fun m!678747 () Bool)

(assert (=> b!724311 m!678747))

(assert (=> b!724312 m!678743))

(assert (=> b!724312 m!678743))

(declare-fun m!678749 () Bool)

(assert (=> b!724312 m!678749))

(assert (=> b!724314 m!678743))

(assert (=> b!724314 m!678743))

(assert (=> b!724314 m!678747))

(assert (=> b!724107 d!99269))

(declare-fun d!99275 () Bool)

(declare-fun lt!320956 () SeekEntryResult!7195)

(assert (=> d!99275 (and (or ((_ is Undefined!7195) lt!320956) (not ((_ is Found!7195) lt!320956)) (and (bvsge (index!31148 lt!320956) #b00000000000000000000000000000000) (bvslt (index!31148 lt!320956) (size!20009 a!3186)))) (or ((_ is Undefined!7195) lt!320956) ((_ is Found!7195) lt!320956) (not ((_ is MissingZero!7195) lt!320956)) (and (bvsge (index!31147 lt!320956) #b00000000000000000000000000000000) (bvslt (index!31147 lt!320956) (size!20009 a!3186)))) (or ((_ is Undefined!7195) lt!320956) ((_ is Found!7195) lt!320956) ((_ is MissingZero!7195) lt!320956) (not ((_ is MissingVacant!7195) lt!320956)) (and (bvsge (index!31150 lt!320956) #b00000000000000000000000000000000) (bvslt (index!31150 lt!320956) (size!20009 a!3186)))) (or ((_ is Undefined!7195) lt!320956) (ite ((_ is Found!7195) lt!320956) (= (select (arr!19588 a!3186) (index!31148 lt!320956)) k0!2102) (ite ((_ is MissingZero!7195) lt!320956) (= (select (arr!19588 a!3186) (index!31147 lt!320956)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7195) lt!320956) (= (select (arr!19588 a!3186) (index!31150 lt!320956)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!405712 () SeekEntryResult!7195)

(assert (=> d!99275 (= lt!320956 e!405712)))

(declare-fun c!79624 () Bool)

(declare-fun lt!320957 () SeekEntryResult!7195)

(assert (=> d!99275 (= c!79624 (and ((_ is Intermediate!7195) lt!320957) (undefined!8007 lt!320957)))))

(assert (=> d!99275 (= lt!320957 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!99275 (validMask!0 mask!3328)))

(assert (=> d!99275 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!320956)))

(declare-fun b!724315 () Bool)

(declare-fun c!79623 () Bool)

(declare-fun lt!320958 () (_ BitVec 64))

(assert (=> b!724315 (= c!79623 (= lt!320958 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!405713 () SeekEntryResult!7195)

(declare-fun e!405714 () SeekEntryResult!7195)

(assert (=> b!724315 (= e!405713 e!405714)))

(declare-fun b!724316 () Bool)

(assert (=> b!724316 (= e!405712 e!405713)))

(assert (=> b!724316 (= lt!320958 (select (arr!19588 a!3186) (index!31149 lt!320957)))))

(declare-fun c!79622 () Bool)

(assert (=> b!724316 (= c!79622 (= lt!320958 k0!2102))))

(declare-fun b!724317 () Bool)

(assert (=> b!724317 (= e!405712 Undefined!7195)))

(declare-fun b!724318 () Bool)

(assert (=> b!724318 (= e!405714 (seekKeyOrZeroReturnVacant!0 (x!62165 lt!320957) (index!31149 lt!320957) (index!31149 lt!320957) k0!2102 a!3186 mask!3328))))

(declare-fun b!724319 () Bool)

(assert (=> b!724319 (= e!405714 (MissingZero!7195 (index!31149 lt!320957)))))

(declare-fun b!724320 () Bool)

(assert (=> b!724320 (= e!405713 (Found!7195 (index!31149 lt!320957)))))

(assert (= (and d!99275 c!79624) b!724317))

(assert (= (and d!99275 (not c!79624)) b!724316))

(assert (= (and b!724316 c!79622) b!724320))

(assert (= (and b!724316 (not c!79622)) b!724315))

(assert (= (and b!724315 c!79623) b!724319))

(assert (= (and b!724315 (not c!79623)) b!724318))

(declare-fun m!678753 () Bool)

(assert (=> d!99275 m!678753))

(assert (=> d!99275 m!678603))

(declare-fun m!678755 () Bool)

(assert (=> d!99275 m!678755))

(declare-fun m!678757 () Bool)

(assert (=> d!99275 m!678757))

(assert (=> d!99275 m!678755))

(declare-fun m!678759 () Bool)

(assert (=> d!99275 m!678759))

(declare-fun m!678761 () Bool)

(assert (=> d!99275 m!678761))

(declare-fun m!678763 () Bool)

(assert (=> b!724316 m!678763))

(declare-fun m!678765 () Bool)

(assert (=> b!724318 m!678765))

(assert (=> b!724117 d!99275))

(declare-fun d!99279 () Bool)

(assert (=> d!99279 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!724106 d!99279))

(declare-fun b!724363 () Bool)

(declare-fun e!405744 () Bool)

(declare-fun e!405743 () Bool)

(assert (=> b!724363 (= e!405744 e!405743)))

(declare-fun c!79639 () Bool)

(assert (=> b!724363 (= c!79639 (validKeyInArray!0 (select (arr!19588 a!3186) j!159)))))

(declare-fun b!724364 () Bool)

(declare-fun call!34798 () Bool)

(assert (=> b!724364 (= e!405743 call!34798)))

(declare-fun b!724365 () Bool)

(declare-fun e!405742 () Bool)

(assert (=> b!724365 (= e!405743 e!405742)))

(declare-fun lt!320974 () (_ BitVec 64))

(assert (=> b!724365 (= lt!320974 (select (arr!19588 a!3186) j!159))))

(declare-fun lt!320973 () Unit!24708)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!40938 (_ BitVec 64) (_ BitVec 32)) Unit!24708)

(assert (=> b!724365 (= lt!320973 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!320974 j!159))))

(assert (=> b!724365 (arrayContainsKey!0 a!3186 lt!320974 #b00000000000000000000000000000000)))

(declare-fun lt!320972 () Unit!24708)

(assert (=> b!724365 (= lt!320972 lt!320973)))

(declare-fun res!485829 () Bool)

(assert (=> b!724365 (= res!485829 (= (seekEntryOrOpen!0 (select (arr!19588 a!3186) j!159) a!3186 mask!3328) (Found!7195 j!159)))))

(assert (=> b!724365 (=> (not res!485829) (not e!405742))))

(declare-fun bm!34795 () Bool)

(assert (=> bm!34795 (= call!34798 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!99281 () Bool)

(declare-fun res!485828 () Bool)

(assert (=> d!99281 (=> res!485828 e!405744)))

(assert (=> d!99281 (= res!485828 (bvsge j!159 (size!20009 a!3186)))))

(assert (=> d!99281 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!405744)))

(declare-fun b!724362 () Bool)

(assert (=> b!724362 (= e!405742 call!34798)))

(assert (= (and d!99281 (not res!485828)) b!724363))

(assert (= (and b!724363 c!79639) b!724365))

(assert (= (and b!724363 (not c!79639)) b!724364))

(assert (= (and b!724365 res!485829) b!724362))

(assert (= (or b!724362 b!724364) bm!34795))

(assert (=> b!724363 m!678585))

(assert (=> b!724363 m!678585))

(assert (=> b!724363 m!678591))

(assert (=> b!724365 m!678585))

(declare-fun m!678777 () Bool)

(assert (=> b!724365 m!678777))

(declare-fun m!678779 () Bool)

(assert (=> b!724365 m!678779))

(assert (=> b!724365 m!678585))

(assert (=> b!724365 m!678595))

(declare-fun m!678781 () Bool)

(assert (=> bm!34795 m!678781))

(assert (=> b!724103 d!99281))

(declare-fun d!99287 () Bool)

(assert (=> d!99287 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!320977 () Unit!24708)

(declare-fun choose!38 (array!40938 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24708)

(assert (=> d!99287 (= lt!320977 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!99287 (validMask!0 mask!3328)))

(assert (=> d!99287 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!320977)))

(declare-fun bs!20805 () Bool)

(assert (= bs!20805 d!99287))

(assert (=> bs!20805 m!678581))

(declare-fun m!678783 () Bool)

(assert (=> bs!20805 m!678783))

(assert (=> bs!20805 m!678603))

(assert (=> b!724103 d!99287))

(declare-fun d!99289 () Bool)

(declare-fun res!485834 () Bool)

(declare-fun e!405749 () Bool)

(assert (=> d!99289 (=> res!485834 e!405749)))

(assert (=> d!99289 (= res!485834 (= (select (arr!19588 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!99289 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!405749)))

(declare-fun b!724370 () Bool)

(declare-fun e!405750 () Bool)

(assert (=> b!724370 (= e!405749 e!405750)))

(declare-fun res!485835 () Bool)

(assert (=> b!724370 (=> (not res!485835) (not e!405750))))

(assert (=> b!724370 (= res!485835 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20009 a!3186)))))

(declare-fun b!724371 () Bool)

(assert (=> b!724371 (= e!405750 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!99289 (not res!485834)) b!724370))

(assert (= (and b!724370 res!485835) b!724371))

(assert (=> d!99289 m!678743))

(declare-fun m!678785 () Bool)

(assert (=> b!724371 m!678785))

(assert (=> b!724115 d!99289))

(declare-fun b!724373 () Bool)

(declare-fun e!405753 () Bool)

(declare-fun e!405752 () Bool)

(assert (=> b!724373 (= e!405753 e!405752)))

(declare-fun c!79640 () Bool)

(assert (=> b!724373 (= c!79640 (validKeyInArray!0 (select (arr!19588 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!724374 () Bool)

(declare-fun call!34799 () Bool)

(assert (=> b!724374 (= e!405752 call!34799)))

(declare-fun b!724375 () Bool)

(declare-fun e!405751 () Bool)

(assert (=> b!724375 (= e!405752 e!405751)))

(declare-fun lt!320980 () (_ BitVec 64))

(assert (=> b!724375 (= lt!320980 (select (arr!19588 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!320979 () Unit!24708)

(assert (=> b!724375 (= lt!320979 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!320980 #b00000000000000000000000000000000))))

(assert (=> b!724375 (arrayContainsKey!0 a!3186 lt!320980 #b00000000000000000000000000000000)))

(declare-fun lt!320978 () Unit!24708)

(assert (=> b!724375 (= lt!320978 lt!320979)))

(declare-fun res!485837 () Bool)

(assert (=> b!724375 (= res!485837 (= (seekEntryOrOpen!0 (select (arr!19588 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7195 #b00000000000000000000000000000000)))))

(assert (=> b!724375 (=> (not res!485837) (not e!405751))))

(declare-fun bm!34796 () Bool)

(assert (=> bm!34796 (= call!34799 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!99295 () Bool)

(declare-fun res!485836 () Bool)

(assert (=> d!99295 (=> res!485836 e!405753)))

(assert (=> d!99295 (= res!485836 (bvsge #b00000000000000000000000000000000 (size!20009 a!3186)))))

(assert (=> d!99295 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!405753)))

(declare-fun b!724372 () Bool)

(assert (=> b!724372 (= e!405751 call!34799)))

(assert (= (and d!99295 (not res!485836)) b!724373))

(assert (= (and b!724373 c!79640) b!724375))

(assert (= (and b!724373 (not c!79640)) b!724374))

(assert (= (and b!724375 res!485837) b!724372))

(assert (= (or b!724372 b!724374) bm!34796))

(assert (=> b!724373 m!678743))

(assert (=> b!724373 m!678743))

(assert (=> b!724373 m!678747))

(assert (=> b!724375 m!678743))

(declare-fun m!678787 () Bool)

(assert (=> b!724375 m!678787))

(declare-fun m!678789 () Bool)

(assert (=> b!724375 m!678789))

(assert (=> b!724375 m!678743))

(declare-fun m!678791 () Bool)

(assert (=> b!724375 m!678791))

(declare-fun m!678793 () Bool)

(assert (=> bm!34796 m!678793))

(assert (=> b!724104 d!99295))

(declare-fun b!724418 () Bool)

(declare-fun e!405775 () SeekEntryResult!7195)

(assert (=> b!724418 (= e!405775 Undefined!7195)))

(declare-fun e!405776 () SeekEntryResult!7195)

(declare-fun b!724419 () Bool)

(assert (=> b!724419 (= e!405776 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!19588 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!724420 () Bool)

(declare-fun e!405777 () SeekEntryResult!7195)

(assert (=> b!724420 (= e!405777 (Found!7195 index!1321))))

(declare-fun b!724421 () Bool)

(assert (=> b!724421 (= e!405776 (MissingVacant!7195 resIntermediateIndex!5))))

(declare-fun b!724422 () Bool)

(declare-fun c!79662 () Bool)

(declare-fun lt!321000 () (_ BitVec 64))

(assert (=> b!724422 (= c!79662 (= lt!321000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!724422 (= e!405777 e!405776)))

(declare-fun b!724423 () Bool)

(assert (=> b!724423 (= e!405775 e!405777)))

(declare-fun c!79664 () Bool)

(assert (=> b!724423 (= c!79664 (= lt!321000 (select (arr!19588 a!3186) j!159)))))

(declare-fun lt!321001 () SeekEntryResult!7195)

(declare-fun d!99297 () Bool)

(assert (=> d!99297 (and (or ((_ is Undefined!7195) lt!321001) (not ((_ is Found!7195) lt!321001)) (and (bvsge (index!31148 lt!321001) #b00000000000000000000000000000000) (bvslt (index!31148 lt!321001) (size!20009 a!3186)))) (or ((_ is Undefined!7195) lt!321001) ((_ is Found!7195) lt!321001) (not ((_ is MissingVacant!7195) lt!321001)) (not (= (index!31150 lt!321001) resIntermediateIndex!5)) (and (bvsge (index!31150 lt!321001) #b00000000000000000000000000000000) (bvslt (index!31150 lt!321001) (size!20009 a!3186)))) (or ((_ is Undefined!7195) lt!321001) (ite ((_ is Found!7195) lt!321001) (= (select (arr!19588 a!3186) (index!31148 lt!321001)) (select (arr!19588 a!3186) j!159)) (and ((_ is MissingVacant!7195) lt!321001) (= (index!31150 lt!321001) resIntermediateIndex!5) (= (select (arr!19588 a!3186) (index!31150 lt!321001)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!99297 (= lt!321001 e!405775)))

(declare-fun c!79663 () Bool)

(assert (=> d!99297 (= c!79663 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99297 (= lt!321000 (select (arr!19588 a!3186) index!1321))))

(assert (=> d!99297 (validMask!0 mask!3328)))

(assert (=> d!99297 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19588 a!3186) j!159) a!3186 mask!3328) lt!321001)))

(assert (= (and d!99297 c!79663) b!724418))

(assert (= (and d!99297 (not c!79663)) b!724423))

(assert (= (and b!724423 c!79664) b!724420))

(assert (= (and b!724423 (not c!79664)) b!724422))

(assert (= (and b!724422 c!79662) b!724421))

(assert (= (and b!724422 (not c!79662)) b!724419))

(assert (=> b!724419 m!678697))

(assert (=> b!724419 m!678697))

(assert (=> b!724419 m!678585))

(declare-fun m!678809 () Bool)

(assert (=> b!724419 m!678809))

(declare-fun m!678811 () Bool)

(assert (=> d!99297 m!678811))

(declare-fun m!678813 () Bool)

(assert (=> d!99297 m!678813))

(assert (=> d!99297 m!678705))

(assert (=> d!99297 m!678603))

(assert (=> b!724114 d!99297))

(check-sat (not b!724312) (not b!724311) (not b!724371) (not bm!34789) (not b!724240) (not b!724365) (not b!724210) (not d!99243) (not d!99275) (not d!99255) (not b!724314) (not bm!34795) (not d!99251) (not d!99241) (not b!724288) (not b!724227) (not b!724375) (not b!724318) (not d!99297) (not b!724419) (not b!724182) (not d!99287) (not bm!34796) (not d!99265) (not b!724373) (not b!724363))
(check-sat)

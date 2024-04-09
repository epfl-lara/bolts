; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52078 () Bool)

(assert start!52078)

(declare-fun res!358647 () Bool)

(declare-fun e!326995 () Bool)

(assert (=> start!52078 (=> (not res!358647) (not e!326995))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52078 (= res!358647 (validMask!0 mask!3119))))

(assert (=> start!52078 e!326995))

(assert (=> start!52078 true))

(declare-datatypes ((array!35612 0))(
  ( (array!35613 (arr!17095 (Array (_ BitVec 32) (_ BitVec 64))) (size!17459 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35612)

(declare-fun array_inv!12869 (array!35612) Bool)

(assert (=> start!52078 (array_inv!12869 a!3118)))

(declare-fun b!568293 () Bool)

(declare-fun e!326994 () Bool)

(assert (=> b!568293 (= e!326995 e!326994)))

(declare-fun res!358645 () Bool)

(assert (=> b!568293 (=> (not res!358645) (not e!326994))))

(declare-datatypes ((SeekEntryResult!5551 0))(
  ( (MissingZero!5551 (index!24431 (_ BitVec 32))) (Found!5551 (index!24432 (_ BitVec 32))) (Intermediate!5551 (undefined!6363 Bool) (index!24433 (_ BitVec 32)) (x!53335 (_ BitVec 32))) (Undefined!5551) (MissingVacant!5551 (index!24434 (_ BitVec 32))) )
))
(declare-fun lt!258940 () SeekEntryResult!5551)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!568293 (= res!358645 (or (= lt!258940 (MissingZero!5551 i!1132)) (= lt!258940 (MissingVacant!5551 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35612 (_ BitVec 32)) SeekEntryResult!5551)

(assert (=> b!568293 (= lt!258940 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!568294 () Bool)

(declare-fun res!358652 () Bool)

(assert (=> b!568294 (=> (not res!358652) (not e!326995))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!568294 (= res!358652 (validKeyInArray!0 k0!1914))))

(declare-fun b!568295 () Bool)

(declare-fun res!358651 () Bool)

(assert (=> b!568295 (=> (not res!358651) (not e!326995))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!568295 (= res!358651 (and (= (size!17459 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17459 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17459 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!568296 () Bool)

(declare-fun res!358650 () Bool)

(assert (=> b!568296 (=> (not res!358650) (not e!326995))))

(assert (=> b!568296 (= res!358650 (validKeyInArray!0 (select (arr!17095 a!3118) j!142)))))

(declare-fun b!568297 () Bool)

(declare-fun res!358644 () Bool)

(assert (=> b!568297 (=> (not res!358644) (not e!326994))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35612 (_ BitVec 32)) Bool)

(assert (=> b!568297 (= res!358644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun e!326992 () Bool)

(declare-fun b!568298 () Bool)

(declare-fun lt!258938 () SeekEntryResult!5551)

(declare-fun lt!258939 () SeekEntryResult!5551)

(get-info :version)

(assert (=> b!568298 (= e!326992 (not (or (not ((_ is Intermediate!5551) lt!258939)) (undefined!6363 lt!258939) (= (select (arr!17095 a!3118) (index!24433 lt!258939)) (select (arr!17095 a!3118) j!142)) (not (= (select (arr!17095 a!3118) (index!24433 lt!258939)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!258938 (MissingZero!5551 (index!24433 lt!258939))))))))

(assert (=> b!568298 (= lt!258938 (Found!5551 j!142))))

(assert (=> b!568298 (= lt!258938 (seekEntryOrOpen!0 (select (arr!17095 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!568298 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17804 0))(
  ( (Unit!17805) )
))
(declare-fun lt!258941 () Unit!17804)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35612 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17804)

(assert (=> b!568298 (= lt!258941 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!568299 () Bool)

(declare-fun res!358646 () Bool)

(assert (=> b!568299 (=> (not res!358646) (not e!326994))))

(declare-datatypes ((List!11228 0))(
  ( (Nil!11225) (Cons!11224 (h!12242 (_ BitVec 64)) (t!17464 List!11228)) )
))
(declare-fun arrayNoDuplicates!0 (array!35612 (_ BitVec 32) List!11228) Bool)

(assert (=> b!568299 (= res!358646 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11225))))

(declare-fun b!568300 () Bool)

(assert (=> b!568300 (= e!326994 e!326992)))

(declare-fun res!358649 () Bool)

(assert (=> b!568300 (=> (not res!358649) (not e!326992))))

(declare-fun lt!258936 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35612 (_ BitVec 32)) SeekEntryResult!5551)

(assert (=> b!568300 (= res!358649 (= lt!258939 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258936 (select (store (arr!17095 a!3118) i!1132 k0!1914) j!142) (array!35613 (store (arr!17095 a!3118) i!1132 k0!1914) (size!17459 a!3118)) mask!3119)))))

(declare-fun lt!258937 () (_ BitVec 32))

(assert (=> b!568300 (= lt!258939 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258937 (select (arr!17095 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568300 (= lt!258936 (toIndex!0 (select (store (arr!17095 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!568300 (= lt!258937 (toIndex!0 (select (arr!17095 a!3118) j!142) mask!3119))))

(declare-fun b!568301 () Bool)

(declare-fun res!358648 () Bool)

(assert (=> b!568301 (=> (not res!358648) (not e!326995))))

(declare-fun arrayContainsKey!0 (array!35612 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!568301 (= res!358648 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52078 res!358647) b!568295))

(assert (= (and b!568295 res!358651) b!568296))

(assert (= (and b!568296 res!358650) b!568294))

(assert (= (and b!568294 res!358652) b!568301))

(assert (= (and b!568301 res!358648) b!568293))

(assert (= (and b!568293 res!358645) b!568297))

(assert (= (and b!568297 res!358644) b!568299))

(assert (= (and b!568299 res!358646) b!568300))

(assert (= (and b!568300 res!358649) b!568298))

(declare-fun m!546879 () Bool)

(assert (=> b!568294 m!546879))

(declare-fun m!546881 () Bool)

(assert (=> b!568300 m!546881))

(declare-fun m!546883 () Bool)

(assert (=> b!568300 m!546883))

(assert (=> b!568300 m!546881))

(declare-fun m!546885 () Bool)

(assert (=> b!568300 m!546885))

(assert (=> b!568300 m!546885))

(declare-fun m!546887 () Bool)

(assert (=> b!568300 m!546887))

(declare-fun m!546889 () Bool)

(assert (=> b!568300 m!546889))

(assert (=> b!568300 m!546881))

(declare-fun m!546891 () Bool)

(assert (=> b!568300 m!546891))

(assert (=> b!568300 m!546885))

(declare-fun m!546893 () Bool)

(assert (=> b!568300 m!546893))

(assert (=> b!568298 m!546881))

(declare-fun m!546895 () Bool)

(assert (=> b!568298 m!546895))

(declare-fun m!546897 () Bool)

(assert (=> b!568298 m!546897))

(declare-fun m!546899 () Bool)

(assert (=> b!568298 m!546899))

(assert (=> b!568298 m!546881))

(declare-fun m!546901 () Bool)

(assert (=> b!568298 m!546901))

(declare-fun m!546903 () Bool)

(assert (=> start!52078 m!546903))

(declare-fun m!546905 () Bool)

(assert (=> start!52078 m!546905))

(assert (=> b!568296 m!546881))

(assert (=> b!568296 m!546881))

(declare-fun m!546907 () Bool)

(assert (=> b!568296 m!546907))

(declare-fun m!546909 () Bool)

(assert (=> b!568299 m!546909))

(declare-fun m!546911 () Bool)

(assert (=> b!568297 m!546911))

(declare-fun m!546913 () Bool)

(assert (=> b!568293 m!546913))

(declare-fun m!546915 () Bool)

(assert (=> b!568301 m!546915))

(check-sat (not b!568293) (not b!568301) (not b!568297) (not b!568299) (not start!52078) (not b!568300) (not b!568298) (not b!568296) (not b!568294))
(check-sat)
(get-model)

(declare-fun d!84373 () Bool)

(assert (=> d!84373 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!568294 d!84373))

(declare-fun d!84375 () Bool)

(declare-fun e!327040 () Bool)

(assert (=> d!84375 e!327040))

(declare-fun c!65190 () Bool)

(declare-fun lt!258973 () SeekEntryResult!5551)

(assert (=> d!84375 (= c!65190 (and ((_ is Intermediate!5551) lt!258973) (undefined!6363 lt!258973)))))

(declare-fun e!327042 () SeekEntryResult!5551)

(assert (=> d!84375 (= lt!258973 e!327042)))

(declare-fun c!65191 () Bool)

(assert (=> d!84375 (= c!65191 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!258974 () (_ BitVec 64))

(assert (=> d!84375 (= lt!258974 (select (arr!17095 (array!35613 (store (arr!17095 a!3118) i!1132 k0!1914) (size!17459 a!3118))) lt!258936))))

(assert (=> d!84375 (validMask!0 mask!3119)))

(assert (=> d!84375 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258936 (select (store (arr!17095 a!3118) i!1132 k0!1914) j!142) (array!35613 (store (arr!17095 a!3118) i!1132 k0!1914) (size!17459 a!3118)) mask!3119) lt!258973)))

(declare-fun b!568374 () Bool)

(assert (=> b!568374 (and (bvsge (index!24433 lt!258973) #b00000000000000000000000000000000) (bvslt (index!24433 lt!258973) (size!17459 (array!35613 (store (arr!17095 a!3118) i!1132 k0!1914) (size!17459 a!3118)))))))

(declare-fun e!327043 () Bool)

(assert (=> b!568374 (= e!327043 (= (select (arr!17095 (array!35613 (store (arr!17095 a!3118) i!1132 k0!1914) (size!17459 a!3118))) (index!24433 lt!258973)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!568375 () Bool)

(assert (=> b!568375 (and (bvsge (index!24433 lt!258973) #b00000000000000000000000000000000) (bvslt (index!24433 lt!258973) (size!17459 (array!35613 (store (arr!17095 a!3118) i!1132 k0!1914) (size!17459 a!3118)))))))

(declare-fun res!358701 () Bool)

(assert (=> b!568375 (= res!358701 (= (select (arr!17095 (array!35613 (store (arr!17095 a!3118) i!1132 k0!1914) (size!17459 a!3118))) (index!24433 lt!258973)) (select (store (arr!17095 a!3118) i!1132 k0!1914) j!142)))))

(assert (=> b!568375 (=> res!358701 e!327043)))

(declare-fun e!327041 () Bool)

(assert (=> b!568375 (= e!327041 e!327043)))

(declare-fun b!568376 () Bool)

(assert (=> b!568376 (and (bvsge (index!24433 lt!258973) #b00000000000000000000000000000000) (bvslt (index!24433 lt!258973) (size!17459 (array!35613 (store (arr!17095 a!3118) i!1132 k0!1914) (size!17459 a!3118)))))))

(declare-fun res!358703 () Bool)

(assert (=> b!568376 (= res!358703 (= (select (arr!17095 (array!35613 (store (arr!17095 a!3118) i!1132 k0!1914) (size!17459 a!3118))) (index!24433 lt!258973)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!568376 (=> res!358703 e!327043)))

(declare-fun b!568377 () Bool)

(declare-fun e!327039 () SeekEntryResult!5551)

(assert (=> b!568377 (= e!327039 (Intermediate!5551 false lt!258936 #b00000000000000000000000000000000))))

(declare-fun b!568378 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568378 (= e!327039 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258936 #b00000000000000000000000000000000 mask!3119) (select (store (arr!17095 a!3118) i!1132 k0!1914) j!142) (array!35613 (store (arr!17095 a!3118) i!1132 k0!1914) (size!17459 a!3118)) mask!3119))))

(declare-fun b!568379 () Bool)

(assert (=> b!568379 (= e!327042 e!327039)))

(declare-fun c!65192 () Bool)

(assert (=> b!568379 (= c!65192 (or (= lt!258974 (select (store (arr!17095 a!3118) i!1132 k0!1914) j!142)) (= (bvadd lt!258974 lt!258974) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!568380 () Bool)

(assert (=> b!568380 (= e!327040 (bvsge (x!53335 lt!258973) #b01111111111111111111111111111110))))

(declare-fun b!568381 () Bool)

(assert (=> b!568381 (= e!327040 e!327041)))

(declare-fun res!358702 () Bool)

(assert (=> b!568381 (= res!358702 (and ((_ is Intermediate!5551) lt!258973) (not (undefined!6363 lt!258973)) (bvslt (x!53335 lt!258973) #b01111111111111111111111111111110) (bvsge (x!53335 lt!258973) #b00000000000000000000000000000000) (bvsge (x!53335 lt!258973) #b00000000000000000000000000000000)))))

(assert (=> b!568381 (=> (not res!358702) (not e!327041))))

(declare-fun b!568382 () Bool)

(assert (=> b!568382 (= e!327042 (Intermediate!5551 true lt!258936 #b00000000000000000000000000000000))))

(assert (= (and d!84375 c!65191) b!568382))

(assert (= (and d!84375 (not c!65191)) b!568379))

(assert (= (and b!568379 c!65192) b!568377))

(assert (= (and b!568379 (not c!65192)) b!568378))

(assert (= (and d!84375 c!65190) b!568380))

(assert (= (and d!84375 (not c!65190)) b!568381))

(assert (= (and b!568381 res!358702) b!568375))

(assert (= (and b!568375 (not res!358701)) b!568376))

(assert (= (and b!568376 (not res!358703)) b!568374))

(declare-fun m!546971 () Bool)

(assert (=> d!84375 m!546971))

(assert (=> d!84375 m!546903))

(declare-fun m!546973 () Bool)

(assert (=> b!568376 m!546973))

(assert (=> b!568375 m!546973))

(assert (=> b!568374 m!546973))

(declare-fun m!546975 () Bool)

(assert (=> b!568378 m!546975))

(assert (=> b!568378 m!546975))

(assert (=> b!568378 m!546885))

(declare-fun m!546977 () Bool)

(assert (=> b!568378 m!546977))

(assert (=> b!568300 d!84375))

(declare-fun d!84385 () Bool)

(declare-fun e!327045 () Bool)

(assert (=> d!84385 e!327045))

(declare-fun c!65193 () Bool)

(declare-fun lt!258975 () SeekEntryResult!5551)

(assert (=> d!84385 (= c!65193 (and ((_ is Intermediate!5551) lt!258975) (undefined!6363 lt!258975)))))

(declare-fun e!327047 () SeekEntryResult!5551)

(assert (=> d!84385 (= lt!258975 e!327047)))

(declare-fun c!65194 () Bool)

(assert (=> d!84385 (= c!65194 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!258976 () (_ BitVec 64))

(assert (=> d!84385 (= lt!258976 (select (arr!17095 a!3118) lt!258937))))

(assert (=> d!84385 (validMask!0 mask!3119)))

(assert (=> d!84385 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258937 (select (arr!17095 a!3118) j!142) a!3118 mask!3119) lt!258975)))

(declare-fun b!568383 () Bool)

(assert (=> b!568383 (and (bvsge (index!24433 lt!258975) #b00000000000000000000000000000000) (bvslt (index!24433 lt!258975) (size!17459 a!3118)))))

(declare-fun e!327048 () Bool)

(assert (=> b!568383 (= e!327048 (= (select (arr!17095 a!3118) (index!24433 lt!258975)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!568384 () Bool)

(assert (=> b!568384 (and (bvsge (index!24433 lt!258975) #b00000000000000000000000000000000) (bvslt (index!24433 lt!258975) (size!17459 a!3118)))))

(declare-fun res!358704 () Bool)

(assert (=> b!568384 (= res!358704 (= (select (arr!17095 a!3118) (index!24433 lt!258975)) (select (arr!17095 a!3118) j!142)))))

(assert (=> b!568384 (=> res!358704 e!327048)))

(declare-fun e!327046 () Bool)

(assert (=> b!568384 (= e!327046 e!327048)))

(declare-fun b!568385 () Bool)

(assert (=> b!568385 (and (bvsge (index!24433 lt!258975) #b00000000000000000000000000000000) (bvslt (index!24433 lt!258975) (size!17459 a!3118)))))

(declare-fun res!358706 () Bool)

(assert (=> b!568385 (= res!358706 (= (select (arr!17095 a!3118) (index!24433 lt!258975)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!568385 (=> res!358706 e!327048)))

(declare-fun b!568386 () Bool)

(declare-fun e!327044 () SeekEntryResult!5551)

(assert (=> b!568386 (= e!327044 (Intermediate!5551 false lt!258937 #b00000000000000000000000000000000))))

(declare-fun b!568387 () Bool)

(assert (=> b!568387 (= e!327044 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258937 #b00000000000000000000000000000000 mask!3119) (select (arr!17095 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!568388 () Bool)

(assert (=> b!568388 (= e!327047 e!327044)))

(declare-fun c!65195 () Bool)

(assert (=> b!568388 (= c!65195 (or (= lt!258976 (select (arr!17095 a!3118) j!142)) (= (bvadd lt!258976 lt!258976) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!568389 () Bool)

(assert (=> b!568389 (= e!327045 (bvsge (x!53335 lt!258975) #b01111111111111111111111111111110))))

(declare-fun b!568390 () Bool)

(assert (=> b!568390 (= e!327045 e!327046)))

(declare-fun res!358705 () Bool)

(assert (=> b!568390 (= res!358705 (and ((_ is Intermediate!5551) lt!258975) (not (undefined!6363 lt!258975)) (bvslt (x!53335 lt!258975) #b01111111111111111111111111111110) (bvsge (x!53335 lt!258975) #b00000000000000000000000000000000) (bvsge (x!53335 lt!258975) #b00000000000000000000000000000000)))))

(assert (=> b!568390 (=> (not res!358705) (not e!327046))))

(declare-fun b!568391 () Bool)

(assert (=> b!568391 (= e!327047 (Intermediate!5551 true lt!258937 #b00000000000000000000000000000000))))

(assert (= (and d!84385 c!65194) b!568391))

(assert (= (and d!84385 (not c!65194)) b!568388))

(assert (= (and b!568388 c!65195) b!568386))

(assert (= (and b!568388 (not c!65195)) b!568387))

(assert (= (and d!84385 c!65193) b!568389))

(assert (= (and d!84385 (not c!65193)) b!568390))

(assert (= (and b!568390 res!358705) b!568384))

(assert (= (and b!568384 (not res!358704)) b!568385))

(assert (= (and b!568385 (not res!358706)) b!568383))

(declare-fun m!546979 () Bool)

(assert (=> d!84385 m!546979))

(assert (=> d!84385 m!546903))

(declare-fun m!546981 () Bool)

(assert (=> b!568385 m!546981))

(assert (=> b!568384 m!546981))

(assert (=> b!568383 m!546981))

(declare-fun m!546983 () Bool)

(assert (=> b!568387 m!546983))

(assert (=> b!568387 m!546983))

(assert (=> b!568387 m!546881))

(declare-fun m!546985 () Bool)

(assert (=> b!568387 m!546985))

(assert (=> b!568300 d!84385))

(declare-fun d!84387 () Bool)

(declare-fun lt!258982 () (_ BitVec 32))

(declare-fun lt!258981 () (_ BitVec 32))

(assert (=> d!84387 (= lt!258982 (bvmul (bvxor lt!258981 (bvlshr lt!258981 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84387 (= lt!258981 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17095 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!17095 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84387 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!358707 (let ((h!12244 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17095 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!17095 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53338 (bvmul (bvxor h!12244 (bvlshr h!12244 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53338 (bvlshr x!53338 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!358707 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!358707 #b00000000000000000000000000000000))))))

(assert (=> d!84387 (= (toIndex!0 (select (store (arr!17095 a!3118) i!1132 k0!1914) j!142) mask!3119) (bvand (bvxor lt!258982 (bvlshr lt!258982 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!568300 d!84387))

(declare-fun d!84393 () Bool)

(declare-fun lt!258984 () (_ BitVec 32))

(declare-fun lt!258983 () (_ BitVec 32))

(assert (=> d!84393 (= lt!258984 (bvmul (bvxor lt!258983 (bvlshr lt!258983 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84393 (= lt!258983 ((_ extract 31 0) (bvand (bvxor (select (arr!17095 a!3118) j!142) (bvlshr (select (arr!17095 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84393 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!358707 (let ((h!12244 ((_ extract 31 0) (bvand (bvxor (select (arr!17095 a!3118) j!142) (bvlshr (select (arr!17095 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53338 (bvmul (bvxor h!12244 (bvlshr h!12244 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53338 (bvlshr x!53338 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!358707 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!358707 #b00000000000000000000000000000000))))))

(assert (=> d!84393 (= (toIndex!0 (select (arr!17095 a!3118) j!142) mask!3119) (bvand (bvxor lt!258984 (bvlshr lt!258984 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!568300 d!84393))

(declare-fun d!84395 () Bool)

(declare-fun res!358718 () Bool)

(declare-fun e!327059 () Bool)

(assert (=> d!84395 (=> res!358718 e!327059)))

(assert (=> d!84395 (= res!358718 (= (select (arr!17095 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!84395 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!327059)))

(declare-fun b!568402 () Bool)

(declare-fun e!327060 () Bool)

(assert (=> b!568402 (= e!327059 e!327060)))

(declare-fun res!358719 () Bool)

(assert (=> b!568402 (=> (not res!358719) (not e!327060))))

(assert (=> b!568402 (= res!358719 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17459 a!3118)))))

(declare-fun b!568403 () Bool)

(assert (=> b!568403 (= e!327060 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84395 (not res!358718)) b!568402))

(assert (= (and b!568402 res!358719) b!568403))

(declare-fun m!546991 () Bool)

(assert (=> d!84395 m!546991))

(declare-fun m!546993 () Bool)

(assert (=> b!568403 m!546993))

(assert (=> b!568301 d!84395))

(declare-fun d!84399 () Bool)

(assert (=> d!84399 (= (validKeyInArray!0 (select (arr!17095 a!3118) j!142)) (and (not (= (select (arr!17095 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17095 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!568296 d!84399))

(declare-fun bm!32567 () Bool)

(declare-fun call!32570 () Bool)

(assert (=> bm!32567 (= call!32570 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!568463 () Bool)

(declare-fun e!327100 () Bool)

(declare-fun e!327099 () Bool)

(assert (=> b!568463 (= e!327100 e!327099)))

(declare-fun lt!259001 () (_ BitVec 64))

(assert (=> b!568463 (= lt!259001 (select (arr!17095 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!258999 () Unit!17804)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35612 (_ BitVec 64) (_ BitVec 32)) Unit!17804)

(assert (=> b!568463 (= lt!258999 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!259001 #b00000000000000000000000000000000))))

(assert (=> b!568463 (arrayContainsKey!0 a!3118 lt!259001 #b00000000000000000000000000000000)))

(declare-fun lt!259000 () Unit!17804)

(assert (=> b!568463 (= lt!259000 lt!258999)))

(declare-fun res!358746 () Bool)

(assert (=> b!568463 (= res!358746 (= (seekEntryOrOpen!0 (select (arr!17095 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5551 #b00000000000000000000000000000000)))))

(assert (=> b!568463 (=> (not res!358746) (not e!327099))))

(declare-fun d!84401 () Bool)

(declare-fun res!358745 () Bool)

(declare-fun e!327101 () Bool)

(assert (=> d!84401 (=> res!358745 e!327101)))

(assert (=> d!84401 (= res!358745 (bvsge #b00000000000000000000000000000000 (size!17459 a!3118)))))

(assert (=> d!84401 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!327101)))

(declare-fun b!568464 () Bool)

(assert (=> b!568464 (= e!327101 e!327100)))

(declare-fun c!65213 () Bool)

(assert (=> b!568464 (= c!65213 (validKeyInArray!0 (select (arr!17095 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!568465 () Bool)

(assert (=> b!568465 (= e!327099 call!32570)))

(declare-fun b!568466 () Bool)

(assert (=> b!568466 (= e!327100 call!32570)))

(assert (= (and d!84401 (not res!358745)) b!568464))

(assert (= (and b!568464 c!65213) b!568463))

(assert (= (and b!568464 (not c!65213)) b!568466))

(assert (= (and b!568463 res!358746) b!568465))

(assert (= (or b!568465 b!568466) bm!32567))

(declare-fun m!547017 () Bool)

(assert (=> bm!32567 m!547017))

(assert (=> b!568463 m!546991))

(declare-fun m!547019 () Bool)

(assert (=> b!568463 m!547019))

(declare-fun m!547021 () Bool)

(assert (=> b!568463 m!547021))

(assert (=> b!568463 m!546991))

(declare-fun m!547023 () Bool)

(assert (=> b!568463 m!547023))

(assert (=> b!568464 m!546991))

(assert (=> b!568464 m!546991))

(declare-fun m!547025 () Bool)

(assert (=> b!568464 m!547025))

(assert (=> b!568297 d!84401))

(declare-fun d!84409 () Bool)

(assert (=> d!84409 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52078 d!84409))

(declare-fun d!84419 () Bool)

(assert (=> d!84419 (= (array_inv!12869 a!3118) (bvsge (size!17459 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52078 d!84419))

(declare-fun b!568519 () Bool)

(declare-fun e!327130 () SeekEntryResult!5551)

(declare-fun lt!259041 () SeekEntryResult!5551)

(assert (=> b!568519 (= e!327130 (Found!5551 (index!24433 lt!259041)))))

(declare-fun b!568520 () Bool)

(declare-fun e!327131 () SeekEntryResult!5551)

(assert (=> b!568520 (= e!327131 (MissingZero!5551 (index!24433 lt!259041)))))

(declare-fun b!568521 () Bool)

(declare-fun c!65241 () Bool)

(declare-fun lt!259042 () (_ BitVec 64))

(assert (=> b!568521 (= c!65241 (= lt!259042 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!568521 (= e!327130 e!327131)))

(declare-fun b!568522 () Bool)

(declare-fun e!327129 () SeekEntryResult!5551)

(assert (=> b!568522 (= e!327129 Undefined!5551)))

(declare-fun d!84421 () Bool)

(declare-fun lt!259040 () SeekEntryResult!5551)

(assert (=> d!84421 (and (or ((_ is Undefined!5551) lt!259040) (not ((_ is Found!5551) lt!259040)) (and (bvsge (index!24432 lt!259040) #b00000000000000000000000000000000) (bvslt (index!24432 lt!259040) (size!17459 a!3118)))) (or ((_ is Undefined!5551) lt!259040) ((_ is Found!5551) lt!259040) (not ((_ is MissingZero!5551) lt!259040)) (and (bvsge (index!24431 lt!259040) #b00000000000000000000000000000000) (bvslt (index!24431 lt!259040) (size!17459 a!3118)))) (or ((_ is Undefined!5551) lt!259040) ((_ is Found!5551) lt!259040) ((_ is MissingZero!5551) lt!259040) (not ((_ is MissingVacant!5551) lt!259040)) (and (bvsge (index!24434 lt!259040) #b00000000000000000000000000000000) (bvslt (index!24434 lt!259040) (size!17459 a!3118)))) (or ((_ is Undefined!5551) lt!259040) (ite ((_ is Found!5551) lt!259040) (= (select (arr!17095 a!3118) (index!24432 lt!259040)) (select (arr!17095 a!3118) j!142)) (ite ((_ is MissingZero!5551) lt!259040) (= (select (arr!17095 a!3118) (index!24431 lt!259040)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5551) lt!259040) (= (select (arr!17095 a!3118) (index!24434 lt!259040)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84421 (= lt!259040 e!327129)))

(declare-fun c!65240 () Bool)

(assert (=> d!84421 (= c!65240 (and ((_ is Intermediate!5551) lt!259041) (undefined!6363 lt!259041)))))

(assert (=> d!84421 (= lt!259041 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17095 a!3118) j!142) mask!3119) (select (arr!17095 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84421 (validMask!0 mask!3119)))

(assert (=> d!84421 (= (seekEntryOrOpen!0 (select (arr!17095 a!3118) j!142) a!3118 mask!3119) lt!259040)))

(declare-fun b!568523 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35612 (_ BitVec 32)) SeekEntryResult!5551)

(assert (=> b!568523 (= e!327131 (seekKeyOrZeroReturnVacant!0 (x!53335 lt!259041) (index!24433 lt!259041) (index!24433 lt!259041) (select (arr!17095 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!568524 () Bool)

(assert (=> b!568524 (= e!327129 e!327130)))

(assert (=> b!568524 (= lt!259042 (select (arr!17095 a!3118) (index!24433 lt!259041)))))

(declare-fun c!65239 () Bool)

(assert (=> b!568524 (= c!65239 (= lt!259042 (select (arr!17095 a!3118) j!142)))))

(assert (= (and d!84421 c!65240) b!568522))

(assert (= (and d!84421 (not c!65240)) b!568524))

(assert (= (and b!568524 c!65239) b!568519))

(assert (= (and b!568524 (not c!65239)) b!568521))

(assert (= (and b!568521 c!65241) b!568520))

(assert (= (and b!568521 (not c!65241)) b!568523))

(declare-fun m!547061 () Bool)

(assert (=> d!84421 m!547061))

(declare-fun m!547063 () Bool)

(assert (=> d!84421 m!547063))

(declare-fun m!547065 () Bool)

(assert (=> d!84421 m!547065))

(assert (=> d!84421 m!546903))

(assert (=> d!84421 m!546883))

(assert (=> d!84421 m!546881))

(declare-fun m!547067 () Bool)

(assert (=> d!84421 m!547067))

(assert (=> d!84421 m!546881))

(assert (=> d!84421 m!546883))

(assert (=> b!568523 m!546881))

(declare-fun m!547073 () Bool)

(assert (=> b!568523 m!547073))

(declare-fun m!547077 () Bool)

(assert (=> b!568524 m!547077))

(assert (=> b!568298 d!84421))

(declare-fun call!32572 () Bool)

(declare-fun bm!32569 () Bool)

(assert (=> bm!32569 (= call!32572 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!568531 () Bool)

(declare-fun e!327136 () Bool)

(declare-fun e!327135 () Bool)

(assert (=> b!568531 (= e!327136 e!327135)))

(declare-fun lt!259048 () (_ BitVec 64))

(assert (=> b!568531 (= lt!259048 (select (arr!17095 a!3118) j!142))))

(declare-fun lt!259046 () Unit!17804)

(assert (=> b!568531 (= lt!259046 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!259048 j!142))))

(assert (=> b!568531 (arrayContainsKey!0 a!3118 lt!259048 #b00000000000000000000000000000000)))

(declare-fun lt!259047 () Unit!17804)

(assert (=> b!568531 (= lt!259047 lt!259046)))

(declare-fun res!358751 () Bool)

(assert (=> b!568531 (= res!358751 (= (seekEntryOrOpen!0 (select (arr!17095 a!3118) j!142) a!3118 mask!3119) (Found!5551 j!142)))))

(assert (=> b!568531 (=> (not res!358751) (not e!327135))))

(declare-fun d!84431 () Bool)

(declare-fun res!358750 () Bool)

(declare-fun e!327137 () Bool)

(assert (=> d!84431 (=> res!358750 e!327137)))

(assert (=> d!84431 (= res!358750 (bvsge j!142 (size!17459 a!3118)))))

(assert (=> d!84431 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!327137)))

(declare-fun b!568532 () Bool)

(assert (=> b!568532 (= e!327137 e!327136)))

(declare-fun c!65245 () Bool)

(assert (=> b!568532 (= c!65245 (validKeyInArray!0 (select (arr!17095 a!3118) j!142)))))

(declare-fun b!568533 () Bool)

(assert (=> b!568533 (= e!327135 call!32572)))

(declare-fun b!568534 () Bool)

(assert (=> b!568534 (= e!327136 call!32572)))

(assert (= (and d!84431 (not res!358750)) b!568532))

(assert (= (and b!568532 c!65245) b!568531))

(assert (= (and b!568532 (not c!65245)) b!568534))

(assert (= (and b!568531 res!358751) b!568533))

(assert (= (or b!568533 b!568534) bm!32569))

(declare-fun m!547087 () Bool)

(assert (=> bm!32569 m!547087))

(assert (=> b!568531 m!546881))

(declare-fun m!547089 () Bool)

(assert (=> b!568531 m!547089))

(declare-fun m!547091 () Bool)

(assert (=> b!568531 m!547091))

(assert (=> b!568531 m!546881))

(assert (=> b!568531 m!546901))

(assert (=> b!568532 m!546881))

(assert (=> b!568532 m!546881))

(assert (=> b!568532 m!546907))

(assert (=> b!568298 d!84431))

(declare-fun d!84435 () Bool)

(assert (=> d!84435 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!259060 () Unit!17804)

(declare-fun choose!38 (array!35612 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17804)

(assert (=> d!84435 (= lt!259060 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84435 (validMask!0 mask!3119)))

(assert (=> d!84435 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!259060)))

(declare-fun bs!17635 () Bool)

(assert (= bs!17635 d!84435))

(assert (=> bs!17635 m!546895))

(declare-fun m!547103 () Bool)

(assert (=> bs!17635 m!547103))

(assert (=> bs!17635 m!546903))

(assert (=> b!568298 d!84435))

(declare-fun b!568559 () Bool)

(declare-fun e!327157 () SeekEntryResult!5551)

(declare-fun lt!259065 () SeekEntryResult!5551)

(assert (=> b!568559 (= e!327157 (Found!5551 (index!24433 lt!259065)))))

(declare-fun b!568560 () Bool)

(declare-fun e!327158 () SeekEntryResult!5551)

(assert (=> b!568560 (= e!327158 (MissingZero!5551 (index!24433 lt!259065)))))

(declare-fun b!568561 () Bool)

(declare-fun c!65254 () Bool)

(declare-fun lt!259066 () (_ BitVec 64))

(assert (=> b!568561 (= c!65254 (= lt!259066 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!568561 (= e!327157 e!327158)))

(declare-fun b!568562 () Bool)

(declare-fun e!327156 () SeekEntryResult!5551)

(assert (=> b!568562 (= e!327156 Undefined!5551)))

(declare-fun d!84441 () Bool)

(declare-fun lt!259064 () SeekEntryResult!5551)

(assert (=> d!84441 (and (or ((_ is Undefined!5551) lt!259064) (not ((_ is Found!5551) lt!259064)) (and (bvsge (index!24432 lt!259064) #b00000000000000000000000000000000) (bvslt (index!24432 lt!259064) (size!17459 a!3118)))) (or ((_ is Undefined!5551) lt!259064) ((_ is Found!5551) lt!259064) (not ((_ is MissingZero!5551) lt!259064)) (and (bvsge (index!24431 lt!259064) #b00000000000000000000000000000000) (bvslt (index!24431 lt!259064) (size!17459 a!3118)))) (or ((_ is Undefined!5551) lt!259064) ((_ is Found!5551) lt!259064) ((_ is MissingZero!5551) lt!259064) (not ((_ is MissingVacant!5551) lt!259064)) (and (bvsge (index!24434 lt!259064) #b00000000000000000000000000000000) (bvslt (index!24434 lt!259064) (size!17459 a!3118)))) (or ((_ is Undefined!5551) lt!259064) (ite ((_ is Found!5551) lt!259064) (= (select (arr!17095 a!3118) (index!24432 lt!259064)) k0!1914) (ite ((_ is MissingZero!5551) lt!259064) (= (select (arr!17095 a!3118) (index!24431 lt!259064)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5551) lt!259064) (= (select (arr!17095 a!3118) (index!24434 lt!259064)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84441 (= lt!259064 e!327156)))

(declare-fun c!65253 () Bool)

(assert (=> d!84441 (= c!65253 (and ((_ is Intermediate!5551) lt!259065) (undefined!6363 lt!259065)))))

(assert (=> d!84441 (= lt!259065 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!84441 (validMask!0 mask!3119)))

(assert (=> d!84441 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!259064)))

(declare-fun b!568563 () Bool)

(assert (=> b!568563 (= e!327158 (seekKeyOrZeroReturnVacant!0 (x!53335 lt!259065) (index!24433 lt!259065) (index!24433 lt!259065) k0!1914 a!3118 mask!3119))))

(declare-fun b!568564 () Bool)

(assert (=> b!568564 (= e!327156 e!327157)))

(assert (=> b!568564 (= lt!259066 (select (arr!17095 a!3118) (index!24433 lt!259065)))))

(declare-fun c!65252 () Bool)

(assert (=> b!568564 (= c!65252 (= lt!259066 k0!1914))))

(assert (= (and d!84441 c!65253) b!568562))

(assert (= (and d!84441 (not c!65253)) b!568564))

(assert (= (and b!568564 c!65252) b!568559))

(assert (= (and b!568564 (not c!65252)) b!568561))

(assert (= (and b!568561 c!65254) b!568560))

(assert (= (and b!568561 (not c!65254)) b!568563))

(declare-fun m!547107 () Bool)

(assert (=> d!84441 m!547107))

(declare-fun m!547111 () Bool)

(assert (=> d!84441 m!547111))

(declare-fun m!547114 () Bool)

(assert (=> d!84441 m!547114))

(assert (=> d!84441 m!546903))

(declare-fun m!547117 () Bool)

(assert (=> d!84441 m!547117))

(declare-fun m!547121 () Bool)

(assert (=> d!84441 m!547121))

(assert (=> d!84441 m!547117))

(declare-fun m!547125 () Bool)

(assert (=> b!568563 m!547125))

(declare-fun m!547129 () Bool)

(assert (=> b!568564 m!547129))

(assert (=> b!568293 d!84441))

(declare-fun b!568579 () Bool)

(declare-fun e!327172 () Bool)

(declare-fun e!327173 () Bool)

(assert (=> b!568579 (= e!327172 e!327173)))

(declare-fun c!65258 () Bool)

(assert (=> b!568579 (= c!65258 (validKeyInArray!0 (select (arr!17095 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32576 () Bool)

(declare-fun call!32579 () Bool)

(assert (=> bm!32576 (= call!32579 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65258 (Cons!11224 (select (arr!17095 a!3118) #b00000000000000000000000000000000) Nil!11225) Nil!11225)))))

(declare-fun b!568580 () Bool)

(declare-fun e!327170 () Bool)

(declare-fun contains!2881 (List!11228 (_ BitVec 64)) Bool)

(assert (=> b!568580 (= e!327170 (contains!2881 Nil!11225 (select (arr!17095 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!84445 () Bool)

(declare-fun res!358773 () Bool)

(declare-fun e!327171 () Bool)

(assert (=> d!84445 (=> res!358773 e!327171)))

(assert (=> d!84445 (= res!358773 (bvsge #b00000000000000000000000000000000 (size!17459 a!3118)))))

(assert (=> d!84445 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11225) e!327171)))

(declare-fun b!568581 () Bool)

(assert (=> b!568581 (= e!327173 call!32579)))

(declare-fun b!568582 () Bool)

(assert (=> b!568582 (= e!327173 call!32579)))

(declare-fun b!568583 () Bool)

(assert (=> b!568583 (= e!327171 e!327172)))

(declare-fun res!358774 () Bool)

(assert (=> b!568583 (=> (not res!358774) (not e!327172))))

(assert (=> b!568583 (= res!358774 (not e!327170))))

(declare-fun res!358772 () Bool)

(assert (=> b!568583 (=> (not res!358772) (not e!327170))))

(assert (=> b!568583 (= res!358772 (validKeyInArray!0 (select (arr!17095 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!84445 (not res!358773)) b!568583))

(assert (= (and b!568583 res!358772) b!568580))

(assert (= (and b!568583 res!358774) b!568579))

(assert (= (and b!568579 c!65258) b!568581))

(assert (= (and b!568579 (not c!65258)) b!568582))

(assert (= (or b!568581 b!568582) bm!32576))

(assert (=> b!568579 m!546991))

(assert (=> b!568579 m!546991))

(assert (=> b!568579 m!547025))

(assert (=> bm!32576 m!546991))

(declare-fun m!547139 () Bool)

(assert (=> bm!32576 m!547139))

(assert (=> b!568580 m!546991))

(assert (=> b!568580 m!546991))

(declare-fun m!547141 () Bool)

(assert (=> b!568580 m!547141))

(assert (=> b!568583 m!546991))

(assert (=> b!568583 m!546991))

(assert (=> b!568583 m!547025))

(assert (=> b!568299 d!84445))

(check-sat (not b!568403) (not b!568579) (not b!568378) (not b!568583) (not d!84385) (not b!568464) (not b!568532) (not b!568523) (not b!568531) (not d!84435) (not bm!32576) (not bm!32567) (not b!568580) (not bm!32569) (not d!84441) (not b!568387) (not d!84421) (not b!568563) (not b!568463) (not d!84375))
(check-sat)

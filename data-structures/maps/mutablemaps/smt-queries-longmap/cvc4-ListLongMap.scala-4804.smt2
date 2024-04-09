; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65906 () Bool)

(assert start!65906)

(declare-fun b!759628 () Bool)

(declare-fun res!514240 () Bool)

(declare-fun e!423467 () Bool)

(assert (=> b!759628 (=> (not res!514240) (not e!423467))))

(declare-fun e!423466 () Bool)

(assert (=> b!759628 (= res!514240 e!423466)))

(declare-fun c!83079 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!759628 (= c!83079 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!759629 () Bool)

(declare-fun e!423468 () Bool)

(assert (=> b!759629 (= e!423467 e!423468)))

(declare-fun res!514235 () Bool)

(assert (=> b!759629 (=> (not res!514235) (not e!423468))))

(declare-datatypes ((SeekEntryResult!7733 0))(
  ( (MissingZero!7733 (index!33299 (_ BitVec 32))) (Found!7733 (index!33300 (_ BitVec 32))) (Intermediate!7733 (undefined!8545 Bool) (index!33301 (_ BitVec 32)) (x!64204 (_ BitVec 32))) (Undefined!7733) (MissingVacant!7733 (index!33302 (_ BitVec 32))) )
))
(declare-fun lt!338495 () SeekEntryResult!7733)

(declare-fun lt!338492 () SeekEntryResult!7733)

(assert (=> b!759629 (= res!514235 (= lt!338495 lt!338492))))

(declare-fun lt!338494 () (_ BitVec 64))

(declare-datatypes ((array!42032 0))(
  ( (array!42033 (arr!20126 (Array (_ BitVec 32) (_ BitVec 64))) (size!20547 (_ BitVec 32))) )
))
(declare-fun lt!338493 () array!42032)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42032 (_ BitVec 32)) SeekEntryResult!7733)

(assert (=> b!759629 (= lt!338492 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338494 lt!338493 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!759629 (= lt!338495 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338494 mask!3328) lt!338494 lt!338493 mask!3328))))

(declare-fun a!3186 () array!42032)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!759629 (= lt!338494 (select (store (arr!20126 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!759629 (= lt!338493 (array!42033 (store (arr!20126 a!3186) i!1173 k!2102) (size!20547 a!3186)))))

(declare-fun b!759630 () Bool)

(declare-fun res!514238 () Bool)

(declare-fun e!423469 () Bool)

(assert (=> b!759630 (=> (not res!514238) (not e!423469))))

(declare-fun arrayContainsKey!0 (array!42032 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!759630 (= res!514238 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!759631 () Bool)

(declare-fun e!423471 () Bool)

(assert (=> b!759631 (= e!423469 e!423471)))

(declare-fun res!514244 () Bool)

(assert (=> b!759631 (=> (not res!514244) (not e!423471))))

(declare-fun lt!338498 () SeekEntryResult!7733)

(assert (=> b!759631 (= res!514244 (or (= lt!338498 (MissingZero!7733 i!1173)) (= lt!338498 (MissingVacant!7733 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42032 (_ BitVec 32)) SeekEntryResult!7733)

(assert (=> b!759631 (= lt!338498 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!514241 () Bool)

(assert (=> start!65906 (=> (not res!514241) (not e!423469))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65906 (= res!514241 (validMask!0 mask!3328))))

(assert (=> start!65906 e!423469))

(assert (=> start!65906 true))

(declare-fun array_inv!15900 (array!42032) Bool)

(assert (=> start!65906 (array_inv!15900 a!3186)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!759632 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42032 (_ BitVec 32)) SeekEntryResult!7733)

(assert (=> b!759632 (= e!423466 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20126 a!3186) j!159) a!3186 mask!3328) (Found!7733 j!159)))))

(declare-fun b!759633 () Bool)

(declare-fun res!514242 () Bool)

(assert (=> b!759633 (=> (not res!514242) (not e!423471))))

(assert (=> b!759633 (= res!514242 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20547 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20547 a!3186))))))

(declare-fun lt!338496 () SeekEntryResult!7733)

(declare-fun b!759634 () Bool)

(assert (=> b!759634 (= e!423466 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20126 a!3186) j!159) a!3186 mask!3328) lt!338496))))

(declare-fun b!759635 () Bool)

(declare-fun res!514239 () Bool)

(assert (=> b!759635 (=> (not res!514239) (not e!423471))))

(declare-datatypes ((List!14181 0))(
  ( (Nil!14178) (Cons!14177 (h!15249 (_ BitVec 64)) (t!20504 List!14181)) )
))
(declare-fun arrayNoDuplicates!0 (array!42032 (_ BitVec 32) List!14181) Bool)

(assert (=> b!759635 (= res!514239 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14178))))

(declare-fun b!759636 () Bool)

(declare-fun lt!338491 () SeekEntryResult!7733)

(declare-fun e!423465 () Bool)

(assert (=> b!759636 (= e!423465 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20126 a!3186) j!159) a!3186 mask!3328) lt!338491))))

(declare-fun b!759637 () Bool)

(declare-fun res!514243 () Bool)

(assert (=> b!759637 (=> (not res!514243) (not e!423467))))

(assert (=> b!759637 (= res!514243 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20126 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!759638 () Bool)

(declare-fun e!423464 () Bool)

(assert (=> b!759638 (= e!423464 e!423465)))

(declare-fun res!514237 () Bool)

(assert (=> b!759638 (=> (not res!514237) (not e!423465))))

(assert (=> b!759638 (= res!514237 (= (seekEntryOrOpen!0 (select (arr!20126 a!3186) j!159) a!3186 mask!3328) lt!338491))))

(assert (=> b!759638 (= lt!338491 (Found!7733 j!159))))

(declare-fun b!759639 () Bool)

(declare-fun res!514234 () Bool)

(assert (=> b!759639 (=> (not res!514234) (not e!423471))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42032 (_ BitVec 32)) Bool)

(assert (=> b!759639 (= res!514234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!759640 () Bool)

(declare-fun res!514231 () Bool)

(assert (=> b!759640 (=> (not res!514231) (not e!423469))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!759640 (= res!514231 (validKeyInArray!0 k!2102))))

(declare-fun b!759641 () Bool)

(assert (=> b!759641 (= e!423468 (not (or (not (is-Intermediate!7733 lt!338492)) (bvslt x!1131 (x!64204 lt!338492)) (= x!1131 (x!64204 lt!338492)))))))

(assert (=> b!759641 e!423464))

(declare-fun res!514245 () Bool)

(assert (=> b!759641 (=> (not res!514245) (not e!423464))))

(assert (=> b!759641 (= res!514245 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26306 0))(
  ( (Unit!26307) )
))
(declare-fun lt!338497 () Unit!26306)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42032 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26306)

(assert (=> b!759641 (= lt!338497 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!759642 () Bool)

(assert (=> b!759642 (= e!423471 e!423467)))

(declare-fun res!514233 () Bool)

(assert (=> b!759642 (=> (not res!514233) (not e!423467))))

(assert (=> b!759642 (= res!514233 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20126 a!3186) j!159) mask!3328) (select (arr!20126 a!3186) j!159) a!3186 mask!3328) lt!338496))))

(assert (=> b!759642 (= lt!338496 (Intermediate!7733 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!759643 () Bool)

(declare-fun res!514236 () Bool)

(assert (=> b!759643 (=> (not res!514236) (not e!423469))))

(assert (=> b!759643 (= res!514236 (and (= (size!20547 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20547 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20547 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!759644 () Bool)

(declare-fun res!514232 () Bool)

(assert (=> b!759644 (=> (not res!514232) (not e!423469))))

(assert (=> b!759644 (= res!514232 (validKeyInArray!0 (select (arr!20126 a!3186) j!159)))))

(assert (= (and start!65906 res!514241) b!759643))

(assert (= (and b!759643 res!514236) b!759644))

(assert (= (and b!759644 res!514232) b!759640))

(assert (= (and b!759640 res!514231) b!759630))

(assert (= (and b!759630 res!514238) b!759631))

(assert (= (and b!759631 res!514244) b!759639))

(assert (= (and b!759639 res!514234) b!759635))

(assert (= (and b!759635 res!514239) b!759633))

(assert (= (and b!759633 res!514242) b!759642))

(assert (= (and b!759642 res!514233) b!759637))

(assert (= (and b!759637 res!514243) b!759628))

(assert (= (and b!759628 c!83079) b!759634))

(assert (= (and b!759628 (not c!83079)) b!759632))

(assert (= (and b!759628 res!514240) b!759629))

(assert (= (and b!759629 res!514235) b!759641))

(assert (= (and b!759641 res!514245) b!759638))

(assert (= (and b!759638 res!514237) b!759636))

(declare-fun m!707055 () Bool)

(assert (=> b!759640 m!707055))

(declare-fun m!707057 () Bool)

(assert (=> b!759641 m!707057))

(declare-fun m!707059 () Bool)

(assert (=> b!759641 m!707059))

(declare-fun m!707061 () Bool)

(assert (=> b!759644 m!707061))

(assert (=> b!759644 m!707061))

(declare-fun m!707063 () Bool)

(assert (=> b!759644 m!707063))

(assert (=> b!759634 m!707061))

(assert (=> b!759634 m!707061))

(declare-fun m!707065 () Bool)

(assert (=> b!759634 m!707065))

(declare-fun m!707067 () Bool)

(assert (=> start!65906 m!707067))

(declare-fun m!707069 () Bool)

(assert (=> start!65906 m!707069))

(declare-fun m!707071 () Bool)

(assert (=> b!759639 m!707071))

(declare-fun m!707073 () Bool)

(assert (=> b!759635 m!707073))

(declare-fun m!707075 () Bool)

(assert (=> b!759631 m!707075))

(assert (=> b!759638 m!707061))

(assert (=> b!759638 m!707061))

(declare-fun m!707077 () Bool)

(assert (=> b!759638 m!707077))

(declare-fun m!707079 () Bool)

(assert (=> b!759637 m!707079))

(declare-fun m!707081 () Bool)

(assert (=> b!759629 m!707081))

(declare-fun m!707083 () Bool)

(assert (=> b!759629 m!707083))

(declare-fun m!707085 () Bool)

(assert (=> b!759629 m!707085))

(declare-fun m!707087 () Bool)

(assert (=> b!759629 m!707087))

(assert (=> b!759629 m!707081))

(declare-fun m!707089 () Bool)

(assert (=> b!759629 m!707089))

(assert (=> b!759636 m!707061))

(assert (=> b!759636 m!707061))

(declare-fun m!707091 () Bool)

(assert (=> b!759636 m!707091))

(assert (=> b!759642 m!707061))

(assert (=> b!759642 m!707061))

(declare-fun m!707093 () Bool)

(assert (=> b!759642 m!707093))

(assert (=> b!759642 m!707093))

(assert (=> b!759642 m!707061))

(declare-fun m!707095 () Bool)

(assert (=> b!759642 m!707095))

(declare-fun m!707097 () Bool)

(assert (=> b!759630 m!707097))

(assert (=> b!759632 m!707061))

(assert (=> b!759632 m!707061))

(declare-fun m!707099 () Bool)

(assert (=> b!759632 m!707099))

(push 1)

(assert (not start!65906))

(assert (not b!759639))

(assert (not b!759640))

(assert (not b!759631))

(assert (not b!759634))

(assert (not b!759630))

(assert (not b!759635))

(assert (not b!759641))

(assert (not b!759642))

(assert (not b!759632))

(assert (not b!759636))

(assert (not b!759629))

(assert (not b!759638))

(assert (not b!759644))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!100319 () Bool)

(assert (=> d!100319 (= (validKeyInArray!0 (select (arr!20126 a!3186) j!159)) (and (not (= (select (arr!20126 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20126 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!759644 d!100319))

(declare-fun b!759780 () Bool)

(declare-fun e!423553 () SeekEntryResult!7733)

(declare-fun e!423554 () SeekEntryResult!7733)

(assert (=> b!759780 (= e!423553 e!423554)))

(declare-fun c!83124 () Bool)

(declare-fun lt!338544 () (_ BitVec 64))

(assert (=> b!759780 (= c!83124 (or (= lt!338544 (select (arr!20126 a!3186) j!159)) (= (bvadd lt!338544 lt!338544) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!759781 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!759781 (= e!423554 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20126 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!759782 () Bool)

(assert (=> b!759782 (= e!423554 (Intermediate!7733 false index!1321 x!1131))))

(declare-fun d!100321 () Bool)

(declare-fun e!423555 () Bool)

(assert (=> d!100321 e!423555))

(declare-fun c!83122 () Bool)

(declare-fun lt!338543 () SeekEntryResult!7733)

(assert (=> d!100321 (= c!83122 (and (is-Intermediate!7733 lt!338543) (undefined!8545 lt!338543)))))

(assert (=> d!100321 (= lt!338543 e!423553)))

(declare-fun c!83123 () Bool)

(assert (=> d!100321 (= c!83123 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!100321 (= lt!338544 (select (arr!20126 a!3186) index!1321))))

(assert (=> d!100321 (validMask!0 mask!3328)))

(assert (=> d!100321 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20126 a!3186) j!159) a!3186 mask!3328) lt!338543)))

(declare-fun b!759783 () Bool)

(assert (=> b!759783 (and (bvsge (index!33301 lt!338543) #b00000000000000000000000000000000) (bvslt (index!33301 lt!338543) (size!20547 a!3186)))))

(declare-fun res!514299 () Bool)

(assert (=> b!759783 (= res!514299 (= (select (arr!20126 a!3186) (index!33301 lt!338543)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423556 () Bool)

(assert (=> b!759783 (=> res!514299 e!423556)))

(declare-fun b!759784 () Bool)

(assert (=> b!759784 (and (bvsge (index!33301 lt!338543) #b00000000000000000000000000000000) (bvslt (index!33301 lt!338543) (size!20547 a!3186)))))

(assert (=> b!759784 (= e!423556 (= (select (arr!20126 a!3186) (index!33301 lt!338543)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!759785 () Bool)

(declare-fun e!423557 () Bool)

(assert (=> b!759785 (= e!423555 e!423557)))

(declare-fun res!514301 () Bool)

(assert (=> b!759785 (= res!514301 (and (is-Intermediate!7733 lt!338543) (not (undefined!8545 lt!338543)) (bvslt (x!64204 lt!338543) #b01111111111111111111111111111110) (bvsge (x!64204 lt!338543) #b00000000000000000000000000000000) (bvsge (x!64204 lt!338543) x!1131)))))

(assert (=> b!759785 (=> (not res!514301) (not e!423557))))

(declare-fun b!759786 () Bool)

(assert (=> b!759786 (and (bvsge (index!33301 lt!338543) #b00000000000000000000000000000000) (bvslt (index!33301 lt!338543) (size!20547 a!3186)))))

(declare-fun res!514300 () Bool)

(assert (=> b!759786 (= res!514300 (= (select (arr!20126 a!3186) (index!33301 lt!338543)) (select (arr!20126 a!3186) j!159)))))

(assert (=> b!759786 (=> res!514300 e!423556)))

(assert (=> b!759786 (= e!423557 e!423556)))

(declare-fun b!759787 () Bool)

(assert (=> b!759787 (= e!423555 (bvsge (x!64204 lt!338543) #b01111111111111111111111111111110))))

(declare-fun b!759788 () Bool)

(assert (=> b!759788 (= e!423553 (Intermediate!7733 true index!1321 x!1131))))

(assert (= (and d!100321 c!83123) b!759788))

(assert (= (and d!100321 (not c!83123)) b!759780))

(assert (= (and b!759780 c!83124) b!759782))

(assert (= (and b!759780 (not c!83124)) b!759781))

(assert (= (and d!100321 c!83122) b!759787))

(assert (= (and d!100321 (not c!83122)) b!759785))

(assert (= (and b!759785 res!514301) b!759786))

(assert (= (and b!759786 (not res!514300)) b!759783))

(assert (= (and b!759783 (not res!514299)) b!759784))

(declare-fun m!707163 () Bool)

(assert (=> b!759784 m!707163))

(assert (=> b!759783 m!707163))

(declare-fun m!707165 () Bool)

(assert (=> d!100321 m!707165))

(assert (=> d!100321 m!707067))

(declare-fun m!707167 () Bool)

(assert (=> b!759781 m!707167))

(assert (=> b!759781 m!707167))

(assert (=> b!759781 m!707061))

(declare-fun m!707169 () Bool)

(assert (=> b!759781 m!707169))

(assert (=> b!759786 m!707163))

(assert (=> b!759634 d!100321))

(declare-fun d!100337 () Bool)

(assert (=> d!100337 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!65906 d!100337))

(declare-fun d!100347 () Bool)

(assert (=> d!100347 (= (array_inv!15900 a!3186) (bvsge (size!20547 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!65906 d!100347))

(declare-fun b!759833 () Bool)

(declare-fun e!423588 () Bool)

(declare-fun contains!4064 (List!14181 (_ BitVec 64)) Bool)

(assert (=> b!759833 (= e!423588 (contains!4064 Nil!14178 (select (arr!20126 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34918 () Bool)

(declare-fun call!34921 () Bool)

(declare-fun c!83140 () Bool)

(assert (=> bm!34918 (= call!34921 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!83140 (Cons!14177 (select (arr!20126 a!3186) #b00000000000000000000000000000000) Nil!14178) Nil!14178)))))

(declare-fun b!759834 () Bool)

(declare-fun e!423587 () Bool)

(declare-fun e!423590 () Bool)

(assert (=> b!759834 (= e!423587 e!423590)))

(assert (=> b!759834 (= c!83140 (validKeyInArray!0 (select (arr!20126 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!759835 () Bool)

(assert (=> b!759835 (= e!423590 call!34921)))

(declare-fun b!759836 () Bool)

(declare-fun e!423589 () Bool)

(assert (=> b!759836 (= e!423589 e!423587)))

(declare-fun res!514318 () Bool)

(assert (=> b!759836 (=> (not res!514318) (not e!423587))))

(assert (=> b!759836 (= res!514318 (not e!423588))))

(declare-fun res!514316 () Bool)

(assert (=> b!759836 (=> (not res!514316) (not e!423588))))

(assert (=> b!759836 (= res!514316 (validKeyInArray!0 (select (arr!20126 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!759837 () Bool)

(assert (=> b!759837 (= e!423590 call!34921)))

(declare-fun d!100349 () Bool)

(declare-fun res!514317 () Bool)

(assert (=> d!100349 (=> res!514317 e!423589)))

(assert (=> d!100349 (= res!514317 (bvsge #b00000000000000000000000000000000 (size!20547 a!3186)))))

(assert (=> d!100349 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14178) e!423589)))

(assert (= (and d!100349 (not res!514317)) b!759836))

(assert (= (and b!759836 res!514316) b!759833))

(assert (= (and b!759836 res!514318) b!759834))

(assert (= (and b!759834 c!83140) b!759835))

(assert (= (and b!759834 (not c!83140)) b!759837))

(assert (= (or b!759835 b!759837) bm!34918))

(declare-fun m!707195 () Bool)

(assert (=> b!759833 m!707195))

(assert (=> b!759833 m!707195))

(declare-fun m!707197 () Bool)

(assert (=> b!759833 m!707197))

(assert (=> bm!34918 m!707195))

(declare-fun m!707199 () Bool)

(assert (=> bm!34918 m!707199))

(assert (=> b!759834 m!707195))

(assert (=> b!759834 m!707195))

(declare-fun m!707201 () Bool)

(assert (=> b!759834 m!707201))

(assert (=> b!759836 m!707195))

(assert (=> b!759836 m!707195))

(assert (=> b!759836 m!707201))

(assert (=> b!759635 d!100349))

(declare-fun b!759864 () Bool)

(declare-fun e!423608 () Bool)

(declare-fun e!423606 () Bool)

(assert (=> b!759864 (= e!423608 e!423606)))

(declare-fun lt!338579 () (_ BitVec 64))

(assert (=> b!759864 (= lt!338579 (select (arr!20126 a!3186) j!159))))

(declare-fun lt!338577 () Unit!26306)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42032 (_ BitVec 64) (_ BitVec 32)) Unit!26306)

(assert (=> b!759864 (= lt!338577 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!338579 j!159))))

(assert (=> b!759864 (arrayContainsKey!0 a!3186 lt!338579 #b00000000000000000000000000000000)))

(declare-fun lt!338578 () Unit!26306)

(assert (=> b!759864 (= lt!338578 lt!338577)))

(declare-fun res!514324 () Bool)

(assert (=> b!759864 (= res!514324 (= (seekEntryOrOpen!0 (select (arr!20126 a!3186) j!159) a!3186 mask!3328) (Found!7733 j!159)))))

(assert (=> b!759864 (=> (not res!514324) (not e!423606))))

(declare-fun b!759865 () Bool)

(declare-fun e!423607 () Bool)

(assert (=> b!759865 (= e!423607 e!423608)))

(declare-fun c!83152 () Bool)

(assert (=> b!759865 (= c!83152 (validKeyInArray!0 (select (arr!20126 a!3186) j!159)))))

(declare-fun b!759866 () Bool)

(declare-fun call!34924 () Bool)

(assert (=> b!759866 (= e!423608 call!34924)))

(declare-fun d!100357 () Bool)

(declare-fun res!514323 () Bool)

(assert (=> d!100357 (=> res!514323 e!423607)))

(assert (=> d!100357 (= res!514323 (bvsge j!159 (size!20547 a!3186)))))

(assert (=> d!100357 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!423607)))

(declare-fun bm!34921 () Bool)

(assert (=> bm!34921 (= call!34924 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!759867 () Bool)

(assert (=> b!759867 (= e!423606 call!34924)))

(assert (= (and d!100357 (not res!514323)) b!759865))

(assert (= (and b!759865 c!83152) b!759864))

(assert (= (and b!759865 (not c!83152)) b!759866))

(assert (= (and b!759864 res!514324) b!759867))

(assert (= (or b!759867 b!759866) bm!34921))

(assert (=> b!759864 m!707061))

(declare-fun m!707217 () Bool)

(assert (=> b!759864 m!707217))

(declare-fun m!707219 () Bool)

(assert (=> b!759864 m!707219))

(assert (=> b!759864 m!707061))

(assert (=> b!759864 m!707077))

(assert (=> b!759865 m!707061))

(assert (=> b!759865 m!707061))

(assert (=> b!759865 m!707063))

(declare-fun m!707221 () Bool)

(assert (=> bm!34921 m!707221))

(assert (=> b!759641 d!100357))

(declare-fun d!100367 () Bool)

(assert (=> d!100367 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!338588 () Unit!26306)

(declare-fun choose!38 (array!42032 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26306)

(assert (=> d!100367 (= lt!338588 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!100367 (validMask!0 mask!3328)))

(assert (=> d!100367 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!338588)))

(declare-fun bs!21375 () Bool)

(assert (= bs!21375 d!100367))

(assert (=> bs!21375 m!707057))

(declare-fun m!707223 () Bool)

(assert (=> bs!21375 m!707223))

(assert (=> bs!21375 m!707067))

(assert (=> b!759641 d!100367))

(declare-fun b!759944 () Bool)

(declare-fun lt!338617 () SeekEntryResult!7733)

(declare-fun e!423654 () SeekEntryResult!7733)

(assert (=> b!759944 (= e!423654 (seekKeyOrZeroReturnVacant!0 (x!64204 lt!338617) (index!33301 lt!338617) (index!33301 lt!338617) k!2102 a!3186 mask!3328))))

(declare-fun b!759945 () Bool)

(declare-fun c!83182 () Bool)

(declare-fun lt!338616 () (_ BitVec 64))

(assert (=> b!759945 (= c!83182 (= lt!338616 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423656 () SeekEntryResult!7733)

(assert (=> b!759945 (= e!423656 e!423654)))

(declare-fun b!759947 () Bool)

(assert (=> b!759947 (= e!423656 (Found!7733 (index!33301 lt!338617)))))

(declare-fun b!759948 () Bool)

(declare-fun e!423655 () SeekEntryResult!7733)

(assert (=> b!759948 (= e!423655 e!423656)))

(assert (=> b!759948 (= lt!338616 (select (arr!20126 a!3186) (index!33301 lt!338617)))))

(declare-fun c!83183 () Bool)

(assert (=> b!759948 (= c!83183 (= lt!338616 k!2102))))

(declare-fun b!759949 () Bool)

(assert (=> b!759949 (= e!423655 Undefined!7733)))

(declare-fun d!100369 () Bool)

(declare-fun lt!338618 () SeekEntryResult!7733)

(assert (=> d!100369 (and (or (is-Undefined!7733 lt!338618) (not (is-Found!7733 lt!338618)) (and (bvsge (index!33300 lt!338618) #b00000000000000000000000000000000) (bvslt (index!33300 lt!338618) (size!20547 a!3186)))) (or (is-Undefined!7733 lt!338618) (is-Found!7733 lt!338618) (not (is-MissingZero!7733 lt!338618)) (and (bvsge (index!33299 lt!338618) #b00000000000000000000000000000000) (bvslt (index!33299 lt!338618) (size!20547 a!3186)))) (or (is-Undefined!7733 lt!338618) (is-Found!7733 lt!338618) (is-MissingZero!7733 lt!338618) (not (is-MissingVacant!7733 lt!338618)) (and (bvsge (index!33302 lt!338618) #b00000000000000000000000000000000) (bvslt (index!33302 lt!338618) (size!20547 a!3186)))) (or (is-Undefined!7733 lt!338618) (ite (is-Found!7733 lt!338618) (= (select (arr!20126 a!3186) (index!33300 lt!338618)) k!2102) (ite (is-MissingZero!7733 lt!338618) (= (select (arr!20126 a!3186) (index!33299 lt!338618)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7733 lt!338618) (= (select (arr!20126 a!3186) (index!33302 lt!338618)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!100369 (= lt!338618 e!423655)))

(declare-fun c!83184 () Bool)

(assert (=> d!100369 (= c!83184 (and (is-Intermediate!7733 lt!338617) (undefined!8545 lt!338617)))))

(assert (=> d!100369 (= lt!338617 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!100369 (validMask!0 mask!3328)))

(assert (=> d!100369 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!338618)))

(declare-fun b!759946 () Bool)

(assert (=> b!759946 (= e!423654 (MissingZero!7733 (index!33301 lt!338617)))))

(assert (= (and d!100369 c!83184) b!759949))

(assert (= (and d!100369 (not c!83184)) b!759948))

(assert (= (and b!759948 c!83183) b!759947))

(assert (= (and b!759948 (not c!83183)) b!759945))

(assert (= (and b!759945 c!83182) b!759946))

(assert (= (and b!759945 (not c!83182)) b!759944))

(declare-fun m!707275 () Bool)

(assert (=> b!759944 m!707275))

(declare-fun m!707277 () Bool)

(assert (=> b!759948 m!707277))

(declare-fun m!707279 () Bool)

(assert (=> d!100369 m!707279))

(assert (=> d!100369 m!707067))

(declare-fun m!707281 () Bool)

(assert (=> d!100369 m!707281))

(declare-fun m!707283 () Bool)

(assert (=> d!100369 m!707283))

(declare-fun m!707285 () Bool)

(assert (=> d!100369 m!707285))

(assert (=> d!100369 m!707285))

(declare-fun m!707287 () Bool)

(assert (=> d!100369 m!707287))

(assert (=> b!759631 d!100369))

(declare-fun b!759950 () Bool)

(declare-fun e!423657 () SeekEntryResult!7733)

(declare-fun e!423658 () SeekEntryResult!7733)

(assert (=> b!759950 (= e!423657 e!423658)))

(declare-fun c!83187 () Bool)

(declare-fun lt!338620 () (_ BitVec 64))

(assert (=> b!759950 (= c!83187 (or (= lt!338620 (select (arr!20126 a!3186) j!159)) (= (bvadd lt!338620 lt!338620) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!759951 () Bool)

(assert (=> b!759951 (= e!423658 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20126 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20126 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!759952 () Bool)

(assert (=> b!759952 (= e!423658 (Intermediate!7733 false (toIndex!0 (select (arr!20126 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!100387 () Bool)

(declare-fun e!423659 () Bool)

(assert (=> d!100387 e!423659))

(declare-fun c!83185 () Bool)

(declare-fun lt!338619 () SeekEntryResult!7733)

(assert (=> d!100387 (= c!83185 (and (is-Intermediate!7733 lt!338619) (undefined!8545 lt!338619)))))

(assert (=> d!100387 (= lt!338619 e!423657)))

(declare-fun c!83186 () Bool)

(assert (=> d!100387 (= c!83186 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!100387 (= lt!338620 (select (arr!20126 a!3186) (toIndex!0 (select (arr!20126 a!3186) j!159) mask!3328)))))

(assert (=> d!100387 (validMask!0 mask!3328)))

(assert (=> d!100387 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20126 a!3186) j!159) mask!3328) (select (arr!20126 a!3186) j!159) a!3186 mask!3328) lt!338619)))

(declare-fun b!759953 () Bool)

(assert (=> b!759953 (and (bvsge (index!33301 lt!338619) #b00000000000000000000000000000000) (bvslt (index!33301 lt!338619) (size!20547 a!3186)))))

(declare-fun res!514343 () Bool)

(assert (=> b!759953 (= res!514343 (= (select (arr!20126 a!3186) (index!33301 lt!338619)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423660 () Bool)

(assert (=> b!759953 (=> res!514343 e!423660)))

(declare-fun b!759954 () Bool)

(assert (=> b!759954 (and (bvsge (index!33301 lt!338619) #b00000000000000000000000000000000) (bvslt (index!33301 lt!338619) (size!20547 a!3186)))))

(assert (=> b!759954 (= e!423660 (= (select (arr!20126 a!3186) (index!33301 lt!338619)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!759955 () Bool)

(declare-fun e!423661 () Bool)

(assert (=> b!759955 (= e!423659 e!423661)))

(declare-fun res!514345 () Bool)

(assert (=> b!759955 (= res!514345 (and (is-Intermediate!7733 lt!338619) (not (undefined!8545 lt!338619)) (bvslt (x!64204 lt!338619) #b01111111111111111111111111111110) (bvsge (x!64204 lt!338619) #b00000000000000000000000000000000) (bvsge (x!64204 lt!338619) #b00000000000000000000000000000000)))))

(assert (=> b!759955 (=> (not res!514345) (not e!423661))))

(declare-fun b!759956 () Bool)

(assert (=> b!759956 (and (bvsge (index!33301 lt!338619) #b00000000000000000000000000000000) (bvslt (index!33301 lt!338619) (size!20547 a!3186)))))

(declare-fun res!514344 () Bool)

(assert (=> b!759956 (= res!514344 (= (select (arr!20126 a!3186) (index!33301 lt!338619)) (select (arr!20126 a!3186) j!159)))))

(assert (=> b!759956 (=> res!514344 e!423660)))

(assert (=> b!759956 (= e!423661 e!423660)))

(declare-fun b!759957 () Bool)

(assert (=> b!759957 (= e!423659 (bvsge (x!64204 lt!338619) #b01111111111111111111111111111110))))

(declare-fun b!759958 () Bool)

(assert (=> b!759958 (= e!423657 (Intermediate!7733 true (toIndex!0 (select (arr!20126 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!100387 c!83186) b!759958))

(assert (= (and d!100387 (not c!83186)) b!759950))

(assert (= (and b!759950 c!83187) b!759952))

(assert (= (and b!759950 (not c!83187)) b!759951))

(assert (= (and d!100387 c!83185) b!759957))

(assert (= (and d!100387 (not c!83185)) b!759955))

(assert (= (and b!759955 res!514345) b!759956))

(assert (= (and b!759956 (not res!514344)) b!759953))

(assert (= (and b!759953 (not res!514343)) b!759954))

(declare-fun m!707291 () Bool)

(assert (=> b!759954 m!707291))

(assert (=> b!759953 m!707291))

(assert (=> d!100387 m!707093))

(declare-fun m!707293 () Bool)

(assert (=> d!100387 m!707293))

(assert (=> d!100387 m!707067))

(assert (=> b!759951 m!707093))

(declare-fun m!707297 () Bool)

(assert (=> b!759951 m!707297))

(assert (=> b!759951 m!707297))

(assert (=> b!759951 m!707061))

(declare-fun m!707299 () Bool)

(assert (=> b!759951 m!707299))

(assert (=> b!759956 m!707291))

(assert (=> b!759642 d!100387))

(declare-fun d!100391 () Bool)

(declare-fun lt!338632 () (_ BitVec 32))

(declare-fun lt!338631 () (_ BitVec 32))

(assert (=> d!100391 (= lt!338632 (bvmul (bvxor lt!338631 (bvlshr lt!338631 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100391 (= lt!338631 ((_ extract 31 0) (bvand (bvxor (select (arr!20126 a!3186) j!159) (bvlshr (select (arr!20126 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100391 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!514351 (let ((h!15252 ((_ extract 31 0) (bvand (bvxor (select (arr!20126 a!3186) j!159) (bvlshr (select (arr!20126 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64211 (bvmul (bvxor h!15252 (bvlshr h!15252 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64211 (bvlshr x!64211 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!514351 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!514351 #b00000000000000000000000000000000))))))

(assert (=> d!100391 (= (toIndex!0 (select (arr!20126 a!3186) j!159) mask!3328) (bvand (bvxor lt!338632 (bvlshr lt!338632 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!759642 d!100391))

(declare-fun e!423686 () SeekEntryResult!7733)

(declare-fun b!759998 () Bool)

(assert (=> b!759998 (= e!423686 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20126 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!759999 () Bool)

(assert (=> b!759999 (= e!423686 (MissingVacant!7733 resIntermediateIndex!5))))

(declare-fun b!760000 () Bool)

(declare-fun e!423685 () SeekEntryResult!7733)

(declare-fun e!423684 () SeekEntryResult!7733)

(assert (=> b!760000 (= e!423685 e!423684)))

(declare-fun c!83207 () Bool)

(declare-fun lt!338645 () (_ BitVec 64))

(assert (=> b!760000 (= c!83207 (= lt!338645 (select (arr!20126 a!3186) j!159)))))

(declare-fun lt!338644 () SeekEntryResult!7733)

(declare-fun d!100397 () Bool)

(assert (=> d!100397 (and (or (is-Undefined!7733 lt!338644) (not (is-Found!7733 lt!338644)) (and (bvsge (index!33300 lt!338644) #b00000000000000000000000000000000) (bvslt (index!33300 lt!338644) (size!20547 a!3186)))) (or (is-Undefined!7733 lt!338644) (is-Found!7733 lt!338644) (not (is-MissingVacant!7733 lt!338644)) (not (= (index!33302 lt!338644) resIntermediateIndex!5)) (and (bvsge (index!33302 lt!338644) #b00000000000000000000000000000000) (bvslt (index!33302 lt!338644) (size!20547 a!3186)))) (or (is-Undefined!7733 lt!338644) (ite (is-Found!7733 lt!338644) (= (select (arr!20126 a!3186) (index!33300 lt!338644)) (select (arr!20126 a!3186) j!159)) (and (is-MissingVacant!7733 lt!338644) (= (index!33302 lt!338644) resIntermediateIndex!5) (= (select (arr!20126 a!3186) (index!33302 lt!338644)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!100397 (= lt!338644 e!423685)))

(declare-fun c!83206 () Bool)

(assert (=> d!100397 (= c!83206 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!100397 (= lt!338645 (select (arr!20126 a!3186) index!1321))))

(assert (=> d!100397 (validMask!0 mask!3328)))

(assert (=> d!100397 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20126 a!3186) j!159) a!3186 mask!3328) lt!338644)))

(declare-fun b!760001 () Bool)

(assert (=> b!760001 (= e!423684 (Found!7733 index!1321))))

(declare-fun b!760002 () Bool)

(declare-fun c!83205 () Bool)

(assert (=> b!760002 (= c!83205 (= lt!338645 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!760002 (= e!423684 e!423686)))

(declare-fun b!760003 () Bool)

(assert (=> b!760003 (= e!423685 Undefined!7733)))

(assert (= (and d!100397 c!83206) b!760003))

(assert (= (and d!100397 (not c!83206)) b!760000))

(assert (= (and b!760000 c!83207) b!760001))

(assert (= (and b!760000 (not c!83207)) b!760002))

(assert (= (and b!760002 c!83205) b!759999))

(assert (= (and b!760002 (not c!83205)) b!759998))

(assert (=> b!759998 m!707167))

(assert (=> b!759998 m!707167))

(assert (=> b!759998 m!707061))

(declare-fun m!707319 () Bool)

(assert (=> b!759998 m!707319))

(declare-fun m!707321 () Bool)

(assert (=> d!100397 m!707321))

(declare-fun m!707323 () Bool)

(assert (=> d!100397 m!707323))

(assert (=> d!100397 m!707165))

(assert (=> d!100397 m!707067))

(assert (=> b!759632 d!100397))

(declare-fun b!760004 () Bool)

(declare-fun e!423689 () Bool)

(declare-fun e!423687 () Bool)

(assert (=> b!760004 (= e!423689 e!423687)))

(declare-fun lt!338648 () (_ BitVec 64))

(assert (=> b!760004 (= lt!338648 (select (arr!20126 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!338646 () Unit!26306)

(assert (=> b!760004 (= lt!338646 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!338648 #b00000000000000000000000000000000))))

(assert (=> b!760004 (arrayContainsKey!0 a!3186 lt!338648 #b00000000000000000000000000000000)))

(declare-fun lt!338647 () Unit!26306)

(assert (=> b!760004 (= lt!338647 lt!338646)))

(declare-fun res!514353 () Bool)

(assert (=> b!760004 (= res!514353 (= (seekEntryOrOpen!0 (select (arr!20126 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7733 #b00000000000000000000000000000000)))))

(assert (=> b!760004 (=> (not res!514353) (not e!423687))))

(declare-fun b!760005 () Bool)

(declare-fun e!423688 () Bool)

(assert (=> b!760005 (= e!423688 e!423689)))

(declare-fun c!83208 () Bool)

(assert (=> b!760005 (= c!83208 (validKeyInArray!0 (select (arr!20126 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!760006 () Bool)

(declare-fun call!34932 () Bool)

(assert (=> b!760006 (= e!423689 call!34932)))

(declare-fun d!100401 () Bool)

(declare-fun res!514352 () Bool)

(assert (=> d!100401 (=> res!514352 e!423688)))

(assert (=> d!100401 (= res!514352 (bvsge #b00000000000000000000000000000000 (size!20547 a!3186)))))

(assert (=> d!100401 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!423688)))

(declare-fun bm!34929 () Bool)

(assert (=> bm!34929 (= call!34932 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!760007 () Bool)

(assert (=> b!760007 (= e!423687 call!34932)))

(assert (= (and d!100401 (not res!514352)) b!760005))

(assert (= (and b!760005 c!83208) b!760004))

(assert (= (and b!760005 (not c!83208)) b!760006))

(assert (= (and b!760004 res!514353) b!760007))

(assert (= (or b!760007 b!760006) bm!34929))

(assert (=> b!760004 m!707195))

(declare-fun m!707325 () Bool)

(assert (=> b!760004 m!707325))

(declare-fun m!707327 () Bool)

(assert (=> b!760004 m!707327))

(assert (=> b!760004 m!707195))

(declare-fun m!707329 () Bool)

(assert (=> b!760004 m!707329))

(assert (=> b!760005 m!707195))

(assert (=> b!760005 m!707195))

(assert (=> b!760005 m!707201))

(declare-fun m!707331 () Bool)

(assert (=> bm!34929 m!707331))

(assert (=> b!759639 d!100401))

(declare-fun b!760014 () Bool)

(declare-fun e!423693 () SeekEntryResult!7733)

(declare-fun e!423694 () SeekEntryResult!7733)

(assert (=> b!760014 (= e!423693 e!423694)))

(declare-fun c!83214 () Bool)

(declare-fun lt!338652 () (_ BitVec 64))

(assert (=> b!760014 (= c!83214 (or (= lt!338652 lt!338494) (= (bvadd lt!338652 lt!338652) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760015 () Bool)

(assert (=> b!760015 (= e!423694 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!338494 lt!338493 mask!3328))))

(declare-fun b!760016 () Bool)

(assert (=> b!760016 (= e!423694 (Intermediate!7733 false index!1321 x!1131))))

(declare-fun d!100403 () Bool)

(declare-fun e!423695 () Bool)

(assert (=> d!100403 e!423695))

(declare-fun c!83212 () Bool)

(declare-fun lt!338651 () SeekEntryResult!7733)

(assert (=> d!100403 (= c!83212 (and (is-Intermediate!7733 lt!338651) (undefined!8545 lt!338651)))))

(assert (=> d!100403 (= lt!338651 e!423693)))

(declare-fun c!83213 () Bool)

(assert (=> d!100403 (= c!83213 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!100403 (= lt!338652 (select (arr!20126 lt!338493) index!1321))))

(assert (=> d!100403 (validMask!0 mask!3328)))

(assert (=> d!100403 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338494 lt!338493 mask!3328) lt!338651)))

(declare-fun b!760017 () Bool)

(assert (=> b!760017 (and (bvsge (index!33301 lt!338651) #b00000000000000000000000000000000) (bvslt (index!33301 lt!338651) (size!20547 lt!338493)))))

(declare-fun res!514354 () Bool)

(assert (=> b!760017 (= res!514354 (= (select (arr!20126 lt!338493) (index!33301 lt!338651)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423696 () Bool)

(assert (=> b!760017 (=> res!514354 e!423696)))

(declare-fun b!760018 () Bool)

(assert (=> b!760018 (and (bvsge (index!33301 lt!338651) #b00000000000000000000000000000000) (bvslt (index!33301 lt!338651) (size!20547 lt!338493)))))

(assert (=> b!760018 (= e!423696 (= (select (arr!20126 lt!338493) (index!33301 lt!338651)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!760019 () Bool)

(declare-fun e!423697 () Bool)

(assert (=> b!760019 (= e!423695 e!423697)))

(declare-fun res!514356 () Bool)

(assert (=> b!760019 (= res!514356 (and (is-Intermediate!7733 lt!338651) (not (undefined!8545 lt!338651)) (bvslt (x!64204 lt!338651) #b01111111111111111111111111111110) (bvsge (x!64204 lt!338651) #b00000000000000000000000000000000) (bvsge (x!64204 lt!338651) x!1131)))))

(assert (=> b!760019 (=> (not res!514356) (not e!423697))))

(declare-fun b!760020 () Bool)

(assert (=> b!760020 (and (bvsge (index!33301 lt!338651) #b00000000000000000000000000000000) (bvslt (index!33301 lt!338651) (size!20547 lt!338493)))))

(declare-fun res!514355 () Bool)

(assert (=> b!760020 (= res!514355 (= (select (arr!20126 lt!338493) (index!33301 lt!338651)) lt!338494))))

(assert (=> b!760020 (=> res!514355 e!423696)))

(assert (=> b!760020 (= e!423697 e!423696)))

(declare-fun b!760021 () Bool)

(assert (=> b!760021 (= e!423695 (bvsge (x!64204 lt!338651) #b01111111111111111111111111111110))))

(declare-fun b!760022 () Bool)

(assert (=> b!760022 (= e!423693 (Intermediate!7733 true index!1321 x!1131))))

(assert (= (and d!100403 c!83213) b!760022))

(assert (= (and d!100403 (not c!83213)) b!760014))

(assert (= (and b!760014 c!83214) b!760016))

(assert (= (and b!760014 (not c!83214)) b!760015))

(assert (= (and d!100403 c!83212) b!760021))

(assert (= (and d!100403 (not c!83212)) b!760019))

(assert (= (and b!760019 res!514356) b!760020))

(assert (= (and b!760020 (not res!514355)) b!760017))

(assert (= (and b!760017 (not res!514354)) b!760018))

(declare-fun m!707341 () Bool)

(assert (=> b!760018 m!707341))

(assert (=> b!760017 m!707341))

(declare-fun m!707343 () Bool)

(assert (=> d!100403 m!707343))

(assert (=> d!100403 m!707067))

(assert (=> b!760015 m!707167))

(assert (=> b!760015 m!707167))

(declare-fun m!707345 () Bool)

(assert (=> b!760015 m!707345))

(assert (=> b!760020 m!707341))

(assert (=> b!759629 d!100403))

(declare-fun b!760023 () Bool)

(declare-fun e!423698 () SeekEntryResult!7733)

(declare-fun e!423699 () SeekEntryResult!7733)

(assert (=> b!760023 (= e!423698 e!423699)))

(declare-fun c!83217 () Bool)

(declare-fun lt!338654 () (_ BitVec 64))

(assert (=> b!760023 (= c!83217 (or (= lt!338654 lt!338494) (= (bvadd lt!338654 lt!338654) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760024 () Bool)

(assert (=> b!760024 (= e!423699 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!338494 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!338494 lt!338493 mask!3328))))

(declare-fun b!760025 () Bool)

(assert (=> b!760025 (= e!423699 (Intermediate!7733 false (toIndex!0 lt!338494 mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!100407 () Bool)

(declare-fun e!423700 () Bool)

(assert (=> d!100407 e!423700))

(declare-fun c!83215 () Bool)

(declare-fun lt!338653 () SeekEntryResult!7733)

(assert (=> d!100407 (= c!83215 (and (is-Intermediate!7733 lt!338653) (undefined!8545 lt!338653)))))

(assert (=> d!100407 (= lt!338653 e!423698)))

(declare-fun c!83216 () Bool)

(assert (=> d!100407 (= c!83216 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!100407 (= lt!338654 (select (arr!20126 lt!338493) (toIndex!0 lt!338494 mask!3328)))))

(assert (=> d!100407 (validMask!0 mask!3328)))

(assert (=> d!100407 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338494 mask!3328) lt!338494 lt!338493 mask!3328) lt!338653)))

(declare-fun b!760026 () Bool)

(assert (=> b!760026 (and (bvsge (index!33301 lt!338653) #b00000000000000000000000000000000) (bvslt (index!33301 lt!338653) (size!20547 lt!338493)))))

(declare-fun res!514357 () Bool)

(assert (=> b!760026 (= res!514357 (= (select (arr!20126 lt!338493) (index!33301 lt!338653)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423701 () Bool)

(assert (=> b!760026 (=> res!514357 e!423701)))

(declare-fun b!760027 () Bool)

(assert (=> b!760027 (and (bvsge (index!33301 lt!338653) #b00000000000000000000000000000000) (bvslt (index!33301 lt!338653) (size!20547 lt!338493)))))

(assert (=> b!760027 (= e!423701 (= (select (arr!20126 lt!338493) (index!33301 lt!338653)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!760028 () Bool)

(declare-fun e!423702 () Bool)

(assert (=> b!760028 (= e!423700 e!423702)))

(declare-fun res!514359 () Bool)

(assert (=> b!760028 (= res!514359 (and (is-Intermediate!7733 lt!338653) (not (undefined!8545 lt!338653)) (bvslt (x!64204 lt!338653) #b01111111111111111111111111111110) (bvsge (x!64204 lt!338653) #b00000000000000000000000000000000) (bvsge (x!64204 lt!338653) #b00000000000000000000000000000000)))))

(assert (=> b!760028 (=> (not res!514359) (not e!423702))))

(declare-fun b!760029 () Bool)

(assert (=> b!760029 (and (bvsge (index!33301 lt!338653) #b00000000000000000000000000000000) (bvslt (index!33301 lt!338653) (size!20547 lt!338493)))))

(declare-fun res!514358 () Bool)

(assert (=> b!760029 (= res!514358 (= (select (arr!20126 lt!338493) (index!33301 lt!338653)) lt!338494))))

(assert (=> b!760029 (=> res!514358 e!423701)))

(assert (=> b!760029 (= e!423702 e!423701)))

(declare-fun b!760030 () Bool)

(assert (=> b!760030 (= e!423700 (bvsge (x!64204 lt!338653) #b01111111111111111111111111111110))))

(declare-fun b!760031 () Bool)

(assert (=> b!760031 (= e!423698 (Intermediate!7733 true (toIndex!0 lt!338494 mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!100407 c!83216) b!760031))

(assert (= (and d!100407 (not c!83216)) b!760023))

(assert (= (and b!760023 c!83217) b!760025))

(assert (= (and b!760023 (not c!83217)) b!760024))

(assert (= (and d!100407 c!83215) b!760030))

(assert (= (and d!100407 (not c!83215)) b!760028))

(assert (= (and b!760028 res!514359) b!760029))

(assert (= (and b!760029 (not res!514358)) b!760026))

(assert (= (and b!760026 (not res!514357)) b!760027))

(declare-fun m!707347 () Bool)

(assert (=> b!760027 m!707347))

(assert (=> b!760026 m!707347))

(assert (=> d!100407 m!707081))

(declare-fun m!707349 () Bool)

(assert (=> d!100407 m!707349))

(assert (=> d!100407 m!707067))

(assert (=> b!760024 m!707081))

(declare-fun m!707351 () Bool)

(assert (=> b!760024 m!707351))

(assert (=> b!760024 m!707351))

(declare-fun m!707353 () Bool)

(assert (=> b!760024 m!707353))

(assert (=> b!760029 m!707347))

(assert (=> b!759629 d!100407))

(declare-fun d!100409 () Bool)

(declare-fun lt!338656 () (_ BitVec 32))

(declare-fun lt!338655 () (_ BitVec 32))

(assert (=> d!100409 (= lt!338656 (bvmul (bvxor lt!338655 (bvlshr lt!338655 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100409 (= lt!338655 ((_ extract 31 0) (bvand (bvxor lt!338494 (bvlshr lt!338494 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100409 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!514351 (let ((h!15252 ((_ extract 31 0) (bvand (bvxor lt!338494 (bvlshr lt!338494 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64211 (bvmul (bvxor h!15252 (bvlshr h!15252 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64211 (bvlshr x!64211 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!514351 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!514351 #b00000000000000000000000000000000))))))

(assert (=> d!100409 (= (toIndex!0 lt!338494 mask!3328) (bvand (bvxor lt!338656 (bvlshr lt!338656 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!759629 d!100409))

(declare-fun d!100411 () Bool)

(assert (=> d!100411 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!759640 d!100411))

(declare-fun d!100413 () Bool)

(declare-fun res!514370 () Bool)

(declare-fun e!423716 () Bool)

(assert (=> d!100413 (=> res!514370 e!423716)))

(assert (=> d!100413 (= res!514370 (= (select (arr!20126 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!100413 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!423716)))

(declare-fun b!760048 () Bool)

(declare-fun e!423717 () Bool)

(assert (=> b!760048 (= e!423716 e!423717)))

(declare-fun res!514371 () Bool)

(assert (=> b!760048 (=> (not res!514371) (not e!423717))))

(assert (=> b!760048 (= res!514371 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20547 a!3186)))))

(declare-fun b!760049 () Bool)

(assert (=> b!760049 (= e!423717 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!100413 (not res!514370)) b!760048))

(assert (= (and b!760048 res!514371) b!760049))

(assert (=> d!100413 m!707195))

(declare-fun m!707363 () Bool)

(assert (=> b!760049 m!707363))

(assert (=> b!759630 d!100413))

(declare-fun b!760050 () Bool)

(declare-fun e!423720 () SeekEntryResult!7733)

(assert (=> b!760050 (= e!423720 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20126 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!760051 () Bool)

(assert (=> b!760051 (= e!423720 (MissingVacant!7733 resIntermediateIndex!5))))

(declare-fun b!760052 () Bool)

(declare-fun e!423719 () SeekEntryResult!7733)

(declare-fun e!423718 () SeekEntryResult!7733)

(assert (=> b!760052 (= e!423719 e!423718)))

(declare-fun c!83223 () Bool)

(declare-fun lt!338660 () (_ BitVec 64))

(assert (=> b!760052 (= c!83223 (= lt!338660 (select (arr!20126 a!3186) j!159)))))

(declare-fun lt!338659 () SeekEntryResult!7733)

(declare-fun d!100417 () Bool)

(assert (=> d!100417 (and (or (is-Undefined!7733 lt!338659) (not (is-Found!7733 lt!338659)) (and (bvsge (index!33300 lt!338659) #b00000000000000000000000000000000) (bvslt (index!33300 lt!338659) (size!20547 a!3186)))) (or (is-Undefined!7733 lt!338659) (is-Found!7733 lt!338659) (not (is-MissingVacant!7733 lt!338659)) (not (= (index!33302 lt!338659) resIntermediateIndex!5)) (and (bvsge (index!33302 lt!338659) #b00000000000000000000000000000000) (bvslt (index!33302 lt!338659) (size!20547 a!3186)))) (or (is-Undefined!7733 lt!338659) (ite (is-Found!7733 lt!338659) (= (select (arr!20126 a!3186) (index!33300 lt!338659)) (select (arr!20126 a!3186) j!159)) (and (is-MissingVacant!7733 lt!338659) (= (index!33302 lt!338659) resIntermediateIndex!5) (= (select (arr!20126 a!3186) (index!33302 lt!338659)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!100417 (= lt!338659 e!423719)))

(declare-fun c!83222 () Bool)

(assert (=> d!100417 (= c!83222 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!100417 (= lt!338660 (select (arr!20126 a!3186) resIntermediateIndex!5))))

(assert (=> d!100417 (validMask!0 mask!3328)))

(assert (=> d!100417 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20126 a!3186) j!159) a!3186 mask!3328) lt!338659)))

(declare-fun b!760053 () Bool)

(assert (=> b!760053 (= e!423718 (Found!7733 resIntermediateIndex!5))))

(declare-fun b!760054 () Bool)

(declare-fun c!83221 () Bool)

(assert (=> b!760054 (= c!83221 (= lt!338660 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!760054 (= e!423718 e!423720)))

(declare-fun b!760055 () Bool)

(assert (=> b!760055 (= e!423719 Undefined!7733)))

(assert (= (and d!100417 c!83222) b!760055))

(assert (= (and d!100417 (not c!83222)) b!760052))

(assert (= (and b!760052 c!83223) b!760053))

(assert (= (and b!760052 (not c!83223)) b!760054))

(assert (= (and b!760054 c!83221) b!760051))

(assert (= (and b!760054 (not c!83221)) b!760050))

(declare-fun m!707365 () Bool)

(assert (=> b!760050 m!707365))

(assert (=> b!760050 m!707365))

(assert (=> b!760050 m!707061))

(declare-fun m!707367 () Bool)

(assert (=> b!760050 m!707367))

(declare-fun m!707369 () Bool)

(assert (=> d!100417 m!707369))

(declare-fun m!707371 () Bool)

(assert (=> d!100417 m!707371))

(assert (=> d!100417 m!707079))

(assert (=> d!100417 m!707067))

(assert (=> b!759636 d!100417))

(declare-fun e!423721 () SeekEntryResult!7733)

(declare-fun b!760056 () Bool)

(declare-fun lt!338662 () SeekEntryResult!7733)

(assert (=> b!760056 (= e!423721 (seekKeyOrZeroReturnVacant!0 (x!64204 lt!338662) (index!33301 lt!338662) (index!33301 lt!338662) (select (arr!20126 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!760057 () Bool)

(declare-fun c!83224 () Bool)

(declare-fun lt!338661 () (_ BitVec 64))

(assert (=> b!760057 (= c!83224 (= lt!338661 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423723 () SeekEntryResult!7733)

(assert (=> b!760057 (= e!423723 e!423721)))

(declare-fun b!760059 () Bool)

(assert (=> b!760059 (= e!423723 (Found!7733 (index!33301 lt!338662)))))

(declare-fun b!760060 () Bool)

(declare-fun e!423722 () SeekEntryResult!7733)

(assert (=> b!760060 (= e!423722 e!423723)))

(assert (=> b!760060 (= lt!338661 (select (arr!20126 a!3186) (index!33301 lt!338662)))))

(declare-fun c!83225 () Bool)

(assert (=> b!760060 (= c!83225 (= lt!338661 (select (arr!20126 a!3186) j!159)))))

(declare-fun b!760061 () Bool)

(assert (=> b!760061 (= e!423722 Undefined!7733)))

(declare-fun d!100419 () Bool)

(declare-fun lt!338663 () SeekEntryResult!7733)

(assert (=> d!100419 (and (or (is-Undefined!7733 lt!338663) (not (is-Found!7733 lt!338663)) (and (bvsge (index!33300 lt!338663) #b00000000000000000000000000000000) (bvslt (index!33300 lt!338663) (size!20547 a!3186)))) (or (is-Undefined!7733 lt!338663) (is-Found!7733 lt!338663) (not (is-MissingZero!7733 lt!338663)) (and (bvsge (index!33299 lt!338663) #b00000000000000000000000000000000) (bvslt (index!33299 lt!338663) (size!20547 a!3186)))) (or (is-Undefined!7733 lt!338663) (is-Found!7733 lt!338663) (is-MissingZero!7733 lt!338663) (not (is-MissingVacant!7733 lt!338663)) (and (bvsge (index!33302 lt!338663) #b00000000000000000000000000000000) (bvslt (index!33302 lt!338663) (size!20547 a!3186)))) (or (is-Undefined!7733 lt!338663) (ite (is-Found!7733 lt!338663) (= (select (arr!20126 a!3186) (index!33300 lt!338663)) (select (arr!20126 a!3186) j!159)) (ite (is-MissingZero!7733 lt!338663) (= (select (arr!20126 a!3186) (index!33299 lt!338663)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7733 lt!338663) (= (select (arr!20126 a!3186) (index!33302 lt!338663)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!100419 (= lt!338663 e!423722)))

(declare-fun c!83226 () Bool)

(assert (=> d!100419 (= c!83226 (and (is-Intermediate!7733 lt!338662) (undefined!8545 lt!338662)))))

(assert (=> d!100419 (= lt!338662 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20126 a!3186) j!159) mask!3328) (select (arr!20126 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!100419 (validMask!0 mask!3328)))

(assert (=> d!100419 (= (seekEntryOrOpen!0 (select (arr!20126 a!3186) j!159) a!3186 mask!3328) lt!338663)))

(declare-fun b!760058 () Bool)

(assert (=> b!760058 (= e!423721 (MissingZero!7733 (index!33301 lt!338662)))))

(assert (= (and d!100419 c!83226) b!760061))

(assert (= (and d!100419 (not c!83226)) b!760060))

(assert (= (and b!760060 c!83225) b!760059))

(assert (= (and b!760060 (not c!83225)) b!760057))

(assert (= (and b!760057 c!83224) b!760058))

(assert (= (and b!760057 (not c!83224)) b!760056))

(assert (=> b!760056 m!707061))

(declare-fun m!707373 () Bool)

(assert (=> b!760056 m!707373))

(declare-fun m!707375 () Bool)

(assert (=> b!760060 m!707375))

(declare-fun m!707377 () Bool)

(assert (=> d!100419 m!707377))

(assert (=> d!100419 m!707067))

(declare-fun m!707379 () Bool)

(assert (=> d!100419 m!707379))

(declare-fun m!707381 () Bool)

(assert (=> d!100419 m!707381))

(assert (=> d!100419 m!707061))

(assert (=> d!100419 m!707093))

(assert (=> d!100419 m!707093))

(assert (=> d!100419 m!707061))

(assert (=> d!100419 m!707095))

(assert (=> b!759638 d!100419))

(push 1)

(assert (not b!760015))

(assert (not bm!34929))

(assert (not d!100397))

(assert (not bm!34921))

(assert (not b!760024))

(assert (not b!759944))

(assert (not b!760049))

(assert (not b!759781))

(assert (not d!100403))

(assert (not d!100417))

(assert (not b!759865))

(assert (not d!100407))

(assert (not b!760056))

(assert (not b!759864))

(assert (not b!760050))

(assert (not b!760004))

(assert (not d!100419))

(assert (not b!760005))

(assert (not d!100387))

(assert (not d!100367))

(assert (not b!759834))

(assert (not bm!34918))

(assert (not b!759833))

(assert (not d!100369))

(assert (not d!100321))

(assert (not b!759998))

(assert (not b!759951))

(assert (not b!759836))

(check-sat)

(pop 1)

(push 1)

(check-sat)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66768 () Bool)

(assert start!66768)

(declare-fun b!768785 () Bool)

(declare-fun res!519975 () Bool)

(declare-fun e!428147 () Bool)

(assert (=> b!768785 (=> (not res!519975) (not e!428147))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42285 0))(
  ( (array!42286 (arr!20239 (Array (_ BitVec 32) (_ BitVec 64))) (size!20660 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42285)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!768785 (= res!519975 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20239 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!768786 () Bool)

(declare-fun e!428140 () Bool)

(assert (=> b!768786 (= e!428147 e!428140)))

(declare-fun res!519969 () Bool)

(assert (=> b!768786 (=> (not res!519969) (not e!428140))))

(declare-datatypes ((SeekEntryResult!7846 0))(
  ( (MissingZero!7846 (index!33751 (_ BitVec 32))) (Found!7846 (index!33752 (_ BitVec 32))) (Intermediate!7846 (undefined!8658 Bool) (index!33753 (_ BitVec 32)) (x!64714 (_ BitVec 32))) (Undefined!7846) (MissingVacant!7846 (index!33754 (_ BitVec 32))) )
))
(declare-fun lt!342031 () SeekEntryResult!7846)

(declare-fun lt!342032 () SeekEntryResult!7846)

(assert (=> b!768786 (= res!519969 (= lt!342031 lt!342032))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!342030 () (_ BitVec 64))

(declare-fun lt!342029 () array!42285)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42285 (_ BitVec 32)) SeekEntryResult!7846)

(assert (=> b!768786 (= lt!342032 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342030 lt!342029 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!768786 (= lt!342031 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342030 mask!3328) lt!342030 lt!342029 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!768786 (= lt!342030 (select (store (arr!20239 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!768786 (= lt!342029 (array!42286 (store (arr!20239 a!3186) i!1173 k0!2102) (size!20660 a!3186)))))

(declare-fun b!768787 () Bool)

(declare-fun res!519979 () Bool)

(declare-fun e!428148 () Bool)

(assert (=> b!768787 (=> (not res!519979) (not e!428148))))

(assert (=> b!768787 (= res!519979 (and (= (size!20660 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20660 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20660 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!768788 () Bool)

(declare-fun res!519964 () Bool)

(declare-fun e!428146 () Bool)

(assert (=> b!768788 (=> (not res!519964) (not e!428146))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42285 (_ BitVec 32)) Bool)

(assert (=> b!768788 (= res!519964 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun e!428143 () Bool)

(declare-fun b!768789 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42285 (_ BitVec 32)) SeekEntryResult!7846)

(assert (=> b!768789 (= e!428143 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20239 a!3186) j!159) a!3186 mask!3328) (Found!7846 j!159)))))

(declare-fun b!768790 () Bool)

(declare-fun res!519972 () Bool)

(assert (=> b!768790 (=> (not res!519972) (not e!428147))))

(assert (=> b!768790 (= res!519972 e!428143)))

(declare-fun c!84807 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!768790 (= c!84807 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!768791 () Bool)

(declare-fun e!428144 () Bool)

(assert (=> b!768791 (= e!428144 true)))

(declare-datatypes ((Unit!26420 0))(
  ( (Unit!26421) )
))
(declare-fun lt!342024 () Unit!26420)

(declare-fun e!428145 () Unit!26420)

(assert (=> b!768791 (= lt!342024 e!428145)))

(declare-fun c!84806 () Bool)

(assert (=> b!768791 (= c!84806 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!342026 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!768791 (= lt!342026 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!768792 () Bool)

(declare-fun e!428141 () Bool)

(declare-fun e!428142 () Bool)

(assert (=> b!768792 (= e!428141 e!428142)))

(declare-fun res!519970 () Bool)

(assert (=> b!768792 (=> (not res!519970) (not e!428142))))

(declare-fun lt!342033 () SeekEntryResult!7846)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42285 (_ BitVec 32)) SeekEntryResult!7846)

(assert (=> b!768792 (= res!519970 (= (seekEntryOrOpen!0 (select (arr!20239 a!3186) j!159) a!3186 mask!3328) lt!342033))))

(assert (=> b!768792 (= lt!342033 (Found!7846 j!159))))

(declare-fun b!768793 () Bool)

(declare-fun res!519973 () Bool)

(assert (=> b!768793 (=> (not res!519973) (not e!428148))))

(declare-fun arrayContainsKey!0 (array!42285 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!768793 (= res!519973 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!768794 () Bool)

(declare-fun res!519971 () Bool)

(assert (=> b!768794 (=> (not res!519971) (not e!428146))))

(assert (=> b!768794 (= res!519971 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20660 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20660 a!3186))))))

(declare-fun b!768795 () Bool)

(assert (=> b!768795 (= e!428146 e!428147)))

(declare-fun res!519976 () Bool)

(assert (=> b!768795 (=> (not res!519976) (not e!428147))))

(declare-fun lt!342028 () SeekEntryResult!7846)

(assert (=> b!768795 (= res!519976 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20239 a!3186) j!159) mask!3328) (select (arr!20239 a!3186) j!159) a!3186 mask!3328) lt!342028))))

(assert (=> b!768795 (= lt!342028 (Intermediate!7846 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!768796 () Bool)

(declare-fun Unit!26422 () Unit!26420)

(assert (=> b!768796 (= e!428145 Unit!26422)))

(assert (=> b!768796 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342026 (select (arr!20239 a!3186) j!159) a!3186 mask!3328) lt!342028)))

(declare-fun b!768797 () Bool)

(assert (=> b!768797 (= e!428140 (not e!428144))))

(declare-fun res!519978 () Bool)

(assert (=> b!768797 (=> res!519978 e!428144)))

(get-info :version)

(assert (=> b!768797 (= res!519978 (or (not ((_ is Intermediate!7846) lt!342032)) (bvsge x!1131 (x!64714 lt!342032))))))

(assert (=> b!768797 e!428141))

(declare-fun res!519968 () Bool)

(assert (=> b!768797 (=> (not res!519968) (not e!428141))))

(assert (=> b!768797 (= res!519968 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342027 () Unit!26420)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42285 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26420)

(assert (=> b!768797 (= lt!342027 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!768798 () Bool)

(assert (=> b!768798 (= e!428148 e!428146)))

(declare-fun res!519977 () Bool)

(assert (=> b!768798 (=> (not res!519977) (not e!428146))))

(declare-fun lt!342025 () SeekEntryResult!7846)

(assert (=> b!768798 (= res!519977 (or (= lt!342025 (MissingZero!7846 i!1173)) (= lt!342025 (MissingVacant!7846 i!1173))))))

(assert (=> b!768798 (= lt!342025 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!768799 () Bool)

(declare-fun res!519965 () Bool)

(assert (=> b!768799 (=> (not res!519965) (not e!428148))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!768799 (= res!519965 (validKeyInArray!0 k0!2102))))

(declare-fun b!768801 () Bool)

(assert (=> b!768801 (= e!428142 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20239 a!3186) j!159) a!3186 mask!3328) lt!342033))))

(declare-fun b!768802 () Bool)

(assert (=> b!768802 (= e!428143 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20239 a!3186) j!159) a!3186 mask!3328) lt!342028))))

(declare-fun b!768803 () Bool)

(declare-fun res!519966 () Bool)

(assert (=> b!768803 (=> (not res!519966) (not e!428146))))

(declare-datatypes ((List!14294 0))(
  ( (Nil!14291) (Cons!14290 (h!15389 (_ BitVec 64)) (t!20617 List!14294)) )
))
(declare-fun arrayNoDuplicates!0 (array!42285 (_ BitVec 32) List!14294) Bool)

(assert (=> b!768803 (= res!519966 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14291))))

(declare-fun b!768804 () Bool)

(declare-fun res!519974 () Bool)

(assert (=> b!768804 (=> (not res!519974) (not e!428148))))

(assert (=> b!768804 (= res!519974 (validKeyInArray!0 (select (arr!20239 a!3186) j!159)))))

(declare-fun res!519967 () Bool)

(assert (=> start!66768 (=> (not res!519967) (not e!428148))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66768 (= res!519967 (validMask!0 mask!3328))))

(assert (=> start!66768 e!428148))

(assert (=> start!66768 true))

(declare-fun array_inv!16013 (array!42285) Bool)

(assert (=> start!66768 (array_inv!16013 a!3186)))

(declare-fun b!768800 () Bool)

(declare-fun Unit!26423 () Unit!26420)

(assert (=> b!768800 (= e!428145 Unit!26423)))

(declare-fun lt!342034 () SeekEntryResult!7846)

(assert (=> b!768800 (= lt!342034 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20239 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!768800 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342026 resIntermediateIndex!5 (select (arr!20239 a!3186) j!159) a!3186 mask!3328) (Found!7846 j!159))))

(assert (= (and start!66768 res!519967) b!768787))

(assert (= (and b!768787 res!519979) b!768804))

(assert (= (and b!768804 res!519974) b!768799))

(assert (= (and b!768799 res!519965) b!768793))

(assert (= (and b!768793 res!519973) b!768798))

(assert (= (and b!768798 res!519977) b!768788))

(assert (= (and b!768788 res!519964) b!768803))

(assert (= (and b!768803 res!519966) b!768794))

(assert (= (and b!768794 res!519971) b!768795))

(assert (= (and b!768795 res!519976) b!768785))

(assert (= (and b!768785 res!519975) b!768790))

(assert (= (and b!768790 c!84807) b!768802))

(assert (= (and b!768790 (not c!84807)) b!768789))

(assert (= (and b!768790 res!519972) b!768786))

(assert (= (and b!768786 res!519969) b!768797))

(assert (= (and b!768797 res!519968) b!768792))

(assert (= (and b!768792 res!519970) b!768801))

(assert (= (and b!768797 (not res!519978)) b!768791))

(assert (= (and b!768791 c!84806) b!768796))

(assert (= (and b!768791 (not c!84806)) b!768800))

(declare-fun m!714347 () Bool)

(assert (=> b!768803 m!714347))

(declare-fun m!714349 () Bool)

(assert (=> b!768800 m!714349))

(assert (=> b!768800 m!714349))

(declare-fun m!714351 () Bool)

(assert (=> b!768800 m!714351))

(assert (=> b!768800 m!714349))

(declare-fun m!714353 () Bool)

(assert (=> b!768800 m!714353))

(assert (=> b!768804 m!714349))

(assert (=> b!768804 m!714349))

(declare-fun m!714355 () Bool)

(assert (=> b!768804 m!714355))

(assert (=> b!768802 m!714349))

(assert (=> b!768802 m!714349))

(declare-fun m!714357 () Bool)

(assert (=> b!768802 m!714357))

(declare-fun m!714359 () Bool)

(assert (=> b!768788 m!714359))

(declare-fun m!714361 () Bool)

(assert (=> start!66768 m!714361))

(declare-fun m!714363 () Bool)

(assert (=> start!66768 m!714363))

(declare-fun m!714365 () Bool)

(assert (=> b!768786 m!714365))

(assert (=> b!768786 m!714365))

(declare-fun m!714367 () Bool)

(assert (=> b!768786 m!714367))

(declare-fun m!714369 () Bool)

(assert (=> b!768786 m!714369))

(declare-fun m!714371 () Bool)

(assert (=> b!768786 m!714371))

(declare-fun m!714373 () Bool)

(assert (=> b!768786 m!714373))

(assert (=> b!768795 m!714349))

(assert (=> b!768795 m!714349))

(declare-fun m!714375 () Bool)

(assert (=> b!768795 m!714375))

(assert (=> b!768795 m!714375))

(assert (=> b!768795 m!714349))

(declare-fun m!714377 () Bool)

(assert (=> b!768795 m!714377))

(declare-fun m!714379 () Bool)

(assert (=> b!768793 m!714379))

(declare-fun m!714381 () Bool)

(assert (=> b!768791 m!714381))

(declare-fun m!714383 () Bool)

(assert (=> b!768799 m!714383))

(declare-fun m!714385 () Bool)

(assert (=> b!768798 m!714385))

(declare-fun m!714387 () Bool)

(assert (=> b!768785 m!714387))

(assert (=> b!768796 m!714349))

(assert (=> b!768796 m!714349))

(declare-fun m!714389 () Bool)

(assert (=> b!768796 m!714389))

(assert (=> b!768801 m!714349))

(assert (=> b!768801 m!714349))

(declare-fun m!714391 () Bool)

(assert (=> b!768801 m!714391))

(assert (=> b!768789 m!714349))

(assert (=> b!768789 m!714349))

(assert (=> b!768789 m!714351))

(declare-fun m!714393 () Bool)

(assert (=> b!768797 m!714393))

(declare-fun m!714395 () Bool)

(assert (=> b!768797 m!714395))

(assert (=> b!768792 m!714349))

(assert (=> b!768792 m!714349))

(declare-fun m!714397 () Bool)

(assert (=> b!768792 m!714397))

(check-sat (not b!768799) (not b!768789) (not b!768795) (not b!768800) (not b!768792) (not b!768786) (not start!66768) (not b!768803) (not b!768791) (not b!768802) (not b!768796) (not b!768788) (not b!768804) (not b!768797) (not b!768793) (not b!768801) (not b!768798))
(check-sat)

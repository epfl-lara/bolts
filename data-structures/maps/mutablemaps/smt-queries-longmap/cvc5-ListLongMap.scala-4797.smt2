; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65860 () Bool)

(assert start!65860)

(declare-fun b!758321 () Bool)

(declare-fun res!513120 () Bool)

(declare-fun e!422804 () Bool)

(assert (=> b!758321 (=> (not res!513120) (not e!422804))))

(declare-datatypes ((array!41986 0))(
  ( (array!41987 (arr!20103 (Array (_ BitVec 32) (_ BitVec 64))) (size!20524 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41986)

(declare-datatypes ((List!14158 0))(
  ( (Nil!14155) (Cons!14154 (h!15226 (_ BitVec 64)) (t!20481 List!14158)) )
))
(declare-fun arrayNoDuplicates!0 (array!41986 (_ BitVec 32) List!14158) Bool)

(assert (=> b!758321 (= res!513120 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14155))))

(declare-fun b!758322 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7710 0))(
  ( (MissingZero!7710 (index!33207 (_ BitVec 32))) (Found!7710 (index!33208 (_ BitVec 32))) (Intermediate!7710 (undefined!8522 Bool) (index!33209 (_ BitVec 32)) (x!64125 (_ BitVec 32))) (Undefined!7710) (MissingVacant!7710 (index!33210 (_ BitVec 32))) )
))
(declare-fun lt!337836 () SeekEntryResult!7710)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun e!422811 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41986 (_ BitVec 32)) SeekEntryResult!7710)

(assert (=> b!758322 (= e!422811 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20103 a!3186) j!159) a!3186 mask!3328) lt!337836))))

(declare-fun b!758323 () Bool)

(declare-fun e!422813 () Bool)

(declare-fun e!422812 () Bool)

(assert (=> b!758323 (= e!422813 (not e!422812))))

(declare-fun res!513117 () Bool)

(assert (=> b!758323 (=> res!513117 e!422812)))

(declare-fun lt!337846 () SeekEntryResult!7710)

(assert (=> b!758323 (= res!513117 (or (not (is-Intermediate!7710 lt!337846)) (bvslt x!1131 (x!64125 lt!337846)) (not (= x!1131 (x!64125 lt!337846))) (not (= index!1321 (index!33209 lt!337846)))))))

(declare-fun e!422806 () Bool)

(assert (=> b!758323 e!422806))

(declare-fun res!513125 () Bool)

(assert (=> b!758323 (=> (not res!513125) (not e!422806))))

(declare-fun lt!337839 () SeekEntryResult!7710)

(declare-fun lt!337838 () SeekEntryResult!7710)

(assert (=> b!758323 (= res!513125 (= lt!337839 lt!337838))))

(assert (=> b!758323 (= lt!337838 (Found!7710 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41986 (_ BitVec 32)) SeekEntryResult!7710)

(assert (=> b!758323 (= lt!337839 (seekEntryOrOpen!0 (select (arr!20103 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41986 (_ BitVec 32)) Bool)

(assert (=> b!758323 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26242 0))(
  ( (Unit!26243) )
))
(declare-fun lt!337847 () Unit!26242)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41986 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26242)

(assert (=> b!758323 (= lt!337847 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!758324 () Bool)

(declare-fun res!513126 () Bool)

(declare-fun e!422805 () Bool)

(assert (=> b!758324 (=> (not res!513126) (not e!422805))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41986 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!758324 (= res!513126 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!758325 () Bool)

(declare-fun e!422808 () Unit!26242)

(declare-fun Unit!26244 () Unit!26242)

(assert (=> b!758325 (= e!422808 Unit!26244)))

(assert (=> b!758325 false))

(declare-fun b!758326 () Bool)

(declare-fun res!513124 () Bool)

(declare-fun e!422810 () Bool)

(assert (=> b!758326 (=> (not res!513124) (not e!422810))))

(assert (=> b!758326 (= res!513124 e!422811)))

(declare-fun c!82986 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!758326 (= c!82986 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!758327 () Bool)

(assert (=> b!758327 (= e!422804 e!422810)))

(declare-fun res!513113 () Bool)

(assert (=> b!758327 (=> (not res!513113) (not e!422810))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!758327 (= res!513113 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20103 a!3186) j!159) mask!3328) (select (arr!20103 a!3186) j!159) a!3186 mask!3328) lt!337836))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!758327 (= lt!337836 (Intermediate!7710 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!758328 () Bool)

(declare-fun e!422807 () Bool)

(assert (=> b!758328 (= e!422812 e!422807)))

(declare-fun res!513114 () Bool)

(assert (=> b!758328 (=> res!513114 e!422807)))

(declare-fun lt!337848 () SeekEntryResult!7710)

(assert (=> b!758328 (= res!513114 (not (= lt!337848 lt!337838)))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41986 (_ BitVec 32)) SeekEntryResult!7710)

(assert (=> b!758328 (= lt!337848 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20103 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!758329 () Bool)

(assert (=> b!758329 (= e!422805 e!422804)))

(declare-fun res!513127 () Bool)

(assert (=> b!758329 (=> (not res!513127) (not e!422804))))

(declare-fun lt!337840 () SeekEntryResult!7710)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!758329 (= res!513127 (or (= lt!337840 (MissingZero!7710 i!1173)) (= lt!337840 (MissingVacant!7710 i!1173))))))

(assert (=> b!758329 (= lt!337840 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!758330 () Bool)

(declare-fun Unit!26245 () Unit!26242)

(assert (=> b!758330 (= e!422808 Unit!26245)))

(declare-fun b!758331 () Bool)

(declare-fun res!513122 () Bool)

(assert (=> b!758331 (=> (not res!513122) (not e!422805))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!758331 (= res!513122 (validKeyInArray!0 (select (arr!20103 a!3186) j!159)))))

(declare-fun res!513119 () Bool)

(assert (=> start!65860 (=> (not res!513119) (not e!422805))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65860 (= res!513119 (validMask!0 mask!3328))))

(assert (=> start!65860 e!422805))

(assert (=> start!65860 true))

(declare-fun array_inv!15877 (array!41986) Bool)

(assert (=> start!65860 (array_inv!15877 a!3186)))

(declare-fun b!758332 () Bool)

(assert (=> b!758332 (= e!422806 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20103 a!3186) j!159) a!3186 mask!3328) lt!337838))))

(declare-fun b!758333 () Bool)

(declare-fun res!513118 () Bool)

(assert (=> b!758333 (=> (not res!513118) (not e!422804))))

(assert (=> b!758333 (= res!513118 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20524 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20524 a!3186))))))

(declare-fun b!758334 () Bool)

(declare-fun res!513129 () Bool)

(assert (=> b!758334 (=> (not res!513129) (not e!422805))))

(assert (=> b!758334 (= res!513129 (and (= (size!20524 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20524 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20524 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!758335 () Bool)

(declare-fun e!422803 () Bool)

(declare-fun e!422809 () Bool)

(assert (=> b!758335 (= e!422803 e!422809)))

(declare-fun res!513121 () Bool)

(assert (=> b!758335 (=> res!513121 e!422809)))

(assert (=> b!758335 (= res!513121 (or (not (= (select (arr!20103 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!337843 () SeekEntryResult!7710)

(declare-fun lt!337842 () SeekEntryResult!7710)

(assert (=> b!758335 (and (= lt!337842 lt!337843) (= lt!337839 lt!337848))))

(declare-fun lt!337845 () array!41986)

(declare-fun lt!337850 () (_ BitVec 64))

(assert (=> b!758335 (= lt!337843 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337850 lt!337845 mask!3328))))

(assert (=> b!758335 (= lt!337842 (seekEntryOrOpen!0 lt!337850 lt!337845 mask!3328))))

(declare-fun lt!337837 () (_ BitVec 64))

(assert (=> b!758335 (= lt!337837 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!337844 () Unit!26242)

(assert (=> b!758335 (= lt!337844 e!422808)))

(declare-fun c!82985 () Bool)

(assert (=> b!758335 (= c!82985 (= lt!337837 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!758336 () Bool)

(assert (=> b!758336 (= e!422807 e!422803)))

(declare-fun res!513116 () Bool)

(assert (=> b!758336 (=> res!513116 e!422803)))

(assert (=> b!758336 (= res!513116 (= lt!337837 lt!337850))))

(assert (=> b!758336 (= lt!337837 (select (store (arr!20103 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!758337 () Bool)

(assert (=> b!758337 (= e!422811 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20103 a!3186) j!159) a!3186 mask!3328) (Found!7710 j!159)))))

(declare-fun b!758338 () Bool)

(declare-fun res!513112 () Bool)

(assert (=> b!758338 (=> (not res!513112) (not e!422804))))

(assert (=> b!758338 (= res!513112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!758339 () Bool)

(declare-fun res!513123 () Bool)

(assert (=> b!758339 (=> (not res!513123) (not e!422810))))

(assert (=> b!758339 (= res!513123 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20103 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!758340 () Bool)

(assert (=> b!758340 (= e!422809 (bvsge mask!3328 #b00000000000000000000000000000000))))

(assert (=> b!758340 (= lt!337843 lt!337848)))

(declare-fun lt!337849 () Unit!26242)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!41986 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26242)

(assert (=> b!758340 (= lt!337849 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!758341 () Bool)

(declare-fun res!513128 () Bool)

(assert (=> b!758341 (=> (not res!513128) (not e!422805))))

(assert (=> b!758341 (= res!513128 (validKeyInArray!0 k!2102))))

(declare-fun b!758342 () Bool)

(assert (=> b!758342 (= e!422810 e!422813)))

(declare-fun res!513115 () Bool)

(assert (=> b!758342 (=> (not res!513115) (not e!422813))))

(declare-fun lt!337841 () SeekEntryResult!7710)

(assert (=> b!758342 (= res!513115 (= lt!337841 lt!337846))))

(assert (=> b!758342 (= lt!337846 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337850 lt!337845 mask!3328))))

(assert (=> b!758342 (= lt!337841 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337850 mask!3328) lt!337850 lt!337845 mask!3328))))

(assert (=> b!758342 (= lt!337850 (select (store (arr!20103 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!758342 (= lt!337845 (array!41987 (store (arr!20103 a!3186) i!1173 k!2102) (size!20524 a!3186)))))

(assert (= (and start!65860 res!513119) b!758334))

(assert (= (and b!758334 res!513129) b!758331))

(assert (= (and b!758331 res!513122) b!758341))

(assert (= (and b!758341 res!513128) b!758324))

(assert (= (and b!758324 res!513126) b!758329))

(assert (= (and b!758329 res!513127) b!758338))

(assert (= (and b!758338 res!513112) b!758321))

(assert (= (and b!758321 res!513120) b!758333))

(assert (= (and b!758333 res!513118) b!758327))

(assert (= (and b!758327 res!513113) b!758339))

(assert (= (and b!758339 res!513123) b!758326))

(assert (= (and b!758326 c!82986) b!758322))

(assert (= (and b!758326 (not c!82986)) b!758337))

(assert (= (and b!758326 res!513124) b!758342))

(assert (= (and b!758342 res!513115) b!758323))

(assert (= (and b!758323 res!513125) b!758332))

(assert (= (and b!758323 (not res!513117)) b!758328))

(assert (= (and b!758328 (not res!513114)) b!758336))

(assert (= (and b!758336 (not res!513116)) b!758335))

(assert (= (and b!758335 c!82985) b!758325))

(assert (= (and b!758335 (not c!82985)) b!758330))

(assert (= (and b!758335 (not res!513121)) b!758340))

(declare-fun m!705901 () Bool)

(assert (=> b!758335 m!705901))

(declare-fun m!705903 () Bool)

(assert (=> b!758335 m!705903))

(declare-fun m!705905 () Bool)

(assert (=> b!758335 m!705905))

(declare-fun m!705907 () Bool)

(assert (=> b!758323 m!705907))

(assert (=> b!758323 m!705907))

(declare-fun m!705909 () Bool)

(assert (=> b!758323 m!705909))

(declare-fun m!705911 () Bool)

(assert (=> b!758323 m!705911))

(declare-fun m!705913 () Bool)

(assert (=> b!758323 m!705913))

(declare-fun m!705915 () Bool)

(assert (=> b!758336 m!705915))

(declare-fun m!705917 () Bool)

(assert (=> b!758336 m!705917))

(assert (=> b!758322 m!705907))

(assert (=> b!758322 m!705907))

(declare-fun m!705919 () Bool)

(assert (=> b!758322 m!705919))

(declare-fun m!705921 () Bool)

(assert (=> b!758324 m!705921))

(declare-fun m!705923 () Bool)

(assert (=> b!758329 m!705923))

(assert (=> b!758337 m!705907))

(assert (=> b!758337 m!705907))

(declare-fun m!705925 () Bool)

(assert (=> b!758337 m!705925))

(declare-fun m!705927 () Bool)

(assert (=> b!758342 m!705927))

(declare-fun m!705929 () Bool)

(assert (=> b!758342 m!705929))

(declare-fun m!705931 () Bool)

(assert (=> b!758342 m!705931))

(assert (=> b!758342 m!705915))

(declare-fun m!705933 () Bool)

(assert (=> b!758342 m!705933))

(assert (=> b!758342 m!705927))

(declare-fun m!705935 () Bool)

(assert (=> start!65860 m!705935))

(declare-fun m!705937 () Bool)

(assert (=> start!65860 m!705937))

(assert (=> b!758327 m!705907))

(assert (=> b!758327 m!705907))

(declare-fun m!705939 () Bool)

(assert (=> b!758327 m!705939))

(assert (=> b!758327 m!705939))

(assert (=> b!758327 m!705907))

(declare-fun m!705941 () Bool)

(assert (=> b!758327 m!705941))

(declare-fun m!705943 () Bool)

(assert (=> b!758338 m!705943))

(assert (=> b!758331 m!705907))

(assert (=> b!758331 m!705907))

(declare-fun m!705945 () Bool)

(assert (=> b!758331 m!705945))

(assert (=> b!758328 m!705907))

(assert (=> b!758328 m!705907))

(assert (=> b!758328 m!705925))

(declare-fun m!705947 () Bool)

(assert (=> b!758341 m!705947))

(assert (=> b!758332 m!705907))

(assert (=> b!758332 m!705907))

(declare-fun m!705949 () Bool)

(assert (=> b!758332 m!705949))

(declare-fun m!705951 () Bool)

(assert (=> b!758321 m!705951))

(declare-fun m!705953 () Bool)

(assert (=> b!758339 m!705953))

(declare-fun m!705955 () Bool)

(assert (=> b!758340 m!705955))

(push 1)


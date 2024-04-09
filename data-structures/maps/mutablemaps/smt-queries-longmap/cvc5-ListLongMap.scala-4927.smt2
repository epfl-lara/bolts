; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67888 () Bool)

(assert start!67888)

(declare-fun b!788801 () Bool)

(declare-fun e!438463 () Bool)

(declare-fun e!438469 () Bool)

(assert (=> b!788801 (= e!438463 e!438469)))

(declare-fun res!534345 () Bool)

(assert (=> b!788801 (=> (not res!534345) (not e!438469))))

(declare-datatypes ((SeekEntryResult!8100 0))(
  ( (MissingZero!8100 (index!34767 (_ BitVec 32))) (Found!8100 (index!34768 (_ BitVec 32))) (Intermediate!8100 (undefined!8912 Bool) (index!34769 (_ BitVec 32)) (x!65738 (_ BitVec 32))) (Undefined!8100) (MissingVacant!8100 (index!34770 (_ BitVec 32))) )
))
(declare-fun lt!351942 () SeekEntryResult!8100)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!788801 (= res!534345 (or (= lt!351942 (MissingZero!8100 i!1173)) (= lt!351942 (MissingVacant!8100 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!42820 0))(
  ( (array!42821 (arr!20493 (Array (_ BitVec 32) (_ BitVec 64))) (size!20914 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42820)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42820 (_ BitVec 32)) SeekEntryResult!8100)

(assert (=> b!788801 (= lt!351942 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!788802 () Bool)

(declare-fun e!438464 () Bool)

(assert (=> b!788802 (= e!438469 e!438464)))

(declare-fun res!534336 () Bool)

(assert (=> b!788802 (=> (not res!534336) (not e!438464))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!351943 () SeekEntryResult!8100)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42820 (_ BitVec 32)) SeekEntryResult!8100)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!788802 (= res!534336 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20493 a!3186) j!159) mask!3328) (select (arr!20493 a!3186) j!159) a!3186 mask!3328) lt!351943))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!788802 (= lt!351943 (Intermediate!8100 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!788803 () Bool)

(declare-fun res!534339 () Bool)

(assert (=> b!788803 (=> (not res!534339) (not e!438469))))

(declare-datatypes ((List!14548 0))(
  ( (Nil!14545) (Cons!14544 (h!15670 (_ BitVec 64)) (t!20871 List!14548)) )
))
(declare-fun arrayNoDuplicates!0 (array!42820 (_ BitVec 32) List!14548) Bool)

(assert (=> b!788803 (= res!534339 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14545))))

(declare-fun b!788804 () Bool)

(declare-fun res!534348 () Bool)

(assert (=> b!788804 (=> (not res!534348) (not e!438463))))

(assert (=> b!788804 (= res!534348 (and (= (size!20914 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20914 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20914 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!788805 () Bool)

(declare-fun res!534340 () Bool)

(assert (=> b!788805 (=> (not res!534340) (not e!438463))))

(declare-fun arrayContainsKey!0 (array!42820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!788805 (= res!534340 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!788806 () Bool)

(declare-fun e!438466 () Bool)

(assert (=> b!788806 (= e!438466 true)))

(declare-fun e!438468 () Bool)

(assert (=> b!788806 e!438468))

(declare-fun res!534333 () Bool)

(assert (=> b!788806 (=> (not res!534333) (not e!438468))))

(declare-fun lt!351946 () (_ BitVec 64))

(assert (=> b!788806 (= res!534333 (= lt!351946 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27310 0))(
  ( (Unit!27311) )
))
(declare-fun lt!351940 () Unit!27310)

(declare-fun e!438462 () Unit!27310)

(assert (=> b!788806 (= lt!351940 e!438462)))

(declare-fun c!87644 () Bool)

(assert (=> b!788806 (= c!87644 (= lt!351946 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!788807 () Bool)

(declare-fun res!534349 () Bool)

(assert (=> b!788807 (=> (not res!534349) (not e!438464))))

(assert (=> b!788807 (= res!534349 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20493 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!788808 () Bool)

(declare-fun e!438467 () Bool)

(assert (=> b!788808 (= e!438467 e!438466)))

(declare-fun res!534334 () Bool)

(assert (=> b!788808 (=> res!534334 e!438466)))

(declare-fun lt!351945 () (_ BitVec 64))

(assert (=> b!788808 (= res!534334 (= lt!351946 lt!351945))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!788808 (= lt!351946 (select (store (arr!20493 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!788809 () Bool)

(declare-fun res!534343 () Bool)

(assert (=> b!788809 (=> (not res!534343) (not e!438463))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!788809 (= res!534343 (validKeyInArray!0 k!2102))))

(declare-fun e!438471 () Bool)

(declare-fun lt!351941 () SeekEntryResult!8100)

(declare-fun b!788810 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42820 (_ BitVec 32)) SeekEntryResult!8100)

(assert (=> b!788810 (= e!438471 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20493 a!3186) j!159) a!3186 mask!3328) lt!351941))))

(declare-fun res!534337 () Bool)

(assert (=> start!67888 (=> (not res!534337) (not e!438463))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67888 (= res!534337 (validMask!0 mask!3328))))

(assert (=> start!67888 e!438463))

(assert (=> start!67888 true))

(declare-fun array_inv!16267 (array!42820) Bool)

(assert (=> start!67888 (array_inv!16267 a!3186)))

(declare-fun b!788811 () Bool)

(declare-fun res!534331 () Bool)

(assert (=> b!788811 (=> (not res!534331) (not e!438468))))

(declare-fun lt!351938 () array!42820)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!788811 (= res!534331 (= (seekEntryOrOpen!0 lt!351945 lt!351938 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351945 lt!351938 mask!3328)))))

(declare-fun b!788812 () Bool)

(declare-fun e!438461 () Bool)

(declare-fun e!438472 () Bool)

(assert (=> b!788812 (= e!438461 (not e!438472))))

(declare-fun res!534344 () Bool)

(assert (=> b!788812 (=> res!534344 e!438472)))

(declare-fun lt!351949 () SeekEntryResult!8100)

(assert (=> b!788812 (= res!534344 (or (not (is-Intermediate!8100 lt!351949)) (bvslt x!1131 (x!65738 lt!351949)) (not (= x!1131 (x!65738 lt!351949))) (not (= index!1321 (index!34769 lt!351949)))))))

(assert (=> b!788812 e!438471))

(declare-fun res!534341 () Bool)

(assert (=> b!788812 (=> (not res!534341) (not e!438471))))

(declare-fun lt!351939 () SeekEntryResult!8100)

(assert (=> b!788812 (= res!534341 (= lt!351939 lt!351941))))

(assert (=> b!788812 (= lt!351941 (Found!8100 j!159))))

(assert (=> b!788812 (= lt!351939 (seekEntryOrOpen!0 (select (arr!20493 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42820 (_ BitVec 32)) Bool)

(assert (=> b!788812 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!351944 () Unit!27310)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42820 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27310)

(assert (=> b!788812 (= lt!351944 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!788813 () Bool)

(declare-fun res!534332 () Bool)

(assert (=> b!788813 (=> (not res!534332) (not e!438464))))

(declare-fun e!438470 () Bool)

(assert (=> b!788813 (= res!534332 e!438470)))

(declare-fun c!87645 () Bool)

(assert (=> b!788813 (= c!87645 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!788814 () Bool)

(declare-fun res!534342 () Bool)

(assert (=> b!788814 (=> (not res!534342) (not e!438463))))

(assert (=> b!788814 (= res!534342 (validKeyInArray!0 (select (arr!20493 a!3186) j!159)))))

(declare-fun b!788815 () Bool)

(declare-fun lt!351948 () SeekEntryResult!8100)

(assert (=> b!788815 (= e!438468 (= lt!351939 lt!351948))))

(declare-fun b!788816 () Bool)

(declare-fun Unit!27312 () Unit!27310)

(assert (=> b!788816 (= e!438462 Unit!27312)))

(declare-fun b!788817 () Bool)

(declare-fun res!534347 () Bool)

(assert (=> b!788817 (=> (not res!534347) (not e!438469))))

(assert (=> b!788817 (= res!534347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!788818 () Bool)

(declare-fun res!534335 () Bool)

(assert (=> b!788818 (=> (not res!534335) (not e!438469))))

(assert (=> b!788818 (= res!534335 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20914 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20914 a!3186))))))

(declare-fun b!788819 () Bool)

(assert (=> b!788819 (= e!438464 e!438461)))

(declare-fun res!534346 () Bool)

(assert (=> b!788819 (=> (not res!534346) (not e!438461))))

(declare-fun lt!351947 () SeekEntryResult!8100)

(assert (=> b!788819 (= res!534346 (= lt!351947 lt!351949))))

(assert (=> b!788819 (= lt!351949 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351945 lt!351938 mask!3328))))

(assert (=> b!788819 (= lt!351947 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351945 mask!3328) lt!351945 lt!351938 mask!3328))))

(assert (=> b!788819 (= lt!351945 (select (store (arr!20493 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!788819 (= lt!351938 (array!42821 (store (arr!20493 a!3186) i!1173 k!2102) (size!20914 a!3186)))))

(declare-fun b!788820 () Bool)

(assert (=> b!788820 (= e!438470 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20493 a!3186) j!159) a!3186 mask!3328) lt!351943))))

(declare-fun b!788821 () Bool)

(assert (=> b!788821 (= e!438470 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20493 a!3186) j!159) a!3186 mask!3328) (Found!8100 j!159)))))

(declare-fun b!788822 () Bool)

(assert (=> b!788822 (= e!438472 e!438467)))

(declare-fun res!534338 () Bool)

(assert (=> b!788822 (=> res!534338 e!438467)))

(assert (=> b!788822 (= res!534338 (not (= lt!351948 lt!351941)))))

(assert (=> b!788822 (= lt!351948 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20493 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!788823 () Bool)

(declare-fun Unit!27313 () Unit!27310)

(assert (=> b!788823 (= e!438462 Unit!27313)))

(assert (=> b!788823 false))

(assert (= (and start!67888 res!534337) b!788804))

(assert (= (and b!788804 res!534348) b!788814))

(assert (= (and b!788814 res!534342) b!788809))

(assert (= (and b!788809 res!534343) b!788805))

(assert (= (and b!788805 res!534340) b!788801))

(assert (= (and b!788801 res!534345) b!788817))

(assert (= (and b!788817 res!534347) b!788803))

(assert (= (and b!788803 res!534339) b!788818))

(assert (= (and b!788818 res!534335) b!788802))

(assert (= (and b!788802 res!534336) b!788807))

(assert (= (and b!788807 res!534349) b!788813))

(assert (= (and b!788813 c!87645) b!788820))

(assert (= (and b!788813 (not c!87645)) b!788821))

(assert (= (and b!788813 res!534332) b!788819))

(assert (= (and b!788819 res!534346) b!788812))

(assert (= (and b!788812 res!534341) b!788810))

(assert (= (and b!788812 (not res!534344)) b!788822))

(assert (= (and b!788822 (not res!534338)) b!788808))

(assert (= (and b!788808 (not res!534334)) b!788806))

(assert (= (and b!788806 c!87644) b!788823))

(assert (= (and b!788806 (not c!87644)) b!788816))

(assert (= (and b!788806 res!534333) b!788811))

(assert (= (and b!788811 res!534331) b!788815))

(declare-fun m!730081 () Bool)

(assert (=> b!788801 m!730081))

(declare-fun m!730083 () Bool)

(assert (=> b!788814 m!730083))

(assert (=> b!788814 m!730083))

(declare-fun m!730085 () Bool)

(assert (=> b!788814 m!730085))

(declare-fun m!730087 () Bool)

(assert (=> b!788817 m!730087))

(declare-fun m!730089 () Bool)

(assert (=> b!788819 m!730089))

(declare-fun m!730091 () Bool)

(assert (=> b!788819 m!730091))

(declare-fun m!730093 () Bool)

(assert (=> b!788819 m!730093))

(declare-fun m!730095 () Bool)

(assert (=> b!788819 m!730095))

(assert (=> b!788819 m!730091))

(declare-fun m!730097 () Bool)

(assert (=> b!788819 m!730097))

(assert (=> b!788812 m!730083))

(assert (=> b!788812 m!730083))

(declare-fun m!730099 () Bool)

(assert (=> b!788812 m!730099))

(declare-fun m!730101 () Bool)

(assert (=> b!788812 m!730101))

(declare-fun m!730103 () Bool)

(assert (=> b!788812 m!730103))

(assert (=> b!788820 m!730083))

(assert (=> b!788820 m!730083))

(declare-fun m!730105 () Bool)

(assert (=> b!788820 m!730105))

(declare-fun m!730107 () Bool)

(assert (=> b!788803 m!730107))

(declare-fun m!730109 () Bool)

(assert (=> b!788809 m!730109))

(assert (=> b!788821 m!730083))

(assert (=> b!788821 m!730083))

(declare-fun m!730111 () Bool)

(assert (=> b!788821 m!730111))

(assert (=> b!788822 m!730083))

(assert (=> b!788822 m!730083))

(assert (=> b!788822 m!730111))

(declare-fun m!730113 () Bool)

(assert (=> b!788807 m!730113))

(assert (=> b!788810 m!730083))

(assert (=> b!788810 m!730083))

(declare-fun m!730115 () Bool)

(assert (=> b!788810 m!730115))

(declare-fun m!730117 () Bool)

(assert (=> start!67888 m!730117))

(declare-fun m!730119 () Bool)

(assert (=> start!67888 m!730119))

(declare-fun m!730121 () Bool)

(assert (=> b!788805 m!730121))

(declare-fun m!730123 () Bool)

(assert (=> b!788811 m!730123))

(declare-fun m!730125 () Bool)

(assert (=> b!788811 m!730125))

(assert (=> b!788802 m!730083))

(assert (=> b!788802 m!730083))

(declare-fun m!730127 () Bool)

(assert (=> b!788802 m!730127))

(assert (=> b!788802 m!730127))

(assert (=> b!788802 m!730083))

(declare-fun m!730129 () Bool)

(assert (=> b!788802 m!730129))

(assert (=> b!788808 m!730093))

(declare-fun m!730131 () Bool)

(assert (=> b!788808 m!730131))

(push 1)


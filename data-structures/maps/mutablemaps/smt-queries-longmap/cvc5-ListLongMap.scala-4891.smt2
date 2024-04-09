; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67474 () Bool)

(assert start!67474)

(declare-fun b!780229 () Bool)

(declare-fun e!434061 () Bool)

(declare-fun e!434056 () Bool)

(assert (=> b!780229 (= e!434061 e!434056)))

(declare-fun res!528003 () Bool)

(assert (=> b!780229 (=> (not res!528003) (not e!434056))))

(declare-datatypes ((SeekEntryResult!7992 0))(
  ( (MissingZero!7992 (index!34335 (_ BitVec 32))) (Found!7992 (index!34336 (_ BitVec 32))) (Intermediate!7992 (undefined!8804 Bool) (index!34337 (_ BitVec 32)) (x!65315 (_ BitVec 32))) (Undefined!7992) (MissingVacant!7992 (index!34338 (_ BitVec 32))) )
))
(declare-fun lt!347718 () SeekEntryResult!7992)

(declare-fun lt!347716 () SeekEntryResult!7992)

(assert (=> b!780229 (= res!528003 (= lt!347718 lt!347716))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!347715 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((array!42595 0))(
  ( (array!42596 (arr!20385 (Array (_ BitVec 32) (_ BitVec 64))) (size!20806 (_ BitVec 32))) )
))
(declare-fun lt!347719 () array!42595)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42595 (_ BitVec 32)) SeekEntryResult!7992)

(assert (=> b!780229 (= lt!347716 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347715 lt!347719 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!780229 (= lt!347718 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347715 mask!3328) lt!347715 lt!347719 mask!3328))))

(declare-fun a!3186 () array!42595)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!780229 (= lt!347715 (select (store (arr!20385 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!780229 (= lt!347719 (array!42596 (store (arr!20385 a!3186) i!1173 k!2102) (size!20806 a!3186)))))

(declare-fun b!780230 () Bool)

(declare-fun res!528016 () Bool)

(declare-fun e!434054 () Bool)

(assert (=> b!780230 (=> (not res!528016) (not e!434054))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!780230 (= res!528016 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20806 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20806 a!3186))))))

(declare-fun b!780231 () Bool)

(declare-fun e!434062 () Bool)

(assert (=> b!780231 (= e!434062 true)))

(declare-datatypes ((Unit!26878 0))(
  ( (Unit!26879) )
))
(declare-fun lt!347712 () Unit!26878)

(declare-fun e!434058 () Unit!26878)

(assert (=> b!780231 (= lt!347712 e!434058)))

(declare-fun c!86519 () Bool)

(assert (=> b!780231 (= c!86519 (= (select (store (arr!20385 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!780232 () Bool)

(assert (=> b!780232 (= e!434056 (not e!434062))))

(declare-fun res!528013 () Bool)

(assert (=> b!780232 (=> res!528013 e!434062)))

(assert (=> b!780232 (= res!528013 (or (not (is-Intermediate!7992 lt!347716)) (bvslt x!1131 (x!65315 lt!347716)) (not (= x!1131 (x!65315 lt!347716))) (not (= index!1321 (index!34337 lt!347716)))))))

(declare-fun e!434057 () Bool)

(assert (=> b!780232 e!434057))

(declare-fun res!528008 () Bool)

(assert (=> b!780232 (=> (not res!528008) (not e!434057))))

(declare-fun lt!347714 () SeekEntryResult!7992)

(declare-fun lt!347713 () SeekEntryResult!7992)

(assert (=> b!780232 (= res!528008 (= lt!347714 lt!347713))))

(assert (=> b!780232 (= lt!347713 (Found!7992 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42595 (_ BitVec 32)) SeekEntryResult!7992)

(assert (=> b!780232 (= lt!347714 (seekEntryOrOpen!0 (select (arr!20385 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42595 (_ BitVec 32)) Bool)

(assert (=> b!780232 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!347717 () Unit!26878)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42595 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26878)

(assert (=> b!780232 (= lt!347717 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!780234 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42595 (_ BitVec 32)) SeekEntryResult!7992)

(assert (=> b!780234 (= e!434057 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20385 a!3186) j!159) a!3186 mask!3328) lt!347713))))

(declare-fun b!780235 () Bool)

(declare-fun res!528000 () Bool)

(declare-fun e!434059 () Bool)

(assert (=> b!780235 (=> (not res!528000) (not e!434059))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!780235 (= res!528000 (validKeyInArray!0 (select (arr!20385 a!3186) j!159)))))

(declare-fun b!780236 () Bool)

(declare-fun res!528004 () Bool)

(assert (=> b!780236 (=> (not res!528004) (not e!434059))))

(assert (=> b!780236 (= res!528004 (validKeyInArray!0 k!2102))))

(declare-fun b!780237 () Bool)

(declare-fun res!528015 () Bool)

(assert (=> b!780237 (=> (not res!528015) (not e!434059))))

(declare-fun arrayContainsKey!0 (array!42595 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!780237 (= res!528015 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!780238 () Bool)

(declare-fun Unit!26880 () Unit!26878)

(assert (=> b!780238 (= e!434058 Unit!26880)))

(assert (=> b!780238 false))

(declare-fun b!780239 () Bool)

(declare-fun res!528010 () Bool)

(assert (=> b!780239 (=> (not res!528010) (not e!434061))))

(assert (=> b!780239 (= res!528010 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20385 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!780240 () Bool)

(assert (=> b!780240 (= e!434059 e!434054)))

(declare-fun res!528002 () Bool)

(assert (=> b!780240 (=> (not res!528002) (not e!434054))))

(declare-fun lt!347711 () SeekEntryResult!7992)

(assert (=> b!780240 (= res!528002 (or (= lt!347711 (MissingZero!7992 i!1173)) (= lt!347711 (MissingVacant!7992 i!1173))))))

(assert (=> b!780240 (= lt!347711 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!780241 () Bool)

(declare-fun Unit!26881 () Unit!26878)

(assert (=> b!780241 (= e!434058 Unit!26881)))

(declare-fun b!780242 () Bool)

(declare-fun res!528006 () Bool)

(assert (=> b!780242 (=> res!528006 e!434062)))

(assert (=> b!780242 (= res!528006 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20385 a!3186) j!159) a!3186 mask!3328) lt!347713)))))

(declare-fun b!780243 () Bool)

(declare-fun res!528009 () Bool)

(assert (=> b!780243 (=> res!528009 e!434062)))

(assert (=> b!780243 (= res!528009 (= (select (store (arr!20385 a!3186) i!1173 k!2102) index!1321) lt!347715))))

(declare-fun e!434060 () Bool)

(declare-fun b!780244 () Bool)

(assert (=> b!780244 (= e!434060 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20385 a!3186) j!159) a!3186 mask!3328) (Found!7992 j!159)))))

(declare-fun lt!347710 () SeekEntryResult!7992)

(declare-fun b!780233 () Bool)

(assert (=> b!780233 (= e!434060 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20385 a!3186) j!159) a!3186 mask!3328) lt!347710))))

(declare-fun res!528011 () Bool)

(assert (=> start!67474 (=> (not res!528011) (not e!434059))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67474 (= res!528011 (validMask!0 mask!3328))))

(assert (=> start!67474 e!434059))

(assert (=> start!67474 true))

(declare-fun array_inv!16159 (array!42595) Bool)

(assert (=> start!67474 (array_inv!16159 a!3186)))

(declare-fun b!780245 () Bool)

(assert (=> b!780245 (= e!434054 e!434061)))

(declare-fun res!528012 () Bool)

(assert (=> b!780245 (=> (not res!528012) (not e!434061))))

(assert (=> b!780245 (= res!528012 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20385 a!3186) j!159) mask!3328) (select (arr!20385 a!3186) j!159) a!3186 mask!3328) lt!347710))))

(assert (=> b!780245 (= lt!347710 (Intermediate!7992 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!780246 () Bool)

(declare-fun res!528001 () Bool)

(assert (=> b!780246 (=> (not res!528001) (not e!434061))))

(assert (=> b!780246 (= res!528001 e!434060)))

(declare-fun c!86520 () Bool)

(assert (=> b!780246 (= c!86520 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!780247 () Bool)

(declare-fun res!528005 () Bool)

(assert (=> b!780247 (=> (not res!528005) (not e!434054))))

(declare-datatypes ((List!14440 0))(
  ( (Nil!14437) (Cons!14436 (h!15553 (_ BitVec 64)) (t!20763 List!14440)) )
))
(declare-fun arrayNoDuplicates!0 (array!42595 (_ BitVec 32) List!14440) Bool)

(assert (=> b!780247 (= res!528005 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14437))))

(declare-fun b!780248 () Bool)

(declare-fun res!528014 () Bool)

(assert (=> b!780248 (=> (not res!528014) (not e!434059))))

(assert (=> b!780248 (= res!528014 (and (= (size!20806 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20806 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20806 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!780249 () Bool)

(declare-fun res!528007 () Bool)

(assert (=> b!780249 (=> (not res!528007) (not e!434054))))

(assert (=> b!780249 (= res!528007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!67474 res!528011) b!780248))

(assert (= (and b!780248 res!528014) b!780235))

(assert (= (and b!780235 res!528000) b!780236))

(assert (= (and b!780236 res!528004) b!780237))

(assert (= (and b!780237 res!528015) b!780240))

(assert (= (and b!780240 res!528002) b!780249))

(assert (= (and b!780249 res!528007) b!780247))

(assert (= (and b!780247 res!528005) b!780230))

(assert (= (and b!780230 res!528016) b!780245))

(assert (= (and b!780245 res!528012) b!780239))

(assert (= (and b!780239 res!528010) b!780246))

(assert (= (and b!780246 c!86520) b!780233))

(assert (= (and b!780246 (not c!86520)) b!780244))

(assert (= (and b!780246 res!528001) b!780229))

(assert (= (and b!780229 res!528003) b!780232))

(assert (= (and b!780232 res!528008) b!780234))

(assert (= (and b!780232 (not res!528013)) b!780242))

(assert (= (and b!780242 (not res!528006)) b!780243))

(assert (= (and b!780243 (not res!528009)) b!780231))

(assert (= (and b!780231 c!86519) b!780238))

(assert (= (and b!780231 (not c!86519)) b!780241))

(declare-fun m!723625 () Bool)

(assert (=> b!780233 m!723625))

(assert (=> b!780233 m!723625))

(declare-fun m!723627 () Bool)

(assert (=> b!780233 m!723627))

(declare-fun m!723629 () Bool)

(assert (=> b!780240 m!723629))

(declare-fun m!723631 () Bool)

(assert (=> b!780229 m!723631))

(declare-fun m!723633 () Bool)

(assert (=> b!780229 m!723633))

(declare-fun m!723635 () Bool)

(assert (=> b!780229 m!723635))

(assert (=> b!780229 m!723635))

(declare-fun m!723637 () Bool)

(assert (=> b!780229 m!723637))

(declare-fun m!723639 () Bool)

(assert (=> b!780229 m!723639))

(assert (=> b!780242 m!723625))

(assert (=> b!780242 m!723625))

(declare-fun m!723641 () Bool)

(assert (=> b!780242 m!723641))

(declare-fun m!723643 () Bool)

(assert (=> b!780249 m!723643))

(declare-fun m!723645 () Bool)

(assert (=> b!780237 m!723645))

(declare-fun m!723647 () Bool)

(assert (=> b!780239 m!723647))

(assert (=> b!780243 m!723631))

(declare-fun m!723649 () Bool)

(assert (=> b!780243 m!723649))

(assert (=> b!780235 m!723625))

(assert (=> b!780235 m!723625))

(declare-fun m!723651 () Bool)

(assert (=> b!780235 m!723651))

(declare-fun m!723653 () Bool)

(assert (=> start!67474 m!723653))

(declare-fun m!723655 () Bool)

(assert (=> start!67474 m!723655))

(assert (=> b!780234 m!723625))

(assert (=> b!780234 m!723625))

(declare-fun m!723657 () Bool)

(assert (=> b!780234 m!723657))

(assert (=> b!780245 m!723625))

(assert (=> b!780245 m!723625))

(declare-fun m!723659 () Bool)

(assert (=> b!780245 m!723659))

(assert (=> b!780245 m!723659))

(assert (=> b!780245 m!723625))

(declare-fun m!723661 () Bool)

(assert (=> b!780245 m!723661))

(assert (=> b!780244 m!723625))

(assert (=> b!780244 m!723625))

(assert (=> b!780244 m!723641))

(declare-fun m!723663 () Bool)

(assert (=> b!780236 m!723663))

(declare-fun m!723665 () Bool)

(assert (=> b!780247 m!723665))

(assert (=> b!780231 m!723631))

(assert (=> b!780231 m!723649))

(assert (=> b!780232 m!723625))

(assert (=> b!780232 m!723625))

(declare-fun m!723667 () Bool)

(assert (=> b!780232 m!723667))

(declare-fun m!723669 () Bool)

(assert (=> b!780232 m!723669))

(declare-fun m!723671 () Bool)

(assert (=> b!780232 m!723671))

(push 1)


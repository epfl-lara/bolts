; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67390 () Bool)

(assert start!67390)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42574 0))(
  ( (array!42575 (arr!20376 (Array (_ BitVec 32) (_ BitVec 64))) (size!20797 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42574)

(declare-fun e!433566 () Bool)

(declare-fun b!779320 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7983 0))(
  ( (MissingZero!7983 (index!34299 (_ BitVec 32))) (Found!7983 (index!34300 (_ BitVec 32))) (Intermediate!7983 (undefined!8795 Bool) (index!34301 (_ BitVec 32)) (x!65273 (_ BitVec 32))) (Undefined!7983) (MissingVacant!7983 (index!34302 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42574 (_ BitVec 32)) SeekEntryResult!7983)

(assert (=> b!779320 (= e!433566 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20376 a!3186) j!159) a!3186 mask!3328) (Found!7983 j!159)))))

(declare-fun b!779321 () Bool)

(declare-fun res!527454 () Bool)

(declare-fun e!433560 () Bool)

(assert (=> b!779321 (=> (not res!527454) (not e!433560))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!779321 (= res!527454 (validKeyInArray!0 k!2102))))

(declare-fun b!779322 () Bool)

(declare-fun e!433563 () Bool)

(assert (=> b!779322 (= e!433563 true)))

(declare-fun lt!347278 () SeekEntryResult!7983)

(declare-fun lt!347284 () SeekEntryResult!7983)

(assert (=> b!779322 (= lt!347278 lt!347284)))

(declare-fun b!779323 () Bool)

(declare-fun res!527453 () Bool)

(declare-fun e!433562 () Bool)

(assert (=> b!779323 (=> (not res!527453) (not e!433562))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42574 (_ BitVec 32)) Bool)

(assert (=> b!779323 (= res!527453 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!779325 () Bool)

(declare-fun e!433564 () Bool)

(declare-fun e!433559 () Bool)

(assert (=> b!779325 (= e!433564 e!433559)))

(declare-fun res!527450 () Bool)

(assert (=> b!779325 (=> (not res!527450) (not e!433559))))

(declare-fun lt!347283 () SeekEntryResult!7983)

(declare-fun lt!347275 () SeekEntryResult!7983)

(assert (=> b!779325 (= res!527450 (= lt!347283 lt!347275))))

(declare-fun lt!347280 () (_ BitVec 64))

(declare-fun lt!347276 () array!42574)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42574 (_ BitVec 32)) SeekEntryResult!7983)

(assert (=> b!779325 (= lt!347275 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347280 lt!347276 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!779325 (= lt!347283 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347280 mask!3328) lt!347280 lt!347276 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!779325 (= lt!347280 (select (store (arr!20376 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!779325 (= lt!347276 (array!42575 (store (arr!20376 a!3186) i!1173 k!2102) (size!20797 a!3186)))))

(declare-fun lt!347281 () SeekEntryResult!7983)

(declare-fun e!433561 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!779326 () Bool)

(assert (=> b!779326 (= e!433561 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20376 a!3186) j!159) a!3186 mask!3328) lt!347281))))

(declare-fun b!779327 () Bool)

(declare-fun res!527444 () Bool)

(assert (=> b!779327 (=> (not res!527444) (not e!433562))))

(assert (=> b!779327 (= res!527444 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20797 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20797 a!3186))))))

(declare-fun b!779328 () Bool)

(declare-fun res!527442 () Bool)

(assert (=> b!779328 (=> (not res!527442) (not e!433564))))

(assert (=> b!779328 (= res!527442 e!433566)))

(declare-fun c!86343 () Bool)

(assert (=> b!779328 (= c!86343 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!779329 () Bool)

(declare-fun res!527445 () Bool)

(assert (=> b!779329 (=> (not res!527445) (not e!433560))))

(assert (=> b!779329 (= res!527445 (and (= (size!20797 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20797 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20797 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!779330 () Bool)

(assert (=> b!779330 (= e!433560 e!433562)))

(declare-fun res!527441 () Bool)

(assert (=> b!779330 (=> (not res!527441) (not e!433562))))

(declare-fun lt!347279 () SeekEntryResult!7983)

(assert (=> b!779330 (= res!527441 (or (= lt!347279 (MissingZero!7983 i!1173)) (= lt!347279 (MissingVacant!7983 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42574 (_ BitVec 32)) SeekEntryResult!7983)

(assert (=> b!779330 (= lt!347279 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!779331 () Bool)

(declare-fun lt!347282 () SeekEntryResult!7983)

(assert (=> b!779331 (= e!433566 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20376 a!3186) j!159) a!3186 mask!3328) lt!347282))))

(declare-fun b!779332 () Bool)

(declare-fun e!433567 () Bool)

(assert (=> b!779332 (= e!433559 (not e!433567))))

(declare-fun res!527443 () Bool)

(assert (=> b!779332 (=> res!527443 e!433567)))

(assert (=> b!779332 (= res!527443 (or (not (is-Intermediate!7983 lt!347275)) (bvslt x!1131 (x!65273 lt!347275)) (not (= x!1131 (x!65273 lt!347275))) (not (= index!1321 (index!34301 lt!347275)))))))

(assert (=> b!779332 e!433561))

(declare-fun res!527448 () Bool)

(assert (=> b!779332 (=> (not res!527448) (not e!433561))))

(assert (=> b!779332 (= res!527448 (= lt!347278 lt!347281))))

(assert (=> b!779332 (= lt!347281 (Found!7983 j!159))))

(assert (=> b!779332 (= lt!347278 (seekEntryOrOpen!0 (select (arr!20376 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!779332 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26860 0))(
  ( (Unit!26861) )
))
(declare-fun lt!347277 () Unit!26860)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42574 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26860)

(assert (=> b!779332 (= lt!347277 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!779333 () Bool)

(assert (=> b!779333 (= e!433562 e!433564)))

(declare-fun res!527440 () Bool)

(assert (=> b!779333 (=> (not res!527440) (not e!433564))))

(assert (=> b!779333 (= res!527440 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20376 a!3186) j!159) mask!3328) (select (arr!20376 a!3186) j!159) a!3186 mask!3328) lt!347282))))

(assert (=> b!779333 (= lt!347282 (Intermediate!7983 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!779334 () Bool)

(declare-fun res!527452 () Bool)

(assert (=> b!779334 (=> (not res!527452) (not e!433560))))

(declare-fun arrayContainsKey!0 (array!42574 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!779334 (= res!527452 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!779335 () Bool)

(declare-fun res!527451 () Bool)

(assert (=> b!779335 (=> (not res!527451) (not e!433560))))

(assert (=> b!779335 (= res!527451 (validKeyInArray!0 (select (arr!20376 a!3186) j!159)))))

(declare-fun b!779324 () Bool)

(declare-fun res!527449 () Bool)

(assert (=> b!779324 (=> (not res!527449) (not e!433562))))

(declare-datatypes ((List!14431 0))(
  ( (Nil!14428) (Cons!14427 (h!15541 (_ BitVec 64)) (t!20754 List!14431)) )
))
(declare-fun arrayNoDuplicates!0 (array!42574 (_ BitVec 32) List!14431) Bool)

(assert (=> b!779324 (= res!527449 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14428))))

(declare-fun res!527446 () Bool)

(assert (=> start!67390 (=> (not res!527446) (not e!433560))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67390 (= res!527446 (validMask!0 mask!3328))))

(assert (=> start!67390 e!433560))

(assert (=> start!67390 true))

(declare-fun array_inv!16150 (array!42574) Bool)

(assert (=> start!67390 (array_inv!16150 a!3186)))

(declare-fun b!779336 () Bool)

(declare-fun res!527455 () Bool)

(assert (=> b!779336 (=> (not res!527455) (not e!433564))))

(assert (=> b!779336 (= res!527455 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20376 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!779337 () Bool)

(assert (=> b!779337 (= e!433567 e!433563)))

(declare-fun res!527447 () Bool)

(assert (=> b!779337 (=> res!527447 e!433563)))

(assert (=> b!779337 (= res!527447 (or (not (= lt!347284 lt!347281)) (= (select (store (arr!20376 a!3186) i!1173 k!2102) index!1321) lt!347280) (not (= (select (store (arr!20376 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!779337 (= lt!347284 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20376 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and start!67390 res!527446) b!779329))

(assert (= (and b!779329 res!527445) b!779335))

(assert (= (and b!779335 res!527451) b!779321))

(assert (= (and b!779321 res!527454) b!779334))

(assert (= (and b!779334 res!527452) b!779330))

(assert (= (and b!779330 res!527441) b!779323))

(assert (= (and b!779323 res!527453) b!779324))

(assert (= (and b!779324 res!527449) b!779327))

(assert (= (and b!779327 res!527444) b!779333))

(assert (= (and b!779333 res!527440) b!779336))

(assert (= (and b!779336 res!527455) b!779328))

(assert (= (and b!779328 c!86343) b!779331))

(assert (= (and b!779328 (not c!86343)) b!779320))

(assert (= (and b!779328 res!527442) b!779325))

(assert (= (and b!779325 res!527450) b!779332))

(assert (= (and b!779332 res!527448) b!779326))

(assert (= (and b!779332 (not res!527443)) b!779337))

(assert (= (and b!779337 (not res!527447)) b!779322))

(declare-fun m!722911 () Bool)

(assert (=> b!779336 m!722911))

(declare-fun m!722913 () Bool)

(assert (=> b!779330 m!722913))

(declare-fun m!722915 () Bool)

(assert (=> b!779321 m!722915))

(declare-fun m!722917 () Bool)

(assert (=> b!779331 m!722917))

(assert (=> b!779331 m!722917))

(declare-fun m!722919 () Bool)

(assert (=> b!779331 m!722919))

(declare-fun m!722921 () Bool)

(assert (=> b!779324 m!722921))

(assert (=> b!779335 m!722917))

(assert (=> b!779335 m!722917))

(declare-fun m!722923 () Bool)

(assert (=> b!779335 m!722923))

(declare-fun m!722925 () Bool)

(assert (=> b!779337 m!722925))

(declare-fun m!722927 () Bool)

(assert (=> b!779337 m!722927))

(assert (=> b!779337 m!722917))

(assert (=> b!779337 m!722917))

(declare-fun m!722929 () Bool)

(assert (=> b!779337 m!722929))

(declare-fun m!722931 () Bool)

(assert (=> start!67390 m!722931))

(declare-fun m!722933 () Bool)

(assert (=> start!67390 m!722933))

(assert (=> b!779326 m!722917))

(assert (=> b!779326 m!722917))

(declare-fun m!722935 () Bool)

(assert (=> b!779326 m!722935))

(declare-fun m!722937 () Bool)

(assert (=> b!779323 m!722937))

(assert (=> b!779333 m!722917))

(assert (=> b!779333 m!722917))

(declare-fun m!722939 () Bool)

(assert (=> b!779333 m!722939))

(assert (=> b!779333 m!722939))

(assert (=> b!779333 m!722917))

(declare-fun m!722941 () Bool)

(assert (=> b!779333 m!722941))

(declare-fun m!722943 () Bool)

(assert (=> b!779334 m!722943))

(declare-fun m!722945 () Bool)

(assert (=> b!779325 m!722945))

(declare-fun m!722947 () Bool)

(assert (=> b!779325 m!722947))

(declare-fun m!722949 () Bool)

(assert (=> b!779325 m!722949))

(assert (=> b!779325 m!722925))

(declare-fun m!722951 () Bool)

(assert (=> b!779325 m!722951))

(assert (=> b!779325 m!722947))

(assert (=> b!779332 m!722917))

(assert (=> b!779332 m!722917))

(declare-fun m!722953 () Bool)

(assert (=> b!779332 m!722953))

(declare-fun m!722955 () Bool)

(assert (=> b!779332 m!722955))

(declare-fun m!722957 () Bool)

(assert (=> b!779332 m!722957))

(assert (=> b!779320 m!722917))

(assert (=> b!779320 m!722917))

(assert (=> b!779320 m!722929))

(push 1)


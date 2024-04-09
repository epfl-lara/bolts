; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64124 () Bool)

(assert start!64124)

(declare-fun b!720004 () Bool)

(declare-fun res!482530 () Bool)

(declare-fun e!403880 () Bool)

(assert (=> b!720004 (=> (not res!482530) (not e!403880))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!720004 (= res!482530 (validKeyInArray!0 k!2102))))

(declare-fun b!720005 () Bool)

(declare-fun res!482522 () Bool)

(assert (=> b!720005 (=> (not res!482522) (not e!403880))))

(declare-datatypes ((array!40772 0))(
  ( (array!40773 (arr!19508 (Array (_ BitVec 32) (_ BitVec 64))) (size!19929 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40772)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!720005 (= res!482522 (validKeyInArray!0 (select (arr!19508 a!3186) j!159)))))

(declare-fun b!720006 () Bool)

(declare-fun res!482532 () Bool)

(declare-fun e!403883 () Bool)

(assert (=> b!720006 (=> (not res!482532) (not e!403883))))

(declare-datatypes ((List!13563 0))(
  ( (Nil!13560) (Cons!13559 (h!14607 (_ BitVec 64)) (t!19886 List!13563)) )
))
(declare-fun arrayNoDuplicates!0 (array!40772 (_ BitVec 32) List!13563) Bool)

(assert (=> b!720006 (= res!482532 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13560))))

(declare-fun b!720007 () Bool)

(declare-fun res!482523 () Bool)

(assert (=> b!720007 (=> (not res!482523) (not e!403883))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40772 (_ BitVec 32)) Bool)

(assert (=> b!720007 (= res!482523 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-datatypes ((SeekEntryResult!7115 0))(
  ( (MissingZero!7115 (index!30827 (_ BitVec 32))) (Found!7115 (index!30828 (_ BitVec 32))) (Intermediate!7115 (undefined!7927 Bool) (index!30829 (_ BitVec 32)) (x!61851 (_ BitVec 32))) (Undefined!7115) (MissingVacant!7115 (index!30830 (_ BitVec 32))) )
))
(declare-fun lt!319675 () SeekEntryResult!7115)

(declare-fun e!403884 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!720008 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40772 (_ BitVec 32)) SeekEntryResult!7115)

(assert (=> b!720008 (= e!403884 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19508 a!3186) j!159) a!3186 mask!3328) lt!319675))))

(declare-fun b!720009 () Bool)

(assert (=> b!720009 (= e!403880 e!403883)))

(declare-fun res!482531 () Bool)

(assert (=> b!720009 (=> (not res!482531) (not e!403883))))

(declare-fun lt!319676 () SeekEntryResult!7115)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!720009 (= res!482531 (or (= lt!319676 (MissingZero!7115 i!1173)) (= lt!319676 (MissingVacant!7115 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40772 (_ BitVec 32)) SeekEntryResult!7115)

(assert (=> b!720009 (= lt!319676 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!720010 () Bool)

(declare-fun res!482525 () Bool)

(assert (=> b!720010 (=> (not res!482525) (not e!403883))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!720010 (= res!482525 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19929 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19929 a!3186))))))

(declare-fun b!720011 () Bool)

(declare-fun res!482524 () Bool)

(assert (=> b!720011 (=> (not res!482524) (not e!403880))))

(declare-fun arrayContainsKey!0 (array!40772 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!720011 (= res!482524 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!720012 () Bool)

(declare-fun res!482521 () Bool)

(assert (=> b!720012 (=> (not res!482521) (not e!403880))))

(assert (=> b!720012 (= res!482521 (and (= (size!19929 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19929 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19929 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!720013 () Bool)

(declare-fun e!403881 () Bool)

(assert (=> b!720013 (= e!403881 (bvslt mask!3328 #b00000000000000000000000000000000))))

(declare-fun b!720014 () Bool)

(declare-fun res!482527 () Bool)

(assert (=> b!720014 (=> (not res!482527) (not e!403881))))

(assert (=> b!720014 (= res!482527 e!403884)))

(declare-fun c!79110 () Bool)

(assert (=> b!720014 (= c!79110 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!720016 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40772 (_ BitVec 32)) SeekEntryResult!7115)

(assert (=> b!720016 (= e!403884 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19508 a!3186) j!159) a!3186 mask!3328) (Found!7115 j!159)))))

(declare-fun b!720017 () Bool)

(assert (=> b!720017 (= e!403883 e!403881)))

(declare-fun res!482526 () Bool)

(assert (=> b!720017 (=> (not res!482526) (not e!403881))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!720017 (= res!482526 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19508 a!3186) j!159) mask!3328) (select (arr!19508 a!3186) j!159) a!3186 mask!3328) lt!319675))))

(assert (=> b!720017 (= lt!319675 (Intermediate!7115 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!482529 () Bool)

(assert (=> start!64124 (=> (not res!482529) (not e!403880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64124 (= res!482529 (validMask!0 mask!3328))))

(assert (=> start!64124 e!403880))

(assert (=> start!64124 true))

(declare-fun array_inv!15282 (array!40772) Bool)

(assert (=> start!64124 (array_inv!15282 a!3186)))

(declare-fun b!720015 () Bool)

(declare-fun res!482528 () Bool)

(assert (=> b!720015 (=> (not res!482528) (not e!403881))))

(assert (=> b!720015 (= res!482528 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19508 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!64124 res!482529) b!720012))

(assert (= (and b!720012 res!482521) b!720005))

(assert (= (and b!720005 res!482522) b!720004))

(assert (= (and b!720004 res!482530) b!720011))

(assert (= (and b!720011 res!482524) b!720009))

(assert (= (and b!720009 res!482531) b!720007))

(assert (= (and b!720007 res!482523) b!720006))

(assert (= (and b!720006 res!482532) b!720010))

(assert (= (and b!720010 res!482525) b!720017))

(assert (= (and b!720017 res!482526) b!720015))

(assert (= (and b!720015 res!482528) b!720014))

(assert (= (and b!720014 c!79110) b!720008))

(assert (= (and b!720014 (not c!79110)) b!720016))

(assert (= (and b!720014 res!482527) b!720013))

(declare-fun m!675357 () Bool)

(assert (=> b!720004 m!675357))

(declare-fun m!675359 () Bool)

(assert (=> b!720016 m!675359))

(assert (=> b!720016 m!675359))

(declare-fun m!675361 () Bool)

(assert (=> b!720016 m!675361))

(declare-fun m!675363 () Bool)

(assert (=> start!64124 m!675363))

(declare-fun m!675365 () Bool)

(assert (=> start!64124 m!675365))

(assert (=> b!720005 m!675359))

(assert (=> b!720005 m!675359))

(declare-fun m!675367 () Bool)

(assert (=> b!720005 m!675367))

(assert (=> b!720008 m!675359))

(assert (=> b!720008 m!675359))

(declare-fun m!675369 () Bool)

(assert (=> b!720008 m!675369))

(declare-fun m!675371 () Bool)

(assert (=> b!720015 m!675371))

(declare-fun m!675373 () Bool)

(assert (=> b!720006 m!675373))

(declare-fun m!675375 () Bool)

(assert (=> b!720007 m!675375))

(assert (=> b!720017 m!675359))

(assert (=> b!720017 m!675359))

(declare-fun m!675377 () Bool)

(assert (=> b!720017 m!675377))

(assert (=> b!720017 m!675377))

(assert (=> b!720017 m!675359))

(declare-fun m!675379 () Bool)

(assert (=> b!720017 m!675379))

(declare-fun m!675381 () Bool)

(assert (=> b!720011 m!675381))

(declare-fun m!675383 () Bool)

(assert (=> b!720009 m!675383))

(push 1)

(assert (not b!720006))

(assert (not b!720004))

(assert (not b!720009))

(assert (not b!720005))

(assert (not start!64124))

(assert (not b!720007))

(assert (not b!720011))


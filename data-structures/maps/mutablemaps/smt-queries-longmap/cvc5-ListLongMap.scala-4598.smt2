; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64120 () Bool)

(assert start!64120)

(declare-fun b!719920 () Bool)

(declare-fun res!482457 () Bool)

(declare-fun e!403851 () Bool)

(assert (=> b!719920 (=> (not res!482457) (not e!403851))))

(declare-datatypes ((array!40768 0))(
  ( (array!40769 (arr!19506 (Array (_ BitVec 32) (_ BitVec 64))) (size!19927 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40768)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719920 (= res!482457 (validKeyInArray!0 (select (arr!19506 a!3186) j!159)))))

(declare-fun b!719921 () Bool)

(declare-fun res!482459 () Bool)

(assert (=> b!719921 (=> (not res!482459) (not e!403851))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!719921 (= res!482459 (and (= (size!19927 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19927 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19927 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719922 () Bool)

(declare-fun res!482454 () Bool)

(declare-fun e!403854 () Bool)

(assert (=> b!719922 (=> (not res!482454) (not e!403854))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!719922 (= res!482454 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19506 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!719923 () Bool)

(declare-fun res!482456 () Bool)

(assert (=> b!719923 (=> (not res!482456) (not e!403854))))

(declare-fun e!403850 () Bool)

(assert (=> b!719923 (= res!482456 e!403850)))

(declare-fun c!79104 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719923 (= c!79104 (bvsle x!1131 resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!719924 () Bool)

(declare-datatypes ((SeekEntryResult!7113 0))(
  ( (MissingZero!7113 (index!30819 (_ BitVec 32))) (Found!7113 (index!30820 (_ BitVec 32))) (Intermediate!7113 (undefined!7925 Bool) (index!30821 (_ BitVec 32)) (x!61849 (_ BitVec 32))) (Undefined!7113) (MissingVacant!7113 (index!30822 (_ BitVec 32))) )
))
(declare-fun lt!319664 () SeekEntryResult!7113)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40768 (_ BitVec 32)) SeekEntryResult!7113)

(assert (=> b!719924 (= e!403850 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19506 a!3186) j!159) a!3186 mask!3328) lt!319664))))

(declare-fun b!719925 () Bool)

(declare-fun e!403852 () Bool)

(assert (=> b!719925 (= e!403851 e!403852)))

(declare-fun res!482450 () Bool)

(assert (=> b!719925 (=> (not res!482450) (not e!403852))))

(declare-fun lt!319663 () SeekEntryResult!7113)

(assert (=> b!719925 (= res!482450 (or (= lt!319663 (MissingZero!7113 i!1173)) (= lt!319663 (MissingVacant!7113 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40768 (_ BitVec 32)) SeekEntryResult!7113)

(assert (=> b!719925 (= lt!319663 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!482455 () Bool)

(assert (=> start!64120 (=> (not res!482455) (not e!403851))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64120 (= res!482455 (validMask!0 mask!3328))))

(assert (=> start!64120 e!403851))

(assert (=> start!64120 true))

(declare-fun array_inv!15280 (array!40768) Bool)

(assert (=> start!64120 (array_inv!15280 a!3186)))

(declare-fun b!719926 () Bool)

(declare-fun res!482458 () Bool)

(assert (=> b!719926 (=> (not res!482458) (not e!403852))))

(assert (=> b!719926 (= res!482458 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19927 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19927 a!3186))))))

(declare-fun b!719927 () Bool)

(declare-fun res!482452 () Bool)

(assert (=> b!719927 (=> (not res!482452) (not e!403852))))

(declare-datatypes ((List!13561 0))(
  ( (Nil!13558) (Cons!13557 (h!14605 (_ BitVec 64)) (t!19884 List!13561)) )
))
(declare-fun arrayNoDuplicates!0 (array!40768 (_ BitVec 32) List!13561) Bool)

(assert (=> b!719927 (= res!482452 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13558))))

(declare-fun b!719928 () Bool)

(declare-fun res!482449 () Bool)

(assert (=> b!719928 (=> (not res!482449) (not e!403852))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40768 (_ BitVec 32)) Bool)

(assert (=> b!719928 (= res!482449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719929 () Bool)

(assert (=> b!719929 (= e!403854 (bvslt mask!3328 #b00000000000000000000000000000000))))

(declare-fun b!719930 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40768 (_ BitVec 32)) SeekEntryResult!7113)

(assert (=> b!719930 (= e!403850 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19506 a!3186) j!159) a!3186 mask!3328) (Found!7113 j!159)))))

(declare-fun b!719931 () Bool)

(declare-fun res!482453 () Bool)

(assert (=> b!719931 (=> (not res!482453) (not e!403851))))

(declare-fun arrayContainsKey!0 (array!40768 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719931 (= res!482453 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719932 () Bool)

(assert (=> b!719932 (= e!403852 e!403854)))

(declare-fun res!482460 () Bool)

(assert (=> b!719932 (=> (not res!482460) (not e!403854))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719932 (= res!482460 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19506 a!3186) j!159) mask!3328) (select (arr!19506 a!3186) j!159) a!3186 mask!3328) lt!319664))))

(assert (=> b!719932 (= lt!319664 (Intermediate!7113 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!719933 () Bool)

(declare-fun res!482451 () Bool)

(assert (=> b!719933 (=> (not res!482451) (not e!403851))))

(assert (=> b!719933 (= res!482451 (validKeyInArray!0 k!2102))))

(assert (= (and start!64120 res!482455) b!719921))

(assert (= (and b!719921 res!482459) b!719920))

(assert (= (and b!719920 res!482457) b!719933))

(assert (= (and b!719933 res!482451) b!719931))

(assert (= (and b!719931 res!482453) b!719925))

(assert (= (and b!719925 res!482450) b!719928))

(assert (= (and b!719928 res!482449) b!719927))

(assert (= (and b!719927 res!482452) b!719926))

(assert (= (and b!719926 res!482458) b!719932))

(assert (= (and b!719932 res!482460) b!719922))

(assert (= (and b!719922 res!482454) b!719923))

(assert (= (and b!719923 c!79104) b!719924))

(assert (= (and b!719923 (not c!79104)) b!719930))

(assert (= (and b!719923 res!482456) b!719929))

(declare-fun m!675301 () Bool)

(assert (=> b!719927 m!675301))

(declare-fun m!675303 () Bool)

(assert (=> b!719928 m!675303))

(declare-fun m!675305 () Bool)

(assert (=> b!719920 m!675305))

(assert (=> b!719920 m!675305))

(declare-fun m!675307 () Bool)

(assert (=> b!719920 m!675307))

(declare-fun m!675309 () Bool)

(assert (=> b!719925 m!675309))

(declare-fun m!675311 () Bool)

(assert (=> start!64120 m!675311))

(declare-fun m!675313 () Bool)

(assert (=> start!64120 m!675313))

(assert (=> b!719932 m!675305))

(assert (=> b!719932 m!675305))

(declare-fun m!675315 () Bool)

(assert (=> b!719932 m!675315))

(assert (=> b!719932 m!675315))

(assert (=> b!719932 m!675305))

(declare-fun m!675317 () Bool)

(assert (=> b!719932 m!675317))

(assert (=> b!719924 m!675305))

(assert (=> b!719924 m!675305))

(declare-fun m!675319 () Bool)

(assert (=> b!719924 m!675319))

(assert (=> b!719930 m!675305))

(assert (=> b!719930 m!675305))

(declare-fun m!675321 () Bool)

(assert (=> b!719930 m!675321))

(declare-fun m!675323 () Bool)

(assert (=> b!719933 m!675323))

(declare-fun m!675325 () Bool)

(assert (=> b!719931 m!675325))

(declare-fun m!675327 () Bool)

(assert (=> b!719922 m!675327))

(push 1)


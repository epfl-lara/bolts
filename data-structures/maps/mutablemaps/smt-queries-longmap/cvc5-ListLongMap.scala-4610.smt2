; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64312 () Bool)

(assert start!64312)

(declare-fun b!722051 () Bool)

(declare-fun res!483946 () Bool)

(declare-fun e!404789 () Bool)

(assert (=> b!722051 (=> (not res!483946) (not e!404789))))

(declare-datatypes ((array!40846 0))(
  ( (array!40847 (arr!19542 (Array (_ BitVec 32) (_ BitVec 64))) (size!19963 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40846)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40846 (_ BitVec 32)) Bool)

(assert (=> b!722051 (= res!483946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722052 () Bool)

(declare-fun res!483939 () Bool)

(declare-fun e!404793 () Bool)

(assert (=> b!722052 (=> (not res!483939) (not e!404793))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722052 (= res!483939 (validKeyInArray!0 (select (arr!19542 a!3186) j!159)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!722053 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!404792 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7149 0))(
  ( (MissingZero!7149 (index!30963 (_ BitVec 32))) (Found!7149 (index!30964 (_ BitVec 32))) (Intermediate!7149 (undefined!7961 Bool) (index!30965 (_ BitVec 32)) (x!61999 (_ BitVec 32))) (Undefined!7149) (MissingVacant!7149 (index!30966 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40846 (_ BitVec 32)) SeekEntryResult!7149)

(assert (=> b!722053 (= e!404792 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19542 a!3186) j!159) a!3186 mask!3328) (Found!7149 j!159))))))

(declare-fun b!722054 () Bool)

(declare-fun res!483938 () Bool)

(declare-fun e!404791 () Bool)

(assert (=> b!722054 (=> (not res!483938) (not e!404791))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!722054 (= res!483938 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19542 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!722055 () Bool)

(assert (=> b!722055 (= e!404789 e!404791)))

(declare-fun res!483942 () Bool)

(assert (=> b!722055 (=> (not res!483942) (not e!404791))))

(declare-fun lt!320188 () SeekEntryResult!7149)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40846 (_ BitVec 32)) SeekEntryResult!7149)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722055 (= res!483942 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19542 a!3186) j!159) mask!3328) (select (arr!19542 a!3186) j!159) a!3186 mask!3328) lt!320188))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722055 (= lt!320188 (Intermediate!7149 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!722056 () Bool)

(declare-fun res!483940 () Bool)

(assert (=> b!722056 (=> (not res!483940) (not e!404789))))

(declare-datatypes ((List!13597 0))(
  ( (Nil!13594) (Cons!13593 (h!14647 (_ BitVec 64)) (t!19920 List!13597)) )
))
(declare-fun arrayNoDuplicates!0 (array!40846 (_ BitVec 32) List!13597) Bool)

(assert (=> b!722056 (= res!483940 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13594))))

(declare-fun res!483947 () Bool)

(assert (=> start!64312 (=> (not res!483947) (not e!404793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64312 (= res!483947 (validMask!0 mask!3328))))

(assert (=> start!64312 e!404793))

(assert (=> start!64312 true))

(declare-fun array_inv!15316 (array!40846) Bool)

(assert (=> start!64312 (array_inv!15316 a!3186)))

(declare-fun b!722057 () Bool)

(assert (=> b!722057 (= e!404791 false)))

(declare-fun lt!320187 () Bool)

(assert (=> b!722057 (= lt!320187 e!404792)))

(declare-fun c!79428 () Bool)

(assert (=> b!722057 (= c!79428 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!722058 () Bool)

(declare-fun res!483941 () Bool)

(assert (=> b!722058 (=> (not res!483941) (not e!404793))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!722058 (= res!483941 (validKeyInArray!0 k!2102))))

(declare-fun b!722059 () Bool)

(declare-fun res!483944 () Bool)

(assert (=> b!722059 (=> (not res!483944) (not e!404789))))

(assert (=> b!722059 (= res!483944 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19963 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19963 a!3186))))))

(declare-fun b!722060 () Bool)

(declare-fun res!483943 () Bool)

(assert (=> b!722060 (=> (not res!483943) (not e!404793))))

(assert (=> b!722060 (= res!483943 (and (= (size!19963 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19963 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19963 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!722061 () Bool)

(assert (=> b!722061 (= e!404793 e!404789)))

(declare-fun res!483948 () Bool)

(assert (=> b!722061 (=> (not res!483948) (not e!404789))))

(declare-fun lt!320189 () SeekEntryResult!7149)

(assert (=> b!722061 (= res!483948 (or (= lt!320189 (MissingZero!7149 i!1173)) (= lt!320189 (MissingVacant!7149 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40846 (_ BitVec 32)) SeekEntryResult!7149)

(assert (=> b!722061 (= lt!320189 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!722062 () Bool)

(assert (=> b!722062 (= e!404792 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19542 a!3186) j!159) a!3186 mask!3328) lt!320188)))))

(declare-fun b!722063 () Bool)

(declare-fun res!483945 () Bool)

(assert (=> b!722063 (=> (not res!483945) (not e!404793))))

(declare-fun arrayContainsKey!0 (array!40846 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722063 (= res!483945 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64312 res!483947) b!722060))

(assert (= (and b!722060 res!483943) b!722052))

(assert (= (and b!722052 res!483939) b!722058))

(assert (= (and b!722058 res!483941) b!722063))

(assert (= (and b!722063 res!483945) b!722061))

(assert (= (and b!722061 res!483948) b!722051))

(assert (= (and b!722051 res!483946) b!722056))

(assert (= (and b!722056 res!483940) b!722059))

(assert (= (and b!722059 res!483944) b!722055))

(assert (= (and b!722055 res!483942) b!722054))

(assert (= (and b!722054 res!483938) b!722057))

(assert (= (and b!722057 c!79428) b!722062))

(assert (= (and b!722057 (not c!79428)) b!722053))

(declare-fun m!676747 () Bool)

(assert (=> b!722062 m!676747))

(assert (=> b!722062 m!676747))

(declare-fun m!676749 () Bool)

(assert (=> b!722062 m!676749))

(assert (=> b!722055 m!676747))

(assert (=> b!722055 m!676747))

(declare-fun m!676751 () Bool)

(assert (=> b!722055 m!676751))

(assert (=> b!722055 m!676751))

(assert (=> b!722055 m!676747))

(declare-fun m!676753 () Bool)

(assert (=> b!722055 m!676753))

(declare-fun m!676755 () Bool)

(assert (=> b!722058 m!676755))

(declare-fun m!676757 () Bool)

(assert (=> b!722054 m!676757))

(assert (=> b!722053 m!676747))

(assert (=> b!722053 m!676747))

(declare-fun m!676759 () Bool)

(assert (=> b!722053 m!676759))

(declare-fun m!676761 () Bool)

(assert (=> b!722051 m!676761))

(declare-fun m!676763 () Bool)

(assert (=> b!722061 m!676763))

(declare-fun m!676765 () Bool)

(assert (=> b!722056 m!676765))

(declare-fun m!676767 () Bool)

(assert (=> start!64312 m!676767))

(declare-fun m!676769 () Bool)

(assert (=> start!64312 m!676769))

(declare-fun m!676771 () Bool)

(assert (=> b!722063 m!676771))

(assert (=> b!722052 m!676747))

(assert (=> b!722052 m!676747))

(declare-fun m!676773 () Bool)

(assert (=> b!722052 m!676773))

(push 1)


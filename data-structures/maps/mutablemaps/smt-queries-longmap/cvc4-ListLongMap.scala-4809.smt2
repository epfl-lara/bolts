; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66216 () Bool)

(assert start!66216)

(declare-fun b!762093 () Bool)

(declare-fun res!515374 () Bool)

(declare-fun e!424868 () Bool)

(assert (=> b!762093 (=> (not res!515374) (not e!424868))))

(declare-datatypes ((array!42074 0))(
  ( (array!42075 (arr!20141 (Array (_ BitVec 32) (_ BitVec 64))) (size!20562 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42074)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762093 (= res!515374 (validKeyInArray!0 (select (arr!20141 a!3186) j!159)))))

(declare-fun res!515375 () Bool)

(assert (=> start!66216 (=> (not res!515375) (not e!424868))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66216 (= res!515375 (validMask!0 mask!3328))))

(assert (=> start!66216 e!424868))

(assert (=> start!66216 true))

(declare-fun array_inv!15915 (array!42074) Bool)

(assert (=> start!66216 (array_inv!15915 a!3186)))

(declare-fun b!762094 () Bool)

(declare-fun res!515382 () Bool)

(assert (=> b!762094 (=> (not res!515382) (not e!424868))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42074 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762094 (= res!515382 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762095 () Bool)

(declare-fun res!515379 () Bool)

(declare-fun e!424867 () Bool)

(assert (=> b!762095 (=> (not res!515379) (not e!424867))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42074 (_ BitVec 32)) Bool)

(assert (=> b!762095 (= res!515379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762096 () Bool)

(assert (=> b!762096 (= e!424867 false)))

(declare-fun lt!339478 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762096 (= lt!339478 (toIndex!0 (select (arr!20141 a!3186) j!159) mask!3328))))

(declare-fun b!762097 () Bool)

(declare-fun res!515381 () Bool)

(assert (=> b!762097 (=> (not res!515381) (not e!424867))))

(declare-datatypes ((List!14196 0))(
  ( (Nil!14193) (Cons!14192 (h!15276 (_ BitVec 64)) (t!20519 List!14196)) )
))
(declare-fun arrayNoDuplicates!0 (array!42074 (_ BitVec 32) List!14196) Bool)

(assert (=> b!762097 (= res!515381 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14193))))

(declare-fun b!762098 () Bool)

(assert (=> b!762098 (= e!424868 e!424867)))

(declare-fun res!515377 () Bool)

(assert (=> b!762098 (=> (not res!515377) (not e!424867))))

(declare-datatypes ((SeekEntryResult!7748 0))(
  ( (MissingZero!7748 (index!33359 (_ BitVec 32))) (Found!7748 (index!33360 (_ BitVec 32))) (Intermediate!7748 (undefined!8560 Bool) (index!33361 (_ BitVec 32)) (x!64297 (_ BitVec 32))) (Undefined!7748) (MissingVacant!7748 (index!33362 (_ BitVec 32))) )
))
(declare-fun lt!339477 () SeekEntryResult!7748)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762098 (= res!515377 (or (= lt!339477 (MissingZero!7748 i!1173)) (= lt!339477 (MissingVacant!7748 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42074 (_ BitVec 32)) SeekEntryResult!7748)

(assert (=> b!762098 (= lt!339477 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!762099 () Bool)

(declare-fun res!515378 () Bool)

(assert (=> b!762099 (=> (not res!515378) (not e!424868))))

(assert (=> b!762099 (= res!515378 (validKeyInArray!0 k!2102))))

(declare-fun b!762100 () Bool)

(declare-fun res!515376 () Bool)

(assert (=> b!762100 (=> (not res!515376) (not e!424867))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762100 (= res!515376 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20562 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20562 a!3186))))))

(declare-fun b!762101 () Bool)

(declare-fun res!515380 () Bool)

(assert (=> b!762101 (=> (not res!515380) (not e!424868))))

(assert (=> b!762101 (= res!515380 (and (= (size!20562 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20562 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20562 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!66216 res!515375) b!762101))

(assert (= (and b!762101 res!515380) b!762093))

(assert (= (and b!762093 res!515374) b!762099))

(assert (= (and b!762099 res!515378) b!762094))

(assert (= (and b!762094 res!515382) b!762098))

(assert (= (and b!762098 res!515377) b!762095))

(assert (= (and b!762095 res!515379) b!762097))

(assert (= (and b!762097 res!515381) b!762100))

(assert (= (and b!762100 res!515376) b!762096))

(declare-fun m!708957 () Bool)

(assert (=> b!762094 m!708957))

(declare-fun m!708959 () Bool)

(assert (=> b!762093 m!708959))

(assert (=> b!762093 m!708959))

(declare-fun m!708961 () Bool)

(assert (=> b!762093 m!708961))

(declare-fun m!708963 () Bool)

(assert (=> b!762099 m!708963))

(declare-fun m!708965 () Bool)

(assert (=> b!762097 m!708965))

(declare-fun m!708967 () Bool)

(assert (=> start!66216 m!708967))

(declare-fun m!708969 () Bool)

(assert (=> start!66216 m!708969))

(declare-fun m!708971 () Bool)

(assert (=> b!762095 m!708971))

(declare-fun m!708973 () Bool)

(assert (=> b!762098 m!708973))

(assert (=> b!762096 m!708959))

(assert (=> b!762096 m!708959))

(declare-fun m!708975 () Bool)

(assert (=> b!762096 m!708975))

(push 1)

(assert (not b!762094))

(assert (not b!762098))

(assert (not b!762093))

(assert (not b!762095))

(assert (not b!762097))


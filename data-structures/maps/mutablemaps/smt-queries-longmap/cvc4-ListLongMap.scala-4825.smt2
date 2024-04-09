; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66312 () Bool)

(assert start!66312)

(declare-fun b!763932 () Bool)

(declare-fun e!425551 () Bool)

(declare-fun e!425548 () Bool)

(assert (=> b!763932 (= e!425551 e!425548)))

(declare-fun res!516991 () Bool)

(assert (=> b!763932 (=> (not res!516991) (not e!425548))))

(declare-fun lt!339980 () (_ BitVec 64))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!42170 0))(
  ( (array!42171 (arr!20189 (Array (_ BitVec 32) (_ BitVec 64))) (size!20610 (_ BitVec 32))) )
))
(declare-fun lt!339979 () array!42170)

(declare-datatypes ((SeekEntryResult!7796 0))(
  ( (MissingZero!7796 (index!33551 (_ BitVec 32))) (Found!7796 (index!33552 (_ BitVec 32))) (Intermediate!7796 (undefined!8608 Bool) (index!33553 (_ BitVec 32)) (x!64473 (_ BitVec 32))) (Undefined!7796) (MissingVacant!7796 (index!33554 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42170 (_ BitVec 32)) SeekEntryResult!7796)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763932 (= res!516991 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339980 mask!3328) lt!339980 lt!339979 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339980 lt!339979 mask!3328)))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun a!3186 () array!42170)

(assert (=> b!763932 (= lt!339980 (select (store (arr!20189 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!763932 (= lt!339979 (array!42171 (store (arr!20189 a!3186) i!1173 k!2102) (size!20610 a!3186)))))

(declare-fun b!763933 () Bool)

(declare-fun res!516987 () Bool)

(declare-fun e!425547 () Bool)

(assert (=> b!763933 (=> (not res!516987) (not e!425547))))

(declare-fun arrayContainsKey!0 (array!42170 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763933 (= res!516987 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!763934 () Bool)

(declare-fun res!516993 () Bool)

(declare-fun e!425552 () Bool)

(assert (=> b!763934 (=> (not res!516993) (not e!425552))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42170 (_ BitVec 32)) Bool)

(assert (=> b!763934 (= res!516993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!763935 () Bool)

(assert (=> b!763935 (= e!425547 e!425552)))

(declare-fun res!516983 () Bool)

(assert (=> b!763935 (=> (not res!516983) (not e!425552))))

(declare-fun lt!339982 () SeekEntryResult!7796)

(assert (=> b!763935 (= res!516983 (or (= lt!339982 (MissingZero!7796 i!1173)) (= lt!339982 (MissingVacant!7796 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42170 (_ BitVec 32)) SeekEntryResult!7796)

(assert (=> b!763935 (= lt!339982 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!763936 () Bool)

(declare-fun res!516985 () Bool)

(assert (=> b!763936 (=> (not res!516985) (not e!425551))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!763936 (= res!516985 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20189 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!763937 () Bool)

(declare-fun res!516992 () Bool)

(assert (=> b!763937 (=> (not res!516992) (not e!425552))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763937 (= res!516992 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20610 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20610 a!3186))))))

(declare-fun b!763938 () Bool)

(declare-fun res!516990 () Bool)

(assert (=> b!763938 (=> (not res!516990) (not e!425552))))

(declare-datatypes ((List!14244 0))(
  ( (Nil!14241) (Cons!14240 (h!15324 (_ BitVec 64)) (t!20567 List!14244)) )
))
(declare-fun arrayNoDuplicates!0 (array!42170 (_ BitVec 32) List!14244) Bool)

(assert (=> b!763938 (= res!516990 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14241))))

(declare-fun b!763939 () Bool)

(assert (=> b!763939 (= e!425552 e!425551)))

(declare-fun res!516986 () Bool)

(assert (=> b!763939 (=> (not res!516986) (not e!425551))))

(declare-fun lt!339981 () SeekEntryResult!7796)

(assert (=> b!763939 (= res!516986 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20189 a!3186) j!159) mask!3328) (select (arr!20189 a!3186) j!159) a!3186 mask!3328) lt!339981))))

(assert (=> b!763939 (= lt!339981 (Intermediate!7796 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!763940 () Bool)

(assert (=> b!763940 (= e!425548 (and (bvsle #b00000000000000000000000000000000 (size!20610 a!3186)) (bvsgt j!159 (size!20610 a!3186))))))

(declare-fun b!763941 () Bool)

(declare-fun res!516984 () Bool)

(assert (=> b!763941 (=> (not res!516984) (not e!425551))))

(declare-fun e!425549 () Bool)

(assert (=> b!763941 (= res!516984 e!425549)))

(declare-fun c!83862 () Bool)

(assert (=> b!763941 (= c!83862 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!763942 () Bool)

(declare-fun res!516988 () Bool)

(assert (=> b!763942 (=> (not res!516988) (not e!425547))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763942 (= res!516988 (validKeyInArray!0 k!2102))))

(declare-fun b!763943 () Bool)

(assert (=> b!763943 (= e!425549 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20189 a!3186) j!159) a!3186 mask!3328) lt!339981))))

(declare-fun b!763944 () Bool)

(declare-fun res!516989 () Bool)

(assert (=> b!763944 (=> (not res!516989) (not e!425547))))

(assert (=> b!763944 (= res!516989 (and (= (size!20610 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20610 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20610 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!516981 () Bool)

(assert (=> start!66312 (=> (not res!516981) (not e!425547))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66312 (= res!516981 (validMask!0 mask!3328))))

(assert (=> start!66312 e!425547))

(assert (=> start!66312 true))

(declare-fun array_inv!15963 (array!42170) Bool)

(assert (=> start!66312 (array_inv!15963 a!3186)))

(declare-fun b!763945 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42170 (_ BitVec 32)) SeekEntryResult!7796)

(assert (=> b!763945 (= e!425549 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20189 a!3186) j!159) a!3186 mask!3328) (Found!7796 j!159)))))

(declare-fun b!763946 () Bool)

(declare-fun res!516982 () Bool)

(assert (=> b!763946 (=> (not res!516982) (not e!425547))))

(assert (=> b!763946 (= res!516982 (validKeyInArray!0 (select (arr!20189 a!3186) j!159)))))

(assert (= (and start!66312 res!516981) b!763944))

(assert (= (and b!763944 res!516989) b!763946))

(assert (= (and b!763946 res!516982) b!763942))

(assert (= (and b!763942 res!516988) b!763933))

(assert (= (and b!763933 res!516987) b!763935))

(assert (= (and b!763935 res!516983) b!763934))

(assert (= (and b!763934 res!516993) b!763938))

(assert (= (and b!763938 res!516990) b!763937))

(assert (= (and b!763937 res!516992) b!763939))

(assert (= (and b!763939 res!516986) b!763936))

(assert (= (and b!763936 res!516985) b!763941))

(assert (= (and b!763941 c!83862) b!763943))

(assert (= (and b!763941 (not c!83862)) b!763945))

(assert (= (and b!763941 res!516984) b!763932))

(assert (= (and b!763932 res!516991) b!763940))

(declare-fun m!710415 () Bool)

(assert (=> b!763933 m!710415))

(declare-fun m!710417 () Bool)

(assert (=> b!763932 m!710417))

(declare-fun m!710419 () Bool)

(assert (=> b!763932 m!710419))

(assert (=> b!763932 m!710417))

(declare-fun m!710421 () Bool)

(assert (=> b!763932 m!710421))

(declare-fun m!710423 () Bool)

(assert (=> b!763932 m!710423))

(declare-fun m!710425 () Bool)

(assert (=> b!763932 m!710425))

(declare-fun m!710427 () Bool)

(assert (=> b!763942 m!710427))

(declare-fun m!710429 () Bool)

(assert (=> b!763935 m!710429))

(declare-fun m!710431 () Bool)

(assert (=> b!763939 m!710431))

(assert (=> b!763939 m!710431))

(declare-fun m!710433 () Bool)

(assert (=> b!763939 m!710433))

(assert (=> b!763939 m!710433))

(assert (=> b!763939 m!710431))

(declare-fun m!710435 () Bool)

(assert (=> b!763939 m!710435))

(assert (=> b!763946 m!710431))

(assert (=> b!763946 m!710431))

(declare-fun m!710437 () Bool)

(assert (=> b!763946 m!710437))

(declare-fun m!710439 () Bool)

(assert (=> b!763936 m!710439))

(declare-fun m!710441 () Bool)

(assert (=> start!66312 m!710441))

(declare-fun m!710443 () Bool)

(assert (=> start!66312 m!710443))

(declare-fun m!710445 () Bool)

(assert (=> b!763934 m!710445))

(assert (=> b!763943 m!710431))

(assert (=> b!763943 m!710431))

(declare-fun m!710447 () Bool)

(assert (=> b!763943 m!710447))

(declare-fun m!710449 () Bool)

(assert (=> b!763938 m!710449))

(assert (=> b!763945 m!710431))

(assert (=> b!763945 m!710431))

(declare-fun m!710451 () Bool)

(assert (=> b!763945 m!710451))

(push 1)

(assert (not b!763934))

(assert (not b!763935))

(assert (not b!763933))

(assert (not b!763939))

(assert (not start!66312))

(assert (not b!763943))

(assert (not b!763942))

(assert (not b!763945))

(assert (not b!763938))

(assert (not b!763932))

(assert (not b!763946))

(check-sat)

(pop 1)

(push 1)

(check-sat)


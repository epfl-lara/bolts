; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63968 () Bool)

(assert start!63968)

(declare-fun b!718308 () Bool)

(declare-fun res!480933 () Bool)

(declare-fun e!403272 () Bool)

(assert (=> b!718308 (=> (not res!480933) (not e!403272))))

(declare-datatypes ((array!40661 0))(
  ( (array!40662 (arr!19454 (Array (_ BitVec 32) (_ BitVec 64))) (size!19875 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40661)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40661 (_ BitVec 32)) Bool)

(assert (=> b!718308 (= res!480933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718309 () Bool)

(declare-fun res!480936 () Bool)

(declare-fun e!403271 () Bool)

(assert (=> b!718309 (=> (not res!480936) (not e!403271))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718309 (= res!480936 (validKeyInArray!0 (select (arr!19454 a!3186) j!159)))))

(declare-fun b!718310 () Bool)

(declare-fun res!480930 () Bool)

(assert (=> b!718310 (=> (not res!480930) (not e!403271))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40661 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718310 (= res!480930 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718311 () Bool)

(assert (=> b!718311 (= e!403271 e!403272)))

(declare-fun res!480934 () Bool)

(assert (=> b!718311 (=> (not res!480934) (not e!403272))))

(declare-datatypes ((SeekEntryResult!7061 0))(
  ( (MissingZero!7061 (index!30611 (_ BitVec 32))) (Found!7061 (index!30612 (_ BitVec 32))) (Intermediate!7061 (undefined!7873 Bool) (index!30613 (_ BitVec 32)) (x!61650 (_ BitVec 32))) (Undefined!7061) (MissingVacant!7061 (index!30614 (_ BitVec 32))) )
))
(declare-fun lt!319325 () SeekEntryResult!7061)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!718311 (= res!480934 (or (= lt!319325 (MissingZero!7061 i!1173)) (= lt!319325 (MissingVacant!7061 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40661 (_ BitVec 32)) SeekEntryResult!7061)

(assert (=> b!718311 (= lt!319325 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!718312 () Bool)

(assert (=> b!718312 (= e!403272 false)))

(declare-fun lt!319324 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718312 (= lt!319324 (toIndex!0 (select (arr!19454 a!3186) j!159) mask!3328))))

(declare-fun res!480929 () Bool)

(assert (=> start!63968 (=> (not res!480929) (not e!403271))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63968 (= res!480929 (validMask!0 mask!3328))))

(assert (=> start!63968 e!403271))

(assert (=> start!63968 true))

(declare-fun array_inv!15228 (array!40661) Bool)

(assert (=> start!63968 (array_inv!15228 a!3186)))

(declare-fun b!718313 () Bool)

(declare-fun res!480935 () Bool)

(assert (=> b!718313 (=> (not res!480935) (not e!403272))))

(declare-datatypes ((List!13509 0))(
  ( (Nil!13506) (Cons!13505 (h!14550 (_ BitVec 64)) (t!19832 List!13509)) )
))
(declare-fun arrayNoDuplicates!0 (array!40661 (_ BitVec 32) List!13509) Bool)

(assert (=> b!718313 (= res!480935 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13506))))

(declare-fun b!718314 () Bool)

(declare-fun res!480928 () Bool)

(assert (=> b!718314 (=> (not res!480928) (not e!403271))))

(assert (=> b!718314 (= res!480928 (validKeyInArray!0 k!2102))))

(declare-fun b!718315 () Bool)

(declare-fun res!480931 () Bool)

(assert (=> b!718315 (=> (not res!480931) (not e!403272))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!718315 (= res!480931 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19875 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19875 a!3186))))))

(declare-fun b!718316 () Bool)

(declare-fun res!480932 () Bool)

(assert (=> b!718316 (=> (not res!480932) (not e!403271))))

(assert (=> b!718316 (= res!480932 (and (= (size!19875 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19875 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19875 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!63968 res!480929) b!718316))

(assert (= (and b!718316 res!480932) b!718309))

(assert (= (and b!718309 res!480936) b!718314))

(assert (= (and b!718314 res!480928) b!718310))

(assert (= (and b!718310 res!480930) b!718311))

(assert (= (and b!718311 res!480934) b!718308))

(assert (= (and b!718308 res!480933) b!718313))

(assert (= (and b!718313 res!480935) b!718315))

(assert (= (and b!718315 res!480931) b!718312))

(declare-fun m!674051 () Bool)

(assert (=> b!718311 m!674051))

(declare-fun m!674053 () Bool)

(assert (=> b!718313 m!674053))

(declare-fun m!674055 () Bool)

(assert (=> b!718308 m!674055))

(declare-fun m!674057 () Bool)

(assert (=> start!63968 m!674057))

(declare-fun m!674059 () Bool)

(assert (=> start!63968 m!674059))

(declare-fun m!674061 () Bool)

(assert (=> b!718312 m!674061))

(assert (=> b!718312 m!674061))

(declare-fun m!674063 () Bool)

(assert (=> b!718312 m!674063))

(declare-fun m!674065 () Bool)

(assert (=> b!718310 m!674065))

(assert (=> b!718309 m!674061))

(assert (=> b!718309 m!674061))

(declare-fun m!674067 () Bool)

(assert (=> b!718309 m!674067))

(declare-fun m!674069 () Bool)

(assert (=> b!718314 m!674069))

(push 1)

(assert (not b!718313))

(assert (not b!718312))

(assert (not b!718310))

(assert (not b!718309))

(assert (not start!63968))

(assert (not b!718311))

(assert (not b!718308))

(assert (not b!718314))

(check-sat)


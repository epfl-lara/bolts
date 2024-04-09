; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64076 () Bool)

(assert start!64076)

(declare-fun b!719289 () Bool)

(declare-fun res!481823 () Bool)

(declare-fun e!403649 () Bool)

(assert (=> b!719289 (=> (not res!481823) (not e!403649))))

(declare-datatypes ((array!40724 0))(
  ( (array!40725 (arr!19484 (Array (_ BitVec 32) (_ BitVec 64))) (size!19905 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40724)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719289 (= res!481823 (validKeyInArray!0 (select (arr!19484 a!3186) j!159)))))

(declare-fun res!481829 () Bool)

(assert (=> start!64076 (=> (not res!481829) (not e!403649))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64076 (= res!481829 (validMask!0 mask!3328))))

(assert (=> start!64076 e!403649))

(assert (=> start!64076 true))

(declare-fun array_inv!15258 (array!40724) Bool)

(assert (=> start!64076 (array_inv!15258 a!3186)))

(declare-fun b!719290 () Bool)

(declare-fun res!481827 () Bool)

(assert (=> b!719290 (=> (not res!481827) (not e!403649))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719290 (= res!481827 (and (= (size!19905 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19905 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19905 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719291 () Bool)

(declare-fun res!481826 () Bool)

(declare-fun e!403648 () Bool)

(assert (=> b!719291 (=> (not res!481826) (not e!403648))))

(declare-datatypes ((List!13539 0))(
  ( (Nil!13536) (Cons!13535 (h!14583 (_ BitVec 64)) (t!19862 List!13539)) )
))
(declare-fun arrayNoDuplicates!0 (array!40724 (_ BitVec 32) List!13539) Bool)

(assert (=> b!719291 (= res!481826 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13536))))

(declare-fun b!719292 () Bool)

(assert (=> b!719292 (= e!403649 e!403648)))

(declare-fun res!481828 () Bool)

(assert (=> b!719292 (=> (not res!481828) (not e!403648))))

(declare-datatypes ((SeekEntryResult!7091 0))(
  ( (MissingZero!7091 (index!30731 (_ BitVec 32))) (Found!7091 (index!30732 (_ BitVec 32))) (Intermediate!7091 (undefined!7903 Bool) (index!30733 (_ BitVec 32)) (x!61763 (_ BitVec 32))) (Undefined!7091) (MissingVacant!7091 (index!30734 (_ BitVec 32))) )
))
(declare-fun lt!319559 () SeekEntryResult!7091)

(assert (=> b!719292 (= res!481828 (or (= lt!319559 (MissingZero!7091 i!1173)) (= lt!319559 (MissingVacant!7091 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40724 (_ BitVec 32)) SeekEntryResult!7091)

(assert (=> b!719292 (= lt!319559 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!719293 () Bool)

(declare-fun res!481830 () Bool)

(assert (=> b!719293 (=> (not res!481830) (not e!403648))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719293 (= res!481830 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19905 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19905 a!3186))))))

(declare-fun b!719294 () Bool)

(declare-fun res!481825 () Bool)

(assert (=> b!719294 (=> (not res!481825) (not e!403648))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40724 (_ BitVec 32)) Bool)

(assert (=> b!719294 (= res!481825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719295 () Bool)

(assert (=> b!719295 (= e!403648 false)))

(declare-fun lt!319558 () SeekEntryResult!7091)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40724 (_ BitVec 32)) SeekEntryResult!7091)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719295 (= lt!319558 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19484 a!3186) j!159) mask!3328) (select (arr!19484 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!719296 () Bool)

(declare-fun res!481822 () Bool)

(assert (=> b!719296 (=> (not res!481822) (not e!403649))))

(declare-fun arrayContainsKey!0 (array!40724 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719296 (= res!481822 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719297 () Bool)

(declare-fun res!481824 () Bool)

(assert (=> b!719297 (=> (not res!481824) (not e!403649))))

(assert (=> b!719297 (= res!481824 (validKeyInArray!0 k!2102))))

(assert (= (and start!64076 res!481829) b!719290))

(assert (= (and b!719290 res!481827) b!719289))

(assert (= (and b!719289 res!481823) b!719297))

(assert (= (and b!719297 res!481824) b!719296))

(assert (= (and b!719296 res!481822) b!719292))

(assert (= (and b!719292 res!481828) b!719294))

(assert (= (and b!719294 res!481825) b!719291))

(assert (= (and b!719291 res!481826) b!719293))

(assert (= (and b!719293 res!481830) b!719295))

(declare-fun m!674799 () Bool)

(assert (=> b!719292 m!674799))

(declare-fun m!674801 () Bool)

(assert (=> b!719295 m!674801))

(assert (=> b!719295 m!674801))

(declare-fun m!674803 () Bool)

(assert (=> b!719295 m!674803))

(assert (=> b!719295 m!674803))

(assert (=> b!719295 m!674801))

(declare-fun m!674805 () Bool)

(assert (=> b!719295 m!674805))

(declare-fun m!674807 () Bool)

(assert (=> b!719291 m!674807))

(declare-fun m!674809 () Bool)

(assert (=> b!719296 m!674809))

(declare-fun m!674811 () Bool)

(assert (=> start!64076 m!674811))

(declare-fun m!674813 () Bool)

(assert (=> start!64076 m!674813))

(declare-fun m!674815 () Bool)

(assert (=> b!719294 m!674815))

(declare-fun m!674817 () Bool)

(assert (=> b!719297 m!674817))

(assert (=> b!719289 m!674801))

(assert (=> b!719289 m!674801))

(declare-fun m!674819 () Bool)

(assert (=> b!719289 m!674819))

(push 1)

(assert (not b!719292))

(assert (not b!719295))

(assert (not b!719296))

(assert (not b!719289))

(assert (not start!64076))

(assert (not b!719297))

(assert (not b!719291))

(assert (not b!719294))


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64082 () Bool)

(assert start!64082)

(declare-fun b!719379 () Bool)

(declare-fun res!481920 () Bool)

(declare-fun e!403675 () Bool)

(assert (=> b!719379 (=> (not res!481920) (not e!403675))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40730 0))(
  ( (array!40731 (arr!19487 (Array (_ BitVec 32) (_ BitVec 64))) (size!19908 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40730)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719379 (= res!481920 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19908 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19908 a!3186))))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun b!719380 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!719380 (= e!403675 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19487 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsgt x!1131 resIntermediateX!5) (bvslt mask!3328 #b00000000000000000000000000000000)))))

(declare-fun b!719381 () Bool)

(declare-fun res!481912 () Bool)

(assert (=> b!719381 (=> (not res!481912) (not e!403675))))

(declare-datatypes ((List!13542 0))(
  ( (Nil!13539) (Cons!13538 (h!14586 (_ BitVec 64)) (t!19865 List!13542)) )
))
(declare-fun arrayNoDuplicates!0 (array!40730 (_ BitVec 32) List!13542) Bool)

(assert (=> b!719381 (= res!481912 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13539))))

(declare-fun b!719382 () Bool)

(declare-fun res!481918 () Bool)

(declare-fun e!403677 () Bool)

(assert (=> b!719382 (=> (not res!481918) (not e!403677))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719382 (= res!481918 (validKeyInArray!0 (select (arr!19487 a!3186) j!159)))))

(declare-fun b!719383 () Bool)

(declare-fun res!481913 () Bool)

(assert (=> b!719383 (=> (not res!481913) (not e!403677))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40730 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719383 (= res!481913 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719384 () Bool)

(declare-fun res!481917 () Bool)

(assert (=> b!719384 (=> (not res!481917) (not e!403675))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40730 (_ BitVec 32)) Bool)

(assert (=> b!719384 (= res!481917 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719385 () Bool)

(declare-fun res!481914 () Bool)

(assert (=> b!719385 (=> (not res!481914) (not e!403675))))

(declare-datatypes ((SeekEntryResult!7094 0))(
  ( (MissingZero!7094 (index!30743 (_ BitVec 32))) (Found!7094 (index!30744 (_ BitVec 32))) (Intermediate!7094 (undefined!7906 Bool) (index!30745 (_ BitVec 32)) (x!61774 (_ BitVec 32))) (Undefined!7094) (MissingVacant!7094 (index!30746 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40730 (_ BitVec 32)) SeekEntryResult!7094)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719385 (= res!481914 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19487 a!3186) j!159) mask!3328) (select (arr!19487 a!3186) j!159) a!3186 mask!3328) (Intermediate!7094 false resIntermediateIndex!5 resIntermediateX!5)))))

(declare-fun res!481916 () Bool)

(assert (=> start!64082 (=> (not res!481916) (not e!403677))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64082 (= res!481916 (validMask!0 mask!3328))))

(assert (=> start!64082 e!403677))

(assert (=> start!64082 true))

(declare-fun array_inv!15261 (array!40730) Bool)

(assert (=> start!64082 (array_inv!15261 a!3186)))

(declare-fun b!719378 () Bool)

(assert (=> b!719378 (= e!403677 e!403675)))

(declare-fun res!481919 () Bool)

(assert (=> b!719378 (=> (not res!481919) (not e!403675))))

(declare-fun lt!319568 () SeekEntryResult!7094)

(assert (=> b!719378 (= res!481919 (or (= lt!319568 (MissingZero!7094 i!1173)) (= lt!319568 (MissingVacant!7094 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40730 (_ BitVec 32)) SeekEntryResult!7094)

(assert (=> b!719378 (= lt!319568 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!719386 () Bool)

(declare-fun res!481911 () Bool)

(assert (=> b!719386 (=> (not res!481911) (not e!403677))))

(assert (=> b!719386 (= res!481911 (validKeyInArray!0 k!2102))))

(declare-fun b!719387 () Bool)

(declare-fun res!481915 () Bool)

(assert (=> b!719387 (=> (not res!481915) (not e!403677))))

(assert (=> b!719387 (= res!481915 (and (= (size!19908 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19908 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19908 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!64082 res!481916) b!719387))

(assert (= (and b!719387 res!481915) b!719382))

(assert (= (and b!719382 res!481918) b!719386))

(assert (= (and b!719386 res!481911) b!719383))

(assert (= (and b!719383 res!481913) b!719378))

(assert (= (and b!719378 res!481919) b!719384))

(assert (= (and b!719384 res!481917) b!719381))

(assert (= (and b!719381 res!481912) b!719379))

(assert (= (and b!719379 res!481920) b!719385))

(assert (= (and b!719385 res!481914) b!719380))

(declare-fun m!674869 () Bool)

(assert (=> b!719384 m!674869))

(declare-fun m!674871 () Bool)

(assert (=> b!719380 m!674871))

(declare-fun m!674873 () Bool)

(assert (=> b!719382 m!674873))

(assert (=> b!719382 m!674873))

(declare-fun m!674875 () Bool)

(assert (=> b!719382 m!674875))

(declare-fun m!674877 () Bool)

(assert (=> b!719383 m!674877))

(declare-fun m!674879 () Bool)

(assert (=> b!719386 m!674879))

(declare-fun m!674881 () Bool)

(assert (=> b!719381 m!674881))

(assert (=> b!719385 m!674873))

(assert (=> b!719385 m!674873))

(declare-fun m!674883 () Bool)

(assert (=> b!719385 m!674883))

(assert (=> b!719385 m!674883))

(assert (=> b!719385 m!674873))

(declare-fun m!674885 () Bool)

(assert (=> b!719385 m!674885))

(declare-fun m!674887 () Bool)

(assert (=> start!64082 m!674887))

(declare-fun m!674889 () Bool)

(assert (=> start!64082 m!674889))

(declare-fun m!674891 () Bool)

(assert (=> b!719378 m!674891))

(push 1)

(assert (not b!719386))

(assert (not start!64082))

(assert (not b!719383))

(assert (not b!719382))

(assert (not b!719385))

(assert (not b!719381))

(assert (not b!719378))

(assert (not b!719384))

(check-sat)

(pop 1)


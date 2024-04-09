; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63952 () Bool)

(assert start!63952)

(declare-fun b!718092 () Bool)

(declare-fun e!403200 () Bool)

(assert (=> b!718092 (= e!403200 false)))

(declare-datatypes ((array!40645 0))(
  ( (array!40646 (arr!19446 (Array (_ BitVec 32) (_ BitVec 64))) (size!19867 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40645)

(declare-fun lt!319276 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718092 (= lt!319276 (toIndex!0 (select (arr!19446 a!3186) j!159) mask!3328))))

(declare-fun res!480717 () Bool)

(declare-fun e!403199 () Bool)

(assert (=> start!63952 (=> (not res!480717) (not e!403199))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63952 (= res!480717 (validMask!0 mask!3328))))

(assert (=> start!63952 e!403199))

(assert (=> start!63952 true))

(declare-fun array_inv!15220 (array!40645) Bool)

(assert (=> start!63952 (array_inv!15220 a!3186)))

(declare-fun b!718093 () Bool)

(declare-fun res!480714 () Bool)

(assert (=> b!718093 (=> (not res!480714) (not e!403199))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40645 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718093 (= res!480714 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718094 () Bool)

(declare-fun res!480716 () Bool)

(assert (=> b!718094 (=> (not res!480716) (not e!403200))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40645 (_ BitVec 32)) Bool)

(assert (=> b!718094 (= res!480716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718095 () Bool)

(assert (=> b!718095 (= e!403199 e!403200)))

(declare-fun res!480719 () Bool)

(assert (=> b!718095 (=> (not res!480719) (not e!403200))))

(declare-datatypes ((SeekEntryResult!7053 0))(
  ( (MissingZero!7053 (index!30579 (_ BitVec 32))) (Found!7053 (index!30580 (_ BitVec 32))) (Intermediate!7053 (undefined!7865 Bool) (index!30581 (_ BitVec 32)) (x!61626 (_ BitVec 32))) (Undefined!7053) (MissingVacant!7053 (index!30582 (_ BitVec 32))) )
))
(declare-fun lt!319277 () SeekEntryResult!7053)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!718095 (= res!480719 (or (= lt!319277 (MissingZero!7053 i!1173)) (= lt!319277 (MissingVacant!7053 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40645 (_ BitVec 32)) SeekEntryResult!7053)

(assert (=> b!718095 (= lt!319277 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!718096 () Bool)

(declare-fun res!480712 () Bool)

(assert (=> b!718096 (=> (not res!480712) (not e!403200))))

(declare-datatypes ((List!13501 0))(
  ( (Nil!13498) (Cons!13497 (h!14542 (_ BitVec 64)) (t!19824 List!13501)) )
))
(declare-fun arrayNoDuplicates!0 (array!40645 (_ BitVec 32) List!13501) Bool)

(assert (=> b!718096 (= res!480712 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13498))))

(declare-fun b!718097 () Bool)

(declare-fun res!480713 () Bool)

(assert (=> b!718097 (=> (not res!480713) (not e!403199))))

(assert (=> b!718097 (= res!480713 (and (= (size!19867 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19867 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19867 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!718098 () Bool)

(declare-fun res!480720 () Bool)

(assert (=> b!718098 (=> (not res!480720) (not e!403199))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718098 (= res!480720 (validKeyInArray!0 (select (arr!19446 a!3186) j!159)))))

(declare-fun b!718099 () Bool)

(declare-fun res!480715 () Bool)

(assert (=> b!718099 (=> (not res!480715) (not e!403200))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!718099 (= res!480715 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19867 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19867 a!3186))))))

(declare-fun b!718100 () Bool)

(declare-fun res!480718 () Bool)

(assert (=> b!718100 (=> (not res!480718) (not e!403199))))

(assert (=> b!718100 (= res!480718 (validKeyInArray!0 k!2102))))

(assert (= (and start!63952 res!480717) b!718097))

(assert (= (and b!718097 res!480713) b!718098))

(assert (= (and b!718098 res!480720) b!718100))

(assert (= (and b!718100 res!480718) b!718093))

(assert (= (and b!718093 res!480714) b!718095))

(assert (= (and b!718095 res!480719) b!718094))

(assert (= (and b!718094 res!480716) b!718096))

(assert (= (and b!718096 res!480712) b!718099))

(assert (= (and b!718099 res!480715) b!718092))

(declare-fun m!673891 () Bool)

(assert (=> b!718100 m!673891))

(declare-fun m!673893 () Bool)

(assert (=> b!718092 m!673893))

(assert (=> b!718092 m!673893))

(declare-fun m!673895 () Bool)

(assert (=> b!718092 m!673895))

(declare-fun m!673897 () Bool)

(assert (=> b!718095 m!673897))

(declare-fun m!673899 () Bool)

(assert (=> b!718094 m!673899))

(assert (=> b!718098 m!673893))

(assert (=> b!718098 m!673893))

(declare-fun m!673901 () Bool)

(assert (=> b!718098 m!673901))

(declare-fun m!673903 () Bool)

(assert (=> b!718093 m!673903))

(declare-fun m!673905 () Bool)

(assert (=> start!63952 m!673905))

(declare-fun m!673907 () Bool)

(assert (=> start!63952 m!673907))

(declare-fun m!673909 () Bool)

(assert (=> b!718096 m!673909))

(push 1)


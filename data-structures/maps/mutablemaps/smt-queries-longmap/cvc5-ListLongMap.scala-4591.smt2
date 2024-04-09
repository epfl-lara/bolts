; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64078 () Bool)

(assert start!64078)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40726 0))(
  ( (array!40727 (arr!19485 (Array (_ BitVec 32) (_ BitVec 64))) (size!19906 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40726)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun b!719318 () Bool)

(declare-fun e!403657 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!719318 (= e!403657 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19485 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsgt x!1131 resIntermediateX!5) (bvslt mask!3328 #b00000000000000000000000000000000)))))

(declare-fun b!719319 () Bool)

(declare-fun res!481855 () Bool)

(declare-fun e!403658 () Bool)

(assert (=> b!719319 (=> (not res!481855) (not e!403658))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40726 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719319 (= res!481855 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719320 () Bool)

(assert (=> b!719320 (= e!403658 e!403657)))

(declare-fun res!481858 () Bool)

(assert (=> b!719320 (=> (not res!481858) (not e!403657))))

(declare-datatypes ((SeekEntryResult!7092 0))(
  ( (MissingZero!7092 (index!30735 (_ BitVec 32))) (Found!7092 (index!30736 (_ BitVec 32))) (Intermediate!7092 (undefined!7904 Bool) (index!30737 (_ BitVec 32)) (x!61772 (_ BitVec 32))) (Undefined!7092) (MissingVacant!7092 (index!30738 (_ BitVec 32))) )
))
(declare-fun lt!319562 () SeekEntryResult!7092)

(assert (=> b!719320 (= res!481858 (or (= lt!319562 (MissingZero!7092 i!1173)) (= lt!319562 (MissingVacant!7092 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40726 (_ BitVec 32)) SeekEntryResult!7092)

(assert (=> b!719320 (= lt!319562 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!719321 () Bool)

(declare-fun res!481857 () Bool)

(assert (=> b!719321 (=> (not res!481857) (not e!403658))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719321 (= res!481857 (validKeyInArray!0 (select (arr!19485 a!3186) j!159)))))

(declare-fun res!481851 () Bool)

(assert (=> start!64078 (=> (not res!481851) (not e!403658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64078 (= res!481851 (validMask!0 mask!3328))))

(assert (=> start!64078 e!403658))

(assert (=> start!64078 true))

(declare-fun array_inv!15259 (array!40726) Bool)

(assert (=> start!64078 (array_inv!15259 a!3186)))

(declare-fun b!719322 () Bool)

(declare-fun res!481859 () Bool)

(assert (=> b!719322 (=> (not res!481859) (not e!403657))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40726 (_ BitVec 32)) SeekEntryResult!7092)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719322 (= res!481859 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19485 a!3186) j!159) mask!3328) (select (arr!19485 a!3186) j!159) a!3186 mask!3328) (Intermediate!7092 false resIntermediateIndex!5 resIntermediateX!5)))))

(declare-fun b!719323 () Bool)

(declare-fun res!481853 () Bool)

(assert (=> b!719323 (=> (not res!481853) (not e!403657))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!719323 (= res!481853 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19906 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19906 a!3186))))))

(declare-fun b!719324 () Bool)

(declare-fun res!481856 () Bool)

(assert (=> b!719324 (=> (not res!481856) (not e!403658))))

(assert (=> b!719324 (= res!481856 (validKeyInArray!0 k!2102))))

(declare-fun b!719325 () Bool)

(declare-fun res!481854 () Bool)

(assert (=> b!719325 (=> (not res!481854) (not e!403657))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40726 (_ BitVec 32)) Bool)

(assert (=> b!719325 (= res!481854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719326 () Bool)

(declare-fun res!481852 () Bool)

(assert (=> b!719326 (=> (not res!481852) (not e!403657))))

(declare-datatypes ((List!13540 0))(
  ( (Nil!13537) (Cons!13536 (h!14584 (_ BitVec 64)) (t!19863 List!13540)) )
))
(declare-fun arrayNoDuplicates!0 (array!40726 (_ BitVec 32) List!13540) Bool)

(assert (=> b!719326 (= res!481852 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13537))))

(declare-fun b!719327 () Bool)

(declare-fun res!481860 () Bool)

(assert (=> b!719327 (=> (not res!481860) (not e!403658))))

(assert (=> b!719327 (= res!481860 (and (= (size!19906 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19906 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19906 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!64078 res!481851) b!719327))

(assert (= (and b!719327 res!481860) b!719321))

(assert (= (and b!719321 res!481857) b!719324))

(assert (= (and b!719324 res!481856) b!719319))

(assert (= (and b!719319 res!481855) b!719320))

(assert (= (and b!719320 res!481858) b!719325))

(assert (= (and b!719325 res!481854) b!719326))

(assert (= (and b!719326 res!481852) b!719323))

(assert (= (and b!719323 res!481853) b!719322))

(assert (= (and b!719322 res!481859) b!719318))

(declare-fun m!674821 () Bool)

(assert (=> start!64078 m!674821))

(declare-fun m!674823 () Bool)

(assert (=> start!64078 m!674823))

(declare-fun m!674825 () Bool)

(assert (=> b!719318 m!674825))

(declare-fun m!674827 () Bool)

(assert (=> b!719319 m!674827))

(declare-fun m!674829 () Bool)

(assert (=> b!719321 m!674829))

(assert (=> b!719321 m!674829))

(declare-fun m!674831 () Bool)

(assert (=> b!719321 m!674831))

(declare-fun m!674833 () Bool)

(assert (=> b!719324 m!674833))

(declare-fun m!674835 () Bool)

(assert (=> b!719320 m!674835))

(declare-fun m!674837 () Bool)

(assert (=> b!719325 m!674837))

(declare-fun m!674839 () Bool)

(assert (=> b!719326 m!674839))

(assert (=> b!719322 m!674829))

(assert (=> b!719322 m!674829))

(declare-fun m!674841 () Bool)

(assert (=> b!719322 m!674841))

(assert (=> b!719322 m!674841))

(assert (=> b!719322 m!674829))

(declare-fun m!674843 () Bool)

(assert (=> b!719322 m!674843))

(push 1)

(assert (not b!719324))

(assert (not b!719321))


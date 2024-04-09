; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66282 () Bool)

(assert start!66282)

(declare-fun b!763286 () Bool)

(declare-fun res!516427 () Bool)

(declare-fun e!425306 () Bool)

(assert (=> b!763286 (=> (not res!516427) (not e!425306))))

(declare-datatypes ((array!42140 0))(
  ( (array!42141 (arr!20174 (Array (_ BitVec 32) (_ BitVec 64))) (size!20595 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42140)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763286 (= res!516427 (validKeyInArray!0 (select (arr!20174 a!3186) j!159)))))

(declare-fun b!763287 () Bool)

(declare-fun e!425309 () Bool)

(declare-fun e!425305 () Bool)

(assert (=> b!763287 (= e!425309 e!425305)))

(declare-fun res!516435 () Bool)

(assert (=> b!763287 (=> (not res!516435) (not e!425305))))

(declare-datatypes ((SeekEntryResult!7781 0))(
  ( (MissingZero!7781 (index!33491 (_ BitVec 32))) (Found!7781 (index!33492 (_ BitVec 32))) (Intermediate!7781 (undefined!8593 Bool) (index!33493 (_ BitVec 32)) (x!64418 (_ BitVec 32))) (Undefined!7781) (MissingVacant!7781 (index!33494 (_ BitVec 32))) )
))
(declare-fun lt!339747 () SeekEntryResult!7781)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42140 (_ BitVec 32)) SeekEntryResult!7781)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763287 (= res!516435 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20174 a!3186) j!159) mask!3328) (select (arr!20174 a!3186) j!159) a!3186 mask!3328) lt!339747))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763287 (= lt!339747 (Intermediate!7781 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!763288 () Bool)

(declare-fun res!516430 () Bool)

(assert (=> b!763288 (=> (not res!516430) (not e!425306))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!763288 (= res!516430 (and (= (size!20595 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20595 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20595 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!763289 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!425307 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!763289 (= e!425307 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20174 a!3186) j!159) a!3186 mask!3328) lt!339747)))))

(declare-fun b!763290 () Bool)

(declare-fun res!516426 () Bool)

(assert (=> b!763290 (=> (not res!516426) (not e!425309))))

(declare-datatypes ((List!14229 0))(
  ( (Nil!14226) (Cons!14225 (h!15309 (_ BitVec 64)) (t!20552 List!14229)) )
))
(declare-fun arrayNoDuplicates!0 (array!42140 (_ BitVec 32) List!14229) Bool)

(assert (=> b!763290 (= res!516426 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14226))))

(declare-fun b!763291 () Bool)

(declare-fun res!516425 () Bool)

(assert (=> b!763291 (=> (not res!516425) (not e!425306))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!763291 (= res!516425 (validKeyInArray!0 k!2102))))

(declare-fun b!763292 () Bool)

(declare-fun res!516428 () Bool)

(assert (=> b!763292 (=> (not res!516428) (not e!425309))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42140 (_ BitVec 32)) Bool)

(assert (=> b!763292 (= res!516428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!763293 () Bool)

(declare-fun res!516431 () Bool)

(assert (=> b!763293 (=> (not res!516431) (not e!425309))))

(assert (=> b!763293 (= res!516431 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20595 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20595 a!3186))))))

(declare-fun res!516434 () Bool)

(assert (=> start!66282 (=> (not res!516434) (not e!425306))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66282 (= res!516434 (validMask!0 mask!3328))))

(assert (=> start!66282 e!425306))

(assert (=> start!66282 true))

(declare-fun array_inv!15948 (array!42140) Bool)

(assert (=> start!66282 (array_inv!15948 a!3186)))

(declare-fun b!763294 () Bool)

(assert (=> b!763294 (= e!425306 e!425309)))

(declare-fun res!516429 () Bool)

(assert (=> b!763294 (=> (not res!516429) (not e!425309))))

(declare-fun lt!339748 () SeekEntryResult!7781)

(assert (=> b!763294 (= res!516429 (or (= lt!339748 (MissingZero!7781 i!1173)) (= lt!339748 (MissingVacant!7781 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42140 (_ BitVec 32)) SeekEntryResult!7781)

(assert (=> b!763294 (= lt!339748 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!763295 () Bool)

(declare-fun res!516432 () Bool)

(assert (=> b!763295 (=> (not res!516432) (not e!425305))))

(assert (=> b!763295 (= res!516432 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20174 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!763296 () Bool)

(declare-fun res!516433 () Bool)

(assert (=> b!763296 (=> (not res!516433) (not e!425306))))

(declare-fun arrayContainsKey!0 (array!42140 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763296 (= res!516433 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!763297 () Bool)

(assert (=> b!763297 (= e!425305 false)))

(declare-fun lt!339746 () Bool)

(assert (=> b!763297 (= lt!339746 e!425307)))

(declare-fun c!83817 () Bool)

(assert (=> b!763297 (= c!83817 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!763298 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42140 (_ BitVec 32)) SeekEntryResult!7781)

(assert (=> b!763298 (= e!425307 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20174 a!3186) j!159) a!3186 mask!3328) (Found!7781 j!159))))))

(assert (= (and start!66282 res!516434) b!763288))

(assert (= (and b!763288 res!516430) b!763286))

(assert (= (and b!763286 res!516427) b!763291))

(assert (= (and b!763291 res!516425) b!763296))

(assert (= (and b!763296 res!516433) b!763294))

(assert (= (and b!763294 res!516429) b!763292))

(assert (= (and b!763292 res!516428) b!763290))

(assert (= (and b!763290 res!516426) b!763293))

(assert (= (and b!763293 res!516431) b!763287))

(assert (= (and b!763287 res!516435) b!763295))

(assert (= (and b!763295 res!516432) b!763297))

(assert (= (and b!763297 c!83817) b!763289))

(assert (= (and b!763297 (not c!83817)) b!763298))

(declare-fun m!709855 () Bool)

(assert (=> b!763294 m!709855))

(declare-fun m!709857 () Bool)

(assert (=> b!763289 m!709857))

(assert (=> b!763289 m!709857))

(declare-fun m!709859 () Bool)

(assert (=> b!763289 m!709859))

(assert (=> b!763287 m!709857))

(assert (=> b!763287 m!709857))

(declare-fun m!709861 () Bool)

(assert (=> b!763287 m!709861))

(assert (=> b!763287 m!709861))

(assert (=> b!763287 m!709857))

(declare-fun m!709863 () Bool)

(assert (=> b!763287 m!709863))

(declare-fun m!709865 () Bool)

(assert (=> start!66282 m!709865))

(declare-fun m!709867 () Bool)

(assert (=> start!66282 m!709867))

(declare-fun m!709869 () Bool)

(assert (=> b!763292 m!709869))

(declare-fun m!709871 () Bool)

(assert (=> b!763295 m!709871))

(declare-fun m!709873 () Bool)

(assert (=> b!763291 m!709873))

(declare-fun m!709875 () Bool)

(assert (=> b!763290 m!709875))

(assert (=> b!763286 m!709857))

(assert (=> b!763286 m!709857))

(declare-fun m!709877 () Bool)

(assert (=> b!763286 m!709877))

(declare-fun m!709879 () Bool)

(assert (=> b!763296 m!709879))

(assert (=> b!763298 m!709857))

(assert (=> b!763298 m!709857))

(declare-fun m!709881 () Bool)

(assert (=> b!763298 m!709881))

(push 1)

(assert (not b!763298))

(assert (not b!763296))

(assert (not b!763292))


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66234 () Bool)

(assert start!66234)

(declare-fun b!762336 () Bool)

(declare-fun e!424949 () Bool)

(declare-fun e!424948 () Bool)

(assert (=> b!762336 (= e!424949 e!424948)))

(declare-fun res!515622 () Bool)

(assert (=> b!762336 (=> (not res!515622) (not e!424948))))

(declare-datatypes ((SeekEntryResult!7757 0))(
  ( (MissingZero!7757 (index!33395 (_ BitVec 32))) (Found!7757 (index!33396 (_ BitVec 32))) (Intermediate!7757 (undefined!8569 Bool) (index!33397 (_ BitVec 32)) (x!64330 (_ BitVec 32))) (Undefined!7757) (MissingVacant!7757 (index!33398 (_ BitVec 32))) )
))
(declare-fun lt!339532 () SeekEntryResult!7757)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762336 (= res!515622 (or (= lt!339532 (MissingZero!7757 i!1173)) (= lt!339532 (MissingVacant!7757 i!1173))))))

(declare-datatypes ((array!42092 0))(
  ( (array!42093 (arr!20150 (Array (_ BitVec 32) (_ BitVec 64))) (size!20571 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42092)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42092 (_ BitVec 32)) SeekEntryResult!7757)

(assert (=> b!762336 (= lt!339532 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!762337 () Bool)

(assert (=> b!762337 (= e!424948 false)))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!339531 () SeekEntryResult!7757)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42092 (_ BitVec 32)) SeekEntryResult!7757)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762337 (= lt!339531 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20150 a!3186) j!159) mask!3328) (select (arr!20150 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!762338 () Bool)

(declare-fun res!515621 () Bool)

(assert (=> b!762338 (=> (not res!515621) (not e!424948))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762338 (= res!515621 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20571 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20571 a!3186))))))

(declare-fun res!515625 () Bool)

(assert (=> start!66234 (=> (not res!515625) (not e!424949))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66234 (= res!515625 (validMask!0 mask!3328))))

(assert (=> start!66234 e!424949))

(assert (=> start!66234 true))

(declare-fun array_inv!15924 (array!42092) Bool)

(assert (=> start!66234 (array_inv!15924 a!3186)))

(declare-fun b!762339 () Bool)

(declare-fun res!515617 () Bool)

(assert (=> b!762339 (=> (not res!515617) (not e!424949))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762339 (= res!515617 (validKeyInArray!0 k!2102))))

(declare-fun b!762340 () Bool)

(declare-fun res!515620 () Bool)

(assert (=> b!762340 (=> (not res!515620) (not e!424948))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42092 (_ BitVec 32)) Bool)

(assert (=> b!762340 (= res!515620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762341 () Bool)

(declare-fun res!515624 () Bool)

(assert (=> b!762341 (=> (not res!515624) (not e!424949))))

(declare-fun arrayContainsKey!0 (array!42092 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762341 (= res!515624 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762342 () Bool)

(declare-fun res!515618 () Bool)

(assert (=> b!762342 (=> (not res!515618) (not e!424949))))

(assert (=> b!762342 (= res!515618 (validKeyInArray!0 (select (arr!20150 a!3186) j!159)))))

(declare-fun b!762343 () Bool)

(declare-fun res!515623 () Bool)

(assert (=> b!762343 (=> (not res!515623) (not e!424949))))

(assert (=> b!762343 (= res!515623 (and (= (size!20571 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20571 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20571 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762344 () Bool)

(declare-fun res!515619 () Bool)

(assert (=> b!762344 (=> (not res!515619) (not e!424948))))

(declare-datatypes ((List!14205 0))(
  ( (Nil!14202) (Cons!14201 (h!15285 (_ BitVec 64)) (t!20528 List!14205)) )
))
(declare-fun arrayNoDuplicates!0 (array!42092 (_ BitVec 32) List!14205) Bool)

(assert (=> b!762344 (= res!515619 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14202))))

(assert (= (and start!66234 res!515625) b!762343))

(assert (= (and b!762343 res!515623) b!762342))

(assert (= (and b!762342 res!515618) b!762339))

(assert (= (and b!762339 res!515617) b!762341))

(assert (= (and b!762341 res!515624) b!762336))

(assert (= (and b!762336 res!515622) b!762340))

(assert (= (and b!762340 res!515620) b!762344))

(assert (= (and b!762344 res!515619) b!762338))

(assert (= (and b!762338 res!515621) b!762337))

(declare-fun m!709153 () Bool)

(assert (=> b!762344 m!709153))

(declare-fun m!709155 () Bool)

(assert (=> b!762339 m!709155))

(declare-fun m!709157 () Bool)

(assert (=> b!762341 m!709157))

(declare-fun m!709159 () Bool)

(assert (=> b!762342 m!709159))

(assert (=> b!762342 m!709159))

(declare-fun m!709161 () Bool)

(assert (=> b!762342 m!709161))

(declare-fun m!709163 () Bool)

(assert (=> b!762336 m!709163))

(declare-fun m!709165 () Bool)

(assert (=> start!66234 m!709165))

(declare-fun m!709167 () Bool)

(assert (=> start!66234 m!709167))

(assert (=> b!762337 m!709159))

(assert (=> b!762337 m!709159))

(declare-fun m!709169 () Bool)

(assert (=> b!762337 m!709169))

(assert (=> b!762337 m!709169))

(assert (=> b!762337 m!709159))

(declare-fun m!709171 () Bool)

(assert (=> b!762337 m!709171))

(declare-fun m!709173 () Bool)

(assert (=> b!762340 m!709173))

(push 1)

(assert (not start!66234))

(assert (not b!762341))

(assert (not b!762344))

(assert (not b!762342))

(assert (not b!762340))

(assert (not b!762337))

(assert (not b!762339))

(assert (not b!762336))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


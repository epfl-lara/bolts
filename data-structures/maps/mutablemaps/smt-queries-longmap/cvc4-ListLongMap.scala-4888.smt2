; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67394 () Bool)

(assert start!67394)

(declare-fun b!779428 () Bool)

(declare-fun res!527550 () Bool)

(declare-fun e!433613 () Bool)

(assert (=> b!779428 (=> (not res!527550) (not e!433613))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42578 0))(
  ( (array!42579 (arr!20378 (Array (_ BitVec 32) (_ BitVec 64))) (size!20799 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42578)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!779428 (= res!527550 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20378 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!779429 () Bool)

(declare-fun res!527547 () Bool)

(declare-fun e!433614 () Bool)

(assert (=> b!779429 (=> (not res!527547) (not e!433614))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!779429 (= res!527547 (and (= (size!20799 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20799 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20799 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!779430 () Bool)

(declare-fun res!527542 () Bool)

(declare-fun e!433621 () Bool)

(assert (=> b!779430 (=> (not res!527542) (not e!433621))))

(declare-datatypes ((List!14433 0))(
  ( (Nil!14430) (Cons!14429 (h!15543 (_ BitVec 64)) (t!20756 List!14433)) )
))
(declare-fun arrayNoDuplicates!0 (array!42578 (_ BitVec 32) List!14433) Bool)

(assert (=> b!779430 (= res!527542 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14430))))

(declare-fun b!779431 () Bool)

(declare-fun res!527539 () Bool)

(assert (=> b!779431 (=> (not res!527539) (not e!433621))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!779431 (= res!527539 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20799 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20799 a!3186))))))

(declare-fun b!779432 () Bool)

(declare-fun res!527536 () Bool)

(assert (=> b!779432 (=> (not res!527536) (not e!433613))))

(declare-fun e!433618 () Bool)

(assert (=> b!779432 (= res!527536 e!433618)))

(declare-fun c!86349 () Bool)

(assert (=> b!779432 (= c!86349 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!779433 () Bool)

(declare-fun e!433620 () Bool)

(assert (=> b!779433 (= e!433613 e!433620)))

(declare-fun res!527549 () Bool)

(assert (=> b!779433 (=> (not res!527549) (not e!433620))))

(declare-datatypes ((SeekEntryResult!7985 0))(
  ( (MissingZero!7985 (index!34307 (_ BitVec 32))) (Found!7985 (index!34308 (_ BitVec 32))) (Intermediate!7985 (undefined!8797 Bool) (index!34309 (_ BitVec 32)) (x!65275 (_ BitVec 32))) (Undefined!7985) (MissingVacant!7985 (index!34310 (_ BitVec 32))) )
))
(declare-fun lt!347337 () SeekEntryResult!7985)

(declare-fun lt!347339 () SeekEntryResult!7985)

(assert (=> b!779433 (= res!527549 (= lt!347337 lt!347339))))

(declare-fun lt!347336 () (_ BitVec 64))

(declare-fun lt!347335 () array!42578)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42578 (_ BitVec 32)) SeekEntryResult!7985)

(assert (=> b!779433 (= lt!347339 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347336 lt!347335 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!779433 (= lt!347337 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347336 mask!3328) lt!347336 lt!347335 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!779433 (= lt!347336 (select (store (arr!20378 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!779433 (= lt!347335 (array!42579 (store (arr!20378 a!3186) i!1173 k!2102) (size!20799 a!3186)))))

(declare-fun b!779434 () Bool)

(declare-fun e!433617 () Bool)

(assert (=> b!779434 (= e!433620 (not e!433617))))

(declare-fun res!527546 () Bool)

(assert (=> b!779434 (=> res!527546 e!433617)))

(assert (=> b!779434 (= res!527546 (or (not (is-Intermediate!7985 lt!347339)) (bvslt x!1131 (x!65275 lt!347339)) (not (= x!1131 (x!65275 lt!347339))) (not (= index!1321 (index!34309 lt!347339)))))))

(declare-fun e!433615 () Bool)

(assert (=> b!779434 e!433615))

(declare-fun res!527548 () Bool)

(assert (=> b!779434 (=> (not res!527548) (not e!433615))))

(declare-fun lt!347342 () SeekEntryResult!7985)

(declare-fun lt!347343 () SeekEntryResult!7985)

(assert (=> b!779434 (= res!527548 (= lt!347342 lt!347343))))

(assert (=> b!779434 (= lt!347343 (Found!7985 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42578 (_ BitVec 32)) SeekEntryResult!7985)

(assert (=> b!779434 (= lt!347342 (seekEntryOrOpen!0 (select (arr!20378 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42578 (_ BitVec 32)) Bool)

(assert (=> b!779434 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26864 0))(
  ( (Unit!26865) )
))
(declare-fun lt!347344 () Unit!26864)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42578 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26864)

(assert (=> b!779434 (= lt!347344 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!779435 () Bool)

(declare-fun e!433616 () Bool)

(assert (=> b!779435 (= e!433616 true)))

(declare-fun lt!347338 () SeekEntryResult!7985)

(assert (=> b!779435 (= lt!347342 lt!347338)))

(declare-fun b!779436 () Bool)

(declare-fun res!527537 () Bool)

(assert (=> b!779436 (=> (not res!527537) (not e!433614))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!779436 (= res!527537 (validKeyInArray!0 (select (arr!20378 a!3186) j!159)))))

(declare-fun b!779437 () Bool)

(assert (=> b!779437 (= e!433621 e!433613)))

(declare-fun res!527541 () Bool)

(assert (=> b!779437 (=> (not res!527541) (not e!433613))))

(declare-fun lt!347340 () SeekEntryResult!7985)

(assert (=> b!779437 (= res!527541 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20378 a!3186) j!159) mask!3328) (select (arr!20378 a!3186) j!159) a!3186 mask!3328) lt!347340))))

(assert (=> b!779437 (= lt!347340 (Intermediate!7985 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!779438 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42578 (_ BitVec 32)) SeekEntryResult!7985)

(assert (=> b!779438 (= e!433618 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20378 a!3186) j!159) a!3186 mask!3328) (Found!7985 j!159)))))

(declare-fun res!527543 () Bool)

(assert (=> start!67394 (=> (not res!527543) (not e!433614))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67394 (= res!527543 (validMask!0 mask!3328))))

(assert (=> start!67394 e!433614))

(assert (=> start!67394 true))

(declare-fun array_inv!16152 (array!42578) Bool)

(assert (=> start!67394 (array_inv!16152 a!3186)))

(declare-fun b!779439 () Bool)

(declare-fun res!527540 () Bool)

(assert (=> b!779439 (=> (not res!527540) (not e!433614))))

(declare-fun arrayContainsKey!0 (array!42578 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!779439 (= res!527540 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!779440 () Bool)

(assert (=> b!779440 (= e!433618 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20378 a!3186) j!159) a!3186 mask!3328) lt!347340))))

(declare-fun b!779441 () Bool)

(assert (=> b!779441 (= e!433617 e!433616)))

(declare-fun res!527545 () Bool)

(assert (=> b!779441 (=> res!527545 e!433616)))

(assert (=> b!779441 (= res!527545 (or (not (= lt!347338 lt!347343)) (= (select (store (arr!20378 a!3186) i!1173 k!2102) index!1321) lt!347336) (not (= (select (store (arr!20378 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!779441 (= lt!347338 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20378 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779442 () Bool)

(assert (=> b!779442 (= e!433615 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20378 a!3186) j!159) a!3186 mask!3328) lt!347343))))

(declare-fun b!779443 () Bool)

(assert (=> b!779443 (= e!433614 e!433621)))

(declare-fun res!527538 () Bool)

(assert (=> b!779443 (=> (not res!527538) (not e!433621))))

(declare-fun lt!347341 () SeekEntryResult!7985)

(assert (=> b!779443 (= res!527538 (or (= lt!347341 (MissingZero!7985 i!1173)) (= lt!347341 (MissingVacant!7985 i!1173))))))

(assert (=> b!779443 (= lt!347341 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!779444 () Bool)

(declare-fun res!527544 () Bool)

(assert (=> b!779444 (=> (not res!527544) (not e!433614))))

(assert (=> b!779444 (= res!527544 (validKeyInArray!0 k!2102))))

(declare-fun b!779445 () Bool)

(declare-fun res!527551 () Bool)

(assert (=> b!779445 (=> (not res!527551) (not e!433621))))

(assert (=> b!779445 (= res!527551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!67394 res!527543) b!779429))

(assert (= (and b!779429 res!527547) b!779436))

(assert (= (and b!779436 res!527537) b!779444))

(assert (= (and b!779444 res!527544) b!779439))

(assert (= (and b!779439 res!527540) b!779443))

(assert (= (and b!779443 res!527538) b!779445))

(assert (= (and b!779445 res!527551) b!779430))

(assert (= (and b!779430 res!527542) b!779431))

(assert (= (and b!779431 res!527539) b!779437))

(assert (= (and b!779437 res!527541) b!779428))

(assert (= (and b!779428 res!527550) b!779432))

(assert (= (and b!779432 c!86349) b!779440))

(assert (= (and b!779432 (not c!86349)) b!779438))

(assert (= (and b!779432 res!527536) b!779433))

(assert (= (and b!779433 res!527549) b!779434))

(assert (= (and b!779434 res!527548) b!779442))

(assert (= (and b!779434 (not res!527546)) b!779441))

(assert (= (and b!779441 (not res!527545)) b!779435))

(declare-fun m!723007 () Bool)

(assert (=> b!779440 m!723007))

(assert (=> b!779440 m!723007))

(declare-fun m!723009 () Bool)

(assert (=> b!779440 m!723009))

(declare-fun m!723011 () Bool)

(assert (=> b!779441 m!723011))

(declare-fun m!723013 () Bool)

(assert (=> b!779441 m!723013))

(assert (=> b!779441 m!723007))

(assert (=> b!779441 m!723007))

(declare-fun m!723015 () Bool)

(assert (=> b!779441 m!723015))

(declare-fun m!723017 () Bool)

(assert (=> b!779430 m!723017))

(assert (=> b!779434 m!723007))

(assert (=> b!779434 m!723007))

(declare-fun m!723019 () Bool)

(assert (=> b!779434 m!723019))

(declare-fun m!723021 () Bool)

(assert (=> b!779434 m!723021))

(declare-fun m!723023 () Bool)

(assert (=> b!779434 m!723023))

(declare-fun m!723025 () Bool)

(assert (=> b!779433 m!723025))

(declare-fun m!723027 () Bool)

(assert (=> b!779433 m!723027))

(declare-fun m!723029 () Bool)

(assert (=> b!779433 m!723029))

(assert (=> b!779433 m!723025))

(assert (=> b!779433 m!723011))

(declare-fun m!723031 () Bool)

(assert (=> b!779433 m!723031))

(assert (=> b!779436 m!723007))

(assert (=> b!779436 m!723007))

(declare-fun m!723033 () Bool)

(assert (=> b!779436 m!723033))

(declare-fun m!723035 () Bool)

(assert (=> b!779445 m!723035))

(assert (=> b!779437 m!723007))

(assert (=> b!779437 m!723007))

(declare-fun m!723037 () Bool)

(assert (=> b!779437 m!723037))

(assert (=> b!779437 m!723037))

(assert (=> b!779437 m!723007))

(declare-fun m!723039 () Bool)

(assert (=> b!779437 m!723039))

(declare-fun m!723041 () Bool)

(assert (=> b!779439 m!723041))

(declare-fun m!723043 () Bool)

(assert (=> b!779443 m!723043))

(assert (=> b!779442 m!723007))

(assert (=> b!779442 m!723007))

(declare-fun m!723045 () Bool)

(assert (=> b!779442 m!723045))

(declare-fun m!723047 () Bool)

(assert (=> start!67394 m!723047))

(declare-fun m!723049 () Bool)

(assert (=> start!67394 m!723049))

(declare-fun m!723051 () Bool)

(assert (=> b!779428 m!723051))

(assert (=> b!779438 m!723007))

(assert (=> b!779438 m!723007))

(assert (=> b!779438 m!723015))

(declare-fun m!723053 () Bool)

(assert (=> b!779444 m!723053))

(push 1)


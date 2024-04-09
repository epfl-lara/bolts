; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64376 () Bool)

(assert start!64376)

(declare-fun b!723432 () Bool)

(declare-fun e!405308 () Bool)

(declare-fun e!405307 () Bool)

(assert (=> b!723432 (= e!405308 e!405307)))

(declare-fun res!485133 () Bool)

(assert (=> b!723432 (=> (not res!485133) (not e!405307))))

(declare-fun lt!320675 () (_ BitVec 64))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((array!40910 0))(
  ( (array!40911 (arr!19574 (Array (_ BitVec 32) (_ BitVec 64))) (size!19995 (_ BitVec 32))) )
))
(declare-fun lt!320671 () array!40910)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7181 0))(
  ( (MissingZero!7181 (index!31091 (_ BitVec 32))) (Found!7181 (index!31092 (_ BitVec 32))) (Intermediate!7181 (undefined!7993 Bool) (index!31093 (_ BitVec 32)) (x!62111 (_ BitVec 32))) (Undefined!7181) (MissingVacant!7181 (index!31094 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40910 (_ BitVec 32)) SeekEntryResult!7181)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!723432 (= res!485133 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320675 mask!3328) lt!320675 lt!320671 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320675 lt!320671 mask!3328)))))

(declare-fun a!3186 () array!40910)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!723432 (= lt!320675 (select (store (arr!19574 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!723432 (= lt!320671 (array!40911 (store (arr!19574 a!3186) i!1173 k!2102) (size!19995 a!3186)))))

(declare-fun b!723433 () Bool)

(declare-fun res!485128 () Bool)

(declare-fun e!405306 () Bool)

(assert (=> b!723433 (=> (not res!485128) (not e!405306))))

(declare-datatypes ((List!13629 0))(
  ( (Nil!13626) (Cons!13625 (h!14679 (_ BitVec 64)) (t!19952 List!13629)) )
))
(declare-fun arrayNoDuplicates!0 (array!40910 (_ BitVec 32) List!13629) Bool)

(assert (=> b!723433 (= res!485128 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13626))))

(declare-fun b!723434 () Bool)

(declare-fun res!485138 () Bool)

(assert (=> b!723434 (=> (not res!485138) (not e!405306))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40910 (_ BitVec 32)) Bool)

(assert (=> b!723434 (= res!485138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!723435 () Bool)

(declare-fun res!485135 () Bool)

(assert (=> b!723435 (=> (not res!485135) (not e!405306))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!723435 (= res!485135 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19995 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19995 a!3186))))))

(declare-fun res!485136 () Bool)

(declare-fun e!405309 () Bool)

(assert (=> start!64376 (=> (not res!485136) (not e!405309))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64376 (= res!485136 (validMask!0 mask!3328))))

(assert (=> start!64376 e!405309))

(assert (=> start!64376 true))

(declare-fun array_inv!15348 (array!40910) Bool)

(assert (=> start!64376 (array_inv!15348 a!3186)))

(declare-fun b!723436 () Bool)

(declare-fun res!485127 () Bool)

(assert (=> b!723436 (=> (not res!485127) (not e!405308))))

(declare-fun e!405305 () Bool)

(assert (=> b!723436 (= res!485127 e!405305)))

(declare-fun c!79524 () Bool)

(assert (=> b!723436 (= c!79524 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!723437 () Bool)

(declare-fun res!485130 () Bool)

(assert (=> b!723437 (=> (not res!485130) (not e!405308))))

(assert (=> b!723437 (= res!485130 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19574 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!723438 () Bool)

(declare-fun res!485139 () Bool)

(assert (=> b!723438 (=> (not res!485139) (not e!405309))))

(declare-fun arrayContainsKey!0 (array!40910 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!723438 (= res!485139 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!723439 () Bool)

(declare-fun res!485137 () Bool)

(assert (=> b!723439 (=> (not res!485137) (not e!405309))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!723439 (= res!485137 (validKeyInArray!0 (select (arr!19574 a!3186) j!159)))))

(declare-fun b!723440 () Bool)

(assert (=> b!723440 (= e!405307 (not true))))

(assert (=> b!723440 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!24680 0))(
  ( (Unit!24681) )
))
(declare-fun lt!320672 () Unit!24680)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40910 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24680)

(assert (=> b!723440 (= lt!320672 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!723441 () Bool)

(assert (=> b!723441 (= e!405306 e!405308)))

(declare-fun res!485129 () Bool)

(assert (=> b!723441 (=> (not res!485129) (not e!405308))))

(declare-fun lt!320674 () SeekEntryResult!7181)

(assert (=> b!723441 (= res!485129 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19574 a!3186) j!159) mask!3328) (select (arr!19574 a!3186) j!159) a!3186 mask!3328) lt!320674))))

(assert (=> b!723441 (= lt!320674 (Intermediate!7181 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!723442 () Bool)

(declare-fun res!485132 () Bool)

(assert (=> b!723442 (=> (not res!485132) (not e!405309))))

(assert (=> b!723442 (= res!485132 (validKeyInArray!0 k!2102))))

(declare-fun b!723443 () Bool)

(assert (=> b!723443 (= e!405305 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19574 a!3186) j!159) a!3186 mask!3328) lt!320674))))

(declare-fun b!723444 () Bool)

(declare-fun res!485134 () Bool)

(assert (=> b!723444 (=> (not res!485134) (not e!405309))))

(assert (=> b!723444 (= res!485134 (and (= (size!19995 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19995 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19995 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!723445 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40910 (_ BitVec 32)) SeekEntryResult!7181)

(assert (=> b!723445 (= e!405305 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19574 a!3186) j!159) a!3186 mask!3328) (Found!7181 j!159)))))

(declare-fun b!723446 () Bool)

(assert (=> b!723446 (= e!405309 e!405306)))

(declare-fun res!485131 () Bool)

(assert (=> b!723446 (=> (not res!485131) (not e!405306))))

(declare-fun lt!320673 () SeekEntryResult!7181)

(assert (=> b!723446 (= res!485131 (or (= lt!320673 (MissingZero!7181 i!1173)) (= lt!320673 (MissingVacant!7181 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40910 (_ BitVec 32)) SeekEntryResult!7181)

(assert (=> b!723446 (= lt!320673 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!64376 res!485136) b!723444))

(assert (= (and b!723444 res!485134) b!723439))

(assert (= (and b!723439 res!485137) b!723442))

(assert (= (and b!723442 res!485132) b!723438))

(assert (= (and b!723438 res!485139) b!723446))

(assert (= (and b!723446 res!485131) b!723434))

(assert (= (and b!723434 res!485138) b!723433))

(assert (= (and b!723433 res!485128) b!723435))

(assert (= (and b!723435 res!485135) b!723441))

(assert (= (and b!723441 res!485129) b!723437))

(assert (= (and b!723437 res!485130) b!723436))

(assert (= (and b!723436 c!79524) b!723443))

(assert (= (and b!723436 (not c!79524)) b!723445))

(assert (= (and b!723436 res!485127) b!723432))

(assert (= (and b!723432 res!485133) b!723440))

(declare-fun m!677965 () Bool)

(assert (=> b!723434 m!677965))

(declare-fun m!677967 () Bool)

(assert (=> b!723438 m!677967))

(declare-fun m!677969 () Bool)

(assert (=> b!723442 m!677969))

(declare-fun m!677971 () Bool)

(assert (=> b!723445 m!677971))

(assert (=> b!723445 m!677971))

(declare-fun m!677973 () Bool)

(assert (=> b!723445 m!677973))

(assert (=> b!723439 m!677971))

(assert (=> b!723439 m!677971))

(declare-fun m!677975 () Bool)

(assert (=> b!723439 m!677975))

(declare-fun m!677977 () Bool)

(assert (=> b!723446 m!677977))

(declare-fun m!677979 () Bool)

(assert (=> start!64376 m!677979))

(declare-fun m!677981 () Bool)

(assert (=> start!64376 m!677981))

(assert (=> b!723441 m!677971))

(assert (=> b!723441 m!677971))

(declare-fun m!677983 () Bool)

(assert (=> b!723441 m!677983))

(assert (=> b!723441 m!677983))

(assert (=> b!723441 m!677971))

(declare-fun m!677985 () Bool)

(assert (=> b!723441 m!677985))

(assert (=> b!723443 m!677971))

(assert (=> b!723443 m!677971))

(declare-fun m!677987 () Bool)

(assert (=> b!723443 m!677987))

(declare-fun m!677989 () Bool)

(assert (=> b!723440 m!677989))

(declare-fun m!677991 () Bool)

(assert (=> b!723440 m!677991))

(declare-fun m!677993 () Bool)

(assert (=> b!723437 m!677993))

(declare-fun m!677995 () Bool)

(assert (=> b!723432 m!677995))

(declare-fun m!677997 () Bool)

(assert (=> b!723432 m!677997))

(declare-fun m!677999 () Bool)

(assert (=> b!723432 m!677999))

(declare-fun m!678001 () Bool)

(assert (=> b!723432 m!678001))

(assert (=> b!723432 m!678001))

(declare-fun m!678003 () Bool)

(assert (=> b!723432 m!678003))

(declare-fun m!678005 () Bool)

(assert (=> b!723433 m!678005))

(push 1)


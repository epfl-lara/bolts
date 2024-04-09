; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64386 () Bool)

(assert start!64386)

(declare-fun b!723671 () Bool)

(declare-fun res!485338 () Bool)

(declare-fun e!405414 () Bool)

(assert (=> b!723671 (=> (not res!485338) (not e!405414))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40920 0))(
  ( (array!40921 (arr!19579 (Array (_ BitVec 32) (_ BitVec 64))) (size!20000 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40920)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!723671 (= res!485338 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19579 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!723672 () Bool)

(declare-fun e!405412 () Bool)

(assert (=> b!723672 (= e!405414 e!405412)))

(declare-fun res!485339 () Bool)

(assert (=> b!723672 (=> (not res!485339) (not e!405412))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!320747 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!320748 () array!40920)

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7186 0))(
  ( (MissingZero!7186 (index!31111 (_ BitVec 32))) (Found!7186 (index!31112 (_ BitVec 32))) (Intermediate!7186 (undefined!7998 Bool) (index!31113 (_ BitVec 32)) (x!62132 (_ BitVec 32))) (Undefined!7186) (MissingVacant!7186 (index!31114 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40920 (_ BitVec 32)) SeekEntryResult!7186)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!723672 (= res!485339 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320747 mask!3328) lt!320747 lt!320748 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320747 lt!320748 mask!3328)))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!723672 (= lt!320747 (select (store (arr!19579 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!723672 (= lt!320748 (array!40921 (store (arr!19579 a!3186) i!1173 k0!2102) (size!20000 a!3186)))))

(declare-fun b!723673 () Bool)

(declare-fun res!485341 () Bool)

(declare-fun e!405411 () Bool)

(assert (=> b!723673 (=> (not res!485341) (not e!405411))))

(declare-datatypes ((List!13634 0))(
  ( (Nil!13631) (Cons!13630 (h!14684 (_ BitVec 64)) (t!19957 List!13634)) )
))
(declare-fun arrayNoDuplicates!0 (array!40920 (_ BitVec 32) List!13634) Bool)

(assert (=> b!723673 (= res!485341 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13631))))

(declare-fun b!723674 () Bool)

(declare-fun res!485344 () Bool)

(declare-fun e!405413 () Bool)

(assert (=> b!723674 (=> (not res!485344) (not e!405413))))

(declare-fun arrayContainsKey!0 (array!40920 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!723674 (= res!485344 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!723675 () Bool)

(declare-fun res!485342 () Bool)

(assert (=> b!723675 (=> (not res!485342) (not e!405414))))

(declare-fun e!405409 () Bool)

(assert (=> b!723675 (= res!485342 e!405409)))

(declare-fun c!79539 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!723675 (= c!79539 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!723676 () Bool)

(assert (=> b!723676 (= e!405412 (not (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun e!405408 () Bool)

(assert (=> b!723676 e!405408))

(declare-fun res!485343 () Bool)

(assert (=> b!723676 (=> (not res!485343) (not e!405408))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40920 (_ BitVec 32)) Bool)

(assert (=> b!723676 (= res!485343 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24690 0))(
  ( (Unit!24691) )
))
(declare-fun lt!320750 () Unit!24690)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40920 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24690)

(assert (=> b!723676 (= lt!320750 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!723677 () Bool)

(declare-fun res!485349 () Bool)

(assert (=> b!723677 (=> (not res!485349) (not e!405411))))

(assert (=> b!723677 (= res!485349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!723678 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40920 (_ BitVec 32)) SeekEntryResult!7186)

(assert (=> b!723678 (= e!405408 (= (seekEntryOrOpen!0 (select (arr!19579 a!3186) j!159) a!3186 mask!3328) (Found!7186 j!159)))))

(declare-fun b!723680 () Bool)

(assert (=> b!723680 (= e!405411 e!405414)))

(declare-fun res!485337 () Bool)

(assert (=> b!723680 (=> (not res!485337) (not e!405414))))

(declare-fun lt!320749 () SeekEntryResult!7186)

(assert (=> b!723680 (= res!485337 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19579 a!3186) j!159) mask!3328) (select (arr!19579 a!3186) j!159) a!3186 mask!3328) lt!320749))))

(assert (=> b!723680 (= lt!320749 (Intermediate!7186 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!723681 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40920 (_ BitVec 32)) SeekEntryResult!7186)

(assert (=> b!723681 (= e!405409 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19579 a!3186) j!159) a!3186 mask!3328) (Found!7186 j!159)))))

(declare-fun b!723682 () Bool)

(declare-fun res!485346 () Bool)

(assert (=> b!723682 (=> (not res!485346) (not e!405413))))

(assert (=> b!723682 (= res!485346 (and (= (size!20000 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20000 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20000 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!723683 () Bool)

(assert (=> b!723683 (= e!405409 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19579 a!3186) j!159) a!3186 mask!3328) lt!320749))))

(declare-fun b!723684 () Bool)

(declare-fun res!485336 () Bool)

(assert (=> b!723684 (=> (not res!485336) (not e!405411))))

(assert (=> b!723684 (= res!485336 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20000 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20000 a!3186))))))

(declare-fun b!723685 () Bool)

(assert (=> b!723685 (= e!405413 e!405411)))

(declare-fun res!485345 () Bool)

(assert (=> b!723685 (=> (not res!485345) (not e!405411))))

(declare-fun lt!320746 () SeekEntryResult!7186)

(assert (=> b!723685 (= res!485345 (or (= lt!320746 (MissingZero!7186 i!1173)) (= lt!320746 (MissingVacant!7186 i!1173))))))

(assert (=> b!723685 (= lt!320746 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!723686 () Bool)

(declare-fun res!485340 () Bool)

(assert (=> b!723686 (=> (not res!485340) (not e!405413))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!723686 (= res!485340 (validKeyInArray!0 (select (arr!19579 a!3186) j!159)))))

(declare-fun res!485347 () Bool)

(assert (=> start!64386 (=> (not res!485347) (not e!405413))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64386 (= res!485347 (validMask!0 mask!3328))))

(assert (=> start!64386 e!405413))

(assert (=> start!64386 true))

(declare-fun array_inv!15353 (array!40920) Bool)

(assert (=> start!64386 (array_inv!15353 a!3186)))

(declare-fun b!723679 () Bool)

(declare-fun res!485348 () Bool)

(assert (=> b!723679 (=> (not res!485348) (not e!405413))))

(assert (=> b!723679 (= res!485348 (validKeyInArray!0 k0!2102))))

(assert (= (and start!64386 res!485347) b!723682))

(assert (= (and b!723682 res!485346) b!723686))

(assert (= (and b!723686 res!485340) b!723679))

(assert (= (and b!723679 res!485348) b!723674))

(assert (= (and b!723674 res!485344) b!723685))

(assert (= (and b!723685 res!485345) b!723677))

(assert (= (and b!723677 res!485349) b!723673))

(assert (= (and b!723673 res!485341) b!723684))

(assert (= (and b!723684 res!485336) b!723680))

(assert (= (and b!723680 res!485337) b!723671))

(assert (= (and b!723671 res!485338) b!723675))

(assert (= (and b!723675 c!79539) b!723683))

(assert (= (and b!723675 (not c!79539)) b!723681))

(assert (= (and b!723675 res!485342) b!723672))

(assert (= (and b!723672 res!485339) b!723676))

(assert (= (and b!723676 res!485343) b!723678))

(declare-fun m!678183 () Bool)

(assert (=> b!723671 m!678183))

(declare-fun m!678185 () Bool)

(assert (=> b!723677 m!678185))

(declare-fun m!678187 () Bool)

(assert (=> b!723683 m!678187))

(assert (=> b!723683 m!678187))

(declare-fun m!678189 () Bool)

(assert (=> b!723683 m!678189))

(declare-fun m!678191 () Bool)

(assert (=> b!723674 m!678191))

(assert (=> b!723680 m!678187))

(assert (=> b!723680 m!678187))

(declare-fun m!678193 () Bool)

(assert (=> b!723680 m!678193))

(assert (=> b!723680 m!678193))

(assert (=> b!723680 m!678187))

(declare-fun m!678195 () Bool)

(assert (=> b!723680 m!678195))

(assert (=> b!723681 m!678187))

(assert (=> b!723681 m!678187))

(declare-fun m!678197 () Bool)

(assert (=> b!723681 m!678197))

(assert (=> b!723686 m!678187))

(assert (=> b!723686 m!678187))

(declare-fun m!678199 () Bool)

(assert (=> b!723686 m!678199))

(declare-fun m!678201 () Bool)

(assert (=> b!723676 m!678201))

(declare-fun m!678203 () Bool)

(assert (=> b!723676 m!678203))

(declare-fun m!678205 () Bool)

(assert (=> start!64386 m!678205))

(declare-fun m!678207 () Bool)

(assert (=> start!64386 m!678207))

(declare-fun m!678209 () Bool)

(assert (=> b!723673 m!678209))

(declare-fun m!678211 () Bool)

(assert (=> b!723672 m!678211))

(declare-fun m!678213 () Bool)

(assert (=> b!723672 m!678213))

(declare-fun m!678215 () Bool)

(assert (=> b!723672 m!678215))

(declare-fun m!678217 () Bool)

(assert (=> b!723672 m!678217))

(assert (=> b!723672 m!678211))

(declare-fun m!678219 () Bool)

(assert (=> b!723672 m!678219))

(declare-fun m!678221 () Bool)

(assert (=> b!723685 m!678221))

(declare-fun m!678223 () Bool)

(assert (=> b!723679 m!678223))

(assert (=> b!723678 m!678187))

(assert (=> b!723678 m!678187))

(declare-fun m!678225 () Bool)

(assert (=> b!723678 m!678225))

(check-sat (not b!723683) (not b!723678) (not b!723685) (not b!723672) (not b!723673) (not b!723679) (not b!723677) (not b!723674) (not start!64386) (not b!723686) (not b!723680) (not b!723681) (not b!723676))
(check-sat)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67154 () Bool)

(assert start!67154)

(declare-fun b!775562 () Bool)

(declare-fun e!431644 () Bool)

(assert (=> b!775562 (= e!431644 (not true))))

(declare-fun e!431646 () Bool)

(assert (=> b!775562 e!431646))

(declare-fun res!524617 () Bool)

(assert (=> b!775562 (=> (not res!524617) (not e!431646))))

(declare-datatypes ((array!42464 0))(
  ( (array!42465 (arr!20324 (Array (_ BitVec 32) (_ BitVec 64))) (size!20745 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42464)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42464 (_ BitVec 32)) Bool)

(assert (=> b!775562 (= res!524617 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26756 0))(
  ( (Unit!26757) )
))
(declare-fun lt!345520 () Unit!26756)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42464 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26756)

(assert (=> b!775562 (= lt!345520 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!775563 () Bool)

(declare-fun e!431648 () Bool)

(declare-fun e!431650 () Bool)

(assert (=> b!775563 (= e!431648 e!431650)))

(declare-fun res!524622 () Bool)

(assert (=> b!775563 (=> (not res!524622) (not e!431650))))

(declare-datatypes ((SeekEntryResult!7931 0))(
  ( (MissingZero!7931 (index!34091 (_ BitVec 32))) (Found!7931 (index!34092 (_ BitVec 32))) (Intermediate!7931 (undefined!8743 Bool) (index!34093 (_ BitVec 32)) (x!65059 (_ BitVec 32))) (Undefined!7931) (MissingVacant!7931 (index!34094 (_ BitVec 32))) )
))
(declare-fun lt!345516 () SeekEntryResult!7931)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42464 (_ BitVec 32)) SeekEntryResult!7931)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775563 (= res!524622 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20324 a!3186) j!159) mask!3328) (select (arr!20324 a!3186) j!159) a!3186 mask!3328) lt!345516))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!775563 (= lt!345516 (Intermediate!7931 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!775564 () Bool)

(declare-fun res!524624 () Bool)

(declare-fun e!431645 () Bool)

(assert (=> b!775564 (=> (not res!524624) (not e!431645))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!775564 (= res!524624 (validKeyInArray!0 k!2102))))

(declare-fun b!775565 () Bool)

(declare-fun res!524623 () Bool)

(assert (=> b!775565 (=> (not res!524623) (not e!431650))))

(declare-fun e!431647 () Bool)

(assert (=> b!775565 (= res!524623 e!431647)))

(declare-fun c!85875 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!775565 (= c!85875 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!775566 () Bool)

(declare-fun res!524621 () Bool)

(assert (=> b!775566 (=> (not res!524621) (not e!431645))))

(declare-fun arrayContainsKey!0 (array!42464 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!775566 (= res!524621 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!775567 () Bool)

(declare-fun res!524619 () Bool)

(assert (=> b!775567 (=> (not res!524619) (not e!431648))))

(assert (=> b!775567 (= res!524619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!775568 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42464 (_ BitVec 32)) SeekEntryResult!7931)

(assert (=> b!775568 (= e!431647 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20324 a!3186) j!159) a!3186 mask!3328) (Found!7931 j!159)))))

(declare-fun b!775569 () Bool)

(assert (=> b!775569 (= e!431647 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20324 a!3186) j!159) a!3186 mask!3328) lt!345516))))

(declare-fun b!775570 () Bool)

(assert (=> b!775570 (= e!431645 e!431648)))

(declare-fun res!524626 () Bool)

(assert (=> b!775570 (=> (not res!524626) (not e!431648))))

(declare-fun lt!345519 () SeekEntryResult!7931)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!775570 (= res!524626 (or (= lt!345519 (MissingZero!7931 i!1173)) (= lt!345519 (MissingVacant!7931 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42464 (_ BitVec 32)) SeekEntryResult!7931)

(assert (=> b!775570 (= lt!345519 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!775571 () Bool)

(declare-fun res!524618 () Bool)

(assert (=> b!775571 (=> (not res!524618) (not e!431648))))

(declare-datatypes ((List!14379 0))(
  ( (Nil!14376) (Cons!14375 (h!15483 (_ BitVec 64)) (t!20702 List!14379)) )
))
(declare-fun arrayNoDuplicates!0 (array!42464 (_ BitVec 32) List!14379) Bool)

(assert (=> b!775571 (= res!524618 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14376))))

(declare-fun b!775572 () Bool)

(declare-fun e!431649 () Bool)

(assert (=> b!775572 (= e!431646 e!431649)))

(declare-fun res!524614 () Bool)

(assert (=> b!775572 (=> (not res!524614) (not e!431649))))

(declare-fun lt!345515 () SeekEntryResult!7931)

(assert (=> b!775572 (= res!524614 (= (seekEntryOrOpen!0 (select (arr!20324 a!3186) j!159) a!3186 mask!3328) lt!345515))))

(assert (=> b!775572 (= lt!345515 (Found!7931 j!159))))

(declare-fun b!775573 () Bool)

(declare-fun res!524616 () Bool)

(assert (=> b!775573 (=> (not res!524616) (not e!431648))))

(assert (=> b!775573 (= res!524616 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20745 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20745 a!3186))))))

(declare-fun b!775574 () Bool)

(assert (=> b!775574 (= e!431649 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20324 a!3186) j!159) a!3186 mask!3328) lt!345515))))

(declare-fun b!775576 () Bool)

(declare-fun res!524613 () Bool)

(assert (=> b!775576 (=> (not res!524613) (not e!431650))))

(assert (=> b!775576 (= res!524613 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20324 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!775577 () Bool)

(declare-fun res!524615 () Bool)

(assert (=> b!775577 (=> (not res!524615) (not e!431645))))

(assert (=> b!775577 (= res!524615 (validKeyInArray!0 (select (arr!20324 a!3186) j!159)))))

(declare-fun b!775578 () Bool)

(assert (=> b!775578 (= e!431650 e!431644)))

(declare-fun res!524612 () Bool)

(assert (=> b!775578 (=> (not res!524612) (not e!431644))))

(declare-fun lt!345517 () array!42464)

(declare-fun lt!345518 () (_ BitVec 64))

(assert (=> b!775578 (= res!524612 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345518 mask!3328) lt!345518 lt!345517 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345518 lt!345517 mask!3328)))))

(assert (=> b!775578 (= lt!345518 (select (store (arr!20324 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!775578 (= lt!345517 (array!42465 (store (arr!20324 a!3186) i!1173 k!2102) (size!20745 a!3186)))))

(declare-fun res!524625 () Bool)

(assert (=> start!67154 (=> (not res!524625) (not e!431645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67154 (= res!524625 (validMask!0 mask!3328))))

(assert (=> start!67154 e!431645))

(assert (=> start!67154 true))

(declare-fun array_inv!16098 (array!42464) Bool)

(assert (=> start!67154 (array_inv!16098 a!3186)))

(declare-fun b!775575 () Bool)

(declare-fun res!524620 () Bool)

(assert (=> b!775575 (=> (not res!524620) (not e!431645))))

(assert (=> b!775575 (= res!524620 (and (= (size!20745 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20745 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20745 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!67154 res!524625) b!775575))

(assert (= (and b!775575 res!524620) b!775577))

(assert (= (and b!775577 res!524615) b!775564))

(assert (= (and b!775564 res!524624) b!775566))

(assert (= (and b!775566 res!524621) b!775570))

(assert (= (and b!775570 res!524626) b!775567))

(assert (= (and b!775567 res!524619) b!775571))

(assert (= (and b!775571 res!524618) b!775573))

(assert (= (and b!775573 res!524616) b!775563))

(assert (= (and b!775563 res!524622) b!775576))

(assert (= (and b!775576 res!524613) b!775565))

(assert (= (and b!775565 c!85875) b!775569))

(assert (= (and b!775565 (not c!85875)) b!775568))

(assert (= (and b!775565 res!524623) b!775578))

(assert (= (and b!775578 res!524612) b!775562))

(assert (= (and b!775562 res!524617) b!775572))

(assert (= (and b!775572 res!524614) b!775574))

(declare-fun m!719829 () Bool)

(assert (=> b!775578 m!719829))

(declare-fun m!719831 () Bool)

(assert (=> b!775578 m!719831))

(assert (=> b!775578 m!719829))

(declare-fun m!719833 () Bool)

(assert (=> b!775578 m!719833))

(declare-fun m!719835 () Bool)

(assert (=> b!775578 m!719835))

(declare-fun m!719837 () Bool)

(assert (=> b!775578 m!719837))

(declare-fun m!719839 () Bool)

(assert (=> b!775568 m!719839))

(assert (=> b!775568 m!719839))

(declare-fun m!719841 () Bool)

(assert (=> b!775568 m!719841))

(assert (=> b!775574 m!719839))

(assert (=> b!775574 m!719839))

(declare-fun m!719843 () Bool)

(assert (=> b!775574 m!719843))

(declare-fun m!719845 () Bool)

(assert (=> b!775564 m!719845))

(declare-fun m!719847 () Bool)

(assert (=> b!775571 m!719847))

(declare-fun m!719849 () Bool)

(assert (=> b!775562 m!719849))

(declare-fun m!719851 () Bool)

(assert (=> b!775562 m!719851))

(declare-fun m!719853 () Bool)

(assert (=> b!775567 m!719853))

(declare-fun m!719855 () Bool)

(assert (=> b!775570 m!719855))

(assert (=> b!775569 m!719839))

(assert (=> b!775569 m!719839))

(declare-fun m!719857 () Bool)

(assert (=> b!775569 m!719857))

(assert (=> b!775577 m!719839))

(assert (=> b!775577 m!719839))

(declare-fun m!719859 () Bool)

(assert (=> b!775577 m!719859))

(declare-fun m!719861 () Bool)

(assert (=> b!775566 m!719861))

(declare-fun m!719863 () Bool)

(assert (=> b!775576 m!719863))

(assert (=> b!775572 m!719839))

(assert (=> b!775572 m!719839))

(declare-fun m!719865 () Bool)

(assert (=> b!775572 m!719865))

(assert (=> b!775563 m!719839))

(assert (=> b!775563 m!719839))

(declare-fun m!719867 () Bool)

(assert (=> b!775563 m!719867))

(assert (=> b!775563 m!719867))

(assert (=> b!775563 m!719839))

(declare-fun m!719869 () Bool)

(assert (=> b!775563 m!719869))

(declare-fun m!719871 () Bool)

(assert (=> start!67154 m!719871))

(declare-fun m!719873 () Bool)

(assert (=> start!67154 m!719873))

(push 1)


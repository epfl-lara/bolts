; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64358 () Bool)

(assert start!64358)

(declare-fun b!723027 () Bool)

(declare-fun res!484781 () Bool)

(declare-fun e!405145 () Bool)

(assert (=> b!723027 (=> (not res!484781) (not e!405145))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40892 0))(
  ( (array!40893 (arr!19565 (Array (_ BitVec 32) (_ BitVec 64))) (size!19986 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40892)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!723027 (= res!484781 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19986 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19986 a!3186))))))

(declare-fun b!723028 () Bool)

(declare-fun res!484780 () Bool)

(declare-fun e!405143 () Bool)

(assert (=> b!723028 (=> (not res!484780) (not e!405143))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!723028 (= res!484780 (validKeyInArray!0 (select (arr!19565 a!3186) j!159)))))

(declare-fun b!723029 () Bool)

(declare-fun res!484779 () Bool)

(assert (=> b!723029 (=> (not res!484779) (not e!405143))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!723029 (= res!484779 (and (= (size!19986 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19986 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19986 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!723030 () Bool)

(declare-fun res!484786 () Bool)

(declare-fun e!405144 () Bool)

(assert (=> b!723030 (=> (not res!484786) (not e!405144))))

(assert (=> b!723030 (= res!484786 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19565 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!405147 () Bool)

(declare-fun b!723031 () Bool)

(declare-datatypes ((SeekEntryResult!7172 0))(
  ( (MissingZero!7172 (index!31055 (_ BitVec 32))) (Found!7172 (index!31056 (_ BitVec 32))) (Intermediate!7172 (undefined!7984 Bool) (index!31057 (_ BitVec 32)) (x!62078 (_ BitVec 32))) (Undefined!7172) (MissingVacant!7172 (index!31058 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40892 (_ BitVec 32)) SeekEntryResult!7172)

(assert (=> b!723031 (= e!405147 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19565 a!3186) j!159) a!3186 mask!3328) (Found!7172 j!159)))))

(declare-fun b!723032 () Bool)

(assert (=> b!723032 (= e!405143 e!405145)))

(declare-fun res!484776 () Bool)

(assert (=> b!723032 (=> (not res!484776) (not e!405145))))

(declare-fun lt!320540 () SeekEntryResult!7172)

(assert (=> b!723032 (= res!484776 (or (= lt!320540 (MissingZero!7172 i!1173)) (= lt!320540 (MissingVacant!7172 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40892 (_ BitVec 32)) SeekEntryResult!7172)

(assert (=> b!723032 (= lt!320540 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!723033 () Bool)

(declare-fun res!484788 () Bool)

(assert (=> b!723033 (=> (not res!484788) (not e!405145))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40892 (_ BitVec 32)) Bool)

(assert (=> b!723033 (= res!484788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!723034 () Bool)

(declare-fun res!484778 () Bool)

(assert (=> b!723034 (=> (not res!484778) (not e!405144))))

(assert (=> b!723034 (= res!484778 e!405147)))

(declare-fun c!79497 () Bool)

(assert (=> b!723034 (= c!79497 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!723035 () Bool)

(declare-fun e!405142 () Bool)

(assert (=> b!723035 (= e!405144 e!405142)))

(declare-fun res!484783 () Bool)

(assert (=> b!723035 (=> (not res!484783) (not e!405142))))

(declare-fun lt!320537 () (_ BitVec 64))

(declare-fun lt!320538 () array!40892)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40892 (_ BitVec 32)) SeekEntryResult!7172)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!723035 (= res!484783 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320537 mask!3328) lt!320537 lt!320538 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320537 lt!320538 mask!3328)))))

(assert (=> b!723035 (= lt!320537 (select (store (arr!19565 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!723035 (= lt!320538 (array!40893 (store (arr!19565 a!3186) i!1173 k!2102) (size!19986 a!3186)))))

(declare-fun b!723036 () Bool)

(assert (=> b!723036 (= e!405142 (not true))))

(assert (=> b!723036 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!24662 0))(
  ( (Unit!24663) )
))
(declare-fun lt!320536 () Unit!24662)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40892 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24662)

(assert (=> b!723036 (= lt!320536 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun lt!320539 () SeekEntryResult!7172)

(declare-fun b!723037 () Bool)

(assert (=> b!723037 (= e!405147 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19565 a!3186) j!159) a!3186 mask!3328) lt!320539))))

(declare-fun b!723038 () Bool)

(assert (=> b!723038 (= e!405145 e!405144)))

(declare-fun res!484785 () Bool)

(assert (=> b!723038 (=> (not res!484785) (not e!405144))))

(assert (=> b!723038 (= res!484785 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19565 a!3186) j!159) mask!3328) (select (arr!19565 a!3186) j!159) a!3186 mask!3328) lt!320539))))

(assert (=> b!723038 (= lt!320539 (Intermediate!7172 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!723039 () Bool)

(declare-fun res!484787 () Bool)

(assert (=> b!723039 (=> (not res!484787) (not e!405143))))

(assert (=> b!723039 (= res!484787 (validKeyInArray!0 k!2102))))

(declare-fun res!484777 () Bool)

(assert (=> start!64358 (=> (not res!484777) (not e!405143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64358 (= res!484777 (validMask!0 mask!3328))))

(assert (=> start!64358 e!405143))

(assert (=> start!64358 true))

(declare-fun array_inv!15339 (array!40892) Bool)

(assert (=> start!64358 (array_inv!15339 a!3186)))

(declare-fun b!723040 () Bool)

(declare-fun res!484784 () Bool)

(assert (=> b!723040 (=> (not res!484784) (not e!405143))))

(declare-fun arrayContainsKey!0 (array!40892 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!723040 (= res!484784 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!723041 () Bool)

(declare-fun res!484782 () Bool)

(assert (=> b!723041 (=> (not res!484782) (not e!405145))))

(declare-datatypes ((List!13620 0))(
  ( (Nil!13617) (Cons!13616 (h!14670 (_ BitVec 64)) (t!19943 List!13620)) )
))
(declare-fun arrayNoDuplicates!0 (array!40892 (_ BitVec 32) List!13620) Bool)

(assert (=> b!723041 (= res!484782 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13617))))

(assert (= (and start!64358 res!484777) b!723029))

(assert (= (and b!723029 res!484779) b!723028))

(assert (= (and b!723028 res!484780) b!723039))

(assert (= (and b!723039 res!484787) b!723040))

(assert (= (and b!723040 res!484784) b!723032))

(assert (= (and b!723032 res!484776) b!723033))

(assert (= (and b!723033 res!484788) b!723041))

(assert (= (and b!723041 res!484782) b!723027))

(assert (= (and b!723027 res!484781) b!723038))

(assert (= (and b!723038 res!484785) b!723030))

(assert (= (and b!723030 res!484786) b!723034))

(assert (= (and b!723034 c!79497) b!723037))

(assert (= (and b!723034 (not c!79497)) b!723031))

(assert (= (and b!723034 res!484778) b!723035))

(assert (= (and b!723035 res!484783) b!723036))

(declare-fun m!677587 () Bool)

(assert (=> b!723028 m!677587))

(assert (=> b!723028 m!677587))

(declare-fun m!677589 () Bool)

(assert (=> b!723028 m!677589))

(declare-fun m!677591 () Bool)

(assert (=> b!723040 m!677591))

(declare-fun m!677593 () Bool)

(assert (=> b!723033 m!677593))

(declare-fun m!677595 () Bool)

(assert (=> b!723039 m!677595))

(declare-fun m!677597 () Bool)

(assert (=> b!723035 m!677597))

(assert (=> b!723035 m!677597))

(declare-fun m!677599 () Bool)

(assert (=> b!723035 m!677599))

(declare-fun m!677601 () Bool)

(assert (=> b!723035 m!677601))

(declare-fun m!677603 () Bool)

(assert (=> b!723035 m!677603))

(declare-fun m!677605 () Bool)

(assert (=> b!723035 m!677605))

(declare-fun m!677607 () Bool)

(assert (=> b!723041 m!677607))

(declare-fun m!677609 () Bool)

(assert (=> start!64358 m!677609))

(declare-fun m!677611 () Bool)

(assert (=> start!64358 m!677611))

(assert (=> b!723038 m!677587))

(assert (=> b!723038 m!677587))

(declare-fun m!677613 () Bool)

(assert (=> b!723038 m!677613))

(assert (=> b!723038 m!677613))

(assert (=> b!723038 m!677587))

(declare-fun m!677615 () Bool)

(assert (=> b!723038 m!677615))

(declare-fun m!677617 () Bool)

(assert (=> b!723036 m!677617))

(declare-fun m!677619 () Bool)

(assert (=> b!723036 m!677619))

(declare-fun m!677621 () Bool)

(assert (=> b!723030 m!677621))

(assert (=> b!723031 m!677587))

(assert (=> b!723031 m!677587))

(declare-fun m!677623 () Bool)

(assert (=> b!723031 m!677623))

(declare-fun m!677625 () Bool)

(assert (=> b!723032 m!677625))

(assert (=> b!723037 m!677587))

(assert (=> b!723037 m!677587))

(declare-fun m!677627 () Bool)

(assert (=> b!723037 m!677627))

(push 1)


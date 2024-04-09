; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64306 () Bool)

(assert start!64306)

(declare-fun b!721927 () Bool)

(declare-fun res!483838 () Bool)

(declare-fun e!404748 () Bool)

(assert (=> b!721927 (=> (not res!483838) (not e!404748))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!721927 (= res!483838 (validKeyInArray!0 k!2102))))

(declare-datatypes ((array!40840 0))(
  ( (array!40841 (arr!19539 (Array (_ BitVec 32) (_ BitVec 64))) (size!19960 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40840)

(declare-datatypes ((SeekEntryResult!7146 0))(
  ( (MissingZero!7146 (index!30951 (_ BitVec 32))) (Found!7146 (index!30952 (_ BitVec 32))) (Intermediate!7146 (undefined!7958 Bool) (index!30953 (_ BitVec 32)) (x!61988 (_ BitVec 32))) (Undefined!7146) (MissingVacant!7146 (index!30954 (_ BitVec 32))) )
))
(declare-fun lt!320167 () SeekEntryResult!7146)

(declare-fun b!721928 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!404745 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40840 (_ BitVec 32)) SeekEntryResult!7146)

(assert (=> b!721928 (= e!404745 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19539 a!3186) j!159) a!3186 mask!3328) lt!320167))))

(declare-fun b!721929 () Bool)

(declare-fun res!483842 () Bool)

(declare-fun e!404747 () Bool)

(assert (=> b!721929 (=> (not res!483842) (not e!404747))))

(assert (=> b!721929 (= res!483842 e!404745)))

(declare-fun c!79419 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!721929 (= c!79419 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!721930 () Bool)

(declare-fun res!483832 () Bool)

(declare-fun e!404744 () Bool)

(assert (=> b!721930 (=> (not res!483832) (not e!404744))))

(declare-datatypes ((List!13594 0))(
  ( (Nil!13591) (Cons!13590 (h!14644 (_ BitVec 64)) (t!19917 List!13594)) )
))
(declare-fun arrayNoDuplicates!0 (array!40840 (_ BitVec 32) List!13594) Bool)

(assert (=> b!721930 (= res!483832 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13591))))

(declare-fun b!721931 () Bool)

(declare-fun res!483836 () Bool)

(assert (=> b!721931 (=> (not res!483836) (not e!404748))))

(declare-fun arrayContainsKey!0 (array!40840 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!721931 (= res!483836 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!721932 () Bool)

(declare-fun res!483834 () Bool)

(assert (=> b!721932 (=> (not res!483834) (not e!404747))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!721932 (= res!483834 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19539 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!721933 () Bool)

(assert (=> b!721933 (= e!404747 (and (bvsge mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun b!721935 () Bool)

(declare-fun res!483835 () Bool)

(assert (=> b!721935 (=> (not res!483835) (not e!404748))))

(assert (=> b!721935 (= res!483835 (validKeyInArray!0 (select (arr!19539 a!3186) j!159)))))

(declare-fun b!721936 () Bool)

(declare-fun res!483843 () Bool)

(assert (=> b!721936 (=> (not res!483843) (not e!404744))))

(assert (=> b!721936 (= res!483843 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19960 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19960 a!3186))))))

(declare-fun b!721937 () Bool)

(assert (=> b!721937 (= e!404744 e!404747)))

(declare-fun res!483837 () Bool)

(assert (=> b!721937 (=> (not res!483837) (not e!404747))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!721937 (= res!483837 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19539 a!3186) j!159) mask!3328) (select (arr!19539 a!3186) j!159) a!3186 mask!3328) lt!320167))))

(assert (=> b!721937 (= lt!320167 (Intermediate!7146 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!721938 () Bool)

(declare-fun res!483833 () Bool)

(assert (=> b!721938 (=> (not res!483833) (not e!404744))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40840 (_ BitVec 32)) Bool)

(assert (=> b!721938 (= res!483833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!721939 () Bool)

(declare-fun res!483839 () Bool)

(assert (=> b!721939 (=> (not res!483839) (not e!404748))))

(assert (=> b!721939 (= res!483839 (and (= (size!19960 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19960 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19960 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!721940 () Bool)

(assert (=> b!721940 (= e!404748 e!404744)))

(declare-fun res!483840 () Bool)

(assert (=> b!721940 (=> (not res!483840) (not e!404744))))

(declare-fun lt!320168 () SeekEntryResult!7146)

(assert (=> b!721940 (= res!483840 (or (= lt!320168 (MissingZero!7146 i!1173)) (= lt!320168 (MissingVacant!7146 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40840 (_ BitVec 32)) SeekEntryResult!7146)

(assert (=> b!721940 (= lt!320168 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!483841 () Bool)

(assert (=> start!64306 (=> (not res!483841) (not e!404748))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64306 (= res!483841 (validMask!0 mask!3328))))

(assert (=> start!64306 e!404748))

(assert (=> start!64306 true))

(declare-fun array_inv!15313 (array!40840) Bool)

(assert (=> start!64306 (array_inv!15313 a!3186)))

(declare-fun b!721934 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40840 (_ BitVec 32)) SeekEntryResult!7146)

(assert (=> b!721934 (= e!404745 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19539 a!3186) j!159) a!3186 mask!3328) (Found!7146 j!159)))))

(assert (= (and start!64306 res!483841) b!721939))

(assert (= (and b!721939 res!483839) b!721935))

(assert (= (and b!721935 res!483835) b!721927))

(assert (= (and b!721927 res!483838) b!721931))

(assert (= (and b!721931 res!483836) b!721940))

(assert (= (and b!721940 res!483840) b!721938))

(assert (= (and b!721938 res!483833) b!721930))

(assert (= (and b!721930 res!483832) b!721936))

(assert (= (and b!721936 res!483843) b!721937))

(assert (= (and b!721937 res!483837) b!721932))

(assert (= (and b!721932 res!483834) b!721929))

(assert (= (and b!721929 c!79419) b!721928))

(assert (= (and b!721929 (not c!79419)) b!721934))

(assert (= (and b!721929 res!483842) b!721933))

(declare-fun m!676663 () Bool)

(assert (=> b!721935 m!676663))

(assert (=> b!721935 m!676663))

(declare-fun m!676665 () Bool)

(assert (=> b!721935 m!676665))

(declare-fun m!676667 () Bool)

(assert (=> b!721930 m!676667))

(declare-fun m!676669 () Bool)

(assert (=> start!64306 m!676669))

(declare-fun m!676671 () Bool)

(assert (=> start!64306 m!676671))

(declare-fun m!676673 () Bool)

(assert (=> b!721932 m!676673))

(assert (=> b!721937 m!676663))

(assert (=> b!721937 m!676663))

(declare-fun m!676675 () Bool)

(assert (=> b!721937 m!676675))

(assert (=> b!721937 m!676675))

(assert (=> b!721937 m!676663))

(declare-fun m!676677 () Bool)

(assert (=> b!721937 m!676677))

(declare-fun m!676679 () Bool)

(assert (=> b!721927 m!676679))

(assert (=> b!721928 m!676663))

(assert (=> b!721928 m!676663))

(declare-fun m!676681 () Bool)

(assert (=> b!721928 m!676681))

(declare-fun m!676683 () Bool)

(assert (=> b!721938 m!676683))

(declare-fun m!676685 () Bool)

(assert (=> b!721931 m!676685))

(assert (=> b!721934 m!676663))

(assert (=> b!721934 m!676663))

(declare-fun m!676687 () Bool)

(assert (=> b!721934 m!676687))

(declare-fun m!676689 () Bool)

(assert (=> b!721940 m!676689))

(push 1)

(assert (not b!721935))

(assert (not b!721937))

(assert (not b!721938))

(assert (not b!721928))

(assert (not b!721934))

(assert (not b!721940))

(assert (not b!721930))

(assert (not start!64306))

(assert (not b!721927))

(assert (not b!721931))

(check-sat)

(pop 1)

(push 1)

(check-sat)


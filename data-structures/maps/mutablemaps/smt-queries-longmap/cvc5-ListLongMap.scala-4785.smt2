; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65788 () Bool)

(assert start!65788)

(declare-fun b!755848 () Bool)

(declare-fun e!421514 () Bool)

(declare-fun e!421507 () Bool)

(assert (=> b!755848 (= e!421514 e!421507)))

(declare-fun res!511071 () Bool)

(assert (=> b!755848 (=> res!511071 e!421507)))

(declare-fun lt!336510 () (_ BitVec 64))

(declare-fun lt!336516 () (_ BitVec 64))

(assert (=> b!755848 (= res!511071 (= lt!336510 lt!336516))))

(declare-datatypes ((array!41914 0))(
  ( (array!41915 (arr!20067 (Array (_ BitVec 32) (_ BitVec 64))) (size!20488 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41914)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!755848 (= lt!336510 (select (store (arr!20067 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!755849 () Bool)

(declare-fun e!421517 () Bool)

(declare-fun e!421515 () Bool)

(assert (=> b!755849 (= e!421517 e!421515)))

(declare-fun res!511080 () Bool)

(assert (=> b!755849 (=> (not res!511080) (not e!421515))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7674 0))(
  ( (MissingZero!7674 (index!33063 (_ BitVec 32))) (Found!7674 (index!33064 (_ BitVec 32))) (Intermediate!7674 (undefined!8486 Bool) (index!33065 (_ BitVec 32)) (x!63993 (_ BitVec 32))) (Undefined!7674) (MissingVacant!7674 (index!33066 (_ BitVec 32))) )
))
(declare-fun lt!336512 () SeekEntryResult!7674)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41914 (_ BitVec 32)) SeekEntryResult!7674)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!755849 (= res!511080 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20067 a!3186) j!159) mask!3328) (select (arr!20067 a!3186) j!159) a!3186 mask!3328) lt!336512))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!755849 (= lt!336512 (Intermediate!7674 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!755850 () Bool)

(declare-fun res!511082 () Bool)

(assert (=> b!755850 (=> (not res!511082) (not e!421517))))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!755850 (= res!511082 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20488 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20488 a!3186))))))

(declare-fun b!755851 () Bool)

(declare-fun res!511086 () Bool)

(assert (=> b!755851 (=> (not res!511086) (not e!421517))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41914 (_ BitVec 32)) Bool)

(assert (=> b!755851 (= res!511086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!755853 () Bool)

(declare-fun e!421510 () Bool)

(declare-fun e!421513 () Bool)

(assert (=> b!755853 (= e!421510 (not e!421513))))

(declare-fun res!511085 () Bool)

(assert (=> b!755853 (=> res!511085 e!421513)))

(declare-fun lt!336511 () SeekEntryResult!7674)

(assert (=> b!755853 (= res!511085 (or (not (is-Intermediate!7674 lt!336511)) (bvslt x!1131 (x!63993 lt!336511)) (not (= x!1131 (x!63993 lt!336511))) (not (= index!1321 (index!33065 lt!336511)))))))

(declare-fun e!421516 () Bool)

(assert (=> b!755853 e!421516))

(declare-fun res!511075 () Bool)

(assert (=> b!755853 (=> (not res!511075) (not e!421516))))

(declare-fun lt!336507 () SeekEntryResult!7674)

(declare-fun lt!336508 () SeekEntryResult!7674)

(assert (=> b!755853 (= res!511075 (= lt!336507 lt!336508))))

(assert (=> b!755853 (= lt!336508 (Found!7674 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41914 (_ BitVec 32)) SeekEntryResult!7674)

(assert (=> b!755853 (= lt!336507 (seekEntryOrOpen!0 (select (arr!20067 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!755853 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26098 0))(
  ( (Unit!26099) )
))
(declare-fun lt!336515 () Unit!26098)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41914 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26098)

(assert (=> b!755853 (= lt!336515 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!755854 () Bool)

(declare-fun res!511078 () Bool)

(assert (=> b!755854 (=> (not res!511078) (not e!421515))))

(assert (=> b!755854 (= res!511078 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20067 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!755855 () Bool)

(declare-fun e!421509 () Bool)

(assert (=> b!755855 (= e!421509 e!421517)))

(declare-fun res!511077 () Bool)

(assert (=> b!755855 (=> (not res!511077) (not e!421517))))

(declare-fun lt!336518 () SeekEntryResult!7674)

(assert (=> b!755855 (= res!511077 (or (= lt!336518 (MissingZero!7674 i!1173)) (= lt!336518 (MissingVacant!7674 i!1173))))))

(assert (=> b!755855 (= lt!336518 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!755856 () Bool)

(assert (=> b!755856 (= e!421507 true)))

(declare-fun e!421518 () Bool)

(assert (=> b!755856 e!421518))

(declare-fun res!511088 () Bool)

(assert (=> b!755856 (=> (not res!511088) (not e!421518))))

(assert (=> b!755856 (= res!511088 (= lt!336510 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336514 () Unit!26098)

(declare-fun e!421511 () Unit!26098)

(assert (=> b!755856 (= lt!336514 e!421511)))

(declare-fun c!82769 () Bool)

(assert (=> b!755856 (= c!82769 (= lt!336510 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!755857 () Bool)

(declare-fun res!511084 () Bool)

(assert (=> b!755857 (=> (not res!511084) (not e!421509))))

(assert (=> b!755857 (= res!511084 (and (= (size!20488 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20488 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20488 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!421512 () Bool)

(declare-fun b!755858 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41914 (_ BitVec 32)) SeekEntryResult!7674)

(assert (=> b!755858 (= e!421512 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20067 a!3186) j!159) a!3186 mask!3328) (Found!7674 j!159)))))

(declare-fun b!755859 () Bool)

(declare-fun res!511072 () Bool)

(assert (=> b!755859 (=> (not res!511072) (not e!421509))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!755859 (= res!511072 (validKeyInArray!0 (select (arr!20067 a!3186) j!159)))))

(declare-fun b!755860 () Bool)

(assert (=> b!755860 (= e!421515 e!421510)))

(declare-fun res!511079 () Bool)

(assert (=> b!755860 (=> (not res!511079) (not e!421510))))

(declare-fun lt!336517 () SeekEntryResult!7674)

(assert (=> b!755860 (= res!511079 (= lt!336517 lt!336511))))

(declare-fun lt!336513 () array!41914)

(assert (=> b!755860 (= lt!336511 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336516 lt!336513 mask!3328))))

(assert (=> b!755860 (= lt!336517 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336516 mask!3328) lt!336516 lt!336513 mask!3328))))

(assert (=> b!755860 (= lt!336516 (select (store (arr!20067 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!755860 (= lt!336513 (array!41915 (store (arr!20067 a!3186) i!1173 k!2102) (size!20488 a!3186)))))

(declare-fun b!755861 () Bool)

(assert (=> b!755861 (= e!421512 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20067 a!3186) j!159) a!3186 mask!3328) lt!336512))))

(declare-fun b!755852 () Bool)

(declare-fun res!511073 () Bool)

(assert (=> b!755852 (=> (not res!511073) (not e!421518))))

(assert (=> b!755852 (= res!511073 (= (seekEntryOrOpen!0 lt!336516 lt!336513 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336516 lt!336513 mask!3328)))))

(declare-fun res!511087 () Bool)

(assert (=> start!65788 (=> (not res!511087) (not e!421509))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65788 (= res!511087 (validMask!0 mask!3328))))

(assert (=> start!65788 e!421509))

(assert (=> start!65788 true))

(declare-fun array_inv!15841 (array!41914) Bool)

(assert (=> start!65788 (array_inv!15841 a!3186)))

(declare-fun b!755862 () Bool)

(assert (=> b!755862 (= e!421516 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20067 a!3186) j!159) a!3186 mask!3328) lt!336508))))

(declare-fun b!755863 () Bool)

(declare-fun res!511089 () Bool)

(assert (=> b!755863 (=> (not res!511089) (not e!421509))))

(assert (=> b!755863 (= res!511089 (validKeyInArray!0 k!2102))))

(declare-fun b!755864 () Bool)

(declare-fun Unit!26100 () Unit!26098)

(assert (=> b!755864 (= e!421511 Unit!26100)))

(assert (=> b!755864 false))

(declare-fun b!755865 () Bool)

(declare-fun res!511076 () Bool)

(assert (=> b!755865 (=> (not res!511076) (not e!421509))))

(declare-fun arrayContainsKey!0 (array!41914 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!755865 (= res!511076 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!755866 () Bool)

(assert (=> b!755866 (= e!421513 e!421514)))

(declare-fun res!511083 () Bool)

(assert (=> b!755866 (=> res!511083 e!421514)))

(declare-fun lt!336509 () SeekEntryResult!7674)

(assert (=> b!755866 (= res!511083 (not (= lt!336509 lt!336508)))))

(assert (=> b!755866 (= lt!336509 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20067 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!755867 () Bool)

(declare-fun Unit!26101 () Unit!26098)

(assert (=> b!755867 (= e!421511 Unit!26101)))

(declare-fun b!755868 () Bool)

(declare-fun res!511074 () Bool)

(assert (=> b!755868 (=> (not res!511074) (not e!421515))))

(assert (=> b!755868 (= res!511074 e!421512)))

(declare-fun c!82770 () Bool)

(assert (=> b!755868 (= c!82770 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!755869 () Bool)

(assert (=> b!755869 (= e!421518 (= lt!336507 lt!336509))))

(declare-fun b!755870 () Bool)

(declare-fun res!511081 () Bool)

(assert (=> b!755870 (=> (not res!511081) (not e!421517))))

(declare-datatypes ((List!14122 0))(
  ( (Nil!14119) (Cons!14118 (h!15190 (_ BitVec 64)) (t!20445 List!14122)) )
))
(declare-fun arrayNoDuplicates!0 (array!41914 (_ BitVec 32) List!14122) Bool)

(assert (=> b!755870 (= res!511081 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14119))))

(assert (= (and start!65788 res!511087) b!755857))

(assert (= (and b!755857 res!511084) b!755859))

(assert (= (and b!755859 res!511072) b!755863))

(assert (= (and b!755863 res!511089) b!755865))

(assert (= (and b!755865 res!511076) b!755855))

(assert (= (and b!755855 res!511077) b!755851))

(assert (= (and b!755851 res!511086) b!755870))

(assert (= (and b!755870 res!511081) b!755850))

(assert (= (and b!755850 res!511082) b!755849))

(assert (= (and b!755849 res!511080) b!755854))

(assert (= (and b!755854 res!511078) b!755868))

(assert (= (and b!755868 c!82770) b!755861))

(assert (= (and b!755868 (not c!82770)) b!755858))

(assert (= (and b!755868 res!511074) b!755860))

(assert (= (and b!755860 res!511079) b!755853))

(assert (= (and b!755853 res!511075) b!755862))

(assert (= (and b!755853 (not res!511085)) b!755866))

(assert (= (and b!755866 (not res!511083)) b!755848))

(assert (= (and b!755848 (not res!511071)) b!755856))

(assert (= (and b!755856 c!82769) b!755864))

(assert (= (and b!755856 (not c!82769)) b!755867))

(assert (= (and b!755856 res!511088) b!755852))

(assert (= (and b!755852 res!511073) b!755869))

(declare-fun m!704017 () Bool)

(assert (=> b!755870 m!704017))

(declare-fun m!704019 () Bool)

(assert (=> b!755851 m!704019))

(declare-fun m!704021 () Bool)

(assert (=> b!755855 m!704021))

(declare-fun m!704023 () Bool)

(assert (=> start!65788 m!704023))

(declare-fun m!704025 () Bool)

(assert (=> start!65788 m!704025))

(declare-fun m!704027 () Bool)

(assert (=> b!755860 m!704027))

(declare-fun m!704029 () Bool)

(assert (=> b!755860 m!704029))

(declare-fun m!704031 () Bool)

(assert (=> b!755860 m!704031))

(declare-fun m!704033 () Bool)

(assert (=> b!755860 m!704033))

(assert (=> b!755860 m!704029))

(declare-fun m!704035 () Bool)

(assert (=> b!755860 m!704035))

(declare-fun m!704037 () Bool)

(assert (=> b!755852 m!704037))

(declare-fun m!704039 () Bool)

(assert (=> b!755852 m!704039))

(declare-fun m!704041 () Bool)

(assert (=> b!755865 m!704041))

(declare-fun m!704043 () Bool)

(assert (=> b!755862 m!704043))

(assert (=> b!755862 m!704043))

(declare-fun m!704045 () Bool)

(assert (=> b!755862 m!704045))

(declare-fun m!704047 () Bool)

(assert (=> b!755854 m!704047))

(assert (=> b!755859 m!704043))

(assert (=> b!755859 m!704043))

(declare-fun m!704049 () Bool)

(assert (=> b!755859 m!704049))

(assert (=> b!755858 m!704043))

(assert (=> b!755858 m!704043))

(declare-fun m!704051 () Bool)

(assert (=> b!755858 m!704051))

(assert (=> b!755866 m!704043))

(assert (=> b!755866 m!704043))

(assert (=> b!755866 m!704051))

(assert (=> b!755849 m!704043))

(assert (=> b!755849 m!704043))

(declare-fun m!704053 () Bool)

(assert (=> b!755849 m!704053))

(assert (=> b!755849 m!704053))

(assert (=> b!755849 m!704043))

(declare-fun m!704055 () Bool)

(assert (=> b!755849 m!704055))

(assert (=> b!755861 m!704043))

(assert (=> b!755861 m!704043))

(declare-fun m!704057 () Bool)

(assert (=> b!755861 m!704057))

(assert (=> b!755853 m!704043))

(assert (=> b!755853 m!704043))

(declare-fun m!704059 () Bool)

(assert (=> b!755853 m!704059))

(declare-fun m!704061 () Bool)

(assert (=> b!755853 m!704061))

(declare-fun m!704063 () Bool)

(assert (=> b!755853 m!704063))

(declare-fun m!704065 () Bool)

(assert (=> b!755863 m!704065))

(assert (=> b!755848 m!704027))

(declare-fun m!704067 () Bool)

(assert (=> b!755848 m!704067))

(push 1)


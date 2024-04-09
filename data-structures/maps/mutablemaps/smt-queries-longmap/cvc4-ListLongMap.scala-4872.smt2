; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67166 () Bool)

(assert start!67166)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42476 0))(
  ( (array!42477 (arr!20330 (Array (_ BitVec 32) (_ BitVec 64))) (size!20751 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42476)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!775885 () Bool)

(declare-fun e!431808 () Bool)

(declare-datatypes ((SeekEntryResult!7937 0))(
  ( (MissingZero!7937 (index!34115 (_ BitVec 32))) (Found!7937 (index!34116 (_ BitVec 32))) (Intermediate!7937 (undefined!8749 Bool) (index!34117 (_ BitVec 32)) (x!65081 (_ BitVec 32))) (Undefined!7937) (MissingVacant!7937 (index!34118 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42476 (_ BitVec 32)) SeekEntryResult!7937)

(assert (=> b!775885 (= e!431808 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20330 a!3186) j!159) a!3186 mask!3328) (Found!7937 j!159)))))

(declare-fun b!775886 () Bool)

(declare-fun res!524909 () Bool)

(declare-fun e!431812 () Bool)

(assert (=> b!775886 (=> (not res!524909) (not e!431812))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!775886 (= res!524909 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20751 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20751 a!3186))))))

(declare-fun b!775887 () Bool)

(declare-fun res!524914 () Bool)

(declare-fun e!431804 () Bool)

(assert (=> b!775887 (=> (not res!524914) (not e!431804))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!775887 (= res!524914 (validKeyInArray!0 (select (arr!20330 a!3186) j!159)))))

(declare-fun b!775888 () Bool)

(declare-fun e!431806 () Bool)

(declare-fun e!431809 () Bool)

(assert (=> b!775888 (= e!431806 e!431809)))

(declare-fun res!524905 () Bool)

(assert (=> b!775888 (=> (not res!524905) (not e!431809))))

(declare-fun lt!345674 () SeekEntryResult!7937)

(declare-fun lt!345678 () SeekEntryResult!7937)

(assert (=> b!775888 (= res!524905 (= lt!345674 lt!345678))))

(declare-fun lt!345676 () (_ BitVec 64))

(declare-fun lt!345677 () array!42476)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42476 (_ BitVec 32)) SeekEntryResult!7937)

(assert (=> b!775888 (= lt!345678 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345676 lt!345677 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775888 (= lt!345674 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345676 mask!3328) lt!345676 lt!345677 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!775888 (= lt!345676 (select (store (arr!20330 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!775888 (= lt!345677 (array!42477 (store (arr!20330 a!3186) i!1173 k!2102) (size!20751 a!3186)))))

(declare-fun b!775889 () Bool)

(declare-fun res!524913 () Bool)

(assert (=> b!775889 (=> (not res!524913) (not e!431806))))

(assert (=> b!775889 (= res!524913 e!431808)))

(declare-fun c!85893 () Bool)

(assert (=> b!775889 (= c!85893 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!775890 () Bool)

(declare-fun e!431805 () Bool)

(assert (=> b!775890 (= e!431809 (not e!431805))))

(declare-fun res!524906 () Bool)

(assert (=> b!775890 (=> res!524906 e!431805)))

(assert (=> b!775890 (= res!524906 (or (not (is-Intermediate!7937 lt!345678)) (bvslt x!1131 (x!65081 lt!345678)) (not (= x!1131 (x!65081 lt!345678))) (not (= index!1321 (index!34117 lt!345678)))))))

(declare-fun e!431810 () Bool)

(assert (=> b!775890 e!431810))

(declare-fun res!524900 () Bool)

(assert (=> b!775890 (=> (not res!524900) (not e!431810))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42476 (_ BitVec 32)) Bool)

(assert (=> b!775890 (= res!524900 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26768 0))(
  ( (Unit!26769) )
))
(declare-fun lt!345675 () Unit!26768)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42476 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26768)

(assert (=> b!775890 (= lt!345675 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!775891 () Bool)

(declare-fun res!524907 () Bool)

(assert (=> b!775891 (=> (not res!524907) (not e!431812))))

(assert (=> b!775891 (= res!524907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!524911 () Bool)

(assert (=> start!67166 (=> (not res!524911) (not e!431804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67166 (= res!524911 (validMask!0 mask!3328))))

(assert (=> start!67166 e!431804))

(assert (=> start!67166 true))

(declare-fun array_inv!16104 (array!42476) Bool)

(assert (=> start!67166 (array_inv!16104 a!3186)))

(declare-fun b!775892 () Bool)

(declare-fun res!524904 () Bool)

(assert (=> b!775892 (=> (not res!524904) (not e!431804))))

(assert (=> b!775892 (= res!524904 (validKeyInArray!0 k!2102))))

(declare-fun b!775893 () Bool)

(declare-fun e!431807 () Bool)

(assert (=> b!775893 (= e!431810 e!431807)))

(declare-fun res!524901 () Bool)

(assert (=> b!775893 (=> (not res!524901) (not e!431807))))

(declare-fun lt!345681 () SeekEntryResult!7937)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42476 (_ BitVec 32)) SeekEntryResult!7937)

(assert (=> b!775893 (= res!524901 (= (seekEntryOrOpen!0 (select (arr!20330 a!3186) j!159) a!3186 mask!3328) lt!345681))))

(assert (=> b!775893 (= lt!345681 (Found!7937 j!159))))

(declare-fun b!775894 () Bool)

(assert (=> b!775894 (= e!431812 e!431806)))

(declare-fun res!524903 () Bool)

(assert (=> b!775894 (=> (not res!524903) (not e!431806))))

(declare-fun lt!345680 () SeekEntryResult!7937)

(assert (=> b!775894 (= res!524903 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20330 a!3186) j!159) mask!3328) (select (arr!20330 a!3186) j!159) a!3186 mask!3328) lt!345680))))

(assert (=> b!775894 (= lt!345680 (Intermediate!7937 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!775895 () Bool)

(declare-fun res!524908 () Bool)

(assert (=> b!775895 (=> (not res!524908) (not e!431806))))

(assert (=> b!775895 (= res!524908 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20330 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!775896 () Bool)

(declare-fun res!524899 () Bool)

(assert (=> b!775896 (=> (not res!524899) (not e!431804))))

(assert (=> b!775896 (= res!524899 (and (= (size!20751 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20751 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20751 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!775897 () Bool)

(assert (=> b!775897 (= e!431804 e!431812)))

(declare-fun res!524902 () Bool)

(assert (=> b!775897 (=> (not res!524902) (not e!431812))))

(declare-fun lt!345682 () SeekEntryResult!7937)

(assert (=> b!775897 (= res!524902 (or (= lt!345682 (MissingZero!7937 i!1173)) (= lt!345682 (MissingVacant!7937 i!1173))))))

(assert (=> b!775897 (= lt!345682 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!775898 () Bool)

(assert (=> b!775898 (= e!431805 true)))

(declare-fun lt!345679 () SeekEntryResult!7937)

(assert (=> b!775898 (= lt!345679 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20330 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!775899 () Bool)

(declare-fun res!524912 () Bool)

(assert (=> b!775899 (=> (not res!524912) (not e!431804))))

(declare-fun arrayContainsKey!0 (array!42476 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!775899 (= res!524912 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!775900 () Bool)

(assert (=> b!775900 (= e!431807 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20330 a!3186) j!159) a!3186 mask!3328) lt!345681))))

(declare-fun b!775901 () Bool)

(declare-fun res!524910 () Bool)

(assert (=> b!775901 (=> (not res!524910) (not e!431812))))

(declare-datatypes ((List!14385 0))(
  ( (Nil!14382) (Cons!14381 (h!15489 (_ BitVec 64)) (t!20708 List!14385)) )
))
(declare-fun arrayNoDuplicates!0 (array!42476 (_ BitVec 32) List!14385) Bool)

(assert (=> b!775901 (= res!524910 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14382))))

(declare-fun b!775902 () Bool)

(assert (=> b!775902 (= e!431808 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20330 a!3186) j!159) a!3186 mask!3328) lt!345680))))

(assert (= (and start!67166 res!524911) b!775896))

(assert (= (and b!775896 res!524899) b!775887))

(assert (= (and b!775887 res!524914) b!775892))

(assert (= (and b!775892 res!524904) b!775899))

(assert (= (and b!775899 res!524912) b!775897))

(assert (= (and b!775897 res!524902) b!775891))

(assert (= (and b!775891 res!524907) b!775901))

(assert (= (and b!775901 res!524910) b!775886))

(assert (= (and b!775886 res!524909) b!775894))

(assert (= (and b!775894 res!524903) b!775895))

(assert (= (and b!775895 res!524908) b!775889))

(assert (= (and b!775889 c!85893) b!775902))

(assert (= (and b!775889 (not c!85893)) b!775885))

(assert (= (and b!775889 res!524913) b!775888))

(assert (= (and b!775888 res!524905) b!775890))

(assert (= (and b!775890 res!524900) b!775893))

(assert (= (and b!775893 res!524901) b!775900))

(assert (= (and b!775890 (not res!524906)) b!775898))

(declare-fun m!720105 () Bool)

(assert (=> b!775888 m!720105))

(declare-fun m!720107 () Bool)

(assert (=> b!775888 m!720107))

(declare-fun m!720109 () Bool)

(assert (=> b!775888 m!720109))

(declare-fun m!720111 () Bool)

(assert (=> b!775888 m!720111))

(assert (=> b!775888 m!720105))

(declare-fun m!720113 () Bool)

(assert (=> b!775888 m!720113))

(declare-fun m!720115 () Bool)

(assert (=> b!775887 m!720115))

(assert (=> b!775887 m!720115))

(declare-fun m!720117 () Bool)

(assert (=> b!775887 m!720117))

(assert (=> b!775900 m!720115))

(assert (=> b!775900 m!720115))

(declare-fun m!720119 () Bool)

(assert (=> b!775900 m!720119))

(declare-fun m!720121 () Bool)

(assert (=> b!775895 m!720121))

(declare-fun m!720123 () Bool)

(assert (=> start!67166 m!720123))

(declare-fun m!720125 () Bool)

(assert (=> start!67166 m!720125))

(assert (=> b!775898 m!720115))

(assert (=> b!775898 m!720115))

(declare-fun m!720127 () Bool)

(assert (=> b!775898 m!720127))

(declare-fun m!720129 () Bool)

(assert (=> b!775892 m!720129))

(assert (=> b!775885 m!720115))

(assert (=> b!775885 m!720115))

(assert (=> b!775885 m!720127))

(assert (=> b!775894 m!720115))

(assert (=> b!775894 m!720115))

(declare-fun m!720131 () Bool)

(assert (=> b!775894 m!720131))

(assert (=> b!775894 m!720131))

(assert (=> b!775894 m!720115))

(declare-fun m!720133 () Bool)

(assert (=> b!775894 m!720133))

(declare-fun m!720135 () Bool)

(assert (=> b!775897 m!720135))

(declare-fun m!720137 () Bool)

(assert (=> b!775899 m!720137))

(declare-fun m!720139 () Bool)

(assert (=> b!775901 m!720139))

(declare-fun m!720141 () Bool)

(assert (=> b!775891 m!720141))

(assert (=> b!775902 m!720115))

(assert (=> b!775902 m!720115))

(declare-fun m!720143 () Bool)

(assert (=> b!775902 m!720143))

(declare-fun m!720145 () Bool)

(assert (=> b!775890 m!720145))

(declare-fun m!720147 () Bool)

(assert (=> b!775890 m!720147))

(assert (=> b!775893 m!720115))

(assert (=> b!775893 m!720115))

(declare-fun m!720149 () Bool)

(assert (=> b!775893 m!720149))

(push 1)


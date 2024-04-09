; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65224 () Bool)

(assert start!65224)

(declare-fun b!738066 () Bool)

(declare-fun e!412811 () Bool)

(declare-fun e!412809 () Bool)

(assert (=> b!738066 (= e!412811 e!412809)))

(declare-fun res!496262 () Bool)

(assert (=> b!738066 (=> (not res!496262) (not e!412809))))

(declare-datatypes ((array!41350 0))(
  ( (array!41351 (arr!19785 (Array (_ BitVec 32) (_ BitVec 64))) (size!20206 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41350)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7392 0))(
  ( (MissingZero!7392 (index!31935 (_ BitVec 32))) (Found!7392 (index!31936 (_ BitVec 32))) (Intermediate!7392 (undefined!8204 Bool) (index!31937 (_ BitVec 32)) (x!62959 (_ BitVec 32))) (Undefined!7392) (MissingVacant!7392 (index!31938 (_ BitVec 32))) )
))
(declare-fun lt!327589 () SeekEntryResult!7392)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41350 (_ BitVec 32)) SeekEntryResult!7392)

(assert (=> b!738066 (= res!496262 (= (seekEntryOrOpen!0 (select (arr!19785 a!3186) j!159) a!3186 mask!3328) lt!327589))))

(assert (=> b!738066 (= lt!327589 (Found!7392 j!159))))

(declare-fun e!412805 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun b!738067 () Bool)

(declare-fun lt!327584 () SeekEntryResult!7392)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41350 (_ BitVec 32)) SeekEntryResult!7392)

(assert (=> b!738067 (= e!412805 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19785 a!3186) j!159) a!3186 mask!3328) lt!327584))))

(declare-fun b!738068 () Bool)

(declare-fun res!496258 () Bool)

(declare-fun e!412804 () Bool)

(assert (=> b!738068 (=> (not res!496258) (not e!412804))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!738068 (= res!496258 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19785 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!738069 () Bool)

(declare-fun res!496264 () Bool)

(declare-fun e!412807 () Bool)

(assert (=> b!738069 (=> (not res!496264) (not e!412807))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!738069 (= res!496264 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20206 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20206 a!3186))))))

(declare-fun b!738070 () Bool)

(declare-fun res!496256 () Bool)

(declare-fun e!412812 () Bool)

(assert (=> b!738070 (=> res!496256 e!412812)))

(declare-fun e!412806 () Bool)

(assert (=> b!738070 (= res!496256 e!412806)))

(declare-fun c!81286 () Bool)

(declare-fun lt!327591 () Bool)

(assert (=> b!738070 (= c!81286 lt!327591)))

(declare-fun b!738071 () Bool)

(declare-fun res!496255 () Bool)

(declare-fun e!412810 () Bool)

(assert (=> b!738071 (=> (not res!496255) (not e!412810))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!738071 (= res!496255 (validKeyInArray!0 (select (arr!19785 a!3186) j!159)))))

(declare-fun b!738072 () Bool)

(declare-fun res!496266 () Bool)

(assert (=> b!738072 (=> (not res!496266) (not e!412810))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!738072 (= res!496266 (validKeyInArray!0 k!2102))))

(declare-fun b!738073 () Bool)

(declare-fun res!496260 () Bool)

(assert (=> b!738073 (=> (not res!496260) (not e!412807))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41350 (_ BitVec 32)) Bool)

(assert (=> b!738073 (= res!496260 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!738074 () Bool)

(declare-fun lt!327587 () (_ BitVec 32))

(assert (=> b!738074 (= e!412806 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327587 (select (arr!19785 a!3186) j!159) a!3186 mask!3328) lt!327584)))))

(declare-fun b!738075 () Bool)

(declare-fun res!496272 () Bool)

(assert (=> b!738075 (=> (not res!496272) (not e!412804))))

(assert (=> b!738075 (= res!496272 e!412805)))

(declare-fun c!81288 () Bool)

(assert (=> b!738075 (= c!81288 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!738076 () Bool)

(assert (=> b!738076 (= e!412812 true)))

(declare-fun lt!327583 () SeekEntryResult!7392)

(declare-fun lt!327593 () array!41350)

(declare-fun lt!327586 () (_ BitVec 64))

(assert (=> b!738076 (= lt!327583 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327587 lt!327586 lt!327593 mask!3328))))

(declare-fun b!738077 () Bool)

(assert (=> b!738077 (= e!412807 e!412804)))

(declare-fun res!496265 () Bool)

(assert (=> b!738077 (=> (not res!496265) (not e!412804))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738077 (= res!496265 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19785 a!3186) j!159) mask!3328) (select (arr!19785 a!3186) j!159) a!3186 mask!3328) lt!327584))))

(assert (=> b!738077 (= lt!327584 (Intermediate!7392 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!738078 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41350 (_ BitVec 32)) SeekEntryResult!7392)

(assert (=> b!738078 (= e!412809 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19785 a!3186) j!159) a!3186 mask!3328) lt!327589))))

(declare-fun b!738079 () Bool)

(declare-fun e!412815 () Bool)

(assert (=> b!738079 (= e!412804 e!412815)))

(declare-fun res!496270 () Bool)

(assert (=> b!738079 (=> (not res!496270) (not e!412815))))

(declare-fun lt!327585 () SeekEntryResult!7392)

(declare-fun lt!327595 () SeekEntryResult!7392)

(assert (=> b!738079 (= res!496270 (= lt!327585 lt!327595))))

(assert (=> b!738079 (= lt!327595 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327586 lt!327593 mask!3328))))

(assert (=> b!738079 (= lt!327585 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327586 mask!3328) lt!327586 lt!327593 mask!3328))))

(assert (=> b!738079 (= lt!327586 (select (store (arr!19785 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!738079 (= lt!327593 (array!41351 (store (arr!19785 a!3186) i!1173 k!2102) (size!20206 a!3186)))))

(declare-fun b!738080 () Bool)

(declare-fun res!496271 () Bool)

(assert (=> b!738080 (=> (not res!496271) (not e!412807))))

(declare-datatypes ((List!13840 0))(
  ( (Nil!13837) (Cons!13836 (h!14908 (_ BitVec 64)) (t!20163 List!13840)) )
))
(declare-fun arrayNoDuplicates!0 (array!41350 (_ BitVec 32) List!13840) Bool)

(assert (=> b!738080 (= res!496271 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13837))))

(declare-fun b!738081 () Bool)

(assert (=> b!738081 (= e!412805 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19785 a!3186) j!159) a!3186 mask!3328) (Found!7392 j!159)))))

(declare-fun res!496269 () Bool)

(assert (=> start!65224 (=> (not res!496269) (not e!412810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65224 (= res!496269 (validMask!0 mask!3328))))

(assert (=> start!65224 e!412810))

(assert (=> start!65224 true))

(declare-fun array_inv!15559 (array!41350) Bool)

(assert (=> start!65224 (array_inv!15559 a!3186)))

(declare-fun lt!327592 () SeekEntryResult!7392)

(declare-fun b!738082 () Bool)

(assert (=> b!738082 (= e!412806 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327587 resIntermediateIndex!5 (select (arr!19785 a!3186) j!159) a!3186 mask!3328) lt!327592)))))

(declare-fun b!738083 () Bool)

(assert (=> b!738083 (= e!412810 e!412807)))

(declare-fun res!496268 () Bool)

(assert (=> b!738083 (=> (not res!496268) (not e!412807))))

(declare-fun lt!327594 () SeekEntryResult!7392)

(assert (=> b!738083 (= res!496268 (or (= lt!327594 (MissingZero!7392 i!1173)) (= lt!327594 (MissingVacant!7392 i!1173))))))

(assert (=> b!738083 (= lt!327594 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!738084 () Bool)

(declare-fun e!412813 () Bool)

(assert (=> b!738084 (= e!412813 e!412812)))

(declare-fun res!496263 () Bool)

(assert (=> b!738084 (=> res!496263 e!412812)))

(assert (=> b!738084 (= res!496263 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327587 #b00000000000000000000000000000000) (bvsge lt!327587 (size!20206 a!3186))))))

(declare-datatypes ((Unit!25186 0))(
  ( (Unit!25187) )
))
(declare-fun lt!327590 () Unit!25186)

(declare-fun e!412814 () Unit!25186)

(assert (=> b!738084 (= lt!327590 e!412814)))

(declare-fun c!81287 () Bool)

(assert (=> b!738084 (= c!81287 lt!327591)))

(assert (=> b!738084 (= lt!327591 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738084 (= lt!327587 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!738085 () Bool)

(declare-fun res!496259 () Bool)

(assert (=> b!738085 (=> (not res!496259) (not e!412810))))

(assert (=> b!738085 (= res!496259 (and (= (size!20206 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20206 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20206 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!738086 () Bool)

(declare-fun Unit!25188 () Unit!25186)

(assert (=> b!738086 (= e!412814 Unit!25188)))

(assert (=> b!738086 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327587 (select (arr!19785 a!3186) j!159) a!3186 mask!3328) lt!327584)))

(declare-fun b!738087 () Bool)

(declare-fun res!496257 () Bool)

(assert (=> b!738087 (=> (not res!496257) (not e!412810))))

(declare-fun arrayContainsKey!0 (array!41350 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!738087 (= res!496257 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!738088 () Bool)

(declare-fun Unit!25189 () Unit!25186)

(assert (=> b!738088 (= e!412814 Unit!25189)))

(declare-fun lt!327596 () SeekEntryResult!7392)

(assert (=> b!738088 (= lt!327596 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19785 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!738088 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327587 resIntermediateIndex!5 (select (arr!19785 a!3186) j!159) a!3186 mask!3328) lt!327592)))

(declare-fun b!738089 () Bool)

(assert (=> b!738089 (= e!412815 (not e!412813))))

(declare-fun res!496267 () Bool)

(assert (=> b!738089 (=> res!496267 e!412813)))

(assert (=> b!738089 (= res!496267 (or (not (is-Intermediate!7392 lt!327595)) (bvsge x!1131 (x!62959 lt!327595))))))

(assert (=> b!738089 (= lt!327592 (Found!7392 j!159))))

(assert (=> b!738089 e!412811))

(declare-fun res!496261 () Bool)

(assert (=> b!738089 (=> (not res!496261) (not e!412811))))

(assert (=> b!738089 (= res!496261 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!327588 () Unit!25186)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41350 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25186)

(assert (=> b!738089 (= lt!327588 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!65224 res!496269) b!738085))

(assert (= (and b!738085 res!496259) b!738071))

(assert (= (and b!738071 res!496255) b!738072))

(assert (= (and b!738072 res!496266) b!738087))

(assert (= (and b!738087 res!496257) b!738083))

(assert (= (and b!738083 res!496268) b!738073))

(assert (= (and b!738073 res!496260) b!738080))

(assert (= (and b!738080 res!496271) b!738069))

(assert (= (and b!738069 res!496264) b!738077))

(assert (= (and b!738077 res!496265) b!738068))

(assert (= (and b!738068 res!496258) b!738075))

(assert (= (and b!738075 c!81288) b!738067))

(assert (= (and b!738075 (not c!81288)) b!738081))

(assert (= (and b!738075 res!496272) b!738079))

(assert (= (and b!738079 res!496270) b!738089))

(assert (= (and b!738089 res!496261) b!738066))

(assert (= (and b!738066 res!496262) b!738078))

(assert (= (and b!738089 (not res!496267)) b!738084))

(assert (= (and b!738084 c!81287) b!738086))

(assert (= (and b!738084 (not c!81287)) b!738088))

(assert (= (and b!738084 (not res!496263)) b!738070))

(assert (= (and b!738070 c!81286) b!738074))

(assert (= (and b!738070 (not c!81286)) b!738082))

(assert (= (and b!738070 (not res!496256)) b!738076))

(declare-fun m!689857 () Bool)

(assert (=> b!738081 m!689857))

(assert (=> b!738081 m!689857))

(declare-fun m!689859 () Bool)

(assert (=> b!738081 m!689859))

(declare-fun m!689861 () Bool)

(assert (=> start!65224 m!689861))

(declare-fun m!689863 () Bool)

(assert (=> start!65224 m!689863))

(declare-fun m!689865 () Bool)

(assert (=> b!738073 m!689865))

(declare-fun m!689867 () Bool)

(assert (=> b!738087 m!689867))

(declare-fun m!689869 () Bool)

(assert (=> b!738089 m!689869))

(declare-fun m!689871 () Bool)

(assert (=> b!738089 m!689871))

(assert (=> b!738067 m!689857))

(assert (=> b!738067 m!689857))

(declare-fun m!689873 () Bool)

(assert (=> b!738067 m!689873))

(declare-fun m!689875 () Bool)

(assert (=> b!738080 m!689875))

(assert (=> b!738082 m!689857))

(assert (=> b!738082 m!689857))

(declare-fun m!689877 () Bool)

(assert (=> b!738082 m!689877))

(assert (=> b!738077 m!689857))

(assert (=> b!738077 m!689857))

(declare-fun m!689879 () Bool)

(assert (=> b!738077 m!689879))

(assert (=> b!738077 m!689879))

(assert (=> b!738077 m!689857))

(declare-fun m!689881 () Bool)

(assert (=> b!738077 m!689881))

(assert (=> b!738086 m!689857))

(assert (=> b!738086 m!689857))

(declare-fun m!689883 () Bool)

(assert (=> b!738086 m!689883))

(declare-fun m!689885 () Bool)

(assert (=> b!738084 m!689885))

(assert (=> b!738071 m!689857))

(assert (=> b!738071 m!689857))

(declare-fun m!689887 () Bool)

(assert (=> b!738071 m!689887))

(assert (=> b!738088 m!689857))

(assert (=> b!738088 m!689857))

(assert (=> b!738088 m!689859))

(assert (=> b!738088 m!689857))

(assert (=> b!738088 m!689877))

(assert (=> b!738078 m!689857))

(assert (=> b!738078 m!689857))

(declare-fun m!689889 () Bool)

(assert (=> b!738078 m!689889))

(declare-fun m!689891 () Bool)

(assert (=> b!738068 m!689891))

(assert (=> b!738066 m!689857))

(assert (=> b!738066 m!689857))

(declare-fun m!689893 () Bool)

(assert (=> b!738066 m!689893))

(declare-fun m!689895 () Bool)

(assert (=> b!738083 m!689895))

(declare-fun m!689897 () Bool)

(assert (=> b!738072 m!689897))

(declare-fun m!689899 () Bool)

(assert (=> b!738076 m!689899))

(declare-fun m!689901 () Bool)

(assert (=> b!738079 m!689901))

(assert (=> b!738079 m!689901))

(declare-fun m!689903 () Bool)

(assert (=> b!738079 m!689903))

(declare-fun m!689905 () Bool)

(assert (=> b!738079 m!689905))

(declare-fun m!689907 () Bool)

(assert (=> b!738079 m!689907))

(declare-fun m!689909 () Bool)

(assert (=> b!738079 m!689909))

(assert (=> b!738074 m!689857))

(assert (=> b!738074 m!689857))

(assert (=> b!738074 m!689883))

(push 1)


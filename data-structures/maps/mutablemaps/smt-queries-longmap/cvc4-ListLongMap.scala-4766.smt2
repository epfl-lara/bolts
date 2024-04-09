; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65678 () Bool)

(assert start!65678)

(declare-fun res!507953 () Bool)

(declare-fun e!419530 () Bool)

(assert (=> start!65678 (=> (not res!507953) (not e!419530))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65678 (= res!507953 (validMask!0 mask!3328))))

(assert (=> start!65678 e!419530))

(assert (=> start!65678 true))

(declare-datatypes ((array!41804 0))(
  ( (array!41805 (arr!20012 (Array (_ BitVec 32) (_ BitVec 64))) (size!20433 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41804)

(declare-fun array_inv!15786 (array!41804) Bool)

(assert (=> start!65678 (array_inv!15786 a!3186)))

(declare-datatypes ((SeekEntryResult!7619 0))(
  ( (MissingZero!7619 (index!32843 (_ BitVec 32))) (Found!7619 (index!32844 (_ BitVec 32))) (Intermediate!7619 (undefined!8431 Bool) (index!32845 (_ BitVec 32)) (x!63786 (_ BitVec 32))) (Undefined!7619) (MissingVacant!7619 (index!32846 (_ BitVec 32))) )
))
(declare-fun lt!334533 () SeekEntryResult!7619)

(declare-fun b!752053 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!419533 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41804 (_ BitVec 32)) SeekEntryResult!7619)

(assert (=> b!752053 (= e!419533 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20012 a!3186) j!159) a!3186 mask!3328) lt!334533))))

(declare-fun b!752054 () Bool)

(declare-fun res!507947 () Bool)

(assert (=> b!752054 (=> (not res!507947) (not e!419530))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!752054 (= res!507947 (validKeyInArray!0 k!2102))))

(declare-fun b!752055 () Bool)

(declare-fun res!507950 () Bool)

(assert (=> b!752055 (=> (not res!507950) (not e!419530))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!752055 (= res!507950 (and (= (size!20433 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20433 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20433 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!752056 () Bool)

(declare-fun e!419535 () Bool)

(declare-fun e!419531 () Bool)

(assert (=> b!752056 (= e!419535 e!419531)))

(declare-fun res!507946 () Bool)

(assert (=> b!752056 (=> res!507946 e!419531)))

(declare-fun lt!334538 () SeekEntryResult!7619)

(declare-fun lt!334532 () SeekEntryResult!7619)

(assert (=> b!752056 (= res!507946 (not (= lt!334538 lt!334532)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41804 (_ BitVec 32)) SeekEntryResult!7619)

(assert (=> b!752056 (= lt!334538 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20012 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!752057 () Bool)

(declare-fun res!507942 () Bool)

(declare-fun e!419534 () Bool)

(assert (=> b!752057 (=> (not res!507942) (not e!419534))))

(assert (=> b!752057 (= res!507942 e!419533)))

(declare-fun c!82440 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!752057 (= c!82440 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!752058 () Bool)

(declare-fun res!507952 () Bool)

(declare-fun e!419538 () Bool)

(assert (=> b!752058 (=> (not res!507952) (not e!419538))))

(declare-datatypes ((List!14067 0))(
  ( (Nil!14064) (Cons!14063 (h!15135 (_ BitVec 64)) (t!20390 List!14067)) )
))
(declare-fun arrayNoDuplicates!0 (array!41804 (_ BitVec 32) List!14067) Bool)

(assert (=> b!752058 (= res!507952 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14064))))

(declare-fun b!752059 () Bool)

(declare-fun res!507939 () Bool)

(assert (=> b!752059 (=> (not res!507939) (not e!419538))))

(assert (=> b!752059 (= res!507939 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20433 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20433 a!3186))))))

(declare-fun b!752060 () Bool)

(declare-fun e!419536 () Bool)

(assert (=> b!752060 (= e!419534 e!419536)))

(declare-fun res!507944 () Bool)

(assert (=> b!752060 (=> (not res!507944) (not e!419536))))

(declare-fun lt!334529 () SeekEntryResult!7619)

(declare-fun lt!334528 () SeekEntryResult!7619)

(assert (=> b!752060 (= res!507944 (= lt!334529 lt!334528))))

(declare-fun lt!334530 () (_ BitVec 64))

(declare-fun lt!334537 () array!41804)

(assert (=> b!752060 (= lt!334528 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334530 lt!334537 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!752060 (= lt!334529 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334530 mask!3328) lt!334530 lt!334537 mask!3328))))

(assert (=> b!752060 (= lt!334530 (select (store (arr!20012 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!752060 (= lt!334537 (array!41805 (store (arr!20012 a!3186) i!1173 k!2102) (size!20433 a!3186)))))

(declare-fun b!752061 () Bool)

(declare-datatypes ((Unit!25878 0))(
  ( (Unit!25879) )
))
(declare-fun e!419529 () Unit!25878)

(declare-fun Unit!25880 () Unit!25878)

(assert (=> b!752061 (= e!419529 Unit!25880)))

(declare-fun b!752062 () Bool)

(declare-fun res!507943 () Bool)

(assert (=> b!752062 (=> (not res!507943) (not e!419538))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41804 (_ BitVec 32)) Bool)

(assert (=> b!752062 (= res!507943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!752063 () Bool)

(declare-fun e!419528 () Bool)

(declare-fun lt!334534 () SeekEntryResult!7619)

(assert (=> b!752063 (= e!419528 (= lt!334534 lt!334538))))

(declare-fun b!752064 () Bool)

(declare-fun res!507949 () Bool)

(assert (=> b!752064 (=> (not res!507949) (not e!419528))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41804 (_ BitVec 32)) SeekEntryResult!7619)

(assert (=> b!752064 (= res!507949 (= (seekEntryOrOpen!0 lt!334530 lt!334537 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334530 lt!334537 mask!3328)))))

(declare-fun b!752065 () Bool)

(assert (=> b!752065 (= e!419536 (not e!419535))))

(declare-fun res!507940 () Bool)

(assert (=> b!752065 (=> res!507940 e!419535)))

(assert (=> b!752065 (= res!507940 (or (not (is-Intermediate!7619 lt!334528)) (bvslt x!1131 (x!63786 lt!334528)) (not (= x!1131 (x!63786 lt!334528))) (not (= index!1321 (index!32845 lt!334528)))))))

(declare-fun e!419527 () Bool)

(assert (=> b!752065 e!419527))

(declare-fun res!507937 () Bool)

(assert (=> b!752065 (=> (not res!507937) (not e!419527))))

(assert (=> b!752065 (= res!507937 (= lt!334534 lt!334532))))

(assert (=> b!752065 (= lt!334532 (Found!7619 j!159))))

(assert (=> b!752065 (= lt!334534 (seekEntryOrOpen!0 (select (arr!20012 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!752065 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!334535 () Unit!25878)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41804 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25878)

(assert (=> b!752065 (= lt!334535 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!752066 () Bool)

(assert (=> b!752066 (= e!419527 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20012 a!3186) j!159) a!3186 mask!3328) lt!334532))))

(declare-fun b!752067 () Bool)

(declare-fun e!419537 () Bool)

(assert (=> b!752067 (= e!419537 true)))

(assert (=> b!752067 e!419528))

(declare-fun res!507954 () Bool)

(assert (=> b!752067 (=> (not res!507954) (not e!419528))))

(declare-fun lt!334527 () (_ BitVec 64))

(assert (=> b!752067 (= res!507954 (= lt!334527 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334536 () Unit!25878)

(assert (=> b!752067 (= lt!334536 e!419529)))

(declare-fun c!82439 () Bool)

(assert (=> b!752067 (= c!82439 (= lt!334527 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!752068 () Bool)

(assert (=> b!752068 (= e!419531 e!419537)))

(declare-fun res!507951 () Bool)

(assert (=> b!752068 (=> res!507951 e!419537)))

(assert (=> b!752068 (= res!507951 (= lt!334527 lt!334530))))

(assert (=> b!752068 (= lt!334527 (select (store (arr!20012 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!752069 () Bool)

(declare-fun res!507945 () Bool)

(assert (=> b!752069 (=> (not res!507945) (not e!419530))))

(assert (=> b!752069 (= res!507945 (validKeyInArray!0 (select (arr!20012 a!3186) j!159)))))

(declare-fun b!752070 () Bool)

(assert (=> b!752070 (= e!419538 e!419534)))

(declare-fun res!507936 () Bool)

(assert (=> b!752070 (=> (not res!507936) (not e!419534))))

(assert (=> b!752070 (= res!507936 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20012 a!3186) j!159) mask!3328) (select (arr!20012 a!3186) j!159) a!3186 mask!3328) lt!334533))))

(assert (=> b!752070 (= lt!334533 (Intermediate!7619 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!752071 () Bool)

(assert (=> b!752071 (= e!419533 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20012 a!3186) j!159) a!3186 mask!3328) (Found!7619 j!159)))))

(declare-fun b!752072 () Bool)

(declare-fun res!507938 () Bool)

(assert (=> b!752072 (=> (not res!507938) (not e!419530))))

(declare-fun arrayContainsKey!0 (array!41804 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!752072 (= res!507938 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!752073 () Bool)

(declare-fun Unit!25881 () Unit!25878)

(assert (=> b!752073 (= e!419529 Unit!25881)))

(assert (=> b!752073 false))

(declare-fun b!752074 () Bool)

(assert (=> b!752074 (= e!419530 e!419538)))

(declare-fun res!507948 () Bool)

(assert (=> b!752074 (=> (not res!507948) (not e!419538))))

(declare-fun lt!334531 () SeekEntryResult!7619)

(assert (=> b!752074 (= res!507948 (or (= lt!334531 (MissingZero!7619 i!1173)) (= lt!334531 (MissingVacant!7619 i!1173))))))

(assert (=> b!752074 (= lt!334531 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!752075 () Bool)

(declare-fun res!507941 () Bool)

(assert (=> b!752075 (=> (not res!507941) (not e!419534))))

(assert (=> b!752075 (= res!507941 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20012 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!65678 res!507953) b!752055))

(assert (= (and b!752055 res!507950) b!752069))

(assert (= (and b!752069 res!507945) b!752054))

(assert (= (and b!752054 res!507947) b!752072))

(assert (= (and b!752072 res!507938) b!752074))

(assert (= (and b!752074 res!507948) b!752062))

(assert (= (and b!752062 res!507943) b!752058))

(assert (= (and b!752058 res!507952) b!752059))

(assert (= (and b!752059 res!507939) b!752070))

(assert (= (and b!752070 res!507936) b!752075))

(assert (= (and b!752075 res!507941) b!752057))

(assert (= (and b!752057 c!82440) b!752053))

(assert (= (and b!752057 (not c!82440)) b!752071))

(assert (= (and b!752057 res!507942) b!752060))

(assert (= (and b!752060 res!507944) b!752065))

(assert (= (and b!752065 res!507937) b!752066))

(assert (= (and b!752065 (not res!507940)) b!752056))

(assert (= (and b!752056 (not res!507946)) b!752068))

(assert (= (and b!752068 (not res!507951)) b!752067))

(assert (= (and b!752067 c!82439) b!752073))

(assert (= (and b!752067 (not c!82439)) b!752061))

(assert (= (and b!752067 res!507954) b!752064))

(assert (= (and b!752064 res!507949) b!752063))

(declare-fun m!701157 () Bool)

(assert (=> b!752056 m!701157))

(assert (=> b!752056 m!701157))

(declare-fun m!701159 () Bool)

(assert (=> b!752056 m!701159))

(declare-fun m!701161 () Bool)

(assert (=> b!752062 m!701161))

(declare-fun m!701163 () Bool)

(assert (=> b!752054 m!701163))

(assert (=> b!752066 m!701157))

(assert (=> b!752066 m!701157))

(declare-fun m!701165 () Bool)

(assert (=> b!752066 m!701165))

(declare-fun m!701167 () Bool)

(assert (=> b!752068 m!701167))

(declare-fun m!701169 () Bool)

(assert (=> b!752068 m!701169))

(declare-fun m!701171 () Bool)

(assert (=> b!752064 m!701171))

(declare-fun m!701173 () Bool)

(assert (=> b!752064 m!701173))

(declare-fun m!701175 () Bool)

(assert (=> b!752074 m!701175))

(declare-fun m!701177 () Bool)

(assert (=> b!752072 m!701177))

(declare-fun m!701179 () Bool)

(assert (=> b!752075 m!701179))

(assert (=> b!752069 m!701157))

(assert (=> b!752069 m!701157))

(declare-fun m!701181 () Bool)

(assert (=> b!752069 m!701181))

(assert (=> b!752053 m!701157))

(assert (=> b!752053 m!701157))

(declare-fun m!701183 () Bool)

(assert (=> b!752053 m!701183))

(assert (=> b!752071 m!701157))

(assert (=> b!752071 m!701157))

(assert (=> b!752071 m!701159))

(declare-fun m!701185 () Bool)

(assert (=> b!752060 m!701185))

(declare-fun m!701187 () Bool)

(assert (=> b!752060 m!701187))

(declare-fun m!701189 () Bool)

(assert (=> b!752060 m!701189))

(assert (=> b!752060 m!701167))

(declare-fun m!701191 () Bool)

(assert (=> b!752060 m!701191))

(assert (=> b!752060 m!701185))

(declare-fun m!701193 () Bool)

(assert (=> start!65678 m!701193))

(declare-fun m!701195 () Bool)

(assert (=> start!65678 m!701195))

(declare-fun m!701197 () Bool)

(assert (=> b!752058 m!701197))

(assert (=> b!752065 m!701157))

(assert (=> b!752065 m!701157))

(declare-fun m!701199 () Bool)

(assert (=> b!752065 m!701199))

(declare-fun m!701201 () Bool)

(assert (=> b!752065 m!701201))

(declare-fun m!701203 () Bool)

(assert (=> b!752065 m!701203))

(assert (=> b!752070 m!701157))

(assert (=> b!752070 m!701157))

(declare-fun m!701205 () Bool)

(assert (=> b!752070 m!701205))

(assert (=> b!752070 m!701205))

(assert (=> b!752070 m!701157))

(declare-fun m!701207 () Bool)

(assert (=> b!752070 m!701207))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67130 () Bool)

(assert start!67130)

(declare-fun b!774726 () Bool)

(declare-fun res!523969 () Bool)

(declare-fun e!431252 () Bool)

(assert (=> b!774726 (=> (not res!523969) (not e!431252))))

(declare-datatypes ((array!42440 0))(
  ( (array!42441 (arr!20312 (Array (_ BitVec 32) (_ BitVec 64))) (size!20733 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42440)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42440 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!774726 (= res!523969 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!774727 () Bool)

(declare-datatypes ((Unit!26712 0))(
  ( (Unit!26713) )
))
(declare-fun e!431248 () Unit!26712)

(declare-fun Unit!26714 () Unit!26712)

(assert (=> b!774727 (= e!431248 Unit!26714)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7919 0))(
  ( (MissingZero!7919 (index!34043 (_ BitVec 32))) (Found!7919 (index!34044 (_ BitVec 32))) (Intermediate!7919 (undefined!8731 Bool) (index!34045 (_ BitVec 32)) (x!65015 (_ BitVec 32))) (Undefined!7919) (MissingVacant!7919 (index!34046 (_ BitVec 32))) )
))
(declare-fun lt!345085 () SeekEntryResult!7919)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42440 (_ BitVec 32)) SeekEntryResult!7919)

(assert (=> b!774727 (= lt!345085 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20312 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!345087 () SeekEntryResult!7919)

(declare-fun lt!345080 () (_ BitVec 32))

(assert (=> b!774727 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345080 resIntermediateIndex!5 (select (arr!20312 a!3186) j!159) a!3186 mask!3328) lt!345087)))

(declare-fun b!774728 () Bool)

(declare-fun res!523961 () Bool)

(declare-fun e!431246 () Bool)

(assert (=> b!774728 (=> (not res!523961) (not e!431246))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!774728 (= res!523961 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20312 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!774729 () Bool)

(declare-fun res!523962 () Bool)

(declare-fun e!431254 () Bool)

(assert (=> b!774729 (=> res!523962 e!431254)))

(declare-fun lt!345082 () (_ BitVec 64))

(declare-fun lt!345086 () SeekEntryResult!7919)

(declare-fun lt!345075 () array!42440)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42440 (_ BitVec 32)) SeekEntryResult!7919)

(assert (=> b!774729 (= res!523962 (not (= lt!345086 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345080 lt!345082 lt!345075 mask!3328))))))

(declare-fun b!774730 () Bool)

(assert (=> b!774730 (= e!431254 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42440 (_ BitVec 32)) SeekEntryResult!7919)

(assert (=> b!774730 (= (seekEntryOrOpen!0 lt!345082 lt!345075 mask!3328) lt!345087)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!345079 () Unit!26712)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!42440 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26712)

(assert (=> b!774730 (= lt!345079 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k!2102 j!159 lt!345080 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun b!774731 () Bool)

(declare-fun res!523978 () Bool)

(assert (=> b!774731 (=> (not res!523978) (not e!431252))))

(assert (=> b!774731 (= res!523978 (and (= (size!20733 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20733 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20733 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!774732 () Bool)

(declare-fun res!523970 () Bool)

(assert (=> b!774732 (=> (not res!523970) (not e!431252))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!774732 (= res!523970 (validKeyInArray!0 (select (arr!20312 a!3186) j!159)))))

(declare-fun b!774733 () Bool)

(declare-fun e!431253 () Bool)

(assert (=> b!774733 (= e!431253 e!431246)))

(declare-fun res!523973 () Bool)

(assert (=> b!774733 (=> (not res!523973) (not e!431246))))

(declare-fun lt!345078 () SeekEntryResult!7919)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!774733 (= res!523973 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20312 a!3186) j!159) mask!3328) (select (arr!20312 a!3186) j!159) a!3186 mask!3328) lt!345078))))

(assert (=> b!774733 (= lt!345078 (Intermediate!7919 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun e!431249 () Bool)

(declare-fun b!774734 () Bool)

(assert (=> b!774734 (= e!431249 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345080 resIntermediateIndex!5 (select (arr!20312 a!3186) j!159) a!3186 mask!3328) lt!345087)))))

(declare-fun b!774735 () Bool)

(declare-fun e!431244 () Bool)

(declare-fun e!431250 () Bool)

(assert (=> b!774735 (= e!431244 (not e!431250))))

(declare-fun res!523964 () Bool)

(assert (=> b!774735 (=> res!523964 e!431250)))

(declare-fun lt!345083 () SeekEntryResult!7919)

(assert (=> b!774735 (= res!523964 (or (not (is-Intermediate!7919 lt!345083)) (bvsge x!1131 (x!65015 lt!345083))))))

(assert (=> b!774735 (= lt!345087 (Found!7919 j!159))))

(declare-fun e!431245 () Bool)

(assert (=> b!774735 e!431245))

(declare-fun res!523974 () Bool)

(assert (=> b!774735 (=> (not res!523974) (not e!431245))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42440 (_ BitVec 32)) Bool)

(assert (=> b!774735 (= res!523974 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!345084 () Unit!26712)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42440 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26712)

(assert (=> b!774735 (= lt!345084 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!523966 () Bool)

(assert (=> start!67130 (=> (not res!523966) (not e!431252))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67130 (= res!523966 (validMask!0 mask!3328))))

(assert (=> start!67130 e!431252))

(assert (=> start!67130 true))

(declare-fun array_inv!16086 (array!42440) Bool)

(assert (=> start!67130 (array_inv!16086 a!3186)))

(declare-fun b!774736 () Bool)

(declare-fun e!431247 () Bool)

(assert (=> b!774736 (= e!431245 e!431247)))

(declare-fun res!523968 () Bool)

(assert (=> b!774736 (=> (not res!523968) (not e!431247))))

(declare-fun lt!345077 () SeekEntryResult!7919)

(assert (=> b!774736 (= res!523968 (= (seekEntryOrOpen!0 (select (arr!20312 a!3186) j!159) a!3186 mask!3328) lt!345077))))

(assert (=> b!774736 (= lt!345077 (Found!7919 j!159))))

(declare-fun b!774737 () Bool)

(declare-fun e!431251 () Bool)

(assert (=> b!774737 (= e!431251 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20312 a!3186) j!159) a!3186 mask!3328) (Found!7919 j!159)))))

(declare-fun b!774738 () Bool)

(assert (=> b!774738 (= e!431247 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20312 a!3186) j!159) a!3186 mask!3328) lt!345077))))

(declare-fun b!774739 () Bool)

(assert (=> b!774739 (= e!431250 e!431254)))

(declare-fun res!523975 () Bool)

(assert (=> b!774739 (=> res!523975 e!431254)))

(assert (=> b!774739 (= res!523975 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!345080 #b00000000000000000000000000000000) (bvsge lt!345080 (size!20733 a!3186))))))

(declare-fun lt!345081 () Unit!26712)

(assert (=> b!774739 (= lt!345081 e!431248)))

(declare-fun c!85783 () Bool)

(declare-fun lt!345076 () Bool)

(assert (=> b!774739 (= c!85783 lt!345076)))

(assert (=> b!774739 (= lt!345076 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!774739 (= lt!345080 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!774740 () Bool)

(assert (=> b!774740 (= e!431251 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20312 a!3186) j!159) a!3186 mask!3328) lt!345078))))

(declare-fun b!774741 () Bool)

(declare-fun res!523960 () Bool)

(assert (=> b!774741 (=> (not res!523960) (not e!431252))))

(assert (=> b!774741 (= res!523960 (validKeyInArray!0 k!2102))))

(declare-fun b!774742 () Bool)

(declare-fun res!523972 () Bool)

(assert (=> b!774742 (=> res!523972 e!431254)))

(assert (=> b!774742 (= res!523972 e!431249)))

(declare-fun c!85784 () Bool)

(assert (=> b!774742 (= c!85784 lt!345076)))

(declare-fun b!774743 () Bool)

(declare-fun res!523977 () Bool)

(assert (=> b!774743 (=> (not res!523977) (not e!431253))))

(assert (=> b!774743 (= res!523977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!774744 () Bool)

(declare-fun res!523963 () Bool)

(assert (=> b!774744 (=> (not res!523963) (not e!431253))))

(declare-datatypes ((List!14367 0))(
  ( (Nil!14364) (Cons!14363 (h!15471 (_ BitVec 64)) (t!20690 List!14367)) )
))
(declare-fun arrayNoDuplicates!0 (array!42440 (_ BitVec 32) List!14367) Bool)

(assert (=> b!774744 (= res!523963 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14364))))

(declare-fun b!774745 () Bool)

(assert (=> b!774745 (= e!431246 e!431244)))

(declare-fun res!523967 () Bool)

(assert (=> b!774745 (=> (not res!523967) (not e!431244))))

(assert (=> b!774745 (= res!523967 (= lt!345086 lt!345083))))

(assert (=> b!774745 (= lt!345083 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345082 lt!345075 mask!3328))))

(assert (=> b!774745 (= lt!345086 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345082 mask!3328) lt!345082 lt!345075 mask!3328))))

(assert (=> b!774745 (= lt!345082 (select (store (arr!20312 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!774745 (= lt!345075 (array!42441 (store (arr!20312 a!3186) i!1173 k!2102) (size!20733 a!3186)))))

(declare-fun b!774746 () Bool)

(assert (=> b!774746 (= e!431249 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345080 (select (arr!20312 a!3186) j!159) a!3186 mask!3328) lt!345078)))))

(declare-fun b!774747 () Bool)

(declare-fun res!523971 () Bool)

(assert (=> b!774747 (=> (not res!523971) (not e!431246))))

(assert (=> b!774747 (= res!523971 e!431251)))

(declare-fun c!85785 () Bool)

(assert (=> b!774747 (= c!85785 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!774748 () Bool)

(assert (=> b!774748 (= e!431252 e!431253)))

(declare-fun res!523965 () Bool)

(assert (=> b!774748 (=> (not res!523965) (not e!431253))))

(declare-fun lt!345088 () SeekEntryResult!7919)

(assert (=> b!774748 (= res!523965 (or (= lt!345088 (MissingZero!7919 i!1173)) (= lt!345088 (MissingVacant!7919 i!1173))))))

(assert (=> b!774748 (= lt!345088 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!774749 () Bool)

(declare-fun Unit!26715 () Unit!26712)

(assert (=> b!774749 (= e!431248 Unit!26715)))

(assert (=> b!774749 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345080 (select (arr!20312 a!3186) j!159) a!3186 mask!3328) lt!345078)))

(declare-fun b!774750 () Bool)

(declare-fun res!523976 () Bool)

(assert (=> b!774750 (=> (not res!523976) (not e!431253))))

(assert (=> b!774750 (= res!523976 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20733 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20733 a!3186))))))

(assert (= (and start!67130 res!523966) b!774731))

(assert (= (and b!774731 res!523978) b!774732))

(assert (= (and b!774732 res!523970) b!774741))

(assert (= (and b!774741 res!523960) b!774726))

(assert (= (and b!774726 res!523969) b!774748))

(assert (= (and b!774748 res!523965) b!774743))

(assert (= (and b!774743 res!523977) b!774744))

(assert (= (and b!774744 res!523963) b!774750))

(assert (= (and b!774750 res!523976) b!774733))

(assert (= (and b!774733 res!523973) b!774728))

(assert (= (and b!774728 res!523961) b!774747))

(assert (= (and b!774747 c!85785) b!774740))

(assert (= (and b!774747 (not c!85785)) b!774737))

(assert (= (and b!774747 res!523971) b!774745))

(assert (= (and b!774745 res!523967) b!774735))

(assert (= (and b!774735 res!523974) b!774736))

(assert (= (and b!774736 res!523968) b!774738))

(assert (= (and b!774735 (not res!523964)) b!774739))

(assert (= (and b!774739 c!85783) b!774749))

(assert (= (and b!774739 (not c!85783)) b!774727))

(assert (= (and b!774739 (not res!523975)) b!774742))

(assert (= (and b!774742 c!85784) b!774746))

(assert (= (and b!774742 (not c!85784)) b!774734))

(assert (= (and b!774742 (not res!523972)) b!774729))

(assert (= (and b!774729 (not res!523962)) b!774730))

(declare-fun m!719157 () Bool)

(assert (=> b!774727 m!719157))

(assert (=> b!774727 m!719157))

(declare-fun m!719159 () Bool)

(assert (=> b!774727 m!719159))

(assert (=> b!774727 m!719157))

(declare-fun m!719161 () Bool)

(assert (=> b!774727 m!719161))

(assert (=> b!774740 m!719157))

(assert (=> b!774740 m!719157))

(declare-fun m!719163 () Bool)

(assert (=> b!774740 m!719163))

(declare-fun m!719165 () Bool)

(assert (=> b!774726 m!719165))

(assert (=> b!774733 m!719157))

(assert (=> b!774733 m!719157))

(declare-fun m!719167 () Bool)

(assert (=> b!774733 m!719167))

(assert (=> b!774733 m!719167))

(assert (=> b!774733 m!719157))

(declare-fun m!719169 () Bool)

(assert (=> b!774733 m!719169))

(assert (=> b!774749 m!719157))

(assert (=> b!774749 m!719157))

(declare-fun m!719171 () Bool)

(assert (=> b!774749 m!719171))

(declare-fun m!719173 () Bool)

(assert (=> b!774741 m!719173))

(assert (=> b!774738 m!719157))

(assert (=> b!774738 m!719157))

(declare-fun m!719175 () Bool)

(assert (=> b!774738 m!719175))

(declare-fun m!719177 () Bool)

(assert (=> b!774729 m!719177))

(declare-fun m!719179 () Bool)

(assert (=> b!774730 m!719179))

(declare-fun m!719181 () Bool)

(assert (=> b!774730 m!719181))

(declare-fun m!719183 () Bool)

(assert (=> b!774743 m!719183))

(declare-fun m!719185 () Bool)

(assert (=> start!67130 m!719185))

(declare-fun m!719187 () Bool)

(assert (=> start!67130 m!719187))

(declare-fun m!719189 () Bool)

(assert (=> b!774745 m!719189))

(declare-fun m!719191 () Bool)

(assert (=> b!774745 m!719191))

(declare-fun m!719193 () Bool)

(assert (=> b!774745 m!719193))

(declare-fun m!719195 () Bool)

(assert (=> b!774745 m!719195))

(declare-fun m!719197 () Bool)

(assert (=> b!774745 m!719197))

(assert (=> b!774745 m!719189))

(declare-fun m!719199 () Bool)

(assert (=> b!774728 m!719199))

(declare-fun m!719201 () Bool)

(assert (=> b!774748 m!719201))

(declare-fun m!719203 () Bool)

(assert (=> b!774735 m!719203))

(declare-fun m!719205 () Bool)

(assert (=> b!774735 m!719205))

(assert (=> b!774732 m!719157))

(assert (=> b!774732 m!719157))

(declare-fun m!719207 () Bool)

(assert (=> b!774732 m!719207))

(declare-fun m!719209 () Bool)

(assert (=> b!774744 m!719209))

(assert (=> b!774734 m!719157))

(assert (=> b!774734 m!719157))

(assert (=> b!774734 m!719161))

(assert (=> b!774737 m!719157))

(assert (=> b!774737 m!719157))

(assert (=> b!774737 m!719159))

(assert (=> b!774736 m!719157))

(assert (=> b!774736 m!719157))

(declare-fun m!719211 () Bool)

(assert (=> b!774736 m!719211))

(assert (=> b!774746 m!719157))

(assert (=> b!774746 m!719157))

(assert (=> b!774746 m!719171))

(declare-fun m!719213 () Bool)

(assert (=> b!774739 m!719213))

(push 1)


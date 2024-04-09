; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65194 () Bool)

(assert start!65194)

(declare-fun b!736986 () Bool)

(declare-fun e!412272 () Bool)

(declare-fun e!412267 () Bool)

(assert (=> b!736986 (= e!412272 e!412267)))

(declare-fun res!495447 () Bool)

(assert (=> b!736986 (=> (not res!495447) (not e!412267))))

(declare-datatypes ((array!41320 0))(
  ( (array!41321 (arr!19770 (Array (_ BitVec 32) (_ BitVec 64))) (size!20191 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41320)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7377 0))(
  ( (MissingZero!7377 (index!31875 (_ BitVec 32))) (Found!7377 (index!31876 (_ BitVec 32))) (Intermediate!7377 (undefined!8189 Bool) (index!31877 (_ BitVec 32)) (x!62904 (_ BitVec 32))) (Undefined!7377) (MissingVacant!7377 (index!31878 (_ BitVec 32))) )
))
(declare-fun lt!326955 () SeekEntryResult!7377)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41320 (_ BitVec 32)) SeekEntryResult!7377)

(assert (=> b!736986 (= res!495447 (= (seekEntryOrOpen!0 (select (arr!19770 a!3186) j!159) a!3186 mask!3328) lt!326955))))

(assert (=> b!736986 (= lt!326955 (Found!7377 j!159))))

(declare-fun b!736987 () Bool)

(declare-fun res!495458 () Bool)

(declare-fun e!412270 () Bool)

(assert (=> b!736987 (=> (not res!495458) (not e!412270))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41320 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!736987 (= res!495458 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!736988 () Bool)

(declare-fun e!412271 () Bool)

(declare-fun e!412266 () Bool)

(assert (=> b!736988 (= e!412271 e!412266)))

(declare-fun res!495460 () Bool)

(assert (=> b!736988 (=> (not res!495460) (not e!412266))))

(declare-fun lt!326960 () SeekEntryResult!7377)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41320 (_ BitVec 32)) SeekEntryResult!7377)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736988 (= res!495460 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19770 a!3186) j!159) mask!3328) (select (arr!19770 a!3186) j!159) a!3186 mask!3328) lt!326960))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!736988 (= lt!326960 (Intermediate!7377 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun e!412275 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!736989 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!736989 (= e!412275 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19770 a!3186) j!159) a!3186 mask!3328) lt!326960))))

(declare-fun res!495456 () Bool)

(assert (=> start!65194 (=> (not res!495456) (not e!412270))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65194 (= res!495456 (validMask!0 mask!3328))))

(assert (=> start!65194 e!412270))

(assert (=> start!65194 true))

(declare-fun array_inv!15544 (array!41320) Bool)

(assert (=> start!65194 (array_inv!15544 a!3186)))

(declare-fun b!736990 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41320 (_ BitVec 32)) SeekEntryResult!7377)

(assert (=> b!736990 (= e!412267 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19770 a!3186) j!159) a!3186 mask!3328) lt!326955))))

(declare-fun b!736991 () Bool)

(declare-fun e!412268 () Bool)

(declare-fun e!412274 () Bool)

(assert (=> b!736991 (= e!412268 e!412274)))

(declare-fun res!495461 () Bool)

(assert (=> b!736991 (=> res!495461 e!412274)))

(declare-fun lt!326963 () (_ BitVec 32))

(assert (=> b!736991 (= res!495461 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326963 #b00000000000000000000000000000000) (bvsge lt!326963 (size!20191 a!3186))))))

(declare-datatypes ((Unit!25126 0))(
  ( (Unit!25127) )
))
(declare-fun lt!326956 () Unit!25126)

(declare-fun e!412273 () Unit!25126)

(assert (=> b!736991 (= lt!326956 e!412273)))

(declare-fun c!81151 () Bool)

(declare-fun lt!326961 () Bool)

(assert (=> b!736991 (= c!81151 lt!326961)))

(assert (=> b!736991 (= lt!326961 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736991 (= lt!326963 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!736992 () Bool)

(declare-fun Unit!25128 () Unit!25126)

(assert (=> b!736992 (= e!412273 Unit!25128)))

(declare-fun lt!326958 () SeekEntryResult!7377)

(assert (=> b!736992 (= lt!326958 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19770 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!326959 () SeekEntryResult!7377)

(assert (=> b!736992 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326963 resIntermediateIndex!5 (select (arr!19770 a!3186) j!159) a!3186 mask!3328) lt!326959)))

(declare-fun b!736993 () Bool)

(assert (=> b!736993 (= e!412270 e!412271)))

(declare-fun res!495462 () Bool)

(assert (=> b!736993 (=> (not res!495462) (not e!412271))))

(declare-fun lt!326965 () SeekEntryResult!7377)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!736993 (= res!495462 (or (= lt!326965 (MissingZero!7377 i!1173)) (= lt!326965 (MissingVacant!7377 i!1173))))))

(assert (=> b!736993 (= lt!326965 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!736994 () Bool)

(declare-fun res!495449 () Bool)

(assert (=> b!736994 (=> (not res!495449) (not e!412271))))

(assert (=> b!736994 (= res!495449 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20191 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20191 a!3186))))))

(declare-fun b!736995 () Bool)

(declare-fun res!495452 () Bool)

(assert (=> b!736995 (=> res!495452 e!412274)))

(declare-fun e!412264 () Bool)

(assert (=> b!736995 (= res!495452 e!412264)))

(declare-fun c!81152 () Bool)

(assert (=> b!736995 (= c!81152 lt!326961)))

(declare-fun b!736996 () Bool)

(declare-fun res!495445 () Bool)

(assert (=> b!736996 (=> (not res!495445) (not e!412266))))

(assert (=> b!736996 (= res!495445 e!412275)))

(declare-fun c!81153 () Bool)

(assert (=> b!736996 (= c!81153 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!736997 () Bool)

(declare-fun e!412265 () Bool)

(assert (=> b!736997 (= e!412265 (not e!412268))))

(declare-fun res!495450 () Bool)

(assert (=> b!736997 (=> res!495450 e!412268)))

(declare-fun lt!326964 () SeekEntryResult!7377)

(assert (=> b!736997 (= res!495450 (or (not (is-Intermediate!7377 lt!326964)) (bvsge x!1131 (x!62904 lt!326964))))))

(assert (=> b!736997 (= lt!326959 (Found!7377 j!159))))

(assert (=> b!736997 e!412272))

(declare-fun res!495448 () Bool)

(assert (=> b!736997 (=> (not res!495448) (not e!412272))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41320 (_ BitVec 32)) Bool)

(assert (=> b!736997 (= res!495448 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!326962 () Unit!25126)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41320 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25126)

(assert (=> b!736997 (= lt!326962 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!736998 () Bool)

(declare-fun res!495457 () Bool)

(assert (=> b!736998 (=> (not res!495457) (not e!412270))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!736998 (= res!495457 (validKeyInArray!0 (select (arr!19770 a!3186) j!159)))))

(declare-fun b!736999 () Bool)

(declare-fun res!495446 () Bool)

(assert (=> b!736999 (=> (not res!495446) (not e!412266))))

(assert (=> b!736999 (= res!495446 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19770 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!737000 () Bool)

(declare-fun Unit!25129 () Unit!25126)

(assert (=> b!737000 (= e!412273 Unit!25129)))

(assert (=> b!737000 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326963 (select (arr!19770 a!3186) j!159) a!3186 mask!3328) lt!326960)))

(declare-fun b!737001 () Bool)

(declare-fun res!495455 () Bool)

(assert (=> b!737001 (=> (not res!495455) (not e!412270))))

(assert (=> b!737001 (= res!495455 (validKeyInArray!0 k!2102))))

(declare-fun b!737002 () Bool)

(assert (=> b!737002 (= e!412274 true)))

(declare-fun lt!326954 () SeekEntryResult!7377)

(declare-fun lt!326966 () array!41320)

(declare-fun lt!326957 () (_ BitVec 64))

(assert (=> b!737002 (= lt!326954 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326963 lt!326957 lt!326966 mask!3328))))

(declare-fun b!737003 () Bool)

(declare-fun res!495459 () Bool)

(assert (=> b!737003 (=> (not res!495459) (not e!412271))))

(assert (=> b!737003 (= res!495459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!737004 () Bool)

(assert (=> b!737004 (= e!412264 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326963 (select (arr!19770 a!3186) j!159) a!3186 mask!3328) lt!326960)))))

(declare-fun b!737005 () Bool)

(declare-fun res!495453 () Bool)

(assert (=> b!737005 (=> (not res!495453) (not e!412270))))

(assert (=> b!737005 (= res!495453 (and (= (size!20191 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20191 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20191 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!737006 () Bool)

(assert (=> b!737006 (= e!412275 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19770 a!3186) j!159) a!3186 mask!3328) (Found!7377 j!159)))))

(declare-fun b!737007 () Bool)

(assert (=> b!737007 (= e!412266 e!412265)))

(declare-fun res!495451 () Bool)

(assert (=> b!737007 (=> (not res!495451) (not e!412265))))

(declare-fun lt!326953 () SeekEntryResult!7377)

(assert (=> b!737007 (= res!495451 (= lt!326953 lt!326964))))

(assert (=> b!737007 (= lt!326964 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326957 lt!326966 mask!3328))))

(assert (=> b!737007 (= lt!326953 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326957 mask!3328) lt!326957 lt!326966 mask!3328))))

(assert (=> b!737007 (= lt!326957 (select (store (arr!19770 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!737007 (= lt!326966 (array!41321 (store (arr!19770 a!3186) i!1173 k!2102) (size!20191 a!3186)))))

(declare-fun b!737008 () Bool)

(assert (=> b!737008 (= e!412264 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326963 resIntermediateIndex!5 (select (arr!19770 a!3186) j!159) a!3186 mask!3328) lt!326959)))))

(declare-fun b!737009 () Bool)

(declare-fun res!495454 () Bool)

(assert (=> b!737009 (=> (not res!495454) (not e!412271))))

(declare-datatypes ((List!13825 0))(
  ( (Nil!13822) (Cons!13821 (h!14893 (_ BitVec 64)) (t!20148 List!13825)) )
))
(declare-fun arrayNoDuplicates!0 (array!41320 (_ BitVec 32) List!13825) Bool)

(assert (=> b!737009 (= res!495454 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13822))))

(assert (= (and start!65194 res!495456) b!737005))

(assert (= (and b!737005 res!495453) b!736998))

(assert (= (and b!736998 res!495457) b!737001))

(assert (= (and b!737001 res!495455) b!736987))

(assert (= (and b!736987 res!495458) b!736993))

(assert (= (and b!736993 res!495462) b!737003))

(assert (= (and b!737003 res!495459) b!737009))

(assert (= (and b!737009 res!495454) b!736994))

(assert (= (and b!736994 res!495449) b!736988))

(assert (= (and b!736988 res!495460) b!736999))

(assert (= (and b!736999 res!495446) b!736996))

(assert (= (and b!736996 c!81153) b!736989))

(assert (= (and b!736996 (not c!81153)) b!737006))

(assert (= (and b!736996 res!495445) b!737007))

(assert (= (and b!737007 res!495451) b!736997))

(assert (= (and b!736997 res!495448) b!736986))

(assert (= (and b!736986 res!495447) b!736990))

(assert (= (and b!736997 (not res!495450)) b!736991))

(assert (= (and b!736991 c!81151) b!737000))

(assert (= (and b!736991 (not c!81151)) b!736992))

(assert (= (and b!736991 (not res!495461)) b!736995))

(assert (= (and b!736995 c!81152) b!737004))

(assert (= (and b!736995 (not c!81152)) b!737008))

(assert (= (and b!736995 (not res!495452)) b!737002))

(declare-fun m!689047 () Bool)

(assert (=> b!736992 m!689047))

(assert (=> b!736992 m!689047))

(declare-fun m!689049 () Bool)

(assert (=> b!736992 m!689049))

(assert (=> b!736992 m!689047))

(declare-fun m!689051 () Bool)

(assert (=> b!736992 m!689051))

(assert (=> b!737000 m!689047))

(assert (=> b!737000 m!689047))

(declare-fun m!689053 () Bool)

(assert (=> b!737000 m!689053))

(assert (=> b!737004 m!689047))

(assert (=> b!737004 m!689047))

(assert (=> b!737004 m!689053))

(declare-fun m!689055 () Bool)

(assert (=> b!737009 m!689055))

(declare-fun m!689057 () Bool)

(assert (=> b!737002 m!689057))

(declare-fun m!689059 () Bool)

(assert (=> b!736997 m!689059))

(declare-fun m!689061 () Bool)

(assert (=> b!736997 m!689061))

(assert (=> b!736990 m!689047))

(assert (=> b!736990 m!689047))

(declare-fun m!689063 () Bool)

(assert (=> b!736990 m!689063))

(assert (=> b!736998 m!689047))

(assert (=> b!736998 m!689047))

(declare-fun m!689065 () Bool)

(assert (=> b!736998 m!689065))

(declare-fun m!689067 () Bool)

(assert (=> b!736999 m!689067))

(assert (=> b!736989 m!689047))

(assert (=> b!736989 m!689047))

(declare-fun m!689069 () Bool)

(assert (=> b!736989 m!689069))

(assert (=> b!736986 m!689047))

(assert (=> b!736986 m!689047))

(declare-fun m!689071 () Bool)

(assert (=> b!736986 m!689071))

(declare-fun m!689073 () Bool)

(assert (=> b!737003 m!689073))

(declare-fun m!689075 () Bool)

(assert (=> b!736993 m!689075))

(declare-fun m!689077 () Bool)

(assert (=> b!737007 m!689077))

(declare-fun m!689079 () Bool)

(assert (=> b!737007 m!689079))

(declare-fun m!689081 () Bool)

(assert (=> b!737007 m!689081))

(declare-fun m!689083 () Bool)

(assert (=> b!737007 m!689083))

(assert (=> b!737007 m!689079))

(declare-fun m!689085 () Bool)

(assert (=> b!737007 m!689085))

(declare-fun m!689087 () Bool)

(assert (=> start!65194 m!689087))

(declare-fun m!689089 () Bool)

(assert (=> start!65194 m!689089))

(declare-fun m!689091 () Bool)

(assert (=> b!736987 m!689091))

(assert (=> b!737008 m!689047))

(assert (=> b!737008 m!689047))

(assert (=> b!737008 m!689051))

(assert (=> b!736988 m!689047))

(assert (=> b!736988 m!689047))

(declare-fun m!689093 () Bool)

(assert (=> b!736988 m!689093))

(assert (=> b!736988 m!689093))

(assert (=> b!736988 m!689047))

(declare-fun m!689095 () Bool)

(assert (=> b!736988 m!689095))

(declare-fun m!689097 () Bool)

(assert (=> b!736991 m!689097))

(assert (=> b!737006 m!689047))

(assert (=> b!737006 m!689047))

(assert (=> b!737006 m!689049))

(declare-fun m!689099 () Bool)

(assert (=> b!737001 m!689099))

(push 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68016 () Bool)

(assert start!68016)

(declare-fun b!791129 () Bool)

(declare-fun res!536061 () Bool)

(declare-fun e!439704 () Bool)

(assert (=> b!791129 (=> (not res!536061) (not e!439704))))

(declare-datatypes ((array!42885 0))(
  ( (array!42886 (arr!20524 (Array (_ BitVec 32) (_ BitVec 64))) (size!20945 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42885)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791129 (= res!536061 (validKeyInArray!0 (select (arr!20524 a!3186) j!159)))))

(declare-fun b!791130 () Bool)

(declare-fun e!439702 () Bool)

(declare-fun e!439705 () Bool)

(assert (=> b!791130 (= e!439702 e!439705)))

(declare-fun res!536073 () Bool)

(assert (=> b!791130 (=> (not res!536073) (not e!439705))))

(declare-datatypes ((SeekEntryResult!8131 0))(
  ( (MissingZero!8131 (index!34891 (_ BitVec 32))) (Found!8131 (index!34892 (_ BitVec 32))) (Intermediate!8131 (undefined!8943 Bool) (index!34893 (_ BitVec 32)) (x!65858 (_ BitVec 32))) (Undefined!8131) (MissingVacant!8131 (index!34894 (_ BitVec 32))) )
))
(declare-fun lt!353155 () SeekEntryResult!8131)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42885 (_ BitVec 32)) SeekEntryResult!8131)

(assert (=> b!791130 (= res!536073 (= (seekEntryOrOpen!0 (select (arr!20524 a!3186) j!159) a!3186 mask!3328) lt!353155))))

(assert (=> b!791130 (= lt!353155 (Found!8131 j!159))))

(declare-fun b!791131 () Bool)

(declare-fun res!536074 () Bool)

(assert (=> b!791131 (=> (not res!536074) (not e!439704))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42885 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791131 (= res!536074 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!791132 () Bool)

(declare-fun e!439708 () Bool)

(assert (=> b!791132 (= e!439708 (not true))))

(assert (=> b!791132 e!439702))

(declare-fun res!536068 () Bool)

(assert (=> b!791132 (=> (not res!536068) (not e!439702))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42885 (_ BitVec 32)) Bool)

(assert (=> b!791132 (= res!536068 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!27414 0))(
  ( (Unit!27415) )
))
(declare-fun lt!353156 () Unit!27414)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42885 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27414)

(assert (=> b!791132 (= lt!353156 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!791133 () Bool)

(declare-fun res!536064 () Bool)

(declare-fun e!439703 () Bool)

(assert (=> b!791133 (=> (not res!536064) (not e!439703))))

(declare-fun e!439706 () Bool)

(assert (=> b!791133 (= res!536064 e!439706)))

(declare-fun c!87945 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!791133 (= c!87945 (bvsle x!1131 resIntermediateX!5))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!791134 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42885 (_ BitVec 32)) SeekEntryResult!8131)

(assert (=> b!791134 (= e!439706 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20524 a!3186) j!159) a!3186 mask!3328) (Found!8131 j!159)))))

(declare-fun b!791135 () Bool)

(declare-fun lt!353157 () SeekEntryResult!8131)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42885 (_ BitVec 32)) SeekEntryResult!8131)

(assert (=> b!791135 (= e!439706 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20524 a!3186) j!159) a!3186 mask!3328) lt!353157))))

(declare-fun b!791136 () Bool)

(declare-fun res!536060 () Bool)

(declare-fun e!439707 () Bool)

(assert (=> b!791136 (=> (not res!536060) (not e!439707))))

(assert (=> b!791136 (= res!536060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!791137 () Bool)

(assert (=> b!791137 (= e!439704 e!439707)))

(declare-fun res!536072 () Bool)

(assert (=> b!791137 (=> (not res!536072) (not e!439707))))

(declare-fun lt!353153 () SeekEntryResult!8131)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!791137 (= res!536072 (or (= lt!353153 (MissingZero!8131 i!1173)) (= lt!353153 (MissingVacant!8131 i!1173))))))

(assert (=> b!791137 (= lt!353153 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!791138 () Bool)

(declare-fun res!536062 () Bool)

(assert (=> b!791138 (=> (not res!536062) (not e!439703))))

(assert (=> b!791138 (= res!536062 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20524 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!791139 () Bool)

(declare-fun res!536063 () Bool)

(assert (=> b!791139 (=> (not res!536063) (not e!439704))))

(assert (=> b!791139 (= res!536063 (validKeyInArray!0 k0!2102))))

(declare-fun b!791140 () Bool)

(declare-fun res!536071 () Bool)

(assert (=> b!791140 (=> (not res!536071) (not e!439707))))

(assert (=> b!791140 (= res!536071 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20945 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20945 a!3186))))))

(declare-fun b!791141 () Bool)

(assert (=> b!791141 (= e!439705 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20524 a!3186) j!159) a!3186 mask!3328) lt!353155))))

(declare-fun b!791142 () Bool)

(declare-fun res!536065 () Bool)

(assert (=> b!791142 (=> (not res!536065) (not e!439704))))

(assert (=> b!791142 (= res!536065 (and (= (size!20945 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20945 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20945 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!791144 () Bool)

(assert (=> b!791144 (= e!439707 e!439703)))

(declare-fun res!536067 () Bool)

(assert (=> b!791144 (=> (not res!536067) (not e!439703))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!791144 (= res!536067 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20524 a!3186) j!159) mask!3328) (select (arr!20524 a!3186) j!159) a!3186 mask!3328) lt!353157))))

(assert (=> b!791144 (= lt!353157 (Intermediate!8131 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!791145 () Bool)

(declare-fun res!536066 () Bool)

(assert (=> b!791145 (=> (not res!536066) (not e!439707))))

(declare-datatypes ((List!14579 0))(
  ( (Nil!14576) (Cons!14575 (h!15704 (_ BitVec 64)) (t!20902 List!14579)) )
))
(declare-fun arrayNoDuplicates!0 (array!42885 (_ BitVec 32) List!14579) Bool)

(assert (=> b!791145 (= res!536066 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14576))))

(declare-fun res!536069 () Bool)

(assert (=> start!68016 (=> (not res!536069) (not e!439704))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68016 (= res!536069 (validMask!0 mask!3328))))

(assert (=> start!68016 e!439704))

(assert (=> start!68016 true))

(declare-fun array_inv!16298 (array!42885) Bool)

(assert (=> start!68016 (array_inv!16298 a!3186)))

(declare-fun b!791143 () Bool)

(assert (=> b!791143 (= e!439703 e!439708)))

(declare-fun res!536070 () Bool)

(assert (=> b!791143 (=> (not res!536070) (not e!439708))))

(declare-fun lt!353154 () (_ BitVec 64))

(declare-fun lt!353158 () array!42885)

(assert (=> b!791143 (= res!536070 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!353154 mask!3328) lt!353154 lt!353158 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!353154 lt!353158 mask!3328)))))

(assert (=> b!791143 (= lt!353154 (select (store (arr!20524 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!791143 (= lt!353158 (array!42886 (store (arr!20524 a!3186) i!1173 k0!2102) (size!20945 a!3186)))))

(assert (= (and start!68016 res!536069) b!791142))

(assert (= (and b!791142 res!536065) b!791129))

(assert (= (and b!791129 res!536061) b!791139))

(assert (= (and b!791139 res!536063) b!791131))

(assert (= (and b!791131 res!536074) b!791137))

(assert (= (and b!791137 res!536072) b!791136))

(assert (= (and b!791136 res!536060) b!791145))

(assert (= (and b!791145 res!536066) b!791140))

(assert (= (and b!791140 res!536071) b!791144))

(assert (= (and b!791144 res!536067) b!791138))

(assert (= (and b!791138 res!536062) b!791133))

(assert (= (and b!791133 c!87945) b!791135))

(assert (= (and b!791133 (not c!87945)) b!791134))

(assert (= (and b!791133 res!536064) b!791143))

(assert (= (and b!791143 res!536070) b!791132))

(assert (= (and b!791132 res!536068) b!791130))

(assert (= (and b!791130 res!536073) b!791141))

(declare-fun m!731963 () Bool)

(assert (=> b!791144 m!731963))

(assert (=> b!791144 m!731963))

(declare-fun m!731965 () Bool)

(assert (=> b!791144 m!731965))

(assert (=> b!791144 m!731965))

(assert (=> b!791144 m!731963))

(declare-fun m!731967 () Bool)

(assert (=> b!791144 m!731967))

(declare-fun m!731969 () Bool)

(assert (=> b!791132 m!731969))

(declare-fun m!731971 () Bool)

(assert (=> b!791132 m!731971))

(declare-fun m!731973 () Bool)

(assert (=> b!791131 m!731973))

(declare-fun m!731975 () Bool)

(assert (=> b!791138 m!731975))

(declare-fun m!731977 () Bool)

(assert (=> b!791137 m!731977))

(declare-fun m!731979 () Bool)

(assert (=> b!791139 m!731979))

(declare-fun m!731981 () Bool)

(assert (=> start!68016 m!731981))

(declare-fun m!731983 () Bool)

(assert (=> start!68016 m!731983))

(declare-fun m!731985 () Bool)

(assert (=> b!791143 m!731985))

(declare-fun m!731987 () Bool)

(assert (=> b!791143 m!731987))

(declare-fun m!731989 () Bool)

(assert (=> b!791143 m!731989))

(declare-fun m!731991 () Bool)

(assert (=> b!791143 m!731991))

(assert (=> b!791143 m!731991))

(declare-fun m!731993 () Bool)

(assert (=> b!791143 m!731993))

(assert (=> b!791134 m!731963))

(assert (=> b!791134 m!731963))

(declare-fun m!731995 () Bool)

(assert (=> b!791134 m!731995))

(declare-fun m!731997 () Bool)

(assert (=> b!791136 m!731997))

(assert (=> b!791130 m!731963))

(assert (=> b!791130 m!731963))

(declare-fun m!731999 () Bool)

(assert (=> b!791130 m!731999))

(declare-fun m!732001 () Bool)

(assert (=> b!791145 m!732001))

(assert (=> b!791129 m!731963))

(assert (=> b!791129 m!731963))

(declare-fun m!732003 () Bool)

(assert (=> b!791129 m!732003))

(assert (=> b!791141 m!731963))

(assert (=> b!791141 m!731963))

(declare-fun m!732005 () Bool)

(assert (=> b!791141 m!732005))

(assert (=> b!791135 m!731963))

(assert (=> b!791135 m!731963))

(declare-fun m!732007 () Bool)

(assert (=> b!791135 m!732007))

(check-sat (not b!791135) (not b!791143) (not b!791134) (not b!791144) (not b!791130) (not b!791145) (not b!791136) (not start!68016) (not b!791129) (not b!791141) (not b!791132) (not b!791131) (not b!791139) (not b!791137))
(check-sat)

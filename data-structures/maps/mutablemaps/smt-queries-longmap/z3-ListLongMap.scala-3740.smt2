; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51454 () Bool)

(assert start!51454)

(declare-fun b!561998 () Bool)

(declare-fun e!323883 () Bool)

(declare-fun e!323882 () Bool)

(assert (=> b!561998 (= e!323883 e!323882)))

(declare-fun res!353306 () Bool)

(assert (=> b!561998 (=> (not res!353306) (not e!323882))))

(declare-datatypes ((SeekEntryResult!5389 0))(
  ( (MissingZero!5389 (index!23783 (_ BitVec 32))) (Found!5389 (index!23784 (_ BitVec 32))) (Intermediate!5389 (undefined!6201 Bool) (index!23785 (_ BitVec 32)) (x!52711 (_ BitVec 32))) (Undefined!5389) (MissingVacant!5389 (index!23786 (_ BitVec 32))) )
))
(declare-fun lt!255997 () SeekEntryResult!5389)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!561998 (= res!353306 (or (= lt!255997 (MissingZero!5389 i!1132)) (= lt!255997 (MissingVacant!5389 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!35273 0))(
  ( (array!35274 (arr!16933 (Array (_ BitVec 32) (_ BitVec 64))) (size!17297 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35273)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35273 (_ BitVec 32)) SeekEntryResult!5389)

(assert (=> b!561998 (= lt!255997 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!561999 () Bool)

(declare-fun res!353304 () Bool)

(assert (=> b!561999 (=> (not res!353304) (not e!323882))))

(declare-datatypes ((List!11066 0))(
  ( (Nil!11063) (Cons!11062 (h!12065 (_ BitVec 64)) (t!17302 List!11066)) )
))
(declare-fun arrayNoDuplicates!0 (array!35273 (_ BitVec 32) List!11066) Bool)

(assert (=> b!561999 (= res!353304 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11063))))

(declare-fun b!562000 () Bool)

(declare-fun res!353307 () Bool)

(assert (=> b!562000 (=> (not res!353307) (not e!323882))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35273 (_ BitVec 32)) Bool)

(assert (=> b!562000 (= res!353307 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562001 () Bool)

(declare-fun e!323880 () Bool)

(assert (=> b!562001 (= e!323882 e!323880)))

(declare-fun res!353310 () Bool)

(assert (=> b!562001 (=> (not res!353310) (not e!323880))))

(declare-fun lt!255995 () (_ BitVec 64))

(declare-fun lt!255996 () SeekEntryResult!5389)

(declare-fun lt!256000 () (_ BitVec 32))

(declare-fun lt!256001 () array!35273)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35273 (_ BitVec 32)) SeekEntryResult!5389)

(assert (=> b!562001 (= res!353310 (= lt!255996 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256000 lt!255995 lt!256001 mask!3119)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!255994 () (_ BitVec 32))

(assert (=> b!562001 (= lt!255996 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255994 (select (arr!16933 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562001 (= lt!256000 (toIndex!0 lt!255995 mask!3119))))

(assert (=> b!562001 (= lt!255995 (select (store (arr!16933 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!562001 (= lt!255994 (toIndex!0 (select (arr!16933 a!3118) j!142) mask!3119))))

(assert (=> b!562001 (= lt!256001 (array!35274 (store (arr!16933 a!3118) i!1132 k0!1914) (size!17297 a!3118)))))

(declare-fun b!562002 () Bool)

(declare-fun e!323879 () Bool)

(declare-fun e!323877 () Bool)

(assert (=> b!562002 (= e!323879 e!323877)))

(declare-fun res!353312 () Bool)

(assert (=> b!562002 (=> (not res!353312) (not e!323877))))

(declare-fun lt!255999 () SeekEntryResult!5389)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35273 (_ BitVec 32)) SeekEntryResult!5389)

(assert (=> b!562002 (= res!353312 (= lt!255999 (seekKeyOrZeroReturnVacant!0 (x!52711 lt!255996) (index!23785 lt!255996) (index!23785 lt!255996) (select (arr!16933 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!562003 () Bool)

(declare-fun e!323878 () Bool)

(declare-fun e!323884 () Bool)

(assert (=> b!562003 (= e!323878 e!323884)))

(declare-fun res!353300 () Bool)

(assert (=> b!562003 (=> res!353300 e!323884)))

(get-info :version)

(assert (=> b!562003 (= res!353300 (or (undefined!6201 lt!255996) (not ((_ is Intermediate!5389) lt!255996))))))

(declare-fun b!562004 () Bool)

(declare-fun res!353301 () Bool)

(assert (=> b!562004 (=> (not res!353301) (not e!323883))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562004 (= res!353301 (validKeyInArray!0 k0!1914))))

(declare-fun b!562005 () Bool)

(assert (=> b!562005 (= e!323884 e!323879)))

(declare-fun res!353303 () Bool)

(assert (=> b!562005 (=> res!353303 e!323879)))

(declare-fun lt!255993 () (_ BitVec 64))

(assert (=> b!562005 (= res!353303 (or (= lt!255993 (select (arr!16933 a!3118) j!142)) (= lt!255993 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562005 (= lt!255993 (select (arr!16933 a!3118) (index!23785 lt!255996)))))

(declare-fun b!562006 () Bool)

(declare-fun res!353302 () Bool)

(assert (=> b!562006 (=> (not res!353302) (not e!323883))))

(declare-fun arrayContainsKey!0 (array!35273 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562006 (= res!353302 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!562007 () Bool)

(declare-fun res!353308 () Bool)

(assert (=> b!562007 (=> (not res!353308) (not e!323883))))

(assert (=> b!562007 (= res!353308 (validKeyInArray!0 (select (arr!16933 a!3118) j!142)))))

(declare-fun b!562008 () Bool)

(declare-fun res!353311 () Bool)

(assert (=> b!562008 (=> (not res!353311) (not e!323883))))

(assert (=> b!562008 (= res!353311 (and (= (size!17297 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17297 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17297 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562009 () Bool)

(assert (=> b!562009 (= e!323880 (not true))))

(assert (=> b!562009 e!323878))

(declare-fun res!353309 () Bool)

(assert (=> b!562009 (=> (not res!353309) (not e!323878))))

(assert (=> b!562009 (= res!353309 (= lt!255999 (Found!5389 j!142)))))

(assert (=> b!562009 (= lt!255999 (seekEntryOrOpen!0 (select (arr!16933 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!562009 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17552 0))(
  ( (Unit!17553) )
))
(declare-fun lt!255998 () Unit!17552)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35273 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17552)

(assert (=> b!562009 (= lt!255998 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562010 () Bool)

(assert (=> b!562010 (= e!323877 (= (seekEntryOrOpen!0 lt!255995 lt!256001 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52711 lt!255996) (index!23785 lt!255996) (index!23785 lt!255996) lt!255995 lt!256001 mask!3119)))))

(declare-fun res!353305 () Bool)

(assert (=> start!51454 (=> (not res!353305) (not e!323883))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51454 (= res!353305 (validMask!0 mask!3119))))

(assert (=> start!51454 e!323883))

(assert (=> start!51454 true))

(declare-fun array_inv!12707 (array!35273) Bool)

(assert (=> start!51454 (array_inv!12707 a!3118)))

(assert (= (and start!51454 res!353305) b!562008))

(assert (= (and b!562008 res!353311) b!562007))

(assert (= (and b!562007 res!353308) b!562004))

(assert (= (and b!562004 res!353301) b!562006))

(assert (= (and b!562006 res!353302) b!561998))

(assert (= (and b!561998 res!353306) b!562000))

(assert (= (and b!562000 res!353307) b!561999))

(assert (= (and b!561999 res!353304) b!562001))

(assert (= (and b!562001 res!353310) b!562009))

(assert (= (and b!562009 res!353309) b!562003))

(assert (= (and b!562003 (not res!353300)) b!562005))

(assert (= (and b!562005 (not res!353303)) b!562002))

(assert (= (and b!562002 res!353312) b!562010))

(declare-fun m!540027 () Bool)

(assert (=> start!51454 m!540027))

(declare-fun m!540029 () Bool)

(assert (=> start!51454 m!540029))

(declare-fun m!540031 () Bool)

(assert (=> b!562000 m!540031))

(declare-fun m!540033 () Bool)

(assert (=> b!562004 m!540033))

(declare-fun m!540035 () Bool)

(assert (=> b!561998 m!540035))

(declare-fun m!540037 () Bool)

(assert (=> b!562005 m!540037))

(declare-fun m!540039 () Bool)

(assert (=> b!562005 m!540039))

(assert (=> b!562007 m!540037))

(assert (=> b!562007 m!540037))

(declare-fun m!540041 () Bool)

(assert (=> b!562007 m!540041))

(declare-fun m!540043 () Bool)

(assert (=> b!562006 m!540043))

(declare-fun m!540045 () Bool)

(assert (=> b!562010 m!540045))

(declare-fun m!540047 () Bool)

(assert (=> b!562010 m!540047))

(assert (=> b!562009 m!540037))

(assert (=> b!562009 m!540037))

(declare-fun m!540049 () Bool)

(assert (=> b!562009 m!540049))

(declare-fun m!540051 () Bool)

(assert (=> b!562009 m!540051))

(declare-fun m!540053 () Bool)

(assert (=> b!562009 m!540053))

(assert (=> b!562001 m!540037))

(declare-fun m!540055 () Bool)

(assert (=> b!562001 m!540055))

(assert (=> b!562001 m!540037))

(declare-fun m!540057 () Bool)

(assert (=> b!562001 m!540057))

(declare-fun m!540059 () Bool)

(assert (=> b!562001 m!540059))

(assert (=> b!562001 m!540037))

(declare-fun m!540061 () Bool)

(assert (=> b!562001 m!540061))

(declare-fun m!540063 () Bool)

(assert (=> b!562001 m!540063))

(declare-fun m!540065 () Bool)

(assert (=> b!562001 m!540065))

(declare-fun m!540067 () Bool)

(assert (=> b!561999 m!540067))

(assert (=> b!562002 m!540037))

(assert (=> b!562002 m!540037))

(declare-fun m!540069 () Bool)

(assert (=> b!562002 m!540069))

(check-sat (not b!562010) (not b!562001) (not b!562009) (not b!562007) (not b!562002) (not b!562000) (not start!51454) (not b!561998) (not b!562006) (not b!561999) (not b!562004))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52444 () Bool)

(assert start!52444)

(declare-fun b!572075 () Bool)

(declare-fun e!329066 () Bool)

(assert (=> b!572075 (= e!329066 (not true))))

(declare-fun e!329070 () Bool)

(assert (=> b!572075 e!329070))

(declare-fun res!361738 () Bool)

(assert (=> b!572075 (=> (not res!361738) (not e!329070))))

(declare-datatypes ((SeekEntryResult!5638 0))(
  ( (MissingZero!5638 (index!24779 (_ BitVec 32))) (Found!5638 (index!24780 (_ BitVec 32))) (Intermediate!5638 (undefined!6450 Bool) (index!24781 (_ BitVec 32)) (x!53678 (_ BitVec 32))) (Undefined!5638) (MissingVacant!5638 (index!24782 (_ BitVec 32))) )
))
(declare-fun lt!261081 () SeekEntryResult!5638)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!572075 (= res!361738 (= lt!261081 (Found!5638 j!142)))))

(declare-datatypes ((array!35795 0))(
  ( (array!35796 (arr!17182 (Array (_ BitVec 32) (_ BitVec 64))) (size!17546 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35795)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35795 (_ BitVec 32)) SeekEntryResult!5638)

(assert (=> b!572075 (= lt!261081 (seekEntryOrOpen!0 (select (arr!17182 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35795 (_ BitVec 32)) Bool)

(assert (=> b!572075 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17978 0))(
  ( (Unit!17979) )
))
(declare-fun lt!261087 () Unit!17978)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35795 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17978)

(assert (=> b!572075 (= lt!261087 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572076 () Bool)

(declare-fun res!361737 () Bool)

(declare-fun e!329068 () Bool)

(assert (=> b!572076 (=> (not res!361737) (not e!329068))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572076 (= res!361737 (validKeyInArray!0 k0!1914))))

(declare-fun b!572077 () Bool)

(declare-fun e!329067 () Bool)

(assert (=> b!572077 (= e!329068 e!329067)))

(declare-fun res!361739 () Bool)

(assert (=> b!572077 (=> (not res!361739) (not e!329067))))

(declare-fun lt!261082 () SeekEntryResult!5638)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572077 (= res!361739 (or (= lt!261082 (MissingZero!5638 i!1132)) (= lt!261082 (MissingVacant!5638 i!1132))))))

(assert (=> b!572077 (= lt!261082 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!572078 () Bool)

(declare-fun res!361741 () Bool)

(assert (=> b!572078 (=> (not res!361741) (not e!329068))))

(assert (=> b!572078 (= res!361741 (validKeyInArray!0 (select (arr!17182 a!3118) j!142)))))

(declare-fun b!572079 () Bool)

(declare-fun res!361743 () Bool)

(assert (=> b!572079 (=> (not res!361743) (not e!329068))))

(declare-fun arrayContainsKey!0 (array!35795 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572079 (= res!361743 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!572080 () Bool)

(declare-fun res!361736 () Bool)

(assert (=> b!572080 (=> (not res!361736) (not e!329068))))

(assert (=> b!572080 (= res!361736 (and (= (size!17546 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17546 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17546 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!572081 () Bool)

(declare-fun res!361735 () Bool)

(assert (=> b!572081 (=> (not res!361735) (not e!329067))))

(declare-datatypes ((List!11315 0))(
  ( (Nil!11312) (Cons!11311 (h!12338 (_ BitVec 64)) (t!17551 List!11315)) )
))
(declare-fun arrayNoDuplicates!0 (array!35795 (_ BitVec 32) List!11315) Bool)

(assert (=> b!572081 (= res!361735 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11312))))

(declare-fun b!572082 () Bool)

(assert (=> b!572082 (= e!329067 e!329066)))

(declare-fun res!361745 () Bool)

(assert (=> b!572082 (=> (not res!361745) (not e!329066))))

(declare-fun lt!261085 () SeekEntryResult!5638)

(declare-fun lt!261083 () array!35795)

(declare-fun lt!261089 () (_ BitVec 64))

(declare-fun lt!261088 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35795 (_ BitVec 32)) SeekEntryResult!5638)

(assert (=> b!572082 (= res!361745 (= lt!261085 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261088 lt!261089 lt!261083 mask!3119)))))

(declare-fun lt!261084 () (_ BitVec 32))

(assert (=> b!572082 (= lt!261085 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261084 (select (arr!17182 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572082 (= lt!261088 (toIndex!0 lt!261089 mask!3119))))

(assert (=> b!572082 (= lt!261089 (select (store (arr!17182 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!572082 (= lt!261084 (toIndex!0 (select (arr!17182 a!3118) j!142) mask!3119))))

(assert (=> b!572082 (= lt!261083 (array!35796 (store (arr!17182 a!3118) i!1132 k0!1914) (size!17546 a!3118)))))

(declare-fun b!572083 () Bool)

(declare-fun e!329071 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35795 (_ BitVec 32)) SeekEntryResult!5638)

(assert (=> b!572083 (= e!329071 (= (seekEntryOrOpen!0 lt!261089 lt!261083 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53678 lt!261085) (index!24781 lt!261085) (index!24781 lt!261085) lt!261089 lt!261083 mask!3119)))))

(declare-fun b!572084 () Bool)

(declare-fun res!361734 () Bool)

(assert (=> b!572084 (=> (not res!361734) (not e!329067))))

(assert (=> b!572084 (= res!361734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!572085 () Bool)

(declare-fun e!329065 () Bool)

(assert (=> b!572085 (= e!329070 e!329065)))

(declare-fun res!361740 () Bool)

(assert (=> b!572085 (=> res!361740 e!329065)))

(get-info :version)

(assert (=> b!572085 (= res!361740 (or (undefined!6450 lt!261085) (not ((_ is Intermediate!5638) lt!261085))))))

(declare-fun res!361742 () Bool)

(assert (=> start!52444 (=> (not res!361742) (not e!329068))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52444 (= res!361742 (validMask!0 mask!3119))))

(assert (=> start!52444 e!329068))

(assert (=> start!52444 true))

(declare-fun array_inv!12956 (array!35795) Bool)

(assert (=> start!52444 (array_inv!12956 a!3118)))

(declare-fun b!572086 () Bool)

(declare-fun e!329069 () Bool)

(assert (=> b!572086 (= e!329065 e!329069)))

(declare-fun res!361744 () Bool)

(assert (=> b!572086 (=> res!361744 e!329069)))

(declare-fun lt!261086 () (_ BitVec 64))

(assert (=> b!572086 (= res!361744 (or (= lt!261086 (select (arr!17182 a!3118) j!142)) (= lt!261086 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!572086 (= lt!261086 (select (arr!17182 a!3118) (index!24781 lt!261085)))))

(declare-fun b!572087 () Bool)

(assert (=> b!572087 (= e!329069 e!329071)))

(declare-fun res!361733 () Bool)

(assert (=> b!572087 (=> (not res!361733) (not e!329071))))

(assert (=> b!572087 (= res!361733 (= lt!261081 (seekKeyOrZeroReturnVacant!0 (x!53678 lt!261085) (index!24781 lt!261085) (index!24781 lt!261085) (select (arr!17182 a!3118) j!142) a!3118 mask!3119)))))

(assert (= (and start!52444 res!361742) b!572080))

(assert (= (and b!572080 res!361736) b!572078))

(assert (= (and b!572078 res!361741) b!572076))

(assert (= (and b!572076 res!361737) b!572079))

(assert (= (and b!572079 res!361743) b!572077))

(assert (= (and b!572077 res!361739) b!572084))

(assert (= (and b!572084 res!361734) b!572081))

(assert (= (and b!572081 res!361735) b!572082))

(assert (= (and b!572082 res!361745) b!572075))

(assert (= (and b!572075 res!361738) b!572085))

(assert (= (and b!572085 (not res!361740)) b!572086))

(assert (= (and b!572086 (not res!361744)) b!572087))

(assert (= (and b!572087 res!361733) b!572083))

(declare-fun m!551067 () Bool)

(assert (=> b!572081 m!551067))

(declare-fun m!551069 () Bool)

(assert (=> b!572078 m!551069))

(assert (=> b!572078 m!551069))

(declare-fun m!551071 () Bool)

(assert (=> b!572078 m!551071))

(declare-fun m!551073 () Bool)

(assert (=> b!572082 m!551073))

(assert (=> b!572082 m!551069))

(declare-fun m!551075 () Bool)

(assert (=> b!572082 m!551075))

(assert (=> b!572082 m!551069))

(declare-fun m!551077 () Bool)

(assert (=> b!572082 m!551077))

(assert (=> b!572082 m!551069))

(declare-fun m!551079 () Bool)

(assert (=> b!572082 m!551079))

(declare-fun m!551081 () Bool)

(assert (=> b!572082 m!551081))

(declare-fun m!551083 () Bool)

(assert (=> b!572082 m!551083))

(assert (=> b!572075 m!551069))

(assert (=> b!572075 m!551069))

(declare-fun m!551085 () Bool)

(assert (=> b!572075 m!551085))

(declare-fun m!551087 () Bool)

(assert (=> b!572075 m!551087))

(declare-fun m!551089 () Bool)

(assert (=> b!572075 m!551089))

(declare-fun m!551091 () Bool)

(assert (=> b!572083 m!551091))

(declare-fun m!551093 () Bool)

(assert (=> b!572083 m!551093))

(declare-fun m!551095 () Bool)

(assert (=> b!572076 m!551095))

(assert (=> b!572086 m!551069))

(declare-fun m!551097 () Bool)

(assert (=> b!572086 m!551097))

(assert (=> b!572087 m!551069))

(assert (=> b!572087 m!551069))

(declare-fun m!551099 () Bool)

(assert (=> b!572087 m!551099))

(declare-fun m!551101 () Bool)

(assert (=> b!572084 m!551101))

(declare-fun m!551103 () Bool)

(assert (=> start!52444 m!551103))

(declare-fun m!551105 () Bool)

(assert (=> start!52444 m!551105))

(declare-fun m!551107 () Bool)

(assert (=> b!572079 m!551107))

(declare-fun m!551109 () Bool)

(assert (=> b!572077 m!551109))

(check-sat (not b!572083) (not b!572084) (not b!572082) (not b!572087) (not b!572077) (not b!572081) (not b!572079) (not start!52444) (not b!572075) (not b!572076) (not b!572078))
(check-sat)

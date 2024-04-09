; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51460 () Bool)

(assert start!51460)

(declare-datatypes ((array!35279 0))(
  ( (array!35280 (arr!16936 (Array (_ BitVec 32) (_ BitVec 64))) (size!17300 (_ BitVec 32))) )
))
(declare-fun lt!256081 () array!35279)

(declare-fun lt!256078 () (_ BitVec 64))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun e!323951 () Bool)

(declare-fun b!562115 () Bool)

(declare-datatypes ((SeekEntryResult!5392 0))(
  ( (MissingZero!5392 (index!23795 (_ BitVec 32))) (Found!5392 (index!23796 (_ BitVec 32))) (Intermediate!5392 (undefined!6204 Bool) (index!23797 (_ BitVec 32)) (x!52722 (_ BitVec 32))) (Undefined!5392) (MissingVacant!5392 (index!23798 (_ BitVec 32))) )
))
(declare-fun lt!256076 () SeekEntryResult!5392)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35279 (_ BitVec 32)) SeekEntryResult!5392)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35279 (_ BitVec 32)) SeekEntryResult!5392)

(assert (=> b!562115 (= e!323951 (= (seekEntryOrOpen!0 lt!256078 lt!256081 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52722 lt!256076) (index!23797 lt!256076) (index!23797 lt!256076) lt!256078 lt!256081 mask!3119)))))

(declare-fun b!562116 () Bool)

(declare-fun e!323949 () Bool)

(declare-fun e!323952 () Bool)

(assert (=> b!562116 (= e!323949 e!323952)))

(declare-fun res!353421 () Bool)

(assert (=> b!562116 (=> res!353421 e!323952)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!256082 () (_ BitVec 64))

(declare-fun a!3118 () array!35279)

(assert (=> b!562116 (= res!353421 (or (= lt!256082 (select (arr!16936 a!3118) j!142)) (= lt!256082 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562116 (= lt!256082 (select (arr!16936 a!3118) (index!23797 lt!256076)))))

(declare-fun b!562117 () Bool)

(assert (=> b!562117 (= e!323952 e!323951)))

(declare-fun res!353419 () Bool)

(assert (=> b!562117 (=> (not res!353419) (not e!323951))))

(declare-fun lt!256080 () SeekEntryResult!5392)

(assert (=> b!562117 (= res!353419 (= lt!256080 (seekKeyOrZeroReturnVacant!0 (x!52722 lt!256076) (index!23797 lt!256076) (index!23797 lt!256076) (select (arr!16936 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!562118 () Bool)

(declare-fun e!323950 () Bool)

(assert (=> b!562118 (= e!323950 e!323949)))

(declare-fun res!353417 () Bool)

(assert (=> b!562118 (=> res!353417 e!323949)))

(get-info :version)

(assert (=> b!562118 (= res!353417 (or (undefined!6204 lt!256076) (not ((_ is Intermediate!5392) lt!256076))))))

(declare-fun b!562119 () Bool)

(declare-fun res!353428 () Bool)

(declare-fun e!323955 () Bool)

(assert (=> b!562119 (=> (not res!353428) (not e!323955))))

(declare-datatypes ((List!11069 0))(
  ( (Nil!11066) (Cons!11065 (h!12068 (_ BitVec 64)) (t!17305 List!11069)) )
))
(declare-fun arrayNoDuplicates!0 (array!35279 (_ BitVec 32) List!11069) Bool)

(assert (=> b!562119 (= res!353428 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11066))))

(declare-fun b!562120 () Bool)

(declare-fun e!323953 () Bool)

(assert (=> b!562120 (= e!323953 (not true))))

(assert (=> b!562120 e!323950))

(declare-fun res!353429 () Bool)

(assert (=> b!562120 (=> (not res!353429) (not e!323950))))

(assert (=> b!562120 (= res!353429 (= lt!256080 (Found!5392 j!142)))))

(assert (=> b!562120 (= lt!256080 (seekEntryOrOpen!0 (select (arr!16936 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35279 (_ BitVec 32)) Bool)

(assert (=> b!562120 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17558 0))(
  ( (Unit!17559) )
))
(declare-fun lt!256075 () Unit!17558)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35279 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17558)

(assert (=> b!562120 (= lt!256075 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!353422 () Bool)

(declare-fun e!323954 () Bool)

(assert (=> start!51460 (=> (not res!353422) (not e!323954))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51460 (= res!353422 (validMask!0 mask!3119))))

(assert (=> start!51460 e!323954))

(assert (=> start!51460 true))

(declare-fun array_inv!12710 (array!35279) Bool)

(assert (=> start!51460 (array_inv!12710 a!3118)))

(declare-fun b!562121 () Bool)

(declare-fun res!353424 () Bool)

(assert (=> b!562121 (=> (not res!353424) (not e!323954))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562121 (= res!353424 (validKeyInArray!0 k0!1914))))

(declare-fun b!562122 () Bool)

(assert (=> b!562122 (= e!323954 e!323955)))

(declare-fun res!353423 () Bool)

(assert (=> b!562122 (=> (not res!353423) (not e!323955))))

(declare-fun lt!256077 () SeekEntryResult!5392)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!562122 (= res!353423 (or (= lt!256077 (MissingZero!5392 i!1132)) (= lt!256077 (MissingVacant!5392 i!1132))))))

(assert (=> b!562122 (= lt!256077 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!562123 () Bool)

(assert (=> b!562123 (= e!323955 e!323953)))

(declare-fun res!353425 () Bool)

(assert (=> b!562123 (=> (not res!353425) (not e!323953))))

(declare-fun lt!256074 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35279 (_ BitVec 32)) SeekEntryResult!5392)

(assert (=> b!562123 (= res!353425 (= lt!256076 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256074 lt!256078 lt!256081 mask!3119)))))

(declare-fun lt!256079 () (_ BitVec 32))

(assert (=> b!562123 (= lt!256076 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256079 (select (arr!16936 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562123 (= lt!256074 (toIndex!0 lt!256078 mask!3119))))

(assert (=> b!562123 (= lt!256078 (select (store (arr!16936 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!562123 (= lt!256079 (toIndex!0 (select (arr!16936 a!3118) j!142) mask!3119))))

(assert (=> b!562123 (= lt!256081 (array!35280 (store (arr!16936 a!3118) i!1132 k0!1914) (size!17300 a!3118)))))

(declare-fun b!562124 () Bool)

(declare-fun res!353420 () Bool)

(assert (=> b!562124 (=> (not res!353420) (not e!323954))))

(assert (=> b!562124 (= res!353420 (and (= (size!17300 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17300 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17300 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562125 () Bool)

(declare-fun res!353427 () Bool)

(assert (=> b!562125 (=> (not res!353427) (not e!323955))))

(assert (=> b!562125 (= res!353427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562126 () Bool)

(declare-fun res!353418 () Bool)

(assert (=> b!562126 (=> (not res!353418) (not e!323954))))

(assert (=> b!562126 (= res!353418 (validKeyInArray!0 (select (arr!16936 a!3118) j!142)))))

(declare-fun b!562127 () Bool)

(declare-fun res!353426 () Bool)

(assert (=> b!562127 (=> (not res!353426) (not e!323954))))

(declare-fun arrayContainsKey!0 (array!35279 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562127 (= res!353426 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51460 res!353422) b!562124))

(assert (= (and b!562124 res!353420) b!562126))

(assert (= (and b!562126 res!353418) b!562121))

(assert (= (and b!562121 res!353424) b!562127))

(assert (= (and b!562127 res!353426) b!562122))

(assert (= (and b!562122 res!353423) b!562125))

(assert (= (and b!562125 res!353427) b!562119))

(assert (= (and b!562119 res!353428) b!562123))

(assert (= (and b!562123 res!353425) b!562120))

(assert (= (and b!562120 res!353429) b!562118))

(assert (= (and b!562118 (not res!353417)) b!562116))

(assert (= (and b!562116 (not res!353421)) b!562117))

(assert (= (and b!562117 res!353419) b!562115))

(declare-fun m!540159 () Bool)

(assert (=> b!562115 m!540159))

(declare-fun m!540161 () Bool)

(assert (=> b!562115 m!540161))

(declare-fun m!540163 () Bool)

(assert (=> b!562117 m!540163))

(assert (=> b!562117 m!540163))

(declare-fun m!540165 () Bool)

(assert (=> b!562117 m!540165))

(declare-fun m!540167 () Bool)

(assert (=> start!51460 m!540167))

(declare-fun m!540169 () Bool)

(assert (=> start!51460 m!540169))

(declare-fun m!540171 () Bool)

(assert (=> b!562122 m!540171))

(assert (=> b!562126 m!540163))

(assert (=> b!562126 m!540163))

(declare-fun m!540173 () Bool)

(assert (=> b!562126 m!540173))

(assert (=> b!562116 m!540163))

(declare-fun m!540175 () Bool)

(assert (=> b!562116 m!540175))

(declare-fun m!540177 () Bool)

(assert (=> b!562121 m!540177))

(declare-fun m!540179 () Bool)

(assert (=> b!562119 m!540179))

(declare-fun m!540181 () Bool)

(assert (=> b!562127 m!540181))

(assert (=> b!562123 m!540163))

(declare-fun m!540183 () Bool)

(assert (=> b!562123 m!540183))

(assert (=> b!562123 m!540163))

(declare-fun m!540185 () Bool)

(assert (=> b!562123 m!540185))

(declare-fun m!540187 () Bool)

(assert (=> b!562123 m!540187))

(declare-fun m!540189 () Bool)

(assert (=> b!562123 m!540189))

(declare-fun m!540191 () Bool)

(assert (=> b!562123 m!540191))

(assert (=> b!562123 m!540163))

(declare-fun m!540193 () Bool)

(assert (=> b!562123 m!540193))

(assert (=> b!562120 m!540163))

(assert (=> b!562120 m!540163))

(declare-fun m!540195 () Bool)

(assert (=> b!562120 m!540195))

(declare-fun m!540197 () Bool)

(assert (=> b!562120 m!540197))

(declare-fun m!540199 () Bool)

(assert (=> b!562120 m!540199))

(declare-fun m!540201 () Bool)

(assert (=> b!562125 m!540201))

(check-sat (not start!51460) (not b!562122) (not b!562125) (not b!562121) (not b!562115) (not b!562117) (not b!562126) (not b!562120) (not b!562127) (not b!562119) (not b!562123))
(check-sat)

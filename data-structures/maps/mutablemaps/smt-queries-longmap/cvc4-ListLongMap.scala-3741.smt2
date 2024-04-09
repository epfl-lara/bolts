; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51462 () Bool)

(assert start!51462)

(declare-fun b!562154 () Bool)

(declare-fun e!323977 () Bool)

(declare-fun e!323974 () Bool)

(assert (=> b!562154 (= e!323977 e!323974)))

(declare-fun res!353463 () Bool)

(assert (=> b!562154 (=> (not res!353463) (not e!323974))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5393 0))(
  ( (MissingZero!5393 (index!23799 (_ BitVec 32))) (Found!5393 (index!23800 (_ BitVec 32))) (Intermediate!5393 (undefined!6205 Bool) (index!23801 (_ BitVec 32)) (x!52723 (_ BitVec 32))) (Undefined!5393) (MissingVacant!5393 (index!23802 (_ BitVec 32))) )
))
(declare-fun lt!256104 () SeekEntryResult!5393)

(declare-fun lt!256105 () SeekEntryResult!5393)

(declare-datatypes ((array!35281 0))(
  ( (array!35282 (arr!16937 (Array (_ BitVec 32) (_ BitVec 64))) (size!17301 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35281)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35281 (_ BitVec 32)) SeekEntryResult!5393)

(assert (=> b!562154 (= res!353463 (= lt!256104 (seekKeyOrZeroReturnVacant!0 (x!52723 lt!256105) (index!23801 lt!256105) (index!23801 lt!256105) (select (arr!16937 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!562155 () Bool)

(declare-fun res!353466 () Bool)

(declare-fun e!323980 () Bool)

(assert (=> b!562155 (=> (not res!353466) (not e!323980))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562155 (= res!353466 (validKeyInArray!0 k!1914))))

(declare-fun b!562156 () Bool)

(declare-fun e!323979 () Bool)

(assert (=> b!562156 (= e!323979 e!323977)))

(declare-fun res!353462 () Bool)

(assert (=> b!562156 (=> res!353462 e!323977)))

(declare-fun lt!256101 () (_ BitVec 64))

(assert (=> b!562156 (= res!353462 (or (= lt!256101 (select (arr!16937 a!3118) j!142)) (= lt!256101 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562156 (= lt!256101 (select (arr!16937 a!3118) (index!23801 lt!256105)))))

(declare-fun b!562158 () Bool)

(declare-fun res!353458 () Bool)

(assert (=> b!562158 (=> (not res!353458) (not e!323980))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!562158 (= res!353458 (and (= (size!17301 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17301 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17301 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562159 () Bool)

(declare-fun lt!256102 () array!35281)

(declare-fun lt!256106 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35281 (_ BitVec 32)) SeekEntryResult!5393)

(assert (=> b!562159 (= e!323974 (= (seekEntryOrOpen!0 lt!256106 lt!256102 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52723 lt!256105) (index!23801 lt!256105) (index!23801 lt!256105) lt!256106 lt!256102 mask!3119)))))

(declare-fun b!562160 () Bool)

(declare-fun e!323978 () Bool)

(assert (=> b!562160 (= e!323980 e!323978)))

(declare-fun res!353464 () Bool)

(assert (=> b!562160 (=> (not res!353464) (not e!323978))))

(declare-fun lt!256109 () SeekEntryResult!5393)

(assert (=> b!562160 (= res!353464 (or (= lt!256109 (MissingZero!5393 i!1132)) (= lt!256109 (MissingVacant!5393 i!1132))))))

(assert (=> b!562160 (= lt!256109 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!562161 () Bool)

(declare-fun e!323976 () Bool)

(assert (=> b!562161 (= e!323976 e!323979)))

(declare-fun res!353456 () Bool)

(assert (=> b!562161 (=> res!353456 e!323979)))

(assert (=> b!562161 (= res!353456 (or (undefined!6205 lt!256105) (not (is-Intermediate!5393 lt!256105))))))

(declare-fun b!562162 () Bool)

(declare-fun res!353467 () Bool)

(assert (=> b!562162 (=> (not res!353467) (not e!323980))))

(assert (=> b!562162 (= res!353467 (validKeyInArray!0 (select (arr!16937 a!3118) j!142)))))

(declare-fun b!562163 () Bool)

(declare-fun e!323975 () Bool)

(assert (=> b!562163 (= e!323978 e!323975)))

(declare-fun res!353457 () Bool)

(assert (=> b!562163 (=> (not res!353457) (not e!323975))))

(declare-fun lt!256103 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35281 (_ BitVec 32)) SeekEntryResult!5393)

(assert (=> b!562163 (= res!353457 (= lt!256105 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256103 lt!256106 lt!256102 mask!3119)))))

(declare-fun lt!256108 () (_ BitVec 32))

(assert (=> b!562163 (= lt!256105 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256108 (select (arr!16937 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562163 (= lt!256103 (toIndex!0 lt!256106 mask!3119))))

(assert (=> b!562163 (= lt!256106 (select (store (arr!16937 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!562163 (= lt!256108 (toIndex!0 (select (arr!16937 a!3118) j!142) mask!3119))))

(assert (=> b!562163 (= lt!256102 (array!35282 (store (arr!16937 a!3118) i!1132 k!1914) (size!17301 a!3118)))))

(declare-fun b!562164 () Bool)

(declare-fun res!353465 () Bool)

(assert (=> b!562164 (=> (not res!353465) (not e!323978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35281 (_ BitVec 32)) Bool)

(assert (=> b!562164 (= res!353465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!353460 () Bool)

(assert (=> start!51462 (=> (not res!353460) (not e!323980))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51462 (= res!353460 (validMask!0 mask!3119))))

(assert (=> start!51462 e!323980))

(assert (=> start!51462 true))

(declare-fun array_inv!12711 (array!35281) Bool)

(assert (=> start!51462 (array_inv!12711 a!3118)))

(declare-fun b!562157 () Bool)

(assert (=> b!562157 (= e!323975 (not true))))

(assert (=> b!562157 e!323976))

(declare-fun res!353468 () Bool)

(assert (=> b!562157 (=> (not res!353468) (not e!323976))))

(assert (=> b!562157 (= res!353468 (= lt!256104 (Found!5393 j!142)))))

(assert (=> b!562157 (= lt!256104 (seekEntryOrOpen!0 (select (arr!16937 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!562157 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17560 0))(
  ( (Unit!17561) )
))
(declare-fun lt!256107 () Unit!17560)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35281 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17560)

(assert (=> b!562157 (= lt!256107 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562165 () Bool)

(declare-fun res!353461 () Bool)

(assert (=> b!562165 (=> (not res!353461) (not e!323978))))

(declare-datatypes ((List!11070 0))(
  ( (Nil!11067) (Cons!11066 (h!12069 (_ BitVec 64)) (t!17306 List!11070)) )
))
(declare-fun arrayNoDuplicates!0 (array!35281 (_ BitVec 32) List!11070) Bool)

(assert (=> b!562165 (= res!353461 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11067))))

(declare-fun b!562166 () Bool)

(declare-fun res!353459 () Bool)

(assert (=> b!562166 (=> (not res!353459) (not e!323980))))

(declare-fun arrayContainsKey!0 (array!35281 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562166 (= res!353459 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51462 res!353460) b!562158))

(assert (= (and b!562158 res!353458) b!562162))

(assert (= (and b!562162 res!353467) b!562155))

(assert (= (and b!562155 res!353466) b!562166))

(assert (= (and b!562166 res!353459) b!562160))

(assert (= (and b!562160 res!353464) b!562164))

(assert (= (and b!562164 res!353465) b!562165))

(assert (= (and b!562165 res!353461) b!562163))

(assert (= (and b!562163 res!353457) b!562157))

(assert (= (and b!562157 res!353468) b!562161))

(assert (= (and b!562161 (not res!353456)) b!562156))

(assert (= (and b!562156 (not res!353462)) b!562154))

(assert (= (and b!562154 res!353463) b!562159))

(declare-fun m!540203 () Bool)

(assert (=> b!562156 m!540203))

(declare-fun m!540205 () Bool)

(assert (=> b!562156 m!540205))

(assert (=> b!562157 m!540203))

(assert (=> b!562157 m!540203))

(declare-fun m!540207 () Bool)

(assert (=> b!562157 m!540207))

(declare-fun m!540209 () Bool)

(assert (=> b!562157 m!540209))

(declare-fun m!540211 () Bool)

(assert (=> b!562157 m!540211))

(declare-fun m!540213 () Bool)

(assert (=> b!562165 m!540213))

(declare-fun m!540215 () Bool)

(assert (=> b!562166 m!540215))

(declare-fun m!540217 () Bool)

(assert (=> b!562160 m!540217))

(declare-fun m!540219 () Bool)

(assert (=> b!562155 m!540219))

(declare-fun m!540221 () Bool)

(assert (=> b!562159 m!540221))

(declare-fun m!540223 () Bool)

(assert (=> b!562159 m!540223))

(declare-fun m!540225 () Bool)

(assert (=> start!51462 m!540225))

(declare-fun m!540227 () Bool)

(assert (=> start!51462 m!540227))

(assert (=> b!562154 m!540203))

(assert (=> b!562154 m!540203))

(declare-fun m!540229 () Bool)

(assert (=> b!562154 m!540229))

(declare-fun m!540231 () Bool)

(assert (=> b!562164 m!540231))

(assert (=> b!562162 m!540203))

(assert (=> b!562162 m!540203))

(declare-fun m!540233 () Bool)

(assert (=> b!562162 m!540233))

(assert (=> b!562163 m!540203))

(declare-fun m!540235 () Bool)

(assert (=> b!562163 m!540235))

(assert (=> b!562163 m!540203))

(declare-fun m!540237 () Bool)

(assert (=> b!562163 m!540237))

(declare-fun m!540239 () Bool)

(assert (=> b!562163 m!540239))

(assert (=> b!562163 m!540203))

(declare-fun m!540241 () Bool)

(assert (=> b!562163 m!540241))

(declare-fun m!540243 () Bool)

(assert (=> b!562163 m!540243))

(declare-fun m!540245 () Bool)

(assert (=> b!562163 m!540245))

(push 1)


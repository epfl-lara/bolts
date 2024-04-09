; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51458 () Bool)

(assert start!51458)

(declare-fun b!562076 () Bool)

(declare-fun e!323927 () Bool)

(declare-fun e!323929 () Bool)

(assert (=> b!562076 (= e!323927 e!323929)))

(declare-fun res!353388 () Bool)

(assert (=> b!562076 (=> (not res!353388) (not e!323929))))

(declare-datatypes ((array!35277 0))(
  ( (array!35278 (arr!16935 (Array (_ BitVec 32) (_ BitVec 64))) (size!17299 (_ BitVec 32))) )
))
(declare-fun lt!256052 () array!35277)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!256049 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5391 0))(
  ( (MissingZero!5391 (index!23791 (_ BitVec 32))) (Found!5391 (index!23792 (_ BitVec 32))) (Intermediate!5391 (undefined!6203 Bool) (index!23793 (_ BitVec 32)) (x!52721 (_ BitVec 32))) (Undefined!5391) (MissingVacant!5391 (index!23794 (_ BitVec 32))) )
))
(declare-fun lt!256053 () SeekEntryResult!5391)

(declare-fun lt!256051 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35277 (_ BitVec 32)) SeekEntryResult!5391)

(assert (=> b!562076 (= res!353388 (= lt!256053 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256051 lt!256049 lt!256052 mask!3119)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun a!3118 () array!35277)

(declare-fun lt!256054 () (_ BitVec 32))

(assert (=> b!562076 (= lt!256053 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256054 (select (arr!16935 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562076 (= lt!256051 (toIndex!0 lt!256049 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!562076 (= lt!256049 (select (store (arr!16935 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!562076 (= lt!256054 (toIndex!0 (select (arr!16935 a!3118) j!142) mask!3119))))

(assert (=> b!562076 (= lt!256052 (array!35278 (store (arr!16935 a!3118) i!1132 k!1914) (size!17299 a!3118)))))

(declare-fun b!562077 () Bool)

(declare-fun e!323930 () Bool)

(assert (=> b!562077 (= e!323930 e!323927)))

(declare-fun res!353382 () Bool)

(assert (=> b!562077 (=> (not res!353382) (not e!323927))))

(declare-fun lt!256055 () SeekEntryResult!5391)

(assert (=> b!562077 (= res!353382 (or (= lt!256055 (MissingZero!5391 i!1132)) (= lt!256055 (MissingVacant!5391 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35277 (_ BitVec 32)) SeekEntryResult!5391)

(assert (=> b!562077 (= lt!256055 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!562078 () Bool)

(declare-fun res!353387 () Bool)

(assert (=> b!562078 (=> (not res!353387) (not e!323930))))

(assert (=> b!562078 (= res!353387 (and (= (size!17299 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17299 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17299 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562079 () Bool)

(declare-fun e!323931 () Bool)

(declare-fun e!323928 () Bool)

(assert (=> b!562079 (= e!323931 e!323928)))

(declare-fun res!353383 () Bool)

(assert (=> b!562079 (=> res!353383 e!323928)))

(declare-fun lt!256047 () (_ BitVec 64))

(assert (=> b!562079 (= res!353383 (or (= lt!256047 (select (arr!16935 a!3118) j!142)) (= lt!256047 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562079 (= lt!256047 (select (arr!16935 a!3118) (index!23793 lt!256053)))))

(declare-fun b!562081 () Bool)

(declare-fun res!353386 () Bool)

(assert (=> b!562081 (=> (not res!353386) (not e!323927))))

(declare-datatypes ((List!11068 0))(
  ( (Nil!11065) (Cons!11064 (h!12067 (_ BitVec 64)) (t!17304 List!11068)) )
))
(declare-fun arrayNoDuplicates!0 (array!35277 (_ BitVec 32) List!11068) Bool)

(assert (=> b!562081 (= res!353386 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11065))))

(declare-fun b!562082 () Bool)

(declare-fun res!353390 () Bool)

(assert (=> b!562082 (=> (not res!353390) (not e!323927))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35277 (_ BitVec 32)) Bool)

(assert (=> b!562082 (= res!353390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562083 () Bool)

(declare-fun res!353378 () Bool)

(assert (=> b!562083 (=> (not res!353378) (not e!323930))))

(declare-fun arrayContainsKey!0 (array!35277 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562083 (= res!353378 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!562084 () Bool)

(declare-fun e!323925 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35277 (_ BitVec 32)) SeekEntryResult!5391)

(assert (=> b!562084 (= e!323925 (= (seekEntryOrOpen!0 lt!256049 lt!256052 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52721 lt!256053) (index!23793 lt!256053) (index!23793 lt!256053) lt!256049 lt!256052 mask!3119)))))

(declare-fun b!562085 () Bool)

(declare-fun res!353384 () Bool)

(assert (=> b!562085 (=> (not res!353384) (not e!323930))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562085 (= res!353384 (validKeyInArray!0 (select (arr!16935 a!3118) j!142)))))

(declare-fun b!562086 () Bool)

(assert (=> b!562086 (= e!323929 (not true))))

(declare-fun e!323932 () Bool)

(assert (=> b!562086 e!323932))

(declare-fun res!353389 () Bool)

(assert (=> b!562086 (=> (not res!353389) (not e!323932))))

(declare-fun lt!256048 () SeekEntryResult!5391)

(assert (=> b!562086 (= res!353389 (= lt!256048 (Found!5391 j!142)))))

(assert (=> b!562086 (= lt!256048 (seekEntryOrOpen!0 (select (arr!16935 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!562086 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17556 0))(
  ( (Unit!17557) )
))
(declare-fun lt!256050 () Unit!17556)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35277 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17556)

(assert (=> b!562086 (= lt!256050 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562087 () Bool)

(assert (=> b!562087 (= e!323932 e!323931)))

(declare-fun res!353379 () Bool)

(assert (=> b!562087 (=> res!353379 e!323931)))

(assert (=> b!562087 (= res!353379 (or (undefined!6203 lt!256053) (not (is-Intermediate!5391 lt!256053))))))

(declare-fun b!562088 () Bool)

(declare-fun res!353385 () Bool)

(assert (=> b!562088 (=> (not res!353385) (not e!323930))))

(assert (=> b!562088 (= res!353385 (validKeyInArray!0 k!1914))))

(declare-fun res!353381 () Bool)

(assert (=> start!51458 (=> (not res!353381) (not e!323930))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51458 (= res!353381 (validMask!0 mask!3119))))

(assert (=> start!51458 e!323930))

(assert (=> start!51458 true))

(declare-fun array_inv!12709 (array!35277) Bool)

(assert (=> start!51458 (array_inv!12709 a!3118)))

(declare-fun b!562080 () Bool)

(assert (=> b!562080 (= e!323928 e!323925)))

(declare-fun res!353380 () Bool)

(assert (=> b!562080 (=> (not res!353380) (not e!323925))))

(assert (=> b!562080 (= res!353380 (= lt!256048 (seekKeyOrZeroReturnVacant!0 (x!52721 lt!256053) (index!23793 lt!256053) (index!23793 lt!256053) (select (arr!16935 a!3118) j!142) a!3118 mask!3119)))))

(assert (= (and start!51458 res!353381) b!562078))

(assert (= (and b!562078 res!353387) b!562085))

(assert (= (and b!562085 res!353384) b!562088))

(assert (= (and b!562088 res!353385) b!562083))

(assert (= (and b!562083 res!353378) b!562077))

(assert (= (and b!562077 res!353382) b!562082))

(assert (= (and b!562082 res!353390) b!562081))

(assert (= (and b!562081 res!353386) b!562076))

(assert (= (and b!562076 res!353388) b!562086))

(assert (= (and b!562086 res!353389) b!562087))

(assert (= (and b!562087 (not res!353379)) b!562079))

(assert (= (and b!562079 (not res!353383)) b!562080))

(assert (= (and b!562080 res!353380) b!562084))

(declare-fun m!540115 () Bool)

(assert (=> b!562080 m!540115))

(assert (=> b!562080 m!540115))

(declare-fun m!540117 () Bool)

(assert (=> b!562080 m!540117))

(declare-fun m!540119 () Bool)

(assert (=> b!562077 m!540119))

(declare-fun m!540121 () Bool)

(assert (=> b!562088 m!540121))

(assert (=> b!562079 m!540115))

(declare-fun m!540123 () Bool)

(assert (=> b!562079 m!540123))

(assert (=> b!562085 m!540115))

(assert (=> b!562085 m!540115))

(declare-fun m!540125 () Bool)

(assert (=> b!562085 m!540125))

(declare-fun m!540127 () Bool)

(assert (=> b!562083 m!540127))

(declare-fun m!540129 () Bool)

(assert (=> b!562081 m!540129))

(declare-fun m!540131 () Bool)

(assert (=> start!51458 m!540131))

(declare-fun m!540133 () Bool)

(assert (=> start!51458 m!540133))

(declare-fun m!540135 () Bool)

(assert (=> b!562082 m!540135))

(assert (=> b!562086 m!540115))

(assert (=> b!562086 m!540115))

(declare-fun m!540137 () Bool)

(assert (=> b!562086 m!540137))

(declare-fun m!540139 () Bool)

(assert (=> b!562086 m!540139))

(declare-fun m!540141 () Bool)

(assert (=> b!562086 m!540141))

(declare-fun m!540143 () Bool)

(assert (=> b!562084 m!540143))

(declare-fun m!540145 () Bool)

(assert (=> b!562084 m!540145))

(assert (=> b!562076 m!540115))

(declare-fun m!540147 () Bool)

(assert (=> b!562076 m!540147))

(assert (=> b!562076 m!540115))

(declare-fun m!540149 () Bool)

(assert (=> b!562076 m!540149))

(assert (=> b!562076 m!540115))

(declare-fun m!540151 () Bool)

(assert (=> b!562076 m!540151))

(declare-fun m!540153 () Bool)

(assert (=> b!562076 m!540153))

(declare-fun m!540155 () Bool)

(assert (=> b!562076 m!540155))

(declare-fun m!540157 () Bool)

(assert (=> b!562076 m!540157))

(push 1)


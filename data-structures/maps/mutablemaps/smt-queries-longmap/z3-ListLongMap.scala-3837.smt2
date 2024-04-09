; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52792 () Bool)

(assert start!52792)

(declare-fun b!575214 () Bool)

(declare-fun e!330974 () Bool)

(declare-fun e!330975 () Bool)

(assert (=> b!575214 (= e!330974 e!330975)))

(declare-fun res!363788 () Bool)

(assert (=> b!575214 (=> res!363788 e!330975)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!262964 () (_ BitVec 64))

(declare-datatypes ((array!35891 0))(
  ( (array!35892 (arr!17224 (Array (_ BitVec 32) (_ BitVec 64))) (size!17588 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35891)

(assert (=> b!575214 (= res!363788 (or (= lt!262964 (select (arr!17224 a!3118) j!142)) (= lt!262964 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5680 0))(
  ( (MissingZero!5680 (index!24947 (_ BitVec 32))) (Found!5680 (index!24948 (_ BitVec 32))) (Intermediate!5680 (undefined!6492 Bool) (index!24949 (_ BitVec 32)) (x!53868 (_ BitVec 32))) (Undefined!5680) (MissingVacant!5680 (index!24950 (_ BitVec 32))) )
))
(declare-fun lt!262956 () SeekEntryResult!5680)

(assert (=> b!575214 (= lt!262964 (select (arr!17224 a!3118) (index!24949 lt!262956)))))

(declare-fun b!575215 () Bool)

(declare-fun e!330977 () Bool)

(declare-fun e!330979 () Bool)

(assert (=> b!575215 (= e!330977 e!330979)))

(declare-fun res!363790 () Bool)

(assert (=> b!575215 (=> (not res!363790) (not e!330979))))

(declare-fun lt!262957 () array!35891)

(declare-fun lt!262961 () (_ BitVec 32))

(declare-fun lt!262954 () (_ BitVec 64))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35891 (_ BitVec 32)) SeekEntryResult!5680)

(assert (=> b!575215 (= res!363790 (= lt!262956 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262961 lt!262954 lt!262957 mask!3119)))))

(declare-fun lt!262955 () (_ BitVec 32))

(assert (=> b!575215 (= lt!262956 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262955 (select (arr!17224 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575215 (= lt!262961 (toIndex!0 lt!262954 mask!3119))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!575215 (= lt!262954 (select (store (arr!17224 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!575215 (= lt!262955 (toIndex!0 (select (arr!17224 a!3118) j!142) mask!3119))))

(assert (=> b!575215 (= lt!262957 (array!35892 (store (arr!17224 a!3118) i!1132 k0!1914) (size!17588 a!3118)))))

(declare-fun b!575216 () Bool)

(declare-fun res!363780 () Bool)

(declare-fun e!330978 () Bool)

(assert (=> b!575216 (=> (not res!363780) (not e!330978))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!575216 (= res!363780 (validKeyInArray!0 k0!1914))))

(declare-fun b!575217 () Bool)

(assert (=> b!575217 (= e!330979 (not e!330974))))

(declare-fun res!363783 () Bool)

(assert (=> b!575217 (=> res!363783 e!330974)))

(get-info :version)

(assert (=> b!575217 (= res!363783 (or (undefined!6492 lt!262956) (not ((_ is Intermediate!5680) lt!262956))))))

(declare-fun lt!262963 () SeekEntryResult!5680)

(declare-fun lt!262958 () SeekEntryResult!5680)

(assert (=> b!575217 (= lt!262963 lt!262958)))

(assert (=> b!575217 (= lt!262958 (Found!5680 j!142))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35891 (_ BitVec 32)) SeekEntryResult!5680)

(assert (=> b!575217 (= lt!262963 (seekEntryOrOpen!0 (select (arr!17224 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35891 (_ BitVec 32)) Bool)

(assert (=> b!575217 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18062 0))(
  ( (Unit!18063) )
))
(declare-fun lt!262959 () Unit!18062)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35891 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18062)

(assert (=> b!575217 (= lt!262959 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!575218 () Bool)

(declare-fun res!363789 () Bool)

(assert (=> b!575218 (=> (not res!363789) (not e!330977))))

(assert (=> b!575218 (= res!363789 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!363785 () Bool)

(assert (=> start!52792 (=> (not res!363785) (not e!330978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52792 (= res!363785 (validMask!0 mask!3119))))

(assert (=> start!52792 e!330978))

(assert (=> start!52792 true))

(declare-fun array_inv!12998 (array!35891) Bool)

(assert (=> start!52792 (array_inv!12998 a!3118)))

(declare-fun b!575219 () Bool)

(declare-fun res!363787 () Bool)

(assert (=> b!575219 (=> (not res!363787) (not e!330978))))

(assert (=> b!575219 (= res!363787 (validKeyInArray!0 (select (arr!17224 a!3118) j!142)))))

(declare-fun b!575220 () Bool)

(declare-fun res!363782 () Bool)

(assert (=> b!575220 (=> (not res!363782) (not e!330978))))

(declare-fun arrayContainsKey!0 (array!35891 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!575220 (= res!363782 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!575221 () Bool)

(declare-fun e!330976 () Bool)

(assert (=> b!575221 (= e!330975 e!330976)))

(declare-fun res!363791 () Bool)

(assert (=> b!575221 (=> res!363791 e!330976)))

(declare-fun lt!262962 () SeekEntryResult!5680)

(assert (=> b!575221 (= res!363791 (or (bvslt (index!24949 lt!262956) #b00000000000000000000000000000000) (bvsge (index!24949 lt!262956) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53868 lt!262956) #b01111111111111111111111111111110) (bvslt (x!53868 lt!262956) #b00000000000000000000000000000000) (not (= lt!262964 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!17224 a!3118) i!1132 k0!1914) (index!24949 lt!262956)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!262962 lt!262958))))))

(declare-fun lt!262953 () SeekEntryResult!5680)

(declare-fun lt!262951 () SeekEntryResult!5680)

(assert (=> b!575221 (= lt!262953 lt!262951)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35891 (_ BitVec 32)) SeekEntryResult!5680)

(assert (=> b!575221 (= lt!262951 (seekKeyOrZeroReturnVacant!0 (x!53868 lt!262956) (index!24949 lt!262956) (index!24949 lt!262956) lt!262954 lt!262957 mask!3119))))

(assert (=> b!575221 (= lt!262953 (seekEntryOrOpen!0 lt!262954 lt!262957 mask!3119))))

(assert (=> b!575221 (= lt!262963 lt!262962)))

(assert (=> b!575221 (= lt!262962 (seekKeyOrZeroReturnVacant!0 (x!53868 lt!262956) (index!24949 lt!262956) (index!24949 lt!262956) (select (arr!17224 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!575222 () Bool)

(declare-fun res!363781 () Bool)

(assert (=> b!575222 (=> (not res!363781) (not e!330978))))

(assert (=> b!575222 (= res!363781 (and (= (size!17588 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17588 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17588 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!575223 () Bool)

(assert (=> b!575223 (= e!330976 true)))

(assert (=> b!575223 (= lt!262962 lt!262951)))

(declare-fun lt!262952 () Unit!18062)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35891 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18062)

(assert (=> b!575223 (= lt!262952 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k0!1914 j!142 (x!53868 lt!262956) (index!24949 lt!262956) (index!24949 lt!262956) mask!3119))))

(declare-fun b!575224 () Bool)

(declare-fun res!363786 () Bool)

(assert (=> b!575224 (=> (not res!363786) (not e!330977))))

(declare-datatypes ((List!11357 0))(
  ( (Nil!11354) (Cons!11353 (h!12392 (_ BitVec 64)) (t!17593 List!11357)) )
))
(declare-fun arrayNoDuplicates!0 (array!35891 (_ BitVec 32) List!11357) Bool)

(assert (=> b!575224 (= res!363786 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11354))))

(declare-fun b!575225 () Bool)

(assert (=> b!575225 (= e!330978 e!330977)))

(declare-fun res!363784 () Bool)

(assert (=> b!575225 (=> (not res!363784) (not e!330977))))

(declare-fun lt!262960 () SeekEntryResult!5680)

(assert (=> b!575225 (= res!363784 (or (= lt!262960 (MissingZero!5680 i!1132)) (= lt!262960 (MissingVacant!5680 i!1132))))))

(assert (=> b!575225 (= lt!262960 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(assert (= (and start!52792 res!363785) b!575222))

(assert (= (and b!575222 res!363781) b!575219))

(assert (= (and b!575219 res!363787) b!575216))

(assert (= (and b!575216 res!363780) b!575220))

(assert (= (and b!575220 res!363782) b!575225))

(assert (= (and b!575225 res!363784) b!575218))

(assert (= (and b!575218 res!363789) b!575224))

(assert (= (and b!575224 res!363786) b!575215))

(assert (= (and b!575215 res!363790) b!575217))

(assert (= (and b!575217 (not res!363783)) b!575214))

(assert (= (and b!575214 (not res!363788)) b!575221))

(assert (= (and b!575221 (not res!363791)) b!575223))

(declare-fun m!554095 () Bool)

(assert (=> b!575221 m!554095))

(declare-fun m!554097 () Bool)

(assert (=> b!575221 m!554097))

(declare-fun m!554099 () Bool)

(assert (=> b!575221 m!554099))

(declare-fun m!554101 () Bool)

(assert (=> b!575221 m!554101))

(declare-fun m!554103 () Bool)

(assert (=> b!575221 m!554103))

(assert (=> b!575221 m!554097))

(declare-fun m!554105 () Bool)

(assert (=> b!575221 m!554105))

(declare-fun m!554107 () Bool)

(assert (=> b!575223 m!554107))

(assert (=> b!575215 m!554097))

(declare-fun m!554109 () Bool)

(assert (=> b!575215 m!554109))

(assert (=> b!575215 m!554097))

(declare-fun m!554111 () Bool)

(assert (=> b!575215 m!554111))

(declare-fun m!554113 () Bool)

(assert (=> b!575215 m!554113))

(assert (=> b!575215 m!554101))

(assert (=> b!575215 m!554097))

(declare-fun m!554115 () Bool)

(assert (=> b!575215 m!554115))

(declare-fun m!554117 () Bool)

(assert (=> b!575215 m!554117))

(assert (=> b!575219 m!554097))

(assert (=> b!575219 m!554097))

(declare-fun m!554119 () Bool)

(assert (=> b!575219 m!554119))

(assert (=> b!575217 m!554097))

(assert (=> b!575217 m!554097))

(declare-fun m!554121 () Bool)

(assert (=> b!575217 m!554121))

(declare-fun m!554123 () Bool)

(assert (=> b!575217 m!554123))

(declare-fun m!554125 () Bool)

(assert (=> b!575217 m!554125))

(declare-fun m!554127 () Bool)

(assert (=> b!575218 m!554127))

(declare-fun m!554129 () Bool)

(assert (=> b!575220 m!554129))

(declare-fun m!554131 () Bool)

(assert (=> b!575224 m!554131))

(assert (=> b!575214 m!554097))

(declare-fun m!554133 () Bool)

(assert (=> b!575214 m!554133))

(declare-fun m!554135 () Bool)

(assert (=> start!52792 m!554135))

(declare-fun m!554137 () Bool)

(assert (=> start!52792 m!554137))

(declare-fun m!554139 () Bool)

(assert (=> b!575225 m!554139))

(declare-fun m!554141 () Bool)

(assert (=> b!575216 m!554141))

(check-sat (not b!575219) (not b!575221) (not b!575218) (not b!575223) (not b!575216) (not b!575220) (not b!575225) (not b!575224) (not start!52792) (not b!575215) (not b!575217))
(check-sat)

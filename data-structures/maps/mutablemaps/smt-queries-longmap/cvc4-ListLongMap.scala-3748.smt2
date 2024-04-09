; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51504 () Bool)

(assert start!51504)

(declare-fun b!562911 () Bool)

(declare-fun e!324417 () Bool)

(declare-fun e!324416 () Bool)

(assert (=> b!562911 (= e!324417 e!324416)))

(declare-fun res!354217 () Bool)

(assert (=> b!562911 (=> (not res!354217) (not e!324416))))

(declare-datatypes ((SeekEntryResult!5414 0))(
  ( (MissingZero!5414 (index!23883 (_ BitVec 32))) (Found!5414 (index!23884 (_ BitVec 32))) (Intermediate!5414 (undefined!6226 Bool) (index!23885 (_ BitVec 32)) (x!52800 (_ BitVec 32))) (Undefined!5414) (MissingVacant!5414 (index!23886 (_ BitVec 32))) )
))
(declare-fun lt!256990 () SeekEntryResult!5414)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!562911 (= res!354217 (or (= lt!256990 (MissingZero!5414 i!1132)) (= lt!256990 (MissingVacant!5414 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!35323 0))(
  ( (array!35324 (arr!16958 (Array (_ BitVec 32) (_ BitVec 64))) (size!17322 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35323)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35323 (_ BitVec 32)) SeekEntryResult!5414)

(assert (=> b!562911 (= lt!256990 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!562912 () Bool)

(declare-fun res!354215 () Bool)

(assert (=> b!562912 (=> (not res!354215) (not e!324417))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562912 (= res!354215 (validKeyInArray!0 (select (arr!16958 a!3118) j!142)))))

(declare-fun b!562913 () Bool)

(declare-fun res!354222 () Bool)

(assert (=> b!562913 (=> (not res!354222) (not e!324417))))

(assert (=> b!562913 (= res!354222 (validKeyInArray!0 k!1914))))

(declare-fun b!562914 () Bool)

(declare-fun e!324419 () Bool)

(assert (=> b!562914 (= e!324416 e!324419)))

(declare-fun res!354223 () Bool)

(assert (=> b!562914 (=> (not res!354223) (not e!324419))))

(declare-fun lt!256985 () SeekEntryResult!5414)

(declare-fun lt!256986 () array!35323)

(declare-fun lt!256981 () (_ BitVec 64))

(declare-fun lt!256987 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35323 (_ BitVec 32)) SeekEntryResult!5414)

(assert (=> b!562914 (= res!354223 (= lt!256985 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256987 lt!256981 lt!256986 mask!3119)))))

(declare-fun lt!256984 () (_ BitVec 32))

(assert (=> b!562914 (= lt!256985 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256984 (select (arr!16958 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562914 (= lt!256987 (toIndex!0 lt!256981 mask!3119))))

(assert (=> b!562914 (= lt!256981 (select (store (arr!16958 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!562914 (= lt!256984 (toIndex!0 (select (arr!16958 a!3118) j!142) mask!3119))))

(assert (=> b!562914 (= lt!256986 (array!35324 (store (arr!16958 a!3118) i!1132 k!1914) (size!17322 a!3118)))))

(declare-fun b!562915 () Bool)

(declare-fun res!354213 () Bool)

(assert (=> b!562915 (=> (not res!354213) (not e!324416))))

(declare-datatypes ((List!11091 0))(
  ( (Nil!11088) (Cons!11087 (h!12090 (_ BitVec 64)) (t!17327 List!11091)) )
))
(declare-fun arrayNoDuplicates!0 (array!35323 (_ BitVec 32) List!11091) Bool)

(assert (=> b!562915 (= res!354213 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11088))))

(declare-fun res!354218 () Bool)

(assert (=> start!51504 (=> (not res!354218) (not e!324417))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51504 (= res!354218 (validMask!0 mask!3119))))

(assert (=> start!51504 e!324417))

(assert (=> start!51504 true))

(declare-fun array_inv!12732 (array!35323) Bool)

(assert (=> start!51504 (array_inv!12732 a!3118)))

(declare-fun b!562916 () Bool)

(declare-fun res!354224 () Bool)

(assert (=> b!562916 (=> (not res!354224) (not e!324416))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35323 (_ BitVec 32)) Bool)

(assert (=> b!562916 (= res!354224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562917 () Bool)

(declare-fun e!324420 () Bool)

(declare-fun e!324421 () Bool)

(assert (=> b!562917 (= e!324420 e!324421)))

(declare-fun res!354214 () Bool)

(assert (=> b!562917 (=> res!354214 e!324421)))

(declare-fun lt!256983 () SeekEntryResult!5414)

(declare-fun lt!256982 () SeekEntryResult!5414)

(declare-fun lt!256989 () (_ BitVec 64))

(assert (=> b!562917 (= res!354214 (or (bvslt (index!23885 lt!256985) #b00000000000000000000000000000000) (bvsge (index!23885 lt!256985) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52800 lt!256985) #b01111111111111111111111111111110) (bvslt (x!52800 lt!256985) #b00000000000000000000000000000000) (not (= lt!256989 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16958 a!3118) i!1132 k!1914) (index!23885 lt!256985)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!256983 lt!256982))))))

(declare-fun lt!256991 () SeekEntryResult!5414)

(declare-fun lt!256988 () SeekEntryResult!5414)

(assert (=> b!562917 (= lt!256991 lt!256988)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35323 (_ BitVec 32)) SeekEntryResult!5414)

(assert (=> b!562917 (= lt!256988 (seekKeyOrZeroReturnVacant!0 (x!52800 lt!256985) (index!23885 lt!256985) (index!23885 lt!256985) lt!256981 lt!256986 mask!3119))))

(assert (=> b!562917 (= lt!256991 (seekEntryOrOpen!0 lt!256981 lt!256986 mask!3119))))

(declare-fun lt!256980 () SeekEntryResult!5414)

(assert (=> b!562917 (= lt!256980 lt!256983)))

(assert (=> b!562917 (= lt!256983 (seekKeyOrZeroReturnVacant!0 (x!52800 lt!256985) (index!23885 lt!256985) (index!23885 lt!256985) (select (arr!16958 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!562918 () Bool)

(assert (=> b!562918 (= e!324421 true)))

(assert (=> b!562918 (= lt!256983 lt!256988)))

(declare-datatypes ((Unit!17602 0))(
  ( (Unit!17603) )
))
(declare-fun lt!256979 () Unit!17602)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35323 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17602)

(assert (=> b!562918 (= lt!256979 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!52800 lt!256985) (index!23885 lt!256985) (index!23885 lt!256985) mask!3119))))

(declare-fun b!562919 () Bool)

(declare-fun res!354220 () Bool)

(assert (=> b!562919 (=> (not res!354220) (not e!324417))))

(assert (=> b!562919 (= res!354220 (and (= (size!17322 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17322 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17322 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562920 () Bool)

(declare-fun e!324415 () Bool)

(assert (=> b!562920 (= e!324415 e!324420)))

(declare-fun res!354216 () Bool)

(assert (=> b!562920 (=> res!354216 e!324420)))

(assert (=> b!562920 (= res!354216 (or (= lt!256989 (select (arr!16958 a!3118) j!142)) (= lt!256989 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562920 (= lt!256989 (select (arr!16958 a!3118) (index!23885 lt!256985)))))

(declare-fun b!562921 () Bool)

(assert (=> b!562921 (= e!324419 (not e!324415))))

(declare-fun res!354221 () Bool)

(assert (=> b!562921 (=> res!354221 e!324415)))

(assert (=> b!562921 (= res!354221 (or (undefined!6226 lt!256985) (not (is-Intermediate!5414 lt!256985))))))

(assert (=> b!562921 (= lt!256980 lt!256982)))

(assert (=> b!562921 (= lt!256982 (Found!5414 j!142))))

(assert (=> b!562921 (= lt!256980 (seekEntryOrOpen!0 (select (arr!16958 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!562921 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!256978 () Unit!17602)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35323 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17602)

(assert (=> b!562921 (= lt!256978 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562922 () Bool)

(declare-fun res!354219 () Bool)

(assert (=> b!562922 (=> (not res!354219) (not e!324417))))

(declare-fun arrayContainsKey!0 (array!35323 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562922 (= res!354219 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51504 res!354218) b!562919))

(assert (= (and b!562919 res!354220) b!562912))

(assert (= (and b!562912 res!354215) b!562913))

(assert (= (and b!562913 res!354222) b!562922))

(assert (= (and b!562922 res!354219) b!562911))

(assert (= (and b!562911 res!354217) b!562916))

(assert (= (and b!562916 res!354224) b!562915))

(assert (= (and b!562915 res!354213) b!562914))

(assert (= (and b!562914 res!354223) b!562921))

(assert (= (and b!562921 (not res!354221)) b!562920))

(assert (= (and b!562920 (not res!354216)) b!562917))

(assert (= (and b!562917 (not res!354214)) b!562918))

(declare-fun m!541207 () Bool)

(assert (=> b!562917 m!541207))

(declare-fun m!541209 () Bool)

(assert (=> b!562917 m!541209))

(assert (=> b!562917 m!541207))

(declare-fun m!541211 () Bool)

(assert (=> b!562917 m!541211))

(declare-fun m!541213 () Bool)

(assert (=> b!562917 m!541213))

(declare-fun m!541215 () Bool)

(assert (=> b!562917 m!541215))

(declare-fun m!541217 () Bool)

(assert (=> b!562917 m!541217))

(assert (=> b!562921 m!541207))

(assert (=> b!562921 m!541207))

(declare-fun m!541219 () Bool)

(assert (=> b!562921 m!541219))

(declare-fun m!541221 () Bool)

(assert (=> b!562921 m!541221))

(declare-fun m!541223 () Bool)

(assert (=> b!562921 m!541223))

(assert (=> b!562920 m!541207))

(declare-fun m!541225 () Bool)

(assert (=> b!562920 m!541225))

(declare-fun m!541227 () Bool)

(assert (=> b!562916 m!541227))

(declare-fun m!541229 () Bool)

(assert (=> b!562922 m!541229))

(declare-fun m!541231 () Bool)

(assert (=> b!562918 m!541231))

(declare-fun m!541233 () Bool)

(assert (=> b!562913 m!541233))

(declare-fun m!541235 () Bool)

(assert (=> b!562915 m!541235))

(declare-fun m!541237 () Bool)

(assert (=> b!562911 m!541237))

(declare-fun m!541239 () Bool)

(assert (=> start!51504 m!541239))

(declare-fun m!541241 () Bool)

(assert (=> start!51504 m!541241))

(assert (=> b!562912 m!541207))

(assert (=> b!562912 m!541207))

(declare-fun m!541243 () Bool)

(assert (=> b!562912 m!541243))

(assert (=> b!562914 m!541207))

(declare-fun m!541245 () Bool)

(assert (=> b!562914 m!541245))

(assert (=> b!562914 m!541207))

(declare-fun m!541247 () Bool)

(assert (=> b!562914 m!541247))

(assert (=> b!562914 m!541207))

(declare-fun m!541249 () Bool)

(assert (=> b!562914 m!541249))

(declare-fun m!541251 () Bool)

(assert (=> b!562914 m!541251))

(assert (=> b!562914 m!541213))

(declare-fun m!541253 () Bool)

(assert (=> b!562914 m!541253))

(push 1)


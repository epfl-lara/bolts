; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52800 () Bool)

(assert start!52800)

(declare-fun res!363932 () Bool)

(declare-fun e!331062 () Bool)

(assert (=> start!52800 (=> (not res!363932) (not e!331062))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52800 (= res!363932 (validMask!0 mask!3119))))

(assert (=> start!52800 e!331062))

(assert (=> start!52800 true))

(declare-datatypes ((array!35899 0))(
  ( (array!35900 (arr!17228 (Array (_ BitVec 32) (_ BitVec 64))) (size!17592 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35899)

(declare-fun array_inv!13002 (array!35899) Bool)

(assert (=> start!52800 (array_inv!13002 a!3118)))

(declare-fun b!575358 () Bool)

(declare-fun e!331060 () Bool)

(declare-fun e!331059 () Bool)

(assert (=> b!575358 (= e!331060 (not e!331059))))

(declare-fun res!363925 () Bool)

(assert (=> b!575358 (=> res!363925 e!331059)))

(declare-datatypes ((SeekEntryResult!5684 0))(
  ( (MissingZero!5684 (index!24963 (_ BitVec 32))) (Found!5684 (index!24964 (_ BitVec 32))) (Intermediate!5684 (undefined!6496 Bool) (index!24965 (_ BitVec 32)) (x!53880 (_ BitVec 32))) (Undefined!5684) (MissingVacant!5684 (index!24966 (_ BitVec 32))) )
))
(declare-fun lt!263131 () SeekEntryResult!5684)

(assert (=> b!575358 (= res!363925 (or (undefined!6496 lt!263131) (not (is-Intermediate!5684 lt!263131))))))

(declare-fun lt!263119 () SeekEntryResult!5684)

(declare-fun lt!263123 () SeekEntryResult!5684)

(assert (=> b!575358 (= lt!263119 lt!263123)))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!575358 (= lt!263123 (Found!5684 j!142))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35899 (_ BitVec 32)) SeekEntryResult!5684)

(assert (=> b!575358 (= lt!263119 (seekEntryOrOpen!0 (select (arr!17228 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35899 (_ BitVec 32)) Bool)

(assert (=> b!575358 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18070 0))(
  ( (Unit!18071) )
))
(declare-fun lt!263127 () Unit!18070)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35899 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18070)

(assert (=> b!575358 (= lt!263127 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!575359 () Bool)

(declare-fun e!331061 () Bool)

(assert (=> b!575359 (= e!331061 true)))

(declare-fun lt!263128 () SeekEntryResult!5684)

(declare-fun lt!263122 () SeekEntryResult!5684)

(assert (=> b!575359 (= lt!263128 lt!263122)))

(declare-fun lt!263120 () Unit!18070)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35899 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18070)

(assert (=> b!575359 (= lt!263120 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!53880 lt!263131) (index!24965 lt!263131) (index!24965 lt!263131) mask!3119))))

(declare-fun b!575360 () Bool)

(declare-fun res!363928 () Bool)

(assert (=> b!575360 (=> (not res!363928) (not e!331062))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!575360 (= res!363928 (validKeyInArray!0 k!1914))))

(declare-fun b!575361 () Bool)

(declare-fun res!363926 () Bool)

(assert (=> b!575361 (=> (not res!363926) (not e!331062))))

(assert (=> b!575361 (= res!363926 (validKeyInArray!0 (select (arr!17228 a!3118) j!142)))))

(declare-fun b!575362 () Bool)

(declare-fun res!363929 () Bool)

(assert (=> b!575362 (=> (not res!363929) (not e!331062))))

(declare-fun arrayContainsKey!0 (array!35899 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!575362 (= res!363929 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!575363 () Bool)

(declare-fun res!363933 () Bool)

(declare-fun e!331058 () Bool)

(assert (=> b!575363 (=> (not res!363933) (not e!331058))))

(declare-datatypes ((List!11361 0))(
  ( (Nil!11358) (Cons!11357 (h!12396 (_ BitVec 64)) (t!17597 List!11361)) )
))
(declare-fun arrayNoDuplicates!0 (array!35899 (_ BitVec 32) List!11361) Bool)

(assert (=> b!575363 (= res!363933 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11358))))

(declare-fun b!575364 () Bool)

(assert (=> b!575364 (= e!331058 e!331060)))

(declare-fun res!363931 () Bool)

(assert (=> b!575364 (=> (not res!363931) (not e!331060))))

(declare-fun lt!263129 () array!35899)

(declare-fun lt!263132 () (_ BitVec 64))

(declare-fun lt!263126 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35899 (_ BitVec 32)) SeekEntryResult!5684)

(assert (=> b!575364 (= res!363931 (= lt!263131 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263126 lt!263132 lt!263129 mask!3119)))))

(declare-fun lt!263125 () (_ BitVec 32))

(assert (=> b!575364 (= lt!263131 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263125 (select (arr!17228 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575364 (= lt!263126 (toIndex!0 lt!263132 mask!3119))))

(assert (=> b!575364 (= lt!263132 (select (store (arr!17228 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!575364 (= lt!263125 (toIndex!0 (select (arr!17228 a!3118) j!142) mask!3119))))

(assert (=> b!575364 (= lt!263129 (array!35900 (store (arr!17228 a!3118) i!1132 k!1914) (size!17592 a!3118)))))

(declare-fun b!575365 () Bool)

(declare-fun res!363927 () Bool)

(assert (=> b!575365 (=> (not res!363927) (not e!331058))))

(assert (=> b!575365 (= res!363927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!575366 () Bool)

(assert (=> b!575366 (= e!331062 e!331058)))

(declare-fun res!363935 () Bool)

(assert (=> b!575366 (=> (not res!363935) (not e!331058))))

(declare-fun lt!263121 () SeekEntryResult!5684)

(assert (=> b!575366 (= res!363935 (or (= lt!263121 (MissingZero!5684 i!1132)) (= lt!263121 (MissingVacant!5684 i!1132))))))

(assert (=> b!575366 (= lt!263121 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!575367 () Bool)

(declare-fun e!331063 () Bool)

(assert (=> b!575367 (= e!331063 e!331061)))

(declare-fun res!363930 () Bool)

(assert (=> b!575367 (=> res!363930 e!331061)))

(declare-fun lt!263130 () (_ BitVec 64))

(assert (=> b!575367 (= res!363930 (or (bvslt (index!24965 lt!263131) #b00000000000000000000000000000000) (bvsge (index!24965 lt!263131) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53880 lt!263131) #b01111111111111111111111111111110) (bvslt (x!53880 lt!263131) #b00000000000000000000000000000000) (not (= lt!263130 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!17228 a!3118) i!1132 k!1914) (index!24965 lt!263131)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!263128 lt!263123))))))

(declare-fun lt!263124 () SeekEntryResult!5684)

(assert (=> b!575367 (= lt!263124 lt!263122)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35899 (_ BitVec 32)) SeekEntryResult!5684)

(assert (=> b!575367 (= lt!263122 (seekKeyOrZeroReturnVacant!0 (x!53880 lt!263131) (index!24965 lt!263131) (index!24965 lt!263131) lt!263132 lt!263129 mask!3119))))

(assert (=> b!575367 (= lt!263124 (seekEntryOrOpen!0 lt!263132 lt!263129 mask!3119))))

(assert (=> b!575367 (= lt!263119 lt!263128)))

(assert (=> b!575367 (= lt!263128 (seekKeyOrZeroReturnVacant!0 (x!53880 lt!263131) (index!24965 lt!263131) (index!24965 lt!263131) (select (arr!17228 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!575368 () Bool)

(declare-fun res!363924 () Bool)

(assert (=> b!575368 (=> (not res!363924) (not e!331062))))

(assert (=> b!575368 (= res!363924 (and (= (size!17592 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17592 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17592 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!575369 () Bool)

(assert (=> b!575369 (= e!331059 e!331063)))

(declare-fun res!363934 () Bool)

(assert (=> b!575369 (=> res!363934 e!331063)))

(assert (=> b!575369 (= res!363934 (or (= lt!263130 (select (arr!17228 a!3118) j!142)) (= lt!263130 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!575369 (= lt!263130 (select (arr!17228 a!3118) (index!24965 lt!263131)))))

(assert (= (and start!52800 res!363932) b!575368))

(assert (= (and b!575368 res!363924) b!575361))

(assert (= (and b!575361 res!363926) b!575360))

(assert (= (and b!575360 res!363928) b!575362))

(assert (= (and b!575362 res!363929) b!575366))

(assert (= (and b!575366 res!363935) b!575365))

(assert (= (and b!575365 res!363927) b!575363))

(assert (= (and b!575363 res!363933) b!575364))

(assert (= (and b!575364 res!363931) b!575358))

(assert (= (and b!575358 (not res!363925)) b!575369))

(assert (= (and b!575369 (not res!363934)) b!575367))

(assert (= (and b!575367 (not res!363930)) b!575359))

(declare-fun m!554287 () Bool)

(assert (=> b!575361 m!554287))

(assert (=> b!575361 m!554287))

(declare-fun m!554289 () Bool)

(assert (=> b!575361 m!554289))

(assert (=> b!575358 m!554287))

(assert (=> b!575358 m!554287))

(declare-fun m!554291 () Bool)

(assert (=> b!575358 m!554291))

(declare-fun m!554293 () Bool)

(assert (=> b!575358 m!554293))

(declare-fun m!554295 () Bool)

(assert (=> b!575358 m!554295))

(declare-fun m!554297 () Bool)

(assert (=> start!52800 m!554297))

(declare-fun m!554299 () Bool)

(assert (=> start!52800 m!554299))

(declare-fun m!554301 () Bool)

(assert (=> b!575362 m!554301))

(declare-fun m!554303 () Bool)

(assert (=> b!575366 m!554303))

(assert (=> b!575369 m!554287))

(declare-fun m!554305 () Bool)

(assert (=> b!575369 m!554305))

(declare-fun m!554307 () Bool)

(assert (=> b!575359 m!554307))

(assert (=> b!575367 m!554287))

(declare-fun m!554309 () Bool)

(assert (=> b!575367 m!554309))

(declare-fun m!554311 () Bool)

(assert (=> b!575367 m!554311))

(declare-fun m!554313 () Bool)

(assert (=> b!575367 m!554313))

(assert (=> b!575367 m!554287))

(declare-fun m!554315 () Bool)

(assert (=> b!575367 m!554315))

(declare-fun m!554317 () Bool)

(assert (=> b!575367 m!554317))

(declare-fun m!554319 () Bool)

(assert (=> b!575364 m!554319))

(assert (=> b!575364 m!554287))

(declare-fun m!554321 () Bool)

(assert (=> b!575364 m!554321))

(assert (=> b!575364 m!554287))

(declare-fun m!554323 () Bool)

(assert (=> b!575364 m!554323))

(declare-fun m!554325 () Bool)

(assert (=> b!575364 m!554325))

(assert (=> b!575364 m!554313))

(assert (=> b!575364 m!554287))

(declare-fun m!554327 () Bool)

(assert (=> b!575364 m!554327))

(declare-fun m!554329 () Bool)

(assert (=> b!575365 m!554329))

(declare-fun m!554331 () Bool)

(assert (=> b!575360 m!554331))

(declare-fun m!554333 () Bool)

(assert (=> b!575363 m!554333))

(push 1)


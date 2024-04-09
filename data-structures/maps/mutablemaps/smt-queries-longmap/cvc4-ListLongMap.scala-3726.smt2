; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51372 () Bool)

(assert start!51372)

(declare-fun b!560399 () Bool)

(declare-fun res!351701 () Bool)

(declare-fun e!322894 () Bool)

(assert (=> b!560399 (=> (not res!351701) (not e!322894))))

(declare-datatypes ((array!35191 0))(
  ( (array!35192 (arr!16892 (Array (_ BitVec 32) (_ BitVec 64))) (size!17256 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35191)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35191 (_ BitVec 32)) Bool)

(assert (=> b!560399 (= res!351701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560400 () Bool)

(declare-fun e!322897 () Bool)

(assert (=> b!560400 (= e!322897 e!322894)))

(declare-fun res!351708 () Bool)

(assert (=> b!560400 (=> (not res!351708) (not e!322894))))

(declare-datatypes ((SeekEntryResult!5348 0))(
  ( (MissingZero!5348 (index!23619 (_ BitVec 32))) (Found!5348 (index!23620 (_ BitVec 32))) (Intermediate!5348 (undefined!6160 Bool) (index!23621 (_ BitVec 32)) (x!52558 (_ BitVec 32))) (Undefined!5348) (MissingVacant!5348 (index!23622 (_ BitVec 32))) )
))
(declare-fun lt!254894 () SeekEntryResult!5348)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!560400 (= res!351708 (or (= lt!254894 (MissingZero!5348 i!1132)) (= lt!254894 (MissingVacant!5348 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35191 (_ BitVec 32)) SeekEntryResult!5348)

(assert (=> b!560400 (= lt!254894 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!560401 () Bool)

(declare-fun res!351709 () Bool)

(assert (=> b!560401 (=> (not res!351709) (not e!322897))))

(declare-fun arrayContainsKey!0 (array!35191 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560401 (= res!351709 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!560402 () Bool)

(declare-fun res!351706 () Bool)

(assert (=> b!560402 (=> (not res!351706) (not e!322897))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560402 (= res!351706 (validKeyInArray!0 k!1914))))

(declare-fun b!560403 () Bool)

(declare-fun e!322895 () Bool)

(declare-fun e!322893 () Bool)

(assert (=> b!560403 (= e!322895 e!322893)))

(declare-fun res!351710 () Bool)

(assert (=> b!560403 (=> res!351710 e!322893)))

(declare-fun lt!254886 () SeekEntryResult!5348)

(assert (=> b!560403 (= res!351710 (or (undefined!6160 lt!254886) (not (is-Intermediate!5348 lt!254886))))))

(declare-fun b!560404 () Bool)

(declare-fun e!322898 () Bool)

(assert (=> b!560404 (= e!322894 e!322898)))

(declare-fun res!351704 () Bool)

(assert (=> b!560404 (=> (not res!351704) (not e!322898))))

(declare-fun lt!254892 () array!35191)

(declare-fun lt!254887 () (_ BitVec 32))

(declare-fun lt!254888 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35191 (_ BitVec 32)) SeekEntryResult!5348)

(assert (=> b!560404 (= res!351704 (= lt!254886 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254887 lt!254888 lt!254892 mask!3119)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!254893 () (_ BitVec 32))

(assert (=> b!560404 (= lt!254886 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254893 (select (arr!16892 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560404 (= lt!254887 (toIndex!0 lt!254888 mask!3119))))

(assert (=> b!560404 (= lt!254888 (select (store (arr!16892 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!560404 (= lt!254893 (toIndex!0 (select (arr!16892 a!3118) j!142) mask!3119))))

(assert (=> b!560404 (= lt!254892 (array!35192 (store (arr!16892 a!3118) i!1132 k!1914) (size!17256 a!3118)))))

(declare-fun b!560406 () Bool)

(declare-fun e!322896 () Bool)

(assert (=> b!560406 (= e!322893 e!322896)))

(declare-fun res!351707 () Bool)

(assert (=> b!560406 (=> res!351707 e!322896)))

(declare-fun lt!254889 () (_ BitVec 64))

(assert (=> b!560406 (= res!351707 (or (= lt!254889 (select (arr!16892 a!3118) j!142)) (= lt!254889 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!560406 (= lt!254889 (select (arr!16892 a!3118) (index!23621 lt!254886)))))

(declare-fun b!560407 () Bool)

(declare-fun res!351713 () Bool)

(assert (=> b!560407 (=> (not res!351713) (not e!322894))))

(declare-datatypes ((List!11025 0))(
  ( (Nil!11022) (Cons!11021 (h!12024 (_ BitVec 64)) (t!17261 List!11025)) )
))
(declare-fun arrayNoDuplicates!0 (array!35191 (_ BitVec 32) List!11025) Bool)

(assert (=> b!560407 (= res!351713 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11022))))

(declare-fun b!560408 () Bool)

(assert (=> b!560408 (= e!322898 (not true))))

(assert (=> b!560408 e!322895))

(declare-fun res!351702 () Bool)

(assert (=> b!560408 (=> (not res!351702) (not e!322895))))

(declare-fun lt!254890 () SeekEntryResult!5348)

(assert (=> b!560408 (= res!351702 (= lt!254890 (Found!5348 j!142)))))

(assert (=> b!560408 (= lt!254890 (seekEntryOrOpen!0 (select (arr!16892 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!560408 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17470 0))(
  ( (Unit!17471) )
))
(declare-fun lt!254891 () Unit!17470)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35191 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17470)

(assert (=> b!560408 (= lt!254891 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun e!322900 () Bool)

(declare-fun b!560409 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35191 (_ BitVec 32)) SeekEntryResult!5348)

(assert (=> b!560409 (= e!322900 (= (seekEntryOrOpen!0 lt!254888 lt!254892 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52558 lt!254886) (index!23621 lt!254886) (index!23621 lt!254886) lt!254888 lt!254892 mask!3119)))))

(declare-fun b!560410 () Bool)

(assert (=> b!560410 (= e!322896 e!322900)))

(declare-fun res!351705 () Bool)

(assert (=> b!560410 (=> (not res!351705) (not e!322900))))

(assert (=> b!560410 (= res!351705 (= lt!254890 (seekKeyOrZeroReturnVacant!0 (x!52558 lt!254886) (index!23621 lt!254886) (index!23621 lt!254886) (select (arr!16892 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!560411 () Bool)

(declare-fun res!351703 () Bool)

(assert (=> b!560411 (=> (not res!351703) (not e!322897))))

(assert (=> b!560411 (= res!351703 (validKeyInArray!0 (select (arr!16892 a!3118) j!142)))))

(declare-fun b!560405 () Bool)

(declare-fun res!351712 () Bool)

(assert (=> b!560405 (=> (not res!351712) (not e!322897))))

(assert (=> b!560405 (= res!351712 (and (= (size!17256 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17256 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17256 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!351711 () Bool)

(assert (=> start!51372 (=> (not res!351711) (not e!322897))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51372 (= res!351711 (validMask!0 mask!3119))))

(assert (=> start!51372 e!322897))

(assert (=> start!51372 true))

(declare-fun array_inv!12666 (array!35191) Bool)

(assert (=> start!51372 (array_inv!12666 a!3118)))

(assert (= (and start!51372 res!351711) b!560405))

(assert (= (and b!560405 res!351712) b!560411))

(assert (= (and b!560411 res!351703) b!560402))

(assert (= (and b!560402 res!351706) b!560401))

(assert (= (and b!560401 res!351709) b!560400))

(assert (= (and b!560400 res!351708) b!560399))

(assert (= (and b!560399 res!351701) b!560407))

(assert (= (and b!560407 res!351713) b!560404))

(assert (= (and b!560404 res!351704) b!560408))

(assert (= (and b!560408 res!351702) b!560403))

(assert (= (and b!560403 (not res!351710)) b!560406))

(assert (= (and b!560406 (not res!351707)) b!560410))

(assert (= (and b!560410 res!351705) b!560409))

(declare-fun m!538223 () Bool)

(assert (=> b!560409 m!538223))

(declare-fun m!538225 () Bool)

(assert (=> b!560409 m!538225))

(declare-fun m!538227 () Bool)

(assert (=> b!560411 m!538227))

(assert (=> b!560411 m!538227))

(declare-fun m!538229 () Bool)

(assert (=> b!560411 m!538229))

(assert (=> b!560404 m!538227))

(declare-fun m!538231 () Bool)

(assert (=> b!560404 m!538231))

(declare-fun m!538233 () Bool)

(assert (=> b!560404 m!538233))

(assert (=> b!560404 m!538227))

(declare-fun m!538235 () Bool)

(assert (=> b!560404 m!538235))

(declare-fun m!538237 () Bool)

(assert (=> b!560404 m!538237))

(assert (=> b!560404 m!538227))

(declare-fun m!538239 () Bool)

(assert (=> b!560404 m!538239))

(declare-fun m!538241 () Bool)

(assert (=> b!560404 m!538241))

(assert (=> b!560406 m!538227))

(declare-fun m!538243 () Bool)

(assert (=> b!560406 m!538243))

(declare-fun m!538245 () Bool)

(assert (=> b!560399 m!538245))

(declare-fun m!538247 () Bool)

(assert (=> b!560402 m!538247))

(assert (=> b!560408 m!538227))

(assert (=> b!560408 m!538227))

(declare-fun m!538249 () Bool)

(assert (=> b!560408 m!538249))

(declare-fun m!538251 () Bool)

(assert (=> b!560408 m!538251))

(declare-fun m!538253 () Bool)

(assert (=> b!560408 m!538253))

(declare-fun m!538255 () Bool)

(assert (=> b!560407 m!538255))

(declare-fun m!538257 () Bool)

(assert (=> start!51372 m!538257))

(declare-fun m!538259 () Bool)

(assert (=> start!51372 m!538259))

(assert (=> b!560410 m!538227))

(assert (=> b!560410 m!538227))

(declare-fun m!538261 () Bool)

(assert (=> b!560410 m!538261))

(declare-fun m!538263 () Bool)

(assert (=> b!560401 m!538263))

(declare-fun m!538265 () Bool)

(assert (=> b!560400 m!538265))

(push 1)

(assert (not b!560399))

(assert (not b!560408))

(assert (not start!51372))

(assert (not b!560409))

(assert (not b!560401))

(assert (not b!560404))

(assert (not b!560402))

(assert (not b!560407))

(assert (not b!560400))

(assert (not b!560410))


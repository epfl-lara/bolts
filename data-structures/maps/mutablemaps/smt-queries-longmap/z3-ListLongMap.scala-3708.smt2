; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51004 () Bool)

(assert start!51004)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!557156 () Bool)

(declare-datatypes ((array!35069 0))(
  ( (array!35070 (arr!16837 (Array (_ BitVec 32) (_ BitVec 64))) (size!17201 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35069)

(declare-fun e!320989 () Bool)

(declare-datatypes ((SeekEntryResult!5293 0))(
  ( (MissingZero!5293 (index!23399 (_ BitVec 32))) (Found!5293 (index!23400 (_ BitVec 32))) (Intermediate!5293 (undefined!6105 Bool) (index!23401 (_ BitVec 32)) (x!52326 (_ BitVec 32))) (Undefined!5293) (MissingVacant!5293 (index!23402 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35069 (_ BitVec 32)) SeekEntryResult!5293)

(assert (=> b!557156 (= e!320989 (= (seekEntryOrOpen!0 (select (arr!16837 a!3118) j!142) a!3118 mask!3119) (Found!5293 j!142)))))

(declare-fun b!557157 () Bool)

(declare-fun res!349361 () Bool)

(declare-fun e!320990 () Bool)

(assert (=> b!557157 (=> (not res!349361) (not e!320990))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!557157 (= res!349361 (validKeyInArray!0 k0!1914))))

(declare-fun res!349356 () Bool)

(assert (=> start!51004 (=> (not res!349356) (not e!320990))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51004 (= res!349356 (validMask!0 mask!3119))))

(assert (=> start!51004 e!320990))

(assert (=> start!51004 true))

(declare-fun array_inv!12611 (array!35069) Bool)

(assert (=> start!51004 (array_inv!12611 a!3118)))

(declare-fun b!557158 () Bool)

(declare-fun res!349360 () Bool)

(assert (=> b!557158 (=> (not res!349360) (not e!320990))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!557158 (= res!349360 (and (= (size!17201 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17201 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17201 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!557159 () Bool)

(declare-fun res!349358 () Bool)

(assert (=> b!557159 (=> (not res!349358) (not e!320990))))

(declare-fun arrayContainsKey!0 (array!35069 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!557159 (= res!349358 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!557160 () Bool)

(declare-fun res!349352 () Bool)

(declare-fun e!320991 () Bool)

(assert (=> b!557160 (=> (not res!349352) (not e!320991))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35069 (_ BitVec 32)) Bool)

(assert (=> b!557160 (= res!349352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!557161 () Bool)

(declare-fun res!349357 () Bool)

(assert (=> b!557161 (=> (not res!349357) (not e!320991))))

(declare-datatypes ((List!10970 0))(
  ( (Nil!10967) (Cons!10966 (h!11957 (_ BitVec 64)) (t!17206 List!10970)) )
))
(declare-fun arrayNoDuplicates!0 (array!35069 (_ BitVec 32) List!10970) Bool)

(assert (=> b!557161 (= res!349357 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10967))))

(declare-fun b!557162 () Bool)

(assert (=> b!557162 (= e!320990 e!320991)))

(declare-fun res!349359 () Bool)

(assert (=> b!557162 (=> (not res!349359) (not e!320991))))

(declare-fun lt!253229 () SeekEntryResult!5293)

(assert (=> b!557162 (= res!349359 (or (= lt!253229 (MissingZero!5293 i!1132)) (= lt!253229 (MissingVacant!5293 i!1132))))))

(assert (=> b!557162 (= lt!253229 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!557163 () Bool)

(assert (=> b!557163 (= e!320991 (not true))))

(assert (=> b!557163 e!320989))

(declare-fun res!349353 () Bool)

(assert (=> b!557163 (=> (not res!349353) (not e!320989))))

(assert (=> b!557163 (= res!349353 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17360 0))(
  ( (Unit!17361) )
))
(declare-fun lt!253228 () Unit!17360)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35069 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17360)

(assert (=> b!557163 (= lt!253228 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!557164 () Bool)

(declare-fun res!349354 () Bool)

(assert (=> b!557164 (=> (not res!349354) (not e!320990))))

(assert (=> b!557164 (= res!349354 (validKeyInArray!0 (select (arr!16837 a!3118) j!142)))))

(declare-fun b!557165 () Bool)

(declare-fun res!349355 () Bool)

(assert (=> b!557165 (=> (not res!349355) (not e!320991))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35069 (_ BitVec 32)) SeekEntryResult!5293)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557165 (= res!349355 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16837 a!3118) j!142) mask!3119) (select (arr!16837 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16837 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16837 a!3118) i!1132 k0!1914) j!142) (array!35070 (store (arr!16837 a!3118) i!1132 k0!1914) (size!17201 a!3118)) mask!3119)))))

(assert (= (and start!51004 res!349356) b!557158))

(assert (= (and b!557158 res!349360) b!557164))

(assert (= (and b!557164 res!349354) b!557157))

(assert (= (and b!557157 res!349361) b!557159))

(assert (= (and b!557159 res!349358) b!557162))

(assert (= (and b!557162 res!349359) b!557160))

(assert (= (and b!557160 res!349352) b!557161))

(assert (= (and b!557161 res!349357) b!557165))

(assert (= (and b!557165 res!349355) b!557163))

(assert (= (and b!557163 res!349353) b!557156))

(declare-fun m!535093 () Bool)

(assert (=> b!557163 m!535093))

(declare-fun m!535095 () Bool)

(assert (=> b!557163 m!535095))

(declare-fun m!535097 () Bool)

(assert (=> b!557165 m!535097))

(declare-fun m!535099 () Bool)

(assert (=> b!557165 m!535099))

(assert (=> b!557165 m!535097))

(declare-fun m!535101 () Bool)

(assert (=> b!557165 m!535101))

(declare-fun m!535103 () Bool)

(assert (=> b!557165 m!535103))

(assert (=> b!557165 m!535101))

(declare-fun m!535105 () Bool)

(assert (=> b!557165 m!535105))

(assert (=> b!557165 m!535099))

(assert (=> b!557165 m!535097))

(declare-fun m!535107 () Bool)

(assert (=> b!557165 m!535107))

(declare-fun m!535109 () Bool)

(assert (=> b!557165 m!535109))

(assert (=> b!557165 m!535101))

(assert (=> b!557165 m!535103))

(assert (=> b!557156 m!535097))

(assert (=> b!557156 m!535097))

(declare-fun m!535111 () Bool)

(assert (=> b!557156 m!535111))

(declare-fun m!535113 () Bool)

(assert (=> b!557160 m!535113))

(declare-fun m!535115 () Bool)

(assert (=> start!51004 m!535115))

(declare-fun m!535117 () Bool)

(assert (=> start!51004 m!535117))

(assert (=> b!557164 m!535097))

(assert (=> b!557164 m!535097))

(declare-fun m!535119 () Bool)

(assert (=> b!557164 m!535119))

(declare-fun m!535121 () Bool)

(assert (=> b!557159 m!535121))

(declare-fun m!535123 () Bool)

(assert (=> b!557161 m!535123))

(declare-fun m!535125 () Bool)

(assert (=> b!557162 m!535125))

(declare-fun m!535127 () Bool)

(assert (=> b!557157 m!535127))

(check-sat (not b!557157) (not b!557164) (not b!557159) (not b!557160) (not b!557163) (not b!557162) (not b!557165) (not start!51004) (not b!557156) (not b!557161))
(check-sat)

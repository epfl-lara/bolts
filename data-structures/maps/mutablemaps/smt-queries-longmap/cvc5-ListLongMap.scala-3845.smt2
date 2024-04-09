; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52898 () Bool)

(assert start!52898)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun e!331538 () Bool)

(declare-fun b!576257 () Bool)

(declare-datatypes ((array!35940 0))(
  ( (array!35941 (arr!17247 (Array (_ BitVec 32) (_ BitVec 64))) (size!17611 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35940)

(declare-datatypes ((SeekEntryResult!5703 0))(
  ( (MissingZero!5703 (index!25039 (_ BitVec 32))) (Found!5703 (index!25040 (_ BitVec 32))) (Intermediate!5703 (undefined!6515 Bool) (index!25041 (_ BitVec 32)) (x!53961 (_ BitVec 32))) (Undefined!5703) (MissingVacant!5703 (index!25042 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35940 (_ BitVec 32)) SeekEntryResult!5703)

(assert (=> b!576257 (= e!331538 (= (seekEntryOrOpen!0 (select (arr!17247 a!3118) j!142) a!3118 mask!3119) (Found!5703 j!142)))))

(declare-fun b!576258 () Bool)

(declare-fun res!364641 () Bool)

(declare-fun e!331537 () Bool)

(assert (=> b!576258 (=> (not res!364641) (not e!331537))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!576258 (= res!364641 (and (= (size!17611 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17611 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17611 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!576259 () Bool)

(declare-fun res!364644 () Bool)

(declare-fun e!331539 () Bool)

(assert (=> b!576259 (=> (not res!364644) (not e!331539))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35940 (_ BitVec 32)) Bool)

(assert (=> b!576259 (= res!364644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!576260 () Bool)

(assert (=> b!576260 (= e!331539 (not true))))

(assert (=> b!576260 e!331538))

(declare-fun res!364642 () Bool)

(assert (=> b!576260 (=> (not res!364642) (not e!331538))))

(assert (=> b!576260 (= res!364642 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!18108 0))(
  ( (Unit!18109) )
))
(declare-fun lt!263627 () Unit!18108)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35940 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18108)

(assert (=> b!576260 (= lt!263627 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!576261 () Bool)

(declare-fun res!364649 () Bool)

(assert (=> b!576261 (=> (not res!364649) (not e!331539))))

(declare-datatypes ((List!11380 0))(
  ( (Nil!11377) (Cons!11376 (h!12418 (_ BitVec 64)) (t!17616 List!11380)) )
))
(declare-fun arrayNoDuplicates!0 (array!35940 (_ BitVec 32) List!11380) Bool)

(assert (=> b!576261 (= res!364649 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11377))))

(declare-fun b!576262 () Bool)

(declare-fun res!364648 () Bool)

(assert (=> b!576262 (=> (not res!364648) (not e!331537))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576262 (= res!364648 (validKeyInArray!0 k!1914))))

(declare-fun b!576263 () Bool)

(declare-fun res!364646 () Bool)

(assert (=> b!576263 (=> (not res!364646) (not e!331537))))

(assert (=> b!576263 (= res!364646 (validKeyInArray!0 (select (arr!17247 a!3118) j!142)))))

(declare-fun b!576264 () Bool)

(assert (=> b!576264 (= e!331537 e!331539)))

(declare-fun res!364643 () Bool)

(assert (=> b!576264 (=> (not res!364643) (not e!331539))))

(declare-fun lt!263626 () SeekEntryResult!5703)

(assert (=> b!576264 (= res!364643 (or (= lt!263626 (MissingZero!5703 i!1132)) (= lt!263626 (MissingVacant!5703 i!1132))))))

(assert (=> b!576264 (= lt!263626 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!364647 () Bool)

(assert (=> start!52898 (=> (not res!364647) (not e!331537))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52898 (= res!364647 (validMask!0 mask!3119))))

(assert (=> start!52898 e!331537))

(assert (=> start!52898 true))

(declare-fun array_inv!13021 (array!35940) Bool)

(assert (=> start!52898 (array_inv!13021 a!3118)))

(declare-fun b!576265 () Bool)

(declare-fun res!364645 () Bool)

(assert (=> b!576265 (=> (not res!364645) (not e!331537))))

(declare-fun arrayContainsKey!0 (array!35940 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576265 (= res!364645 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!576266 () Bool)

(declare-fun res!364640 () Bool)

(assert (=> b!576266 (=> (not res!364640) (not e!331539))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35940 (_ BitVec 32)) SeekEntryResult!5703)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!576266 (= res!364640 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17247 a!3118) j!142) mask!3119) (select (arr!17247 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17247 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17247 a!3118) i!1132 k!1914) j!142) (array!35941 (store (arr!17247 a!3118) i!1132 k!1914) (size!17611 a!3118)) mask!3119)))))

(assert (= (and start!52898 res!364647) b!576258))

(assert (= (and b!576258 res!364641) b!576263))

(assert (= (and b!576263 res!364646) b!576262))

(assert (= (and b!576262 res!364648) b!576265))

(assert (= (and b!576265 res!364645) b!576264))

(assert (= (and b!576264 res!364643) b!576259))

(assert (= (and b!576259 res!364644) b!576261))

(assert (= (and b!576261 res!364649) b!576266))

(assert (= (and b!576266 res!364640) b!576260))

(assert (= (and b!576260 res!364642) b!576257))

(declare-fun m!555259 () Bool)

(assert (=> start!52898 m!555259))

(declare-fun m!555261 () Bool)

(assert (=> start!52898 m!555261))

(declare-fun m!555263 () Bool)

(assert (=> b!576265 m!555263))

(declare-fun m!555265 () Bool)

(assert (=> b!576261 m!555265))

(declare-fun m!555267 () Bool)

(assert (=> b!576263 m!555267))

(assert (=> b!576263 m!555267))

(declare-fun m!555269 () Bool)

(assert (=> b!576263 m!555269))

(declare-fun m!555271 () Bool)

(assert (=> b!576259 m!555271))

(assert (=> b!576257 m!555267))

(assert (=> b!576257 m!555267))

(declare-fun m!555273 () Bool)

(assert (=> b!576257 m!555273))

(declare-fun m!555275 () Bool)

(assert (=> b!576264 m!555275))

(assert (=> b!576266 m!555267))

(declare-fun m!555277 () Bool)

(assert (=> b!576266 m!555277))

(assert (=> b!576266 m!555267))

(declare-fun m!555279 () Bool)

(assert (=> b!576266 m!555279))

(declare-fun m!555281 () Bool)

(assert (=> b!576266 m!555281))

(assert (=> b!576266 m!555279))

(declare-fun m!555283 () Bool)

(assert (=> b!576266 m!555283))

(assert (=> b!576266 m!555277))

(assert (=> b!576266 m!555267))

(declare-fun m!555285 () Bool)

(assert (=> b!576266 m!555285))

(declare-fun m!555287 () Bool)

(assert (=> b!576266 m!555287))

(assert (=> b!576266 m!555279))

(assert (=> b!576266 m!555281))

(declare-fun m!555289 () Bool)

(assert (=> b!576262 m!555289))

(declare-fun m!555291 () Bool)

(assert (=> b!576260 m!555291))

(declare-fun m!555293 () Bool)

(assert (=> b!576260 m!555293))

(push 1)


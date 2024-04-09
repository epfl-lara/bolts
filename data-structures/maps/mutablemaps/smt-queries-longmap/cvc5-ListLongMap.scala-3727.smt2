; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51374 () Bool)

(assert start!51374)

(declare-fun b!560438 () Bool)

(declare-fun res!351752 () Bool)

(declare-fun e!322921 () Bool)

(assert (=> b!560438 (=> (not res!351752) (not e!322921))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35193 0))(
  ( (array!35194 (arr!16893 (Array (_ BitVec 32) (_ BitVec 64))) (size!17257 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35193)

(assert (=> b!560438 (= res!351752 (and (= (size!17257 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17257 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17257 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560439 () Bool)

(declare-fun res!351751 () Bool)

(assert (=> b!560439 (=> (not res!351751) (not e!322921))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560439 (= res!351751 (validKeyInArray!0 k!1914))))

(declare-fun b!560441 () Bool)

(declare-fun e!322924 () Bool)

(assert (=> b!560441 (= e!322921 e!322924)))

(declare-fun res!351748 () Bool)

(assert (=> b!560441 (=> (not res!351748) (not e!322924))))

(declare-datatypes ((SeekEntryResult!5349 0))(
  ( (MissingZero!5349 (index!23623 (_ BitVec 32))) (Found!5349 (index!23624 (_ BitVec 32))) (Intermediate!5349 (undefined!6161 Bool) (index!23625 (_ BitVec 32)) (x!52567 (_ BitVec 32))) (Undefined!5349) (MissingVacant!5349 (index!23626 (_ BitVec 32))) )
))
(declare-fun lt!254917 () SeekEntryResult!5349)

(assert (=> b!560441 (= res!351748 (or (= lt!254917 (MissingZero!5349 i!1132)) (= lt!254917 (MissingVacant!5349 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35193 (_ BitVec 32)) SeekEntryResult!5349)

(assert (=> b!560441 (= lt!254917 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!560442 () Bool)

(declare-fun e!322920 () Bool)

(assert (=> b!560442 (= e!322920 (not true))))

(declare-fun e!322918 () Bool)

(assert (=> b!560442 e!322918))

(declare-fun res!351750 () Bool)

(assert (=> b!560442 (=> (not res!351750) (not e!322918))))

(declare-fun lt!254918 () SeekEntryResult!5349)

(assert (=> b!560442 (= res!351750 (= lt!254918 (Found!5349 j!142)))))

(assert (=> b!560442 (= lt!254918 (seekEntryOrOpen!0 (select (arr!16893 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35193 (_ BitVec 32)) Bool)

(assert (=> b!560442 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17472 0))(
  ( (Unit!17473) )
))
(declare-fun lt!254921 () Unit!17472)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35193 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17472)

(assert (=> b!560442 (= lt!254921 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!560443 () Bool)

(declare-fun res!351744 () Bool)

(assert (=> b!560443 (=> (not res!351744) (not e!322924))))

(declare-datatypes ((List!11026 0))(
  ( (Nil!11023) (Cons!11022 (h!12025 (_ BitVec 64)) (t!17262 List!11026)) )
))
(declare-fun arrayNoDuplicates!0 (array!35193 (_ BitVec 32) List!11026) Bool)

(assert (=> b!560443 (= res!351744 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11023))))

(declare-fun b!560444 () Bool)

(declare-fun res!351742 () Bool)

(assert (=> b!560444 (=> (not res!351742) (not e!322921))))

(assert (=> b!560444 (= res!351742 (validKeyInArray!0 (select (arr!16893 a!3118) j!142)))))

(declare-fun b!560445 () Bool)

(declare-fun res!351746 () Bool)

(assert (=> b!560445 (=> (not res!351746) (not e!322921))))

(declare-fun arrayContainsKey!0 (array!35193 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560445 (= res!351746 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!560446 () Bool)

(assert (=> b!560446 (= e!322924 e!322920)))

(declare-fun res!351740 () Bool)

(assert (=> b!560446 (=> (not res!351740) (not e!322920))))

(declare-fun lt!254913 () SeekEntryResult!5349)

(declare-fun lt!254920 () (_ BitVec 32))

(declare-fun lt!254915 () array!35193)

(declare-fun lt!254914 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35193 (_ BitVec 32)) SeekEntryResult!5349)

(assert (=> b!560446 (= res!351740 (= lt!254913 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254920 lt!254914 lt!254915 mask!3119)))))

(declare-fun lt!254916 () (_ BitVec 32))

(assert (=> b!560446 (= lt!254913 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254916 (select (arr!16893 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560446 (= lt!254920 (toIndex!0 lt!254914 mask!3119))))

(assert (=> b!560446 (= lt!254914 (select (store (arr!16893 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!560446 (= lt!254916 (toIndex!0 (select (arr!16893 a!3118) j!142) mask!3119))))

(assert (=> b!560446 (= lt!254915 (array!35194 (store (arr!16893 a!3118) i!1132 k!1914) (size!17257 a!3118)))))

(declare-fun b!560447 () Bool)

(declare-fun e!322922 () Bool)

(declare-fun e!322919 () Bool)

(assert (=> b!560447 (= e!322922 e!322919)))

(declare-fun res!351747 () Bool)

(assert (=> b!560447 (=> res!351747 e!322919)))

(declare-fun lt!254919 () (_ BitVec 64))

(assert (=> b!560447 (= res!351747 (or (= lt!254919 (select (arr!16893 a!3118) j!142)) (= lt!254919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!560447 (= lt!254919 (select (arr!16893 a!3118) (index!23625 lt!254913)))))

(declare-fun b!560448 () Bool)

(declare-fun res!351743 () Bool)

(assert (=> b!560448 (=> (not res!351743) (not e!322924))))

(assert (=> b!560448 (= res!351743 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560449 () Bool)

(declare-fun e!322923 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35193 (_ BitVec 32)) SeekEntryResult!5349)

(assert (=> b!560449 (= e!322923 (= (seekEntryOrOpen!0 lt!254914 lt!254915 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52567 lt!254913) (index!23625 lt!254913) (index!23625 lt!254913) lt!254914 lt!254915 mask!3119)))))

(declare-fun b!560450 () Bool)

(assert (=> b!560450 (= e!322919 e!322923)))

(declare-fun res!351741 () Bool)

(assert (=> b!560450 (=> (not res!351741) (not e!322923))))

(assert (=> b!560450 (= res!351741 (= lt!254918 (seekKeyOrZeroReturnVacant!0 (x!52567 lt!254913) (index!23625 lt!254913) (index!23625 lt!254913) (select (arr!16893 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!560440 () Bool)

(assert (=> b!560440 (= e!322918 e!322922)))

(declare-fun res!351749 () Bool)

(assert (=> b!560440 (=> res!351749 e!322922)))

(assert (=> b!560440 (= res!351749 (or (undefined!6161 lt!254913) (not (is-Intermediate!5349 lt!254913))))))

(declare-fun res!351745 () Bool)

(assert (=> start!51374 (=> (not res!351745) (not e!322921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51374 (= res!351745 (validMask!0 mask!3119))))

(assert (=> start!51374 e!322921))

(assert (=> start!51374 true))

(declare-fun array_inv!12667 (array!35193) Bool)

(assert (=> start!51374 (array_inv!12667 a!3118)))

(assert (= (and start!51374 res!351745) b!560438))

(assert (= (and b!560438 res!351752) b!560444))

(assert (= (and b!560444 res!351742) b!560439))

(assert (= (and b!560439 res!351751) b!560445))

(assert (= (and b!560445 res!351746) b!560441))

(assert (= (and b!560441 res!351748) b!560448))

(assert (= (and b!560448 res!351743) b!560443))

(assert (= (and b!560443 res!351744) b!560446))

(assert (= (and b!560446 res!351740) b!560442))

(assert (= (and b!560442 res!351750) b!560440))

(assert (= (and b!560440 (not res!351749)) b!560447))

(assert (= (and b!560447 (not res!351747)) b!560450))

(assert (= (and b!560450 res!351741) b!560449))

(declare-fun m!538267 () Bool)

(assert (=> b!560449 m!538267))

(declare-fun m!538269 () Bool)

(assert (=> b!560449 m!538269))

(declare-fun m!538271 () Bool)

(assert (=> b!560441 m!538271))

(declare-fun m!538273 () Bool)

(assert (=> b!560445 m!538273))

(declare-fun m!538275 () Bool)

(assert (=> b!560450 m!538275))

(assert (=> b!560450 m!538275))

(declare-fun m!538277 () Bool)

(assert (=> b!560450 m!538277))

(declare-fun m!538279 () Bool)

(assert (=> b!560439 m!538279))

(assert (=> b!560447 m!538275))

(declare-fun m!538281 () Bool)

(assert (=> b!560447 m!538281))

(declare-fun m!538283 () Bool)

(assert (=> b!560448 m!538283))

(assert (=> b!560444 m!538275))

(assert (=> b!560444 m!538275))

(declare-fun m!538285 () Bool)

(assert (=> b!560444 m!538285))

(assert (=> b!560442 m!538275))

(assert (=> b!560442 m!538275))

(declare-fun m!538287 () Bool)

(assert (=> b!560442 m!538287))

(declare-fun m!538289 () Bool)

(assert (=> b!560442 m!538289))

(declare-fun m!538291 () Bool)

(assert (=> b!560442 m!538291))

(declare-fun m!538293 () Bool)

(assert (=> b!560443 m!538293))

(declare-fun m!538295 () Bool)

(assert (=> start!51374 m!538295))

(declare-fun m!538297 () Bool)

(assert (=> start!51374 m!538297))

(assert (=> b!560446 m!538275))

(declare-fun m!538299 () Bool)

(assert (=> b!560446 m!538299))

(declare-fun m!538301 () Bool)

(assert (=> b!560446 m!538301))

(assert (=> b!560446 m!538275))

(declare-fun m!538303 () Bool)

(assert (=> b!560446 m!538303))

(declare-fun m!538305 () Bool)

(assert (=> b!560446 m!538305))

(declare-fun m!538307 () Bool)

(assert (=> b!560446 m!538307))

(assert (=> b!560446 m!538275))

(declare-fun m!538309 () Bool)

(assert (=> b!560446 m!538309))

(push 1)


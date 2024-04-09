; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51382 () Bool)

(assert start!51382)

(declare-fun b!560594 () Bool)

(declare-fun e!323017 () Bool)

(declare-fun e!323016 () Bool)

(assert (=> b!560594 (= e!323017 e!323016)))

(declare-fun res!351901 () Bool)

(assert (=> b!560594 (=> (not res!351901) (not e!323016))))

(declare-datatypes ((SeekEntryResult!5353 0))(
  ( (MissingZero!5353 (index!23639 (_ BitVec 32))) (Found!5353 (index!23640 (_ BitVec 32))) (Intermediate!5353 (undefined!6165 Bool) (index!23641 (_ BitVec 32)) (x!52579 (_ BitVec 32))) (Undefined!5353) (MissingVacant!5353 (index!23642 (_ BitVec 32))) )
))
(declare-fun lt!255022 () SeekEntryResult!5353)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!560594 (= res!351901 (or (= lt!255022 (MissingZero!5353 i!1132)) (= lt!255022 (MissingVacant!5353 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!35201 0))(
  ( (array!35202 (arr!16897 (Array (_ BitVec 32) (_ BitVec 64))) (size!17261 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35201)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35201 (_ BitVec 32)) SeekEntryResult!5353)

(assert (=> b!560594 (= lt!255022 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!560595 () Bool)

(declare-fun res!351897 () Bool)

(assert (=> b!560595 (=> (not res!351897) (not e!323017))))

(declare-fun arrayContainsKey!0 (array!35201 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560595 (= res!351897 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!560596 () Bool)

(declare-fun e!323018 () Bool)

(declare-fun e!323019 () Bool)

(assert (=> b!560596 (= e!323018 e!323019)))

(declare-fun res!351905 () Bool)

(assert (=> b!560596 (=> res!351905 e!323019)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!255029 () (_ BitVec 64))

(assert (=> b!560596 (= res!351905 (or (= lt!255029 (select (arr!16897 a!3118) j!142)) (= lt!255029 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!255028 () SeekEntryResult!5353)

(assert (=> b!560596 (= lt!255029 (select (arr!16897 a!3118) (index!23641 lt!255028)))))

(declare-fun b!560597 () Bool)

(declare-fun e!323015 () Bool)

(assert (=> b!560597 (= e!323019 e!323015)))

(declare-fun res!351908 () Bool)

(assert (=> b!560597 (=> (not res!351908) (not e!323015))))

(declare-fun lt!255021 () SeekEntryResult!5353)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35201 (_ BitVec 32)) SeekEntryResult!5353)

(assert (=> b!560597 (= res!351908 (= lt!255021 (seekKeyOrZeroReturnVacant!0 (x!52579 lt!255028) (index!23641 lt!255028) (index!23641 lt!255028) (select (arr!16897 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun res!351904 () Bool)

(assert (=> start!51382 (=> (not res!351904) (not e!323017))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51382 (= res!351904 (validMask!0 mask!3119))))

(assert (=> start!51382 e!323017))

(assert (=> start!51382 true))

(declare-fun array_inv!12671 (array!35201) Bool)

(assert (=> start!51382 (array_inv!12671 a!3118)))

(declare-fun b!560598 () Bool)

(declare-fun res!351899 () Bool)

(assert (=> b!560598 (=> (not res!351899) (not e!323016))))

(declare-datatypes ((List!11030 0))(
  ( (Nil!11027) (Cons!11026 (h!12029 (_ BitVec 64)) (t!17266 List!11030)) )
))
(declare-fun arrayNoDuplicates!0 (array!35201 (_ BitVec 32) List!11030) Bool)

(assert (=> b!560598 (= res!351899 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11027))))

(declare-fun b!560599 () Bool)

(declare-fun res!351900 () Bool)

(assert (=> b!560599 (=> (not res!351900) (not e!323017))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560599 (= res!351900 (validKeyInArray!0 (select (arr!16897 a!3118) j!142)))))

(declare-fun b!560600 () Bool)

(declare-fun lt!255026 () array!35201)

(declare-fun lt!255025 () (_ BitVec 64))

(assert (=> b!560600 (= e!323015 (= (seekEntryOrOpen!0 lt!255025 lt!255026 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52579 lt!255028) (index!23641 lt!255028) (index!23641 lt!255028) lt!255025 lt!255026 mask!3119)))))

(declare-fun b!560601 () Bool)

(declare-fun res!351907 () Bool)

(assert (=> b!560601 (=> (not res!351907) (not e!323017))))

(assert (=> b!560601 (= res!351907 (validKeyInArray!0 k0!1914))))

(declare-fun b!560602 () Bool)

(declare-fun e!323014 () Bool)

(assert (=> b!560602 (= e!323014 (not true))))

(declare-fun e!323020 () Bool)

(assert (=> b!560602 e!323020))

(declare-fun res!351896 () Bool)

(assert (=> b!560602 (=> (not res!351896) (not e!323020))))

(assert (=> b!560602 (= res!351896 (= lt!255021 (Found!5353 j!142)))))

(assert (=> b!560602 (= lt!255021 (seekEntryOrOpen!0 (select (arr!16897 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35201 (_ BitVec 32)) Bool)

(assert (=> b!560602 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17480 0))(
  ( (Unit!17481) )
))
(declare-fun lt!255024 () Unit!17480)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35201 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17480)

(assert (=> b!560602 (= lt!255024 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!560603 () Bool)

(assert (=> b!560603 (= e!323016 e!323014)))

(declare-fun res!351903 () Bool)

(assert (=> b!560603 (=> (not res!351903) (not e!323014))))

(declare-fun lt!255027 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35201 (_ BitVec 32)) SeekEntryResult!5353)

(assert (=> b!560603 (= res!351903 (= lt!255028 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255027 lt!255025 lt!255026 mask!3119)))))

(declare-fun lt!255023 () (_ BitVec 32))

(assert (=> b!560603 (= lt!255028 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255023 (select (arr!16897 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560603 (= lt!255027 (toIndex!0 lt!255025 mask!3119))))

(assert (=> b!560603 (= lt!255025 (select (store (arr!16897 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!560603 (= lt!255023 (toIndex!0 (select (arr!16897 a!3118) j!142) mask!3119))))

(assert (=> b!560603 (= lt!255026 (array!35202 (store (arr!16897 a!3118) i!1132 k0!1914) (size!17261 a!3118)))))

(declare-fun b!560604 () Bool)

(declare-fun res!351902 () Bool)

(assert (=> b!560604 (=> (not res!351902) (not e!323017))))

(assert (=> b!560604 (= res!351902 (and (= (size!17261 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17261 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17261 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560605 () Bool)

(declare-fun res!351898 () Bool)

(assert (=> b!560605 (=> (not res!351898) (not e!323016))))

(assert (=> b!560605 (= res!351898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560606 () Bool)

(assert (=> b!560606 (= e!323020 e!323018)))

(declare-fun res!351906 () Bool)

(assert (=> b!560606 (=> res!351906 e!323018)))

(get-info :version)

(assert (=> b!560606 (= res!351906 (or (undefined!6165 lt!255028) (not ((_ is Intermediate!5353) lt!255028))))))

(assert (= (and start!51382 res!351904) b!560604))

(assert (= (and b!560604 res!351902) b!560599))

(assert (= (and b!560599 res!351900) b!560601))

(assert (= (and b!560601 res!351907) b!560595))

(assert (= (and b!560595 res!351897) b!560594))

(assert (= (and b!560594 res!351901) b!560605))

(assert (= (and b!560605 res!351898) b!560598))

(assert (= (and b!560598 res!351899) b!560603))

(assert (= (and b!560603 res!351903) b!560602))

(assert (= (and b!560602 res!351896) b!560606))

(assert (= (and b!560606 (not res!351906)) b!560596))

(assert (= (and b!560596 (not res!351905)) b!560597))

(assert (= (and b!560597 res!351908) b!560600))

(declare-fun m!538443 () Bool)

(assert (=> b!560597 m!538443))

(assert (=> b!560597 m!538443))

(declare-fun m!538445 () Bool)

(assert (=> b!560597 m!538445))

(assert (=> b!560603 m!538443))

(declare-fun m!538447 () Bool)

(assert (=> b!560603 m!538447))

(assert (=> b!560603 m!538443))

(declare-fun m!538449 () Bool)

(assert (=> b!560603 m!538449))

(declare-fun m!538451 () Bool)

(assert (=> b!560603 m!538451))

(declare-fun m!538453 () Bool)

(assert (=> b!560603 m!538453))

(declare-fun m!538455 () Bool)

(assert (=> b!560603 m!538455))

(assert (=> b!560603 m!538443))

(declare-fun m!538457 () Bool)

(assert (=> b!560603 m!538457))

(assert (=> b!560596 m!538443))

(declare-fun m!538459 () Bool)

(assert (=> b!560596 m!538459))

(declare-fun m!538461 () Bool)

(assert (=> b!560598 m!538461))

(declare-fun m!538463 () Bool)

(assert (=> b!560595 m!538463))

(assert (=> b!560599 m!538443))

(assert (=> b!560599 m!538443))

(declare-fun m!538465 () Bool)

(assert (=> b!560599 m!538465))

(assert (=> b!560602 m!538443))

(assert (=> b!560602 m!538443))

(declare-fun m!538467 () Bool)

(assert (=> b!560602 m!538467))

(declare-fun m!538469 () Bool)

(assert (=> b!560602 m!538469))

(declare-fun m!538471 () Bool)

(assert (=> b!560602 m!538471))

(declare-fun m!538473 () Bool)

(assert (=> start!51382 m!538473))

(declare-fun m!538475 () Bool)

(assert (=> start!51382 m!538475))

(declare-fun m!538477 () Bool)

(assert (=> b!560594 m!538477))

(declare-fun m!538479 () Bool)

(assert (=> b!560600 m!538479))

(declare-fun m!538481 () Bool)

(assert (=> b!560600 m!538481))

(declare-fun m!538483 () Bool)

(assert (=> b!560605 m!538483))

(declare-fun m!538485 () Bool)

(assert (=> b!560601 m!538485))

(check-sat (not start!51382) (not b!560599) (not b!560603) (not b!560597) (not b!560594) (not b!560598) (not b!560605) (not b!560601) (not b!560595) (not b!560602) (not b!560600))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51748 () Bool)

(assert start!51748)

(declare-fun b!565748 () Bool)

(declare-fun res!356875 () Bool)

(declare-fun e!325654 () Bool)

(assert (=> b!565748 (=> (not res!356875) (not e!325654))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565748 (= res!356875 (validKeyInArray!0 k0!1914))))

(declare-fun b!565749 () Bool)

(declare-fun e!325655 () Bool)

(assert (=> b!565749 (= e!325655 (not true))))

(declare-fun e!325657 () Bool)

(assert (=> b!565749 e!325657))

(declare-fun res!356868 () Bool)

(assert (=> b!565749 (=> (not res!356868) (not e!325657))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35510 0))(
  ( (array!35511 (arr!17050 (Array (_ BitVec 32) (_ BitVec 64))) (size!17414 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35510)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35510 (_ BitVec 32)) Bool)

(assert (=> b!565749 (= res!356868 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17714 0))(
  ( (Unit!17715) )
))
(declare-fun lt!257951 () Unit!17714)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35510 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17714)

(assert (=> b!565749 (= lt!257951 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!565751 () Bool)

(assert (=> b!565751 (= e!325654 e!325655)))

(declare-fun res!356870 () Bool)

(assert (=> b!565751 (=> (not res!356870) (not e!325655))))

(declare-datatypes ((SeekEntryResult!5506 0))(
  ( (MissingZero!5506 (index!24251 (_ BitVec 32))) (Found!5506 (index!24252 (_ BitVec 32))) (Intermediate!5506 (undefined!6318 Bool) (index!24253 (_ BitVec 32)) (x!53146 (_ BitVec 32))) (Undefined!5506) (MissingVacant!5506 (index!24254 (_ BitVec 32))) )
))
(declare-fun lt!257950 () SeekEntryResult!5506)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!565751 (= res!356870 (or (= lt!257950 (MissingZero!5506 i!1132)) (= lt!257950 (MissingVacant!5506 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35510 (_ BitVec 32)) SeekEntryResult!5506)

(assert (=> b!565751 (= lt!257950 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!565752 () Bool)

(declare-fun res!356869 () Bool)

(assert (=> b!565752 (=> (not res!356869) (not e!325654))))

(assert (=> b!565752 (= res!356869 (and (= (size!17414 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17414 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17414 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!565753 () Bool)

(declare-fun res!356867 () Bool)

(assert (=> b!565753 (=> (not res!356867) (not e!325655))))

(declare-datatypes ((List!11183 0))(
  ( (Nil!11180) (Cons!11179 (h!12185 (_ BitVec 64)) (t!17419 List!11183)) )
))
(declare-fun arrayNoDuplicates!0 (array!35510 (_ BitVec 32) List!11183) Bool)

(assert (=> b!565753 (= res!356867 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11180))))

(declare-fun b!565754 () Bool)

(declare-fun res!356873 () Bool)

(assert (=> b!565754 (=> (not res!356873) (not e!325654))))

(assert (=> b!565754 (= res!356873 (validKeyInArray!0 (select (arr!17050 a!3118) j!142)))))

(declare-fun b!565755 () Bool)

(assert (=> b!565755 (= e!325657 (= (seekEntryOrOpen!0 (select (arr!17050 a!3118) j!142) a!3118 mask!3119) (Found!5506 j!142)))))

(declare-fun b!565756 () Bool)

(declare-fun res!356872 () Bool)

(assert (=> b!565756 (=> (not res!356872) (not e!325655))))

(assert (=> b!565756 (= res!356872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565757 () Bool)

(declare-fun res!356874 () Bool)

(assert (=> b!565757 (=> (not res!356874) (not e!325654))))

(declare-fun arrayContainsKey!0 (array!35510 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565757 (= res!356874 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!565750 () Bool)

(declare-fun res!356871 () Bool)

(assert (=> b!565750 (=> (not res!356871) (not e!325655))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35510 (_ BitVec 32)) SeekEntryResult!5506)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565750 (= res!356871 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17050 a!3118) j!142) mask!3119) (select (arr!17050 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17050 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17050 a!3118) i!1132 k0!1914) j!142) (array!35511 (store (arr!17050 a!3118) i!1132 k0!1914) (size!17414 a!3118)) mask!3119)))))

(declare-fun res!356876 () Bool)

(assert (=> start!51748 (=> (not res!356876) (not e!325654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51748 (= res!356876 (validMask!0 mask!3119))))

(assert (=> start!51748 e!325654))

(assert (=> start!51748 true))

(declare-fun array_inv!12824 (array!35510) Bool)

(assert (=> start!51748 (array_inv!12824 a!3118)))

(assert (= (and start!51748 res!356876) b!565752))

(assert (= (and b!565752 res!356869) b!565754))

(assert (= (and b!565754 res!356873) b!565748))

(assert (= (and b!565748 res!356875) b!565757))

(assert (= (and b!565757 res!356874) b!565751))

(assert (= (and b!565751 res!356870) b!565756))

(assert (= (and b!565756 res!356872) b!565753))

(assert (= (and b!565753 res!356867) b!565750))

(assert (= (and b!565750 res!356871) b!565749))

(assert (= (and b!565749 res!356868) b!565755))

(declare-fun m!544345 () Bool)

(assert (=> b!565750 m!544345))

(declare-fun m!544347 () Bool)

(assert (=> b!565750 m!544347))

(assert (=> b!565750 m!544345))

(declare-fun m!544349 () Bool)

(assert (=> b!565750 m!544349))

(declare-fun m!544351 () Bool)

(assert (=> b!565750 m!544351))

(assert (=> b!565750 m!544349))

(declare-fun m!544353 () Bool)

(assert (=> b!565750 m!544353))

(assert (=> b!565750 m!544347))

(assert (=> b!565750 m!544345))

(declare-fun m!544355 () Bool)

(assert (=> b!565750 m!544355))

(declare-fun m!544357 () Bool)

(assert (=> b!565750 m!544357))

(assert (=> b!565750 m!544349))

(assert (=> b!565750 m!544351))

(declare-fun m!544359 () Bool)

(assert (=> b!565748 m!544359))

(declare-fun m!544361 () Bool)

(assert (=> b!565749 m!544361))

(declare-fun m!544363 () Bool)

(assert (=> b!565749 m!544363))

(declare-fun m!544365 () Bool)

(assert (=> start!51748 m!544365))

(declare-fun m!544367 () Bool)

(assert (=> start!51748 m!544367))

(declare-fun m!544369 () Bool)

(assert (=> b!565756 m!544369))

(assert (=> b!565755 m!544345))

(assert (=> b!565755 m!544345))

(declare-fun m!544371 () Bool)

(assert (=> b!565755 m!544371))

(declare-fun m!544373 () Bool)

(assert (=> b!565757 m!544373))

(assert (=> b!565754 m!544345))

(assert (=> b!565754 m!544345))

(declare-fun m!544375 () Bool)

(assert (=> b!565754 m!544375))

(declare-fun m!544377 () Bool)

(assert (=> b!565751 m!544377))

(declare-fun m!544379 () Bool)

(assert (=> b!565753 m!544379))

(check-sat (not b!565755) (not start!51748) (not b!565753) (not b!565749) (not b!565754) (not b!565751) (not b!565748) (not b!565750) (not b!565757) (not b!565756))
(check-sat)

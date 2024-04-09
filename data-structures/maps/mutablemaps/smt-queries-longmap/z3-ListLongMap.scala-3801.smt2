; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52180 () Bool)

(assert start!52180)

(declare-fun res!359323 () Bool)

(declare-fun e!327431 () Bool)

(assert (=> start!52180 (=> (not res!359323) (not e!327431))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52180 (= res!359323 (validMask!0 mask!3119))))

(assert (=> start!52180 e!327431))

(assert (=> start!52180 true))

(declare-datatypes ((array!35657 0))(
  ( (array!35658 (arr!17116 (Array (_ BitVec 32) (_ BitVec 64))) (size!17480 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35657)

(declare-fun array_inv!12890 (array!35657) Bool)

(assert (=> start!52180 (array_inv!12890 a!3118)))

(declare-fun b!569151 () Bool)

(declare-fun e!327432 () Bool)

(assert (=> b!569151 (= e!327431 e!327432)))

(declare-fun res!359319 () Bool)

(assert (=> b!569151 (=> (not res!359319) (not e!327432))))

(declare-datatypes ((SeekEntryResult!5572 0))(
  ( (MissingZero!5572 (index!24515 (_ BitVec 32))) (Found!5572 (index!24516 (_ BitVec 32))) (Intermediate!5572 (undefined!6384 Bool) (index!24517 (_ BitVec 32)) (x!53418 (_ BitVec 32))) (Undefined!5572) (MissingVacant!5572 (index!24518 (_ BitVec 32))) )
))
(declare-fun lt!259443 () SeekEntryResult!5572)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!569151 (= res!359319 (or (= lt!259443 (MissingZero!5572 i!1132)) (= lt!259443 (MissingVacant!5572 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35657 (_ BitVec 32)) SeekEntryResult!5572)

(assert (=> b!569151 (= lt!259443 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!569152 () Bool)

(declare-fun res!359320 () Bool)

(assert (=> b!569152 (=> (not res!359320) (not e!327431))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!569152 (= res!359320 (and (= (size!17480 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17480 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17480 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569153 () Bool)

(declare-fun e!327430 () Bool)

(assert (=> b!569153 (= e!327432 e!327430)))

(declare-fun res!359325 () Bool)

(assert (=> b!569153 (=> (not res!359325) (not e!327430))))

(declare-fun lt!259448 () SeekEntryResult!5572)

(declare-fun lt!259444 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35657 (_ BitVec 32)) SeekEntryResult!5572)

(assert (=> b!569153 (= res!359325 (= lt!259448 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259444 (select (store (arr!17116 a!3118) i!1132 k0!1914) j!142) (array!35658 (store (arr!17116 a!3118) i!1132 k0!1914) (size!17480 a!3118)) mask!3119)))))

(declare-fun lt!259446 () (_ BitVec 32))

(assert (=> b!569153 (= lt!259448 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259446 (select (arr!17116 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569153 (= lt!259444 (toIndex!0 (select (store (arr!17116 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!569153 (= lt!259446 (toIndex!0 (select (arr!17116 a!3118) j!142) mask!3119))))

(declare-fun b!569154 () Bool)

(declare-fun res!359327 () Bool)

(assert (=> b!569154 (=> (not res!359327) (not e!327432))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35657 (_ BitVec 32)) Bool)

(assert (=> b!569154 (= res!359327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569155 () Bool)

(declare-fun res!359321 () Bool)

(assert (=> b!569155 (=> (not res!359321) (not e!327431))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569155 (= res!359321 (validKeyInArray!0 k0!1914))))

(declare-fun b!569156 () Bool)

(declare-fun res!359322 () Bool)

(assert (=> b!569156 (=> (not res!359322) (not e!327431))))

(assert (=> b!569156 (= res!359322 (validKeyInArray!0 (select (arr!17116 a!3118) j!142)))))

(declare-fun b!569157 () Bool)

(declare-fun res!359326 () Bool)

(assert (=> b!569157 (=> (not res!359326) (not e!327431))))

(declare-fun arrayContainsKey!0 (array!35657 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569157 (= res!359326 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569158 () Bool)

(declare-fun res!359324 () Bool)

(assert (=> b!569158 (=> (not res!359324) (not e!327432))))

(declare-datatypes ((List!11249 0))(
  ( (Nil!11246) (Cons!11245 (h!12266 (_ BitVec 64)) (t!17485 List!11249)) )
))
(declare-fun arrayNoDuplicates!0 (array!35657 (_ BitVec 32) List!11249) Bool)

(assert (=> b!569158 (= res!359324 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11246))))

(declare-fun b!569159 () Bool)

(get-info :version)

(assert (=> b!569159 (= e!327430 (not (or (undefined!6384 lt!259448) (not ((_ is Intermediate!5572) lt!259448)) (= (select (arr!17116 a!3118) (index!24517 lt!259448)) (select (arr!17116 a!3118) j!142)) (not (= (select (arr!17116 a!3118) (index!24517 lt!259448)) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun lt!259445 () SeekEntryResult!5572)

(assert (=> b!569159 (and (= lt!259445 (Found!5572 j!142)) (or (undefined!6384 lt!259448) (not ((_ is Intermediate!5572) lt!259448)) (= (select (arr!17116 a!3118) (index!24517 lt!259448)) (select (arr!17116 a!3118) j!142)) (not (= (select (arr!17116 a!3118) (index!24517 lt!259448)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259445 (MissingZero!5572 (index!24517 lt!259448)))))))

(assert (=> b!569159 (= lt!259445 (seekEntryOrOpen!0 (select (arr!17116 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!569159 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17846 0))(
  ( (Unit!17847) )
))
(declare-fun lt!259447 () Unit!17846)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35657 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17846)

(assert (=> b!569159 (= lt!259447 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!52180 res!359323) b!569152))

(assert (= (and b!569152 res!359320) b!569156))

(assert (= (and b!569156 res!359322) b!569155))

(assert (= (and b!569155 res!359321) b!569157))

(assert (= (and b!569157 res!359326) b!569151))

(assert (= (and b!569151 res!359319) b!569154))

(assert (= (and b!569154 res!359327) b!569158))

(assert (= (and b!569158 res!359324) b!569153))

(assert (= (and b!569153 res!359325) b!569159))

(declare-fun m!547881 () Bool)

(assert (=> b!569156 m!547881))

(assert (=> b!569156 m!547881))

(declare-fun m!547883 () Bool)

(assert (=> b!569156 m!547883))

(assert (=> b!569153 m!547881))

(declare-fun m!547885 () Bool)

(assert (=> b!569153 m!547885))

(assert (=> b!569153 m!547881))

(declare-fun m!547887 () Bool)

(assert (=> b!569153 m!547887))

(declare-fun m!547889 () Bool)

(assert (=> b!569153 m!547889))

(assert (=> b!569153 m!547887))

(declare-fun m!547891 () Bool)

(assert (=> b!569153 m!547891))

(assert (=> b!569153 m!547881))

(declare-fun m!547893 () Bool)

(assert (=> b!569153 m!547893))

(assert (=> b!569153 m!547887))

(declare-fun m!547895 () Bool)

(assert (=> b!569153 m!547895))

(declare-fun m!547897 () Bool)

(assert (=> b!569155 m!547897))

(declare-fun m!547899 () Bool)

(assert (=> b!569151 m!547899))

(assert (=> b!569159 m!547881))

(declare-fun m!547901 () Bool)

(assert (=> b!569159 m!547901))

(declare-fun m!547903 () Bool)

(assert (=> b!569159 m!547903))

(declare-fun m!547905 () Bool)

(assert (=> b!569159 m!547905))

(assert (=> b!569159 m!547881))

(declare-fun m!547907 () Bool)

(assert (=> b!569159 m!547907))

(declare-fun m!547909 () Bool)

(assert (=> start!52180 m!547909))

(declare-fun m!547911 () Bool)

(assert (=> start!52180 m!547911))

(declare-fun m!547913 () Bool)

(assert (=> b!569157 m!547913))

(declare-fun m!547915 () Bool)

(assert (=> b!569154 m!547915))

(declare-fun m!547917 () Bool)

(assert (=> b!569158 m!547917))

(check-sat (not b!569151) (not start!52180) (not b!569158) (not b!569153) (not b!569154) (not b!569155) (not b!569156) (not b!569159) (not b!569157))
(check-sat)

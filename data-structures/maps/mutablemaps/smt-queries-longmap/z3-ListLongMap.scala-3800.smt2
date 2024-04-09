; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52174 () Bool)

(assert start!52174)

(declare-fun b!569070 () Bool)

(declare-fun res!359243 () Bool)

(declare-fun e!327397 () Bool)

(assert (=> b!569070 (=> (not res!359243) (not e!327397))))

(declare-datatypes ((array!35651 0))(
  ( (array!35652 (arr!17113 (Array (_ BitVec 32) (_ BitVec 64))) (size!17477 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35651)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35651 (_ BitVec 32)) Bool)

(assert (=> b!569070 (= res!359243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569071 () Bool)

(declare-fun e!327395 () Bool)

(assert (=> b!569071 (= e!327395 e!327397)))

(declare-fun res!359238 () Bool)

(assert (=> b!569071 (=> (not res!359238) (not e!327397))))

(declare-datatypes ((SeekEntryResult!5569 0))(
  ( (MissingZero!5569 (index!24503 (_ BitVec 32))) (Found!5569 (index!24504 (_ BitVec 32))) (Intermediate!5569 (undefined!6381 Bool) (index!24505 (_ BitVec 32)) (x!53407 (_ BitVec 32))) (Undefined!5569) (MissingVacant!5569 (index!24506 (_ BitVec 32))) )
))
(declare-fun lt!259394 () SeekEntryResult!5569)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!569071 (= res!359238 (or (= lt!259394 (MissingZero!5569 i!1132)) (= lt!259394 (MissingVacant!5569 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35651 (_ BitVec 32)) SeekEntryResult!5569)

(assert (=> b!569071 (= lt!259394 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!569072 () Bool)

(declare-fun e!327396 () Bool)

(assert (=> b!569072 (= e!327397 e!327396)))

(declare-fun res!359244 () Bool)

(assert (=> b!569072 (=> (not res!359244) (not e!327396))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!259389 () SeekEntryResult!5569)

(declare-fun lt!259393 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35651 (_ BitVec 32)) SeekEntryResult!5569)

(assert (=> b!569072 (= res!359244 (= lt!259389 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259393 (select (store (arr!17113 a!3118) i!1132 k0!1914) j!142) (array!35652 (store (arr!17113 a!3118) i!1132 k0!1914) (size!17477 a!3118)) mask!3119)))))

(declare-fun lt!259391 () (_ BitVec 32))

(assert (=> b!569072 (= lt!259389 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259391 (select (arr!17113 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569072 (= lt!259393 (toIndex!0 (select (store (arr!17113 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!569072 (= lt!259391 (toIndex!0 (select (arr!17113 a!3118) j!142) mask!3119))))

(declare-fun res!359245 () Bool)

(assert (=> start!52174 (=> (not res!359245) (not e!327395))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52174 (= res!359245 (validMask!0 mask!3119))))

(assert (=> start!52174 e!327395))

(assert (=> start!52174 true))

(declare-fun array_inv!12887 (array!35651) Bool)

(assert (=> start!52174 (array_inv!12887 a!3118)))

(declare-fun b!569073 () Bool)

(assert (=> b!569073 (= e!327396 (not true))))

(declare-fun lt!259392 () SeekEntryResult!5569)

(get-info :version)

(assert (=> b!569073 (and (= lt!259392 (Found!5569 j!142)) (or (undefined!6381 lt!259389) (not ((_ is Intermediate!5569) lt!259389)) (= (select (arr!17113 a!3118) (index!24505 lt!259389)) (select (arr!17113 a!3118) j!142)) (not (= (select (arr!17113 a!3118) (index!24505 lt!259389)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259392 (MissingZero!5569 (index!24505 lt!259389)))))))

(assert (=> b!569073 (= lt!259392 (seekEntryOrOpen!0 (select (arr!17113 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!569073 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17840 0))(
  ( (Unit!17841) )
))
(declare-fun lt!259390 () Unit!17840)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35651 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17840)

(assert (=> b!569073 (= lt!259390 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569074 () Bool)

(declare-fun res!359241 () Bool)

(assert (=> b!569074 (=> (not res!359241) (not e!327395))))

(declare-fun arrayContainsKey!0 (array!35651 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569074 (= res!359241 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569075 () Bool)

(declare-fun res!359240 () Bool)

(assert (=> b!569075 (=> (not res!359240) (not e!327395))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569075 (= res!359240 (validKeyInArray!0 (select (arr!17113 a!3118) j!142)))))

(declare-fun b!569076 () Bool)

(declare-fun res!359246 () Bool)

(assert (=> b!569076 (=> (not res!359246) (not e!327397))))

(declare-datatypes ((List!11246 0))(
  ( (Nil!11243) (Cons!11242 (h!12263 (_ BitVec 64)) (t!17482 List!11246)) )
))
(declare-fun arrayNoDuplicates!0 (array!35651 (_ BitVec 32) List!11246) Bool)

(assert (=> b!569076 (= res!359246 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11243))))

(declare-fun b!569077 () Bool)

(declare-fun res!359239 () Bool)

(assert (=> b!569077 (=> (not res!359239) (not e!327395))))

(assert (=> b!569077 (= res!359239 (and (= (size!17477 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17477 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17477 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569078 () Bool)

(declare-fun res!359242 () Bool)

(assert (=> b!569078 (=> (not res!359242) (not e!327395))))

(assert (=> b!569078 (= res!359242 (validKeyInArray!0 k0!1914))))

(assert (= (and start!52174 res!359245) b!569077))

(assert (= (and b!569077 res!359239) b!569075))

(assert (= (and b!569075 res!359240) b!569078))

(assert (= (and b!569078 res!359242) b!569074))

(assert (= (and b!569074 res!359241) b!569071))

(assert (= (and b!569071 res!359238) b!569070))

(assert (= (and b!569070 res!359243) b!569076))

(assert (= (and b!569076 res!359246) b!569072))

(assert (= (and b!569072 res!359244) b!569073))

(declare-fun m!547767 () Bool)

(assert (=> b!569073 m!547767))

(declare-fun m!547769 () Bool)

(assert (=> b!569073 m!547769))

(declare-fun m!547771 () Bool)

(assert (=> b!569073 m!547771))

(declare-fun m!547773 () Bool)

(assert (=> b!569073 m!547773))

(assert (=> b!569073 m!547767))

(declare-fun m!547775 () Bool)

(assert (=> b!569073 m!547775))

(assert (=> b!569072 m!547767))

(declare-fun m!547777 () Bool)

(assert (=> b!569072 m!547777))

(assert (=> b!569072 m!547767))

(declare-fun m!547779 () Bool)

(assert (=> b!569072 m!547779))

(assert (=> b!569072 m!547767))

(declare-fun m!547781 () Bool)

(assert (=> b!569072 m!547781))

(assert (=> b!569072 m!547779))

(declare-fun m!547783 () Bool)

(assert (=> b!569072 m!547783))

(declare-fun m!547785 () Bool)

(assert (=> b!569072 m!547785))

(assert (=> b!569072 m!547779))

(declare-fun m!547787 () Bool)

(assert (=> b!569072 m!547787))

(declare-fun m!547789 () Bool)

(assert (=> b!569074 m!547789))

(declare-fun m!547791 () Bool)

(assert (=> b!569071 m!547791))

(declare-fun m!547793 () Bool)

(assert (=> start!52174 m!547793))

(declare-fun m!547795 () Bool)

(assert (=> start!52174 m!547795))

(assert (=> b!569075 m!547767))

(assert (=> b!569075 m!547767))

(declare-fun m!547797 () Bool)

(assert (=> b!569075 m!547797))

(declare-fun m!547799 () Bool)

(assert (=> b!569076 m!547799))

(declare-fun m!547801 () Bool)

(assert (=> b!569070 m!547801))

(declare-fun m!547803 () Bool)

(assert (=> b!569078 m!547803))

(check-sat (not b!569070) (not b!569072) (not b!569074) (not b!569071) (not b!569076) (not b!569078) (not b!569073) (not b!569075) (not start!52174))
(check-sat)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51392 () Bool)

(assert start!51392)

(declare-fun b!560790 () Bool)

(declare-fun e!323135 () Bool)

(assert (=> b!560790 (= e!323135 (not true))))

(declare-fun e!323138 () Bool)

(assert (=> b!560790 e!323138))

(declare-fun res!352091 () Bool)

(assert (=> b!560790 (=> (not res!352091) (not e!323138))))

(declare-datatypes ((SeekEntryResult!5358 0))(
  ( (MissingZero!5358 (index!23659 (_ BitVec 32))) (Found!5358 (index!23660 (_ BitVec 32))) (Intermediate!5358 (undefined!6170 Bool) (index!23661 (_ BitVec 32)) (x!52600 (_ BitVec 32))) (Undefined!5358) (MissingVacant!5358 (index!23662 (_ BitVec 32))) )
))
(declare-fun lt!255161 () SeekEntryResult!5358)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!560790 (= res!352091 (= lt!255161 (Found!5358 j!142)))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35211 0))(
  ( (array!35212 (arr!16902 (Array (_ BitVec 32) (_ BitVec 64))) (size!17266 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35211)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35211 (_ BitVec 32)) SeekEntryResult!5358)

(assert (=> b!560790 (= lt!255161 (seekEntryOrOpen!0 (select (arr!16902 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35211 (_ BitVec 32)) Bool)

(assert (=> b!560790 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17490 0))(
  ( (Unit!17491) )
))
(declare-fun lt!255163 () Unit!17490)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35211 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17490)

(assert (=> b!560790 (= lt!255163 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!560791 () Bool)

(declare-fun res!352095 () Bool)

(declare-fun e!323140 () Bool)

(assert (=> b!560791 (=> (not res!352095) (not e!323140))))

(declare-datatypes ((List!11035 0))(
  ( (Nil!11032) (Cons!11031 (h!12034 (_ BitVec 64)) (t!17271 List!11035)) )
))
(declare-fun arrayNoDuplicates!0 (array!35211 (_ BitVec 32) List!11035) Bool)

(assert (=> b!560791 (= res!352095 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11032))))

(declare-fun b!560792 () Bool)

(declare-fun res!352094 () Bool)

(declare-fun e!323139 () Bool)

(assert (=> b!560792 (=> (not res!352094) (not e!323139))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560792 (= res!352094 (validKeyInArray!0 k!1914))))

(declare-fun b!560793 () Bool)

(assert (=> b!560793 (= e!323139 e!323140)))

(declare-fun res!352096 () Bool)

(assert (=> b!560793 (=> (not res!352096) (not e!323140))))

(declare-fun lt!255158 () SeekEntryResult!5358)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!560793 (= res!352096 (or (= lt!255158 (MissingZero!5358 i!1132)) (= lt!255158 (MissingVacant!5358 i!1132))))))

(assert (=> b!560793 (= lt!255158 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!560794 () Bool)

(declare-fun res!352093 () Bool)

(assert (=> b!560794 (=> (not res!352093) (not e!323139))))

(assert (=> b!560794 (= res!352093 (validKeyInArray!0 (select (arr!16902 a!3118) j!142)))))

(declare-fun b!560795 () Bool)

(declare-fun e!323133 () Bool)

(declare-fun lt!255164 () SeekEntryResult!5358)

(declare-fun lt!255160 () array!35211)

(declare-fun lt!255156 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35211 (_ BitVec 32)) SeekEntryResult!5358)

(assert (=> b!560795 (= e!323133 (= (seekEntryOrOpen!0 lt!255156 lt!255160 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52600 lt!255164) (index!23661 lt!255164) (index!23661 lt!255164) lt!255156 lt!255160 mask!3119)))))

(declare-fun b!560796 () Bool)

(declare-fun res!352103 () Bool)

(assert (=> b!560796 (=> (not res!352103) (not e!323139))))

(declare-fun arrayContainsKey!0 (array!35211 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560796 (= res!352103 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!560797 () Bool)

(declare-fun res!352092 () Bool)

(assert (=> b!560797 (=> (not res!352092) (not e!323139))))

(assert (=> b!560797 (= res!352092 (and (= (size!17266 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17266 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17266 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560798 () Bool)

(assert (=> b!560798 (= e!323140 e!323135)))

(declare-fun res!352101 () Bool)

(assert (=> b!560798 (=> (not res!352101) (not e!323135))))

(declare-fun lt!255157 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35211 (_ BitVec 32)) SeekEntryResult!5358)

(assert (=> b!560798 (= res!352101 (= lt!255164 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255157 lt!255156 lt!255160 mask!3119)))))

(declare-fun lt!255162 () (_ BitVec 32))

(assert (=> b!560798 (= lt!255164 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255162 (select (arr!16902 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560798 (= lt!255157 (toIndex!0 lt!255156 mask!3119))))

(assert (=> b!560798 (= lt!255156 (select (store (arr!16902 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!560798 (= lt!255162 (toIndex!0 (select (arr!16902 a!3118) j!142) mask!3119))))

(assert (=> b!560798 (= lt!255160 (array!35212 (store (arr!16902 a!3118) i!1132 k!1914) (size!17266 a!3118)))))

(declare-fun b!560799 () Bool)

(declare-fun res!352099 () Bool)

(assert (=> b!560799 (=> (not res!352099) (not e!323140))))

(assert (=> b!560799 (= res!352099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!352097 () Bool)

(assert (=> start!51392 (=> (not res!352097) (not e!323139))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51392 (= res!352097 (validMask!0 mask!3119))))

(assert (=> start!51392 e!323139))

(assert (=> start!51392 true))

(declare-fun array_inv!12676 (array!35211) Bool)

(assert (=> start!51392 (array_inv!12676 a!3118)))

(declare-fun b!560789 () Bool)

(declare-fun e!323136 () Bool)

(declare-fun e!323134 () Bool)

(assert (=> b!560789 (= e!323136 e!323134)))

(declare-fun res!352102 () Bool)

(assert (=> b!560789 (=> res!352102 e!323134)))

(declare-fun lt!255159 () (_ BitVec 64))

(assert (=> b!560789 (= res!352102 (or (= lt!255159 (select (arr!16902 a!3118) j!142)) (= lt!255159 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!560789 (= lt!255159 (select (arr!16902 a!3118) (index!23661 lt!255164)))))

(declare-fun b!560800 () Bool)

(assert (=> b!560800 (= e!323138 e!323136)))

(declare-fun res!352100 () Bool)

(assert (=> b!560800 (=> res!352100 e!323136)))

(assert (=> b!560800 (= res!352100 (or (undefined!6170 lt!255164) (not (is-Intermediate!5358 lt!255164))))))

(declare-fun b!560801 () Bool)

(assert (=> b!560801 (= e!323134 e!323133)))

(declare-fun res!352098 () Bool)

(assert (=> b!560801 (=> (not res!352098) (not e!323133))))

(assert (=> b!560801 (= res!352098 (= lt!255161 (seekKeyOrZeroReturnVacant!0 (x!52600 lt!255164) (index!23661 lt!255164) (index!23661 lt!255164) (select (arr!16902 a!3118) j!142) a!3118 mask!3119)))))

(assert (= (and start!51392 res!352097) b!560797))

(assert (= (and b!560797 res!352092) b!560794))

(assert (= (and b!560794 res!352093) b!560792))

(assert (= (and b!560792 res!352094) b!560796))

(assert (= (and b!560796 res!352103) b!560793))

(assert (= (and b!560793 res!352096) b!560799))

(assert (= (and b!560799 res!352099) b!560791))

(assert (= (and b!560791 res!352095) b!560798))

(assert (= (and b!560798 res!352101) b!560790))

(assert (= (and b!560790 res!352091) b!560800))

(assert (= (and b!560800 (not res!352100)) b!560789))

(assert (= (and b!560789 (not res!352102)) b!560801))

(assert (= (and b!560801 res!352098) b!560795))

(declare-fun m!538663 () Bool)

(assert (=> b!560793 m!538663))

(declare-fun m!538665 () Bool)

(assert (=> b!560799 m!538665))

(declare-fun m!538667 () Bool)

(assert (=> b!560798 m!538667))

(declare-fun m!538669 () Bool)

(assert (=> b!560798 m!538669))

(assert (=> b!560798 m!538667))

(declare-fun m!538671 () Bool)

(assert (=> b!560798 m!538671))

(declare-fun m!538673 () Bool)

(assert (=> b!560798 m!538673))

(assert (=> b!560798 m!538667))

(declare-fun m!538675 () Bool)

(assert (=> b!560798 m!538675))

(declare-fun m!538677 () Bool)

(assert (=> b!560798 m!538677))

(declare-fun m!538679 () Bool)

(assert (=> b!560798 m!538679))

(assert (=> b!560801 m!538667))

(assert (=> b!560801 m!538667))

(declare-fun m!538681 () Bool)

(assert (=> b!560801 m!538681))

(assert (=> b!560789 m!538667))

(declare-fun m!538683 () Bool)

(assert (=> b!560789 m!538683))

(declare-fun m!538685 () Bool)

(assert (=> start!51392 m!538685))

(declare-fun m!538687 () Bool)

(assert (=> start!51392 m!538687))

(declare-fun m!538689 () Bool)

(assert (=> b!560795 m!538689))

(declare-fun m!538691 () Bool)

(assert (=> b!560795 m!538691))

(declare-fun m!538693 () Bool)

(assert (=> b!560791 m!538693))

(assert (=> b!560790 m!538667))

(assert (=> b!560790 m!538667))

(declare-fun m!538695 () Bool)

(assert (=> b!560790 m!538695))

(declare-fun m!538697 () Bool)

(assert (=> b!560790 m!538697))

(declare-fun m!538699 () Bool)

(assert (=> b!560790 m!538699))

(assert (=> b!560794 m!538667))

(assert (=> b!560794 m!538667))

(declare-fun m!538701 () Bool)

(assert (=> b!560794 m!538701))

(declare-fun m!538703 () Bool)

(assert (=> b!560792 m!538703))

(declare-fun m!538705 () Bool)

(assert (=> b!560796 m!538705))

(push 1)


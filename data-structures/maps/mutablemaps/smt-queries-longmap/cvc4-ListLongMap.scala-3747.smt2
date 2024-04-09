; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51498 () Bool)

(assert start!51498)

(declare-fun b!562803 () Bool)

(declare-fun e!324358 () Bool)

(declare-fun e!324357 () Bool)

(assert (=> b!562803 (= e!324358 e!324357)))

(declare-fun res!354106 () Bool)

(assert (=> b!562803 (=> (not res!354106) (not e!324357))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!256862 () (_ BitVec 64))

(declare-datatypes ((array!35317 0))(
  ( (array!35318 (arr!16955 (Array (_ BitVec 32) (_ BitVec 64))) (size!17319 (_ BitVec 32))) )
))
(declare-fun lt!256865 () array!35317)

(declare-fun lt!256854 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5411 0))(
  ( (MissingZero!5411 (index!23871 (_ BitVec 32))) (Found!5411 (index!23872 (_ BitVec 32))) (Intermediate!5411 (undefined!6223 Bool) (index!23873 (_ BitVec 32)) (x!52789 (_ BitVec 32))) (Undefined!5411) (MissingVacant!5411 (index!23874 (_ BitVec 32))) )
))
(declare-fun lt!256857 () SeekEntryResult!5411)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35317 (_ BitVec 32)) SeekEntryResult!5411)

(assert (=> b!562803 (= res!354106 (= lt!256857 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256854 lt!256862 lt!256865 mask!3119)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!256859 () (_ BitVec 32))

(declare-fun a!3118 () array!35317)

(assert (=> b!562803 (= lt!256857 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256859 (select (arr!16955 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562803 (= lt!256854 (toIndex!0 lt!256862 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!562803 (= lt!256862 (select (store (arr!16955 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!562803 (= lt!256859 (toIndex!0 (select (arr!16955 a!3118) j!142) mask!3119))))

(assert (=> b!562803 (= lt!256865 (array!35318 (store (arr!16955 a!3118) i!1132 k!1914) (size!17319 a!3118)))))

(declare-fun b!562804 () Bool)

(declare-fun res!354107 () Bool)

(assert (=> b!562804 (=> (not res!354107) (not e!324358))))

(declare-datatypes ((List!11088 0))(
  ( (Nil!11085) (Cons!11084 (h!12087 (_ BitVec 64)) (t!17324 List!11088)) )
))
(declare-fun arrayNoDuplicates!0 (array!35317 (_ BitVec 32) List!11088) Bool)

(assert (=> b!562804 (= res!354107 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11085))))

(declare-fun b!562805 () Bool)

(declare-fun res!354114 () Bool)

(declare-fun e!324355 () Bool)

(assert (=> b!562805 (=> (not res!354114) (not e!324355))))

(declare-fun arrayContainsKey!0 (array!35317 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562805 (= res!354114 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!562806 () Bool)

(declare-fun res!354112 () Bool)

(assert (=> b!562806 (=> (not res!354112) (not e!324355))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562806 (= res!354112 (validKeyInArray!0 k!1914))))

(declare-fun b!562807 () Bool)

(declare-fun e!324354 () Bool)

(declare-fun e!324353 () Bool)

(assert (=> b!562807 (= e!324354 e!324353)))

(declare-fun res!354109 () Bool)

(assert (=> b!562807 (=> res!354109 e!324353)))

(declare-fun lt!256856 () SeekEntryResult!5411)

(declare-fun lt!256860 () SeekEntryResult!5411)

(declare-fun lt!256852 () (_ BitVec 64))

(assert (=> b!562807 (= res!354109 (or (bvslt (index!23873 lt!256857) #b00000000000000000000000000000000) (bvsge (index!23873 lt!256857) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52789 lt!256857) #b01111111111111111111111111111110) (bvslt (x!52789 lt!256857) #b00000000000000000000000000000000) (not (= lt!256852 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16955 a!3118) i!1132 k!1914) (index!23873 lt!256857)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!256860 lt!256856))))))

(declare-fun lt!256855 () SeekEntryResult!5411)

(declare-fun lt!256858 () SeekEntryResult!5411)

(assert (=> b!562807 (= lt!256855 lt!256858)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35317 (_ BitVec 32)) SeekEntryResult!5411)

(assert (=> b!562807 (= lt!256858 (seekKeyOrZeroReturnVacant!0 (x!52789 lt!256857) (index!23873 lt!256857) (index!23873 lt!256857) lt!256862 lt!256865 mask!3119))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35317 (_ BitVec 32)) SeekEntryResult!5411)

(assert (=> b!562807 (= lt!256855 (seekEntryOrOpen!0 lt!256862 lt!256865 mask!3119))))

(declare-fun lt!256864 () SeekEntryResult!5411)

(assert (=> b!562807 (= lt!256864 lt!256860)))

(assert (=> b!562807 (= lt!256860 (seekKeyOrZeroReturnVacant!0 (x!52789 lt!256857) (index!23873 lt!256857) (index!23873 lt!256857) (select (arr!16955 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!562809 () Bool)

(declare-fun res!354111 () Bool)

(assert (=> b!562809 (=> (not res!354111) (not e!324355))))

(assert (=> b!562809 (= res!354111 (validKeyInArray!0 (select (arr!16955 a!3118) j!142)))))

(declare-fun b!562810 () Bool)

(declare-fun res!354105 () Bool)

(assert (=> b!562810 (=> (not res!354105) (not e!324358))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35317 (_ BitVec 32)) Bool)

(assert (=> b!562810 (= res!354105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562811 () Bool)

(declare-fun e!324356 () Bool)

(assert (=> b!562811 (= e!324356 e!324354)))

(declare-fun res!354115 () Bool)

(assert (=> b!562811 (=> res!354115 e!324354)))

(assert (=> b!562811 (= res!354115 (or (= lt!256852 (select (arr!16955 a!3118) j!142)) (= lt!256852 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562811 (= lt!256852 (select (arr!16955 a!3118) (index!23873 lt!256857)))))

(declare-fun b!562812 () Bool)

(assert (=> b!562812 (= e!324355 e!324358)))

(declare-fun res!354113 () Bool)

(assert (=> b!562812 (=> (not res!354113) (not e!324358))))

(declare-fun lt!256853 () SeekEntryResult!5411)

(assert (=> b!562812 (= res!354113 (or (= lt!256853 (MissingZero!5411 i!1132)) (= lt!256853 (MissingVacant!5411 i!1132))))))

(assert (=> b!562812 (= lt!256853 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!562813 () Bool)

(assert (=> b!562813 (= e!324357 (not e!324356))))

(declare-fun res!354108 () Bool)

(assert (=> b!562813 (=> res!354108 e!324356)))

(assert (=> b!562813 (= res!354108 (or (undefined!6223 lt!256857) (not (is-Intermediate!5411 lt!256857))))))

(assert (=> b!562813 (= lt!256864 lt!256856)))

(assert (=> b!562813 (= lt!256856 (Found!5411 j!142))))

(assert (=> b!562813 (= lt!256864 (seekEntryOrOpen!0 (select (arr!16955 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!562813 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17596 0))(
  ( (Unit!17597) )
))
(declare-fun lt!256861 () Unit!17596)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35317 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17596)

(assert (=> b!562813 (= lt!256861 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562814 () Bool)

(declare-fun res!354116 () Bool)

(assert (=> b!562814 (=> (not res!354116) (not e!324355))))

(assert (=> b!562814 (= res!354116 (and (= (size!17319 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17319 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17319 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562808 () Bool)

(assert (=> b!562808 (= e!324353 (bvsge mask!3119 #b00000000000000000000000000000000))))

(assert (=> b!562808 (= lt!256860 lt!256858)))

(declare-fun lt!256863 () Unit!17596)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35317 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17596)

(assert (=> b!562808 (= lt!256863 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!52789 lt!256857) (index!23873 lt!256857) (index!23873 lt!256857) mask!3119))))

(declare-fun res!354110 () Bool)

(assert (=> start!51498 (=> (not res!354110) (not e!324355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51498 (= res!354110 (validMask!0 mask!3119))))

(assert (=> start!51498 e!324355))

(assert (=> start!51498 true))

(declare-fun array_inv!12729 (array!35317) Bool)

(assert (=> start!51498 (array_inv!12729 a!3118)))

(assert (= (and start!51498 res!354110) b!562814))

(assert (= (and b!562814 res!354116) b!562809))

(assert (= (and b!562809 res!354111) b!562806))

(assert (= (and b!562806 res!354112) b!562805))

(assert (= (and b!562805 res!354114) b!562812))

(assert (= (and b!562812 res!354113) b!562810))

(assert (= (and b!562810 res!354105) b!562804))

(assert (= (and b!562804 res!354107) b!562803))

(assert (= (and b!562803 res!354106) b!562813))

(assert (= (and b!562813 (not res!354108)) b!562811))

(assert (= (and b!562811 (not res!354115)) b!562807))

(assert (= (and b!562807 (not res!354109)) b!562808))

(declare-fun m!541063 () Bool)

(assert (=> b!562808 m!541063))

(declare-fun m!541065 () Bool)

(assert (=> b!562813 m!541065))

(assert (=> b!562813 m!541065))

(declare-fun m!541067 () Bool)

(assert (=> b!562813 m!541067))

(declare-fun m!541069 () Bool)

(assert (=> b!562813 m!541069))

(declare-fun m!541071 () Bool)

(assert (=> b!562813 m!541071))

(declare-fun m!541073 () Bool)

(assert (=> b!562812 m!541073))

(assert (=> b!562803 m!541065))

(declare-fun m!541075 () Bool)

(assert (=> b!562803 m!541075))

(assert (=> b!562803 m!541065))

(assert (=> b!562803 m!541065))

(declare-fun m!541077 () Bool)

(assert (=> b!562803 m!541077))

(declare-fun m!541079 () Bool)

(assert (=> b!562803 m!541079))

(declare-fun m!541081 () Bool)

(assert (=> b!562803 m!541081))

(declare-fun m!541083 () Bool)

(assert (=> b!562803 m!541083))

(declare-fun m!541085 () Bool)

(assert (=> b!562803 m!541085))

(assert (=> b!562807 m!541065))

(declare-fun m!541087 () Bool)

(assert (=> b!562807 m!541087))

(declare-fun m!541089 () Bool)

(assert (=> b!562807 m!541089))

(declare-fun m!541091 () Bool)

(assert (=> b!562807 m!541091))

(assert (=> b!562807 m!541065))

(declare-fun m!541093 () Bool)

(assert (=> b!562807 m!541093))

(assert (=> b!562807 m!541085))

(assert (=> b!562811 m!541065))

(declare-fun m!541095 () Bool)

(assert (=> b!562811 m!541095))

(declare-fun m!541097 () Bool)

(assert (=> b!562810 m!541097))

(assert (=> b!562809 m!541065))

(assert (=> b!562809 m!541065))

(declare-fun m!541099 () Bool)

(assert (=> b!562809 m!541099))

(declare-fun m!541101 () Bool)

(assert (=> b!562805 m!541101))

(declare-fun m!541103 () Bool)

(assert (=> b!562806 m!541103))

(declare-fun m!541105 () Bool)

(assert (=> start!51498 m!541105))

(declare-fun m!541107 () Bool)

(assert (=> start!51498 m!541107))

(declare-fun m!541109 () Bool)

(assert (=> b!562804 m!541109))

(push 1)


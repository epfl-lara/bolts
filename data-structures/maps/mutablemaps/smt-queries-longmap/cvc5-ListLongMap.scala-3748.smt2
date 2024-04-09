; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51500 () Bool)

(assert start!51500)

(declare-fun b!562839 () Bool)

(declare-fun res!354144 () Bool)

(declare-fun e!324375 () Bool)

(assert (=> b!562839 (=> (not res!354144) (not e!324375))))

(declare-datatypes ((array!35319 0))(
  ( (array!35320 (arr!16956 (Array (_ BitVec 32) (_ BitVec 64))) (size!17320 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35319)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35319 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562839 (= res!354144 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!562840 () Bool)

(declare-fun e!324373 () Bool)

(assert (=> b!562840 (= e!324375 e!324373)))

(declare-fun res!354151 () Bool)

(assert (=> b!562840 (=> (not res!354151) (not e!324373))))

(declare-datatypes ((SeekEntryResult!5412 0))(
  ( (MissingZero!5412 (index!23875 (_ BitVec 32))) (Found!5412 (index!23876 (_ BitVec 32))) (Intermediate!5412 (undefined!6224 Bool) (index!23877 (_ BitVec 32)) (x!52798 (_ BitVec 32))) (Undefined!5412) (MissingVacant!5412 (index!23878 (_ BitVec 32))) )
))
(declare-fun lt!256903 () SeekEntryResult!5412)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!562840 (= res!354151 (or (= lt!256903 (MissingZero!5412 i!1132)) (= lt!256903 (MissingVacant!5412 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35319 (_ BitVec 32)) SeekEntryResult!5412)

(assert (=> b!562840 (= lt!256903 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!562841 () Bool)

(declare-fun res!354152 () Bool)

(assert (=> b!562841 (=> (not res!354152) (not e!324373))))

(declare-datatypes ((List!11089 0))(
  ( (Nil!11086) (Cons!11085 (h!12088 (_ BitVec 64)) (t!17325 List!11089)) )
))
(declare-fun arrayNoDuplicates!0 (array!35319 (_ BitVec 32) List!11089) Bool)

(assert (=> b!562841 (= res!354152 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11086))))

(declare-fun b!562842 () Bool)

(declare-fun res!354143 () Bool)

(assert (=> b!562842 (=> (not res!354143) (not e!324375))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562842 (= res!354143 (validKeyInArray!0 (select (arr!16956 a!3118) j!142)))))

(declare-fun b!562843 () Bool)

(declare-fun e!324376 () Bool)

(declare-fun e!324379 () Bool)

(assert (=> b!562843 (= e!324376 e!324379)))

(declare-fun res!354149 () Bool)

(assert (=> b!562843 (=> res!354149 e!324379)))

(declare-fun lt!256896 () SeekEntryResult!5412)

(declare-fun lt!256900 () SeekEntryResult!5412)

(declare-fun lt!256894 () SeekEntryResult!5412)

(declare-fun lt!256899 () (_ BitVec 64))

(assert (=> b!562843 (= res!354149 (or (bvslt (index!23877 lt!256894) #b00000000000000000000000000000000) (bvsge (index!23877 lt!256894) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52798 lt!256894) #b01111111111111111111111111111110) (bvslt (x!52798 lt!256894) #b00000000000000000000000000000000) (not (= lt!256899 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16956 a!3118) i!1132 k!1914) (index!23877 lt!256894)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!256896 lt!256900))))))

(declare-fun lt!256905 () SeekEntryResult!5412)

(declare-fun lt!256904 () SeekEntryResult!5412)

(assert (=> b!562843 (= lt!256905 lt!256904)))

(declare-fun lt!256902 () array!35319)

(declare-fun lt!256898 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35319 (_ BitVec 32)) SeekEntryResult!5412)

(assert (=> b!562843 (= lt!256904 (seekKeyOrZeroReturnVacant!0 (x!52798 lt!256894) (index!23877 lt!256894) (index!23877 lt!256894) lt!256898 lt!256902 mask!3119))))

(assert (=> b!562843 (= lt!256905 (seekEntryOrOpen!0 lt!256898 lt!256902 mask!3119))))

(declare-fun lt!256906 () SeekEntryResult!5412)

(assert (=> b!562843 (= lt!256906 lt!256896)))

(assert (=> b!562843 (= lt!256896 (seekKeyOrZeroReturnVacant!0 (x!52798 lt!256894) (index!23877 lt!256894) (index!23877 lt!256894) (select (arr!16956 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!562844 () Bool)

(declare-fun res!354150 () Bool)

(assert (=> b!562844 (=> (not res!354150) (not e!324375))))

(assert (=> b!562844 (= res!354150 (validKeyInArray!0 k!1914))))

(declare-fun b!562845 () Bool)

(assert (=> b!562845 (= e!324379 true)))

(assert (=> b!562845 (= lt!256896 lt!256904)))

(declare-datatypes ((Unit!17598 0))(
  ( (Unit!17599) )
))
(declare-fun lt!256897 () Unit!17598)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35319 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17598)

(assert (=> b!562845 (= lt!256897 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!52798 lt!256894) (index!23877 lt!256894) (index!23877 lt!256894) mask!3119))))

(declare-fun b!562846 () Bool)

(declare-fun e!324377 () Bool)

(declare-fun e!324374 () Bool)

(assert (=> b!562846 (= e!324377 (not e!324374))))

(declare-fun res!354148 () Bool)

(assert (=> b!562846 (=> res!354148 e!324374)))

(assert (=> b!562846 (= res!354148 (or (undefined!6224 lt!256894) (not (is-Intermediate!5412 lt!256894))))))

(assert (=> b!562846 (= lt!256906 lt!256900)))

(assert (=> b!562846 (= lt!256900 (Found!5412 j!142))))

(assert (=> b!562846 (= lt!256906 (seekEntryOrOpen!0 (select (arr!16956 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35319 (_ BitVec 32)) Bool)

(assert (=> b!562846 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!256907 () Unit!17598)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35319 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17598)

(assert (=> b!562846 (= lt!256907 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!354145 () Bool)

(assert (=> start!51500 (=> (not res!354145) (not e!324375))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51500 (= res!354145 (validMask!0 mask!3119))))

(assert (=> start!51500 e!324375))

(assert (=> start!51500 true))

(declare-fun array_inv!12730 (array!35319) Bool)

(assert (=> start!51500 (array_inv!12730 a!3118)))

(declare-fun b!562847 () Bool)

(assert (=> b!562847 (= e!324373 e!324377)))

(declare-fun res!354146 () Bool)

(assert (=> b!562847 (=> (not res!354146) (not e!324377))))

(declare-fun lt!256901 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35319 (_ BitVec 32)) SeekEntryResult!5412)

(assert (=> b!562847 (= res!354146 (= lt!256894 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256901 lt!256898 lt!256902 mask!3119)))))

(declare-fun lt!256895 () (_ BitVec 32))

(assert (=> b!562847 (= lt!256894 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256895 (select (arr!16956 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562847 (= lt!256901 (toIndex!0 lt!256898 mask!3119))))

(assert (=> b!562847 (= lt!256898 (select (store (arr!16956 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!562847 (= lt!256895 (toIndex!0 (select (arr!16956 a!3118) j!142) mask!3119))))

(assert (=> b!562847 (= lt!256902 (array!35320 (store (arr!16956 a!3118) i!1132 k!1914) (size!17320 a!3118)))))

(declare-fun b!562848 () Bool)

(assert (=> b!562848 (= e!324374 e!324376)))

(declare-fun res!354147 () Bool)

(assert (=> b!562848 (=> res!354147 e!324376)))

(assert (=> b!562848 (= res!354147 (or (= lt!256899 (select (arr!16956 a!3118) j!142)) (= lt!256899 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562848 (= lt!256899 (select (arr!16956 a!3118) (index!23877 lt!256894)))))

(declare-fun b!562849 () Bool)

(declare-fun res!354142 () Bool)

(assert (=> b!562849 (=> (not res!354142) (not e!324375))))

(assert (=> b!562849 (= res!354142 (and (= (size!17320 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17320 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17320 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562850 () Bool)

(declare-fun res!354141 () Bool)

(assert (=> b!562850 (=> (not res!354141) (not e!324373))))

(assert (=> b!562850 (= res!354141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!51500 res!354145) b!562849))

(assert (= (and b!562849 res!354142) b!562842))

(assert (= (and b!562842 res!354143) b!562844))

(assert (= (and b!562844 res!354150) b!562839))

(assert (= (and b!562839 res!354144) b!562840))

(assert (= (and b!562840 res!354151) b!562850))

(assert (= (and b!562850 res!354141) b!562841))

(assert (= (and b!562841 res!354152) b!562847))

(assert (= (and b!562847 res!354146) b!562846))

(assert (= (and b!562846 (not res!354148)) b!562848))

(assert (= (and b!562848 (not res!354147)) b!562843))

(assert (= (and b!562843 (not res!354149)) b!562845))

(declare-fun m!541111 () Bool)

(assert (=> b!562840 m!541111))

(declare-fun m!541113 () Bool)

(assert (=> b!562848 m!541113))

(declare-fun m!541115 () Bool)

(assert (=> b!562848 m!541115))

(declare-fun m!541117 () Bool)

(assert (=> b!562845 m!541117))

(assert (=> b!562842 m!541113))

(assert (=> b!562842 m!541113))

(declare-fun m!541119 () Bool)

(assert (=> b!562842 m!541119))

(declare-fun m!541121 () Bool)

(assert (=> b!562844 m!541121))

(assert (=> b!562843 m!541113))

(declare-fun m!541123 () Bool)

(assert (=> b!562843 m!541123))

(declare-fun m!541125 () Bool)

(assert (=> b!562843 m!541125))

(declare-fun m!541127 () Bool)

(assert (=> b!562843 m!541127))

(declare-fun m!541129 () Bool)

(assert (=> b!562843 m!541129))

(assert (=> b!562843 m!541113))

(declare-fun m!541131 () Bool)

(assert (=> b!562843 m!541131))

(declare-fun m!541133 () Bool)

(assert (=> b!562850 m!541133))

(declare-fun m!541135 () Bool)

(assert (=> start!51500 m!541135))

(declare-fun m!541137 () Bool)

(assert (=> start!51500 m!541137))

(declare-fun m!541139 () Bool)

(assert (=> b!562839 m!541139))

(assert (=> b!562847 m!541113))

(declare-fun m!541141 () Bool)

(assert (=> b!562847 m!541141))

(assert (=> b!562847 m!541113))

(declare-fun m!541143 () Bool)

(assert (=> b!562847 m!541143))

(declare-fun m!541145 () Bool)

(assert (=> b!562847 m!541145))

(declare-fun m!541147 () Bool)

(assert (=> b!562847 m!541147))

(assert (=> b!562847 m!541113))

(declare-fun m!541149 () Bool)

(assert (=> b!562847 m!541149))

(assert (=> b!562847 m!541127))

(assert (=> b!562846 m!541113))

(assert (=> b!562846 m!541113))

(declare-fun m!541151 () Bool)

(assert (=> b!562846 m!541151))

(declare-fun m!541153 () Bool)

(assert (=> b!562846 m!541153))

(declare-fun m!541155 () Bool)

(assert (=> b!562846 m!541155))

(declare-fun m!541157 () Bool)

(assert (=> b!562841 m!541157))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51398 () Bool)

(assert start!51398)

(declare-fun b!560906 () Bool)

(declare-fun res!352216 () Bool)

(declare-fun e!323210 () Bool)

(assert (=> b!560906 (=> (not res!352216) (not e!323210))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35217 0))(
  ( (array!35218 (arr!16905 (Array (_ BitVec 32) (_ BitVec 64))) (size!17269 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35217)

(assert (=> b!560906 (= res!352216 (and (= (size!17269 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17269 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17269 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560907 () Bool)

(declare-fun e!323208 () Bool)

(declare-fun e!323212 () Bool)

(assert (=> b!560907 (= e!323208 e!323212)))

(declare-fun res!352210 () Bool)

(assert (=> b!560907 (=> res!352210 e!323212)))

(declare-fun lt!255240 () (_ BitVec 64))

(assert (=> b!560907 (= res!352210 (or (= lt!255240 (select (arr!16905 a!3118) j!142)) (= lt!255240 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5361 0))(
  ( (MissingZero!5361 (index!23671 (_ BitVec 32))) (Found!5361 (index!23672 (_ BitVec 32))) (Intermediate!5361 (undefined!6173 Bool) (index!23673 (_ BitVec 32)) (x!52611 (_ BitVec 32))) (Undefined!5361) (MissingVacant!5361 (index!23674 (_ BitVec 32))) )
))
(declare-fun lt!255242 () SeekEntryResult!5361)

(assert (=> b!560907 (= lt!255240 (select (arr!16905 a!3118) (index!23673 lt!255242)))))

(declare-fun b!560908 () Bool)

(declare-fun e!323211 () Bool)

(assert (=> b!560908 (= e!323210 e!323211)))

(declare-fun res!352212 () Bool)

(assert (=> b!560908 (=> (not res!352212) (not e!323211))))

(declare-fun lt!255238 () SeekEntryResult!5361)

(assert (=> b!560908 (= res!352212 (or (= lt!255238 (MissingZero!5361 i!1132)) (= lt!255238 (MissingVacant!5361 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35217 (_ BitVec 32)) SeekEntryResult!5361)

(assert (=> b!560908 (= lt!255238 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!560909 () Bool)

(declare-fun res!352220 () Bool)

(assert (=> b!560909 (=> (not res!352220) (not e!323211))))

(declare-datatypes ((List!11038 0))(
  ( (Nil!11035) (Cons!11034 (h!12037 (_ BitVec 64)) (t!17274 List!11038)) )
))
(declare-fun arrayNoDuplicates!0 (array!35217 (_ BitVec 32) List!11038) Bool)

(assert (=> b!560909 (= res!352220 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11035))))

(declare-fun b!560910 () Bool)

(declare-fun res!352218 () Bool)

(assert (=> b!560910 (=> (not res!352218) (not e!323210))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560910 (= res!352218 (validKeyInArray!0 (select (arr!16905 a!3118) j!142)))))

(declare-fun b!560911 () Bool)

(declare-fun res!352209 () Bool)

(assert (=> b!560911 (=> (not res!352209) (not e!323210))))

(declare-fun arrayContainsKey!0 (array!35217 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560911 (= res!352209 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun lt!255239 () array!35217)

(declare-fun b!560912 () Bool)

(declare-fun e!323205 () Bool)

(declare-fun lt!255237 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35217 (_ BitVec 32)) SeekEntryResult!5361)

(assert (=> b!560912 (= e!323205 (= (seekEntryOrOpen!0 lt!255237 lt!255239 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52611 lt!255242) (index!23673 lt!255242) (index!23673 lt!255242) lt!255237 lt!255239 mask!3119)))))

(declare-fun b!560913 () Bool)

(declare-fun e!323207 () Bool)

(assert (=> b!560913 (= e!323211 e!323207)))

(declare-fun res!352213 () Bool)

(assert (=> b!560913 (=> (not res!352213) (not e!323207))))

(declare-fun lt!255244 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35217 (_ BitVec 32)) SeekEntryResult!5361)

(assert (=> b!560913 (= res!352213 (= lt!255242 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255244 lt!255237 lt!255239 mask!3119)))))

(declare-fun lt!255243 () (_ BitVec 32))

(assert (=> b!560913 (= lt!255242 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255243 (select (arr!16905 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560913 (= lt!255244 (toIndex!0 lt!255237 mask!3119))))

(assert (=> b!560913 (= lt!255237 (select (store (arr!16905 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!560913 (= lt!255243 (toIndex!0 (select (arr!16905 a!3118) j!142) mask!3119))))

(assert (=> b!560913 (= lt!255239 (array!35218 (store (arr!16905 a!3118) i!1132 k!1914) (size!17269 a!3118)))))

(declare-fun b!560914 () Bool)

(declare-fun res!352208 () Bool)

(assert (=> b!560914 (=> (not res!352208) (not e!323211))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35217 (_ BitVec 32)) Bool)

(assert (=> b!560914 (= res!352208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560915 () Bool)

(assert (=> b!560915 (= e!323212 e!323205)))

(declare-fun res!352219 () Bool)

(assert (=> b!560915 (=> (not res!352219) (not e!323205))))

(declare-fun lt!255245 () SeekEntryResult!5361)

(assert (=> b!560915 (= res!352219 (= lt!255245 (seekKeyOrZeroReturnVacant!0 (x!52611 lt!255242) (index!23673 lt!255242) (index!23673 lt!255242) (select (arr!16905 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!560916 () Bool)

(declare-fun e!323209 () Bool)

(assert (=> b!560916 (= e!323209 e!323208)))

(declare-fun res!352214 () Bool)

(assert (=> b!560916 (=> res!352214 e!323208)))

(assert (=> b!560916 (= res!352214 (or (undefined!6173 lt!255242) (not (is-Intermediate!5361 lt!255242))))))

(declare-fun b!560917 () Bool)

(declare-fun res!352215 () Bool)

(assert (=> b!560917 (=> (not res!352215) (not e!323210))))

(assert (=> b!560917 (= res!352215 (validKeyInArray!0 k!1914))))

(declare-fun b!560918 () Bool)

(assert (=> b!560918 (= e!323207 (not true))))

(assert (=> b!560918 e!323209))

(declare-fun res!352217 () Bool)

(assert (=> b!560918 (=> (not res!352217) (not e!323209))))

(assert (=> b!560918 (= res!352217 (= lt!255245 (Found!5361 j!142)))))

(assert (=> b!560918 (= lt!255245 (seekEntryOrOpen!0 (select (arr!16905 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!560918 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17496 0))(
  ( (Unit!17497) )
))
(declare-fun lt!255241 () Unit!17496)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35217 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17496)

(assert (=> b!560918 (= lt!255241 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!352211 () Bool)

(assert (=> start!51398 (=> (not res!352211) (not e!323210))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51398 (= res!352211 (validMask!0 mask!3119))))

(assert (=> start!51398 e!323210))

(assert (=> start!51398 true))

(declare-fun array_inv!12679 (array!35217) Bool)

(assert (=> start!51398 (array_inv!12679 a!3118)))

(assert (= (and start!51398 res!352211) b!560906))

(assert (= (and b!560906 res!352216) b!560910))

(assert (= (and b!560910 res!352218) b!560917))

(assert (= (and b!560917 res!352215) b!560911))

(assert (= (and b!560911 res!352209) b!560908))

(assert (= (and b!560908 res!352212) b!560914))

(assert (= (and b!560914 res!352208) b!560909))

(assert (= (and b!560909 res!352220) b!560913))

(assert (= (and b!560913 res!352213) b!560918))

(assert (= (and b!560918 res!352217) b!560916))

(assert (= (and b!560916 (not res!352214)) b!560907))

(assert (= (and b!560907 (not res!352210)) b!560915))

(assert (= (and b!560915 res!352219) b!560912))

(declare-fun m!538795 () Bool)

(assert (=> b!560912 m!538795))

(declare-fun m!538797 () Bool)

(assert (=> b!560912 m!538797))

(declare-fun m!538799 () Bool)

(assert (=> b!560918 m!538799))

(assert (=> b!560918 m!538799))

(declare-fun m!538801 () Bool)

(assert (=> b!560918 m!538801))

(declare-fun m!538803 () Bool)

(assert (=> b!560918 m!538803))

(declare-fun m!538805 () Bool)

(assert (=> b!560918 m!538805))

(declare-fun m!538807 () Bool)

(assert (=> b!560917 m!538807))

(declare-fun m!538809 () Bool)

(assert (=> b!560909 m!538809))

(assert (=> b!560907 m!538799))

(declare-fun m!538811 () Bool)

(assert (=> b!560907 m!538811))

(declare-fun m!538813 () Bool)

(assert (=> b!560914 m!538813))

(assert (=> b!560910 m!538799))

(assert (=> b!560910 m!538799))

(declare-fun m!538815 () Bool)

(assert (=> b!560910 m!538815))

(declare-fun m!538817 () Bool)

(assert (=> start!51398 m!538817))

(declare-fun m!538819 () Bool)

(assert (=> start!51398 m!538819))

(assert (=> b!560915 m!538799))

(assert (=> b!560915 m!538799))

(declare-fun m!538821 () Bool)

(assert (=> b!560915 m!538821))

(declare-fun m!538823 () Bool)

(assert (=> b!560908 m!538823))

(declare-fun m!538825 () Bool)

(assert (=> b!560911 m!538825))

(assert (=> b!560913 m!538799))

(declare-fun m!538827 () Bool)

(assert (=> b!560913 m!538827))

(assert (=> b!560913 m!538799))

(declare-fun m!538829 () Bool)

(assert (=> b!560913 m!538829))

(declare-fun m!538831 () Bool)

(assert (=> b!560913 m!538831))

(declare-fun m!538833 () Bool)

(assert (=> b!560913 m!538833))

(declare-fun m!538835 () Bool)

(assert (=> b!560913 m!538835))

(assert (=> b!560913 m!538799))

(declare-fun m!538837 () Bool)

(assert (=> b!560913 m!538837))

(push 1)


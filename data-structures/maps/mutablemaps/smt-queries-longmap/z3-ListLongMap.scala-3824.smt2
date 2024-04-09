; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52450 () Bool)

(assert start!52450)

(declare-fun b!572192 () Bool)

(declare-fun e!329139 () Bool)

(declare-fun e!329137 () Bool)

(assert (=> b!572192 (= e!329139 e!329137)))

(declare-fun res!361855 () Bool)

(assert (=> b!572192 (=> (not res!361855) (not e!329137))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5641 0))(
  ( (MissingZero!5641 (index!24791 (_ BitVec 32))) (Found!5641 (index!24792 (_ BitVec 32))) (Intermediate!5641 (undefined!6453 Bool) (index!24793 (_ BitVec 32)) (x!53689 (_ BitVec 32))) (Undefined!5641) (MissingVacant!5641 (index!24794 (_ BitVec 32))) )
))
(declare-fun lt!261166 () SeekEntryResult!5641)

(declare-datatypes ((array!35801 0))(
  ( (array!35802 (arr!17185 (Array (_ BitVec 32) (_ BitVec 64))) (size!17549 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35801)

(declare-fun lt!261170 () SeekEntryResult!5641)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35801 (_ BitVec 32)) SeekEntryResult!5641)

(assert (=> b!572192 (= res!361855 (= lt!261166 (seekKeyOrZeroReturnVacant!0 (x!53689 lt!261170) (index!24793 lt!261170) (index!24793 lt!261170) (select (arr!17185 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!572193 () Bool)

(declare-fun e!329136 () Bool)

(assert (=> b!572193 (= e!329136 e!329139)))

(declare-fun res!361859 () Bool)

(assert (=> b!572193 (=> res!361859 e!329139)))

(declare-fun lt!261164 () (_ BitVec 64))

(assert (=> b!572193 (= res!361859 (or (= lt!261164 (select (arr!17185 a!3118) j!142)) (= lt!261164 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!572193 (= lt!261164 (select (arr!17185 a!3118) (index!24793 lt!261170)))))

(declare-fun b!572194 () Bool)

(declare-fun e!329141 () Bool)

(assert (=> b!572194 (= e!329141 e!329136)))

(declare-fun res!361860 () Bool)

(assert (=> b!572194 (=> res!361860 e!329136)))

(get-info :version)

(assert (=> b!572194 (= res!361860 (or (undefined!6453 lt!261170) (not ((_ is Intermediate!5641) lt!261170))))))

(declare-fun b!572195 () Bool)

(declare-fun e!329143 () Bool)

(assert (=> b!572195 (= e!329143 (not true))))

(assert (=> b!572195 e!329141))

(declare-fun res!361857 () Bool)

(assert (=> b!572195 (=> (not res!361857) (not e!329141))))

(assert (=> b!572195 (= res!361857 (= lt!261166 (Found!5641 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35801 (_ BitVec 32)) SeekEntryResult!5641)

(assert (=> b!572195 (= lt!261166 (seekEntryOrOpen!0 (select (arr!17185 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35801 (_ BitVec 32)) Bool)

(assert (=> b!572195 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17984 0))(
  ( (Unit!17985) )
))
(declare-fun lt!261165 () Unit!17984)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35801 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17984)

(assert (=> b!572195 (= lt!261165 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572196 () Bool)

(declare-fun e!329140 () Bool)

(assert (=> b!572196 (= e!329140 e!329143)))

(declare-fun res!361853 () Bool)

(assert (=> b!572196 (=> (not res!361853) (not e!329143))))

(declare-fun lt!261169 () array!35801)

(declare-fun lt!261163 () (_ BitVec 32))

(declare-fun lt!261168 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35801 (_ BitVec 32)) SeekEntryResult!5641)

(assert (=> b!572196 (= res!361853 (= lt!261170 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261163 lt!261168 lt!261169 mask!3119)))))

(declare-fun lt!261162 () (_ BitVec 32))

(assert (=> b!572196 (= lt!261170 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261162 (select (arr!17185 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572196 (= lt!261163 (toIndex!0 lt!261168 mask!3119))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572196 (= lt!261168 (select (store (arr!17185 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!572196 (= lt!261162 (toIndex!0 (select (arr!17185 a!3118) j!142) mask!3119))))

(assert (=> b!572196 (= lt!261169 (array!35802 (store (arr!17185 a!3118) i!1132 k0!1914) (size!17549 a!3118)))))

(declare-fun b!572197 () Bool)

(declare-fun e!329138 () Bool)

(assert (=> b!572197 (= e!329138 e!329140)))

(declare-fun res!361858 () Bool)

(assert (=> b!572197 (=> (not res!361858) (not e!329140))))

(declare-fun lt!261167 () SeekEntryResult!5641)

(assert (=> b!572197 (= res!361858 (or (= lt!261167 (MissingZero!5641 i!1132)) (= lt!261167 (MissingVacant!5641 i!1132))))))

(assert (=> b!572197 (= lt!261167 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun res!361856 () Bool)

(assert (=> start!52450 (=> (not res!361856) (not e!329138))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52450 (= res!361856 (validMask!0 mask!3119))))

(assert (=> start!52450 e!329138))

(assert (=> start!52450 true))

(declare-fun array_inv!12959 (array!35801) Bool)

(assert (=> start!52450 (array_inv!12959 a!3118)))

(declare-fun b!572198 () Bool)

(declare-fun res!361862 () Bool)

(assert (=> b!572198 (=> (not res!361862) (not e!329138))))

(declare-fun arrayContainsKey!0 (array!35801 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572198 (= res!361862 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!572199 () Bool)

(declare-fun res!361861 () Bool)

(assert (=> b!572199 (=> (not res!361861) (not e!329138))))

(assert (=> b!572199 (= res!361861 (and (= (size!17549 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17549 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17549 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!572200 () Bool)

(declare-fun res!361850 () Bool)

(assert (=> b!572200 (=> (not res!361850) (not e!329138))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572200 (= res!361850 (validKeyInArray!0 (select (arr!17185 a!3118) j!142)))))

(declare-fun b!572201 () Bool)

(declare-fun res!361851 () Bool)

(assert (=> b!572201 (=> (not res!361851) (not e!329138))))

(assert (=> b!572201 (= res!361851 (validKeyInArray!0 k0!1914))))

(declare-fun b!572202 () Bool)

(assert (=> b!572202 (= e!329137 (= (seekEntryOrOpen!0 lt!261168 lt!261169 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53689 lt!261170) (index!24793 lt!261170) (index!24793 lt!261170) lt!261168 lt!261169 mask!3119)))))

(declare-fun b!572203 () Bool)

(declare-fun res!361852 () Bool)

(assert (=> b!572203 (=> (not res!361852) (not e!329140))))

(assert (=> b!572203 (= res!361852 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!572204 () Bool)

(declare-fun res!361854 () Bool)

(assert (=> b!572204 (=> (not res!361854) (not e!329140))))

(declare-datatypes ((List!11318 0))(
  ( (Nil!11315) (Cons!11314 (h!12341 (_ BitVec 64)) (t!17554 List!11318)) )
))
(declare-fun arrayNoDuplicates!0 (array!35801 (_ BitVec 32) List!11318) Bool)

(assert (=> b!572204 (= res!361854 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11315))))

(assert (= (and start!52450 res!361856) b!572199))

(assert (= (and b!572199 res!361861) b!572200))

(assert (= (and b!572200 res!361850) b!572201))

(assert (= (and b!572201 res!361851) b!572198))

(assert (= (and b!572198 res!361862) b!572197))

(assert (= (and b!572197 res!361858) b!572203))

(assert (= (and b!572203 res!361852) b!572204))

(assert (= (and b!572204 res!361854) b!572196))

(assert (= (and b!572196 res!361853) b!572195))

(assert (= (and b!572195 res!361857) b!572194))

(assert (= (and b!572194 (not res!361860)) b!572193))

(assert (= (and b!572193 (not res!361859)) b!572192))

(assert (= (and b!572192 res!361855) b!572202))

(declare-fun m!551199 () Bool)

(assert (=> start!52450 m!551199))

(declare-fun m!551201 () Bool)

(assert (=> start!52450 m!551201))

(declare-fun m!551203 () Bool)

(assert (=> b!572196 m!551203))

(declare-fun m!551205 () Bool)

(assert (=> b!572196 m!551205))

(declare-fun m!551207 () Bool)

(assert (=> b!572196 m!551207))

(assert (=> b!572196 m!551203))

(declare-fun m!551209 () Bool)

(assert (=> b!572196 m!551209))

(declare-fun m!551211 () Bool)

(assert (=> b!572196 m!551211))

(assert (=> b!572196 m!551203))

(declare-fun m!551213 () Bool)

(assert (=> b!572196 m!551213))

(declare-fun m!551215 () Bool)

(assert (=> b!572196 m!551215))

(declare-fun m!551217 () Bool)

(assert (=> b!572204 m!551217))

(assert (=> b!572200 m!551203))

(assert (=> b!572200 m!551203))

(declare-fun m!551219 () Bool)

(assert (=> b!572200 m!551219))

(declare-fun m!551221 () Bool)

(assert (=> b!572201 m!551221))

(assert (=> b!572192 m!551203))

(assert (=> b!572192 m!551203))

(declare-fun m!551223 () Bool)

(assert (=> b!572192 m!551223))

(declare-fun m!551225 () Bool)

(assert (=> b!572202 m!551225))

(declare-fun m!551227 () Bool)

(assert (=> b!572202 m!551227))

(declare-fun m!551229 () Bool)

(assert (=> b!572197 m!551229))

(declare-fun m!551231 () Bool)

(assert (=> b!572198 m!551231))

(declare-fun m!551233 () Bool)

(assert (=> b!572203 m!551233))

(assert (=> b!572193 m!551203))

(declare-fun m!551235 () Bool)

(assert (=> b!572193 m!551235))

(assert (=> b!572195 m!551203))

(assert (=> b!572195 m!551203))

(declare-fun m!551237 () Bool)

(assert (=> b!572195 m!551237))

(declare-fun m!551239 () Bool)

(assert (=> b!572195 m!551239))

(declare-fun m!551241 () Bool)

(assert (=> b!572195 m!551241))

(check-sat (not b!572202) (not b!572201) (not b!572196) (not b!572197) (not b!572195) (not b!572198) (not b!572203) (not b!572200) (not start!52450) (not b!572204) (not b!572192))
(check-sat)

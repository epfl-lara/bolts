; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50862 () Bool)

(assert start!50862)

(declare-fun b!556244 () Bool)

(declare-fun res!348806 () Bool)

(declare-fun e!320468 () Bool)

(assert (=> b!556244 (=> (not res!348806) (not e!320468))))

(declare-datatypes ((array!35041 0))(
  ( (array!35042 (arr!16826 (Array (_ BitVec 32) (_ BitVec 64))) (size!17190 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35041)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35041 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!556244 (= res!348806 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!320467 () Bool)

(declare-fun b!556245 () Bool)

(declare-datatypes ((SeekEntryResult!5282 0))(
  ( (MissingZero!5282 (index!23355 (_ BitVec 32))) (Found!5282 (index!23356 (_ BitVec 32))) (Intermediate!5282 (undefined!6094 Bool) (index!23357 (_ BitVec 32)) (x!52271 (_ BitVec 32))) (Undefined!5282) (MissingVacant!5282 (index!23358 (_ BitVec 32))) )
))
(declare-fun lt!252850 () SeekEntryResult!5282)

(declare-fun mask!3119 () (_ BitVec 32))

(assert (=> b!556245 (= e!320467 (not (or (not (is-Intermediate!5282 lt!252850)) (undefined!6094 lt!252850) (= (select (arr!16826 a!3118) (index!23357 lt!252850)) (select (arr!16826 a!3118) j!142)) (= (select (arr!16826 a!3118) (index!23357 lt!252850)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(declare-fun e!320470 () Bool)

(assert (=> b!556245 e!320470))

(declare-fun res!348813 () Bool)

(assert (=> b!556245 (=> (not res!348813) (not e!320470))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35041 (_ BitVec 32)) Bool)

(assert (=> b!556245 (= res!348813 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17338 0))(
  ( (Unit!17339) )
))
(declare-fun lt!252847 () Unit!17338)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35041 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17338)

(assert (=> b!556245 (= lt!252847 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!556246 () Bool)

(declare-fun e!320469 () Bool)

(assert (=> b!556246 (= e!320468 e!320469)))

(declare-fun res!348807 () Bool)

(assert (=> b!556246 (=> (not res!348807) (not e!320469))))

(declare-fun lt!252848 () SeekEntryResult!5282)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!556246 (= res!348807 (or (= lt!252848 (MissingZero!5282 i!1132)) (= lt!252848 (MissingVacant!5282 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35041 (_ BitVec 32)) SeekEntryResult!5282)

(assert (=> b!556246 (= lt!252848 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!556247 () Bool)

(declare-fun res!348809 () Bool)

(assert (=> b!556247 (=> (not res!348809) (not e!320469))))

(declare-datatypes ((List!10959 0))(
  ( (Nil!10956) (Cons!10955 (h!11940 (_ BitVec 64)) (t!17195 List!10959)) )
))
(declare-fun arrayNoDuplicates!0 (array!35041 (_ BitVec 32) List!10959) Bool)

(assert (=> b!556247 (= res!348809 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10956))))

(declare-fun res!348810 () Bool)

(assert (=> start!50862 (=> (not res!348810) (not e!320468))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50862 (= res!348810 (validMask!0 mask!3119))))

(assert (=> start!50862 e!320468))

(assert (=> start!50862 true))

(declare-fun array_inv!12600 (array!35041) Bool)

(assert (=> start!50862 (array_inv!12600 a!3118)))

(declare-fun b!556248 () Bool)

(declare-fun res!348815 () Bool)

(assert (=> b!556248 (=> (not res!348815) (not e!320468))))

(assert (=> b!556248 (= res!348815 (and (= (size!17190 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17190 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17190 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!556249 () Bool)

(assert (=> b!556249 (= e!320469 e!320467)))

(declare-fun res!348814 () Bool)

(assert (=> b!556249 (=> (not res!348814) (not e!320467))))

(declare-fun lt!252851 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35041 (_ BitVec 32)) SeekEntryResult!5282)

(assert (=> b!556249 (= res!348814 (= lt!252850 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252851 (select (store (arr!16826 a!3118) i!1132 k!1914) j!142) (array!35042 (store (arr!16826 a!3118) i!1132 k!1914) (size!17190 a!3118)) mask!3119)))))

(declare-fun lt!252849 () (_ BitVec 32))

(assert (=> b!556249 (= lt!252850 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252849 (select (arr!16826 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556249 (= lt!252851 (toIndex!0 (select (store (arr!16826 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!556249 (= lt!252849 (toIndex!0 (select (arr!16826 a!3118) j!142) mask!3119))))

(declare-fun b!556250 () Bool)

(declare-fun res!348808 () Bool)

(assert (=> b!556250 (=> (not res!348808) (not e!320469))))

(assert (=> b!556250 (= res!348808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!556251 () Bool)

(declare-fun res!348811 () Bool)

(assert (=> b!556251 (=> (not res!348811) (not e!320468))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!556251 (= res!348811 (validKeyInArray!0 k!1914))))

(declare-fun b!556252 () Bool)

(assert (=> b!556252 (= e!320470 (= (seekEntryOrOpen!0 (select (arr!16826 a!3118) j!142) a!3118 mask!3119) (Found!5282 j!142)))))

(declare-fun b!556253 () Bool)

(declare-fun res!348812 () Bool)

(assert (=> b!556253 (=> (not res!348812) (not e!320468))))

(assert (=> b!556253 (= res!348812 (validKeyInArray!0 (select (arr!16826 a!3118) j!142)))))

(assert (= (and start!50862 res!348810) b!556248))

(assert (= (and b!556248 res!348815) b!556253))

(assert (= (and b!556253 res!348812) b!556251))

(assert (= (and b!556251 res!348811) b!556244))

(assert (= (and b!556244 res!348806) b!556246))

(assert (= (and b!556246 res!348807) b!556250))

(assert (= (and b!556250 res!348808) b!556247))

(assert (= (and b!556247 res!348809) b!556249))

(assert (= (and b!556249 res!348814) b!556245))

(assert (= (and b!556245 res!348813) b!556252))

(declare-fun m!534275 () Bool)

(assert (=> b!556250 m!534275))

(declare-fun m!534277 () Bool)

(assert (=> b!556251 m!534277))

(declare-fun m!534279 () Bool)

(assert (=> b!556246 m!534279))

(declare-fun m!534281 () Bool)

(assert (=> b!556247 m!534281))

(declare-fun m!534283 () Bool)

(assert (=> start!50862 m!534283))

(declare-fun m!534285 () Bool)

(assert (=> start!50862 m!534285))

(declare-fun m!534287 () Bool)

(assert (=> b!556245 m!534287))

(declare-fun m!534289 () Bool)

(assert (=> b!556245 m!534289))

(declare-fun m!534291 () Bool)

(assert (=> b!556245 m!534291))

(declare-fun m!534293 () Bool)

(assert (=> b!556245 m!534293))

(assert (=> b!556253 m!534289))

(assert (=> b!556253 m!534289))

(declare-fun m!534295 () Bool)

(assert (=> b!556253 m!534295))

(declare-fun m!534297 () Bool)

(assert (=> b!556244 m!534297))

(assert (=> b!556252 m!534289))

(assert (=> b!556252 m!534289))

(declare-fun m!534299 () Bool)

(assert (=> b!556252 m!534299))

(assert (=> b!556249 m!534289))

(declare-fun m!534301 () Bool)

(assert (=> b!556249 m!534301))

(declare-fun m!534303 () Bool)

(assert (=> b!556249 m!534303))

(declare-fun m!534305 () Bool)

(assert (=> b!556249 m!534305))

(assert (=> b!556249 m!534289))

(assert (=> b!556249 m!534303))

(assert (=> b!556249 m!534289))

(declare-fun m!534307 () Bool)

(assert (=> b!556249 m!534307))

(declare-fun m!534309 () Bool)

(assert (=> b!556249 m!534309))

(assert (=> b!556249 m!534303))

(declare-fun m!534311 () Bool)

(assert (=> b!556249 m!534311))

(push 1)


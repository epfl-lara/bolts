; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50762 () Bool)

(assert start!50762)

(declare-fun b!554841 () Bool)

(declare-fun res!347404 () Bool)

(declare-fun e!319849 () Bool)

(assert (=> b!554841 (=> (not res!347404) (not e!319849))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554841 (= res!347404 (validKeyInArray!0 k!1914))))

(declare-fun b!554842 () Bool)

(declare-fun res!347411 () Bool)

(declare-fun e!319852 () Bool)

(assert (=> b!554842 (=> (not res!347411) (not e!319852))))

(declare-datatypes ((array!34941 0))(
  ( (array!34942 (arr!16776 (Array (_ BitVec 32) (_ BitVec 64))) (size!17140 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34941)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34941 (_ BitVec 32)) Bool)

(assert (=> b!554842 (= res!347411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554843 () Bool)

(declare-fun res!347403 () Bool)

(assert (=> b!554843 (=> (not res!347403) (not e!319849))))

(declare-fun arrayContainsKey!0 (array!34941 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554843 (= res!347403 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554844 () Bool)

(declare-fun e!319850 () Bool)

(assert (=> b!554844 (= e!319850 (not true))))

(declare-datatypes ((SeekEntryResult!5232 0))(
  ( (MissingZero!5232 (index!23155 (_ BitVec 32))) (Found!5232 (index!23156 (_ BitVec 32))) (Intermediate!5232 (undefined!6044 Bool) (index!23157 (_ BitVec 32)) (x!52093 (_ BitVec 32))) (Undefined!5232) (MissingVacant!5232 (index!23158 (_ BitVec 32))) )
))
(declare-fun lt!252111 () SeekEntryResult!5232)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!252109 () SeekEntryResult!5232)

(assert (=> b!554844 (and (= lt!252111 (Found!5232 j!142)) (or (undefined!6044 lt!252109) (not (is-Intermediate!5232 lt!252109)) (= (select (arr!16776 a!3118) (index!23157 lt!252109)) (select (arr!16776 a!3118) j!142)) (not (= (select (arr!16776 a!3118) (index!23157 lt!252109)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252111 (MissingZero!5232 (index!23157 lt!252109)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34941 (_ BitVec 32)) SeekEntryResult!5232)

(assert (=> b!554844 (= lt!252111 (seekEntryOrOpen!0 (select (arr!16776 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!554844 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17238 0))(
  ( (Unit!17239) )
))
(declare-fun lt!252110 () Unit!17238)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34941 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17238)

(assert (=> b!554844 (= lt!252110 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554845 () Bool)

(assert (=> b!554845 (= e!319849 e!319852)))

(declare-fun res!347408 () Bool)

(assert (=> b!554845 (=> (not res!347408) (not e!319852))))

(declare-fun lt!252113 () SeekEntryResult!5232)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!554845 (= res!347408 (or (= lt!252113 (MissingZero!5232 i!1132)) (= lt!252113 (MissingVacant!5232 i!1132))))))

(assert (=> b!554845 (= lt!252113 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!554846 () Bool)

(declare-fun res!347409 () Bool)

(assert (=> b!554846 (=> (not res!347409) (not e!319849))))

(assert (=> b!554846 (= res!347409 (and (= (size!17140 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17140 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17140 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554848 () Bool)

(declare-fun res!347410 () Bool)

(assert (=> b!554848 (=> (not res!347410) (not e!319852))))

(declare-datatypes ((List!10909 0))(
  ( (Nil!10906) (Cons!10905 (h!11890 (_ BitVec 64)) (t!17145 List!10909)) )
))
(declare-fun arrayNoDuplicates!0 (array!34941 (_ BitVec 32) List!10909) Bool)

(assert (=> b!554848 (= res!347410 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10906))))

(declare-fun b!554849 () Bool)

(assert (=> b!554849 (= e!319852 e!319850)))

(declare-fun res!347407 () Bool)

(assert (=> b!554849 (=> (not res!347407) (not e!319850))))

(declare-fun lt!252112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34941 (_ BitVec 32)) SeekEntryResult!5232)

(assert (=> b!554849 (= res!347407 (= lt!252109 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252112 (select (store (arr!16776 a!3118) i!1132 k!1914) j!142) (array!34942 (store (arr!16776 a!3118) i!1132 k!1914) (size!17140 a!3118)) mask!3119)))))

(declare-fun lt!252108 () (_ BitVec 32))

(assert (=> b!554849 (= lt!252109 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252108 (select (arr!16776 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554849 (= lt!252112 (toIndex!0 (select (store (arr!16776 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!554849 (= lt!252108 (toIndex!0 (select (arr!16776 a!3118) j!142) mask!3119))))

(declare-fun b!554847 () Bool)

(declare-fun res!347406 () Bool)

(assert (=> b!554847 (=> (not res!347406) (not e!319849))))

(assert (=> b!554847 (= res!347406 (validKeyInArray!0 (select (arr!16776 a!3118) j!142)))))

(declare-fun res!347405 () Bool)

(assert (=> start!50762 (=> (not res!347405) (not e!319849))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50762 (= res!347405 (validMask!0 mask!3119))))

(assert (=> start!50762 e!319849))

(assert (=> start!50762 true))

(declare-fun array_inv!12550 (array!34941) Bool)

(assert (=> start!50762 (array_inv!12550 a!3118)))

(assert (= (and start!50762 res!347405) b!554846))

(assert (= (and b!554846 res!347409) b!554847))

(assert (= (and b!554847 res!347406) b!554841))

(assert (= (and b!554841 res!347404) b!554843))

(assert (= (and b!554843 res!347403) b!554845))

(assert (= (and b!554845 res!347408) b!554842))

(assert (= (and b!554842 res!347411) b!554848))

(assert (= (and b!554848 res!347410) b!554849))

(assert (= (and b!554849 res!347407) b!554844))

(declare-fun m!532399 () Bool)

(assert (=> b!554844 m!532399))

(declare-fun m!532401 () Bool)

(assert (=> b!554844 m!532401))

(declare-fun m!532403 () Bool)

(assert (=> b!554844 m!532403))

(declare-fun m!532405 () Bool)

(assert (=> b!554844 m!532405))

(assert (=> b!554844 m!532399))

(declare-fun m!532407 () Bool)

(assert (=> b!554844 m!532407))

(assert (=> b!554847 m!532399))

(assert (=> b!554847 m!532399))

(declare-fun m!532409 () Bool)

(assert (=> b!554847 m!532409))

(assert (=> b!554849 m!532399))

(declare-fun m!532411 () Bool)

(assert (=> b!554849 m!532411))

(assert (=> b!554849 m!532399))

(declare-fun m!532413 () Bool)

(assert (=> b!554849 m!532413))

(assert (=> b!554849 m!532399))

(declare-fun m!532415 () Bool)

(assert (=> b!554849 m!532415))

(assert (=> b!554849 m!532415))

(declare-fun m!532417 () Bool)

(assert (=> b!554849 m!532417))

(declare-fun m!532419 () Bool)

(assert (=> b!554849 m!532419))

(assert (=> b!554849 m!532415))

(declare-fun m!532421 () Bool)

(assert (=> b!554849 m!532421))

(declare-fun m!532423 () Bool)

(assert (=> b!554841 m!532423))

(declare-fun m!532425 () Bool)

(assert (=> b!554843 m!532425))

(declare-fun m!532427 () Bool)

(assert (=> start!50762 m!532427))

(declare-fun m!532429 () Bool)

(assert (=> start!50762 m!532429))

(declare-fun m!532431 () Bool)

(assert (=> b!554842 m!532431))

(declare-fun m!532433 () Bool)

(assert (=> b!554848 m!532433))

(declare-fun m!532435 () Bool)

(assert (=> b!554845 m!532435))

(push 1)


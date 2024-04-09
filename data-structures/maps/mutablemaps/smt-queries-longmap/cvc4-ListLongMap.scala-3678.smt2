; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50706 () Bool)

(assert start!50706)

(declare-fun b!554057 () Bool)

(declare-fun res!346624 () Bool)

(declare-fun e!319505 () Bool)

(assert (=> b!554057 (=> (not res!346624) (not e!319505))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34885 0))(
  ( (array!34886 (arr!16748 (Array (_ BitVec 32) (_ BitVec 64))) (size!17112 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34885)

(assert (=> b!554057 (= res!346624 (and (= (size!17112 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17112 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17112 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554059 () Bool)

(declare-fun res!346627 () Bool)

(assert (=> b!554059 (=> (not res!346627) (not e!319505))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554059 (= res!346627 (validKeyInArray!0 k!1914))))

(declare-fun b!554060 () Bool)

(declare-fun e!319504 () Bool)

(assert (=> b!554060 (= e!319504 (not true))))

(declare-fun e!319506 () Bool)

(assert (=> b!554060 e!319506))

(declare-fun res!346621 () Bool)

(assert (=> b!554060 (=> (not res!346621) (not e!319506))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34885 (_ BitVec 32)) Bool)

(assert (=> b!554060 (= res!346621 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17182 0))(
  ( (Unit!17183) )
))
(declare-fun lt!251690 () Unit!17182)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34885 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17182)

(assert (=> b!554060 (= lt!251690 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554061 () Bool)

(declare-fun res!346620 () Bool)

(assert (=> b!554061 (=> (not res!346620) (not e!319504))))

(assert (=> b!554061 (= res!346620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554062 () Bool)

(declare-datatypes ((SeekEntryResult!5204 0))(
  ( (MissingZero!5204 (index!23043 (_ BitVec 32))) (Found!5204 (index!23044 (_ BitVec 32))) (Intermediate!5204 (undefined!6016 Bool) (index!23045 (_ BitVec 32)) (x!51985 (_ BitVec 32))) (Undefined!5204) (MissingVacant!5204 (index!23046 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34885 (_ BitVec 32)) SeekEntryResult!5204)

(assert (=> b!554062 (= e!319506 (= (seekEntryOrOpen!0 (select (arr!16748 a!3118) j!142) a!3118 mask!3119) (Found!5204 j!142)))))

(declare-fun b!554063 () Bool)

(declare-fun res!346622 () Bool)

(assert (=> b!554063 (=> (not res!346622) (not e!319505))))

(declare-fun arrayContainsKey!0 (array!34885 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554063 (= res!346622 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554064 () Bool)

(assert (=> b!554064 (= e!319505 e!319504)))

(declare-fun res!346625 () Bool)

(assert (=> b!554064 (=> (not res!346625) (not e!319504))))

(declare-fun lt!251689 () SeekEntryResult!5204)

(assert (=> b!554064 (= res!346625 (or (= lt!251689 (MissingZero!5204 i!1132)) (= lt!251689 (MissingVacant!5204 i!1132))))))

(assert (=> b!554064 (= lt!251689 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!554065 () Bool)

(declare-fun res!346628 () Bool)

(assert (=> b!554065 (=> (not res!346628) (not e!319505))))

(assert (=> b!554065 (= res!346628 (validKeyInArray!0 (select (arr!16748 a!3118) j!142)))))

(declare-fun b!554066 () Bool)

(declare-fun res!346619 () Bool)

(assert (=> b!554066 (=> (not res!346619) (not e!319504))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34885 (_ BitVec 32)) SeekEntryResult!5204)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554066 (= res!346619 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16748 a!3118) j!142) mask!3119) (select (arr!16748 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16748 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16748 a!3118) i!1132 k!1914) j!142) (array!34886 (store (arr!16748 a!3118) i!1132 k!1914) (size!17112 a!3118)) mask!3119)))))

(declare-fun res!346623 () Bool)

(assert (=> start!50706 (=> (not res!346623) (not e!319505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50706 (= res!346623 (validMask!0 mask!3119))))

(assert (=> start!50706 e!319505))

(assert (=> start!50706 true))

(declare-fun array_inv!12522 (array!34885) Bool)

(assert (=> start!50706 (array_inv!12522 a!3118)))

(declare-fun b!554058 () Bool)

(declare-fun res!346626 () Bool)

(assert (=> b!554058 (=> (not res!346626) (not e!319504))))

(declare-datatypes ((List!10881 0))(
  ( (Nil!10878) (Cons!10877 (h!11862 (_ BitVec 64)) (t!17117 List!10881)) )
))
(declare-fun arrayNoDuplicates!0 (array!34885 (_ BitVec 32) List!10881) Bool)

(assert (=> b!554058 (= res!346626 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10878))))

(assert (= (and start!50706 res!346623) b!554057))

(assert (= (and b!554057 res!346624) b!554065))

(assert (= (and b!554065 res!346628) b!554059))

(assert (= (and b!554059 res!346627) b!554063))

(assert (= (and b!554063 res!346622) b!554064))

(assert (= (and b!554064 res!346625) b!554061))

(assert (= (and b!554061 res!346620) b!554058))

(assert (= (and b!554058 res!346626) b!554066))

(assert (= (and b!554066 res!346619) b!554060))

(assert (= (and b!554060 res!346621) b!554062))

(declare-fun m!531349 () Bool)

(assert (=> b!554065 m!531349))

(assert (=> b!554065 m!531349))

(declare-fun m!531351 () Bool)

(assert (=> b!554065 m!531351))

(declare-fun m!531353 () Bool)

(assert (=> b!554059 m!531353))

(declare-fun m!531355 () Bool)

(assert (=> b!554061 m!531355))

(declare-fun m!531357 () Bool)

(assert (=> b!554058 m!531357))

(declare-fun m!531359 () Bool)

(assert (=> b!554063 m!531359))

(declare-fun m!531361 () Bool)

(assert (=> start!50706 m!531361))

(declare-fun m!531363 () Bool)

(assert (=> start!50706 m!531363))

(assert (=> b!554062 m!531349))

(assert (=> b!554062 m!531349))

(declare-fun m!531365 () Bool)

(assert (=> b!554062 m!531365))

(assert (=> b!554066 m!531349))

(declare-fun m!531367 () Bool)

(assert (=> b!554066 m!531367))

(assert (=> b!554066 m!531349))

(declare-fun m!531369 () Bool)

(assert (=> b!554066 m!531369))

(declare-fun m!531371 () Bool)

(assert (=> b!554066 m!531371))

(assert (=> b!554066 m!531369))

(declare-fun m!531373 () Bool)

(assert (=> b!554066 m!531373))

(assert (=> b!554066 m!531367))

(assert (=> b!554066 m!531349))

(declare-fun m!531375 () Bool)

(assert (=> b!554066 m!531375))

(declare-fun m!531377 () Bool)

(assert (=> b!554066 m!531377))

(assert (=> b!554066 m!531369))

(assert (=> b!554066 m!531371))

(declare-fun m!531379 () Bool)

(assert (=> b!554060 m!531379))

(declare-fun m!531381 () Bool)

(assert (=> b!554060 m!531381))

(declare-fun m!531383 () Bool)

(assert (=> b!554064 m!531383))

(push 1)


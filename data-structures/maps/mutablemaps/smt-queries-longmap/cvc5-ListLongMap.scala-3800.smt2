; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52172 () Bool)

(assert start!52172)

(declare-fun res!359215 () Bool)

(declare-fun e!327385 () Bool)

(assert (=> start!52172 (=> (not res!359215) (not e!327385))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52172 (= res!359215 (validMask!0 mask!3119))))

(assert (=> start!52172 e!327385))

(assert (=> start!52172 true))

(declare-datatypes ((array!35649 0))(
  ( (array!35650 (arr!17112 (Array (_ BitVec 32) (_ BitVec 64))) (size!17476 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35649)

(declare-fun array_inv!12886 (array!35649) Bool)

(assert (=> start!52172 (array_inv!12886 a!3118)))

(declare-fun b!569043 () Bool)

(declare-fun e!327383 () Bool)

(assert (=> b!569043 (= e!327383 (not true))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5568 0))(
  ( (MissingZero!5568 (index!24499 (_ BitVec 32))) (Found!5568 (index!24500 (_ BitVec 32))) (Intermediate!5568 (undefined!6380 Bool) (index!24501 (_ BitVec 32)) (x!53406 (_ BitVec 32))) (Undefined!5568) (MissingVacant!5568 (index!24502 (_ BitVec 32))) )
))
(declare-fun lt!259373 () SeekEntryResult!5568)

(declare-fun lt!259371 () SeekEntryResult!5568)

(assert (=> b!569043 (and (= lt!259373 (Found!5568 j!142)) (or (undefined!6380 lt!259371) (not (is-Intermediate!5568 lt!259371)) (= (select (arr!17112 a!3118) (index!24501 lt!259371)) (select (arr!17112 a!3118) j!142)) (not (= (select (arr!17112 a!3118) (index!24501 lt!259371)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259373 (MissingZero!5568 (index!24501 lt!259371)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35649 (_ BitVec 32)) SeekEntryResult!5568)

(assert (=> b!569043 (= lt!259373 (seekEntryOrOpen!0 (select (arr!17112 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35649 (_ BitVec 32)) Bool)

(assert (=> b!569043 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17838 0))(
  ( (Unit!17839) )
))
(declare-fun lt!259376 () Unit!17838)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35649 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17838)

(assert (=> b!569043 (= lt!259376 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569044 () Bool)

(declare-fun res!359218 () Bool)

(assert (=> b!569044 (=> (not res!359218) (not e!327385))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569044 (= res!359218 (validKeyInArray!0 k!1914))))

(declare-fun b!569045 () Bool)

(declare-fun res!359212 () Bool)

(assert (=> b!569045 (=> (not res!359212) (not e!327385))))

(assert (=> b!569045 (= res!359212 (validKeyInArray!0 (select (arr!17112 a!3118) j!142)))))

(declare-fun b!569046 () Bool)

(declare-fun res!359211 () Bool)

(declare-fun e!327382 () Bool)

(assert (=> b!569046 (=> (not res!359211) (not e!327382))))

(assert (=> b!569046 (= res!359211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569047 () Bool)

(declare-fun res!359216 () Bool)

(assert (=> b!569047 (=> (not res!359216) (not e!327382))))

(declare-datatypes ((List!11245 0))(
  ( (Nil!11242) (Cons!11241 (h!12262 (_ BitVec 64)) (t!17481 List!11245)) )
))
(declare-fun arrayNoDuplicates!0 (array!35649 (_ BitVec 32) List!11245) Bool)

(assert (=> b!569047 (= res!359216 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11242))))

(declare-fun b!569048 () Bool)

(declare-fun res!359214 () Bool)

(assert (=> b!569048 (=> (not res!359214) (not e!327385))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!569048 (= res!359214 (and (= (size!17476 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17476 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17476 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569049 () Bool)

(declare-fun res!359213 () Bool)

(assert (=> b!569049 (=> (not res!359213) (not e!327385))))

(declare-fun arrayContainsKey!0 (array!35649 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569049 (= res!359213 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569050 () Bool)

(assert (=> b!569050 (= e!327382 e!327383)))

(declare-fun res!359219 () Bool)

(assert (=> b!569050 (=> (not res!359219) (not e!327383))))

(declare-fun lt!259374 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35649 (_ BitVec 32)) SeekEntryResult!5568)

(assert (=> b!569050 (= res!359219 (= lt!259371 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259374 (select (store (arr!17112 a!3118) i!1132 k!1914) j!142) (array!35650 (store (arr!17112 a!3118) i!1132 k!1914) (size!17476 a!3118)) mask!3119)))))

(declare-fun lt!259372 () (_ BitVec 32))

(assert (=> b!569050 (= lt!259371 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259372 (select (arr!17112 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569050 (= lt!259374 (toIndex!0 (select (store (arr!17112 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!569050 (= lt!259372 (toIndex!0 (select (arr!17112 a!3118) j!142) mask!3119))))

(declare-fun b!569051 () Bool)

(assert (=> b!569051 (= e!327385 e!327382)))

(declare-fun res!359217 () Bool)

(assert (=> b!569051 (=> (not res!359217) (not e!327382))))

(declare-fun lt!259375 () SeekEntryResult!5568)

(assert (=> b!569051 (= res!359217 (or (= lt!259375 (MissingZero!5568 i!1132)) (= lt!259375 (MissingVacant!5568 i!1132))))))

(assert (=> b!569051 (= lt!259375 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!52172 res!359215) b!569048))

(assert (= (and b!569048 res!359214) b!569045))

(assert (= (and b!569045 res!359212) b!569044))

(assert (= (and b!569044 res!359218) b!569049))

(assert (= (and b!569049 res!359213) b!569051))

(assert (= (and b!569051 res!359217) b!569046))

(assert (= (and b!569046 res!359211) b!569047))

(assert (= (and b!569047 res!359216) b!569050))

(assert (= (and b!569050 res!359219) b!569043))

(declare-fun m!547729 () Bool)

(assert (=> b!569043 m!547729))

(declare-fun m!547731 () Bool)

(assert (=> b!569043 m!547731))

(declare-fun m!547733 () Bool)

(assert (=> b!569043 m!547733))

(declare-fun m!547735 () Bool)

(assert (=> b!569043 m!547735))

(assert (=> b!569043 m!547731))

(declare-fun m!547737 () Bool)

(assert (=> b!569043 m!547737))

(assert (=> b!569045 m!547731))

(assert (=> b!569045 m!547731))

(declare-fun m!547739 () Bool)

(assert (=> b!569045 m!547739))

(declare-fun m!547741 () Bool)

(assert (=> b!569046 m!547741))

(declare-fun m!547743 () Bool)

(assert (=> b!569044 m!547743))

(assert (=> b!569050 m!547731))

(declare-fun m!547745 () Bool)

(assert (=> b!569050 m!547745))

(declare-fun m!547747 () Bool)

(assert (=> b!569050 m!547747))

(declare-fun m!547749 () Bool)

(assert (=> b!569050 m!547749))

(assert (=> b!569050 m!547731))

(assert (=> b!569050 m!547747))

(assert (=> b!569050 m!547731))

(declare-fun m!547751 () Bool)

(assert (=> b!569050 m!547751))

(declare-fun m!547753 () Bool)

(assert (=> b!569050 m!547753))

(assert (=> b!569050 m!547747))

(declare-fun m!547755 () Bool)

(assert (=> b!569050 m!547755))

(declare-fun m!547757 () Bool)

(assert (=> b!569049 m!547757))

(declare-fun m!547759 () Bool)

(assert (=> b!569047 m!547759))

(declare-fun m!547761 () Bool)

(assert (=> b!569051 m!547761))

(declare-fun m!547763 () Bool)

(assert (=> start!52172 m!547763))

(declare-fun m!547765 () Bool)

(assert (=> start!52172 m!547765))

(push 1)


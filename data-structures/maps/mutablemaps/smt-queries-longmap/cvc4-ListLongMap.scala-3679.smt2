; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50712 () Bool)

(assert start!50712)

(declare-fun b!554147 () Bool)

(declare-fun res!346711 () Bool)

(declare-fun e!319549 () Bool)

(assert (=> b!554147 (=> (not res!346711) (not e!319549))))

(declare-datatypes ((array!34891 0))(
  ( (array!34892 (arr!16751 (Array (_ BitVec 32) (_ BitVec 64))) (size!17115 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34891)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34891 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554147 (= res!346711 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554148 () Bool)

(declare-fun res!346714 () Bool)

(assert (=> b!554148 (=> (not res!346714) (not e!319549))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!554148 (= res!346714 (and (= (size!17115 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17115 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17115 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554149 () Bool)

(declare-datatypes ((SeekEntryResult!5207 0))(
  ( (MissingZero!5207 (index!23055 (_ BitVec 32))) (Found!5207 (index!23056 (_ BitVec 32))) (Intermediate!5207 (undefined!6019 Bool) (index!23057 (_ BitVec 32)) (x!51996 (_ BitVec 32))) (Undefined!5207) (MissingVacant!5207 (index!23058 (_ BitVec 32))) )
))
(declare-fun lt!251731 () SeekEntryResult!5207)

(declare-fun e!319551 () Bool)

(assert (=> b!554149 (= e!319551 (not (or (not (is-Intermediate!5207 lt!251731)) (undefined!6019 lt!251731) (= (select (arr!16751 a!3118) (index!23057 lt!251731)) (select (arr!16751 a!3118) j!142)) (not (= (select (arr!16751 a!3118) (index!23057 lt!251731)) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(declare-fun e!319548 () Bool)

(assert (=> b!554149 e!319548))

(declare-fun res!346713 () Bool)

(assert (=> b!554149 (=> (not res!346713) (not e!319548))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34891 (_ BitVec 32)) Bool)

(assert (=> b!554149 (= res!346713 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17188 0))(
  ( (Unit!17189) )
))
(declare-fun lt!251732 () Unit!17188)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34891 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17188)

(assert (=> b!554149 (= lt!251732 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554150 () Bool)

(declare-fun res!346715 () Bool)

(assert (=> b!554150 (=> (not res!346715) (not e!319549))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554150 (= res!346715 (validKeyInArray!0 k!1914))))

(declare-fun res!346718 () Bool)

(assert (=> start!50712 (=> (not res!346718) (not e!319549))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50712 (= res!346718 (validMask!0 mask!3119))))

(assert (=> start!50712 e!319549))

(assert (=> start!50712 true))

(declare-fun array_inv!12525 (array!34891) Bool)

(assert (=> start!50712 (array_inv!12525 a!3118)))

(declare-fun b!554151 () Bool)

(declare-fun res!346716 () Bool)

(declare-fun e!319550 () Bool)

(assert (=> b!554151 (=> (not res!346716) (not e!319550))))

(declare-datatypes ((List!10884 0))(
  ( (Nil!10881) (Cons!10880 (h!11865 (_ BitVec 64)) (t!17120 List!10884)) )
))
(declare-fun arrayNoDuplicates!0 (array!34891 (_ BitVec 32) List!10884) Bool)

(assert (=> b!554151 (= res!346716 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10881))))

(declare-fun b!554152 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34891 (_ BitVec 32)) SeekEntryResult!5207)

(assert (=> b!554152 (= e!319548 (= (seekEntryOrOpen!0 (select (arr!16751 a!3118) j!142) a!3118 mask!3119) (Found!5207 j!142)))))

(declare-fun b!554153 () Bool)

(declare-fun res!346717 () Bool)

(assert (=> b!554153 (=> (not res!346717) (not e!319550))))

(assert (=> b!554153 (= res!346717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554154 () Bool)

(assert (=> b!554154 (= e!319549 e!319550)))

(declare-fun res!346709 () Bool)

(assert (=> b!554154 (=> (not res!346709) (not e!319550))))

(declare-fun lt!251735 () SeekEntryResult!5207)

(assert (=> b!554154 (= res!346709 (or (= lt!251735 (MissingZero!5207 i!1132)) (= lt!251735 (MissingVacant!5207 i!1132))))))

(assert (=> b!554154 (= lt!251735 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!554155 () Bool)

(assert (=> b!554155 (= e!319550 e!319551)))

(declare-fun res!346710 () Bool)

(assert (=> b!554155 (=> (not res!346710) (not e!319551))))

(declare-fun lt!251734 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34891 (_ BitVec 32)) SeekEntryResult!5207)

(assert (=> b!554155 (= res!346710 (= lt!251731 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251734 (select (store (arr!16751 a!3118) i!1132 k!1914) j!142) (array!34892 (store (arr!16751 a!3118) i!1132 k!1914) (size!17115 a!3118)) mask!3119)))))

(declare-fun lt!251733 () (_ BitVec 32))

(assert (=> b!554155 (= lt!251731 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251733 (select (arr!16751 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554155 (= lt!251734 (toIndex!0 (select (store (arr!16751 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!554155 (= lt!251733 (toIndex!0 (select (arr!16751 a!3118) j!142) mask!3119))))

(declare-fun b!554156 () Bool)

(declare-fun res!346712 () Bool)

(assert (=> b!554156 (=> (not res!346712) (not e!319549))))

(assert (=> b!554156 (= res!346712 (validKeyInArray!0 (select (arr!16751 a!3118) j!142)))))

(assert (= (and start!50712 res!346718) b!554148))

(assert (= (and b!554148 res!346714) b!554156))

(assert (= (and b!554156 res!346712) b!554150))

(assert (= (and b!554150 res!346715) b!554147))

(assert (= (and b!554147 res!346711) b!554154))

(assert (= (and b!554154 res!346709) b!554153))

(assert (= (and b!554153 res!346717) b!554151))

(assert (= (and b!554151 res!346716) b!554155))

(assert (= (and b!554155 res!346710) b!554149))

(assert (= (and b!554149 res!346713) b!554152))

(declare-fun m!531461 () Bool)

(assert (=> start!50712 m!531461))

(declare-fun m!531463 () Bool)

(assert (=> start!50712 m!531463))

(declare-fun m!531465 () Bool)

(assert (=> b!554154 m!531465))

(declare-fun m!531467 () Bool)

(assert (=> b!554153 m!531467))

(declare-fun m!531469 () Bool)

(assert (=> b!554155 m!531469))

(declare-fun m!531471 () Bool)

(assert (=> b!554155 m!531471))

(assert (=> b!554155 m!531469))

(declare-fun m!531473 () Bool)

(assert (=> b!554155 m!531473))

(assert (=> b!554155 m!531469))

(declare-fun m!531475 () Bool)

(assert (=> b!554155 m!531475))

(declare-fun m!531477 () Bool)

(assert (=> b!554155 m!531477))

(assert (=> b!554155 m!531473))

(declare-fun m!531479 () Bool)

(assert (=> b!554155 m!531479))

(assert (=> b!554155 m!531473))

(declare-fun m!531481 () Bool)

(assert (=> b!554155 m!531481))

(assert (=> b!554156 m!531469))

(assert (=> b!554156 m!531469))

(declare-fun m!531483 () Bool)

(assert (=> b!554156 m!531483))

(declare-fun m!531485 () Bool)

(assert (=> b!554149 m!531485))

(assert (=> b!554149 m!531469))

(declare-fun m!531487 () Bool)

(assert (=> b!554149 m!531487))

(declare-fun m!531489 () Bool)

(assert (=> b!554149 m!531489))

(declare-fun m!531491 () Bool)

(assert (=> b!554147 m!531491))

(declare-fun m!531493 () Bool)

(assert (=> b!554151 m!531493))

(assert (=> b!554152 m!531469))

(assert (=> b!554152 m!531469))

(declare-fun m!531495 () Bool)

(assert (=> b!554152 m!531495))

(declare-fun m!531497 () Bool)

(assert (=> b!554150 m!531497))

(push 1)

(assert (not b!554156))

(assert (not b!554147))

(assert (not b!554151))

(assert (not start!50712))

(assert (not b!554150))

(assert (not b!554152))

(assert (not b!554155))

(assert (not b!554153))

(assert (not b!554149))

(assert (not b!554154))

(check-sat)

(pop 1)

(push 1)

(check-sat)


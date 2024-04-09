; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50820 () Bool)

(assert start!50820)

(declare-fun b!555624 () Bool)

(declare-fun res!348190 () Bool)

(declare-fun e!320198 () Bool)

(assert (=> b!555624 (=> (not res!348190) (not e!320198))))

(declare-datatypes ((array!34999 0))(
  ( (array!35000 (arr!16805 (Array (_ BitVec 32) (_ BitVec 64))) (size!17169 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34999)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34999 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555624 (= res!348190 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555625 () Bool)

(declare-fun res!348193 () Bool)

(assert (=> b!555625 (=> (not res!348193) (not e!320198))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555625 (= res!348193 (validKeyInArray!0 k!1914))))

(declare-fun b!555626 () Bool)

(declare-fun res!348194 () Bool)

(assert (=> b!555626 (=> (not res!348194) (not e!320198))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!555626 (= res!348194 (and (= (size!17169 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17169 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17169 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!348187 () Bool)

(assert (=> start!50820 (=> (not res!348187) (not e!320198))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50820 (= res!348187 (validMask!0 mask!3119))))

(assert (=> start!50820 e!320198))

(assert (=> start!50820 true))

(declare-fun array_inv!12579 (array!34999) Bool)

(assert (=> start!50820 (array_inv!12579 a!3118)))

(declare-fun b!555627 () Bool)

(declare-fun e!320197 () Bool)

(assert (=> b!555627 (= e!320198 e!320197)))

(declare-fun res!348186 () Bool)

(assert (=> b!555627 (=> (not res!348186) (not e!320197))))

(declare-datatypes ((SeekEntryResult!5261 0))(
  ( (MissingZero!5261 (index!23271 (_ BitVec 32))) (Found!5261 (index!23272 (_ BitVec 32))) (Intermediate!5261 (undefined!6073 Bool) (index!23273 (_ BitVec 32)) (x!52194 (_ BitVec 32))) (Undefined!5261) (MissingVacant!5261 (index!23274 (_ BitVec 32))) )
))
(declare-fun lt!252634 () SeekEntryResult!5261)

(assert (=> b!555627 (= res!348186 (or (= lt!252634 (MissingZero!5261 i!1132)) (= lt!252634 (MissingVacant!5261 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34999 (_ BitVec 32)) SeekEntryResult!5261)

(assert (=> b!555627 (= lt!252634 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!555628 () Bool)

(declare-fun res!348192 () Bool)

(assert (=> b!555628 (=> (not res!348192) (not e!320197))))

(declare-datatypes ((List!10938 0))(
  ( (Nil!10935) (Cons!10934 (h!11919 (_ BitVec 64)) (t!17174 List!10938)) )
))
(declare-fun arrayNoDuplicates!0 (array!34999 (_ BitVec 32) List!10938) Bool)

(assert (=> b!555628 (= res!348192 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10935))))

(declare-fun b!555629 () Bool)

(declare-fun res!348191 () Bool)

(assert (=> b!555629 (=> (not res!348191) (not e!320197))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34999 (_ BitVec 32)) Bool)

(assert (=> b!555629 (= res!348191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555630 () Bool)

(declare-fun e!320200 () Bool)

(assert (=> b!555630 (= e!320197 e!320200)))

(declare-fun res!348188 () Bool)

(assert (=> b!555630 (=> (not res!348188) (not e!320200))))

(declare-fun lt!252632 () (_ BitVec 32))

(declare-fun lt!252631 () SeekEntryResult!5261)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34999 (_ BitVec 32)) SeekEntryResult!5261)

(assert (=> b!555630 (= res!348188 (= lt!252631 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252632 (select (store (arr!16805 a!3118) i!1132 k!1914) j!142) (array!35000 (store (arr!16805 a!3118) i!1132 k!1914) (size!17169 a!3118)) mask!3119)))))

(declare-fun lt!252630 () (_ BitVec 32))

(assert (=> b!555630 (= lt!252631 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252630 (select (arr!16805 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555630 (= lt!252632 (toIndex!0 (select (store (arr!16805 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!555630 (= lt!252630 (toIndex!0 (select (arr!16805 a!3118) j!142) mask!3119))))

(declare-fun b!555631 () Bool)

(declare-fun res!348189 () Bool)

(assert (=> b!555631 (=> (not res!348189) (not e!320198))))

(assert (=> b!555631 (= res!348189 (validKeyInArray!0 (select (arr!16805 a!3118) j!142)))))

(declare-fun b!555632 () Bool)

(assert (=> b!555632 (= e!320200 (not true))))

(declare-fun lt!252635 () SeekEntryResult!5261)

(assert (=> b!555632 (and (= lt!252635 (Found!5261 j!142)) (or (undefined!6073 lt!252631) (not (is-Intermediate!5261 lt!252631)) (= (select (arr!16805 a!3118) (index!23273 lt!252631)) (select (arr!16805 a!3118) j!142)) (not (= (select (arr!16805 a!3118) (index!23273 lt!252631)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252635 (MissingZero!5261 (index!23273 lt!252631)))))))

(assert (=> b!555632 (= lt!252635 (seekEntryOrOpen!0 (select (arr!16805 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!555632 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17296 0))(
  ( (Unit!17297) )
))
(declare-fun lt!252633 () Unit!17296)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34999 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17296)

(assert (=> b!555632 (= lt!252633 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!50820 res!348187) b!555626))

(assert (= (and b!555626 res!348194) b!555631))

(assert (= (and b!555631 res!348189) b!555625))

(assert (= (and b!555625 res!348193) b!555624))

(assert (= (and b!555624 res!348190) b!555627))

(assert (= (and b!555627 res!348186) b!555629))

(assert (= (and b!555629 res!348191) b!555628))

(assert (= (and b!555628 res!348192) b!555630))

(assert (= (and b!555630 res!348188) b!555632))

(declare-fun m!533501 () Bool)

(assert (=> b!555632 m!533501))

(declare-fun m!533503 () Bool)

(assert (=> b!555632 m!533503))

(declare-fun m!533505 () Bool)

(assert (=> b!555632 m!533505))

(declare-fun m!533507 () Bool)

(assert (=> b!555632 m!533507))

(assert (=> b!555632 m!533501))

(declare-fun m!533509 () Bool)

(assert (=> b!555632 m!533509))

(declare-fun m!533511 () Bool)

(assert (=> b!555628 m!533511))

(declare-fun m!533513 () Bool)

(assert (=> b!555624 m!533513))

(declare-fun m!533515 () Bool)

(assert (=> start!50820 m!533515))

(declare-fun m!533517 () Bool)

(assert (=> start!50820 m!533517))

(assert (=> b!555630 m!533501))

(declare-fun m!533519 () Bool)

(assert (=> b!555630 m!533519))

(assert (=> b!555630 m!533519))

(declare-fun m!533521 () Bool)

(assert (=> b!555630 m!533521))

(declare-fun m!533523 () Bool)

(assert (=> b!555630 m!533523))

(assert (=> b!555630 m!533519))

(declare-fun m!533525 () Bool)

(assert (=> b!555630 m!533525))

(assert (=> b!555630 m!533501))

(declare-fun m!533527 () Bool)

(assert (=> b!555630 m!533527))

(assert (=> b!555630 m!533501))

(declare-fun m!533529 () Bool)

(assert (=> b!555630 m!533529))

(declare-fun m!533531 () Bool)

(assert (=> b!555629 m!533531))

(declare-fun m!533533 () Bool)

(assert (=> b!555627 m!533533))

(declare-fun m!533535 () Bool)

(assert (=> b!555625 m!533535))

(assert (=> b!555631 m!533501))

(assert (=> b!555631 m!533501))

(declare-fun m!533537 () Bool)

(assert (=> b!555631 m!533537))

(push 1)


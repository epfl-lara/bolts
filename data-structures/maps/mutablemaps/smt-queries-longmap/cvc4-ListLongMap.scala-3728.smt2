; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51384 () Bool)

(assert start!51384)

(declare-fun b!560633 () Bool)

(declare-fun res!351947 () Bool)

(declare-fun e!323041 () Bool)

(assert (=> b!560633 (=> (not res!351947) (not e!323041))))

(declare-datatypes ((array!35203 0))(
  ( (array!35204 (arr!16898 (Array (_ BitVec 32) (_ BitVec 64))) (size!17262 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35203)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35203 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560633 (= res!351947 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!560634 () Bool)

(declare-fun e!323040 () Bool)

(declare-fun e!323039 () Bool)

(assert (=> b!560634 (= e!323040 e!323039)))

(declare-fun res!351946 () Bool)

(assert (=> b!560634 (=> res!351946 e!323039)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!255049 () (_ BitVec 64))

(assert (=> b!560634 (= res!351946 (or (= lt!255049 (select (arr!16898 a!3118) j!142)) (= lt!255049 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5354 0))(
  ( (MissingZero!5354 (index!23643 (_ BitVec 32))) (Found!5354 (index!23644 (_ BitVec 32))) (Intermediate!5354 (undefined!6166 Bool) (index!23645 (_ BitVec 32)) (x!52580 (_ BitVec 32))) (Undefined!5354) (MissingVacant!5354 (index!23646 (_ BitVec 32))) )
))
(declare-fun lt!255056 () SeekEntryResult!5354)

(assert (=> b!560634 (= lt!255049 (select (arr!16898 a!3118) (index!23645 lt!255056)))))

(declare-fun b!560635 () Bool)

(declare-fun res!351941 () Bool)

(assert (=> b!560635 (=> (not res!351941) (not e!323041))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!560635 (= res!351941 (and (= (size!17262 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17262 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17262 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560636 () Bool)

(declare-fun e!323042 () Bool)

(assert (=> b!560636 (= e!323042 (not true))))

(declare-fun e!323043 () Bool)

(assert (=> b!560636 e!323043))

(declare-fun res!351937 () Bool)

(assert (=> b!560636 (=> (not res!351937) (not e!323043))))

(declare-fun lt!255055 () SeekEntryResult!5354)

(assert (=> b!560636 (= res!351937 (= lt!255055 (Found!5354 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35203 (_ BitVec 32)) SeekEntryResult!5354)

(assert (=> b!560636 (= lt!255055 (seekEntryOrOpen!0 (select (arr!16898 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35203 (_ BitVec 32)) Bool)

(assert (=> b!560636 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17482 0))(
  ( (Unit!17483) )
))
(declare-fun lt!255054 () Unit!17482)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35203 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17482)

(assert (=> b!560636 (= lt!255054 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!351939 () Bool)

(assert (=> start!51384 (=> (not res!351939) (not e!323041))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51384 (= res!351939 (validMask!0 mask!3119))))

(assert (=> start!51384 e!323041))

(assert (=> start!51384 true))

(declare-fun array_inv!12672 (array!35203) Bool)

(assert (=> start!51384 (array_inv!12672 a!3118)))

(declare-fun b!560637 () Bool)

(declare-fun res!351942 () Bool)

(declare-fun e!323044 () Bool)

(assert (=> b!560637 (=> (not res!351942) (not e!323044))))

(declare-datatypes ((List!11031 0))(
  ( (Nil!11028) (Cons!11027 (h!12030 (_ BitVec 64)) (t!17267 List!11031)) )
))
(declare-fun arrayNoDuplicates!0 (array!35203 (_ BitVec 32) List!11031) Bool)

(assert (=> b!560637 (= res!351942 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11028))))

(declare-fun lt!255053 () (_ BitVec 64))

(declare-fun b!560638 () Bool)

(declare-fun e!323037 () Bool)

(declare-fun lt!255052 () array!35203)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35203 (_ BitVec 32)) SeekEntryResult!5354)

(assert (=> b!560638 (= e!323037 (= (seekEntryOrOpen!0 lt!255053 lt!255052 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52580 lt!255056) (index!23645 lt!255056) (index!23645 lt!255056) lt!255053 lt!255052 mask!3119)))))

(declare-fun b!560639 () Bool)

(declare-fun res!351943 () Bool)

(assert (=> b!560639 (=> (not res!351943) (not e!323041))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560639 (= res!351943 (validKeyInArray!0 k!1914))))

(declare-fun b!560640 () Bool)

(declare-fun res!351940 () Bool)

(assert (=> b!560640 (=> (not res!351940) (not e!323044))))

(assert (=> b!560640 (= res!351940 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560641 () Bool)

(declare-fun res!351944 () Bool)

(assert (=> b!560641 (=> (not res!351944) (not e!323041))))

(assert (=> b!560641 (= res!351944 (validKeyInArray!0 (select (arr!16898 a!3118) j!142)))))

(declare-fun b!560642 () Bool)

(assert (=> b!560642 (= e!323044 e!323042)))

(declare-fun res!351935 () Bool)

(assert (=> b!560642 (=> (not res!351935) (not e!323042))))

(declare-fun lt!255048 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35203 (_ BitVec 32)) SeekEntryResult!5354)

(assert (=> b!560642 (= res!351935 (= lt!255056 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255048 lt!255053 lt!255052 mask!3119)))))

(declare-fun lt!255051 () (_ BitVec 32))

(assert (=> b!560642 (= lt!255056 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255051 (select (arr!16898 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560642 (= lt!255048 (toIndex!0 lt!255053 mask!3119))))

(assert (=> b!560642 (= lt!255053 (select (store (arr!16898 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!560642 (= lt!255051 (toIndex!0 (select (arr!16898 a!3118) j!142) mask!3119))))

(assert (=> b!560642 (= lt!255052 (array!35204 (store (arr!16898 a!3118) i!1132 k!1914) (size!17262 a!3118)))))

(declare-fun b!560643 () Bool)

(assert (=> b!560643 (= e!323041 e!323044)))

(declare-fun res!351936 () Bool)

(assert (=> b!560643 (=> (not res!351936) (not e!323044))))

(declare-fun lt!255050 () SeekEntryResult!5354)

(assert (=> b!560643 (= res!351936 (or (= lt!255050 (MissingZero!5354 i!1132)) (= lt!255050 (MissingVacant!5354 i!1132))))))

(assert (=> b!560643 (= lt!255050 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!560644 () Bool)

(assert (=> b!560644 (= e!323039 e!323037)))

(declare-fun res!351938 () Bool)

(assert (=> b!560644 (=> (not res!351938) (not e!323037))))

(assert (=> b!560644 (= res!351938 (= lt!255055 (seekKeyOrZeroReturnVacant!0 (x!52580 lt!255056) (index!23645 lt!255056) (index!23645 lt!255056) (select (arr!16898 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!560645 () Bool)

(assert (=> b!560645 (= e!323043 e!323040)))

(declare-fun res!351945 () Bool)

(assert (=> b!560645 (=> res!351945 e!323040)))

(assert (=> b!560645 (= res!351945 (or (undefined!6166 lt!255056) (not (is-Intermediate!5354 lt!255056))))))

(assert (= (and start!51384 res!351939) b!560635))

(assert (= (and b!560635 res!351941) b!560641))

(assert (= (and b!560641 res!351944) b!560639))

(assert (= (and b!560639 res!351943) b!560633))

(assert (= (and b!560633 res!351947) b!560643))

(assert (= (and b!560643 res!351936) b!560640))

(assert (= (and b!560640 res!351940) b!560637))

(assert (= (and b!560637 res!351942) b!560642))

(assert (= (and b!560642 res!351935) b!560636))

(assert (= (and b!560636 res!351937) b!560645))

(assert (= (and b!560645 (not res!351945)) b!560634))

(assert (= (and b!560634 (not res!351946)) b!560644))

(assert (= (and b!560644 res!351938) b!560638))

(declare-fun m!538487 () Bool)

(assert (=> b!560634 m!538487))

(declare-fun m!538489 () Bool)

(assert (=> b!560634 m!538489))

(assert (=> b!560636 m!538487))

(assert (=> b!560636 m!538487))

(declare-fun m!538491 () Bool)

(assert (=> b!560636 m!538491))

(declare-fun m!538493 () Bool)

(assert (=> b!560636 m!538493))

(declare-fun m!538495 () Bool)

(assert (=> b!560636 m!538495))

(assert (=> b!560644 m!538487))

(assert (=> b!560644 m!538487))

(declare-fun m!538497 () Bool)

(assert (=> b!560644 m!538497))

(assert (=> b!560642 m!538487))

(declare-fun m!538499 () Bool)

(assert (=> b!560642 m!538499))

(assert (=> b!560642 m!538487))

(declare-fun m!538501 () Bool)

(assert (=> b!560642 m!538501))

(assert (=> b!560642 m!538487))

(declare-fun m!538503 () Bool)

(assert (=> b!560642 m!538503))

(declare-fun m!538505 () Bool)

(assert (=> b!560642 m!538505))

(declare-fun m!538507 () Bool)

(assert (=> b!560642 m!538507))

(declare-fun m!538509 () Bool)

(assert (=> b!560642 m!538509))

(declare-fun m!538511 () Bool)

(assert (=> b!560640 m!538511))

(declare-fun m!538513 () Bool)

(assert (=> b!560639 m!538513))

(declare-fun m!538515 () Bool)

(assert (=> b!560638 m!538515))

(declare-fun m!538517 () Bool)

(assert (=> b!560638 m!538517))

(declare-fun m!538519 () Bool)

(assert (=> b!560633 m!538519))

(assert (=> b!560641 m!538487))

(assert (=> b!560641 m!538487))

(declare-fun m!538521 () Bool)

(assert (=> b!560641 m!538521))

(declare-fun m!538523 () Bool)

(assert (=> start!51384 m!538523))

(declare-fun m!538525 () Bool)

(assert (=> start!51384 m!538525))

(declare-fun m!538527 () Bool)

(assert (=> b!560637 m!538527))

(declare-fun m!538529 () Bool)

(assert (=> b!560643 m!538529))

(push 1)


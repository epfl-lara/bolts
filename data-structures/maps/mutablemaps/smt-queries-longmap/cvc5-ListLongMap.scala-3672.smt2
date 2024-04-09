; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50666 () Bool)

(assert start!50666)

(declare-fun b!553448 () Bool)

(declare-fun res!346015 () Bool)

(declare-fun e!319240 () Bool)

(assert (=> b!553448 (=> (not res!346015) (not e!319240))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553448 (= res!346015 (validKeyInArray!0 k!1914))))

(declare-fun b!553449 () Bool)

(declare-fun res!346014 () Bool)

(assert (=> b!553449 (=> (not res!346014) (not e!319240))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34845 0))(
  ( (array!34846 (arr!16728 (Array (_ BitVec 32) (_ BitVec 64))) (size!17092 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34845)

(assert (=> b!553449 (= res!346014 (and (= (size!17092 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17092 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17092 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553450 () Bool)

(declare-fun e!319238 () Bool)

(assert (=> b!553450 (= e!319238 (not true))))

(declare-fun e!319237 () Bool)

(assert (=> b!553450 e!319237))

(declare-fun res!346012 () Bool)

(assert (=> b!553450 (=> (not res!346012) (not e!319237))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34845 (_ BitVec 32)) Bool)

(assert (=> b!553450 (= res!346012 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17142 0))(
  ( (Unit!17143) )
))
(declare-fun lt!251516 () Unit!17142)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34845 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17142)

(assert (=> b!553450 (= lt!251516 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553451 () Bool)

(declare-fun res!346010 () Bool)

(assert (=> b!553451 (=> (not res!346010) (not e!319240))))

(declare-fun arrayContainsKey!0 (array!34845 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553451 (= res!346010 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553452 () Bool)

(declare-fun res!346011 () Bool)

(assert (=> b!553452 (=> (not res!346011) (not e!319238))))

(declare-datatypes ((SeekEntryResult!5184 0))(
  ( (MissingZero!5184 (index!22963 (_ BitVec 32))) (Found!5184 (index!22964 (_ BitVec 32))) (Intermediate!5184 (undefined!5996 Bool) (index!22965 (_ BitVec 32)) (x!51917 (_ BitVec 32))) (Undefined!5184) (MissingVacant!5184 (index!22966 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34845 (_ BitVec 32)) SeekEntryResult!5184)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553452 (= res!346011 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16728 a!3118) j!142) mask!3119) (select (arr!16728 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16728 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16728 a!3118) i!1132 k!1914) j!142) (array!34846 (store (arr!16728 a!3118) i!1132 k!1914) (size!17092 a!3118)) mask!3119)))))

(declare-fun b!553453 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34845 (_ BitVec 32)) SeekEntryResult!5184)

(assert (=> b!553453 (= e!319237 (= (seekEntryOrOpen!0 (select (arr!16728 a!3118) j!142) a!3118 mask!3119) (Found!5184 j!142)))))

(declare-fun b!553455 () Bool)

(declare-fun res!346013 () Bool)

(assert (=> b!553455 (=> (not res!346013) (not e!319238))))

(declare-datatypes ((List!10861 0))(
  ( (Nil!10858) (Cons!10857 (h!11842 (_ BitVec 64)) (t!17097 List!10861)) )
))
(declare-fun arrayNoDuplicates!0 (array!34845 (_ BitVec 32) List!10861) Bool)

(assert (=> b!553455 (= res!346013 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10858))))

(declare-fun b!553456 () Bool)

(declare-fun res!346017 () Bool)

(assert (=> b!553456 (=> (not res!346017) (not e!319240))))

(assert (=> b!553456 (= res!346017 (validKeyInArray!0 (select (arr!16728 a!3118) j!142)))))

(declare-fun b!553457 () Bool)

(declare-fun res!346019 () Bool)

(assert (=> b!553457 (=> (not res!346019) (not e!319238))))

(assert (=> b!553457 (= res!346019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553454 () Bool)

(assert (=> b!553454 (= e!319240 e!319238)))

(declare-fun res!346018 () Bool)

(assert (=> b!553454 (=> (not res!346018) (not e!319238))))

(declare-fun lt!251515 () SeekEntryResult!5184)

(assert (=> b!553454 (= res!346018 (or (= lt!251515 (MissingZero!5184 i!1132)) (= lt!251515 (MissingVacant!5184 i!1132))))))

(assert (=> b!553454 (= lt!251515 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!346016 () Bool)

(assert (=> start!50666 (=> (not res!346016) (not e!319240))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50666 (= res!346016 (validMask!0 mask!3119))))

(assert (=> start!50666 e!319240))

(assert (=> start!50666 true))

(declare-fun array_inv!12502 (array!34845) Bool)

(assert (=> start!50666 (array_inv!12502 a!3118)))

(assert (= (and start!50666 res!346016) b!553449))

(assert (= (and b!553449 res!346014) b!553456))

(assert (= (and b!553456 res!346017) b!553448))

(assert (= (and b!553448 res!346015) b!553451))

(assert (= (and b!553451 res!346010) b!553454))

(assert (= (and b!553454 res!346018) b!553457))

(assert (= (and b!553457 res!346019) b!553455))

(assert (= (and b!553455 res!346013) b!553452))

(assert (= (and b!553452 res!346011) b!553450))

(assert (= (and b!553450 res!346012) b!553453))

(declare-fun m!530611 () Bool)

(assert (=> b!553457 m!530611))

(declare-fun m!530613 () Bool)

(assert (=> b!553450 m!530613))

(declare-fun m!530615 () Bool)

(assert (=> b!553450 m!530615))

(declare-fun m!530617 () Bool)

(assert (=> b!553451 m!530617))

(declare-fun m!530619 () Bool)

(assert (=> b!553448 m!530619))

(declare-fun m!530621 () Bool)

(assert (=> b!553454 m!530621))

(declare-fun m!530623 () Bool)

(assert (=> b!553455 m!530623))

(declare-fun m!530625 () Bool)

(assert (=> start!50666 m!530625))

(declare-fun m!530627 () Bool)

(assert (=> start!50666 m!530627))

(declare-fun m!530629 () Bool)

(assert (=> b!553456 m!530629))

(assert (=> b!553456 m!530629))

(declare-fun m!530631 () Bool)

(assert (=> b!553456 m!530631))

(assert (=> b!553452 m!530629))

(declare-fun m!530633 () Bool)

(assert (=> b!553452 m!530633))

(assert (=> b!553452 m!530629))

(declare-fun m!530635 () Bool)

(assert (=> b!553452 m!530635))

(declare-fun m!530637 () Bool)

(assert (=> b!553452 m!530637))

(assert (=> b!553452 m!530635))

(declare-fun m!530639 () Bool)

(assert (=> b!553452 m!530639))

(assert (=> b!553452 m!530633))

(assert (=> b!553452 m!530629))

(declare-fun m!530641 () Bool)

(assert (=> b!553452 m!530641))

(declare-fun m!530643 () Bool)

(assert (=> b!553452 m!530643))

(assert (=> b!553452 m!530635))

(assert (=> b!553452 m!530637))

(assert (=> b!553453 m!530629))

(assert (=> b!553453 m!530629))

(declare-fun m!530645 () Bool)

(assert (=> b!553453 m!530645))

(push 1)


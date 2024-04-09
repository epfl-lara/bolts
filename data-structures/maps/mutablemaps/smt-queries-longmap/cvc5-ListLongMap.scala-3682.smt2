; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50726 () Bool)

(assert start!50726)

(declare-fun b!554356 () Bool)

(declare-fun e!319633 () Bool)

(declare-fun e!319635 () Bool)

(assert (=> b!554356 (= e!319633 e!319635)))

(declare-fun res!346917 () Bool)

(assert (=> b!554356 (=> (not res!346917) (not e!319635))))

(declare-datatypes ((SeekEntryResult!5214 0))(
  ( (MissingZero!5214 (index!23083 (_ BitVec 32))) (Found!5214 (index!23084 (_ BitVec 32))) (Intermediate!5214 (undefined!6026 Bool) (index!23085 (_ BitVec 32)) (x!52027 (_ BitVec 32))) (Undefined!5214) (MissingVacant!5214 (index!23086 (_ BitVec 32))) )
))
(declare-fun lt!251788 () SeekEntryResult!5214)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!554356 (= res!346917 (or (= lt!251788 (MissingZero!5214 i!1132)) (= lt!251788 (MissingVacant!5214 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!34905 0))(
  ( (array!34906 (arr!16758 (Array (_ BitVec 32) (_ BitVec 64))) (size!17122 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34905)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34905 (_ BitVec 32)) SeekEntryResult!5214)

(assert (=> b!554356 (= lt!251788 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!554357 () Bool)

(declare-fun res!346919 () Bool)

(assert (=> b!554357 (=> (not res!346919) (not e!319633))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554357 (= res!346919 (validKeyInArray!0 (select (arr!16758 a!3118) j!142)))))

(declare-fun b!554358 () Bool)

(declare-fun e!319634 () Bool)

(assert (=> b!554358 (= e!319634 (not true))))

(declare-fun lt!251784 () SeekEntryResult!5214)

(declare-fun lt!251785 () SeekEntryResult!5214)

(assert (=> b!554358 (and (= lt!251784 (Found!5214 j!142)) (or (undefined!6026 lt!251785) (not (is-Intermediate!5214 lt!251785)) (= (select (arr!16758 a!3118) (index!23085 lt!251785)) (select (arr!16758 a!3118) j!142)) (not (= (select (arr!16758 a!3118) (index!23085 lt!251785)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!251784 (MissingZero!5214 (index!23085 lt!251785)))))))

(assert (=> b!554358 (= lt!251784 (seekEntryOrOpen!0 (select (arr!16758 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34905 (_ BitVec 32)) Bool)

(assert (=> b!554358 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17202 0))(
  ( (Unit!17203) )
))
(declare-fun lt!251786 () Unit!17202)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34905 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17202)

(assert (=> b!554358 (= lt!251786 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554359 () Bool)

(declare-fun res!346921 () Bool)

(assert (=> b!554359 (=> (not res!346921) (not e!319635))))

(assert (=> b!554359 (= res!346921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554360 () Bool)

(declare-fun res!346918 () Bool)

(assert (=> b!554360 (=> (not res!346918) (not e!319633))))

(assert (=> b!554360 (= res!346918 (and (= (size!17122 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17122 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17122 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554361 () Bool)

(declare-fun res!346925 () Bool)

(assert (=> b!554361 (=> (not res!346925) (not e!319635))))

(declare-datatypes ((List!10891 0))(
  ( (Nil!10888) (Cons!10887 (h!11872 (_ BitVec 64)) (t!17127 List!10891)) )
))
(declare-fun arrayNoDuplicates!0 (array!34905 (_ BitVec 32) List!10891) Bool)

(assert (=> b!554361 (= res!346925 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10888))))

(declare-fun res!346920 () Bool)

(assert (=> start!50726 (=> (not res!346920) (not e!319633))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50726 (= res!346920 (validMask!0 mask!3119))))

(assert (=> start!50726 e!319633))

(assert (=> start!50726 true))

(declare-fun array_inv!12532 (array!34905) Bool)

(assert (=> start!50726 (array_inv!12532 a!3118)))

(declare-fun b!554355 () Bool)

(declare-fun res!346924 () Bool)

(assert (=> b!554355 (=> (not res!346924) (not e!319633))))

(declare-fun arrayContainsKey!0 (array!34905 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554355 (= res!346924 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554362 () Bool)

(assert (=> b!554362 (= e!319635 e!319634)))

(declare-fun res!346922 () Bool)

(assert (=> b!554362 (=> (not res!346922) (not e!319634))))

(declare-fun lt!251787 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34905 (_ BitVec 32)) SeekEntryResult!5214)

(assert (=> b!554362 (= res!346922 (= lt!251785 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251787 (select (store (arr!16758 a!3118) i!1132 k!1914) j!142) (array!34906 (store (arr!16758 a!3118) i!1132 k!1914) (size!17122 a!3118)) mask!3119)))))

(declare-fun lt!251789 () (_ BitVec 32))

(assert (=> b!554362 (= lt!251785 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251789 (select (arr!16758 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554362 (= lt!251787 (toIndex!0 (select (store (arr!16758 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!554362 (= lt!251789 (toIndex!0 (select (arr!16758 a!3118) j!142) mask!3119))))

(declare-fun b!554363 () Bool)

(declare-fun res!346923 () Bool)

(assert (=> b!554363 (=> (not res!346923) (not e!319633))))

(assert (=> b!554363 (= res!346923 (validKeyInArray!0 k!1914))))

(assert (= (and start!50726 res!346920) b!554360))

(assert (= (and b!554360 res!346918) b!554357))

(assert (= (and b!554357 res!346919) b!554363))

(assert (= (and b!554363 res!346923) b!554355))

(assert (= (and b!554355 res!346924) b!554356))

(assert (= (and b!554356 res!346917) b!554359))

(assert (= (and b!554359 res!346921) b!554361))

(assert (= (and b!554361 res!346925) b!554362))

(assert (= (and b!554362 res!346922) b!554358))

(declare-fun m!531715 () Bool)

(assert (=> b!554355 m!531715))

(declare-fun m!531717 () Bool)

(assert (=> b!554363 m!531717))

(declare-fun m!531719 () Bool)

(assert (=> b!554358 m!531719))

(declare-fun m!531721 () Bool)

(assert (=> b!554358 m!531721))

(declare-fun m!531723 () Bool)

(assert (=> b!554358 m!531723))

(declare-fun m!531725 () Bool)

(assert (=> b!554358 m!531725))

(assert (=> b!554358 m!531721))

(declare-fun m!531727 () Bool)

(assert (=> b!554358 m!531727))

(declare-fun m!531729 () Bool)

(assert (=> start!50726 m!531729))

(declare-fun m!531731 () Bool)

(assert (=> start!50726 m!531731))

(declare-fun m!531733 () Bool)

(assert (=> b!554359 m!531733))

(assert (=> b!554357 m!531721))

(assert (=> b!554357 m!531721))

(declare-fun m!531735 () Bool)

(assert (=> b!554357 m!531735))

(declare-fun m!531737 () Bool)

(assert (=> b!554356 m!531737))

(declare-fun m!531739 () Bool)

(assert (=> b!554361 m!531739))

(assert (=> b!554362 m!531721))

(declare-fun m!531741 () Bool)

(assert (=> b!554362 m!531741))

(assert (=> b!554362 m!531721))

(declare-fun m!531743 () Bool)

(assert (=> b!554362 m!531743))

(assert (=> b!554362 m!531721))

(declare-fun m!531745 () Bool)

(assert (=> b!554362 m!531745))

(declare-fun m!531747 () Bool)

(assert (=> b!554362 m!531747))

(assert (=> b!554362 m!531745))

(declare-fun m!531749 () Bool)

(assert (=> b!554362 m!531749))

(assert (=> b!554362 m!531745))

(declare-fun m!531751 () Bool)

(assert (=> b!554362 m!531751))

(push 1)


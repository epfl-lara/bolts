; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51624 () Bool)

(assert start!51624)

(declare-fun b!564543 () Bool)

(declare-fun e!325123 () Bool)

(declare-fun e!325122 () Bool)

(assert (=> b!564543 (= e!325123 e!325122)))

(declare-fun res!355853 () Bool)

(assert (=> b!564543 (=> (not res!355853) (not e!325122))))

(declare-datatypes ((SeekEntryResult!5474 0))(
  ( (MissingZero!5474 (index!24123 (_ BitVec 32))) (Found!5474 (index!24124 (_ BitVec 32))) (Intermediate!5474 (undefined!6286 Bool) (index!24125 (_ BitVec 32)) (x!53020 (_ BitVec 32))) (Undefined!5474) (MissingVacant!5474 (index!24126 (_ BitVec 32))) )
))
(declare-fun lt!257612 () SeekEntryResult!5474)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564543 (= res!355853 (or (= lt!257612 (MissingZero!5474 i!1132)) (= lt!257612 (MissingVacant!5474 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!35443 0))(
  ( (array!35444 (arr!17018 (Array (_ BitVec 32) (_ BitVec 64))) (size!17382 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35443)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35443 (_ BitVec 32)) SeekEntryResult!5474)

(assert (=> b!564543 (= lt!257612 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!564544 () Bool)

(declare-fun res!355849 () Bool)

(assert (=> b!564544 (=> (not res!355849) (not e!325122))))

(declare-datatypes ((List!11151 0))(
  ( (Nil!11148) (Cons!11147 (h!12150 (_ BitVec 64)) (t!17387 List!11151)) )
))
(declare-fun arrayNoDuplicates!0 (array!35443 (_ BitVec 32) List!11151) Bool)

(assert (=> b!564544 (= res!355849 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11148))))

(declare-fun res!355851 () Bool)

(assert (=> start!51624 (=> (not res!355851) (not e!325123))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51624 (= res!355851 (validMask!0 mask!3119))))

(assert (=> start!51624 e!325123))

(assert (=> start!51624 true))

(declare-fun array_inv!12792 (array!35443) Bool)

(assert (=> start!51624 (array_inv!12792 a!3118)))

(declare-fun b!564545 () Bool)

(declare-fun res!355848 () Bool)

(assert (=> b!564545 (=> (not res!355848) (not e!325123))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!564545 (= res!355848 (and (= (size!17382 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17382 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17382 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564546 () Bool)

(assert (=> b!564546 (= e!325122 (bvsgt #b00000000000000000000000000000000 (size!17382 a!3118)))))

(declare-fun b!564547 () Bool)

(declare-fun res!355850 () Bool)

(assert (=> b!564547 (=> (not res!355850) (not e!325122))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35443 (_ BitVec 32)) Bool)

(assert (=> b!564547 (= res!355850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564548 () Bool)

(declare-fun res!355846 () Bool)

(assert (=> b!564548 (=> (not res!355846) (not e!325122))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35443 (_ BitVec 32)) SeekEntryResult!5474)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564548 (= res!355846 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17018 a!3118) j!142) mask!3119) (select (arr!17018 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17018 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17018 a!3118) i!1132 k!1914) j!142) (array!35444 (store (arr!17018 a!3118) i!1132 k!1914) (size!17382 a!3118)) mask!3119)))))

(declare-fun b!564549 () Bool)

(declare-fun res!355847 () Bool)

(assert (=> b!564549 (=> (not res!355847) (not e!325123))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564549 (= res!355847 (validKeyInArray!0 k!1914))))

(declare-fun b!564550 () Bool)

(declare-fun res!355852 () Bool)

(assert (=> b!564550 (=> (not res!355852) (not e!325123))))

(assert (=> b!564550 (= res!355852 (validKeyInArray!0 (select (arr!17018 a!3118) j!142)))))

(declare-fun b!564551 () Bool)

(declare-fun res!355845 () Bool)

(assert (=> b!564551 (=> (not res!355845) (not e!325123))))

(declare-fun arrayContainsKey!0 (array!35443 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564551 (= res!355845 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51624 res!355851) b!564545))

(assert (= (and b!564545 res!355848) b!564550))

(assert (= (and b!564550 res!355852) b!564549))

(assert (= (and b!564549 res!355847) b!564551))

(assert (= (and b!564551 res!355845) b!564543))

(assert (= (and b!564543 res!355853) b!564547))

(assert (= (and b!564547 res!355850) b!564544))

(assert (= (and b!564544 res!355849) b!564548))

(assert (= (and b!564548 res!355846) b!564546))

(declare-fun m!543043 () Bool)

(assert (=> start!51624 m!543043))

(declare-fun m!543045 () Bool)

(assert (=> start!51624 m!543045))

(declare-fun m!543047 () Bool)

(assert (=> b!564548 m!543047))

(declare-fun m!543049 () Bool)

(assert (=> b!564548 m!543049))

(assert (=> b!564548 m!543047))

(declare-fun m!543051 () Bool)

(assert (=> b!564548 m!543051))

(declare-fun m!543053 () Bool)

(assert (=> b!564548 m!543053))

(assert (=> b!564548 m!543051))

(declare-fun m!543055 () Bool)

(assert (=> b!564548 m!543055))

(assert (=> b!564548 m!543049))

(assert (=> b!564548 m!543047))

(declare-fun m!543057 () Bool)

(assert (=> b!564548 m!543057))

(declare-fun m!543059 () Bool)

(assert (=> b!564548 m!543059))

(assert (=> b!564548 m!543051))

(assert (=> b!564548 m!543053))

(declare-fun m!543061 () Bool)

(assert (=> b!564547 m!543061))

(declare-fun m!543063 () Bool)

(assert (=> b!564549 m!543063))

(declare-fun m!543065 () Bool)

(assert (=> b!564544 m!543065))

(declare-fun m!543067 () Bool)

(assert (=> b!564543 m!543067))

(declare-fun m!543069 () Bool)

(assert (=> b!564551 m!543069))

(assert (=> b!564550 m!543047))

(assert (=> b!564550 m!543047))

(declare-fun m!543071 () Bool)

(assert (=> b!564550 m!543071))

(push 1)

(assert (not b!564551))


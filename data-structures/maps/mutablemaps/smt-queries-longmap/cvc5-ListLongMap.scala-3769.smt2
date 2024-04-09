; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51626 () Bool)

(assert start!51626)

(declare-fun res!355880 () Bool)

(declare-fun e!325130 () Bool)

(assert (=> start!51626 (=> (not res!355880) (not e!325130))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51626 (= res!355880 (validMask!0 mask!3119))))

(assert (=> start!51626 e!325130))

(assert (=> start!51626 true))

(declare-datatypes ((array!35445 0))(
  ( (array!35446 (arr!17019 (Array (_ BitVec 32) (_ BitVec 64))) (size!17383 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35445)

(declare-fun array_inv!12793 (array!35445) Bool)

(assert (=> start!51626 (array_inv!12793 a!3118)))

(declare-fun b!564570 () Bool)

(declare-fun res!355877 () Bool)

(assert (=> b!564570 (=> (not res!355877) (not e!325130))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564570 (= res!355877 (validKeyInArray!0 k!1914))))

(declare-fun b!564571 () Bool)

(declare-fun res!355879 () Bool)

(assert (=> b!564571 (=> (not res!355879) (not e!325130))))

(declare-fun arrayContainsKey!0 (array!35445 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564571 (= res!355879 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564572 () Bool)

(declare-fun res!355873 () Bool)

(assert (=> b!564572 (=> (not res!355873) (not e!325130))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564572 (= res!355873 (and (= (size!17383 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17383 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17383 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564573 () Bool)

(declare-fun e!325131 () Bool)

(assert (=> b!564573 (= e!325131 (and (bvsle #b00000000000000000000000000000000 (size!17383 a!3118)) (bvsgt j!142 (size!17383 a!3118))))))

(declare-fun b!564574 () Bool)

(declare-fun res!355878 () Bool)

(assert (=> b!564574 (=> (not res!355878) (not e!325131))))

(declare-datatypes ((SeekEntryResult!5475 0))(
  ( (MissingZero!5475 (index!24127 (_ BitVec 32))) (Found!5475 (index!24128 (_ BitVec 32))) (Intermediate!5475 (undefined!6287 Bool) (index!24129 (_ BitVec 32)) (x!53029 (_ BitVec 32))) (Undefined!5475) (MissingVacant!5475 (index!24130 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35445 (_ BitVec 32)) SeekEntryResult!5475)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564574 (= res!355878 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17019 a!3118) j!142) mask!3119) (select (arr!17019 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17019 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17019 a!3118) i!1132 k!1914) j!142) (array!35446 (store (arr!17019 a!3118) i!1132 k!1914) (size!17383 a!3118)) mask!3119)))))

(declare-fun b!564575 () Bool)

(assert (=> b!564575 (= e!325130 e!325131)))

(declare-fun res!355875 () Bool)

(assert (=> b!564575 (=> (not res!355875) (not e!325131))))

(declare-fun lt!257615 () SeekEntryResult!5475)

(assert (=> b!564575 (= res!355875 (or (= lt!257615 (MissingZero!5475 i!1132)) (= lt!257615 (MissingVacant!5475 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35445 (_ BitVec 32)) SeekEntryResult!5475)

(assert (=> b!564575 (= lt!257615 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!564576 () Bool)

(declare-fun res!355874 () Bool)

(assert (=> b!564576 (=> (not res!355874) (not e!325131))))

(declare-datatypes ((List!11152 0))(
  ( (Nil!11149) (Cons!11148 (h!12151 (_ BitVec 64)) (t!17388 List!11152)) )
))
(declare-fun arrayNoDuplicates!0 (array!35445 (_ BitVec 32) List!11152) Bool)

(assert (=> b!564576 (= res!355874 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11149))))

(declare-fun b!564577 () Bool)

(declare-fun res!355872 () Bool)

(assert (=> b!564577 (=> (not res!355872) (not e!325131))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35445 (_ BitVec 32)) Bool)

(assert (=> b!564577 (= res!355872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564578 () Bool)

(declare-fun res!355876 () Bool)

(assert (=> b!564578 (=> (not res!355876) (not e!325130))))

(assert (=> b!564578 (= res!355876 (validKeyInArray!0 (select (arr!17019 a!3118) j!142)))))

(assert (= (and start!51626 res!355880) b!564572))

(assert (= (and b!564572 res!355873) b!564578))

(assert (= (and b!564578 res!355876) b!564570))

(assert (= (and b!564570 res!355877) b!564571))

(assert (= (and b!564571 res!355879) b!564575))

(assert (= (and b!564575 res!355875) b!564577))

(assert (= (and b!564577 res!355872) b!564576))

(assert (= (and b!564576 res!355874) b!564574))

(assert (= (and b!564574 res!355878) b!564573))

(declare-fun m!543073 () Bool)

(assert (=> start!51626 m!543073))

(declare-fun m!543075 () Bool)

(assert (=> start!51626 m!543075))

(declare-fun m!543077 () Bool)

(assert (=> b!564575 m!543077))

(declare-fun m!543079 () Bool)

(assert (=> b!564576 m!543079))

(declare-fun m!543081 () Bool)

(assert (=> b!564570 m!543081))

(declare-fun m!543083 () Bool)

(assert (=> b!564578 m!543083))

(assert (=> b!564578 m!543083))

(declare-fun m!543085 () Bool)

(assert (=> b!564578 m!543085))

(declare-fun m!543087 () Bool)

(assert (=> b!564577 m!543087))

(assert (=> b!564574 m!543083))

(declare-fun m!543089 () Bool)

(assert (=> b!564574 m!543089))

(assert (=> b!564574 m!543083))

(declare-fun m!543091 () Bool)

(assert (=> b!564574 m!543091))

(declare-fun m!543093 () Bool)

(assert (=> b!564574 m!543093))

(assert (=> b!564574 m!543091))

(declare-fun m!543095 () Bool)

(assert (=> b!564574 m!543095))

(assert (=> b!564574 m!543089))

(assert (=> b!564574 m!543083))

(declare-fun m!543097 () Bool)

(assert (=> b!564574 m!543097))

(declare-fun m!543099 () Bool)

(assert (=> b!564574 m!543099))

(assert (=> b!564574 m!543091))

(assert (=> b!564574 m!543093))

(declare-fun m!543101 () Bool)

(assert (=> b!564571 m!543101))

(push 1)

(assert (not b!564571))

(assert (not b!564576))

(assert (not b!564577))

(assert (not b!564574))

(assert (not b!564578))

(assert (not b!564570))

(assert (not start!51626))

(assert (not b!564575))

(check-sat)

(pop 1)

(push 1)

(check-sat)


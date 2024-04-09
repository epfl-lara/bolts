; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52414 () Bool)

(assert start!52414)

(declare-fun b!571490 () Bool)

(declare-fun res!361157 () Bool)

(declare-fun e!328704 () Bool)

(assert (=> b!571490 (=> (not res!361157) (not e!328704))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!571490 (= res!361157 (validKeyInArray!0 k0!1914))))

(declare-fun b!571491 () Bool)

(declare-fun e!328709 () Bool)

(declare-fun e!328707 () Bool)

(assert (=> b!571491 (= e!328709 e!328707)))

(declare-fun res!361155 () Bool)

(assert (=> b!571491 (=> res!361155 e!328707)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!260680 () (_ BitVec 64))

(declare-datatypes ((array!35765 0))(
  ( (array!35766 (arr!17167 (Array (_ BitVec 32) (_ BitVec 64))) (size!17531 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35765)

(assert (=> b!571491 (= res!361155 (or (= lt!260680 (select (arr!17167 a!3118) j!142)) (= lt!260680 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5623 0))(
  ( (MissingZero!5623 (index!24719 (_ BitVec 32))) (Found!5623 (index!24720 (_ BitVec 32))) (Intermediate!5623 (undefined!6435 Bool) (index!24721 (_ BitVec 32)) (x!53623 (_ BitVec 32))) (Undefined!5623) (MissingVacant!5623 (index!24722 (_ BitVec 32))) )
))
(declare-fun lt!260676 () SeekEntryResult!5623)

(assert (=> b!571491 (= lt!260680 (select (arr!17167 a!3118) (index!24721 lt!260676)))))

(declare-fun e!328710 () Bool)

(declare-fun lt!260683 () (_ BitVec 64))

(declare-fun lt!260678 () array!35765)

(declare-fun b!571492 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35765 (_ BitVec 32)) SeekEntryResult!5623)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35765 (_ BitVec 32)) SeekEntryResult!5623)

(assert (=> b!571492 (= e!328710 (= (seekEntryOrOpen!0 lt!260683 lt!260678 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53623 lt!260676) (index!24721 lt!260676) (index!24721 lt!260676) lt!260683 lt!260678 mask!3119)))))

(declare-fun b!571493 () Bool)

(declare-fun res!361148 () Bool)

(assert (=> b!571493 (=> (not res!361148) (not e!328704))))

(declare-fun arrayContainsKey!0 (array!35765 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!571493 (= res!361148 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!571494 () Bool)

(declare-fun e!328711 () Bool)

(assert (=> b!571494 (= e!328711 (not true))))

(declare-fun e!328708 () Bool)

(assert (=> b!571494 e!328708))

(declare-fun res!361149 () Bool)

(assert (=> b!571494 (=> (not res!361149) (not e!328708))))

(declare-fun lt!260679 () SeekEntryResult!5623)

(assert (=> b!571494 (= res!361149 (= lt!260679 (Found!5623 j!142)))))

(assert (=> b!571494 (= lt!260679 (seekEntryOrOpen!0 (select (arr!17167 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35765 (_ BitVec 32)) Bool)

(assert (=> b!571494 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17948 0))(
  ( (Unit!17949) )
))
(declare-fun lt!260681 () Unit!17948)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35765 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17948)

(assert (=> b!571494 (= lt!260681 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!571495 () Bool)

(assert (=> b!571495 (= e!328708 e!328709)))

(declare-fun res!361151 () Bool)

(assert (=> b!571495 (=> res!361151 e!328709)))

(get-info :version)

(assert (=> b!571495 (= res!361151 (or (undefined!6435 lt!260676) (not ((_ is Intermediate!5623) lt!260676))))))

(declare-fun b!571496 () Bool)

(declare-fun e!328705 () Bool)

(assert (=> b!571496 (= e!328704 e!328705)))

(declare-fun res!361150 () Bool)

(assert (=> b!571496 (=> (not res!361150) (not e!328705))))

(declare-fun lt!260677 () SeekEntryResult!5623)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!571496 (= res!361150 (or (= lt!260677 (MissingZero!5623 i!1132)) (= lt!260677 (MissingVacant!5623 i!1132))))))

(assert (=> b!571496 (= lt!260677 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!571497 () Bool)

(declare-fun res!361160 () Bool)

(assert (=> b!571497 (=> (not res!361160) (not e!328705))))

(assert (=> b!571497 (= res!361160 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!571498 () Bool)

(declare-fun res!361159 () Bool)

(assert (=> b!571498 (=> (not res!361159) (not e!328704))))

(assert (=> b!571498 (= res!361159 (and (= (size!17531 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17531 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17531 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!571499 () Bool)

(declare-fun res!361156 () Bool)

(assert (=> b!571499 (=> (not res!361156) (not e!328705))))

(declare-datatypes ((List!11300 0))(
  ( (Nil!11297) (Cons!11296 (h!12323 (_ BitVec 64)) (t!17536 List!11300)) )
))
(declare-fun arrayNoDuplicates!0 (array!35765 (_ BitVec 32) List!11300) Bool)

(assert (=> b!571499 (= res!361156 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11297))))

(declare-fun b!571500 () Bool)

(assert (=> b!571500 (= e!328705 e!328711)))

(declare-fun res!361153 () Bool)

(assert (=> b!571500 (=> (not res!361153) (not e!328711))))

(declare-fun lt!260684 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35765 (_ BitVec 32)) SeekEntryResult!5623)

(assert (=> b!571500 (= res!361153 (= lt!260676 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260684 lt!260683 lt!260678 mask!3119)))))

(declare-fun lt!260682 () (_ BitVec 32))

(assert (=> b!571500 (= lt!260676 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260682 (select (arr!17167 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!571500 (= lt!260684 (toIndex!0 lt!260683 mask!3119))))

(assert (=> b!571500 (= lt!260683 (select (store (arr!17167 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!571500 (= lt!260682 (toIndex!0 (select (arr!17167 a!3118) j!142) mask!3119))))

(assert (=> b!571500 (= lt!260678 (array!35766 (store (arr!17167 a!3118) i!1132 k0!1914) (size!17531 a!3118)))))

(declare-fun res!361154 () Bool)

(assert (=> start!52414 (=> (not res!361154) (not e!328704))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52414 (= res!361154 (validMask!0 mask!3119))))

(assert (=> start!52414 e!328704))

(assert (=> start!52414 true))

(declare-fun array_inv!12941 (array!35765) Bool)

(assert (=> start!52414 (array_inv!12941 a!3118)))

(declare-fun b!571501 () Bool)

(declare-fun res!361152 () Bool)

(assert (=> b!571501 (=> (not res!361152) (not e!328704))))

(assert (=> b!571501 (= res!361152 (validKeyInArray!0 (select (arr!17167 a!3118) j!142)))))

(declare-fun b!571502 () Bool)

(assert (=> b!571502 (= e!328707 e!328710)))

(declare-fun res!361158 () Bool)

(assert (=> b!571502 (=> (not res!361158) (not e!328710))))

(assert (=> b!571502 (= res!361158 (= lt!260679 (seekKeyOrZeroReturnVacant!0 (x!53623 lt!260676) (index!24721 lt!260676) (index!24721 lt!260676) (select (arr!17167 a!3118) j!142) a!3118 mask!3119)))))

(assert (= (and start!52414 res!361154) b!571498))

(assert (= (and b!571498 res!361159) b!571501))

(assert (= (and b!571501 res!361152) b!571490))

(assert (= (and b!571490 res!361157) b!571493))

(assert (= (and b!571493 res!361148) b!571496))

(assert (= (and b!571496 res!361150) b!571497))

(assert (= (and b!571497 res!361160) b!571499))

(assert (= (and b!571499 res!361156) b!571500))

(assert (= (and b!571500 res!361153) b!571494))

(assert (= (and b!571494 res!361149) b!571495))

(assert (= (and b!571495 (not res!361151)) b!571491))

(assert (= (and b!571491 (not res!361155)) b!571502))

(assert (= (and b!571502 res!361158) b!571492))

(declare-fun m!550407 () Bool)

(assert (=> b!571490 m!550407))

(declare-fun m!550409 () Bool)

(assert (=> b!571499 m!550409))

(declare-fun m!550411 () Bool)

(assert (=> b!571500 m!550411))

(declare-fun m!550413 () Bool)

(assert (=> b!571500 m!550413))

(assert (=> b!571500 m!550411))

(declare-fun m!550415 () Bool)

(assert (=> b!571500 m!550415))

(declare-fun m!550417 () Bool)

(assert (=> b!571500 m!550417))

(declare-fun m!550419 () Bool)

(assert (=> b!571500 m!550419))

(declare-fun m!550421 () Bool)

(assert (=> b!571500 m!550421))

(assert (=> b!571500 m!550411))

(declare-fun m!550423 () Bool)

(assert (=> b!571500 m!550423))

(assert (=> b!571494 m!550411))

(assert (=> b!571494 m!550411))

(declare-fun m!550425 () Bool)

(assert (=> b!571494 m!550425))

(declare-fun m!550427 () Bool)

(assert (=> b!571494 m!550427))

(declare-fun m!550429 () Bool)

(assert (=> b!571494 m!550429))

(assert (=> b!571501 m!550411))

(assert (=> b!571501 m!550411))

(declare-fun m!550431 () Bool)

(assert (=> b!571501 m!550431))

(assert (=> b!571502 m!550411))

(assert (=> b!571502 m!550411))

(declare-fun m!550433 () Bool)

(assert (=> b!571502 m!550433))

(declare-fun m!550435 () Bool)

(assert (=> start!52414 m!550435))

(declare-fun m!550437 () Bool)

(assert (=> start!52414 m!550437))

(assert (=> b!571491 m!550411))

(declare-fun m!550439 () Bool)

(assert (=> b!571491 m!550439))

(declare-fun m!550441 () Bool)

(assert (=> b!571497 m!550441))

(declare-fun m!550443 () Bool)

(assert (=> b!571493 m!550443))

(declare-fun m!550445 () Bool)

(assert (=> b!571492 m!550445))

(declare-fun m!550447 () Bool)

(assert (=> b!571492 m!550447))

(declare-fun m!550449 () Bool)

(assert (=> b!571496 m!550449))

(check-sat (not b!571492) (not b!571496) (not b!571501) (not b!571494) (not b!571497) (not b!571493) (not start!52414) (not b!571502) (not b!571499) (not b!571500) (not b!571490))
(check-sat)

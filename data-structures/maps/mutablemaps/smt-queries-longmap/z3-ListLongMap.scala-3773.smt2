; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51712 () Bool)

(assert start!51712)

(declare-fun b!565208 () Bool)

(declare-fun res!356336 () Bool)

(declare-fun e!325440 () Bool)

(assert (=> b!565208 (=> (not res!356336) (not e!325440))))

(declare-datatypes ((array!35474 0))(
  ( (array!35475 (arr!17032 (Array (_ BitVec 32) (_ BitVec 64))) (size!17396 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35474)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565208 (= res!356336 (validKeyInArray!0 (select (arr!17032 a!3118) j!142)))))

(declare-fun b!565209 () Bool)

(declare-fun res!356333 () Bool)

(assert (=> b!565209 (=> (not res!356333) (not e!325440))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!565209 (= res!356333 (validKeyInArray!0 k0!1914))))

(declare-fun res!356327 () Bool)

(assert (=> start!51712 (=> (not res!356327) (not e!325440))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51712 (= res!356327 (validMask!0 mask!3119))))

(assert (=> start!51712 e!325440))

(assert (=> start!51712 true))

(declare-fun array_inv!12806 (array!35474) Bool)

(assert (=> start!51712 (array_inv!12806 a!3118)))

(declare-fun b!565210 () Bool)

(declare-fun res!356334 () Bool)

(declare-fun e!325441 () Bool)

(assert (=> b!565210 (=> (not res!356334) (not e!325441))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35474 (_ BitVec 32)) Bool)

(assert (=> b!565210 (= res!356334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565211 () Bool)

(declare-fun e!325438 () Bool)

(declare-datatypes ((SeekEntryResult!5488 0))(
  ( (MissingZero!5488 (index!24179 (_ BitVec 32))) (Found!5488 (index!24180 (_ BitVec 32))) (Intermediate!5488 (undefined!6300 Bool) (index!24181 (_ BitVec 32)) (x!53080 (_ BitVec 32))) (Undefined!5488) (MissingVacant!5488 (index!24182 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35474 (_ BitVec 32)) SeekEntryResult!5488)

(assert (=> b!565211 (= e!325438 (= (seekEntryOrOpen!0 (select (arr!17032 a!3118) j!142) a!3118 mask!3119) (Found!5488 j!142)))))

(declare-fun b!565212 () Bool)

(declare-fun res!356331 () Bool)

(assert (=> b!565212 (=> (not res!356331) (not e!325440))))

(declare-fun arrayContainsKey!0 (array!35474 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565212 (= res!356331 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!565213 () Bool)

(assert (=> b!565213 (= e!325440 e!325441)))

(declare-fun res!356330 () Bool)

(assert (=> b!565213 (=> (not res!356330) (not e!325441))))

(declare-fun lt!257842 () SeekEntryResult!5488)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!565213 (= res!356330 (or (= lt!257842 (MissingZero!5488 i!1132)) (= lt!257842 (MissingVacant!5488 i!1132))))))

(assert (=> b!565213 (= lt!257842 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!565214 () Bool)

(declare-fun res!356332 () Bool)

(assert (=> b!565214 (=> (not res!356332) (not e!325441))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35474 (_ BitVec 32)) SeekEntryResult!5488)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565214 (= res!356332 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17032 a!3118) j!142) mask!3119) (select (arr!17032 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17032 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17032 a!3118) i!1132 k0!1914) j!142) (array!35475 (store (arr!17032 a!3118) i!1132 k0!1914) (size!17396 a!3118)) mask!3119)))))

(declare-fun b!565215 () Bool)

(declare-fun res!356329 () Bool)

(assert (=> b!565215 (=> (not res!356329) (not e!325440))))

(assert (=> b!565215 (= res!356329 (and (= (size!17396 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17396 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17396 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!565216 () Bool)

(assert (=> b!565216 (= e!325441 (not true))))

(assert (=> b!565216 e!325438))

(declare-fun res!356328 () Bool)

(assert (=> b!565216 (=> (not res!356328) (not e!325438))))

(assert (=> b!565216 (= res!356328 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17678 0))(
  ( (Unit!17679) )
))
(declare-fun lt!257843 () Unit!17678)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35474 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17678)

(assert (=> b!565216 (= lt!257843 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!565217 () Bool)

(declare-fun res!356335 () Bool)

(assert (=> b!565217 (=> (not res!356335) (not e!325441))))

(declare-datatypes ((List!11165 0))(
  ( (Nil!11162) (Cons!11161 (h!12167 (_ BitVec 64)) (t!17401 List!11165)) )
))
(declare-fun arrayNoDuplicates!0 (array!35474 (_ BitVec 32) List!11165) Bool)

(assert (=> b!565217 (= res!356335 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11162))))

(assert (= (and start!51712 res!356327) b!565215))

(assert (= (and b!565215 res!356329) b!565208))

(assert (= (and b!565208 res!356336) b!565209))

(assert (= (and b!565209 res!356333) b!565212))

(assert (= (and b!565212 res!356331) b!565213))

(assert (= (and b!565213 res!356330) b!565210))

(assert (= (and b!565210 res!356334) b!565217))

(assert (= (and b!565217 res!356335) b!565214))

(assert (= (and b!565214 res!356332) b!565216))

(assert (= (and b!565216 res!356328) b!565211))

(declare-fun m!543697 () Bool)

(assert (=> b!565213 m!543697))

(declare-fun m!543699 () Bool)

(assert (=> b!565211 m!543699))

(assert (=> b!565211 m!543699))

(declare-fun m!543701 () Bool)

(assert (=> b!565211 m!543701))

(declare-fun m!543703 () Bool)

(assert (=> b!565216 m!543703))

(declare-fun m!543705 () Bool)

(assert (=> b!565216 m!543705))

(declare-fun m!543707 () Bool)

(assert (=> start!51712 m!543707))

(declare-fun m!543709 () Bool)

(assert (=> start!51712 m!543709))

(assert (=> b!565214 m!543699))

(declare-fun m!543711 () Bool)

(assert (=> b!565214 m!543711))

(assert (=> b!565214 m!543699))

(declare-fun m!543713 () Bool)

(assert (=> b!565214 m!543713))

(declare-fun m!543715 () Bool)

(assert (=> b!565214 m!543715))

(assert (=> b!565214 m!543713))

(declare-fun m!543717 () Bool)

(assert (=> b!565214 m!543717))

(assert (=> b!565214 m!543711))

(assert (=> b!565214 m!543699))

(declare-fun m!543719 () Bool)

(assert (=> b!565214 m!543719))

(declare-fun m!543721 () Bool)

(assert (=> b!565214 m!543721))

(assert (=> b!565214 m!543713))

(assert (=> b!565214 m!543715))

(declare-fun m!543723 () Bool)

(assert (=> b!565212 m!543723))

(declare-fun m!543725 () Bool)

(assert (=> b!565210 m!543725))

(assert (=> b!565208 m!543699))

(assert (=> b!565208 m!543699))

(declare-fun m!543727 () Bool)

(assert (=> b!565208 m!543727))

(declare-fun m!543729 () Bool)

(assert (=> b!565217 m!543729))

(declare-fun m!543731 () Bool)

(assert (=> b!565209 m!543731))

(check-sat (not b!565217) (not b!565209) (not b!565213) (not b!565211) (not b!565212) (not b!565208) (not b!565214) (not b!565210) (not b!565216) (not start!51712))
(check-sat)

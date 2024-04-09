; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51632 () Bool)

(assert start!51632)

(declare-fun b!564649 () Bool)

(declare-fun res!355956 () Bool)

(declare-fun e!325157 () Bool)

(assert (=> b!564649 (=> (not res!355956) (not e!325157))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564649 (= res!355956 (validKeyInArray!0 k!1914))))

(declare-fun b!564650 () Bool)

(declare-fun res!355957 () Bool)

(assert (=> b!564650 (=> (not res!355957) (not e!325157))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35451 0))(
  ( (array!35452 (arr!17022 (Array (_ BitVec 32) (_ BitVec 64))) (size!17386 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35451)

(assert (=> b!564650 (= res!355957 (and (= (size!17386 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17386 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17386 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564651 () Bool)

(declare-fun res!355952 () Bool)

(assert (=> b!564651 (=> (not res!355952) (not e!325157))))

(declare-fun arrayContainsKey!0 (array!35451 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564651 (= res!355952 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564652 () Bool)

(declare-fun e!325158 () Bool)

(assert (=> b!564652 (= e!325157 e!325158)))

(declare-fun res!355953 () Bool)

(assert (=> b!564652 (=> (not res!355953) (not e!325158))))

(declare-datatypes ((SeekEntryResult!5478 0))(
  ( (MissingZero!5478 (index!24139 (_ BitVec 32))) (Found!5478 (index!24140 (_ BitVec 32))) (Intermediate!5478 (undefined!6290 Bool) (index!24141 (_ BitVec 32)) (x!53040 (_ BitVec 32))) (Undefined!5478) (MissingVacant!5478 (index!24142 (_ BitVec 32))) )
))
(declare-fun lt!257632 () SeekEntryResult!5478)

(assert (=> b!564652 (= res!355953 (or (= lt!257632 (MissingZero!5478 i!1132)) (= lt!257632 (MissingVacant!5478 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35451 (_ BitVec 32)) SeekEntryResult!5478)

(assert (=> b!564652 (= lt!257632 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!564654 () Bool)

(declare-fun res!355958 () Bool)

(assert (=> b!564654 (=> (not res!355958) (not e!325158))))

(declare-datatypes ((List!11155 0))(
  ( (Nil!11152) (Cons!11151 (h!12154 (_ BitVec 64)) (t!17391 List!11155)) )
))
(declare-fun arrayNoDuplicates!0 (array!35451 (_ BitVec 32) List!11155) Bool)

(assert (=> b!564654 (= res!355958 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11152))))

(declare-fun res!355954 () Bool)

(assert (=> start!51632 (=> (not res!355954) (not e!325157))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51632 (= res!355954 (validMask!0 mask!3119))))

(assert (=> start!51632 e!325157))

(assert (=> start!51632 true))

(declare-fun array_inv!12796 (array!35451) Bool)

(assert (=> start!51632 (array_inv!12796 a!3118)))

(declare-fun b!564653 () Bool)

(declare-fun res!355955 () Bool)

(assert (=> b!564653 (=> (not res!355955) (not e!325158))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35451 (_ BitVec 32)) Bool)

(assert (=> b!564653 (= res!355955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564655 () Bool)

(declare-fun res!355951 () Bool)

(assert (=> b!564655 (=> (not res!355951) (not e!325157))))

(assert (=> b!564655 (= res!355951 (validKeyInArray!0 (select (arr!17022 a!3118) j!142)))))

(declare-fun b!564656 () Bool)

(assert (=> b!564656 (= e!325158 false)))

(declare-fun lt!257633 () (_ BitVec 32))

(declare-fun lt!257636 () SeekEntryResult!5478)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35451 (_ BitVec 32)) SeekEntryResult!5478)

(assert (=> b!564656 (= lt!257636 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257633 (select (store (arr!17022 a!3118) i!1132 k!1914) j!142) (array!35452 (store (arr!17022 a!3118) i!1132 k!1914) (size!17386 a!3118)) mask!3119))))

(declare-fun lt!257634 () SeekEntryResult!5478)

(declare-fun lt!257635 () (_ BitVec 32))

(assert (=> b!564656 (= lt!257634 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257635 (select (arr!17022 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564656 (= lt!257633 (toIndex!0 (select (store (arr!17022 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!564656 (= lt!257635 (toIndex!0 (select (arr!17022 a!3118) j!142) mask!3119))))

(assert (= (and start!51632 res!355954) b!564650))

(assert (= (and b!564650 res!355957) b!564655))

(assert (= (and b!564655 res!355951) b!564649))

(assert (= (and b!564649 res!355956) b!564651))

(assert (= (and b!564651 res!355952) b!564652))

(assert (= (and b!564652 res!355953) b!564653))

(assert (= (and b!564653 res!355955) b!564654))

(assert (= (and b!564654 res!355958) b!564656))

(declare-fun m!543163 () Bool)

(assert (=> b!564655 m!543163))

(assert (=> b!564655 m!543163))

(declare-fun m!543165 () Bool)

(assert (=> b!564655 m!543165))

(declare-fun m!543167 () Bool)

(assert (=> start!51632 m!543167))

(declare-fun m!543169 () Bool)

(assert (=> start!51632 m!543169))

(declare-fun m!543171 () Bool)

(assert (=> b!564651 m!543171))

(declare-fun m!543173 () Bool)

(assert (=> b!564652 m!543173))

(declare-fun m!543175 () Bool)

(assert (=> b!564654 m!543175))

(declare-fun m!543177 () Bool)

(assert (=> b!564649 m!543177))

(declare-fun m!543179 () Bool)

(assert (=> b!564653 m!543179))

(assert (=> b!564656 m!543163))

(declare-fun m!543181 () Bool)

(assert (=> b!564656 m!543181))

(assert (=> b!564656 m!543163))

(assert (=> b!564656 m!543163))

(declare-fun m!543183 () Bool)

(assert (=> b!564656 m!543183))

(declare-fun m!543185 () Bool)

(assert (=> b!564656 m!543185))

(declare-fun m!543187 () Bool)

(assert (=> b!564656 m!543187))

(declare-fun m!543189 () Bool)

(assert (=> b!564656 m!543189))

(assert (=> b!564656 m!543187))

(declare-fun m!543191 () Bool)

(assert (=> b!564656 m!543191))

(assert (=> b!564656 m!543187))

(push 1)


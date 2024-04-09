; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51634 () Bool)

(assert start!51634)

(declare-fun b!564673 () Bool)

(declare-fun e!325166 () Bool)

(assert (=> b!564673 (= e!325166 false)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!257647 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5479 0))(
  ( (MissingZero!5479 (index!24143 (_ BitVec 32))) (Found!5479 (index!24144 (_ BitVec 32))) (Intermediate!5479 (undefined!6291 Bool) (index!24145 (_ BitVec 32)) (x!53041 (_ BitVec 32))) (Undefined!5479) (MissingVacant!5479 (index!24146 (_ BitVec 32))) )
))
(declare-fun lt!257650 () SeekEntryResult!5479)

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35453 0))(
  ( (array!35454 (arr!17023 (Array (_ BitVec 32) (_ BitVec 64))) (size!17387 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35453)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35453 (_ BitVec 32)) SeekEntryResult!5479)

(assert (=> b!564673 (= lt!257650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257647 (select (store (arr!17023 a!3118) i!1132 k0!1914) j!142) (array!35454 (store (arr!17023 a!3118) i!1132 k0!1914) (size!17387 a!3118)) mask!3119))))

(declare-fun lt!257649 () (_ BitVec 32))

(declare-fun lt!257648 () SeekEntryResult!5479)

(assert (=> b!564673 (= lt!257648 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257649 (select (arr!17023 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564673 (= lt!257647 (toIndex!0 (select (store (arr!17023 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!564673 (= lt!257649 (toIndex!0 (select (arr!17023 a!3118) j!142) mask!3119))))

(declare-fun b!564674 () Bool)

(declare-fun res!355975 () Bool)

(assert (=> b!564674 (=> (not res!355975) (not e!325166))))

(declare-datatypes ((List!11156 0))(
  ( (Nil!11153) (Cons!11152 (h!12155 (_ BitVec 64)) (t!17392 List!11156)) )
))
(declare-fun arrayNoDuplicates!0 (array!35453 (_ BitVec 32) List!11156) Bool)

(assert (=> b!564674 (= res!355975 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11153))))

(declare-fun b!564675 () Bool)

(declare-fun res!355982 () Bool)

(declare-fun e!325167 () Bool)

(assert (=> b!564675 (=> (not res!355982) (not e!325167))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564675 (= res!355982 (validKeyInArray!0 (select (arr!17023 a!3118) j!142)))))

(declare-fun b!564676 () Bool)

(declare-fun res!355981 () Bool)

(assert (=> b!564676 (=> (not res!355981) (not e!325167))))

(assert (=> b!564676 (= res!355981 (validKeyInArray!0 k0!1914))))

(declare-fun b!564677 () Bool)

(declare-fun res!355976 () Bool)

(assert (=> b!564677 (=> (not res!355976) (not e!325167))))

(declare-fun arrayContainsKey!0 (array!35453 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564677 (= res!355976 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564678 () Bool)

(declare-fun res!355979 () Bool)

(assert (=> b!564678 (=> (not res!355979) (not e!325166))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35453 (_ BitVec 32)) Bool)

(assert (=> b!564678 (= res!355979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564679 () Bool)

(declare-fun res!355977 () Bool)

(assert (=> b!564679 (=> (not res!355977) (not e!325167))))

(assert (=> b!564679 (= res!355977 (and (= (size!17387 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17387 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17387 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564680 () Bool)

(assert (=> b!564680 (= e!325167 e!325166)))

(declare-fun res!355980 () Bool)

(assert (=> b!564680 (=> (not res!355980) (not e!325166))))

(declare-fun lt!257651 () SeekEntryResult!5479)

(assert (=> b!564680 (= res!355980 (or (= lt!257651 (MissingZero!5479 i!1132)) (= lt!257651 (MissingVacant!5479 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35453 (_ BitVec 32)) SeekEntryResult!5479)

(assert (=> b!564680 (= lt!257651 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun res!355978 () Bool)

(assert (=> start!51634 (=> (not res!355978) (not e!325167))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51634 (= res!355978 (validMask!0 mask!3119))))

(assert (=> start!51634 e!325167))

(assert (=> start!51634 true))

(declare-fun array_inv!12797 (array!35453) Bool)

(assert (=> start!51634 (array_inv!12797 a!3118)))

(assert (= (and start!51634 res!355978) b!564679))

(assert (= (and b!564679 res!355977) b!564675))

(assert (= (and b!564675 res!355982) b!564676))

(assert (= (and b!564676 res!355981) b!564677))

(assert (= (and b!564677 res!355976) b!564680))

(assert (= (and b!564680 res!355980) b!564678))

(assert (= (and b!564678 res!355979) b!564674))

(assert (= (and b!564674 res!355975) b!564673))

(declare-fun m!543193 () Bool)

(assert (=> b!564680 m!543193))

(declare-fun m!543195 () Bool)

(assert (=> b!564673 m!543195))

(declare-fun m!543197 () Bool)

(assert (=> b!564673 m!543197))

(assert (=> b!564673 m!543195))

(assert (=> b!564673 m!543195))

(declare-fun m!543199 () Bool)

(assert (=> b!564673 m!543199))

(declare-fun m!543201 () Bool)

(assert (=> b!564673 m!543201))

(assert (=> b!564673 m!543201))

(declare-fun m!543203 () Bool)

(assert (=> b!564673 m!543203))

(declare-fun m!543205 () Bool)

(assert (=> b!564673 m!543205))

(assert (=> b!564673 m!543201))

(declare-fun m!543207 () Bool)

(assert (=> b!564673 m!543207))

(declare-fun m!543209 () Bool)

(assert (=> b!564676 m!543209))

(declare-fun m!543211 () Bool)

(assert (=> start!51634 m!543211))

(declare-fun m!543213 () Bool)

(assert (=> start!51634 m!543213))

(declare-fun m!543215 () Bool)

(assert (=> b!564678 m!543215))

(declare-fun m!543217 () Bool)

(assert (=> b!564674 m!543217))

(assert (=> b!564675 m!543195))

(assert (=> b!564675 m!543195))

(declare-fun m!543219 () Bool)

(assert (=> b!564675 m!543219))

(declare-fun m!543221 () Bool)

(assert (=> b!564677 m!543221))

(check-sat (not b!564677) (not b!564673) (not start!51634) (not b!564676) (not b!564675) (not b!564674) (not b!564678) (not b!564680))
(check-sat)

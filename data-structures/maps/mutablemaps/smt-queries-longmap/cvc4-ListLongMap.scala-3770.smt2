; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51636 () Bool)

(assert start!51636)

(declare-fun b!564697 () Bool)

(declare-fun res!356004 () Bool)

(declare-fun e!325175 () Bool)

(assert (=> b!564697 (=> (not res!356004) (not e!325175))))

(declare-datatypes ((array!35455 0))(
  ( (array!35456 (arr!17024 (Array (_ BitVec 32) (_ BitVec 64))) (size!17388 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35455)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564697 (= res!356004 (validKeyInArray!0 (select (arr!17024 a!3118) j!142)))))

(declare-fun b!564698 () Bool)

(declare-fun e!325176 () Bool)

(assert (=> b!564698 (= e!325175 e!325176)))

(declare-fun res!355999 () Bool)

(assert (=> b!564698 (=> (not res!355999) (not e!325176))))

(declare-datatypes ((SeekEntryResult!5480 0))(
  ( (MissingZero!5480 (index!24147 (_ BitVec 32))) (Found!5480 (index!24148 (_ BitVec 32))) (Intermediate!5480 (undefined!6292 Bool) (index!24149 (_ BitVec 32)) (x!53042 (_ BitVec 32))) (Undefined!5480) (MissingVacant!5480 (index!24150 (_ BitVec 32))) )
))
(declare-fun lt!257663 () SeekEntryResult!5480)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564698 (= res!355999 (or (= lt!257663 (MissingZero!5480 i!1132)) (= lt!257663 (MissingVacant!5480 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35455 (_ BitVec 32)) SeekEntryResult!5480)

(assert (=> b!564698 (= lt!257663 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!564700 () Bool)

(declare-fun res!356002 () Bool)

(assert (=> b!564700 (=> (not res!356002) (not e!325175))))

(assert (=> b!564700 (= res!356002 (validKeyInArray!0 k!1914))))

(declare-fun b!564701 () Bool)

(declare-fun res!356006 () Bool)

(assert (=> b!564701 (=> (not res!356006) (not e!325175))))

(assert (=> b!564701 (= res!356006 (and (= (size!17388 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17388 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17388 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564702 () Bool)

(declare-fun res!356001 () Bool)

(assert (=> b!564702 (=> (not res!356001) (not e!325176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35455 (_ BitVec 32)) Bool)

(assert (=> b!564702 (= res!356001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564703 () Bool)

(declare-fun res!356005 () Bool)

(assert (=> b!564703 (=> (not res!356005) (not e!325176))))

(declare-datatypes ((List!11157 0))(
  ( (Nil!11154) (Cons!11153 (h!12156 (_ BitVec 64)) (t!17393 List!11157)) )
))
(declare-fun arrayNoDuplicates!0 (array!35455 (_ BitVec 32) List!11157) Bool)

(assert (=> b!564703 (= res!356005 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11154))))

(declare-fun b!564704 () Bool)

(declare-fun res!356000 () Bool)

(assert (=> b!564704 (=> (not res!356000) (not e!325175))))

(declare-fun arrayContainsKey!0 (array!35455 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564704 (= res!356000 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564699 () Bool)

(assert (=> b!564699 (= e!325176 false)))

(declare-fun lt!257665 () SeekEntryResult!5480)

(declare-fun lt!257662 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35455 (_ BitVec 32)) SeekEntryResult!5480)

(assert (=> b!564699 (= lt!257665 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257662 (select (store (arr!17024 a!3118) i!1132 k!1914) j!142) (array!35456 (store (arr!17024 a!3118) i!1132 k!1914) (size!17388 a!3118)) mask!3119))))

(declare-fun lt!257664 () (_ BitVec 32))

(declare-fun lt!257666 () SeekEntryResult!5480)

(assert (=> b!564699 (= lt!257666 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257664 (select (arr!17024 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564699 (= lt!257662 (toIndex!0 (select (store (arr!17024 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!564699 (= lt!257664 (toIndex!0 (select (arr!17024 a!3118) j!142) mask!3119))))

(declare-fun res!356003 () Bool)

(assert (=> start!51636 (=> (not res!356003) (not e!325175))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51636 (= res!356003 (validMask!0 mask!3119))))

(assert (=> start!51636 e!325175))

(assert (=> start!51636 true))

(declare-fun array_inv!12798 (array!35455) Bool)

(assert (=> start!51636 (array_inv!12798 a!3118)))

(assert (= (and start!51636 res!356003) b!564701))

(assert (= (and b!564701 res!356006) b!564697))

(assert (= (and b!564697 res!356004) b!564700))

(assert (= (and b!564700 res!356002) b!564704))

(assert (= (and b!564704 res!356000) b!564698))

(assert (= (and b!564698 res!355999) b!564702))

(assert (= (and b!564702 res!356001) b!564703))

(assert (= (and b!564703 res!356005) b!564699))

(declare-fun m!543223 () Bool)

(assert (=> start!51636 m!543223))

(declare-fun m!543225 () Bool)

(assert (=> start!51636 m!543225))

(declare-fun m!543227 () Bool)

(assert (=> b!564703 m!543227))

(declare-fun m!543229 () Bool)

(assert (=> b!564700 m!543229))

(declare-fun m!543231 () Bool)

(assert (=> b!564697 m!543231))

(assert (=> b!564697 m!543231))

(declare-fun m!543233 () Bool)

(assert (=> b!564697 m!543233))

(assert (=> b!564699 m!543231))

(declare-fun m!543235 () Bool)

(assert (=> b!564699 m!543235))

(assert (=> b!564699 m!543231))

(declare-fun m!543237 () Bool)

(assert (=> b!564699 m!543237))

(declare-fun m!543239 () Bool)

(assert (=> b!564699 m!543239))

(declare-fun m!543241 () Bool)

(assert (=> b!564699 m!543241))

(assert (=> b!564699 m!543237))

(declare-fun m!543243 () Bool)

(assert (=> b!564699 m!543243))

(assert (=> b!564699 m!543231))

(declare-fun m!543245 () Bool)

(assert (=> b!564699 m!543245))

(assert (=> b!564699 m!543237))

(declare-fun m!543247 () Bool)

(assert (=> b!564704 m!543247))

(declare-fun m!543249 () Bool)

(assert (=> b!564698 m!543249))

(declare-fun m!543251 () Bool)

(assert (=> b!564702 m!543251))

(push 1)

(assert (not b!564698))

(assert (not b!564700))

(assert (not b!564699))


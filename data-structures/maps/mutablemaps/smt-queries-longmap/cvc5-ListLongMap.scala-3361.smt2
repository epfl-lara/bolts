; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46228 () Bool)

(assert start!46228)

(declare-fun b!511565 () Bool)

(declare-fun res!312378 () Bool)

(declare-fun e!298885 () Bool)

(assert (=> b!511565 (=> (not res!312378) (not e!298885))))

(declare-datatypes ((array!32842 0))(
  ( (array!32843 (arr!15795 (Array (_ BitVec 32) (_ BitVec 64))) (size!16159 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32842)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511565 (= res!312378 (validKeyInArray!0 (select (arr!15795 a!3235) j!176)))))

(declare-fun b!511566 () Bool)

(declare-fun e!298886 () Bool)

(assert (=> b!511566 (= e!298885 e!298886)))

(declare-fun res!312386 () Bool)

(assert (=> b!511566 (=> (not res!312386) (not e!298886))))

(declare-datatypes ((SeekEntryResult!4269 0))(
  ( (MissingZero!4269 (index!19264 (_ BitVec 32))) (Found!4269 (index!19265 (_ BitVec 32))) (Intermediate!4269 (undefined!5081 Bool) (index!19266 (_ BitVec 32)) (x!48247 (_ BitVec 32))) (Undefined!4269) (MissingVacant!4269 (index!19267 (_ BitVec 32))) )
))
(declare-fun lt!234138 () SeekEntryResult!4269)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!511566 (= res!312386 (or (= lt!234138 (MissingZero!4269 i!1204)) (= lt!234138 (MissingVacant!4269 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32842 (_ BitVec 32)) SeekEntryResult!4269)

(assert (=> b!511566 (= lt!234138 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!511567 () Bool)

(declare-fun res!312381 () Bool)

(assert (=> b!511567 (=> (not res!312381) (not e!298886))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32842 (_ BitVec 32)) Bool)

(assert (=> b!511567 (= res!312381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511568 () Bool)

(declare-fun e!298887 () Bool)

(assert (=> b!511568 (= e!298886 (not e!298887))))

(declare-fun res!312380 () Bool)

(assert (=> b!511568 (=> res!312380 e!298887)))

(declare-fun lt!234135 () SeekEntryResult!4269)

(declare-fun lt!234140 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32842 (_ BitVec 32)) SeekEntryResult!4269)

(assert (=> b!511568 (= res!312380 (= lt!234135 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234140 (select (store (arr!15795 a!3235) i!1204 k!2280) j!176) (array!32843 (store (arr!15795 a!3235) i!1204 k!2280) (size!16159 a!3235)) mask!3524)))))

(declare-fun lt!234137 () (_ BitVec 32))

(assert (=> b!511568 (= lt!234135 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234137 (select (arr!15795 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511568 (= lt!234140 (toIndex!0 (select (store (arr!15795 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!511568 (= lt!234137 (toIndex!0 (select (arr!15795 a!3235) j!176) mask!3524))))

(declare-fun lt!234139 () SeekEntryResult!4269)

(assert (=> b!511568 (= lt!234139 (Found!4269 j!176))))

(assert (=> b!511568 (= lt!234139 (seekEntryOrOpen!0 (select (arr!15795 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!511568 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15788 0))(
  ( (Unit!15789) )
))
(declare-fun lt!234136 () Unit!15788)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32842 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15788)

(assert (=> b!511568 (= lt!234136 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511569 () Bool)

(declare-fun res!312383 () Bool)

(assert (=> b!511569 (=> (not res!312383) (not e!298885))))

(declare-fun arrayContainsKey!0 (array!32842 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511569 (= res!312383 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!312384 () Bool)

(assert (=> start!46228 (=> (not res!312384) (not e!298885))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46228 (= res!312384 (validMask!0 mask!3524))))

(assert (=> start!46228 e!298885))

(assert (=> start!46228 true))

(declare-fun array_inv!11569 (array!32842) Bool)

(assert (=> start!46228 (array_inv!11569 a!3235)))

(declare-fun b!511570 () Bool)

(assert (=> b!511570 (= e!298887 true)))

(assert (=> b!511570 (= lt!234139 Undefined!4269)))

(declare-fun b!511571 () Bool)

(declare-fun res!312379 () Bool)

(assert (=> b!511571 (=> (not res!312379) (not e!298885))))

(assert (=> b!511571 (= res!312379 (validKeyInArray!0 k!2280))))

(declare-fun b!511572 () Bool)

(declare-fun res!312377 () Bool)

(assert (=> b!511572 (=> (not res!312377) (not e!298885))))

(assert (=> b!511572 (= res!312377 (and (= (size!16159 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16159 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16159 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!511573 () Bool)

(declare-fun res!312385 () Bool)

(assert (=> b!511573 (=> (not res!312385) (not e!298886))))

(declare-datatypes ((List!10006 0))(
  ( (Nil!10003) (Cons!10002 (h!10882 (_ BitVec 64)) (t!16242 List!10006)) )
))
(declare-fun arrayNoDuplicates!0 (array!32842 (_ BitVec 32) List!10006) Bool)

(assert (=> b!511573 (= res!312385 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10003))))

(declare-fun b!511574 () Bool)

(declare-fun res!312382 () Bool)

(assert (=> b!511574 (=> res!312382 e!298887)))

(assert (=> b!511574 (= res!312382 (or (not (is-Intermediate!4269 lt!234135)) (not (undefined!5081 lt!234135))))))

(assert (= (and start!46228 res!312384) b!511572))

(assert (= (and b!511572 res!312377) b!511565))

(assert (= (and b!511565 res!312378) b!511571))

(assert (= (and b!511571 res!312379) b!511569))

(assert (= (and b!511569 res!312383) b!511566))

(assert (= (and b!511566 res!312386) b!511567))

(assert (= (and b!511567 res!312381) b!511573))

(assert (= (and b!511573 res!312385) b!511568))

(assert (= (and b!511568 (not res!312380)) b!511574))

(assert (= (and b!511574 (not res!312382)) b!511570))

(declare-fun m!493123 () Bool)

(assert (=> start!46228 m!493123))

(declare-fun m!493125 () Bool)

(assert (=> start!46228 m!493125))

(declare-fun m!493127 () Bool)

(assert (=> b!511568 m!493127))

(declare-fun m!493129 () Bool)

(assert (=> b!511568 m!493129))

(declare-fun m!493131 () Bool)

(assert (=> b!511568 m!493131))

(declare-fun m!493133 () Bool)

(assert (=> b!511568 m!493133))

(declare-fun m!493135 () Bool)

(assert (=> b!511568 m!493135))

(declare-fun m!493137 () Bool)

(assert (=> b!511568 m!493137))

(assert (=> b!511568 m!493135))

(declare-fun m!493139 () Bool)

(assert (=> b!511568 m!493139))

(assert (=> b!511568 m!493135))

(declare-fun m!493141 () Bool)

(assert (=> b!511568 m!493141))

(assert (=> b!511568 m!493131))

(declare-fun m!493143 () Bool)

(assert (=> b!511568 m!493143))

(assert (=> b!511568 m!493135))

(declare-fun m!493145 () Bool)

(assert (=> b!511568 m!493145))

(assert (=> b!511568 m!493131))

(declare-fun m!493147 () Bool)

(assert (=> b!511569 m!493147))

(declare-fun m!493149 () Bool)

(assert (=> b!511566 m!493149))

(declare-fun m!493151 () Bool)

(assert (=> b!511573 m!493151))

(declare-fun m!493153 () Bool)

(assert (=> b!511567 m!493153))

(assert (=> b!511565 m!493135))

(assert (=> b!511565 m!493135))

(declare-fun m!493155 () Bool)

(assert (=> b!511565 m!493155))

(declare-fun m!493157 () Bool)

(assert (=> b!511571 m!493157))

(push 1)


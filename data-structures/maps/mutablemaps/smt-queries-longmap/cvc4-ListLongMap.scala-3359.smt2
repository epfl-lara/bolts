; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46220 () Bool)

(assert start!46220)

(declare-fun b!511445 () Bool)

(declare-fun res!312262 () Bool)

(declare-fun e!298837 () Bool)

(assert (=> b!511445 (=> (not res!312262) (not e!298837))))

(declare-datatypes ((array!32834 0))(
  ( (array!32835 (arr!15791 (Array (_ BitVec 32) (_ BitVec 64))) (size!16155 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32834)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32834 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511445 (= res!312262 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511446 () Bool)

(declare-fun e!298839 () Bool)

(declare-fun e!298838 () Bool)

(assert (=> b!511446 (= e!298839 (not e!298838))))

(declare-fun res!312261 () Bool)

(assert (=> b!511446 (=> res!312261 e!298838)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!234066 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4265 0))(
  ( (MissingZero!4265 (index!19248 (_ BitVec 32))) (Found!4265 (index!19249 (_ BitVec 32))) (Intermediate!4265 (undefined!5077 Bool) (index!19250 (_ BitVec 32)) (x!48227 (_ BitVec 32))) (Undefined!4265) (MissingVacant!4265 (index!19251 (_ BitVec 32))) )
))
(declare-fun lt!234064 () SeekEntryResult!4265)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32834 (_ BitVec 32)) SeekEntryResult!4265)

(assert (=> b!511446 (= res!312261 (= lt!234064 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234066 (select (store (arr!15791 a!3235) i!1204 k!2280) j!176) (array!32835 (store (arr!15791 a!3235) i!1204 k!2280) (size!16155 a!3235)) mask!3524)))))

(declare-fun lt!234067 () (_ BitVec 32))

(assert (=> b!511446 (= lt!234064 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234067 (select (arr!15791 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511446 (= lt!234066 (toIndex!0 (select (store (arr!15791 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!511446 (= lt!234067 (toIndex!0 (select (arr!15791 a!3235) j!176) mask!3524))))

(declare-fun lt!234065 () SeekEntryResult!4265)

(assert (=> b!511446 (= lt!234065 (Found!4265 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32834 (_ BitVec 32)) SeekEntryResult!4265)

(assert (=> b!511446 (= lt!234065 (seekEntryOrOpen!0 (select (arr!15791 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32834 (_ BitVec 32)) Bool)

(assert (=> b!511446 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15780 0))(
  ( (Unit!15781) )
))
(declare-fun lt!234063 () Unit!15780)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32834 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15780)

(assert (=> b!511446 (= lt!234063 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511447 () Bool)

(declare-fun res!312258 () Bool)

(assert (=> b!511447 (=> (not res!312258) (not e!298837))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511447 (= res!312258 (validKeyInArray!0 (select (arr!15791 a!3235) j!176)))))

(declare-fun b!511448 () Bool)

(assert (=> b!511448 (= e!298837 e!298839)))

(declare-fun res!312263 () Bool)

(assert (=> b!511448 (=> (not res!312263) (not e!298839))))

(declare-fun lt!234068 () SeekEntryResult!4265)

(assert (=> b!511448 (= res!312263 (or (= lt!234068 (MissingZero!4265 i!1204)) (= lt!234068 (MissingVacant!4265 i!1204))))))

(assert (=> b!511448 (= lt!234068 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!312265 () Bool)

(assert (=> start!46220 (=> (not res!312265) (not e!298837))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46220 (= res!312265 (validMask!0 mask!3524))))

(assert (=> start!46220 e!298837))

(assert (=> start!46220 true))

(declare-fun array_inv!11565 (array!32834) Bool)

(assert (=> start!46220 (array_inv!11565 a!3235)))

(declare-fun b!511449 () Bool)

(declare-fun res!312259 () Bool)

(assert (=> b!511449 (=> res!312259 e!298838)))

(assert (=> b!511449 (= res!312259 (or (not (is-Intermediate!4265 lt!234064)) (not (undefined!5077 lt!234064))))))

(declare-fun b!511450 () Bool)

(declare-fun res!312264 () Bool)

(assert (=> b!511450 (=> (not res!312264) (not e!298839))))

(assert (=> b!511450 (= res!312264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511451 () Bool)

(declare-fun res!312260 () Bool)

(assert (=> b!511451 (=> (not res!312260) (not e!298837))))

(assert (=> b!511451 (= res!312260 (validKeyInArray!0 k!2280))))

(declare-fun b!511452 () Bool)

(assert (=> b!511452 (= e!298838 (bvsle #b00000000000000000000000000000000 (size!16155 a!3235)))))

(assert (=> b!511452 (= lt!234065 Undefined!4265)))

(declare-fun b!511453 () Bool)

(declare-fun res!312266 () Bool)

(assert (=> b!511453 (=> (not res!312266) (not e!298839))))

(declare-datatypes ((List!10002 0))(
  ( (Nil!9999) (Cons!9998 (h!10878 (_ BitVec 64)) (t!16238 List!10002)) )
))
(declare-fun arrayNoDuplicates!0 (array!32834 (_ BitVec 32) List!10002) Bool)

(assert (=> b!511453 (= res!312266 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9999))))

(declare-fun b!511454 () Bool)

(declare-fun res!312257 () Bool)

(assert (=> b!511454 (=> (not res!312257) (not e!298837))))

(assert (=> b!511454 (= res!312257 (and (= (size!16155 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16155 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16155 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!46220 res!312265) b!511454))

(assert (= (and b!511454 res!312257) b!511447))

(assert (= (and b!511447 res!312258) b!511451))

(assert (= (and b!511451 res!312260) b!511445))

(assert (= (and b!511445 res!312262) b!511448))

(assert (= (and b!511448 res!312263) b!511450))

(assert (= (and b!511450 res!312264) b!511453))

(assert (= (and b!511453 res!312266) b!511446))

(assert (= (and b!511446 (not res!312261)) b!511449))

(assert (= (and b!511449 (not res!312259)) b!511452))

(declare-fun m!492979 () Bool)

(assert (=> b!511450 m!492979))

(declare-fun m!492981 () Bool)

(assert (=> b!511446 m!492981))

(declare-fun m!492983 () Bool)

(assert (=> b!511446 m!492983))

(declare-fun m!492985 () Bool)

(assert (=> b!511446 m!492985))

(declare-fun m!492987 () Bool)

(assert (=> b!511446 m!492987))

(assert (=> b!511446 m!492985))

(declare-fun m!492989 () Bool)

(assert (=> b!511446 m!492989))

(assert (=> b!511446 m!492985))

(declare-fun m!492991 () Bool)

(assert (=> b!511446 m!492991))

(assert (=> b!511446 m!492983))

(declare-fun m!492993 () Bool)

(assert (=> b!511446 m!492993))

(assert (=> b!511446 m!492983))

(declare-fun m!492995 () Bool)

(assert (=> b!511446 m!492995))

(assert (=> b!511446 m!492985))

(declare-fun m!492997 () Bool)

(assert (=> b!511446 m!492997))

(declare-fun m!492999 () Bool)

(assert (=> b!511446 m!492999))

(declare-fun m!493001 () Bool)

(assert (=> b!511453 m!493001))

(declare-fun m!493003 () Bool)

(assert (=> b!511445 m!493003))

(declare-fun m!493005 () Bool)

(assert (=> b!511448 m!493005))

(assert (=> b!511447 m!492985))

(assert (=> b!511447 m!492985))

(declare-fun m!493007 () Bool)

(assert (=> b!511447 m!493007))

(declare-fun m!493009 () Bool)

(assert (=> b!511451 m!493009))

(declare-fun m!493011 () Bool)

(assert (=> start!46220 m!493011))

(declare-fun m!493013 () Bool)

(assert (=> start!46220 m!493013))

(push 1)


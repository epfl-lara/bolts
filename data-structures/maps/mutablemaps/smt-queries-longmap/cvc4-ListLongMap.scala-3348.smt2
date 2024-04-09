; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46094 () Bool)

(assert start!46094)

(declare-fun b!510237 () Bool)

(declare-fun e!298255 () Bool)

(declare-fun e!298256 () Bool)

(assert (=> b!510237 (= e!298255 e!298256)))

(declare-fun res!311234 () Bool)

(assert (=> b!510237 (=> (not res!311234) (not e!298256))))

(declare-datatypes ((SeekEntryResult!4232 0))(
  ( (MissingZero!4232 (index!19116 (_ BitVec 32))) (Found!4232 (index!19117 (_ BitVec 32))) (Intermediate!4232 (undefined!5044 Bool) (index!19118 (_ BitVec 32)) (x!48100 (_ BitVec 32))) (Undefined!4232) (MissingVacant!4232 (index!19119 (_ BitVec 32))) )
))
(declare-fun lt!233343 () SeekEntryResult!4232)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!510237 (= res!311234 (or (= lt!233343 (MissingZero!4232 i!1204)) (= lt!233343 (MissingVacant!4232 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32765 0))(
  ( (array!32766 (arr!15758 (Array (_ BitVec 32) (_ BitVec 64))) (size!16122 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32765)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32765 (_ BitVec 32)) SeekEntryResult!4232)

(assert (=> b!510237 (= lt!233343 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!510238 () Bool)

(declare-fun e!298257 () Bool)

(assert (=> b!510238 (= e!298256 (not e!298257))))

(declare-fun res!311233 () Bool)

(assert (=> b!510238 (=> res!311233 e!298257)))

(declare-fun lt!233344 () array!32765)

(declare-fun lt!233345 () (_ BitVec 64))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32765 (_ BitVec 32)) SeekEntryResult!4232)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510238 (= res!311233 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15758 a!3235) j!176) mask!3524) (select (arr!15758 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233345 mask!3524) lt!233345 lt!233344 mask!3524))))))

(assert (=> b!510238 (= lt!233345 (select (store (arr!15758 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!510238 (= lt!233344 (array!32766 (store (arr!15758 a!3235) i!1204 k!2280) (size!16122 a!3235)))))

(declare-fun lt!233342 () SeekEntryResult!4232)

(assert (=> b!510238 (= lt!233342 (Found!4232 j!176))))

(assert (=> b!510238 (= lt!233342 (seekEntryOrOpen!0 (select (arr!15758 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32765 (_ BitVec 32)) Bool)

(assert (=> b!510238 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15714 0))(
  ( (Unit!15715) )
))
(declare-fun lt!233341 () Unit!15714)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32765 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15714)

(assert (=> b!510238 (= lt!233341 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510239 () Bool)

(declare-fun res!311240 () Bool)

(assert (=> b!510239 (=> (not res!311240) (not e!298255))))

(declare-fun arrayContainsKey!0 (array!32765 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510239 (= res!311240 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510240 () Bool)

(declare-fun res!311237 () Bool)

(assert (=> b!510240 (=> (not res!311237) (not e!298255))))

(assert (=> b!510240 (= res!311237 (and (= (size!16122 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16122 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16122 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!311239 () Bool)

(assert (=> start!46094 (=> (not res!311239) (not e!298255))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46094 (= res!311239 (validMask!0 mask!3524))))

(assert (=> start!46094 e!298255))

(assert (=> start!46094 true))

(declare-fun array_inv!11532 (array!32765) Bool)

(assert (=> start!46094 (array_inv!11532 a!3235)))

(declare-fun b!510241 () Bool)

(declare-fun res!311236 () Bool)

(assert (=> b!510241 (=> (not res!311236) (not e!298256))))

(declare-datatypes ((List!9969 0))(
  ( (Nil!9966) (Cons!9965 (h!10842 (_ BitVec 64)) (t!16205 List!9969)) )
))
(declare-fun arrayNoDuplicates!0 (array!32765 (_ BitVec 32) List!9969) Bool)

(assert (=> b!510241 (= res!311236 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9966))))

(declare-fun b!510242 () Bool)

(declare-fun res!311232 () Bool)

(assert (=> b!510242 (=> (not res!311232) (not e!298255))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510242 (= res!311232 (validKeyInArray!0 (select (arr!15758 a!3235) j!176)))))

(declare-fun b!510243 () Bool)

(declare-fun res!311238 () Bool)

(assert (=> b!510243 (=> (not res!311238) (not e!298255))))

(assert (=> b!510243 (= res!311238 (validKeyInArray!0 k!2280))))

(declare-fun b!510244 () Bool)

(declare-fun res!311235 () Bool)

(assert (=> b!510244 (=> (not res!311235) (not e!298256))))

(assert (=> b!510244 (= res!311235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510245 () Bool)

(assert (=> b!510245 (= e!298257 true)))

(assert (=> b!510245 (= lt!233342 (seekEntryOrOpen!0 lt!233345 lt!233344 mask!3524))))

(declare-fun lt!233340 () Unit!15714)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32765 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15714)

(assert (=> b!510245 (= lt!233340 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(assert (= (and start!46094 res!311239) b!510240))

(assert (= (and b!510240 res!311237) b!510242))

(assert (= (and b!510242 res!311232) b!510243))

(assert (= (and b!510243 res!311238) b!510239))

(assert (= (and b!510239 res!311240) b!510237))

(assert (= (and b!510237 res!311234) b!510244))

(assert (= (and b!510244 res!311235) b!510241))

(assert (= (and b!510241 res!311236) b!510238))

(assert (= (and b!510238 (not res!311233)) b!510245))

(declare-fun m!491535 () Bool)

(assert (=> b!510243 m!491535))

(declare-fun m!491537 () Bool)

(assert (=> b!510242 m!491537))

(assert (=> b!510242 m!491537))

(declare-fun m!491539 () Bool)

(assert (=> b!510242 m!491539))

(declare-fun m!491541 () Bool)

(assert (=> b!510245 m!491541))

(declare-fun m!491543 () Bool)

(assert (=> b!510245 m!491543))

(declare-fun m!491545 () Bool)

(assert (=> b!510244 m!491545))

(declare-fun m!491547 () Bool)

(assert (=> b!510237 m!491547))

(declare-fun m!491549 () Bool)

(assert (=> b!510238 m!491549))

(declare-fun m!491551 () Bool)

(assert (=> b!510238 m!491551))

(declare-fun m!491553 () Bool)

(assert (=> b!510238 m!491553))

(declare-fun m!491555 () Bool)

(assert (=> b!510238 m!491555))

(assert (=> b!510238 m!491537))

(declare-fun m!491557 () Bool)

(assert (=> b!510238 m!491557))

(assert (=> b!510238 m!491537))

(declare-fun m!491559 () Bool)

(assert (=> b!510238 m!491559))

(assert (=> b!510238 m!491537))

(declare-fun m!491561 () Bool)

(assert (=> b!510238 m!491561))

(declare-fun m!491563 () Bool)

(assert (=> b!510238 m!491563))

(assert (=> b!510238 m!491537))

(assert (=> b!510238 m!491555))

(assert (=> b!510238 m!491563))

(declare-fun m!491565 () Bool)

(assert (=> b!510238 m!491565))

(declare-fun m!491567 () Bool)

(assert (=> b!510239 m!491567))

(declare-fun m!491569 () Bool)

(assert (=> start!46094 m!491569))

(declare-fun m!491571 () Bool)

(assert (=> start!46094 m!491571))

(declare-fun m!491573 () Bool)

(assert (=> b!510241 m!491573))

(push 1)

(assert (not b!510244))

(assert (not b!510245))

(assert (not b!510239))

(assert (not b!510238))

(assert (not start!46094))

(assert (not b!510243))

(assert (not b!510237))

(assert (not b!510241))

(assert (not b!510242))

(check-sat)

(pop 1)


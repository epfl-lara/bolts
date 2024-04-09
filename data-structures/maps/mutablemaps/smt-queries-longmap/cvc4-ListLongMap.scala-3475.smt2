; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48212 () Bool)

(assert start!48212)

(declare-fun b!530473 () Bool)

(declare-fun res!326332 () Bool)

(declare-fun e!309045 () Bool)

(assert (=> b!530473 (=> (not res!326332) (not e!309045))))

(declare-datatypes ((array!33593 0))(
  ( (array!33594 (arr!16139 (Array (_ BitVec 32) (_ BitVec 64))) (size!16503 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33593)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33593 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530473 (= res!326332 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530474 () Bool)

(declare-fun res!326330 () Bool)

(assert (=> b!530474 (=> (not res!326330) (not e!309045))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530474 (= res!326330 (and (= (size!16503 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16503 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16503 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530475 () Bool)

(assert (=> b!530475 (= e!309045 false)))

(declare-datatypes ((SeekEntryResult!4604 0))(
  ( (MissingZero!4604 (index!20640 (_ BitVec 32))) (Found!4604 (index!20641 (_ BitVec 32))) (Intermediate!4604 (undefined!5416 Bool) (index!20642 (_ BitVec 32)) (x!49653 (_ BitVec 32))) (Undefined!4604) (MissingVacant!4604 (index!20643 (_ BitVec 32))) )
))
(declare-fun lt!244736 () SeekEntryResult!4604)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33593 (_ BitVec 32)) SeekEntryResult!4604)

(assert (=> b!530475 (= lt!244736 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun res!326331 () Bool)

(assert (=> start!48212 (=> (not res!326331) (not e!309045))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48212 (= res!326331 (validMask!0 mask!3216))))

(assert (=> start!48212 e!309045))

(assert (=> start!48212 true))

(declare-fun array_inv!11913 (array!33593) Bool)

(assert (=> start!48212 (array_inv!11913 a!3154)))

(declare-fun b!530476 () Bool)

(declare-fun res!326329 () Bool)

(assert (=> b!530476 (=> (not res!326329) (not e!309045))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530476 (= res!326329 (validKeyInArray!0 (select (arr!16139 a!3154) j!147)))))

(declare-fun b!530477 () Bool)

(declare-fun res!326333 () Bool)

(assert (=> b!530477 (=> (not res!326333) (not e!309045))))

(assert (=> b!530477 (= res!326333 (validKeyInArray!0 k!1998))))

(assert (= (and start!48212 res!326331) b!530474))

(assert (= (and b!530474 res!326330) b!530476))

(assert (= (and b!530476 res!326329) b!530477))

(assert (= (and b!530477 res!326333) b!530473))

(assert (= (and b!530473 res!326332) b!530475))

(declare-fun m!511067 () Bool)

(assert (=> b!530475 m!511067))

(declare-fun m!511069 () Bool)

(assert (=> b!530477 m!511069))

(declare-fun m!511071 () Bool)

(assert (=> b!530476 m!511071))

(assert (=> b!530476 m!511071))

(declare-fun m!511073 () Bool)

(assert (=> b!530476 m!511073))

(declare-fun m!511075 () Bool)

(assert (=> start!48212 m!511075))

(declare-fun m!511077 () Bool)

(assert (=> start!48212 m!511077))

(declare-fun m!511079 () Bool)

(assert (=> b!530473 m!511079))

(push 1)

(assert (not b!530476))

(assert (not b!530473))

(assert (not b!530477))

(assert (not b!530475))

(assert (not start!48212))

(check-sat)

(pop 1)

(push 1)

